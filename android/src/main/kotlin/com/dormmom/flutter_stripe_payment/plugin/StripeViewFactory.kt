package com.dormmom.flutter_stripe_payment

import android.app.Activity
import android.content.Context
import androidx.appcompat.app.AppCompatActivity
import com.dormmom.flutter_stripe_payment.plugin.FlutterStripeFactory

import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformViewFactory

class StripeViewFactory (private val messenger: BinaryMessenger, private val activity: Activity) : PlatformViewFactory(StandardMessageCodec.INSTANCE){
    override fun create(context: Context?, viewId: Int, args: Any?): PlatformView {
        val viewFactory = FlutterStripeFactory(context!!, messenger)
        viewFactory.activity = activity  as AppCompatActivity?
        return viewFactory
    }
}