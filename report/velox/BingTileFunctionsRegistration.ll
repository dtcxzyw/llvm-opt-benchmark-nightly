Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/BingTileFunctionsRegistration?download=true
inline.NumInlined: 22549
inline.NumDeleted: 5467
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 256
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0112152 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0112151, %.loopexit ] ; 2 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !580
  %i.ei = and i64 %i.eh, 255
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.w
  %.0.in = phi i64 [ %i.ej, %._crit_edge ], [ %.0, %bb.w ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112152, i64 %.0
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !64  ; 3 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.x, !llvm.loop !3304

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %0, align 8, !tbaa !581
  %i.eo = getelementptr inbounds nuw [128 x i8], ptr %i.en, i64 %.0 ; 2 uses
  %i.ep = zext nneg i8 %i.el to i64
  %i.eq = add nsw i64 %i.ep, -1                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = icmp ne ptr %i.eo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp ult i8 %i.el, 17
  call void @llvm.assume(i1 %i.eu)
  %i.ev = lshr i64 %i.eq, 1
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = or i64 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !134
  br i1 %.not, label %bb.y, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %.0112152, i64 noundef %4) #35
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !68
  %i.ez = load i64, ptr %i.d, align 8, !tbaa !134
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !585 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !134
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fb) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !591, !range !86, !noundef !87
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3312, !nonnull !87
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !86, !noundef !87
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !173

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3313, !nonnull !87, !align !171
  %i.i = load i64, ptr %i.h, align 8, !tbaa !134
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3314, !nonnull !87, !align !171
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !585
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3315, !nonnull !87, !align !171
  %i.o = load i64, ptr %i.n, align 8, !tbaa !134
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3316 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3317, !nonnull !87, !align !171
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !426
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3318, !nonnull !87, !align !171
  %i.w = load i64, ptr %i.v, align 8, !tbaa !134
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3314, !nonnull !87, !align !171
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !585
  store ptr %i.z, ptr %i.q, align 8, !tbaa !581
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3319, !nonnull !87, !align !171
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !134 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !580
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !580
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #30
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #27

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #27

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.862") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !580  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !581   ; 3 uses
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.040.0, 16383
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !597
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !597
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !173, !llvm.loop !3320

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !173

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !3321

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !64
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !581
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !580
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !64
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.at, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !598 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !598
  br label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.028                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bh, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !3322

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !589
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !64
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.34) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !64
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !597
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !597
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3323
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !134
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !580 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !580
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !3325
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !134
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !3328
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #29

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !580
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i30.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i30.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i31, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !30

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i31 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i31, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !134
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !30

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !134
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !452 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !451 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !700, !nonnull !87, !align !171 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit16
  %indvars.iv = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit16 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !704, !nonnull !87, !align !171
  %i.an = load i64, ptr %i.am, align 8, !tbaa !134, !noalias !3783
  %i.ao = lshr i64 %i.an, 26
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = and i8 %i.ap, 63
  store ptr null, ptr %4, align 8, !tbaa !448, !alias.scope !3784
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !705, !nonnull !87, !align !171
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !707, !nonnull !87, !align !171
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !426
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %indvars.iv
  store i8 %i.aq, ptr %i.av, align 1, !tbaa !64
  %i.aw = load ptr, ptr %4, align 8, !tbaa !448
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZN8facebook5velox6StatusD2Ev.exit16, label %bb.i, !prof !173

bb.i:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit16

_ZN8facebook5velox6StatusD2Ev.exit16:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, !llvm.loop !3782

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !367   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !451
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !452
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !709
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ax, ptr %i.be, align 8, !tbaa !710
  store i8 1, ptr %3, align 8, !tbaa !712
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !713
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.az, i32 noundef %i.bb, ptr noundef nonnull byval(%class.anon.1242) align 8 %2, ptr noundef nonnull byval(%class.anon.1243) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit16, %bb.h, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1242) align 8 %2, ptr noundef byval(%class.anon.1243) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !709, !range !86, !noundef !87
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !710
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !700, !nonnull !87, !align !171 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i, %.preheader.i
  %.032.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.au, %_ZN8facebook5velox6StatusD2Ev.exit22.i ] ; 3 uses
  %i.ag = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !704, !nonnull !87, !align !171
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !134, !noalias !3805
  %i.aj = lshr i64 %i.ai, 26
  %i.ak = trunc i64 %i.aj to i8
  %i.al = and i8 %i.ak, 63
  store ptr null, ptr %6, align 8, !tbaa !448, !alias.scope !3806
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !705, !nonnull !87, !align !171
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !707, !nonnull !87, !align !171
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !426
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ag
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ac
  store i8 %i.al, ptr %i.ar, align 1, !tbaa !64
  %i.as = load ptr, ptr %6, align 8, !tbaa !448
  %.not.i21.i = icmp eq ptr %i.as, null
  br i1 %.not.i21.i, label %_ZN8facebook5velox6StatusD2Ev.exit22.i, label %bb.d, !prof !173

bb.d:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i

_ZN8facebook5velox6StatusD2Ev.exit22.i:           ; preds = %bb.d, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.at = add nuw i64 %.032.i, 9223372036854775807
  %i.au = and i64 %i.at, %.032.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.au, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i, !llvm.loop !3789

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = sdiv i32 %0, 64                         ; 2 uses
  %i.aw = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i35, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = load i8, ptr %2, align 8, !tbaa !709, !range !86, !noundef !87
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !710
  %i.bf = sext i32 %i.av to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !134
  %i.bi = xor i8 %i.bc, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = and i64 %i.bl, %i.bb                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bm, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i32 %i.av, 6
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !700, !nonnull !87, !align !171 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i41, %.preheader.i37
  %.032.i39 = phi i64 [ %i.bm, %.preheader.i37 ], [ %i.ch, %_ZN8facebook5velox6StatusD2Ev.exit22.i41 ] ; 3 uses
  %i.bt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i39, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !704, !nonnull !87, !align !171
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !134, !noalias !3807
  %i.bw = lshr i64 %i.bv, 26
  %i.bx = trunc i64 %i.bw to i8
  %i.by = and i8 %i.bx, 63
  store ptr null, ptr %5, align 8, !tbaa !448, !alias.scope !3808
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !705, !nonnull !87, !align !171
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !707, !nonnull !87, !align !171
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !426
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.bt
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.bp
  store i8 %i.by, ptr %i.ce, align 1, !tbaa !64
  %i.cf = load ptr, ptr %5, align 8, !tbaa !448
  %.not.i21.i40 = icmp eq ptr %i.cf, null
  br i1 %.not.i21.i40, label %_ZN8facebook5velox6StatusD2Ev.exit22.i41, label %bb.g, !prof !173

bb.g:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i41

_ZN8facebook5velox6StatusD2Ev.exit22.i41:         ; preds = %bb.g, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cg = add i64 %.032.i39, -1
  %i.ch = and i64 %i.cg, %.032.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.ch, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38, !llvm.loop !3789

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i41, %bb.f, %bb.e
  %i.ci = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3364 = icmp sgt i32 %i.ci, %i.d
  br i1 %.not3364, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43
  %i.cj = load i8, ptr %3, align 8, !tbaa !712, !range !86, !noundef !87
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !713
  %i.cm = xor i8 %i.cj, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !87, !align !171 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.j

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit
  %i.ct = phi i32 [ %i.ci, %.lr.ph ], [ %i.ef, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit ] ; 2 uses
  %.065 = phi i32 [ %i.c, %.lr.ph ], [ %i.ct, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit ] ; 2 uses
  %i.cu = sdiv i32 %.065, 64                      ; 3 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !134
  %i.cy = xor i64 %i.cx, %i.co                    ; 2 uses
  switch i64 %i.cy, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph.i: ; preds = %bb.h
  %i.cz = shl nsw i32 %i.cu, 6
  %i.da = sext i32 %i.cz to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit54.i

bb.i:                                             ; preds = %bb.h
  %i.db = shl nsw i32 %i.cu, 6                    ; 2 uses
  %i.dc = add i32 %i.db, 64
  %i.dd = sext i32 %i.dc to i64
  %.0.off = add i32 %.065, 127
  %.not77.i = icmp ult i32 %.0.off, 64
  br i1 %.not77.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph.i: ; preds = %bb.i
  %i.de = sext i32 %i.db to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit35.i

_ZN8facebook5velox6StatusD2Ev.exit35.i:           ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph.i, %_ZN8facebook5velox6StatusD2Ev.exit35.i
  %.076.i = phi i64 [ %i.de, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph.i ], [ %i.dp, %_ZN8facebook5velox6StatusD2Ev.exit35.i ] ; 2 uses
  %i.df = load ptr, ptr %i.cr, align 8, !tbaa !704, !nonnull !87, !align !171
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !134, !noalias !3809
  %i.dh = lshr i64 %i.dg, 26
  %i.di = trunc i64 %i.dh to i8
  %i.dj = and i8 %i.di, 63
  %i.dk = load ptr, ptr %i.cs, align 8, !tbaa !705, !nonnull !87, !align !171
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !707, !nonnull !87, !align !171
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !426
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.076.i
  store i8 %i.dj, ptr %i.do, align 1, !tbaa !64
  %i.dp = add nuw i64 %.076.i, 1                  ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.dd
  br i1 %i.dq, label %_ZN8facebook5velox6StatusD2Ev.exit35.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, !llvm.loop !3796

_ZN8facebook5velox6StatusD2Ev.exit54.i:           ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph.i, %_ZN8facebook5velox6StatusD2Ev.exit54.i
  %.01575.i = phi i64 [ %i.cy, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph.i ], [ %i.ee, %_ZN8facebook5velox6StatusD2Ev.exit54.i ] ; 3 uses
  %i.dr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575.i, i1 true)
  %i.ds = load ptr, ptr %i.cr, align 8, !tbaa !704, !nonnull !87, !align !171
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !134, !noalias !3810
  %i.du = lshr i64 %i.dt, 26
  %i.dv = trunc i64 %i.du to i8
  %i.dw = and i8 %i.dv, 63
  %i.dx = load ptr, ptr %i.cs, align 8, !tbaa !705, !nonnull !87, !align !171
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !707, !nonnull !87, !align !171
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !426
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dr
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.da
  store i8 %i.dw, ptr %i.ec, align 1, !tbaa !64
  %i.ed = add i64 %.01575.i, -1
  %i.ee = and i64 %i.ed, %.01575.i                ; 2 uses
  %.not.i45 = icmp eq i64 %i.ee, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit54.i, !llvm.loop !3799

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35.i, %_ZN8facebook5velox6StatusD2Ev.exit54.i, %bb.h, %bb.i
  %i.ef = add nsw i32 %i.ct, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ef, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3800

bb.j:                                             ; preds = %._crit_edge
  %i.eg = ashr i32 %1, 6
  %i.eh = and i32 %1, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %notmask.i46 = shl nsw i64 -1, %i.ei
  %i.ej = xor i64 %notmask.i46, -1
  %i.ek = load i8, ptr %2, align 8, !tbaa !709, !range !86, !noundef !87
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !710
  %i.en = sext i32 %i.eg to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !134
  %i.eq = xor i8 %i.ek, 1
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = xor i64 %i.ep, %i.es
  %i.eu = and i64 %i.et, %i.ej                    ; 2 uses
  %.not.i47 = icmp eq i64 %i.eu, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i48

.preheader.i48:                                   ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ew = sext i32 %i.d to i64
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !700, !nonnull !87, !align !171 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i52, %.preheader.i48
  %.032.i50 = phi i64 [ %i.eu, %.preheader.i48 ], [ %i.fo, %_ZN8facebook5velox6StatusD2Ev.exit22.i52 ] ; 3 uses
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i50, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !704, !nonnull !87, !align !171
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !134, !noalias !3811
  %i.fd = lshr i64 %i.fc, 26
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = and i8 %i.fe, 63
  store ptr null, ptr %4, align 8, !tbaa !448, !alias.scope !3812
  %i.fg = load ptr, ptr %i.ez, align 8, !tbaa !705, !nonnull !87, !align !171
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !707, !nonnull !87, !align !171
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !426
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.fa
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.ew
  store i8 %i.ff, ptr %i.fl, align 1, !tbaa !64
  %i.fm = load ptr, ptr %4, align 8, !tbaa !448
  %.not.i21.i51 = icmp eq ptr %i.fm, null
  br i1 %.not.i21.i51, label %_ZN8facebook5velox6StatusD2Ev.exit22.i52, label %bb.k, !prof !173

bb.k:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit22.i52

_ZN8facebook5velox6StatusD2Ev.exit22.i52:         ; preds = %bb.k, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fn = add nuw i64 %.032.i50, 9223372036854775807
  %i.fo = and i64 %i.fn, %.032.i50                ; 2 uses
  %.not10.i53 = icmp eq i64 %i.fo, 0
  br i1 %.not10.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_20ConstantVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49, !llvm.loop !3789

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_20ConstantVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit22.i52, %_ZN8facebook5velox6StatusD2Ev.exit22.i, %bb.j, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1267) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1268, align 8           ; 6 uses
  %3 = alloca %class.anon.1269, align 8           ; 6 uses
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !449, !range !86, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !68, !range !86
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !451
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !452  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !453
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !367    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph, label %.critedge.i.i.i, !llvm.loop !30

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !134
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !30

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !134
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !452 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !451 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, label %.loopexit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph: ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !714, !nonnull !87, !align !171 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit13
  %indvars.iv = phi i64 [ %i.al, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit13 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !717, !nonnull !87, !align !171
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !695, !noalias !3818
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !134, !noalias !3818
  %i.aq = lshr i64 %i.ap, 26
  %i.ar = trunc i64 %i.aq to i8
  %i.as = and i8 %i.ar, 63
  store ptr null, ptr %4, align 8, !tbaa !448, !alias.scope !3819
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !718, !nonnull !87, !align !171
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !720, !nonnull !87, !align !171
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !426
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %indvars.iv
  store i8 %i.as, ptr %i.ax, align 1, !tbaa !64
  %i.ay = load ptr, ptr %4, align 8, !tbaa !448
  %.not.i12 = icmp eq ptr %i.ay, null
  br i1 %.not.i12, label %_ZN8facebook5velox6StatusD2Ev.exit13, label %bb.i, !prof !173

bb.i:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit13

_ZN8facebook5velox6StatusD2Ev.exit13:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, !llvm.loop !3817

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !367   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !451
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !452
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !722
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.az, ptr %i.bg, align 8, !tbaa !723
  store i8 1, ptr %3, align 8, !tbaa !725
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !726
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull byval(%class.anon.1268) align 8 %2, ptr noundef nonnull byval(%class.anon.1269) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13, %bb.h, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1268) align 8 %2, ptr noundef byval(%class.anon.1269) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !722, !range !86, !noundef !87
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !723
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !714, !nonnull !87, !align !171 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.aw, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.ag = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !717, !nonnull !87, !align !171
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !695, !noalias !3834
  %i.aj = or disjoint i64 %i.ag, %i.ac            ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !134, !noalias !3834
  %i.am = lshr i64 %i.al, 26
  %i.an = trunc i64 %i.am to i8
  %i.ao = and i8 %i.an, 63
  store ptr null, ptr %6, align 8, !tbaa !448, !alias.scope !3835
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !718, !nonnull !87, !align !171
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !720, !nonnull !87, !align !171
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !426
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.aj
  store i8 %i.ao, ptr %i.at, align 1, !tbaa !64
  %i.au = load ptr, ptr %6, align 8, !tbaa !448
  %.not.i18.i = icmp eq ptr %i.au, null
  br i1 %.not.i18.i, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, label %bb.d, !prof !173

bb.d:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %bb.d, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.av = add nuw i64 %.029.i, 9223372036854775807
  %i.aw = and i64 %i.av, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.aw, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i, !llvm.loop !3824

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sdiv i32 %0, 64                         ; 2 uses
  %i.ay = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask.i.i35, -1
  %i.bb = sub nsw i32 64, %i.ay
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl i64 %i.ba, %i.bc
  %i.be = load i8, ptr %2, align 8, !tbaa !722, !range !86, !noundef !87
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !723
  %i.bh = sext i32 %i.ax to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !134
  %i.bk = xor i8 %i.be, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = xor i64 %i.bj, %i.bm
  %i.bo = and i64 %i.bn, %i.bd                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bo, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = shl nsw i32 %i.ax, 6
  %i.br = sext i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !714, !nonnull !87, !align !171 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i41, %.preheader.i37
  %.029.i39 = phi i64 [ %i.bo, %.preheader.i37 ], [ %i.cl, %_ZN8facebook5velox6StatusD2Ev.exit19.i41 ] ; 3 uses
  %i.bv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i39, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !717, !nonnull !87, !align !171
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !695, !noalias !3836
  %i.by = or disjoint i64 %i.bv, %i.br            ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !134, !noalias !3836
  %i.cb = lshr i64 %i.ca, 26
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = and i8 %i.cc, 63
  store ptr null, ptr %5, align 8, !tbaa !448, !alias.scope !3837
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !718, !nonnull !87, !align !171
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !720, !nonnull !87, !align !171
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !426
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.by
  store i8 %i.cd, ptr %i.ci, align 1, !tbaa !64
  %i.cj = load ptr, ptr %5, align 8, !tbaa !448
  %.not.i18.i40 = icmp eq ptr %i.cj, null
  br i1 %.not.i18.i40, label %_ZN8facebook5velox6StatusD2Ev.exit19.i41, label %bb.g, !prof !173

bb.g:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i41

_ZN8facebook5velox6StatusD2Ev.exit19.i41:         ; preds = %bb.g, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ck = add i64 %.029.i39, -1
  %i.cl = and i64 %i.ck, %.029.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.cl, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i38, !llvm.loop !3824

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i41, %bb.f, %bb.e
  %i.cm = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.cm, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.h

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43, %.lr.ph
  %i.cn = phi i32 [ %i.cp, %.lr.ph ], [ %i.cm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.cn, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit43 ]
  %i.co = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.co)
  %i.cp = add nsw i32 %i.cn, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.cp, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !3829

bb.h:                                             ; preds = %._crit_edge
  %i.cq = ashr i32 %1, 6
  %i.cr = and i32 %1, 63
  %i.cs = zext nneg i32 %i.cr to i64
  %notmask.i44 = shl nsw i64 -1, %i.cs
  %i.ct = xor i64 %notmask.i44, -1
  %i.cu = load i8, ptr %2, align 8, !tbaa !722, !range !86, !noundef !87
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !723
  %i.cx = sext i32 %i.cq to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !134
  %i.da = xor i8 %i.cu, 1
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = xor i64 %i.cz, %i.dc
  %i.de = and i64 %i.dd, %i.ct                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.de, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dg = sext i32 %i.d to i64
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !714, !nonnull !87, !align !171 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i50, %.preheader.i46
  %.029.i48 = phi i64 [ %i.de, %.preheader.i46 ], [ %i.ea, %_ZN8facebook5velox6StatusD2Ev.exit19.i50 ] ; 3 uses
  %i.dk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i48, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !717, !nonnull !87, !align !171
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !695, !noalias !3838
  %i.dn = or disjoint i64 %i.dk, %i.dg            ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !134, !noalias !3838
  %i.dq = lshr i64 %i.dp, 26
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = and i8 %i.dr, 63
  store ptr null, ptr %4, align 8, !tbaa !448, !alias.scope !3839
  %i.dt = load ptr, ptr %i.dj, align 8, !tbaa !718, !nonnull !87, !align !171
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !720, !nonnull !87, !align !171
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !426
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.dn
  store i8 %i.ds, ptr %i.dx, align 1, !tbaa !64
  %i.dy = load ptr, ptr %4, align 8, !tbaa !448
  %.not.i18.i49 = icmp eq ptr %i.dy, null
  br i1 %.not.i18.i49, label %_ZN8facebook5velox6StatusD2Ev.exit19.i50, label %bb.i, !prof !173

bb.i:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i50

_ZN8facebook5velox6StatusD2Ev.exit19.i50:         ; preds = %bb.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.dz = add nuw i64 %.029.i48, 9223372036854775807
  %i.ea = and i64 %i.dz, %.029.i48                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.ea, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i47, !llvm.loop !3824

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i50, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_16FlatVectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !725, !range !86, !noundef !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !726
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not74 = icmp eq i32 %i.n, -64
  br i1 %.not74, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph: ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit32
  %.073 = phi i64 [ %i.q, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.lr.ph ], [ %i.aj, %_ZN8facebook5velox6StatusD2Ev.exit32 ] ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !714, !nonnull !87, !align !171 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !717, !nonnull !87, !align !171
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !695, !noalias !3850
  %sext = shl i64 %.073, 32
  %i.w = ashr exact i64 %sext, 29
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !134, !noalias !3850
  %i.z = lshr i64 %i.y, 26
  %i.aa = trunc i64 %i.z to i8
  %i.ab = and i8 %i.aa, 63
  store ptr null, ptr %2, align 8, !tbaa !448, !alias.scope !3851
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !718, !nonnull !87, !align !171
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !720, !nonnull !87, !align !171
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !426
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.073
  store i8 %i.ab, ptr %i.ah, align 1, !tbaa !64
  %i.ai = load ptr, ptr %2, align 8, !tbaa !448
  %.not.i31 = icmp eq ptr %i.ai, null
  br i1 %.not.i31, label %_ZN8facebook5velox6StatusD2Ev.exit32, label %bb.c, !prof !173

bb.c:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit32

_ZN8facebook5velox6StatusD2Ev.exit32:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.aj = add nuw i64 %.073, 1                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.p
  br i1 %i.ak, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit, label %.loopexit, !llvm.loop !3844

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit51
  %.01572 = phi i64 [ %i.j, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.lr.ph ], [ %i.be, %_ZN8facebook5velox6StatusD2Ev.exit51 ] ; 3 uses
  %i.al = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01572, i1 true)
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !714, !nonnull !87, !align !171 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !717, !nonnull !87, !align !171
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !695, !noalias !3852
  %i.aq = or disjoint i64 %i.al, %i.m             ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !134, !noalias !3852
  %i.at = lshr i64 %i.as, 26
  %i.au = trunc i64 %i.at to i8
  %i.av = and i8 %i.au, 63
  store ptr null, ptr %3, align 8, !tbaa !448, !alias.scope !3853
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !718, !nonnull !87, !align !171
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !720, !nonnull !87, !align !171
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !426
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.aq
  store i8 %i.av, ptr %i.bb, align 1, !tbaa !64
  %i.bc = load ptr, ptr %3, align 8, !tbaa !448
  %.not.i50 = icmp eq ptr %i.bc, null
  br i1 %.not.i50, label %_ZN8facebook5velox6StatusD2Ev.exit51, label %bb.d, !prof !173

bb.d:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN8facebook5velox6StatusD2Ev.exit51

_ZN8facebook5velox6StatusD2Ev.exit51:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.bd = add i64 %.01572, -1
  %i.be = and i64 %i.bd, %.01572                  ; 2 uses
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %.loopexit, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_16FlatVectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, !llvm.loop !3849

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32, %_ZN8facebook5velox6StatusD2Ev.exit51, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1295) align 8 %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1296, align 8           ; 6 uses
  %3 = alloca %class.anon.1297, align 8           ; 6 uses
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !449, !range !86, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !68, !range !86
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !451
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !452  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !453
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !367    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i27.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i27.not, label %.critedge.i.i.i, label %.lr.ph29

bb.f:                                             ; preds = %.lr.ph29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i28, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph29, label %.critedge.i.i.i, !llvm.loop !30

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i28, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !134
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !30

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !134
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph29, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph29 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_:bb.a
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !730, !nonnull !87, !align !171
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !732, !noalias !3859, !nonnull !87, !align !171 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !553, !noalias !3859
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !554, !range !86, !noalias !3859, !noundef !87
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = trunc nsw i64 %indvars.iv to i32
  br i1 %i.as, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 59
  %i.av = load i8, ptr %i.au, align 1, !tbaa !555, !range !86, !noalias !3859, !noundef !87
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !556, !noalias !3859
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.l:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !557, !noalias !3859
  %i.bb = shl nsw i64 %indvars.iv, 2
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75, !noalias !3859
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i.i = phi i32 [ %i.bd, %bb.l ], [ %i.ay, %bb.k ], [ %i.at, %bb.i ]
  %i.be = sext i32 %.0.i.i.i to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !134, !noalias !3859
  %i.bh = lshr i64 %i.bg, 26
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = and i8 %i.bi, 63
  store ptr null, ptr %4, align 8, !tbaa !448, !alias.scope !3860
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !733, !nonnull !87, !align !171
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !735, !nonnull !87, !align !171
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !426
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %indvars.iv
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !64
  %i.bp = load ptr, ptr %4, align 8, !tbaa !448
  %.not.i12 = icmp eq ptr %i.bp, null
  br i1 %.not.i12, label %_ZN8facebook5velox6StatusD2Ev.exit13, label %bb.m, !prof !173

bb.m:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit13

_ZN8facebook5velox6StatusD2Ev.exit13:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !3858

bb.n:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bq = load ptr, ptr %0, align 8, !tbaa !367   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !451
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !452
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !737
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bq, ptr %i.bx, align 8, !tbaa !738
  store i8 1, ptr %3, align 8, !tbaa !740
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bq, ptr %i.by, align 8, !tbaa !741
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %i.bs, i32 noundef %i.bu, ptr noundef nonnull byval(%class.anon.1296) align 8 %2, ptr noundef nonnull byval(%class.anon.1297) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit13, %bb.h, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS4_10VectorExecEEESC_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1296) align 8 %2, ptr noundef byval(%class.anon.1297) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !737, !range !86, !noundef !87
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !738
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !727, !nonnull !87, !align !171 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.029.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bn, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.af = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = or disjoint i32 %i.d, %i.ag             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !730, !nonnull !87, !align !171
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !732, !noalias !3875, !nonnull !87, !align !171 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !553, !noalias !3875
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 58
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !554, !range !86, !noalias !3875, !noundef !87
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 59
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !555, !range !86, !noalias !3875, !noundef !87
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !556, !noalias !3875
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !557, !noalias !3875
  %i.ax = shl nsw i64 %i.ai, 2
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !75, !noalias !3875
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.az, %bb.g ], [ %i.au, %bb.f ], [ %i.ah, %bb.d ]
  %i.ba = sext i32 %.0.i.i.i.i to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !134, !noalias !3875
  %i.bd = lshr i64 %i.bc, 26
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i8 %i.be, 63
  store ptr null, ptr %6, align 8, !tbaa !448, !alias.scope !3876
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !733, !nonnull !87, !align !171
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !735, !nonnull !87, !align !171
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !426
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.ai
  store i8 %i.bf, ptr %i.bk, align 1, !tbaa !64
  %i.bl = load ptr, ptr %6, align 8, !tbaa !448
  %.not.i18.i = icmp eq ptr %i.bl, null
  br i1 %.not.i18.i, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, label %bb.h, !prof !173

bb.h:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %bb.h, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bm = add nuw i64 %.029.i, 9223372036854775807
  %i.bn = and i64 %i.bm, %.029.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bn, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3865

bb.i:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = sdiv i32 %0, 64                         ; 2 uses
  %i.bp = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bq
  %i.br = xor i64 %notmask.i.i35, -1
  %i.bs = sub nsw i32 64, %i.bp
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl i64 %i.br, %i.bt
  %i.bv = load i8, ptr %2, align 8, !tbaa !737, !range !86, !noundef !87
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !738
  %i.by = sext i32 %i.bo to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !134
  %i.cb = xor i8 %i.bv, 1
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = xor i64 %i.ca, %i.cd
  %i.cf = and i64 %i.ce, %i.bu                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cf, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit44, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = shl nsw i32 %i.bo, 6
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !727, !nonnull !87, !align !171 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  br label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i42, %.preheader.i37
  %.029.i38 = phi i64 [ %i.cf, %.preheader.i37 ], [ %i.dt, %_ZN8facebook5velox6StatusD2Ev.exit19.i42 ] ; 3 uses
  %i.cl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i38, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = or disjoint i32 %i.ch, %i.cm            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !730, !nonnull !87, !align !171
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !732, !noalias !3877, !nonnull !87, !align !171 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !553, !noalias !3877
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 58
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !554, !range !86, !noalias !3877, !noundef !87
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i39, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 59
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !555, !range !86, !noalias !3877, !noundef !87
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !556, !noalias !3877
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i39

bb.n:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !557, !noalias !3877
  %i.dd = shl nsw i64 %i.co, 2
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !75, !noalias !3877
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i39

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i39: ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.i40 = phi i32 [ %i.df, %bb.n ], [ %i.da, %bb.m ], [ %i.cn, %bb.k ]
  %i.dg = sext i32 %.0.i.i.i.i40 to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !134, !noalias !3877
  %i.dj = lshr i64 %i.di, 26
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = and i8 %i.dk, 63
  store ptr null, ptr %5, align 8, !tbaa !448, !alias.scope !3878
  %i.dm = load ptr, ptr %i.ck, align 8, !tbaa !733, !nonnull !87, !align !171
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !735, !nonnull !87, !align !171
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !426
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.co
  store i8 %i.dl, ptr %i.dq, align 1, !tbaa !64
  %i.dr = load ptr, ptr %5, align 8, !tbaa !448
  %.not.i18.i41 = icmp eq ptr %i.dr, null
  br i1 %.not.i18.i41, label %_ZN8facebook5velox6StatusD2Ev.exit19.i42, label %bb.o, !prof !173

bb.o:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i39
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i42

_ZN8facebook5velox6StatusD2Ev.exit19.i42:         ; preds = %bb.o, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ds = add i64 %.029.i38, -1
  %i.dt = and i64 %i.ds, %.029.i38                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.dt, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit44, label %bb.k, !llvm.loop !3865

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i42, %bb.j, %bb.i
  %i.du = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3356 = icmp sgt i32 %i.du, %i.d
  br i1 %.not3356, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.p

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit44, %.lr.ph
  %i.dv = phi i32 [ %i.dx, %.lr.ph ], [ %i.du, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit44 ] ; 2 uses
  %.057 = phi i32 [ %i.dv, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit44 ]
  %i.dw = sdiv i32 %.057, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dw)
  %i.dx = add nsw i32 %i.dv, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !3870

bb.p:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i45 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i45, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !737, !range !86, !noundef !87
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !738
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !134
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i46 = icmp eq i64 %i.em, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %.preheader.i47

.preheader.i47:                                   ; preds = %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !727, !nonnull !87, !align !171 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  br label %bb.q

bb.q:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i52, %.preheader.i47
  %.029.i48 = phi i64 [ %i.em, %.preheader.i47 ], [ %i.fz, %_ZN8facebook5velox6StatusD2Ev.exit19.i52 ] ; 3 uses
  %i.er = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.029.i48, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = or disjoint i32 %i.d, %i.es             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !730, !nonnull !87, !align !171
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !732, !noalias !3879, !nonnull !87, !align !171 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !553, !noalias !3879
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 58
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !554, !range !86, !noalias !3879, !noundef !87
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 59
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !555, !range !86, !noalias !3879, !noundef !87
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !556, !noalias !3879
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49

bb.t:                                             ; preds = %bb.r
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !557, !noalias !3879
  %i.fj = shl nsw i64 %i.eu, 2
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !75, !noalias !3879
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49: ; preds = %bb.t, %bb.s, %bb.q
  %.0.i.i.i.i50 = phi i32 [ %i.fl, %bb.t ], [ %i.fg, %bb.s ], [ %i.et, %bb.q ]
  %i.fm = sext i32 %.0.i.i.i.i50 to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !134, !noalias !3879
  %i.fp = lshr i64 %i.fo, 26
  %i.fq = trunc i64 %i.fp to i8
  %i.fr = and i8 %i.fq, 63
  store ptr null, ptr %4, align 8, !tbaa !448, !alias.scope !3880
  %i.fs = load ptr, ptr %i.eq, align 8, !tbaa !733, !nonnull !87, !align !171
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !735, !nonnull !87, !align !171
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !426
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.eu
  store i8 %i.fr, ptr %i.fw, align 1, !tbaa !64
  %i.fx = load ptr, ptr %4, align 8, !tbaa !448
  %.not.i18.i51 = icmp eq ptr %i.fx, null
  br i1 %.not.i18.i51, label %_ZN8facebook5velox6StatusD2Ev.exit19.i52, label %bb.u, !prof !173

bb.u:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i52

_ZN8facebook5velox6StatusD2Ev.exit19.i52:         ; preds = %bb.u, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.fy = add nuw i64 %.029.i48, 9223372036854775807
  %i.fz = and i64 %i.fy, %.029.i48                ; 2 uses
  %.not10.i53 = icmp eq i64 %i.fz, 0
  br i1 %.not10.i53, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit, label %bb.q, !llvm.loop !3865

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i52, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.p, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !740, !range !86, !noundef !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !741
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = shl i32 %1, 6                            ; 3 uses
  %i.n = add i32 %i.m, 64
  %i.o = sext i32 %i.n to i64
  %.not78 = icmp eq i32 %i.m, -64
  br i1 %.not78, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.b
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph77, %_ZN8facebook5velox6StatusD2Ev.exit32
  %.076 = phi i64 [ %i.p, %.lr.ph77 ], [ %i.ay, %_ZN8facebook5velox6StatusD2Ev.exit32 ] ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !727, !nonnull !87, !align !171 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !730, !nonnull !87, !align !171
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !732, !noalias !3891, !nonnull !87, !align !171 ; 5 uses
  %i.v = trunc i64 %.076 to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !553, !noalias !3891
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !554, !range !86, !noalias !3891, !noundef !87
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !555, !range !86, !noalias !3891, !noundef !87
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !556, !noalias !3891
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !557, !noalias !3891
  %sext.i = shl i64 %.076, 32
  %i.ai = ashr exact i64 %sext.i, 30
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !75, !noalias !3891
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i = phi i32 [ %i.ak, %bb.f ], [ %i.af, %bb.e ], [ %i.v, %bb.c ]
  %i.al = sext i32 %.0.i.i.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !134, !noalias !3891
  %i.ao = lshr i64 %i.an, 26
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = and i8 %i.ap, 63
  store ptr null, ptr %2, align 8, !tbaa !448, !alias.scope !3892
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !733, !nonnull !87, !align !171
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !735, !nonnull !87, !align !171
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !426
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.076
  store i8 %i.aq, ptr %i.aw, align 1, !tbaa !64
  %i.ax = load ptr, ptr %2, align 8, !tbaa !448
  %.not.i31 = icmp eq ptr %i.ax, null
  br i1 %.not.i31, label %_ZN8facebook5velox6StatusD2Ev.exit32, label %bb.g, !prof !173

bb.g:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit32

_ZN8facebook5velox6StatusD2Ev.exit32:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ay = add nuw i64 %.076, 1                    ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.o
  br i1 %i.az, label %bb.c, label %.loopexit, !llvm.loop !3885

bb.h:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit54
  %.01575 = phi i64 [ %i.j, %.lr.ph ], [ %i.cl, %_ZN8facebook5velox6StatusD2Ev.exit54 ] ; 3 uses
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01575, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = or disjoint i32 %i.l, %i.bb             ; 2 uses
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !727, !nonnull !87, !align !171 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.be = sext i32 %i.bc to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !730, !nonnull !87, !align !171
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !732, !noalias !3893, !nonnull !87, !align !171 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !553, !noalias !3893
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !554, !range !86, !noalias !3893, !noundef !87
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !555, !range !86, !noalias !3893, !noundef !87
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !556, !noalias !3893
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

bb.k:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !557, !noalias !3893
  %i.bu = shl nsw i64 %i.be, 2
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !75, !noalias !3893
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit: ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i.i41 = phi i32 [ %i.bw, %bb.k ], [ %i.br, %bb.j ], [ %i.bc, %bb.h ]
  %i.bx = sext i32 %.0.i.i.i41 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !134, !noalias !3893
  %i.ca = lshr i64 %i.bz, 26
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = and i8 %i.cb, 63
  store ptr null, ptr %3, align 8, !tbaa !448, !alias.scope !3894
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !733, !nonnull !87, !align !171
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !735, !nonnull !87, !align !171
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !426
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.be
  store i8 %i.cc, ptr %i.ci, align 1, !tbaa !64
  %i.cj = load ptr, ptr %3, align 8, !tbaa !448
  %.not.i53 = icmp eq ptr %i.cj, null
  br i1 %.not.i53, label %_ZN8facebook5velox6StatusD2Ev.exit54, label %bb.l, !prof !173

bb.l:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN8facebook5velox6StatusD2Ev.exit54

_ZN8facebook5velox6StatusD2Ev.exit54:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25BingTileZoomLevelFunctionINS1_10VectorExecEEES7_aNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ck = add i64 %.01575, -1
  %i.cl = and i64 %i.ck, %.01575                  ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !3890

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32, %_ZN8facebook5velox6StatusD2Ev.exit54, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions27BingTileCoordinatesFunctionINS1_10VectorExecEEES9_NS0_3RowIJiiEEENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSG_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EERKSK_INS1_17SignatureVariableESaISV_EEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !tbaa !68
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions27BingTileCoordinatesFunctionINS1_10VectorExecEEENS0_3RowIJiiEEENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSE_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISO_EEE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions27BingTileCoordinatesFunctionINS1_10VectorExecEEENS0_3RowIJiiEEENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSE_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISO_EE.exit, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions27BingTileCoordinatesFunctionINS1_10VectorExecEEENS0_3RowIJiiEEENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSE_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISO_EEE8instance) #30
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions27BingTileCoordinatesFunctionINS1_10VectorExecEEENS0_3RowIJiiEEENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_9BingTileTELb0EEEEEEJSE_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISO_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_2
