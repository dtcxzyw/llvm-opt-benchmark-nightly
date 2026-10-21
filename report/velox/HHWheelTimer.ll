Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HHWheelTimer?download=true
inline.NumInlined: 587
inline.NumDeleted: 257
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv:bb.a
  %i.ac = and i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !151
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2373 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16672 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !199
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !199
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198  ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !198
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit: ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2372 ; 3 uses
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %bb.f, label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit

_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit: ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2373 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !197  ; 2 uses
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
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !151
  %i.ab = and i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !151
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit, %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !202
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !2381, !inline_history !2413
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !2383
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !2384 ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !2384
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !202
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !2382, !inline_history !2413
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
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !151 ; 2 uses
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
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.a, align 8, !tbaa !151 ; 2 uses
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
  store ptr %1, ptr %i.a, align 8, !tbaa !2373
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.b, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC2EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16712) %0, ptr noundef %1, i64 %2, i32 noundef %3, i64 %4) unnamed_addr #2 comdat($_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC5EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_) align 2 personality ptr @__gxx_personality_v0 {
vector.ph:
  tail call void @_ZN5folly12AsyncTimeoutC2EPNS_14TimeoutManagerENS1_12InternalEnumE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.b, align 8, !tbaa !1665
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i8 0, ptr %i.c, align 4, !tbaa !1663
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE, i64 16), ptr %0, align 8, !tbaa !202
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE, i64 56), ptr %i.a, align 8, !tbaa !202
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = udiv i64 -1, %2
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = mul nsw i64 %2, 1000000
  %i.i = udiv i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  store i64 %i.j, ptr %i.g, align 8, !tbaa !153
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %2, ptr %i.k, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %4, ptr %i.l, align 8, !tbaa !151
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl nuw i64 %index, 4                    ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248 ; 2 uses
  %5 = getelementptr i8, ptr %0, i64 %i.m
  %i.p = getelementptr i8, ptr %5, i64 264
  %i.q = getelementptr i8, ptr %0, i64 %i.m
  %i.r = getelementptr i8, ptr %0, i64 %i.m
  %i.s = insertelement <2 x ptr> poison, ptr %i.q, i64 0
  %i.t = insertelement <2 x ptr> %i.s, ptr %i.r, i64 1
  %i.u = getelementptr i8, <2 x ptr> %i.t, <2 x i64> <i64 280, i64 296>
  %6 = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %i.p, i64 1
  %8 = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = getelementptr i8, ptr %0, i64 %i.m
  %10 = getelementptr i8, ptr %9, i64 312         ; 2 uses
  %11 = getelementptr i8, ptr %0, i64 %i.m
  %i.v = getelementptr i8, ptr %11, i64 328
  %i.w = getelementptr i8, ptr %0, i64 %i.m
  %i.x = getelementptr i8, ptr %0, i64 %i.m
  %i.y = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.z = insertelement <2 x ptr> %i.y, ptr %i.x, i64 1
  %i.aa = getelementptr i8, <2 x ptr> %i.z, <2 x i64> <i64 344, i64 360>
  %12 = insertelement <4 x ptr> poison, ptr %10, i64 0
  %13 = insertelement <4 x ptr> %12, ptr %i.v, i64 1
  %14 = shufflevector <2 x ptr> %i.aa, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = getelementptr i8, ptr %0, i64 %i.m
  %16 = getelementptr i8, ptr %15, i64 376        ; 2 uses
  %17 = getelementptr i8, ptr %0, i64 %i.m
  %i.ab = getelementptr i8, ptr %17, i64 392
  %i.ac = getelementptr i8, ptr %0, i64 %i.m
  %i.ad = getelementptr i8, ptr %0, i64 %i.m
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %i.ag = getelementptr i8, <2 x ptr> %i.af, <2 x i64> <i64 408, i64 424>
  %18 = insertelement <4 x ptr> poison, ptr %16, i64 0
  %19 = insertelement <4 x ptr> %18, ptr %i.ab, i64 1
  %20 = shufflevector <2 x ptr> %i.ag, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %21 = getelementptr i8, ptr %0, i64 %i.m
  %22 = getelementptr i8, ptr %21, i64 440        ; 2 uses
  %23 = getelementptr i8, ptr %0, i64 %i.m
  %i.ah = getelementptr i8, ptr %23, i64 456
  %i.ai = getelementptr i8, ptr %0, i64 %i.m
  %i.aj = getelementptr i8, ptr %0, i64 %i.m
  %i.ak = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %i.al = insertelement <2 x ptr> %i.ak, ptr %i.aj, i64 1
  %i.am = getelementptr i8, <2 x ptr> %i.al, <2 x i64> <i64 472, i64 488>
  %24 = insertelement <4 x ptr> poison, ptr %22, i64 0
  %25 = insertelement <4 x ptr> %24, ptr %i.ah, i64 1
  %26 = shufflevector <2 x ptr> %i.am, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x ptr> %7, <4 x ptr> %8, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec, ptr %i.o, align 8, !tbaa !2386
  %interleaved.vec36 = shufflevector <4 x ptr> %13, <4 x ptr> %14, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec36, ptr %10, align 8, !tbaa !2386
  %interleaved.vec37 = shufflevector <4 x ptr> %19, <4 x ptr> %20, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec37, ptr %16, align 8, !tbaa !2386
  %interleaved.vec38 = shufflevector <4 x ptr> %25, <4 x ptr> %26, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec38, ptr %22, align 8, !tbaa !2386
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, 1024
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !2414

middle.block:                                     ; preds = %vector.body
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16664
  store i64 1, ptr %i.ao, align 8, !tbaa !195
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16672
  store i64 0, ptr %i.ap, align 8, !tbaa !199
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16680
  %i.ar = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16688
  store ptr null, ptr %i.as, align 8, !tbaa !193
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16696 ; 3 uses
  store ptr %i.at, ptr %i.at, align 8, !tbaa !197
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16704
  store ptr %i.at, ptr %i.au, align 8, !tbaa !198
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
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
declare void @_ZN5folly18DelayedDestructionD2Ev(ptr noundef nonnull align 8 dead_on_return(13) dereferenceable(13)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5folly12AsyncTimeoutD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define weak_odr noundef i64 @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE9cancelAllEv(ptr noundef nonnull align 8 dereferenceable(16712) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive::list", align 16 ; 21 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %3 = alloca %"class.boost::intrusive::list", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16672 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.ae, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 1024) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.c = shl nuw nsw i64 %.sroa.speculated, 4     ; 3 uses
  %i.d = or disjoint i64 %i.c, 8
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #20, !noalias !2425 ; 23 uses
  store i64 %.sroa.speculated, ptr %i.e, align 16, !noalias !2425
  %i.f = add nsw i64 %i.c, -16                    ; 3 uses
  %i.g = lshr exact i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 48
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check137 = icmp ult i64 %i.f, 240
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 2305843009213693936      ; 4 uses
  %i.j = shl i64 %n.vec, 4
  %i.k = or disjoint i64 %i.j, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl nuw i64 %index, 4                    ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.r = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.s = insertelement <2 x ptr> %i.r, ptr %i.q, i64 1
  %i.t = getelementptr inbounds nuw i8, <2 x ptr> %i.s, <2 x i64> <i64 40, i64 56>
  %5 = insertelement <4 x ptr> poison, ptr %i.n, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %i.o, i64 1
  %7 = shufflevector <2 x ptr> %i.t, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.x = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %i.y = insertelement <2 x ptr> %i.x, ptr %i.w, i64 1
  %i.z = getelementptr inbounds nuw i8, <2 x ptr> %i.y, <2 x i64> <i64 104, i64 120>
  %11 = insertelement <4 x ptr> poison, ptr %9, i64 0
  %12 = insertelement <4 x ptr> %11, ptr %i.u, i64 1
  %13 = shufflevector <2 x ptr> %i.z, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.ad = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.ae = insertelement <2 x ptr> %i.ad, ptr %i.ac, i64 1
  %i.af = getelementptr inbounds nuw i8, <2 x ptr> %i.ae, <2 x i64> <i64 168, i64 184>
  %17 = insertelement <4 x ptr> poison, ptr %15, i64 0
  %18 = insertelement <4 x ptr> %17, ptr %i.aa, i64 1
  %19 = shufflevector <2 x ptr> %i.af, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 200 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.ag = getelementptr inbounds nuw i8, ptr %22, i64 216
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.aj = insertelement <2 x ptr> poison, ptr %i.ah, i64 0
  %i.ak = insertelement <2 x ptr> %i.aj, ptr %i.ai, i64 1
  %i.al = getelementptr inbounds nuw i8, <2 x ptr> %i.ak, <2 x i64> <i64 232, i64 248>
  %23 = insertelement <4 x ptr> poison, ptr %21, i64 0
  %24 = insertelement <4 x ptr> %23, ptr %i.ag, i64 1
  %25 = shufflevector <2 x ptr> %i.al, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x ptr> %6, <4 x ptr> %7, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec, ptr %i.n, align 8, !tbaa !2386, !noalias !2425
  %interleaved.vec138 = shufflevector <4 x ptr> %12, <4 x ptr> %13, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec138, ptr %9, align 8, !tbaa !2386, !noalias !2425
  %interleaved.vec139 = shufflevector <4 x ptr> %18, <4 x ptr> %19, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec139, ptr %15, align 8, !tbaa !2386, !noalias !2425
  %interleaved.vec140 = shufflevector <4 x ptr> %24, <4 x ptr> %25, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec140, ptr %21, align 8, !tbaa !2386, !noalias !2425
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !2389

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec141 = and i64 %i.h, 2305843009213693948   ; 3 uses
  %i.an = shl i64 %n.vec141, 4
  %i.ao = or disjoint i64 %i.an, 8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl nuw i64 %index142, 4                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.av = insertelement <2 x ptr> poison, ptr %i.at, i64 0
  %i.aw = insertelement <2 x ptr> %i.av, ptr %i.au, i64 1
  %i.ax = getelementptr inbounds nuw i8, <2 x ptr> %i.aw, <2 x i64> <i64 40, i64 56>
  %27 = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %28 = insertelement <4 x ptr> %27, ptr %i.as, i64 1
  %29 = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec143 = shufflevector <4 x ptr> %28, <4 x ptr> %29, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec143, ptr %i.ar, align 8, !tbaa !2386, !noalias !2425
  %index.next144 = add nuw i64 %index142, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next144, %n.vec141
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2418

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n145 = icmp eq i64 %i.h, %n.vec141
  br i1 %cmp.n145, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.idx.i.ph = phi i64 [ 8, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i ], [ %.idx.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 4 uses
  store ptr %.ptr.ptr.i, ptr %.ptr.ptr.i, align 8, !tbaa !197, !noalias !2425
  %i.az = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store ptr %.ptr.ptr.i, ptr %i.az, align 8, !tbaa !198, !noalias !2425
  %.add.i = add nuw nsw i64 %.idx.i, 16
  %i.ba = add nuw nsw i64 %.idx.i, 8
  %i.bb = icmp eq i64 %i.ba, %i.c
  br i1 %i.bb, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i, !llvm.loop !2419

_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit: ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.ptr5.i, ptr %2, align 8, !tbaa !2391, !alias.scope !2425
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bd = insertelement <2 x ptr> poison, ptr %1, i64 0
  %i.be = shufflevector <2 x ptr> %i.bd, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not98 = icmp eq i64 %.3.ph, 0
  br i1 %.not98, label %._crit_edge97, label %.lr.ph

_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader: ; preds = %._crit_edge, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit
  %.034.idx95 = phi i64 [ 248, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.034.add, %._crit_edge ] ; 2 uses
  %.03594 = phi i64 [ 0, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.3.ph, %._crit_edge ]
  %.03793 = phi i64 [ 0, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.340.ph, %._crit_edge ]
  %.034.add = add nuw nsw i64 %.034.idx95, 4096   ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.034.add
  %.034.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.034.idx95
  br label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit

_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit: ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader, %select.unfold
  %.03287 = phi ptr [ %i.cw, %select.unfold ], [ %.034.ptr, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader ] ; 18 uses
  %.13686 = phi i64 [ %.2.ph, %select.unfold ], [ %.03594, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader ] ; 3 uses
  %.13885 = phi i64 [ %.239.ph, %select.unfold ], [ %.03793, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader ] ; 2 uses
  %i.bf = load ptr, ptr %.03287, align 8, !tbaa !197 ; 3 uses
  %.not.i = icmp eq ptr %i.bf, null
  %i.bg = icmp eq ptr %i.bf, %.03287
  %i.bh = or i1 %.not.i, %i.bg
  br i1 %i.bh, label %select.unfold, label %.preheader82

.preheader82:                                     ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit, %.preheader82
  %.05.i = phi i64 [ %i.bj, %.preheader82 ], [ 0, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit ] ; 2 uses
  %.0.i = phi ptr [ %i.bi, %.preheader82 ], [ %.03287, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit ]
  %i.bi = load ptr, ptr %.0.i, align 8, !tbaa !197 ; 2 uses
  %i.bj = add i64 %.05.i, 1
  %.not.i50 = icmp eq ptr %i.bi, %.03287
  br i1 %.not.i50, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i, label %.preheader82, !llvm.loop !129

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i: ; preds = %.preheader82
  %i.bk = add i64 %.05.i, %.13885                 ; 3 uses
  %i.bl = add i64 %.13686, 1                      ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.ptr5.i, i64 %.13686 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store <2 x ptr> %i.be, ptr %1, align 16, !tbaa !2386
  %i.bn = getelementptr inbounds nuw i8, ptr %.03287, i64 8 ; 3 uses
  %.pre26.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.pre28.i.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !198
  %.pre29.i.i.i.i = load ptr, ptr %.pre26.i.i.i.i, align 8, !tbaa !197
  store ptr %.pre28.i.i.i.i, ptr %i.bc, align 8, !tbaa !198
  store ptr %1, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !198
  store ptr %.pre29.i.i.i.i, ptr %1, align 16, !tbaa !197
  store ptr %1, ptr %.pre26.i.i.i.i, align 8, !tbaa !197
  %i.bo = load ptr, ptr %1, align 16, !tbaa !197  ; 3 uses
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !198 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %.03287, align 8, !tbaa !2386
  store ptr %i.bo, ptr %.03287, align 8, !tbaa !197
  store <2 x ptr> %i.bq, ptr %1, align 16, !tbaa !2386
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !198
  %i.br = icmp eq ptr %i.bm, %.03287
  %.pre28.i = load ptr, ptr %i.bm, align 8, !tbaa !197 ; 4 uses
  br i1 %i.br, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %.not.i24.i.i.i.i = icmp eq ptr %i.bo, null     ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %.pre28.i, null  ; 2 uses
  br i1 %.not.i24.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %.03287, ptr %.03287, align 8, !tbaa !197
  store ptr %.03287, ptr %i.bn, align 8, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = phi ptr [ %.03287, %bb.c ], [ %i.bp, %bb.b ] ; 2 uses
  %.pre.i.i.i11.i = phi ptr [ %.03287, %bb.c ], [ %i.bo, %bb.b ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.e, label %._crit_edge.i.i.i6.i

._crit_edge.i.i.i6.i:                             ; preds = %bb.d
  %.pre26.i.i.i7.i = load ptr, ptr %i.bs, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert27.i.i.i8.i = getelementptr inbounds nuw i8, ptr %.pre28.i, i64 8
  %.pre28.i.i.i9.i = load ptr, ptr %.phi.trans.insert27.i.i.i8.i, align 8, !tbaa !198
  %.pre29.i.i.i10.i = load ptr, ptr %.pre26.i.i.i7.i, align 8, !tbaa !197
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.bm, ptr %i.bm, align 8, !tbaa !197
  store ptr %i.bm, ptr %i.bs, align 8, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i6.i
  %i.bt = phi ptr [ %i.bm, %bb.e ], [ %.pre29.i.i.i10.i, %._crit_edge.i.i.i6.i ]
  %i.bu = phi ptr [ %i.bm, %bb.e ], [ %.pre28.i.i.i9.i, %._crit_edge.i.i.i6.i ]
  %i.bv = phi ptr [ %i.bm, %bb.e ], [ %.pre26.i.i.i7.i, %._crit_edge.i.i.i6.i ]
  %i.bw = phi ptr [ %i.bm, %bb.e ], [ %.pre28.i, %._crit_edge.i.i.i6.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i11.i, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !198
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !198
  %i.ca = load ptr, ptr %.pre.i, align 8, !tbaa !197
  store ptr %i.bt, ptr %.pre.i, align 8, !tbaa !197
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !197
  %i.cb = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !2386
  %i.cc = load <2 x ptr>, ptr %.03287, align 8, !tbaa !2386
  %i.cd = load ptr, ptr %.03287, align 8, !tbaa !197
  store <2 x ptr> %i.cb, ptr %.03287, align 8, !tbaa !2386
  store <2 x ptr> %i.cc, ptr %i.bm, align 8, !tbaa !2386
  br i1 %.not.i24.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre27.i = phi ptr [ null, %bb.g ], [ %i.cd, %bb.f ] ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03287, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i: ; preds = %bb.i, %bb.h, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %i.ce = phi ptr [ %.pre27.i, %bb.i ], [ %.pre27.i, %bb.h ], [ %.pre28.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i ] ; 2 uses
  %.not.i24.i.i.i12.i = icmp eq ptr %i.ce, null   ; 2 uses
  %i.cf = load ptr, ptr %1, align 16, !tbaa !197  ; 3 uses
  %.not.i.i.i.i13.i = icmp eq ptr %i.cf, null     ; 2 uses
  br i1 %.not.i24.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i
  store ptr %i.bm, ptr %i.bm, align 8, !tbaa !197
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bm, ptr %i.cg, align 8, !tbaa !198
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i
  %.pre.i.i.i20.i = phi ptr [ %i.bm, %bb.j ], [ %i.ce, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i ]
  br i1 %.not.i.i.i.i13.i, label %bb.l, label %._crit_edge.i.i.i14.i

._crit_edge.i.i.i14.i:                            ; preds = %bb.k
  %.pre26.i.i.i16.i = load ptr, ptr %i.bc, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert27.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre28.i.i.i18.i = load ptr, ptr %.phi.trans.insert27.i.i.i17.i, align 8, !tbaa !198
  %.pre29.i.i.i19.i = load ptr, ptr %.pre26.i.i.i16.i, align 8, !tbaa !197
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store <2 x ptr> %i.be, ptr %1, align 16, !tbaa !2386
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i14.i
  %i.ch = phi ptr [ %1, %bb.l ], [ %.pre29.i.i.i19.i, %._crit_edge.i.i.i14.i ]
  %i.ci = phi ptr [ %1, %bb.l ], [ %.pre28.i.i.i18.i, %._crit_edge.i.i.i14.i ]
  %i.cj = phi ptr [ %1, %bb.l ], [ %.pre26.i.i.i16.i, %._crit_edge.i.i.i14.i ]
  %i.ck = phi ptr [ %1, %bb.l ], [ %i.cf, %._crit_edge.i.i.i14.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !198 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i20.i, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !198
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !198
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !198
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !197
  store ptr %i.ch, ptr %i.cm, align 8, !tbaa !197
  store ptr %i.cq, ptr %i.cj, align 8, !tbaa !197
  %i.cr = load ptr, ptr %i.bm, align 8, !tbaa !197 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %1, align 16, !tbaa !2386
  store ptr %i.cr, ptr %1, align 16, !tbaa !197
  store <2 x ptr> %i.cs, ptr %i.bm, align 8, !tbaa !2386
  br i1 %.not.i24.i.i.i12.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.o

end_hunk_0
begin_hunk_1_@_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198  ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !197
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !198
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i: ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2395 ; 3 uses
  %.not.i = icmp eq i32 %i.n, -1
  br i1 %.not.i, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !2396 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !197  ; 2 uses
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
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !151
  %i.ac = and i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !151
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2396 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16672 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1677
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !1677
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198  ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !198
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit: ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2395 ; 3 uses
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2396 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.p = sext i32 %i.m to i64                     ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !197  ; 2 uses
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
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !151
  %i.ab = and i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !151
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
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !151 ; 2 uses
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
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.a, align 8, !tbaa !151 ; 2 uses
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
  store ptr %1, ptr %i.a, align 8, !tbaa !2396
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.b, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEC2EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16712) %0, ptr noundef %1, i64 %2, i32 noundef %3, i64 %4) unnamed_addr #2 comdat($_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEC5EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_) align 2 personality ptr @__gxx_personality_v0 {
vector.ph:
  tail call void @_ZN5folly12AsyncTimeoutC2EPNS_14TimeoutManagerENS1_12InternalEnumE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.b, align 8, !tbaa !1665
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i8 0, ptr %i.c, align 4, !tbaa !1663
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE, i64 16), ptr %0, align 8, !tbaa !202
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE, i64 56), ptr %i.a, align 8, !tbaa !202
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = udiv i64 -1, %2
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !1667
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = mul nsw i64 %2, 1000
  %i.i = udiv i64 -1, %i.h
  %i.j = add nuw nsw i64 %i.i, 1
  store i64 %i.j, ptr %i.g, align 8, !tbaa !1667
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %2, ptr %i.k, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %4, ptr %i.l, align 8, !tbaa !151
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl nuw i64 %index, 4                    ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248 ; 2 uses
  %5 = getelementptr i8, ptr %0, i64 %i.m
  %i.p = getelementptr i8, ptr %5, i64 264
  %i.q = getelementptr i8, ptr %0, i64 %i.m
  %i.r = getelementptr i8, ptr %0, i64 %i.m
  %i.s = insertelement <2 x ptr> poison, ptr %i.q, i64 0
  %i.t = insertelement <2 x ptr> %i.s, ptr %i.r, i64 1
  %i.u = getelementptr i8, <2 x ptr> %i.t, <2 x i64> <i64 280, i64 296>
  %6 = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %i.p, i64 1
  %8 = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = getelementptr i8, ptr %0, i64 %i.m
  %10 = getelementptr i8, ptr %9, i64 312         ; 2 uses
  %11 = getelementptr i8, ptr %0, i64 %i.m
  %i.v = getelementptr i8, ptr %11, i64 328
  %i.w = getelementptr i8, ptr %0, i64 %i.m
  %i.x = getelementptr i8, ptr %0, i64 %i.m
  %i.y = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.z = insertelement <2 x ptr> %i.y, ptr %i.x, i64 1
  %i.aa = getelementptr i8, <2 x ptr> %i.z, <2 x i64> <i64 344, i64 360>
  %12 = insertelement <4 x ptr> poison, ptr %10, i64 0
  %13 = insertelement <4 x ptr> %12, ptr %i.v, i64 1
  %14 = shufflevector <2 x ptr> %i.aa, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = getelementptr i8, ptr %0, i64 %i.m
  %16 = getelementptr i8, ptr %15, i64 376        ; 2 uses
  %17 = getelementptr i8, ptr %0, i64 %i.m
  %i.ab = getelementptr i8, ptr %17, i64 392
  %i.ac = getelementptr i8, ptr %0, i64 %i.m
  %i.ad = getelementptr i8, ptr %0, i64 %i.m
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %i.ag = getelementptr i8, <2 x ptr> %i.af, <2 x i64> <i64 408, i64 424>
  %18 = insertelement <4 x ptr> poison, ptr %16, i64 0
  %19 = insertelement <4 x ptr> %18, ptr %i.ab, i64 1
  %20 = shufflevector <2 x ptr> %i.ag, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %21 = getelementptr i8, ptr %0, i64 %i.m
  %22 = getelementptr i8, ptr %21, i64 440        ; 2 uses
  %23 = getelementptr i8, ptr %0, i64 %i.m
  %i.ah = getelementptr i8, ptr %23, i64 456
  %i.ai = getelementptr i8, ptr %0, i64 %i.m
  %i.aj = getelementptr i8, ptr %0, i64 %i.m
  %i.ak = insertelement <2 x ptr> poison, ptr %i.ai, i64 0
  %i.al = insertelement <2 x ptr> %i.ak, ptr %i.aj, i64 1
  %i.am = getelementptr i8, <2 x ptr> %i.al, <2 x i64> <i64 472, i64 488>
  %24 = insertelement <4 x ptr> poison, ptr %22, i64 0
  %25 = insertelement <4 x ptr> %24, ptr %i.ah, i64 1
  %26 = shufflevector <2 x ptr> %i.am, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x ptr> %7, <4 x ptr> %8, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec, ptr %i.o, align 8, !tbaa !2386
  %interleaved.vec36 = shufflevector <4 x ptr> %13, <4 x ptr> %14, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec36, ptr %10, align 8, !tbaa !2386
  %interleaved.vec37 = shufflevector <4 x ptr> %19, <4 x ptr> %20, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec37, ptr %16, align 8, !tbaa !2386
  %interleaved.vec38 = shufflevector <4 x ptr> %25, <4 x ptr> %26, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec38, ptr %22, align 8, !tbaa !2386
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, 1024
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !2440

middle.block:                                     ; preds = %vector.body
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16664
  store i64 1, ptr %i.ao, align 8, !tbaa !1676
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16672
  store i64 0, ptr %i.ap, align 8, !tbaa !1677
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16680
  %i.ar = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #17
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16688
  store ptr null, ptr %i.as, align 8, !tbaa !1675
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16696 ; 3 uses
  store ptr %i.at, ptr %i.at, align 8, !tbaa !197
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16704
  store ptr %i.at, ptr %i.au, align 8, !tbaa !198
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
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
  %1 = alloca %"class.boost::intrusive::list.12", align 16 ; 21 uses
  %2 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %3 = alloca %"class.boost::intrusive::list.12", align 16 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16672 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1677 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.ag, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 1024) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  %i.c = shl nuw nsw i64 %.sroa.speculated, 4     ; 3 uses
  %i.d = or disjoint i64 %i.c, 8
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #20, !noalias !2451 ; 23 uses
  store i64 %.sroa.speculated, ptr %i.e, align 16, !noalias !2451
  %i.f = add nsw i64 %i.c, -16                    ; 3 uses
  %i.g = lshr exact i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 48
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check137 = icmp ult i64 %i.f, 240
  br i1 %min.iters.check137, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 2305843009213693936      ; 4 uses
  %i.j = shl i64 %n.vec, 4
  %i.k = or disjoint i64 %i.j, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl nuw i64 %index, 4                    ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.r = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.s = insertelement <2 x ptr> %i.r, ptr %i.q, i64 1
  %i.t = getelementptr inbounds nuw i8, <2 x ptr> %i.s, <2 x i64> <i64 40, i64 56>
  %5 = insertelement <4 x ptr> poison, ptr %i.n, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %i.o, i64 1
  %7 = shufflevector <2 x ptr> %i.t, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.x = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %i.y = insertelement <2 x ptr> %i.x, ptr %i.w, i64 1
  %i.z = getelementptr inbounds nuw i8, <2 x ptr> %i.y, <2 x i64> <i64 104, i64 120>
  %11 = insertelement <4 x ptr> poison, ptr %9, i64 0
  %12 = insertelement <4 x ptr> %11, ptr %i.u, i64 1
  %13 = shufflevector <2 x ptr> %i.z, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.ad = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.ae = insertelement <2 x ptr> %i.ad, ptr %i.ac, i64 1
  %i.af = getelementptr inbounds nuw i8, <2 x ptr> %i.ae, <2 x i64> <i64 168, i64 184>
  %17 = insertelement <4 x ptr> poison, ptr %15, i64 0
  %18 = insertelement <4 x ptr> %17, ptr %i.aa, i64 1
  %19 = shufflevector <2 x ptr> %i.af, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 200 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.ag = getelementptr inbounds nuw i8, ptr %22, i64 216
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.aj = insertelement <2 x ptr> poison, ptr %i.ah, i64 0
  %i.ak = insertelement <2 x ptr> %i.aj, ptr %i.ai, i64 1
  %i.al = getelementptr inbounds nuw i8, <2 x ptr> %i.ak, <2 x i64> <i64 232, i64 248>
  %23 = insertelement <4 x ptr> poison, ptr %21, i64 0
  %24 = insertelement <4 x ptr> %23, ptr %i.ag, i64 1
  %25 = shufflevector <2 x ptr> %i.al, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x ptr> %6, <4 x ptr> %7, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec, ptr %i.n, align 8, !tbaa !2386, !noalias !2451
  %interleaved.vec138 = shufflevector <4 x ptr> %12, <4 x ptr> %13, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec138, ptr %9, align 8, !tbaa !2386, !noalias !2451
  %interleaved.vec139 = shufflevector <4 x ptr> %18, <4 x ptr> %19, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec139, ptr %15, align 8, !tbaa !2386, !noalias !2451
  %interleaved.vec140 = shufflevector <4 x ptr> %24, <4 x ptr> %25, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec140, ptr %21, align 8, !tbaa !2386, !noalias !2451
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2443

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !2389

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec141 = and i64 %i.h, 2305843009213693948   ; 3 uses
  %i.an = shl i64 %n.vec141, 4
  %i.ao = or disjoint i64 %i.an, 8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl nuw i64 %index142, 4                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ap
  %i.av = insertelement <2 x ptr> poison, ptr %i.at, i64 0
  %i.aw = insertelement <2 x ptr> %i.av, ptr %i.au, i64 1
  %i.ax = getelementptr inbounds nuw i8, <2 x ptr> %i.aw, <2 x i64> <i64 40, i64 56>
  %27 = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %28 = insertelement <4 x ptr> %27, ptr %i.as, i64 1
  %29 = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec143 = shufflevector <4 x ptr> %28, <4 x ptr> %29, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  store <8 x ptr> %interleaved.vec143, ptr %i.ar, align 8, !tbaa !2386, !noalias !2451
  %index.next144 = add nuw i64 %index142, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next144, %n.vec141
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2444

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n145 = icmp eq i64 %i.h, %n.vec141
  br i1 %cmp.n145, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.idx.i.ph = phi i64 [ 8, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i ], [ %.idx.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 4 uses
  store ptr %.ptr.ptr.i, ptr %.ptr.ptr.i, align 8, !tbaa !197, !noalias !2451
  %i.az = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store ptr %.ptr.ptr.i, ptr %i.az, align 8, !tbaa !198, !noalias !2451
  %.add.i = add nuw nsw i64 %.idx.i, 16
  %i.ba = add nuw nsw i64 %.idx.i, 8
  %i.bb = icmp eq i64 %i.ba, %i.c
  br i1 %i.bb, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i, !llvm.loop !2445

_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit: ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.ptr5.i, ptr %2, align 8, !tbaa !2398, !alias.scope !2451
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bd = insertelement <2 x ptr> poison, ptr %1, i64 0
  %i.be = shufflevector <2 x ptr> %i.bd, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not98 = icmp eq i64 %.3.ph, 0
  br i1 %.not98, label %._crit_edge97, label %.lr.ph96

.lr.ph.preheader:                                 ; preds = %._crit_edge, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit
  %.034.idx94 = phi i64 [ 248, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.034.add, %._crit_edge ] ; 2 uses
  %.03593 = phi i64 [ 0, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.3.ph, %._crit_edge ]
  %.03792 = phi i64 [ 0, %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit ], [ %.340.ph, %._crit_edge ]
  %.034.add = add nuw nsw i64 %.034.idx94, 4096   ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.034.add
  %.034.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.034.idx94
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.03286 = phi ptr [ %i.cw, %select.unfold ], [ %.034.ptr, %.lr.ph.preheader ] ; 18 uses
  %.13685 = phi i64 [ %.2.ph, %select.unfold ], [ %.03593, %.lr.ph.preheader ] ; 3 uses
  %.13884 = phi i64 [ %.239.ph, %select.unfold ], [ %.03792, %.lr.ph.preheader ] ; 2 uses
  %i.bf = load ptr, ptr %.03286, align 8, !tbaa !197 ; 3 uses
  %.not.i = icmp eq ptr %i.bf, null
  %i.bg = icmp eq ptr %i.bf, %.03286
  %i.bh = or i1 %.not.i, %i.bg
  br i1 %i.bh, label %select.unfold, label %.preheader81

.preheader81:                                     ; preds = %.lr.ph, %.preheader81
  %.05.i = phi i64 [ %i.bj, %.preheader81 ], [ 0, %.lr.ph ] ; 2 uses
  %.0.i = phi ptr [ %i.bi, %.preheader81 ], [ %.03286, %.lr.ph ]
  %i.bi = load ptr, ptr %.0.i, align 8, !tbaa !197 ; 2 uses
  %i.bj = add i64 %.05.i, 1
  %.not.i50 = icmp eq ptr %i.bi, %.03286
  br i1 %.not.i50, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i, label %.preheader81, !llvm.loop !129

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i: ; preds = %.preheader81
  %i.bk = add i64 %.05.i, %.13884                 ; 3 uses
  %i.bl = add i64 %.13685, 1                      ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.ptr5.i, i64 %.13685 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store <2 x ptr> %i.be, ptr %1, align 16, !tbaa !2386
  %i.bn = getelementptr inbounds nuw i8, ptr %.03286, i64 8 ; 3 uses
  %.pre26.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.pre28.i.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !198
  %.pre29.i.i.i.i = load ptr, ptr %.pre26.i.i.i.i, align 8, !tbaa !197
  store ptr %.pre28.i.i.i.i, ptr %i.bc, align 8, !tbaa !198
  store ptr %1, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !198
  store ptr %.pre29.i.i.i.i, ptr %1, align 16, !tbaa !197
  store ptr %1, ptr %.pre26.i.i.i.i, align 8, !tbaa !197
  %i.bo = load ptr, ptr %1, align 16, !tbaa !197  ; 3 uses
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !198 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %.03286, align 8, !tbaa !2386
  store ptr %i.bo, ptr %.03286, align 8, !tbaa !197
  store <2 x ptr> %i.bq, ptr %1, align 16, !tbaa !2386
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !198
  %i.br = icmp eq ptr %i.bm, %.03286
  %.pre28.i = load ptr, ptr %i.bm, align 8, !tbaa !197 ; 4 uses
  br i1 %i.br, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %.not.i24.i.i.i.i = icmp eq ptr %i.bo, null     ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %.pre28.i, null  ; 2 uses
  br i1 %.not.i24.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %.03286, ptr %.03286, align 8, !tbaa !197
  store ptr %.03286, ptr %i.bn, align 8, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = phi ptr [ %.03286, %bb.c ], [ %i.bp, %bb.b ] ; 2 uses
  %.pre.i.i.i11.i = phi ptr [ %.03286, %bb.c ], [ %i.bo, %bb.b ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.e, label %._crit_edge.i.i.i6.i

._crit_edge.i.i.i6.i:                             ; preds = %bb.d
  %.pre26.i.i.i7.i = load ptr, ptr %i.bs, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert27.i.i.i8.i = getelementptr inbounds nuw i8, ptr %.pre28.i, i64 8
  %.pre28.i.i.i9.i = load ptr, ptr %.phi.trans.insert27.i.i.i8.i, align 8, !tbaa !198
  %.pre29.i.i.i10.i = load ptr, ptr %.pre26.i.i.i7.i, align 8, !tbaa !197
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.bm, ptr %i.bm, align 8, !tbaa !197
  store ptr %i.bm, ptr %i.bs, align 8, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i6.i
  %i.bt = phi ptr [ %i.bm, %bb.e ], [ %.pre29.i.i.i10.i, %._crit_edge.i.i.i6.i ]
  %i.bu = phi ptr [ %i.bm, %bb.e ], [ %.pre28.i.i.i9.i, %._crit_edge.i.i.i6.i ]
  %i.bv = phi ptr [ %i.bm, %bb.e ], [ %.pre26.i.i.i7.i, %._crit_edge.i.i.i6.i ]
  %i.bw = phi ptr [ %i.bm, %bb.e ], [ %.pre28.i, %._crit_edge.i.i.i6.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i11.i, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !198
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !198
  %i.ca = load ptr, ptr %.pre.i, align 8, !tbaa !197
  store ptr %i.bt, ptr %.pre.i, align 8, !tbaa !197
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !197
  %i.cb = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !2386
  %i.cc = load <2 x ptr>, ptr %.03286, align 8, !tbaa !2386
  %i.cd = load ptr, ptr %.03286, align 8, !tbaa !197
  store <2 x ptr> %i.cb, ptr %.03286, align 8, !tbaa !2386
  store <2 x ptr> %i.cc, ptr %i.bm, align 8, !tbaa !2386
  br i1 %.not.i24.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre27.i = phi ptr [ null, %bb.g ], [ %i.cd, %bb.f ] ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03286, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i: ; preds = %bb.i, %bb.h, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %i.ce = phi ptr [ %.pre27.i, %bb.i ], [ %.pre27.i, %bb.h ], [ %.pre28.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i ] ; 2 uses
  %.not.i24.i.i.i12.i = icmp eq ptr %i.ce, null   ; 2 uses
  %i.cf = load ptr, ptr %1, align 16, !tbaa !197  ; 3 uses
  %.not.i.i.i.i13.i = icmp eq ptr %i.cf, null     ; 2 uses
  br i1 %.not.i24.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i
  store ptr %i.bm, ptr %i.bm, align 8, !tbaa !197
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bm, ptr %i.cg, align 8, !tbaa !198
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i
  %.pre.i.i.i20.i = phi ptr [ %i.bm, %bb.j ], [ %i.ce, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i ]
  br i1 %.not.i.i.i.i13.i, label %bb.l, label %._crit_edge.i.i.i14.i

._crit_edge.i.i.i14.i:                            ; preds = %bb.k
  %.pre26.i.i.i16.i = load ptr, ptr %i.bc, align 8, !tbaa !198 ; 2 uses
  %.phi.trans.insert27.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre28.i.i.i18.i = load ptr, ptr %.phi.trans.insert27.i.i.i17.i, align 8, !tbaa !198
  %.pre29.i.i.i19.i = load ptr, ptr %.pre26.i.i.i16.i, align 8, !tbaa !197
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store <2 x ptr> %i.be, ptr %1, align 16, !tbaa !2386
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i14.i
  %i.ch = phi ptr [ %1, %bb.l ], [ %.pre29.i.i.i19.i, %._crit_edge.i.i.i14.i ]
  %i.ci = phi ptr [ %1, %bb.l ], [ %.pre28.i.i.i18.i, %._crit_edge.i.i.i14.i ]
  %i.cj = phi ptr [ %1, %bb.l ], [ %.pre26.i.i.i16.i, %._crit_edge.i.i.i14.i ]
  %i.ck = phi ptr [ %1, %bb.l ], [ %i.cf, %._crit_edge.i.i.i14.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !198 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i20.i, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !198
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ci, ptr %i.cn, align 8, !tbaa !198
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !198
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !197
  store ptr %i.ch, ptr %i.cm, align 8, !tbaa !197
  store ptr %i.cq, ptr %i.cj, align 8, !tbaa !197
  %i.cr = load ptr, ptr %i.bm, align 8, !tbaa !197 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %1, align 16, !tbaa !2386
  store ptr %i.cr, ptr %1, align 16, !tbaa !197
  store <2 x ptr> %i.cs, ptr %i.bm, align 8, !tbaa !2386
  br i1 %.not.i24.i.i.i12.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.o

end_hunk_1
