inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake:bb.a
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake.exit

common.resume:                                    ; preds = %bb.dd, %.body.i.a, %.body.i.i, %.body.thread.i2, %bb.v, %bb.y, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body21.i, %.body.i.a ], [ %i.ch, %bb.v ], [ %eh.lpad-body26.i, %.body.thread.i ], [ %i.cj, %bb.y ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn.pn63.i, %.body.thread.i2 ], [ %i.iz, %bb.dd ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %.body.loopexit.split-lp.i, %.body.loopexit.i, %.thread47.i.i, %bb.r
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake:bb.a
          to label %.body.thread.i2 unwind label %bb.bv, !noalias !12115

.body.thread.i2:                                  ; preds = %bb.cy, %bb.ax, %bb.au, %.body.i.a
  %.pn.pn63.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.au ], [ %eh.lpad-body21.i, %.body.i.a ], [ %i.ez, %bb.ax ], [ %lpad.thr_comm.i, %bb.cy ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #39
          to label %common.resume unwind label %bb.bv, !noalias !12110

end_hunk_1
