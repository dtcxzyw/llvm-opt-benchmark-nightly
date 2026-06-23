inline.NumInlined: 587
inline.NumDeleted: 257
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a

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
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
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
  br i1 %cmp.n, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !2398

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.h, 2305843009213693948   ; 3 uses
  %i.be = shl i64 %n.vec143, 4
  %i.bf = or disjoint i64 %i.be, 8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index144, 4                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bg
  %i.bj = insertelement <2 x ptr> poison, ptr %i.bh, i64 0
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %i.bi, i64 1
  %i.bl = getelementptr inbounds nuw i8, <2 x ptr> %i.bk, <2 x i64> <i64 8, i64 24>
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bg
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bg
  %i.bp = insertelement <2 x ptr> poison, ptr %i.bn, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.bo, i64 1
  %i.br = getelementptr inbounds nuw i8, <2 x ptr> %i.bq, <2 x i64> <i64 40, i64 56>
  %interleaved.vec145 = shufflevector <2 x ptr> %i.bl, <2 x ptr> %i.br, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec145, ptr %i.bm, align 8, !tbaa !2390, !noalias !2394
  %index.next146 = add nuw i64 %index144, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next146, %n.vec143
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n147 = icmp eq i64 %i.h, %n.vec143
  br i1 %cmp.n147, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.idx.i.ph = phi i64 [ 8, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i ], [ %.idx.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 4 uses
  store ptr %.ptr.ptr.i, ptr %.ptr.ptr.i, align 8, !tbaa !59, !noalias !2394
  %i.bt = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store ptr %.ptr.ptr.i, ptr %i.bt, align 8, !tbaa !60, !noalias !2394
  %.add.i = add nuw nsw i64 %.idx.i, 16
  %i.bu = add nuw nsw i64 %.idx.i, 8
  %i.bv = icmp eq i64 %i.bu, %i.c
  br i1 %i.bv, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i, !llvm.loop !2400

_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit: ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.ptr5.i, ptr %2, align 8, !tbaa !2401, !alias.scope !2394
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
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
  %.03885 = phi ptr [ %i.do, %select.unfold ], [ %.039.ptr, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader ] ; 18 uses
  %i.bx = load ptr, ptr %.03885, align 8, !tbaa !59 ; 3 uses
  %.not.i = icmp eq ptr %i.bx, null
  %i.by = icmp eq ptr %i.bx, %.03885
  %i.bz = or i1 %.not.i, %i.by
  br i1 %i.bz, label %select.unfold, label %.preheader82

.preheader82:                                     ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit, %.preheader82
  %.05.i = phi i64 [ %i.cb, %.preheader82 ], [ 0, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit ] ; 2 uses
  %.0.i = phi ptr [ %i.ca, %.preheader82 ], [ %.03885, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit ]
  %i.ca = load ptr, ptr %.0.i, align 8, !tbaa !59 ; 2 uses
  %i.cb = add i64 %.05.i, 1
  %.not.i50 = icmp eq ptr %i.ca, %.03885
  br i1 %.not.i50, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i, label %.preheader82, !llvm.loop !2403

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i: ; preds = %.preheader82
  %i.cc = add i64 %.05.i, %.13388                 ; 3 uses
  %i.cd = add i64 %.13587, 1                      ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.ptr5.i, i64 %.13587 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %1, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %i.bw, align 8, !tbaa !60
  %i.cf = getelementptr inbounds nuw i8, ptr %.03885, i64 8 ; 3 uses
  %.pre26.i.i.i.i = load ptr, ptr %i.cf, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.pre28.i.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !60
  %.pre29.i.i.i.i = load ptr, ptr %.pre26.i.i.i.i, align 8, !tbaa !59
  store ptr %.pre28.i.i.i.i, ptr %i.bw, align 8, !tbaa !60
  store ptr %1, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !60
  store ptr %.pre29.i.i.i.i, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %.pre26.i.i.i.i, align 8, !tbaa !59
  %i.cg = load ptr, ptr %1, align 16, !tbaa !59   ; 3 uses
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %.03885, align 8, !tbaa !2390
  store ptr %i.cg, ptr %.03885, align 8, !tbaa !59
  store <2 x ptr> %i.ci, ptr %1, align 16, !tbaa !2390
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !60
  %i.cj = icmp eq ptr %i.ce, %.03885
  %.pre28.i = load ptr, ptr %i.ce, align 8, !tbaa !59 ; 4 uses
  br i1 %i.cj, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %.not.i24.i.i.i.i = icmp eq ptr %i.cg, null     ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %.pre28.i, null  ; 2 uses
  br i1 %.not.i24.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %.03885, ptr %.03885, align 8, !tbaa !59
  store ptr %.03885, ptr %i.cf, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = phi ptr [ %.03885, %bb.c ], [ %i.ch, %bb.b ] ; 2 uses
  %.pre.i.i.i11.i = phi ptr [ %.03885, %bb.c ], [ %i.cg, %bb.b ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.e, label %._crit_edge.i.i.i6.i

._crit_edge.i.i.i6.i:                             ; preds = %bb.d
  %.pre26.i.i.i7.i = load ptr, ptr %i.ck, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i8.i = getelementptr inbounds nuw i8, ptr %.pre28.i, i64 8
  %.pre28.i.i.i9.i = load ptr, ptr %.phi.trans.insert27.i.i.i8.i, align 8, !tbaa !60
  %.pre29.i.i.i10.i = load ptr, ptr %.pre26.i.i.i7.i, align 8, !tbaa !59
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.ce, ptr %i.ce, align 8, !tbaa !59
  store ptr %i.ce, ptr %i.ck, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i6.i
  %i.cl = phi ptr [ %i.ce, %bb.e ], [ %.pre29.i.i.i10.i, %._crit_edge.i.i.i6.i ]
  %i.cm = phi ptr [ %i.ce, %bb.e ], [ %.pre28.i.i.i9.i, %._crit_edge.i.i.i6.i ]
  %i.cn = phi ptr [ %i.ce, %bb.e ], [ %.pre26.i.i.i7.i, %._crit_edge.i.i.i6.i ]
  %i.co = phi ptr [ %i.ce, %bb.e ], [ %.pre28.i, %._crit_edge.i.i.i6.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i.i.i11.i, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !60
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !60
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !60
  %i.cs = load ptr, ptr %.pre.i, align 8, !tbaa !59
  store ptr %i.cl, ptr %.pre.i, align 8, !tbaa !59
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !59
  %i.ct = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !2390
  %i.cu = load <2 x ptr>, ptr %.03885, align 8, !tbaa !2390
  %i.cv = load ptr, ptr %.03885, align 8, !tbaa !59
  store <2 x ptr> %i.ct, ptr %.03885, align 8, !tbaa !2390
  store <2 x ptr> %i.cu, ptr %i.ce, align 8, !tbaa !2390
  br i1 %.not.i24.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre27.i = phi ptr [ null, %bb.g ], [ %i.cv, %bb.f ] ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03885, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i: ; preds = %bb.i, %bb.h, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %i.cw = phi ptr [ %.pre27.i, %bb.i ], [ %.pre27.i, %bb.h ], [ %.pre28.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i ] ; 2 uses
  %.not.i24.i.i.i12.i = icmp eq ptr %i.cw, null   ; 2 uses
  %i.cx = load ptr, ptr %1, align 16, !tbaa !59   ; 3 uses
  %.not.i.i.i.i13.i = icmp eq ptr %i.cx, null     ; 2 uses
  br i1 %.not.i24.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i
  store ptr %i.ce, ptr %i.ce, align 8, !tbaa !59
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.ce, ptr %i.cy, align 8, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i
  %.pre.i.i.i20.i = phi ptr [ %i.ce, %bb.j ], [ %i.cw, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i ]
  br i1 %.not.i.i.i.i13.i, label %bb.l, label %._crit_edge.i.i.i14.i

._crit_edge.i.i.i14.i:                            ; preds = %bb.k
  %.pre26.i.i.i16.i = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre28.i.i.i18.i = load ptr, ptr %.phi.trans.insert27.i.i.i17.i, align 8, !tbaa !60
  %.pre29.i.i.i19.i = load ptr, ptr %.pre26.i.i.i16.i, align 8, !tbaa !59
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %i.bw, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i14.i
  %i.cz = phi ptr [ %1, %bb.l ], [ %.pre29.i.i.i19.i, %._crit_edge.i.i.i14.i ]
  %i.da = phi ptr [ %1, %bb.l ], [ %.pre28.i.i.i18.i, %._crit_edge.i.i.i14.i ]
  %i.db = phi ptr [ %1, %bb.l ], [ %.pre26.i.i.i16.i, %._crit_edge.i.i.i14.i ]
  %i.dc = phi ptr [ %1, %bb.l ], [ %i.cx, %._crit_edge.i.i.i14.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !60 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.pre.i.i.i20.i, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.da, ptr %i.df, align 8, !tbaa !60
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !60
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !59
  store ptr %i.cz, ptr %i.de, align 8, !tbaa !59
  store ptr %i.di, ptr %i.db, align 8, !tbaa !59
  %i.dj = load ptr, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %1, align 16, !tbaa !2390
  store ptr %i.dj, ptr %1, align 16, !tbaa !59
  store <2 x ptr> %i.dk, ptr %i.ce, align 8, !tbaa !2390
  br i1 %.not.i24.i.i.i12.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dl = phi ptr [ null, %bb.n ], [ %i.dj, %bb.m ] ; 2 uses
  br i1 %.not.i.i.i.i13.i, label %bb.p, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i: ; preds = %bb.p, %bb.o
  %.not12.i.i.i.i = icmp eq ptr %i.dl, %1
  br i1 %.not12.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i, %.lr.ph.i.i.i.i
  %.sroa.06.013.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dl, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i ] ; 2 uses
  %i.dm = load ptr, ptr %.sroa.06.013.i.i.i.i, align 8, !tbaa !59 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.dm, %1
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !2404

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !62
  %.not49 = icmp ult i64 %i.cc, %i.dn
  br i1 %.not49, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %.loopexit, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit
  %.236.ph = phi i64 [ %.13587, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit ], [ %i.cd, %.loopexit ] ; 2 uses
  %.2.ph = phi i64 [ %.13388, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit ], [ %i.cc, %.loopexit ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.03885, i64 16 ; 2 uses
  %.not46 = icmp eq ptr %i.do, %.ptr
  br i1 %.not46, label %._crit_edge, label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit

._crit_edge:                                      ; preds = %select.unfold, %.loopexit
  %.337.ph = phi i64 [ %.236.ph, %select.unfold ], [ %i.cd, %.loopexit ] ; 3 uses
  %.3.ph = phi i64 [ %.2.ph, %select.unfold ], [ %i.cc, %.loopexit ] ; 3 uses
  %.not43 = icmp eq i64 %.039.add, 16632
  br i1 %.not43, label %.preheader, label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.preheader

.lr.ph:                                           ; preds = %.preheader, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit
  %.096 = phi i64 [ %i.fd, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit ], [ 0, %.preheader ] ; 2 uses
  %4 = load ptr, ptr %2, align 8, !tbaa !2401
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.096 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59 ; 3 uses
  %.not.i5.i = icmp eq ptr %i.dq, null
  %i.dr = icmp eq ptr %i.dq, %i.dp
  %i.ds = or i1 %.not.i5.i, %i.dr
  br i1 %i.ds, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i
  %i.dt = phi ptr [ %i.fa, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i ], [ %i.dq, %.lr.ph ] ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2376 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16672 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !62
  %i.ea = add i64 %i.dz, -1                       ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !62
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.r, label %.noexc

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.dw)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.r, %bb.q
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i51, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !60 ; 2 uses
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !59
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i: ; preds = %bb.s, %.noexc
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !2370 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.eh, -1
  br i1 %.not.i.i.i, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i, label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i.i.i

_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i.i.i: ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i
  %i.ei = load ptr, ptr %i.dv, align 8, !tbaa !2376 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 248
  %i.ek = sext i32 %i.eh to i64                   ; 2 uses
  %i.el = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !59 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.em, null
  %i.en = icmp eq ptr %i.em, %i.el
  %i.eo = or i1 %.not.i1.i.i.i, %i.en
  br i1 %i.eo, label %bb.t, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i

bb.t:                                             ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 16632
  %i.eq = sdiv i32 %i.eh, 64
  %.sext.i.i.i = sext i32 %i.eq to i64
  %i.er = and i64 %i.ek, 63
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %.sext.i.i.i ; 2 uses
  %i.et = shl nuw i64 1, %i.er
  %i.eu = xor i64 %i.et, -1
  %i.ev = load i64, ptr %i.es, align 8, !tbaa !11
  %i.ew = and i64 %i.ev, %i.eu
  store i64 %i.ew, ptr %i.es, align 8, !tbaa !11
  br label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i: ; preds = %bb.t, %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i.i.i, %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  br label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i: ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i, %.lr.ph.i
  %i.ex = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(64) %i.du) #17, !call_target !1600, !inline_history !2405
  %i.fa = load ptr, ptr %i.dp, align 8, !tbaa !59 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fa, null
  %i.fb = icmp eq ptr %i.fa, %i.dp
  %i.fc = or i1 %.not.i.i, %i.fb
  br i1 %i.fc, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit, label %.lr.ph.i, !llvm.loop !2406

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit: ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i, %.lr.ph
  %i.fd = add nuw i64 %.096, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %.337.ph
  br i1 %exitcond.not, label %._crit_edge97, label %.lr.ph, !llvm.loop !2407

bb.u:                                             ; preds = %bb.r
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

._crit_edge97:                                    ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %3, ptr %3, align 16, !tbaa !59
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %3, ptr %i.ff, align 8, !tbaa !60
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16696 ; 11 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.fh, null         ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16704 ; 2 uses
  br i1 %.not.i.i.i52, label %bb.v, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge97
  %.pre26.i.i = load ptr, ptr %i.fi, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.pre28.i.i = load ptr, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !60
  %.pre29.i.i = load ptr, ptr %.pre26.i.i, align 8, !tbaa !59
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge97
  store ptr %i.fg, ptr %i.fg, align 8, !tbaa !59
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !60
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i, %bb.v
  %i.fj = phi ptr [ %i.fg, %bb.v ], [ %.pre29.i.i, %._crit_edge.i.i ]
  %i.fk = phi ptr [ %i.fg, %bb.v ], [ %.pre28.i.i, %._crit_edge.i.i ]
  %i.fl = phi ptr [ %i.fg, %bb.v ], [ %.pre26.i.i, %._crit_edge.i.i ]
  %i.fm = phi ptr [ %i.fg, %bb.v ], [ %i.fh, %._crit_edge.i.i ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fk, ptr %i.ff, align 8, !tbaa !60
  store ptr %3, ptr %i.fn, align 8, !tbaa !60
  store ptr %i.fj, ptr %3, align 16, !tbaa !59
  store ptr %3, ptr %i.fl, align 8, !tbaa !59
  %i.fo = load <2 x ptr>, ptr %i.fg, align 8, !tbaa !2390
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !59 ; 4 uses
  %i.fq = load <2 x ptr>, ptr %3, align 16, !tbaa !2390
  store <2 x ptr> %i.fo, ptr %3, align 16, !tbaa !2390
  store <2 x ptr> %i.fq, ptr %i.fg, align 8, !tbaa !2390
  br i1 %.not.i.i.i52, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit67.thread, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit67.thread: ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %.lr.ph.i.i.i.preheader

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit: ; preds = %bb.w
  %.not.i5.i53 = icmp eq ptr %i.fp, null
  %i.fr = icmp eq ptr %i.fp, %3
  %i.fs = or i1 %.not.i5.i53, %i.fr
  br i1 %i.fs, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit67, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i62
  %i.ft = phi ptr [ %i.hb, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i62 ], [ %i.fp, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit ] ; 6 uses
  %.06.i55 = phi i64 [ %i.fu, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i62 ], [ 0, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit ]
  %i.fu = add i64 %.06.i55, 1                     ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 -8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !2376 ; 3 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback13cancelTimeoutEv.exit.i62, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i54
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16672 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !62
  %i.gb = add i64 %i.ga, -1                       ; 2 uses
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !62
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.y, label %.noexc66

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fx)
          to label %.noexc66 unwind label %bb.ac

.noexc66:                                         ; preds = %bb.y, %bb.x
  %i.gd = load ptr, ptr %i.ft, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i56, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i57, label %bb.z

bb.z:                                             ; preds = %.noexc66
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !60 ; 2 uses
  store ptr %i.gd, ptr %i.gf, align 8, !tbaa !59
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i57

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i57: ; preds = %bb.z, %.noexc66
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !2370 ; 3 uses
  %.not.i.i.i58 = icmp eq i32 %i.gi, -1
  br i1 %.not.i.i.i58, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i61, label %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i.i.i59

_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i.i.i59: ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i57
  %i.gj = load ptr, ptr %i.fw, align 8, !tbaa !2376 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 248
  %i.gl = sext i32 %i.gi to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [16 x i8], ptr %i.gk, i64 %i.gl ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !59 ; 2 uses
  %.not.i1.i.i.i60 = icmp eq ptr %i.gn, null
  %i.go = icmp eq ptr %i.gn, %i.gm
  %i.gp = or i1 %.not.i1.i.i.i60, %i.go
  br i1 %i.gp, label %bb.aa, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i61

bb.aa:                                            ; preds = %_ZNK5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE5emptyEv.exit.i.i.i59
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 16632
end_hunk_0
begin_hunk_1_@_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv:bb.a
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
  %2 = alloca %"class.std::unique_ptr.27", align 8 ; 7 uses
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
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index144, 4                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bg
  %i.bj = insertelement <2 x ptr> poison, ptr %i.bh, i64 0
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %i.bi, i64 1
  %i.bl = getelementptr inbounds nuw i8, <2 x ptr> %i.bk, <2 x i64> <i64 8, i64 24>
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bg
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bg
  %i.bp = insertelement <2 x ptr> poison, ptr %i.bn, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.bo, i64 1
  %i.br = getelementptr inbounds nuw i8, <2 x ptr> %i.bq, <2 x i64> <i64 40, i64 56>
  %interleaved.vec145 = shufflevector <2 x ptr> %i.bl, <2 x ptr> %i.br, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x ptr> %interleaved.vec145, ptr %i.bm, align 8, !tbaa !2390, !noalias !2434
  %index.next146 = add nuw i64 %index144, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next146, %n.vec143
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2438

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n147 = icmp eq i64 %i.h, %n.vec143
  br i1 %cmp.n147, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.idx.i.ph = phi i64 [ 8, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i ], [ %.idx.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 4 uses
  store ptr %.ptr.ptr.i, ptr %.ptr.ptr.i, align 8, !tbaa !59, !noalias !2434
  %i.bt = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store ptr %.ptr.ptr.i, ptr %i.bt, align 8, !tbaa !60, !noalias !2434
  %.add.i = add nuw nsw i64 %.idx.i, 16
  %i.bu = add nuw nsw i64 %.idx.i, 8
  %i.bv = icmp eq i64 %i.bu, %i.c
  br i1 %i.bv, label %_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %.preheader.i, !llvm.loop !2439

_ZSt11make_uniqueIA_N5boost9intrusive4listIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackEJNS1_18constant_time_sizeILb0EEEEEEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit: ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.ptr5.i, ptr %2, align 8, !tbaa !2440, !alias.scope !2434
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
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
  %.03884 = phi ptr [ %i.do, %select.unfold ], [ %.039.ptr, %.lr.ph.preheader ] ; 18 uses
  %i.bx = load ptr, ptr %.03884, align 8, !tbaa !59 ; 3 uses
  %.not.i = icmp eq ptr %i.bx, null
  %i.by = icmp eq ptr %i.bx, %.03884
  %i.bz = or i1 %.not.i, %i.by
  br i1 %i.bz, label %select.unfold, label %.preheader81

.preheader81:                                     ; preds = %.lr.ph, %.preheader81
  %.05.i = phi i64 [ %i.cb, %.preheader81 ], [ 0, %.lr.ph ] ; 2 uses
  %.0.i = phi ptr [ %i.ca, %.preheader81 ], [ %.03884, %.lr.ph ]
  %i.ca = load ptr, ptr %.0.i, align 8, !tbaa !59 ; 2 uses
  %i.cb = add i64 %.05.i, 1
  %.not.i50 = icmp eq ptr %i.ca, %.03884
  br i1 %.not.i50, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i, label %.preheader81, !llvm.loop !2403

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i: ; preds = %.preheader81
  %i.cc = add i64 %.05.i, %.13387                 ; 3 uses
  %i.cd = add i64 %.13586, 1                      ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.ptr5.i, i64 %.13586 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %1, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %i.bw, align 8, !tbaa !60
  %i.cf = getelementptr inbounds nuw i8, ptr %.03884, i64 8 ; 3 uses
  %.pre26.i.i.i.i = load ptr, ptr %i.cf, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.pre28.i.i.i.i = load ptr, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !60
  %.pre29.i.i.i.i = load ptr, ptr %.pre26.i.i.i.i, align 8, !tbaa !59
  store ptr %.pre28.i.i.i.i, ptr %i.bw, align 8, !tbaa !60
  store ptr %1, ptr %.phi.trans.insert27.i.i.i.i, align 8, !tbaa !60
  store ptr %.pre29.i.i.i.i, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %.pre26.i.i.i.i, align 8, !tbaa !59
  %i.cg = load ptr, ptr %1, align 16, !tbaa !59   ; 3 uses
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %.03884, align 8, !tbaa !2390
  store ptr %i.cg, ptr %.03884, align 8, !tbaa !59
  store <2 x ptr> %i.ci, ptr %1, align 16, !tbaa !2390
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !60
  %i.cj = icmp eq ptr %i.ce, %.03884
  %.pre28.i = load ptr, ptr %i.ce, align 8, !tbaa !59 ; 4 uses
  br i1 %i.cj, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %.not.i24.i.i.i.i = icmp eq ptr %i.cg, null     ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %.pre28.i, null  ; 2 uses
  br i1 %.not.i24.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %.03884, ptr %.03884, align 8, !tbaa !59
  store ptr %.03884, ptr %i.cf, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = phi ptr [ %.03884, %bb.c ], [ %i.ch, %bb.b ] ; 2 uses
  %.pre.i.i.i11.i = phi ptr [ %.03884, %bb.c ], [ %i.cg, %bb.b ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.e, label %._crit_edge.i.i.i6.i

._crit_edge.i.i.i6.i:                             ; preds = %bb.d
  %.pre26.i.i.i7.i = load ptr, ptr %i.ck, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i8.i = getelementptr inbounds nuw i8, ptr %.pre28.i, i64 8
  %.pre28.i.i.i9.i = load ptr, ptr %.phi.trans.insert27.i.i.i8.i, align 8, !tbaa !60
  %.pre29.i.i.i10.i = load ptr, ptr %.pre26.i.i.i7.i, align 8, !tbaa !59
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.ce, ptr %i.ce, align 8, !tbaa !59
  store ptr %i.ce, ptr %i.ck, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i6.i
  %i.cl = phi ptr [ %i.ce, %bb.e ], [ %.pre29.i.i.i10.i, %._crit_edge.i.i.i6.i ]
  %i.cm = phi ptr [ %i.ce, %bb.e ], [ %.pre28.i.i.i9.i, %._crit_edge.i.i.i6.i ]
  %i.cn = phi ptr [ %i.ce, %bb.e ], [ %.pre26.i.i.i7.i, %._crit_edge.i.i.i6.i ]
  %i.co = phi ptr [ %i.ce, %bb.e ], [ %.pre28.i, %._crit_edge.i.i.i6.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i.i.i11.i, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !60
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !60
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !60
  %i.cs = load ptr, ptr %.pre.i, align 8, !tbaa !59
  store ptr %i.cl, ptr %.pre.i, align 8, !tbaa !59
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !59
  %i.ct = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !2390
  %i.cu = load <2 x ptr>, ptr %.03884, align 8, !tbaa !2390
  %i.cv = load ptr, ptr %.03884, align 8, !tbaa !59
  store <2 x ptr> %i.ct, ptr %.03884, align 8, !tbaa !2390
  store <2 x ptr> %i.cu, ptr %i.ce, align 8, !tbaa !2390
  br i1 %.not.i24.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre27.i = phi ptr [ null, %bb.g ], [ %i.cv, %bb.f ] ; 2 uses
  br i1 %.not.i.i.i.i5.i, label %bb.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03884, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i: ; preds = %bb.i, %bb.h, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i
  %i.cw = phi ptr [ %.pre27.i, %bb.i ], [ %.pre27.i, %bb.h ], [ %.pre28.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEC2EOSI_.exit.i ] ; 2 uses
  %.not.i24.i.i.i12.i = icmp eq ptr %i.cw, null   ; 2 uses
  %i.cx = load ptr, ptr %1, align 16, !tbaa !59   ; 3 uses
  %.not.i.i.i.i13.i = icmp eq ptr %i.cx, null     ; 2 uses
  br i1 %.not.i24.i.i.i12.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i
  store ptr %i.ce, ptr %i.ce, align 8, !tbaa !59
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.ce, ptr %i.cy, align 8, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i
  %.pre.i.i.i20.i = phi ptr [ %i.ce, %bb.j ], [ %i.cw, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit.i ]
  br i1 %.not.i.i.i.i13.i, label %bb.l, label %._crit_edge.i.i.i14.i

._crit_edge.i.i.i14.i:                            ; preds = %bb.k
  %.pre26.i.i.i16.i = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre28.i.i.i18.i = load ptr, ptr %.phi.trans.insert27.i.i.i17.i, align 8, !tbaa !60
  %.pre29.i.i.i19.i = load ptr, ptr %.pre26.i.i.i16.i, align 8, !tbaa !59
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %1, ptr %1, align 16, !tbaa !59
  store ptr %1, ptr %i.bw, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i14.i
  %i.cz = phi ptr [ %1, %bb.l ], [ %.pre29.i.i.i19.i, %._crit_edge.i.i.i14.i ]
  %i.da = phi ptr [ %1, %bb.l ], [ %.pre28.i.i.i18.i, %._crit_edge.i.i.i14.i ]
  %i.db = phi ptr [ %1, %bb.l ], [ %.pre26.i.i.i16.i, %._crit_edge.i.i.i14.i ]
  %i.dc = phi ptr [ %1, %bb.l ], [ %i.cx, %._crit_edge.i.i.i14.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !60 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.pre.i.i.i20.i, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.da, ptr %i.df, align 8, !tbaa !60
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !60
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !59
  store ptr %i.cz, ptr %i.de, align 8, !tbaa !59
  store ptr %i.di, ptr %i.db, align 8, !tbaa !59
  %i.dj = load ptr, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %1, align 16, !tbaa !2390
  store ptr %i.dj, ptr %1, align 16, !tbaa !59
  store <2 x ptr> %i.dk, ptr %i.ce, align 8, !tbaa !2390
  br i1 %.not.i24.i.i.i12.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dl = phi ptr [ null, %bb.n ], [ %i.dj, %bb.m ] ; 2 uses
  br i1 %.not.i.i.i.i13.i, label %bb.p, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i: ; preds = %bb.p, %bb.o
  %.not12.i.i.i.i = icmp eq ptr %i.dl, %1
  br i1 %.not12.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i, %.lr.ph.i.i.i.i
  %.sroa.06.013.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.dl, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i ] ; 2 uses
  %i.dm = load ptr, ptr %.sroa.06.013.i.i.i.i, align 8, !tbaa !59 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.dm, %1
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !2442

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEaSEOSI_.exit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !1641
  %.not49 = icmp ult i64 %i.cc, %i.dn
  br i1 %.not49, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %.loopexit, %.lr.ph
  %.236.ph = phi i64 [ %.13586, %.lr.ph ], [ %i.cd, %.loopexit ] ; 2 uses
  %.2.ph = phi i64 [ %.13387, %.lr.ph ], [ %i.cc, %.loopexit ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.03884, i64 16 ; 2 uses
  %.not46 = icmp eq ptr %i.do, %.ptr
  br i1 %.not46, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %.loopexit
  %.337.ph = phi i64 [ %.236.ph, %select.unfold ], [ %i.cd, %.loopexit ] ; 3 uses
  %.3.ph = phi i64 [ %.2.ph, %select.unfold ], [ %i.cc, %.loopexit ] ; 3 uses
  %.not43 = icmp eq i64 %.039.add, 16632
  br i1 %.not43, label %.preheader, label %.lr.ph.preheader

.lr.ph96:                                         ; preds = %.preheader, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit
  %.095 = phi i64 [ %i.fd, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit ], [ 0, %.preheader ] ; 2 uses
  %4 = load ptr, ptr %2, align 8, !tbaa !2440
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.095 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !59 ; 3 uses
  %.not.i5.i = icmp eq ptr %i.dq, null
  %i.dr = icmp eq ptr %i.dq, %i.dp
  %i.ds = or i1 %.not.i5.i, %i.dr
  br i1 %i.ds, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph96, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i
  %i.dt = phi ptr [ %i.fa, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i ], [ %i.dq, %.lr.ph96 ] ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2432 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16672 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1641
  %i.ea = add i64 %i.dz, -1                       ; 2 uses
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !1641
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.r, label %.noexc

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.dw)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.r, %bb.q
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i51, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !60 ; 2 uses
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !59
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i: ; preds = %bb.s, %.noexc
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !2429 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.eh, -1
  br i1 %.not.i.i.i, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i
  %i.ei = load ptr, ptr %i.dv, align 8, !tbaa !2432 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 248
  %i.ek = sext i32 %i.eh to i64                   ; 2 uses
  %i.el = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !59 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.em, null
  %i.en = icmp eq ptr %i.em, %i.el
  %i.eo = or i1 %.not.i1.i.i.i, %i.en
  br i1 %i.eo, label %bb.u, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 16632
  %i.eq = sdiv i32 %i.eh, 64
  %.sext.i.i.i = sext i32 %i.eq to i64
  %i.er = and i64 %i.ek, 63
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %.sext.i.i.i ; 2 uses
  %i.et = shl nuw i64 1, %i.er
  %i.eu = xor i64 %i.et, -1
  %i.ev = load i64, ptr %i.es, align 8, !tbaa !11
  %i.ew = and i64 %i.ev, %i.eu
  store i64 %i.ew, ptr %i.es, align 8, !tbaa !11
  br label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i: ; preds = %bb.u, %bb.t, %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  br label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i: ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i, %.lr.ph.i
  %i.ex = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(64) %i.du) #17, !call_target !2352, !inline_history !2443
  %i.fa = load ptr, ptr %i.dp, align 8, !tbaa !59 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fa, null
  %i.fb = icmp eq ptr %i.fa, %i.dp
  %i.fc = or i1 %.not.i.i, %i.fb
  br i1 %i.fc, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit, label %.lr.ph.i, !llvm.loop !2444

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit: ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i, %.lr.ph96
  %i.fd = add nuw i64 %.095, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %.337.ph
  br i1 %exitcond.not, label %._crit_edge97, label %.lr.ph96, !llvm.loop !2445

bb.v:                                             ; preds = %bb.r
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge97:                                    ; preds = %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %3, ptr %3, align 16, !tbaa !59
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %3, ptr %i.ff, align 8, !tbaa !60
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16696 ; 11 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.fh, null         ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16704 ; 2 uses
  br i1 %.not.i.i.i52, label %bb.w, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge97
  %.pre26.i.i = load ptr, ptr %i.fi, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.pre28.i.i = load ptr, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !60
  %.pre29.i.i = load ptr, ptr %.pre26.i.i, align 8, !tbaa !59
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge97
  store ptr %i.fg, ptr %i.fg, align 8, !tbaa !59
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !60
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i, %bb.w
  %i.fj = phi ptr [ %i.fg, %bb.w ], [ %.pre29.i.i, %._crit_edge.i.i ]
  %i.fk = phi ptr [ %i.fg, %bb.w ], [ %.pre28.i.i, %._crit_edge.i.i ]
  %i.fl = phi ptr [ %i.fg, %bb.w ], [ %.pre26.i.i, %._crit_edge.i.i ]
  %i.fm = phi ptr [ %i.fg, %bb.w ], [ %i.fh, %._crit_edge.i.i ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fk, ptr %i.ff, align 8, !tbaa !60
  store ptr %3, ptr %i.fn, align 8, !tbaa !60
  store ptr %i.fj, ptr %3, align 16, !tbaa !59
  store ptr %3, ptr %i.fl, align 8, !tbaa !59
  %i.fo = load <2 x ptr>, ptr %i.fg, align 8, !tbaa !2390
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !59 ; 4 uses
  %i.fq = load <2 x ptr>, ptr %3, align 16, !tbaa !2390
  store <2 x ptr> %i.fo, ptr %3, align 16, !tbaa !2390
  store <2 x ptr> %i.fq, ptr %i.fg, align 8, !tbaa !2390
  br i1 %.not.i.i.i52, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit66.thread, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit66.thread: ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %.lr.ph.i.i.i.preheader

_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit: ; preds = %bb.x
  %.not.i5.i53 = icmp eq ptr %i.fp, null
  %i.fr = icmp eq ptr %i.fp, %3
  %i.fs = or i1 %.not.i5.i53, %i.fr
  br i1 %i.fs, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE22cancelTimeoutsFromListERN5boost9intrusive4listINS6_8CallbackEJNS8_18constant_time_sizeILb0EEEEEE.exit66, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i61
  %i.ft = phi ptr [ %i.hb, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i61 ], [ %i.fp, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit ] ; 6 uses
  %.06.i55 = phi i64 [ %i.fu, %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i61 ], [ 0, %_ZN5boost9intrusive9list_implINS0_8bhtraitsIN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8CallbackENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE4swapERSI_.exit ]
  %i.fu = add i64 %.06.i55, 1                     ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 -8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !2432 ; 3 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback13cancelTimeoutEv.exit.i61, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i54
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16672 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !1641
  %i.gb = add i64 %i.ga, -1                       ; 2 uses
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !1641
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.z, label %.noexc65

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fx)
          to label %.noexc65 unwind label %bb.ae

.noexc65:                                         ; preds = %bb.z, %bb.y
  %i.gd = load ptr, ptr %i.ft, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i56, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i57, label %bb.aa

bb.aa:                                            ; preds = %.noexc65
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !60 ; 2 uses
  store ptr %i.gd, ptr %i.gf, align 8, !tbaa !59
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i57

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i57: ; preds = %bb.aa, %.noexc65
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !2429 ; 3 uses
  %.not.i.i.i58 = icmp eq i32 %i.gi, -1
  br i1 %.not.i.i.i58, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i60, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EE6unlinkEv.exit.i.i.i57
  %i.gj = load ptr, ptr %i.fw, align 8, !tbaa !2432 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 248
  %i.gl = sext i32 %i.gi to i64                   ; 2 uses
  %i.gm = getelementptr inbounds [16 x i8], ptr %i.gk, i64 %i.gl ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !59 ; 2 uses
  %.not.i1.i.i.i59 = icmp eq ptr %i.gn, null
  %i.go = icmp eq ptr %i.gn, %i.gm
  %i.gp = or i1 %.not.i1.i.i.i59, %i.go
  br i1 %i.gp, label %bb.ac, label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE8Callback17cancelTimeoutImplEv.exit.i.i60

bb.ac:                                            ; preds = %bb.ab
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 16632
end_hunk_1
