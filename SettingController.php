<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Frontend;
use App\Models\Driver;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Mail\YourEmailMailable;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function create()
    {
        return view('admin.setting.setting');
    }
    public function index()
    {
        $admin =User::whereuser_type('1')->get();
        return view('admin.setting.setting',compact('admin'));
    }
    public function store(Request $request)
    {
       
            $admin =new User();
            $admin->name =$request->name;
            $admin->email =$request->email;
            
            $admin->save();
            return redirect('/admin_get')->with('store','Admin Add Successfully');
    
    }
    public function edit($id)
    {
        $setting =User::find($id);
        return view('admin.setting.setting_edit',compact('setting'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $setting =User::find($id);
        $setting->name =$request->name;
        $setting->email =$request->email;
        $setting->save();
        return redirect('admin/setting/edit/21')->with('update','Admin Update Successfully');
    }
    public function destroy($id)
    {
        $admin =User::find($id);
        $admin->delete();
        return redirect('/admin_get')->with('deleted','Admin Deleted Successfully');
    }
    public function page_edit($id)
    {
        $page =Frontend::find($id);
        return view('admin.setting.frontend_pages.favicon.edit',compact('page'));
    }

    public function page_get()
    {
        $page =Frontend::all();

        return view('admin.setting.frontend_pages.favicon.index',compact('page'));
    }
    public function page_update(Request $request, $id)
    {
        $page =Frontend::find($id);
    
        // Handle logo update
        if ($request->hasFile('logo')) {
            // Delete existing logo if present
            if ($page->file) {
                // Remove existing logo file
                // You need to implement this method to delete the file from storage
                // For example: Storage::delete('uploads/' . $page->logo);
            }
    
            // Upload new logo
            $logo = $request->file('logo');
            $logoPath = 'frond_page/';
            $logoName = time() . '.' . $logo->getClientOriginalExtension();
            $logo->move($logoPath, $logoName);
    
            $page->logo = $logoName;
        }
    
        // Handle favicon update
        if ($request->hasFile('favicon')) {
            // Delete existing favicon if present
            if ($page->favicon) {
                // Remove existing favicon file
                // You need to implement this method to delete the file from storage
                // For example: Storage::delete('uploads/' . $page->favicon);
            }
    
            // Upload new favicon
            $favicon = $request->file('favicon');
            $faviconPath = 'frond_page/';
            $faviconName = time() . '.' . $favicon->getClientOriginalExtension();
            $favicon->move($faviconPath, $faviconName);
    
            $page->favicon = $faviconName;
        }
    
        // Update other fields
        $page->name = $request->input('name');
        $page->email = $request->input('email');
        $page->Language = $request->input('Language');
        // Update more fields as needed
    
        $page->save();
    
        return redirect('page/1')->with('update', 'Page updated successfully');
    }

    public function user_get()
    {
        $user = User::all();

        return view('admin.acees_user.index',compact('user'));
    }
    public function status($id)
    {
        $user = User::find($id);
        return view('admin.acees_user.user_status',compact('user'));
    }

    public function chanage_status(Request $request)
    {
        $id = $request->id;
        $user = user::find($id);
        $user->user_type = $request->user_type;
        $user->save();
        $data = array('name'=>"Virat Gandhi");
  
        Mail::send(['text'=>'admin.customer.mail'],  $data, function($message) {
           $message->to('asim75232@gmail.com', 'malik asim')->subject
              ('Your Apply is complete');
           $message->from('masim0448@gmail.com','malik jee');
        });
        echo "Basic Email Sent. Check your inbox.";


        return redirect('user_get')->with('update','User Access Update Successfully');
    }
    public function driver_data(Request $request)
    {
        $userID = Auth::user()->id;
        $driver_profile =new Driver();
        $driver_profile->name =$request->name;
        $driver_profile->email =$request->email;
        $driver_profile->number =$request->number;
        $driver_profile->address =$request->address;
        $driver_profile->city =$request->city;
        $driver_profile->country =$request->country;
        $driver_profile->license =$request->license;
        $driver_profile->type =$request->type;
        $driver_profile->user_id =$userID;
        $driver_profile->driver_status =0;
      
        $driver_profile->save();
        return redirect('/')->with('profile','Profile created successfully.Wait For Admin Approvel');
    }
    public function profiledriver()
    {
        return view('admin.driver.driver.driver_profile');
    }
}
