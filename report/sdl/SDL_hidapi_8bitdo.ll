Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_8bitdo?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@HIDAPI_Driver8BitDo_OpenJoystick:bb.a
  %i.l = load i16, ptr %i.d, align 2
  switch i16 %i.l, label %HIDAPI_Driver8BitDo_GetIMURateForProductID.exit [
    i16 24576, label %bb.f
    i16 24832, label %bb.f
    i16 24577, label %bb.f
    i16 24833, label %bb.f
    i16 24579, label %bb.h
    i16 24582, label %bb.h
    i16 24585, label %bb.h
    i16 24594, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = load i8, ptr %i.m, align 4, !range !3, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %HIDAPI_Driver8BitDo_GetIMURateForProductID.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.q = load i8, ptr %i.p, align 2, !range !3, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  %..i = select i1 %i.r, i64 200, i64 100
  br label %HIDAPI_Driver8BitDo_GetIMURateForProductID.exit

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i8, ptr %i.s, align 4, !range !3, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %HIDAPI_Driver8BitDo_GetIMURateForProductID.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.w = load i8, ptr %i.v, align 2, !range !3, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  %.7.i = select i1 %i.x, i64 200, i64 100
  br label %HIDAPI_Driver8BitDo_GetIMURateForProductID.exit

bb.j:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.z = load i8, ptr %i.y, align 4, !range !3, !noundef !4
  %i.aa = trunc nuw i8 %i.z to i1
  %.8.i = select i1 %i.aa, i64 120, i64 1000
  br label %HIDAPI_Driver8BitDo_GetIMURateForProductID.exit

HIDAPI_Driver8BitDo_GetIMURateForProductID.exit:  ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %.7.i, %bb.i ], [ 85, %bb.h ], [ %..i, %bb.g ], [ 70, %bb.f ], [ %.8.i, %bb.j ], [ 120, %bb.e ] ; 2 uses
  %.rhs.trunc = trunc nuw nsw i64 %.0.i to i32
  %i.ab = udiv i32 1000000000, %.rhs.trunc
  %.zext = zext nneg i32 %i.ab to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %.zext, ptr %i.ac, align 8
  %i.ad = uitofp nneg i64 %.0.i to float          ; 2 uses
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %1, i32 noundef 2, float noundef %i.ad) #8
  tail call void @SDL_PrivateJoystickAddSensor(ptr noundef nonnull %1, i32 noundef 1, float noundef %i.ad) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x float> <float f0x3B1CE80A, float f0x3A8BA16F>, ptr %i.ae, align 8
  br label %bb.k

bb.k:                                             ; preds = %HIDAPI_Driver8BitDo_GetIMURateForProductID.exit, %bb.d
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_Driver8BitDo_RumbleJoystick(ptr noundef %0, ptr nofree readnone captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i8, ptr %i.d, align 4, !range !3, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @__const.HIDAPI_Driver8BitDo_RumbleJoystickTriggers.rumble_packet, i64 5, i1 false)
  %i.g = lshr i16 %2, 8
  %i.h = trunc nuw i16 %i.g to i8                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.h, ptr %i.i, align 1
  %i.j = lshr i16 %3, 8
  %i.k = trunc nuw i16 %i.j to i8                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.k, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.n = load i8, ptr %i.m, align 1, !range !3, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 114
  %i.q = load i8, ptr %i.p, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.q, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 115
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.t, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i8 %i.h, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 113
  store i8 %i.k, ptr %i.w, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = call i32 @SDL_HIDAPI_SendRumble(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 5) #8
  %.not = icmp eq i32 %i.x, 5
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ %i.y, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i1 [ %.0, %bb.f ], [ %i.z, %bb.g ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_Driver8BitDo_RumbleJoystickTriggers(ptr noundef %0, ptr nofree readnone captures(none) %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.e = load i8, ptr %i.d, align 1, !range !3, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @__const.HIDAPI_Driver8BitDo_RumbleJoystickTriggers.rumble_packet, i64 3, i1 false)
  %i.g = lshr i16 %2, 8
  %i.h = trunc nuw i16 %i.g to i8                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.h, ptr %i.i, align 1
  %i.j = lshr i16 %3, 8
  %i.k = trunc nuw i16 %i.j to i8                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.k, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.n = load i8, ptr %i.m, align 4, !range !3, !noundef !4
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.q = load i8, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 113
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.t, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 114
  store i8 %i.h, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 115
  store i8 %i.k, ptr %i.w, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = call i32 @SDL_HIDAPI_SendRumble(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 5) #8
  %.not = icmp eq i32 %i.x, 5
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ %i.y, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i1 [ %.0, %bb.f ], [ %i.z, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 19) i32 @HIDAPI_Driver8BitDo_GetJoystickCapabilities(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !3, !noundef !4
  %2 = shl nuw nsw i8 %i.d, 4
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %4 = load i8, ptr %3, align 1, !range !3, !noundef !4
  %5 = shl nuw nsw i8 %4, 1
  %.15 = or disjoint i8 %5, %2
  %.1 = zext nneg i8 %.15 to i32
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_Driver8BitDo_SetJoystickLED(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #8
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_Driver8BitDo_SendJoystickEffect(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #8
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @HIDAPI_Driver8BitDo_SetJoystickSensorsEnabled(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !3, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext i1 %2 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.e, ptr %i.f, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @HIDAPI_Driver8BitDo_CloseJoystick(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @HIDAPI_Driver8BitDo_FreeDevice(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

declare zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_RemoveHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @SDL_hid_read_timeout_REAL(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @SDL_snprintf_REAL(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @HIDAPI_SetDeviceSerial(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_Delay_REAL(i32 noundef) local_unnamed_addr #3

declare void @HIDAPI_SetDeviceName(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @HIDAPI_JoystickConnected(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @SDL_hid_get_feature_report_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @SDL_GetJoystickFromID_REAL(i32 noundef) local_unnamed_addr #3

declare void @HIDAPI_JoystickDisconnected(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @SDL_GetTicksNS_REAL() local_unnamed_addr #3

declare void @SDL_SendJoystickHat(i64 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendJoystickButton(i64 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendJoystickAxis(i64 noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare float @HIDAPI_RemapVal(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @SDL_SendJoystickPowerInfo(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @SDL_SendJoystickSensor(i64 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @SDL_AssertJoysticksLocked() local_unnamed_addr #3

declare void @SDL_PrivateJoystickAddSensor(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare i32 @SDL_HIDAPI_SendRumble(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
end_hunk_0
