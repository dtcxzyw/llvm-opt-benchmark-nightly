inline.NumInlined: 587
inline.NumDeleted: 257
begin_hunk_0_@_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv:bb.a
  %i.ac = and i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !11
  br label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit: ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2376 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16672 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !62
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit: ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2370 ; 3 uses
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %bb.f, label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit

_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit: ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2376 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 2 uses
  %.not.i1 = icmp eq ptr %i.r, null
  %i.s = icmp eq ptr %i.r, %i.q
  %i.t = or i1 %.not.i1, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16632
  %i.v = sdiv i32 %i.m, 64
  %.sext = sext i32 %i.v to i64
  %i.w = and i64 %i.p, 63
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.sext ; 2 uses
  %i.y = shl nuw i64 1, %i.w
  %i.z = xor i64 %i.y, -1
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !11
  %i.ab = and i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit, %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !2381, !inline_history !2389
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !2387
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !2386, !inline_history !2389
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: mustprogress uwtable
define weak_odr i64 @_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback16getTimeRemainingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp slt i64 %i.a, %.sroa.0.0.copyload.i2.i.i
  br i1 %.not.i, label %bb.b, label %_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback16getTimeRemainingENS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i2.i.i, %i.a
  %i.d = udiv i64 %i.c, 1000000
  br label %_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback16getTimeRemainingENS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE.exit

_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback16getTimeRemainingENS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.06.0.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.06.0.i
}

; Function Attrs: mustprogress uwtable
define weak_odr i64 @_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback16getTimeRemainingENS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %.not = icmp slt i64 %1, %.sroa.0.0.copyload.i2.i
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i64 %.sroa.0.0.copyload.i2.i, %1
  %i.c = udiv i64 %i.b, 1000000
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.06.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.06.0
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback12setScheduledEPS6_NS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !2376
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.b, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC2EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16712) %0, ptr noundef %1, i64 %2, i32 noundef %3, i64 %4) unnamed_addr #2 comdat($_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC5EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_) align 2 personality ptr @__gxx_personality_v0 {
vector.ph:
  tail call void @_ZN5folly12AsyncTimeoutC2EPNS_14TimeoutManagerENS1_12InternalEnumE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.b, align 8, !tbaa !1624
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i8 0, ptr %i.c, align 4, !tbaa !1619
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE, i64 16), ptr %0, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE, i64 56), ptr %i.a, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = udiv i64 -1, %2
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = mul nsw i64 %2, 1000000
  %i.i = udiv i64 -1, %i.h
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.g, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %2, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %4, ptr %i.l, align 8, !tbaa !11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 4                        ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.m
  %5 = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.o, i64 1
  %7 = getelementptr i8, <2 x ptr> %6, <2 x i64> <i64 248, i64 264>
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.q = getelementptr i8, ptr %0, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 280
  %i.s = getelementptr i8, ptr %0, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 296
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = insertelement <4 x ptr> %8, ptr %i.r, i64 2
  %i.v = insertelement <4 x ptr> %i.u, ptr %i.t, i64 3
  %9 = getelementptr i8, ptr %0, i64 %i.m         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 %i.m
  %10 = insertelement <2 x ptr> poison, ptr %9, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %i.w, i64 1
  %12 = getelementptr i8, <2 x ptr> %11, <2 x i64> <i64 312, i64 328>
  %i.x = getelementptr i8, ptr %9, i64 312
  %i.y = getelementptr i8, ptr %0, i64 %i.m
  %i.z = getelementptr i8, ptr %i.y, i64 344
  %i.aa = getelementptr i8, ptr %0, i64 %i.m
  %i.ab = getelementptr i8, ptr %i.aa, i64 360
  %13 = shufflevector <2 x ptr> %12, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = insertelement <4 x ptr> %13, ptr %i.z, i64 2
  %i.ad = insertelement <4 x ptr> %i.ac, ptr %i.ab, i64 3
  %14 = getelementptr i8, ptr %0, i64 %i.m        ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.m
  %15 = insertelement <2 x ptr> poison, ptr %14, i64 0
  %16 = insertelement <2 x ptr> %15, ptr %i.ae, i64 1
  %17 = getelementptr i8, <2 x ptr> %16, <2 x i64> <i64 376, i64 392>
  %i.af = getelementptr i8, ptr %14, i64 376
  %i.ag = getelementptr i8, ptr %0, i64 %i.m
  %i.ah = getelementptr i8, ptr %i.ag, i64 408
  %i.ai = getelementptr i8, ptr %0, i64 %i.m
  %i.aj = getelementptr i8, ptr %i.ai, i64 424
  %18 = shufflevector <2 x ptr> %17, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = insertelement <4 x ptr> %18, ptr %i.ah, i64 2
  %i.al = insertelement <4 x ptr> %i.ak, ptr %i.aj, i64 3
  %19 = getelementptr i8, ptr %0, i64 %i.m        ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 %i.m
  %20 = insertelement <2 x ptr> poison, ptr %19, i64 0
  %21 = insertelement <2 x ptr> %20, ptr %i.am, i64 1
  %22 = getelementptr i8, <2 x ptr> %21, <2 x i64> <i64 440, i64 456>
  %i.an = getelementptr i8, ptr %19, i64 440
  %i.ao = getelementptr i8, ptr %0, i64 %i.m
  %i.ap = getelementptr i8, ptr %i.ao, i64 472
  %i.aq = getelementptr i8, ptr %0, i64 %i.m
  %23 = getelementptr i8, ptr %i.aq, i64 488
  %24 = shufflevector <2 x ptr> %22, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ar = insertelement <4 x ptr> %24, ptr %i.ap, i64 2
  %i.as = insertelement <4 x ptr> %i.ar, ptr %23, i64 3
  %interleaved.vec = shufflevector <4 x ptr> %i.v, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec, ptr %i.p, align 8, !tbaa !2390
  %interleaved.vec36 = shufflevector <4 x ptr> %i.ad, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec36, ptr %i.x, align 8, !tbaa !2390
  %interleaved.vec37 = shufflevector <4 x ptr> %i.al, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec37, ptr %i.af, align 8, !tbaa !2390
  %interleaved.vec38 = shufflevector <4 x ptr> %i.as, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec38, ptr %i.an, align 8, !tbaa !2390
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, 1024
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !2391

middle.block:                                     ; preds = %vector.body
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16664
  store i64 1, ptr %i.au, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16672
  store i64 0, ptr %i.av, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16680
  %i.ax = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17
  store i64 %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16688
  store ptr null, ptr %i.ay, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16696 ; 3 uses
  store ptr %i.az, ptr %i.az, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16704
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  ret void
}

declare void @_ZN5folly12AsyncTimeoutC2EPNS_14TimeoutManagerENS1_12InternalEnumE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE10getCurTimeEv(ptr noundef nonnull align 8 dereferenceable(16712) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17
  ret i64 %i.a
}

; Function Attrs: nounwind
declare void @_ZN5folly18DelayedDestructionD2Ev(ptr noundef nonnull align 8 dereferenceable(13)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5folly12AsyncTimeoutD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define weak_odr noundef i64 @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE9cancelAllEv(ptr noundef nonnull align 8 dereferenceable(16712) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive::list", align 16 ; 26 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %3 = alloca %"class.boost::intrusive::list", align 16 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16672 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.ah, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 1024) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  %i.c = shl nuw nsw i64 %.sroa.speculated, 4     ; 3 uses
  %i.d = or disjoint i64 %i.c, 8
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #20, !noalias !2394 ; 23 uses
  store i64 %.sroa.speculated, ptr %i.e, align 16, !noalias !2394
  %i.f = add nsw i64 %i.c, -16                    ; 3 uses
  %i.g = lshr exact i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 48
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check143 = icmp ult i64 %i.f, 240
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 2305843009213693936      ; 4 uses
  %i.i = shl i64 %n.vec, 4
  %i.j = or disjoint i64 %i.i, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 4                        ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %4 = insertelement <2 x ptr> poison, ptr %i.l, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.m, i64 1
  %6 = getelementptr i8, <2 x ptr> %5, <2 x i64> <i64 8, i64 24>
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %7 = shufflevector <2 x ptr> %6, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.s = insertelement <4 x ptr> %7, ptr %i.p, i64 2
  %i.t = insertelement <4 x ptr> %i.s, ptr %i.r, i64 3
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %9 = insertelement <2 x ptr> poison, ptr %8, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %i.u, i64 1
  %11 = getelementptr i8, <2 x ptr> %10, <2 x i64> <i64 72, i64 88>
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %12 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aa = insertelement <4 x ptr> %12, ptr %i.x, i64 2
  %i.ab = insertelement <4 x ptr> %i.aa, ptr %i.z, i64 3
  %13 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %14 = insertelement <2 x ptr> poison, ptr %13, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %i.ac, i64 1
  %16 = getelementptr i8, <2 x ptr> %15, <2 x i64> <i64 136, i64 152>
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 136
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 184
  %17 = shufflevector <2 x ptr> %16, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = insertelement <4 x ptr> %17, ptr %i.af, i64 2
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %i.ah, i64 3
  %18 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %19 = insertelement <2 x ptr> poison, ptr %18, i64 0
  %20 = insertelement <2 x ptr> %19, ptr %i.ak, i64 1
  %21 = getelementptr i8, <2 x ptr> %20, <2 x i64> <i64 200, i64 216>
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 200
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %22 = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  %23 = shufflevector <2 x ptr> %21, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = insertelement <4 x ptr> %23, ptr %i.an, i64 2
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %22, i64 3
  %interleaved.vec = shufflevector <4 x ptr> %i.t, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec, ptr %i.n, align 8, !tbaa !2390, !noalias !2394
  %interleaved.vec144 = shufflevector <4 x ptr> %i.ab, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec144, ptr %i.v, align 8, !tbaa !2390, !noalias !2394
  %interleaved.vec145 = shufflevector <4 x ptr> %i.aj, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec145, ptr %i.ad, align 8, !tbaa !2390, !noalias !2394
  %interleaved.vec146 = shufflevector <4 x ptr> %i.aq, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec146, ptr %i.al, align 8, !tbaa !2390, !noalias !2394
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !2398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec148 = and i64 %i.h, 2305843009213693948   ; 3 uses
  %i.as = shl i64 %n.vec148, 4
  %i.at = or disjoint i64 %i.as, 8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index149 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next151, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index149, 4                    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %24 = insertelement <2 x ptr> poison, ptr %i.av, i64 0
  %25 = insertelement <2 x ptr> %24, ptr %i.aw, i64 1
  %26 = getelementptr i8, <2 x ptr> %25, <2 x i64> <i64 8, i64 24>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %27 = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %28 = shufflevector <2 x ptr> %26, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = insertelement <4 x ptr> %28, ptr %i.az, i64 2
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %27, i64 3
  %interleaved.vec150 = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec150, ptr %i.ax, align 8, !tbaa !2390, !noalias !2394
  %index.next151 = add nuw i64 %index149, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next151, %n.vec148
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n152 = icmp eq i64 %i.h, %n.vec148
  br i1 %cmp.n152, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.idx.i.ph = phi i64 [ 8, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i ], [ %.idx.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 4 uses
  store ptr %.ptr.ptr.i, ptr %.ptr.ptr.i, align 8, !tbaa !59, !noalias !2394
  %i.be = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store ptr %.ptr.ptr.i, ptr %i.be, align 8, !tbaa !60, !noalias !2394
  %.add.i = add nuw nsw i64 %.idx.i, 16
  %i.bf = add nuw nsw i64 %.idx.i, 8
  %i.bg = icmp eq i64 %i.bf, %i.c
  br i1 %i.bg, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i, !llvm.loop !2400

_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit: ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.ptr5.i, ptr %2, align 8, !tbaa !2401, !alias.scope !2394
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not98 = icmp eq i64 %.337.ph, 0
  br i1 %.not98, label %._crit_edge97, label %.lr.ph

_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader: ; preds = %._crit_edge, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit
  %.03295 = phi i64 [ 0, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.3.ph, %._crit_edge ]
  %.03494 = phi i64 [ 0, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.337.ph, %._crit_edge ]
  %.039.idx93 = phi i64 [ 248, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.039.add, %._crit_edge ] ; 2 uses
  %.039.add = add nuw nsw i64 %.039.idx93, 4096   ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.039.add
  %.039.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.039.idx93
  br label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit

_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit: ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader, %select.unfold
  %.13388 = phi i64 [ %.2.ph, %select.unfold ], [ %.03295, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader ] ; 2 uses
  %.13587 = phi i64 [ %.236.ph, %select.unfold ], [ %.03494, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader ] ; 3 uses
  %.03885 = phi ptr [ %i.de, %select.unfold ], [ %.039.ptr, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader ] ; 20 uses
  %i.bi = load ptr, ptr %.03885, align 8, !tbaa !59 ; 4 uses
  %.not.i = icmp eq ptr %i.bi, null
  %i.bj = icmp eq ptr %i.bi, %.03885
  %i.bk = or i1 %.not.i, %i.bj
  br i1 %i.bk, label %select.unfold, label %.preheader82

.preheader82:                                     ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit, %.preheader82
  %.05.i = phi i64 [ %i.bm, %.preheader82 ], [ 0, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit ] ; 2 uses
  %.0.i = phi ptr [ %i.bl, %.preheader82 ], [ %.03885, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit ]
  %i.bl = load ptr, ptr %.0.i, align 8, !tbaa !59 ; 2 uses
  %i.bm = add i64 %.05.i, 1
  %.not.i50 = icmp eq ptr %i.bl, %.03885
  br i1 %.not.i50, label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit, label %.preheader82, !llvm.loop !2403

_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit: ; preds = %.preheader82
  %i.bn = add i64 %.05.i, %.13388                 ; 3 uses
  %i.bo = add i64 %.13587, 1                      ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.ptr5.i, i64 %.13587 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %1, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %i.bh, align 8, !tbaa !60
  %i.bq = icmp eq ptr %.03885, %1
  br i1 %i.bq, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.03885, i64 8
  %.pre26.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %.pre28.i.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !60
  %.pre29.i.i.i.i = load ptr, ptr %.pre26.i.i.i.i, align 8, !tbaa !59
  store ptr %.pre28.i.i.i.i, ptr %i.bh, align 8, !tbaa !60
  store ptr %1, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !60
  store ptr %.pre29.i.i.i.i, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %.pre26.i.i.i.i, align 8, !tbaa !59
  %i.bs = load <2 x ptr>, ptr %.03885, align 8, !tbaa !2390
  %i.bt = load <2 x ptr>, ptr %1, align 16, !tbaa !2390
  %i.bu = load ptr, ptr %1, align 16, !tbaa !59
  store <2 x ptr> %i.bs, ptr %1, align 16, !tbaa !2390
  store <2 x ptr> %i.bt, ptr %.03885, align 8, !tbaa !2390
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i: ; preds = %bb.b, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit
  %i.bv = phi ptr [ %i.bu, %bb.b ], [ %i.bi, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit ] ; 2 uses
  %i.bw = icmp eq ptr %i.bp, %.03885
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !59 ; 4 uses
  br i1 %i.bw, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %.not.i24.i.i.i.i = icmp eq ptr %i.bv, null     ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %.pre, null      ; 2 uses
  br i1 %.not.i24.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.03885, ptr %.03885, align 8, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %.03885, i64 8
  store ptr %.03885, ptr %i.bx, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre.i.i.i11.i = phi ptr [ %.03885, %bb.d ], [ %i.bv, %bb.c ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.f, label %._crit_edge.i.i.i6.i

._crit_edge.i.i.i6.i:                             ; preds = %bb.e
  %.pre26.i.i.i7.i = load ptr, ptr %i.by, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i8.i = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre28.i.i.i9.i = load ptr, ptr %.phi.trans.insert27.i.i.i8.i, align 8, !tbaa !60
  %.pre29.i.i.i10.i = load ptr, ptr %.pre26.i.i.i7.i, align 8, !tbaa !59
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.bp, ptr %i.bp, align 8, !tbaa !59
  store ptr %i.bp, ptr %i.by, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i6.i
  %i.bz = phi ptr [ %i.bp, %bb.f ], [ %.pre29.i.i.i10.i, %._crit_edge.i.i.i6.i ]
  %i.ca = phi ptr [ %i.bp, %bb.f ], [ %.pre28.i.i.i9.i, %._crit_edge.i.i.i6.i ]
  %i.cb = phi ptr [ %i.bp, %bb.f ], [ %.pre26.i.i.i7.i, %._crit_edge.i.i.i6.i ]
  %i.cc = phi ptr [ %i.bp, %bb.f ], [ %.pre, %._crit_edge.i.i.i6.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.03885, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !60 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i11.i, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.ca, ptr %i.cf, align 8, !tbaa !60
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !60
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !59
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !59
  store ptr %i.ci, ptr %i.cb, align 8, !tbaa !59
  %i.cj = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !2390
  %i.ck = load <2 x ptr>, ptr %.03885, align 8, !tbaa !2390
  %i.cl = load ptr, ptr %.03885, align 8, !tbaa !59
  store <2 x ptr> %i.cj, ptr %.03885, align 8, !tbaa !2390
  store <2 x ptr> %i.ck, ptr %i.bp, align 8, !tbaa !2390
  br i1 %.not.i24.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = phi ptr [ null, %bb.h ], [ %i.cl, %bb.g ] ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03885, i8 0, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i, %bb.i, %bb.j
  %i.cn = phi ptr [ %.pre, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i ], [ %i.cm, %bb.i ], [ %i.cm, %bb.j ] ; 2 uses
  %.pre.i = load ptr, ptr %1, align 16, !tbaa !59, !noalias !2404 ; 3 uses
  %.not.i24.i.i.i12.i = icmp eq ptr %i.cn, null   ; 2 uses
  %.not.i.i.i.i13.i = icmp eq ptr %.pre.i, null   ; 2 uses
  br i1 %.not.i24.i.i.i12.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.bp, ptr %i.bp, align 8, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bp, ptr %i.co, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre.i.i.i20.i = phi ptr [ %i.bp, %bb.l ], [ %i.cn, %bb.k ]
  br i1 %.not.i.i.i.i13.i, label %bb.n, label %._crit_edge.i.i.i14.i

._crit_edge.i.i.i14.i:                            ; preds = %bb.m
  %.pre26.i.i.i16.i = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i17.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre28.i.i.i18.i = load ptr, ptr %.phi.trans.insert27.i.i.i17.i, align 8, !tbaa !60
  %.pre29.i.i.i19.i = load ptr, ptr %.pre26.i.i.i16.i, align 8, !tbaa !59
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %1, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %i.bh, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i14.i
  %i.cp = phi ptr [ %1, %bb.n ], [ %.pre29.i.i.i19.i, %._crit_edge.i.i.i14.i ]
  %i.cq = phi ptr [ %1, %bb.n ], [ %.pre28.i.i.i18.i, %._crit_edge.i.i.i14.i ]
  %i.cr = phi ptr [ %1, %bb.n ], [ %.pre26.i.i.i16.i, %._crit_edge.i.i.i14.i ]
  %i.cs = phi ptr [ %1, %bb.n ], [ %.pre.i, %._crit_edge.i.i.i14.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !60 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i20.i, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cq, ptr %i.cv, align 8, !tbaa !60
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !60
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !59
  store ptr %i.cp, ptr %i.cu, align 8, !tbaa !59
  store ptr %i.cy, ptr %i.cr, align 8, !tbaa !59
  %i.cz = load ptr, ptr %i.bp, align 8, !tbaa !59 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59   ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i: ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2432 ; 3 uses
  %.not.i = icmp eq i32 %i.n, -1
  br i1 %.not.i, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !2435 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.s, null
  %i.t = icmp eq ptr %i.s, %i.r
  %i.u = or i1 %.not.i1.i, %i.t
  br i1 %i.u, label %bb.g, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16632
  %i.w = sdiv i32 %i.n, 64
  %.sext.i = sext i32 %i.w to i64
  %i.x = and i64 %i.q, 63
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %.sext.i ; 2 uses
  %i.z = shl nuw i64 1, %i.x
  %i.aa = xor i64 %i.z, -1
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !11
  %i.ac = and i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !11
  br label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit: ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i, %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2435 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16672 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1641
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1641
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit: ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2432 ; 3 uses
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2435 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 2 uses
  %.not.i1 = icmp eq ptr %i.r, null
  %i.s = icmp eq ptr %i.r, %i.q
  %i.t = or i1 %.not.i1, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16632
  %i.v = sdiv i32 %i.m, 64
  %.sext = sext i32 %i.v to i64
  %i.w = and i64 %i.p, 63
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %.sext ; 2 uses
  %i.y = shl nuw i64 1, %i.w
  %i.z = xor i64 %i.y, -1
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !11
  %i.ab = and i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr i64 @_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback16getTimeRemainingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp slt i64 %i.a, %.sroa.0.0.copyload.i2.i.i
  br i1 %.not.i, label %bb.b, label %_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback16getTimeRemainingENS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i2.i.i, %i.a
  %i.d = udiv i64 %i.c, 1000
  br label %_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback16getTimeRemainingENS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE.exit

_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback16getTimeRemainingENS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.06.0.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.06.0.i
}

; Function Attrs: mustprogress uwtable
define weak_odr i64 @_ZNK5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback16getTimeRemainingENS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %.not = icmp slt i64 %1, %.sroa.0.0.copyload.i2.i
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i64 %.sroa.0.0.copyload.i2.i, %1
  %i.c = udiv i64 %i.b, 1000
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.06.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback12setScheduledEPS6_NS1_10time_pointINS1_3_V212steady_clockENS2_IlS3_ILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !2435
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.b, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEC2EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16712) %0, ptr noundef %1, i64 %2, i32 noundef %3, i64 %4) unnamed_addr #2 comdat($_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEC5EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_) align 2 personality ptr @__gxx_personality_v0 {
vector.ph:
  tail call void @_ZN5folly12AsyncTimeoutC2EPNS_14TimeoutManagerENS1_12InternalEnumE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.b, align 8, !tbaa !1624
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i8 0, ptr %i.c, align 4, !tbaa !1619
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE, i64 16), ptr %0, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE, i64 56), ptr %i.a, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = udiv i64 -1, %2
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !1628
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = mul nsw i64 %2, 1000
  %i.i = udiv i64 -1, %i.h
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.g, align 8, !tbaa !1628
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %2, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %4, ptr %i.l, align 8, !tbaa !11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 4                        ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.m
  %5 = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.o, i64 1
  %7 = getelementptr i8, <2 x ptr> %6, <2 x i64> <i64 248, i64 264>
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.q = getelementptr i8, ptr %0, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 280
  %i.s = getelementptr i8, ptr %0, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 296
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = insertelement <4 x ptr> %8, ptr %i.r, i64 2
  %i.v = insertelement <4 x ptr> %i.u, ptr %i.t, i64 3
  %9 = getelementptr i8, ptr %0, i64 %i.m         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 %i.m
  %10 = insertelement <2 x ptr> poison, ptr %9, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %i.w, i64 1
  %12 = getelementptr i8, <2 x ptr> %11, <2 x i64> <i64 312, i64 328>
  %i.x = getelementptr i8, ptr %9, i64 312
  %i.y = getelementptr i8, ptr %0, i64 %i.m
  %i.z = getelementptr i8, ptr %i.y, i64 344
  %i.aa = getelementptr i8, ptr %0, i64 %i.m
  %i.ab = getelementptr i8, ptr %i.aa, i64 360
  %13 = shufflevector <2 x ptr> %12, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = insertelement <4 x ptr> %13, ptr %i.z, i64 2
  %i.ad = insertelement <4 x ptr> %i.ac, ptr %i.ab, i64 3
  %14 = getelementptr i8, ptr %0, i64 %i.m        ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.m
  %15 = insertelement <2 x ptr> poison, ptr %14, i64 0
  %16 = insertelement <2 x ptr> %15, ptr %i.ae, i64 1
  %17 = getelementptr i8, <2 x ptr> %16, <2 x i64> <i64 376, i64 392>
  %i.af = getelementptr i8, ptr %14, i64 376
  %i.ag = getelementptr i8, ptr %0, i64 %i.m
  %i.ah = getelementptr i8, ptr %i.ag, i64 408
  %i.ai = getelementptr i8, ptr %0, i64 %i.m
  %i.aj = getelementptr i8, ptr %i.ai, i64 424
  %18 = shufflevector <2 x ptr> %17, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = insertelement <4 x ptr> %18, ptr %i.ah, i64 2
  %i.al = insertelement <4 x ptr> %i.ak, ptr %i.aj, i64 3
  %19 = getelementptr i8, ptr %0, i64 %i.m        ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 %i.m
  %20 = insertelement <2 x ptr> poison, ptr %19, i64 0
  %21 = insertelement <2 x ptr> %20, ptr %i.am, i64 1
  %22 = getelementptr i8, <2 x ptr> %21, <2 x i64> <i64 440, i64 456>
  %i.an = getelementptr i8, ptr %19, i64 440
  %i.ao = getelementptr i8, ptr %0, i64 %i.m
  %i.ap = getelementptr i8, ptr %i.ao, i64 472
  %i.aq = getelementptr i8, ptr %0, i64 %i.m
  %23 = getelementptr i8, ptr %i.aq, i64 488
  %24 = shufflevector <2 x ptr> %22, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ar = insertelement <4 x ptr> %24, ptr %i.ap, i64 2
  %i.as = insertelement <4 x ptr> %i.ar, ptr %23, i64 3
  %interleaved.vec = shufflevector <4 x ptr> %i.v, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec, ptr %i.p, align 8, !tbaa !2390
  %interleaved.vec36 = shufflevector <4 x ptr> %i.ad, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec36, ptr %i.x, align 8, !tbaa !2390
  %interleaved.vec37 = shufflevector <4 x ptr> %i.al, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec37, ptr %i.af, align 8, !tbaa !2390
  %interleaved.vec38 = shufflevector <4 x ptr> %i.as, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec38, ptr %i.an, align 8, !tbaa !2390
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, 1024
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !2436

middle.block:                                     ; preds = %vector.body
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16664
  store i64 1, ptr %i.au, align 8, !tbaa !1638
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16672
  store i64 0, ptr %i.av, align 8, !tbaa !1641
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16680
  %i.ax = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17
  store i64 %i.ax, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16688
  store ptr null, ptr %i.ay, align 8, !tbaa !1630
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16696 ; 3 uses
  store ptr %i.az, ptr %i.az, align 8, !tbaa !59
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16704
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE10getCurTimeEv(ptr noundef nonnull align 8 dereferenceable(16712) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i64 @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE9cancelAllEv(ptr noundef nonnull align 8 dereferenceable(16712) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive::list.12", align 16 ; 26 uses
  %2 = alloca %"class.std::unique_ptr.27", align 8 ; 7 uses
  %3 = alloca %"class.boost::intrusive::list.12", align 16 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16672 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1641 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.aj, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 1024) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  %i.c = shl nuw nsw i64 %.sroa.speculated, 4     ; 3 uses
  %i.d = or disjoint i64 %i.c, 8
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #20, !noalias !2437 ; 23 uses
  store i64 %.sroa.speculated, ptr %i.e, align 16, !noalias !2437
  %i.f = add nsw i64 %i.c, -16                    ; 3 uses
  %i.g = lshr exact i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 48
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check143 = icmp ult i64 %i.f, 240
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 2305843009213693936      ; 4 uses
  %i.i = shl i64 %n.vec, 4
  %i.j = or disjoint i64 %i.i, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 4                        ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %4 = insertelement <2 x ptr> poison, ptr %i.l, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.m, i64 1
  %6 = getelementptr i8, <2 x ptr> %5, <2 x i64> <i64 8, i64 24>
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %7 = shufflevector <2 x ptr> %6, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.s = insertelement <4 x ptr> %7, ptr %i.p, i64 2
  %i.t = insertelement <4 x ptr> %i.s, ptr %i.r, i64 3
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %9 = insertelement <2 x ptr> poison, ptr %8, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %i.u, i64 1
  %11 = getelementptr i8, <2 x ptr> %10, <2 x i64> <i64 72, i64 88>
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %12 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aa = insertelement <4 x ptr> %12, ptr %i.x, i64 2
  %i.ab = insertelement <4 x ptr> %i.aa, ptr %i.z, i64 3
  %13 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %14 = insertelement <2 x ptr> poison, ptr %13, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %i.ac, i64 1
  %16 = getelementptr i8, <2 x ptr> %15, <2 x i64> <i64 136, i64 152>
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 136
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 184
  %17 = shufflevector <2 x ptr> %16, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = insertelement <4 x ptr> %17, ptr %i.af, i64 2
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %i.ah, i64 3
  %18 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %19 = insertelement <2 x ptr> poison, ptr %18, i64 0
  %20 = insertelement <2 x ptr> %19, ptr %i.ak, i64 1
  %21 = getelementptr i8, <2 x ptr> %20, <2 x i64> <i64 200, i64 216>
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 200
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %22 = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  %23 = shufflevector <2 x ptr> %21, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = insertelement <4 x ptr> %23, ptr %i.an, i64 2
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %22, i64 3
  %interleaved.vec = shufflevector <4 x ptr> %i.t, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec, ptr %i.n, align 8, !tbaa !2390, !noalias !2437
  %interleaved.vec144 = shufflevector <4 x ptr> %i.ab, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec144, ptr %i.v, align 8, !tbaa !2390, !noalias !2437
  %interleaved.vec145 = shufflevector <4 x ptr> %i.aj, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec145, ptr %i.ad, align 8, !tbaa !2390, !noalias !2437
  %interleaved.vec146 = shufflevector <4 x ptr> %i.aq, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec146, ptr %i.al, align 8, !tbaa !2390, !noalias !2437
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !2398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec148 = and i64 %i.h, 2305843009213693948   ; 3 uses
  %i.as = shl i64 %n.vec148, 4
  %i.at = or disjoint i64 %i.as, 8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index149 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next151, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index149, 4                    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %24 = insertelement <2 x ptr> poison, ptr %i.av, i64 0
  %25 = insertelement <2 x ptr> %24, ptr %i.aw, i64 1
  %26 = getelementptr i8, <2 x ptr> %25, <2 x i64> <i64 8, i64 24>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %27 = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %28 = shufflevector <2 x ptr> %26, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = insertelement <4 x ptr> %28, ptr %i.az, i64 2
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %27, i64 3
  %interleaved.vec150 = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec150, ptr %i.ax, align 8, !tbaa !2390, !noalias !2437
  %index.next151 = add nuw i64 %index149, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next151, %n.vec148
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2441

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n152 = icmp eq i64 %i.h, %n.vec148
  br i1 %cmp.n152, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.idx.i.ph = phi i64 [ 8, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i ], [ %.idx.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 4 uses
  store ptr %.ptr.ptr.i, ptr %.ptr.ptr.i, align 8, !tbaa !59, !noalias !2437
  %i.be = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store ptr %.ptr.ptr.i, ptr %i.be, align 8, !tbaa !60, !noalias !2437
  %.add.i = add nuw nsw i64 %.idx.i, 16
  %i.bf = add nuw nsw i64 %.idx.i, 8
  %i.bg = icmp eq i64 %i.bf, %i.c
  br i1 %i.bg, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i, !llvm.loop !2442

_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit: ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.ptr5.i, ptr %2, align 8, !tbaa !2443, !alias.scope !2437
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %.lr.ph.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not98 = icmp eq i64 %.337.ph, 0
  br i1 %.not98, label %._crit_edge97, label %.lr.ph96

.lr.ph.preheader:                                 ; preds = %._crit_edge, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit
  %.03294 = phi i64 [ 0, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.3.ph, %._crit_edge ]
  %.03493 = phi i64 [ 0, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.337.ph, %._crit_edge ]
  %.039.idx92 = phi i64 [ 248, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.039.add, %._crit_edge ] ; 2 uses
  %.039.add = add nuw nsw i64 %.039.idx92, 4096   ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.039.add
  %.039.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.039.idx92
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.13387 = phi i64 [ %.2.ph, %select.unfold ], [ %.03294, %.lr.ph.preheader ] ; 2 uses
  %.13586 = phi i64 [ %.236.ph, %select.unfold ], [ %.03493, %.lr.ph.preheader ] ; 3 uses
  %.03884 = phi ptr [ %i.de, %select.unfold ], [ %.039.ptr, %.lr.ph.preheader ] ; 20 uses
  %i.bi = load ptr, ptr %.03884, align 8, !tbaa !59 ; 4 uses
  %.not.i = icmp eq ptr %i.bi, null
  %i.bj = icmp eq ptr %i.bi, %.03884
  %i.bk = or i1 %.not.i, %i.bj
  br i1 %i.bk, label %select.unfold, label %.preheader81

.preheader81:                                     ; preds = %.lr.ph, %.preheader81
  %.05.i = phi i64 [ %i.bm, %.preheader81 ], [ 0, %.lr.ph ] ; 2 uses
  %.0.i = phi ptr [ %i.bl, %.preheader81 ], [ %.03884, %.lr.ph ]
  %i.bl = load ptr, ptr %.0.i, align 8, !tbaa !59 ; 2 uses
  %i.bm = add i64 %.05.i, 1
  %.not.i50 = icmp eq ptr %i.bl, %.03884
  br i1 %.not.i50, label %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit, label %.preheader81, !llvm.loop !2403

_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit: ; preds = %.preheader81
  %i.bn = add i64 %.05.i, %.13387                 ; 3 uses
  %i.bo = add i64 %.13586, 1                      ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.ptr5.i, i64 %.13586 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %1, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %i.bh, align 8, !tbaa !60
  %i.bq = icmp eq ptr %.03884, %1
  br i1 %i.bq, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.03884, i64 8
  %.pre26.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %.pre28.i.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !60
  %.pre29.i.i.i.i = load ptr, ptr %.pre26.i.i.i.i, align 8, !tbaa !59
  store ptr %.pre28.i.i.i.i, ptr %i.bh, align 8, !tbaa !60
  store ptr %1, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !60
  store ptr %.pre29.i.i.i.i, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %.pre26.i.i.i.i, align 8, !tbaa !59
  %i.bs = load <2 x ptr>, ptr %.03884, align 8, !tbaa !2390
  %i.bt = load <2 x ptr>, ptr %1, align 16, !tbaa !2390
  %i.bu = load ptr, ptr %1, align 16, !tbaa !59
  store <2 x ptr> %i.bs, ptr %1, align 16, !tbaa !2390
  store <2 x ptr> %i.bt, ptr %.03884, align 8, !tbaa !2390
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i: ; preds = %bb.b, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit
  %i.bv = phi ptr [ %i.bu, %bb.b ], [ %i.bi, %_ZN5boost9intrusive24circular_list_algorithmsINS0_16list_node_traitsIPvEEE5countEPKNS0_9list_nodeIS3_EE.exit ] ; 2 uses
  %i.bw = icmp eq ptr %i.bp, %.03884
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !59 ; 4 uses
  br i1 %i.bw, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %.not.i24.i.i.i.i = icmp eq ptr %i.bv, null     ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %.pre, null      ; 2 uses
  br i1 %.not.i24.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.03884, ptr %.03884, align 8, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %.03884, i64 8
  store ptr %.03884, ptr %i.bx, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre.i.i.i11.i = phi ptr [ %.03884, %bb.d ], [ %i.bv, %bb.c ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.f, label %._crit_edge.i.i.i6.i

._crit_edge.i.i.i6.i:                             ; preds = %bb.e
  %.pre26.i.i.i7.i = load ptr, ptr %i.by, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i8.i = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre28.i.i.i9.i = load ptr, ptr %.phi.trans.insert27.i.i.i8.i, align 8, !tbaa !60
  %.pre29.i.i.i10.i = load ptr, ptr %.pre26.i.i.i7.i, align 8, !tbaa !59
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.bp, ptr %i.bp, align 8, !tbaa !59
  store ptr %i.bp, ptr %i.by, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i6.i
  %i.bz = phi ptr [ %i.bp, %bb.f ], [ %.pre29.i.i.i10.i, %._crit_edge.i.i.i6.i ]
  %i.ca = phi ptr [ %i.bp, %bb.f ], [ %.pre28.i.i.i9.i, %._crit_edge.i.i.i6.i ]
  %i.cb = phi ptr [ %i.bp, %bb.f ], [ %.pre26.i.i.i7.i, %._crit_edge.i.i.i6.i ]
  %i.cc = phi ptr [ %i.bp, %bb.f ], [ %.pre, %._crit_edge.i.i.i6.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.03884, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !60 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i11.i, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.ca, ptr %i.cf, align 8, !tbaa !60
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !60
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !59
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !59
  store ptr %i.ci, ptr %i.cb, align 8, !tbaa !59
  %i.cj = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !2390
  %i.ck = load <2 x ptr>, ptr %.03884, align 8, !tbaa !2390
  %i.cl = load ptr, ptr %.03884, align 8, !tbaa !59
  store <2 x ptr> %i.cj, ptr %.03884, align 8, !tbaa !2390
  store <2 x ptr> %i.ck, ptr %i.bp, align 8, !tbaa !2390
  br i1 %.not.i24.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = phi ptr [ null, %bb.h ], [ %i.cl, %bb.g ] ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03884, i8 0, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i, %bb.i, %bb.j
  %i.cn = phi ptr [ %.pre, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i ], [ %i.cm, %bb.i ], [ %i.cm, %bb.j ] ; 2 uses
  %.pre.i = load ptr, ptr %1, align 16, !tbaa !59, !noalias !2445 ; 3 uses
  %.not.i24.i.i.i12.i = icmp eq ptr %i.cn, null   ; 2 uses
  %.not.i.i.i.i13.i = icmp eq ptr %.pre.i, null   ; 2 uses
  br i1 %.not.i24.i.i.i12.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.bp, ptr %i.bp, align 8, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bp, ptr %i.co, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre.i.i.i20.i = phi ptr [ %i.bp, %bb.l ], [ %i.cn, %bb.k ]
  br i1 %.not.i.i.i.i13.i, label %bb.n, label %._crit_edge.i.i.i14.i

._crit_edge.i.i.i14.i:                            ; preds = %bb.m
  %.pre26.i.i.i16.i = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i17.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre28.i.i.i18.i = load ptr, ptr %.phi.trans.insert27.i.i.i17.i, align 8, !tbaa !60
  %.pre29.i.i.i19.i = load ptr, ptr %.pre26.i.i.i16.i, align 8, !tbaa !59
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %1, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %i.bh, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i14.i
  %i.cp = phi ptr [ %1, %bb.n ], [ %.pre29.i.i.i19.i, %._crit_edge.i.i.i14.i ]
  %i.cq = phi ptr [ %1, %bb.n ], [ %.pre28.i.i.i18.i, %._crit_edge.i.i.i14.i ]
  %i.cr = phi ptr [ %1, %bb.n ], [ %.pre26.i.i.i16.i, %._crit_edge.i.i.i14.i ]
  %i.cs = phi ptr [ %1, %bb.n ], [ %.pre.i, %._crit_edge.i.i.i14.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !60 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i20.i, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cq, ptr %i.cv, align 8, !tbaa !60
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !60
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !59
  store ptr %i.cp, ptr %i.cu, align 8, !tbaa !59
  store ptr %i.cy, ptr %i.cr, align 8, !tbaa !59
  %i.cz = load ptr, ptr %i.bp, align 8, !tbaa !59 ; 2 uses
end_hunk_1
