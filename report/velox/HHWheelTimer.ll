inline.NumInlined: 587
inline.NumDeleted: 257
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv:bb.a
  br i1 %i.u, label %bb.f, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit

bb.f:                                             ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i
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
  %i.p = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %i.q = insertelement <2 x ptr> %i.p, ptr %i.o, i64 1
  %i.r = getelementptr i8, <2 x ptr> %i.q, <2 x i64> <i64 248, i64 264>
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.t = getelementptr i8, ptr %0, i64 %i.m
  %i.u = getelementptr i8, ptr %0, i64 %i.m
  %i.v = insertelement <2 x ptr> poison, ptr %i.t, i64 0
  %i.w = insertelement <2 x ptr> %i.v, ptr %i.u, i64 1
  %i.x = getelementptr i8, <2 x ptr> %i.w, <2 x i64> <i64 280, i64 296>
  %i.y = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.m
  %i.aa = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %i.z, i64 1
  %i.ac = getelementptr i8, <2 x ptr> %i.ab, <2 x i64> <i64 312, i64 328>
  %i.ad = getelementptr i8, ptr %i.y, i64 312
  %i.ae = getelementptr i8, ptr %0, i64 %i.m
  %i.af = getelementptr i8, ptr %0, i64 %i.m
  %i.ag = insertelement <2 x ptr> poison, ptr %i.ae, i64 0
  %i.ah = insertelement <2 x ptr> %i.ag, ptr %i.af, i64 1
  %i.ai = getelementptr i8, <2 x ptr> %i.ah, <2 x i64> <i64 344, i64 360>
  %i.aj = getelementptr i8, ptr %0, i64 %i.m      ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 %i.m
  %i.al = insertelement <2 x ptr> poison, ptr %i.aj, i64 0
  %i.am = insertelement <2 x ptr> %i.al, ptr %i.ak, i64 1
  %i.an = getelementptr i8, <2 x ptr> %i.am, <2 x i64> <i64 376, i64 392>
  %i.ao = getelementptr i8, ptr %i.aj, i64 376
  %i.ap = getelementptr i8, ptr %0, i64 %i.m
  %i.aq = getelementptr i8, ptr %0, i64 %i.m
  %i.ar = insertelement <2 x ptr> poison, ptr %i.ap, i64 0
  %i.as = insertelement <2 x ptr> %i.ar, ptr %i.aq, i64 1
  %i.at = getelementptr i8, <2 x ptr> %i.as, <2 x i64> <i64 408, i64 424>
  %i.au = getelementptr i8, ptr %0, i64 %i.m      ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 %i.m
  %i.aw = insertelement <2 x ptr> poison, ptr %i.au, i64 0
  %i.ax = insertelement <2 x ptr> %i.aw, ptr %i.av, i64 1
  %i.ay = getelementptr i8, <2 x ptr> %i.ax, <2 x i64> <i64 440, i64 456>
  %i.az = getelementptr i8, ptr %i.au, i64 440
  %i.ba = getelementptr i8, ptr %0, i64 %i.m
  %i.bb = getelementptr i8, ptr %0, i64 %i.m
  %i.bc = insertelement <2 x ptr> poison, ptr %i.ba, i64 0
  %i.bd = insertelement <2 x ptr> %i.bc, ptr %i.bb, i64 1
  %i.be = getelementptr i8, <2 x ptr> %i.bd, <2 x i64> <i64 472, i64 488>
  %interleaved.vec = shufflevector <2 x ptr> %i.r, <2 x ptr> %i.x, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec, ptr %i.s, align 8, !tbaa !2390
  %interleaved.vec36 = shufflevector <2 x ptr> %i.ac, <2 x ptr> %i.ai, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec36, ptr %i.ad, align 8, !tbaa !2390
  %interleaved.vec37 = shufflevector <2 x ptr> %i.an, <2 x ptr> %i.at, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec37, ptr %i.ao, align 8, !tbaa !2390
  %interleaved.vec38 = shufflevector <2 x ptr> %i.ay, <2 x ptr> %i.be, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec38, ptr %i.az, align 8, !tbaa !2390
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, 1024
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !2391

middle.block:                                     ; preds = %vector.body
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16664
  store i64 1, ptr %i.bg, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16672
  store i64 0, ptr %i.bh, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16680
  %i.bj = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17
  store i64 %i.bj, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16688
  store ptr null, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16696 ; 3 uses
  store ptr %i.bl, ptr %i.bl, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16704
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false)
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
  %1 = alloca %"class.boost::intrusive::list", align 16 ; 24 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %3 = alloca %"class.boost::intrusive::list", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16672 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.ae, label %iter.check

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
  %min.iters.check138 = icmp ult i64 %i.f, 240
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph

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
  %i.n = insertelement <2 x ptr> poison, ptr %i.l, i64 0
  %i.o = insertelement <2 x ptr> %i.n, ptr %i.m, i64 1
  %i.p = getelementptr inbounds nuw i8, <2 x ptr> %i.o, <2 x i64> <i64 8, i64 24>
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.t = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.u = insertelement <2 x ptr> %i.t, ptr %i.s, i64 1
  %i.v = getelementptr inbounds nuw i8, <2 x ptr> %i.u, <2 x i64> <i64 40, i64 56>
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.y = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.z = insertelement <2 x ptr> %i.y, ptr %i.x, i64 1
  %i.aa = getelementptr inbounds nuw i8, <2 x ptr> %i.z, <2 x i64> <i64 72, i64 88>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %i.ag = getelementptr inbounds nuw i8, <2 x ptr> %i.af, <2 x i64> <i64 104, i64 120>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.aj = insertelement <2 x ptr> poison, ptr %i.ah, i64 0
  %i.ak = insertelement <2 x ptr> %i.aj, ptr %i.ai, i64 1
  %i.al = getelementptr inbounds nuw i8, <2 x ptr> %i.ak, <2 x i64> <i64 136, i64 152>
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ap = insertelement <2 x ptr> poison, ptr %i.an, i64 0
  %i.aq = insertelement <2 x ptr> %i.ap, ptr %i.ao, i64 1
  %i.ar = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 168, i64 184>
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.au = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.av = insertelement <2 x ptr> %i.au, ptr %i.at, i64 1
  %i.aw = getelementptr inbounds nuw i8, <2 x ptr> %i.av, <2 x i64> <i64 200, i64 216>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 200
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ba = insertelement <2 x ptr> poison, ptr %i.ay, i64 0
  %i.bb = insertelement <2 x ptr> %i.ba, ptr %i.az, i64 1
  %i.bc = getelementptr inbounds nuw i8, <2 x ptr> %i.bb, <2 x i64> <i64 232, i64 248>
  %interleaved.vec = shufflevector <2 x ptr> %i.p, <2 x ptr> %i.v, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec, ptr %i.q, align 8, !tbaa !2390, !noalias !2394
  %interleaved.vec139 = shufflevector <2 x ptr> %i.aa, <2 x ptr> %i.ag, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec139, ptr %i.ab, align 8, !tbaa !2390, !noalias !2394
  %interleaved.vec140 = shufflevector <2 x ptr> %i.al, <2 x ptr> %i.ar, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec140, ptr %i.am, align 8, !tbaa !2390, !noalias !2394
  %interleaved.vec141 = shufflevector <2 x ptr> %i.aw, <2 x ptr> %i.bc, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec141, ptr %i.ax, align 8, !tbaa !2390, !noalias !2394
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !2397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
end_hunk_0
begin_hunk_1_@_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2432 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16672 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1641
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !1641
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

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
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2429 ; 3 uses
  %.not.i = icmp eq i32 %i.n, -1
  br i1 %.not.i, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !2432 ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2432 ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2429 ; 3 uses
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2432 ; 2 uses
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
  store ptr %1, ptr %i.a, align 8, !tbaa !2432
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
  %i.p = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %i.q = insertelement <2 x ptr> %i.p, ptr %i.o, i64 1
  %i.r = getelementptr i8, <2 x ptr> %i.q, <2 x i64> <i64 248, i64 264>
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.t = getelementptr i8, ptr %0, i64 %i.m
  %i.u = getelementptr i8, ptr %0, i64 %i.m
  %i.v = insertelement <2 x ptr> poison, ptr %i.t, i64 0
  %i.w = insertelement <2 x ptr> %i.v, ptr %i.u, i64 1
  %i.x = getelementptr i8, <2 x ptr> %i.w, <2 x i64> <i64 280, i64 296>
  %i.y = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.m
  %i.aa = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %i.z, i64 1
  %i.ac = getelementptr i8, <2 x ptr> %i.ab, <2 x i64> <i64 312, i64 328>
  %i.ad = getelementptr i8, ptr %i.y, i64 312
  %i.ae = getelementptr i8, ptr %0, i64 %i.m
  %i.af = getelementptr i8, ptr %0, i64 %i.m
  %i.ag = insertelement <2 x ptr> poison, ptr %i.ae, i64 0
  %i.ah = insertelement <2 x ptr> %i.ag, ptr %i.af, i64 1
  %i.ai = getelementptr i8, <2 x ptr> %i.ah, <2 x i64> <i64 344, i64 360>
  %i.aj = getelementptr i8, ptr %0, i64 %i.m      ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 %i.m
  %i.al = insertelement <2 x ptr> poison, ptr %i.aj, i64 0
  %i.am = insertelement <2 x ptr> %i.al, ptr %i.ak, i64 1
  %i.an = getelementptr i8, <2 x ptr> %i.am, <2 x i64> <i64 376, i64 392>
  %i.ao = getelementptr i8, ptr %i.aj, i64 376
  %i.ap = getelementptr i8, ptr %0, i64 %i.m
  %i.aq = getelementptr i8, ptr %0, i64 %i.m
  %i.ar = insertelement <2 x ptr> poison, ptr %i.ap, i64 0
  %i.as = insertelement <2 x ptr> %i.ar, ptr %i.aq, i64 1
  %i.at = getelementptr i8, <2 x ptr> %i.as, <2 x i64> <i64 408, i64 424>
  %i.au = getelementptr i8, ptr %0, i64 %i.m      ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 %i.m
  %i.aw = insertelement <2 x ptr> poison, ptr %i.au, i64 0
  %i.ax = insertelement <2 x ptr> %i.aw, ptr %i.av, i64 1
  %i.ay = getelementptr i8, <2 x ptr> %i.ax, <2 x i64> <i64 440, i64 456>
  %i.az = getelementptr i8, ptr %i.au, i64 440
  %i.ba = getelementptr i8, ptr %0, i64 %i.m
  %i.bb = getelementptr i8, ptr %0, i64 %i.m
  %i.bc = insertelement <2 x ptr> poison, ptr %i.ba, i64 0
  %i.bd = insertelement <2 x ptr> %i.bc, ptr %i.bb, i64 1
  %i.be = getelementptr i8, <2 x ptr> %i.bd, <2 x i64> <i64 472, i64 488>
  %interleaved.vec = shufflevector <2 x ptr> %i.r, <2 x ptr> %i.x, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec, ptr %i.s, align 8, !tbaa !2390
  %interleaved.vec36 = shufflevector <2 x ptr> %i.ac, <2 x ptr> %i.ai, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec36, ptr %i.ad, align 8, !tbaa !2390
  %interleaved.vec37 = shufflevector <2 x ptr> %i.an, <2 x ptr> %i.at, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec37, ptr %i.ao, align 8, !tbaa !2390
  %interleaved.vec38 = shufflevector <2 x ptr> %i.ay, <2 x ptr> %i.be, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec38, ptr %i.az, align 8, !tbaa !2390
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, 1024
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !2433

middle.block:                                     ; preds = %vector.body
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16664
  store i64 1, ptr %i.bg, align 8, !tbaa !1638
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16672
  store i64 0, ptr %i.bh, align 8, !tbaa !1641
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16680
  %i.bj = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17
  store i64 %i.bj, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16688
  store ptr null, ptr %i.bk, align 8, !tbaa !1630
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16696 ; 3 uses
  store ptr %i.bl, ptr %i.bl, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16704
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false)
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
  %1 = alloca %"class.boost::intrusive::list.12", align 16 ; 24 uses
  %2 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %3 = alloca %"class.boost::intrusive::list.12", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16672 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1641 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.ag, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 1024) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %i.c = shl nuw nsw i64 %.sroa.speculated, 4     ; 3 uses
  %i.d = or disjoint i64 %i.c, 8
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #20, !noalias !2434 ; 23 uses
  store i64 %.sroa.speculated, ptr %i.e, align 16, !noalias !2434
  %i.f = add nsw i64 %i.c, -16                    ; 3 uses
  %i.g = lshr exact i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 48
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check138 = icmp ult i64 %i.f, 240
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph

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
  %i.n = insertelement <2 x ptr> poison, ptr %i.l, i64 0
  %i.o = insertelement <2 x ptr> %i.n, ptr %i.m, i64 1
  %i.p = getelementptr inbounds nuw i8, <2 x ptr> %i.o, <2 x i64> <i64 8, i64 24>
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.t = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.u = insertelement <2 x ptr> %i.t, ptr %i.s, i64 1
  %i.v = getelementptr inbounds nuw i8, <2 x ptr> %i.u, <2 x i64> <i64 40, i64 56>
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.y = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.z = insertelement <2 x ptr> %i.y, ptr %i.x, i64 1
  %i.aa = getelementptr inbounds nuw i8, <2 x ptr> %i.z, <2 x i64> <i64 72, i64 88>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %i.ag = getelementptr inbounds nuw i8, <2 x ptr> %i.af, <2 x i64> <i64 104, i64 120>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.aj = insertelement <2 x ptr> poison, ptr %i.ah, i64 0
  %i.ak = insertelement <2 x ptr> %i.aj, ptr %i.ai, i64 1
  %i.al = getelementptr inbounds nuw i8, <2 x ptr> %i.ak, <2 x i64> <i64 136, i64 152>
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ap = insertelement <2 x ptr> poison, ptr %i.an, i64 0
  %i.aq = insertelement <2 x ptr> %i.ap, ptr %i.ao, i64 1
  %i.ar = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 168, i64 184>
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.au = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.av = insertelement <2 x ptr> %i.au, ptr %i.at, i64 1
  %i.aw = getelementptr inbounds nuw i8, <2 x ptr> %i.av, <2 x i64> <i64 200, i64 216>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 200
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.ba = insertelement <2 x ptr> poison, ptr %i.ay, i64 0
  %i.bb = insertelement <2 x ptr> %i.ba, ptr %i.az, i64 1
  %i.bc = getelementptr inbounds nuw i8, <2 x ptr> %i.bb, <2 x i64> <i64 232, i64 248>
  %interleaved.vec = shufflevector <2 x ptr> %i.p, <2 x ptr> %i.v, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec, ptr %i.q, align 8, !tbaa !2390, !noalias !2434
  %interleaved.vec139 = shufflevector <2 x ptr> %i.aa, <2 x ptr> %i.ag, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec139, ptr %i.ab, align 8, !tbaa !2390, !noalias !2434
  %interleaved.vec140 = shufflevector <2 x ptr> %i.al, <2 x ptr> %i.ar, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec140, ptr %i.am, align 8, !tbaa !2390, !noalias !2434
  %interleaved.vec141 = shufflevector <2 x ptr> %i.aw, <2 x ptr> %i.bc, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec141, ptr %i.ax, align 8, !tbaa !2390, !noalias !2434
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !2437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !2398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.h, 2305843009213693948   ; 3 uses
  %i.be = shl i64 %n.vec143, 4
  %i.bf = or disjoint i64 %i.be, 8
end_hunk_1
