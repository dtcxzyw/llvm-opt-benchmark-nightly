Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeneralFunctionsRegistration?download=true
inline.NumInlined: 39046
inline.NumDeleted: 11423
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0112152 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0112151, %.loopexit ] ; 2 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !552
  %i.ei = and i64 %i.eh, 255
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.w
  %.0.in = phi i64 [ %i.ej, %._crit_edge ], [ %.0, %bb.w ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112152, i64 %.0
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !112 ; 3 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.x, !llvm.loop !2682

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %0, align 8, !tbaa !553
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
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !191
  br i1 %.not, label %bb.y, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %.0112152, i64 noundef %4) #35
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !127
  %i.ez = load i64, ptr %i.d, align 8, !tbaa !191
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !557 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !191
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fb) #31
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !563, !range !144, !noundef !145
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2689, !nonnull !145
  %i.e = load i8, ptr %i.d, align 1, !tbaa !127, !range !144, !noundef !145
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !247

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2690, !nonnull !145, !align !245
  %i.i = load i64, ptr %i.h, align 8, !tbaa !191
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2691, !nonnull !145, !align !245
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !557
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2692, !nonnull !145, !align !245
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2693 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2694, !nonnull !145, !align !245
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !487
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2695, !nonnull !145, !align !245
  %i.w = load i64, ptr %i.v, align 8, !tbaa !191
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2691, !nonnull !145, !align !245
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !557
  store ptr %i.z, ptr %i.q, align 8, !tbaa !553
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2696, !nonnull !145, !align !245
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !191 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !552
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !552
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #31
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #28

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #28

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.657") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !552  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !553   ; 3 uses
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
  %i.aa = load ptr, ptr %4, align 8, !tbaa !568
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !568
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !247, !llvm.loop !2697

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !247

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !2698

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !112
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !553
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !552
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !112
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
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !569 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !569
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
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !2699

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !561
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !112
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.43) #42
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !112
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !568
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !568
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !2700
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !191
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !552 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !552
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !2702
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !191
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !2705
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #30

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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !552
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKS1_SV_EUlSV_E_EEvSZ_SV_T0_EUlSV_E_EEvSV_:bb.a
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph33, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph33 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !516 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !515 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !2090, !nonnull !145, !align !245 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !2094 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2095, !nonnull !145, !align !245 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 58
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !527, !range !144, !noundef !145
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 59
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 144
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2087
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !2096, !nonnull !145, !align !245
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2098, !nonnull !145, !align !245
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !474
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit18
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit18 ] ; 4 uses
  %i.ba = trunc nsw i64 %indvars.iv to i32
  br i1 %i.aq, label %_ZN8facebook5velox6StatusD2Ev.exit18, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load i8, ptr %i.ar, align 1, !tbaa !528, !range !144, !noundef !145
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = load i32, ptr %i.at, align 8, !tbaa !529
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !530
  %i.bf = shl nsw i64 %indvars.iv, 2
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !134
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ %i.ba, %bb.i ]
  %i.bi = sext i32 %.0.i.i to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !134
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !191
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !9712

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bn = load ptr, ptr %0, align 8, !tbaa !404   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !515
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !516
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !2100
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !2101
  store i8 1, ptr %3, align 8, !tbaa !2103
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bn, ptr %i.bv, align 8, !tbaa !2104
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_(i32 noundef %i.bp, i32 noundef %i.br, ptr noundef nonnull byval(%class.anon.5414) align 8 %2, ptr noundef nonnull byval(%class.anon.5415) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.5414) align 8 %2, ptr noundef byval(%class.anon.5415) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 8 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.h

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
  %i.q = load i8, ptr %2, align 8, !tbaa !2100, !range !144, !noundef !145
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2101
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !191
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !2090 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2094, !nonnull !145, !align !245 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2095, !nonnull !145, !align !245 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !527, !range !144, !noundef !145
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2087
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2096, !nonnull !145, !align !245
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2098, !nonnull !145, !align !245
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !474
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.033.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.at = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i, i1 true)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = or disjoint i32 %i.d, %i.au             ; 2 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  br i1 %i.ai, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = load i8, ptr %i.aj, align 1, !tbaa !528, !range !144, !noundef !145
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = load i32, ptr %i.al, align 8, !tbaa !529
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

bb.g:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !530
  %i.bb = shl nsw i64 %i.aw, 2
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !134
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i = phi i32 [ %i.bd, %bb.g ], [ %i.az, %bb.f ], [ %i.av, %bb.d ]
  %i.be = sext i32 %.0.i.i.i to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !134
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aw
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !191
  %i.bj = add nuw i64 %.033.i, 9223372036854775807
  %i.bk = and i64 %i.bj, %.033.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !9713

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !2100, !range !144, !noundef !145
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2101
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !191
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 4 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6                    ; 3 uses
  %.pre.i38 = load ptr, ptr %i.cd, align 8, !tbaa !2090 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2094, !nonnull !145, !align !245 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2095, !nonnull !145, !align !245 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 58
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !527, !range !144, !noundef !145
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2087 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2096, !nonnull !145, !align !245
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2098, !nonnull !145, !align !245
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !474 ; 3 uses
  br i1 %i.cl, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us.preheader, label %.preheader.i37.split

_ZN8facebook5velox6StatusD2Ev.exit24.i40.us.preheader: ; preds = %.preheader.i37
  %i.cv = sext i32 %i.ce to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us

_ZN8facebook5velox6StatusD2Ev.exit24.i40.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us
  %.033.i39.us = phi i64 [ %i.dd, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us ], [ %i.cc, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us.preheader ] ; 3 uses
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i39.us, i1 true)
  %i.cx = or disjoint i64 %i.cw, %i.cv            ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !134
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cx
  store i64 %i.da, ptr %i.db, align 8, !tbaa !191
  %i.dc = add i64 %.033.i39.us, -1
  %i.dd = and i64 %i.dc, %.033.i39.us             ; 2 uses
  %.not10.i42.us = icmp eq i64 %i.dd, 0
  br i1 %.not10.i42.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us, !llvm.loop !9713

.preheader.i37.split:                             ; preds = %.preheader.i37
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 59
  %i.df = load i8, ptr %i.de, align 1, !tbaa !528, !range !144, !noundef !145
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.preheader.i37.split.split.us, label %.preheader.i37.split.split

.preheader.i37.split.split.us:                    ; preds = %.preheader.i37.split
  %i.dh = load i32, ptr %i.cn, align 8, !tbaa !529
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !134
  %i.dl = sext i32 %i.dk to i64
  %i.dm = sext i32 %i.ce to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.cu, i64 %i.dm
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59

_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59, %.preheader.i37.split.split.us
  %.033.i39.us58 = phi i64 [ %i.cc, %.preheader.i37.split.split.us ], [ %i.dp, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59 ] ; 3 uses
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i39.us58, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dn
  store i64 %i.dl, ptr %gep, align 8, !tbaa !191
  %i.do = add i64 %.033.i39.us58, -1
  %i.dp = and i64 %i.do, %.033.i39.us58           ; 2 uses
  %.not10.i42.us61 = icmp eq i64 %i.dp, 0
  br i1 %.not10.i42.us61, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59, !llvm.loop !9713

.preheader.i37.split.split:                       ; preds = %.preheader.i37.split
  %i.dq = load ptr, ptr %i.cm, align 8, !tbaa !530
  %i.dr = sext i32 %i.ce to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40

_ZN8facebook5velox6StatusD2Ev.exit24.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %.preheader.i37.split.split
  %.033.i39 = phi i64 [ %i.cc, %.preheader.i37.split.split ], [ %i.ed, %_ZN8facebook5velox6StatusD2Ev.exit24.i40 ] ; 3 uses
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i39, i1 true)
  %i.dt = or disjoint i64 %i.ds, %i.dr            ; 2 uses
  %i.du = shl nsw i64 %i.dt, 2
  %i.dv = getelementptr inbounds i8, ptr %i.dq, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !134
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !134
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dt
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !191
  %i.ec = add i64 %.033.i39, -1
  %i.ed = and i64 %i.ec, %.033.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.ed, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40, !llvm.loop !9713

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us, %bb.i, %bb.h
  %i.ee = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3365 = icmp sgt i32 %i.ee, %i.d
  br i1 %.not3365, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit43
  %i.ef = load i8, ptr %3, align 8, !tbaa !2103, !range !144, !noundef !145
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !2104
  %i.ei = xor i8 %i.ef, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i44 = load ptr, ptr %i.el, align 8        ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 24 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit
  %i.eo = phi i32 [ %i.ee, %.lr.ph ], [ %i.lv, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit ] ; 2 uses
  %.066 = phi i32 [ %i.c, %.lr.ph ], [ %i.eo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit ] ; 2 uses
  %i.ep = sdiv i32 %.066, 64                      ; 3 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !191
  %i.et = xor i64 %i.es, %i.ek                    ; 2 uses
  switch i64 %i.et, label %.lr.ph.i [
    i64 -1, label %bb.k
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.j
  %i.eu = shl nsw i32 %i.ep, 6
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !2094, !nonnull !145, !align !245 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 120
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2095, !nonnull !145, !align !245 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 58
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !527, !range !144, !noundef !145
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 59
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 144
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !2087
  %i.fg = load ptr, ptr %i.en, align 8, !tbaa !2096, !nonnull !145, !align !245
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !2098, !nonnull !145, !align !245
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !474
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fk = shl nsw i32 %i.ep, 6                    ; 4 uses
  %i.fl = add i32 %i.fk, 64
  %i.fm = sext i32 %i.fl to i64                   ; 8 uses
  %.0.off = add i32 %.066, 127
  %.not91.i = icmp ult i32 %.0.off, 64
  br i1 %.not91.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %bb.k
  %i.fn = sext i32 %i.fk to i64                   ; 23 uses
  %i.fo = load ptr, ptr %i.em, align 8, !tbaa !2094, !nonnull !145, !align !245 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 120
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !2095, !nonnull !145, !align !245 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 58
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !527, !range !144, !noundef !145
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 144
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !2087 ; 9 uses
  %i.fy = load ptr, ptr %i.en, align 8, !tbaa !2096, !nonnull !145, !align !245
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !2098, !nonnull !145, !align !245
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !474 ; 8 uses
  br i1 %i.ft, label %iter.check, label %.lr.ph90.i.split

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_:bb.a
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.089.i.us62
  store i64 %i.ic, ptr %i.im, align 8, !tbaa !191
  %i.in = add nuw i64 %.089.i.us62, 1             ; 2 uses
  %i.io = icmp ult i64 %i.in, %i.fm
  br i1 %i.io, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us63, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, !llvm.loop !9719

.lr.ph90.i.split.split:                           ; preds = %.lr.ph90.i.split
  %i.ip = load ptr, ptr %i.fu, align 8, !tbaa !530 ; 5 uses
  %i.iq = or disjoint i64 %i.fn, 1
  %i.ir = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 %i.fm) ; 2 uses
  %i.is = sub i64 %i.ir, %i.fn                    ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.is, 80
  br i1 %min.iters.check150, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.scevcheck145

vector.scevcheck145:                              ; preds = %.lr.ph90.i.split.split
  %i.it = or disjoint i64 %i.fn, 1
  %umax146 = tail call i64 @llvm.umax.i64(i64 %i.it, i64 %i.fm)
  %i.iu = xor i64 %i.fn, -1
  %i.iv = add i64 %umax146, %i.iu                 ; 2 uses
  %i.iw = sext i32 %i.fk to i34                   ; 2 uses
  %i.ix = shl nsw i34 %i.iw, 2
  %i.iy = trunc i64 %i.iv to i34
  %i.iz = add i34 %i.iw, %i.iy
  %i.ja = shl i34 %i.iz, 2
  %i.jb = icmp slt i34 %i.ja, %i.ix
  %i.jc = icmp ugt i64 %i.iv, 4294967295
  %i.jd = or i1 %i.jb, %i.jc
  br i1 %i.jd, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.scevcheck145
  %i.je = and i64 %i.ir, 1                        ; 2 uses
  %n.vec152 = sub i64 %i.is, %i.je                ; 2 uses
  %i.jf = add i64 %n.vec152, %i.fn
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next155, %vector.body153 ] ; 2 uses
  %i.jg = add nuw i64 %index154, %i.fn            ; 5 uses
  %i.jh = shl i64 %i.jg, 32
  %i.ji = shl i64 %i.jg, 32
  %i.jj = shl i64 %i.jg, 32
  %i.jk = shl i64 %i.jg, 32
  %i.jl = ashr exact i64 %i.jh, 30
  %i.jm = ashr exact i64 %i.ji, 30
  %i.jn = ashr exact i64 %i.jj, 30
  %i.jo = ashr exact i64 %i.jk, 30
  %i.jp = getelementptr inbounds i8, ptr %i.ip, i64 %i.jl
  %i.jq = getelementptr i8, ptr %i.ip, i64 %i.jm
  %i.jr = getelementptr i8, ptr %i.jq, i64 4
  %i.js = getelementptr i8, ptr %i.ip, i64 %i.jn
  %i.jt = getelementptr i8, ptr %i.js, i64 8
  %i.ju = getelementptr i8, ptr %i.ip, i64 %i.jo
  %i.jv = getelementptr i8, ptr %i.ju, i64 12
  %i.jw = load i32, ptr %i.jp, align 4, !tbaa !134
  %i.jx = load i32, ptr %i.jr, align 4, !tbaa !134
  %i.jy = load i32, ptr %i.jt, align 4, !tbaa !134
  %i.jz = load i32, ptr %i.jv, align 4, !tbaa !134
  %i.ka = sext i32 %i.jw to i64
  %i.kb = sext i32 %i.jx to i64
  %i.kc = sext i32 %i.jy to i64
  %i.kd = sext i32 %i.jz to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.ka
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.kb
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.kc
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.kd
  %i.ki = load i32, ptr %i.ke, align 4, !tbaa !134
  %i.kj = load i32, ptr %i.kf, align 4, !tbaa !134
  %i.kk = load i32, ptr %i.kg, align 4, !tbaa !134
  %i.kl = load i32, ptr %i.kh, align 4, !tbaa !134
  %i.km = insertelement <4 x i32> poison, i32 %i.ki, i64 0
  %i.kn = insertelement <4 x i32> %i.km, i32 %i.kj, i64 1
  %i.ko = insertelement <4 x i32> %i.kn, i32 %i.kk, i64 2
  %i.kp = insertelement <4 x i32> %i.ko, i32 %i.kl, i64 3
  %i.kq = sext <4 x i32> %i.kp to <4 x i64>
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.jg
  store <4 x i64> %i.kq, ptr %i.kr, align 8, !tbaa !191
  %index.next155 = add nuw i64 %index154, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next155, %n.vec152
  br i1 %i.ks, label %middle.block156, label %vector.body153, !llvm.loop !9720

middle.block156:                                  ; preds = %vector.body153
  %cmp.n157 = icmp eq i64 %i.je, 0
  br i1 %cmp.n157, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader: ; preds = %vector.scevcheck145, %.lr.ph90.i.split.split, %middle.block156
  %.089.i.ph = phi i64 [ %i.fn, %vector.scevcheck145 ], [ %i.fn, %.lr.ph90.i.split.split ], [ %i.jf, %middle.block156 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i

_ZN8facebook5velox6StatusD2Ev.exit39.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i
  %.089.i = phi i64 [ %i.lb, %_ZN8facebook5velox6StatusD2Ev.exit39.i ], [ %.089.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader ] ; 3 uses
  %sext.i.i = shl i64 %.089.i, 32
  %i.kt = ashr exact i64 %sext.i.i, 30
  %i.ku = getelementptr inbounds i8, ptr %i.ip, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !134
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !134
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.089.i
  store i64 %i.kz, ptr %i.la, align 8, !tbaa !191
  %i.lb = add nuw i64 %.089.i, 1                  ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.fm
  br i1 %i.lc, label %_ZN8facebook5velox6StatusD2Ev.exit39.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, !llvm.loop !9721

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67.i, %.lr.ph.i
  %.01588.i = phi i64 [ %i.et, %.lr.ph.i ], [ %i.lu, %_ZN8facebook5velox6StatusD2Ev.exit67.i ] ; 3 uses
  %i.ld = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01588.i, i1 true)
  %i.le = trunc nuw nsw i64 %i.ld to i32
  %i.lf = or disjoint i32 %i.eu, %i.le            ; 2 uses
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  br i1 %i.fa, label %_ZN8facebook5velox6StatusD2Ev.exit67.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lh = load i8, ptr %i.fb, align 1, !tbaa !528, !range !144, !noundef !145
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.lj = load i32, ptr %i.fd, align 8, !tbaa !529
  br label %_ZN8facebook5velox6StatusD2Ev.exit67.i

bb.o:                                             ; preds = %bb.m
  %i.lk = load ptr, ptr %i.fc, align 8, !tbaa !530
  %i.ll = shl nsw i64 %i.lg, 2
  %i.lm = getelementptr inbounds i8, ptr %i.lk, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !134
  br label %_ZN8facebook5velox6StatusD2Ev.exit67.i

_ZN8facebook5velox6StatusD2Ev.exit67.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i48.i = phi i32 [ %i.ln, %bb.o ], [ %i.lj, %bb.n ], [ %i.lf, %bb.l ]
  %i.lo = sext i32 %.0.i.i48.i to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !134
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.lg
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !191
  %i.lt = add i64 %.01588.i, -1
  %i.lu = and i64 %i.lt, %.01588.i                ; 2 uses
  %.not.i46 = icmp eq i64 %i.lu, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !9722

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us63, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, %_ZN8facebook5velox6StatusD2Ev.exit67.i, %middle.block156, %middle.block128, %vec.epilog.middle.block142, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.k
  %i.lv = add nsw i32 %i.eo, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.lv, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !9723

bb.p:                                             ; preds = %._crit_edge
  %i.lw = ashr i32 %1, 6
  %i.lx = and i32 %1, 63
  %i.ly = zext nneg i32 %i.lx to i64
  %notmask.i47 = shl nsw i64 -1, %i.ly
  %i.lz = xor i64 %notmask.i47, -1
  %i.ma = load i8, ptr %2, align 8, !tbaa !2100, !range !144, !noundef !145
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !2101
  %i.md = sext i32 %i.lw to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !191
  %i.mg = xor i8 %i.ma, 1
  %i.mh = zext nneg i8 %i.mg to i64
  %i.mi = sub nsw i64 0, %i.mh
  %i.mj = xor i64 %i.mf, %i.mi
  %i.mk = and i64 %i.mj, %i.lz                    ; 4 uses
  %.not.i48 = icmp eq i64 %i.mk, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %.preheader.i49

.preheader.i49:                                   ; preds = %bb.p
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i50 = load ptr, ptr %i.ml, align 8, !tbaa !2090 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !2094, !nonnull !145, !align !245 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 120
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !2095, !nonnull !145, !align !245 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 58
  %i.mr = load i8, ptr %i.mq, align 2, !tbaa !527, !range !144, !noundef !145
  %i.ms = trunc nuw i8 %i.mr to i1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 144
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !2087 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 24
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !2096, !nonnull !145, !align !245
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !2098, !nonnull !145, !align !245
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !474 ; 3 uses
  br i1 %i.ms, label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us.preheader, label %.preheader.i49.split

_ZN8facebook5velox6StatusD2Ev.exit24.i52.us.preheader: ; preds = %.preheader.i49
  %i.nc = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us

_ZN8facebook5velox6StatusD2Ev.exit24.i52.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us
  %.033.i51.us = phi i64 [ %i.nk, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us ], [ %i.mk, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us.preheader ] ; 3 uses
  %i.nd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i51.us, i1 true)
  %i.ne = or disjoint i64 %i.nd, %i.nc            ; 2 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !134
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.ne
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !191
  %i.nj = add nuw i64 %.033.i51.us, 9223372036854775807
  %i.nk = and i64 %i.nj, %.033.i51.us             ; 2 uses
  %.not10.i54.us = icmp eq i64 %i.nk, 0
  br i1 %.not10.i54.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us, !llvm.loop !9713

.preheader.i49.split:                             ; preds = %.preheader.i49
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mp, i64 59
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !528, !range !144, !noundef !145
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %.preheader.i49.split.split.us, label %.preheader.i49.split.split

.preheader.i49.split.split.us:                    ; preds = %.preheader.i49.split
  %i.no = load i32, ptr %i.mu, align 8, !tbaa !529
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !134
  %i.ns = sext i32 %i.nr to i64
  %i.nt = sext i32 %i.d to i64
  %invariant.gep98 = getelementptr [8 x i8], ptr %i.nb, i64 %i.nt
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68

_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68, %.preheader.i49.split.split.us
  %.033.i51.us67 = phi i64 [ %i.mk, %.preheader.i49.split.split.us ], [ %i.nw, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68 ] ; 3 uses
  %i.nu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i51.us67, i1 true)
  %gep99 = getelementptr [8 x i8], ptr %invariant.gep98, i64 %i.nu
  store i64 %i.ns, ptr %gep99, align 8, !tbaa !191
  %i.nv = add nuw i64 %.033.i51.us67, 9223372036854775807
  %i.nw = and i64 %i.nv, %.033.i51.us67           ; 2 uses
  %.not10.i54.us70 = icmp eq i64 %i.nw, 0
  br i1 %.not10.i54.us70, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68, !llvm.loop !9713

.preheader.i49.split.split:                       ; preds = %.preheader.i49.split
  %i.nx = load ptr, ptr %i.mt, align 8, !tbaa !530
  %i.ny = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i52

_ZN8facebook5velox6StatusD2Ev.exit24.i52:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i52, %.preheader.i49.split.split
  %.033.i51 = phi i64 [ %i.mk, %.preheader.i49.split.split ], [ %i.ok, %_ZN8facebook5velox6StatusD2Ev.exit24.i52 ] ; 3 uses
  %i.nz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i51, i1 true)
  %i.oa = or disjoint i64 %i.nz, %i.ny            ; 2 uses
  %i.ob = shl nsw i64 %i.oa, 2
  %i.oc = getelementptr inbounds i8, ptr %i.nx, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !134
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !134
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.oa
  store i64 %i.oh, ptr %i.oi, align 8, !tbaa !191
  %i.oj = add nuw i64 %.033.i51, 9223372036854775807
  %i.ok = and i64 %i.oj, %.033.i51                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.ok, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i52, !llvm.loop !9713

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEEEEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i52, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.p, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSD_INSE_ILm2EEELb0ELb0EEEEEEEEJSJ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EERKSN_INS1_17SignatureVariableESaISY_EEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::shared_ptr.27", align 16 ; 7 uses
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.a, align 1, !tbaa !127
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit, !prof !128

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance) #31
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEJRbRKSt6vectorINS6_17SignatureVariableESaISN_EEEESt10shared_ptrIT_EDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5426") align 8 @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance, ptr nonnull @__dso_handle) #31 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance) #31
  br label %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit38, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.o, %bb.h ], [ %i.au, %_ZNSt14_Function_baseD2Ev.exit38 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance) #31
  br label %common.resume

_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %1, align 8, !tbaa !129    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.i

bb.f:                                             ; preds = %_ZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EE.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.48)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #31
  br label %common.resume

bb.i:                                             ; preds = %.preheader, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36
  %.047 = phi i1 [ true, %.preheader ], [ %i.x, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36 ]
  %.sroa.039.046 = phi ptr [ %i.g, %.preheader ], [ %i.as, %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance, i64 8), align 8, !tbaa !132 ; 2 uses
  %i.q = load <2 x ptr>, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions19CardinalityFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSB_INSC_ILm2EEELb0ELb0EEEEEEEEJSH_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISR_EEE8instance, align 8, !tbaa !133
  store <2 x ptr> %i.q, ptr %4, align 16, !tbaa !133
  %.not.i.i.i27 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i27, label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i.i28 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.r, align 4, !tbaa !134
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !134
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29

bb.l:                                             ; preds = %bb.j
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29

_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29: ; preds = %bb.i, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions19CardinalityFunctionINS3_10VectorExecEEESG_lNS2_15ConstantCheckerIJNS2_3MapINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEENSK_INSL_ILm2EEELb0ELb0EEEEEEEEJSQ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS10_EERKSU_INS3_17SignatureVariableESaIS15_EEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.m, align 8, !tbaa !137
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEZNS3_22SimpleFunctionRegistry16registerFunctionINS3_32SimpleFunctionAdapterFactoryImplINS2_4core9UDFHolderINS2_9functions19CardinalityFunctionINS3_10VectorExecEEESG_lNS2_15ConstantCheckerIJNS2_3MapINS2_7GenericINS2_12TypeVariableILm1EEELb0ELb0EEENSK_INSL_ILm2EEELb0ELb0EEEEEEEEJSQ_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS10_EERKSU_INS3_17SignatureVariableESaIS15_EEbEUlvE_E10_M_managerERSt9_Any_dataRKS1C_St18_Manager_operation, ptr %i.l, align 8, !tbaa !138
  %i.w = invoke noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry24registerFunctionInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIKNS0_4core23ISimpleFunctionMetadataEERKSt8functionIFSt10unique_ptrINS1_28SimpleFunctionAdapterFactoryESt14default_deleteISK_EEvEEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.039.046, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %3)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29
  %i.x = and i1 %.047, %i.w                       ; 2 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !138  ; 2 uses
  %.not.i30 = icmp eq ptr %i.y, null
  br i1 %.not.i30, label %_ZNSt14_Function_baseD2Ev.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit31 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit31:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !132 ; 8 uses
  %.not.i.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i32, label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ad, align 8, !tbaa !140
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !141
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !143
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31, !inline_history !2
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !143
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31, !inline_history !2
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

bb.r:                                             ; preds = %bb.p
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i33 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

bb.t:                                             ; preds = %bb.r
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i35 = phi i32 [ %i.ag, %bb.s ], [ %i.aq, %bb.t ]
  %i.ar = icmp eq i32 %.0.i.i.i.i35, 1
  br i1 %i.ar, label %bb.u, label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36, !prof !125

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36

_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit36: ; preds = %_ZNSt14_Function_baseD2Ev.exit31, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i34, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.039.046, i64 32 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.i
  br i1 %i.at, label %bb.y, label %bb.i

bb.v:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataEEC2IKNS2_22SimpleFunctionMetadataINS1_9functions19CardinalityFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_3MapINS1_7GenericINS1_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEvEERKS_IT_E.exit29
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !138 ; 2 uses
  %.not.i37 = icmp eq ptr %i.av, null
  br i1 %.not.i37, label %_ZNSt14_Function_baseD2Ev.exit38, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit38 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit38:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKS1_SX_EUlSX_E_EEvS11_SX_T0_EUlSX_E_EEvSX_:bb.a
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph33, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph33 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !516 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !515 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !2122, !nonnull !145, !align !245 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !2126 ; 2 uses
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !2127, !noalias !9907, !nonnull !145, !align !245 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 58
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !527, !range !144, !noalias !9907, !noundef !145
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 59
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.pre, i64 264
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2117, !noalias !9907
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !2128, !nonnull !145, !align !245
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2130, !nonnull !145, !align !245
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !474
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit18
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox6StatusD2Ev.exit18 ] ; 4 uses
  %i.az = trunc nsw i64 %indvars.iv to i32
  br i1 %i.ap, label %_ZN8facebook5velox6StatusD2Ev.exit18, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.aq, align 1, !tbaa !528, !range !144, !noalias !9907, !noundef !145
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %i.as, align 8, !tbaa !529, !noalias !9907
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

bb.l:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.ar, align 8, !tbaa !530, !noalias !9907
  %i.be = shl nsw i64 %indvars.iv, 2
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !134, !noalias !9907
  br label %_ZN8facebook5velox6StatusD2Ev.exit18

_ZN8facebook5velox6StatusD2Ev.exit18:             ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.bg, %bb.l ], [ %i.bc, %bb.k ], [ %i.az, %bb.i ]
  %i.bh = sext i32 %.0.i.i to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !134, !noalias !9907
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !191
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !9906

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.bm = load ptr, ptr %0, align 8, !tbaa !404   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !515
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !516
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !2132
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !2133
  store i8 1, ptr %3, align 8, !tbaa !2135
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bm, ptr %i.bu, align 8, !tbaa !2136
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSG_INSH_ILm2EEELb0ELb0EEEEEEEEJSM_EEEE7iterateIJNS4_12VectorReaderISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISZ_EEvRKNS0_17SelectivityVectorESY_EUlSY_E_EEvS13_SY_T0_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS16_EEvS18_iibSY_EUliE_EEviiSY_S15_(i32 noundef %i.bo, i32 noundef %i.bq, ptr noundef nonnull byval(%class.anon.5503) align 8 %2, ptr noundef nonnull byval(%class.anon.5504) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit18, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSG_INSH_ILm2EEELb0ELb0EEEEEEEEJSM_EEEE7iterateIJNS4_12VectorReaderISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISZ_EEvRKNS0_17SelectivityVectorESY_EUlSY_E_EEvS13_SY_T0_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS16_EEvS18_iibSY_EUliE_EEviiSY_S15_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.5503) align 8 %2, ptr noundef byval(%class.anon.5504) align 8 %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 8 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.h

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
  %i.q = load i8, ptr %2, align 8, !tbaa !2132, !range !144, !noundef !145
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2133
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !191
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !2122 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2126, !nonnull !145, !align !245 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2127, !noalias !9929, !nonnull !145, !align !245 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 58
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !527, !range !144, !noalias !9929, !noundef !145
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 59
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2117, !noalias !9929
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2128, !nonnull !145, !align !245
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2130, !nonnull !145, !align !245
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !474
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.033.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bj, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i, i1 true)
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = or disjoint i32 %i.d, %i.at             ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  br i1 %i.ah, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = load i8, ptr %i.ai, align 1, !tbaa !528, !range !144, !noalias !9929, !noundef !145
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !529, !noalias !9929
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

bb.g:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !530, !noalias !9929
  %i.ba = shl nsw i64 %i.av, 2
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !134, !noalias !9929
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i = phi i32 [ %i.bc, %bb.g ], [ %i.ay, %bb.f ], [ %i.au, %bb.d ]
  %i.bd = sext i32 %.0.i.i.i to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !134, !noalias !9929
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !191
  %i.bi = add nuw i64 %.033.i, 9223372036854775807
  %i.bj = and i64 %i.bi, %.033.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bj, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !9910

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = sdiv i32 %0, 64                         ; 2 uses
  %i.bl = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bm
  %i.bn = xor i64 %notmask.i.i35, -1
  %i.bo = sub nsw i32 64, %i.bl
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl i64 %i.bn, %i.bp
  %i.br = load i8, ptr %2, align 8, !tbaa !2132, !range !144, !noundef !145
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !2133
  %i.bu = sext i32 %i.bk to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !191
  %i.bx = xor i8 %i.br, 1
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = xor i64 %i.bw, %i.bz
  %i.cb = and i64 %i.ca, %i.bq                    ; 4 uses
  %.not.i36 = icmp eq i64 %i.cb, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = shl nsw i32 %i.bk, 6                    ; 3 uses
  %.pre.i38 = load ptr, ptr %i.cc, align 8, !tbaa !2122 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2126, !nonnull !145, !align !245 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2127, !noalias !9930, !nonnull !145, !align !245 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 58
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !527, !range !144, !noalias !9930, !noundef !145
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 264
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2117, !noalias !9930 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2128, !nonnull !145, !align !245
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2130, !nonnull !145, !align !245
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !474 ; 3 uses
  br i1 %i.cj, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us.preheader, label %.preheader.i37.split

_ZN8facebook5velox6StatusD2Ev.exit24.i40.us.preheader: ; preds = %.preheader.i37
  %i.ct = sext i32 %i.cd to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us

_ZN8facebook5velox6StatusD2Ev.exit24.i40.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us
  %.033.i39.us = phi i64 [ %i.db, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us ], [ %i.cb, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us.preheader ] ; 3 uses
  %i.cu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i39.us, i1 true)
  %i.cv = or disjoint i64 %i.cu, %i.ct            ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !134, !noalias !9930
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cv
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !191
  %i.da = add i64 %.033.i39.us, -1
  %i.db = and i64 %i.da, %.033.i39.us             ; 2 uses
  %.not10.i42.us = icmp eq i64 %i.db, 0
  br i1 %.not10.i42.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us, !llvm.loop !9910

.preheader.i37.split:                             ; preds = %.preheader.i37
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 59
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !528, !range !144, !noalias !9930, !noundef !145
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %.preheader.i37.split.split.us, label %.preheader.i37.split.split

.preheader.i37.split.split.us:                    ; preds = %.preheader.i37.split
  %i.df = load i32, ptr %i.cl, align 8, !tbaa !529, !noalias !9930
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !134, !noalias !9930
  %i.dj = sext i32 %i.di to i64
  %i.dk = sext i32 %i.cd to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.cs, i64 %i.dk
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59

_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59, %.preheader.i37.split.split.us
  %.033.i39.us58 = phi i64 [ %i.cb, %.preheader.i37.split.split.us ], [ %i.dn, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59 ] ; 3 uses
  %i.dl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i39.us58, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dl
  store i64 %i.dj, ptr %gep, align 8, !tbaa !191
  %i.dm = add i64 %.033.i39.us58, -1
  %i.dn = and i64 %i.dm, %.033.i39.us58           ; 2 uses
  %.not10.i42.us61 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42.us61, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59, !llvm.loop !9910

.preheader.i37.split.split:                       ; preds = %.preheader.i37.split
  %i.do = load ptr, ptr %i.ck, align 8, !tbaa !530, !noalias !9930
  %i.dp = sext i32 %i.cd to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i40

_ZN8facebook5velox6StatusD2Ev.exit24.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %.preheader.i37.split.split
  %.033.i39 = phi i64 [ %i.cb, %.preheader.i37.split.split ], [ %i.eb, %_ZN8facebook5velox6StatusD2Ev.exit24.i40 ] ; 3 uses
  %i.dq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i39, i1 true)
  %i.dr = or disjoint i64 %i.dq, %i.dp            ; 2 uses
  %i.ds = shl nsw i64 %i.dr, 2
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !134, !noalias !9930
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !134, !noalias !9930
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.dr
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !191
  %i.ea = add i64 %.033.i39, -1
  %i.eb = and i64 %i.ea, %.033.i39                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.eb, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit24.i40, !llvm.loop !9910

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i40, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us59, %_ZN8facebook5velox6StatusD2Ev.exit24.i40.us, %bb.i, %bb.h
  %i.ec = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3365 = icmp sgt i32 %i.ec, %i.d
  br i1 %.not3365, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit43
  %i.ed = load i8, ptr %3, align 8, !tbaa !2135, !range !144, !noundef !145
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !2136
  %i.eg = xor i8 %i.ed, 1
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i44 = load ptr, ptr %i.ej, align 8        ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 24 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit
  %i.em = phi i32 [ %i.ec, %.lr.ph ], [ %i.lr, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit ] ; 2 uses
  %.066 = phi i32 [ %i.c, %.lr.ph ], [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit ] ; 2 uses
  %i.en = sdiv i32 %.066, 64                      ; 3 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !191
  %i.er = xor i64 %i.eq, %i.ei                    ; 2 uses
  switch i64 %i.er, label %.lr.ph.i [
    i64 -1, label %bb.k
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.j
  %i.es = shl nsw i32 %i.en, 6
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !2126, !nonnull !145, !align !245 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !2127, !noalias !9931, !nonnull !145, !align !245 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 58
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !527, !range !144, !noalias !9931, !noundef !145
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 264
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !2117, !noalias !9931
  %i.fd = load ptr, ptr %i.el, align 8, !tbaa !2128, !nonnull !145, !align !245
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !2130, !nonnull !145, !align !245
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !474
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fh = shl nsw i32 %i.en, 6                    ; 4 uses
  %i.fi = add i32 %i.fh, 64
  %i.fj = sext i32 %i.fi to i64                   ; 8 uses
  %.0.off = add i32 %.066, 127
  %.not87.i = icmp ult i32 %.0.off, 64
  br i1 %.not87.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %bb.k
  %i.fk = sext i32 %i.fh to i64                   ; 23 uses
  %i.fl = load ptr, ptr %i.ek, align 8, !tbaa !2126, !nonnull !145, !align !245 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2127, !noalias !9932, !nonnull !145, !align !245 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 58
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !527, !range !144, !noalias !9932, !noundef !145
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 264
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !2117, !noalias !9932 ; 9 uses
  %i.fu = load ptr, ptr %i.el, align 8, !tbaa !2128, !nonnull !145, !align !245
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !2130, !nonnull !145, !align !245
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !474 ; 8 uses
  br i1 %i.fp, label %iter.check, label %.lr.ph86.i.split

iter.check:                                       ; preds = %.lr.ph86.i
  %i.fy = or disjoint i64 %i.fk, 1
  %umax108 = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.fj) ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSG_INSH_ILm2EEELb0ELb0EEEEEEEEJSM_EEEE7iterateIJNS4_12VectorReaderISM_EEEEEvRNSP_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISZ_EEvRKNS0_17SelectivityVectorESY_EUlSY_E_EEvS13_SY_T0_EUlSY_E_EEvPKmiibSY_EUlimE_ZNS3_IS16_EEvS18_iibSY_EUliE_EEviiSY_S15_:bb.a
  %.085.i.us62 = phi i64 [ %i.ij, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us63 ], [ %.085.i.us62.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us63.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.085.i.us62
  store i64 %i.hy, ptr %i.ii, align 8, !tbaa !191
  %i.ij = add nuw i64 %.085.i.us62, 1             ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.fj
  br i1 %i.ik, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.us63, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, !llvm.loop !9922

.lr.ph86.i.split.split:                           ; preds = %.lr.ph86.i.split
  %i.il = load ptr, ptr %i.fq, align 8, !tbaa !530, !noalias !9932 ; 5 uses
  %i.im = or disjoint i64 %i.fk, 1
  %i.in = tail call i64 @llvm.umax.i64(i64 %i.im, i64 %i.fj) ; 2 uses
  %i.io = sub i64 %i.in, %i.fk                    ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.io, 80
  br i1 %min.iters.check150, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.scevcheck145

vector.scevcheck145:                              ; preds = %.lr.ph86.i.split.split
  %i.ip = or disjoint i64 %i.fk, 1
  %umax146 = tail call i64 @llvm.umax.i64(i64 %i.ip, i64 %i.fj)
  %i.iq = xor i64 %i.fk, -1
  %i.ir = add i64 %umax146, %i.iq                 ; 2 uses
  %i.is = sext i32 %i.fh to i34                   ; 2 uses
  %i.it = shl nsw i34 %i.is, 2
  %i.iu = trunc i64 %i.ir to i34
  %i.iv = add i34 %i.is, %i.iu
  %i.iw = shl i34 %i.iv, 2
  %i.ix = icmp slt i34 %i.iw, %i.it
  %i.iy = icmp ugt i64 %i.ir, 4294967295
  %i.iz = or i1 %i.ix, %i.iy
  br i1 %i.iz, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.scevcheck145
  %i.ja = and i64 %i.in, 1                        ; 2 uses
  %n.vec152 = sub i64 %i.io, %i.ja                ; 2 uses
  %i.jb = add i64 %n.vec152, %i.fk
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next155, %vector.body153 ] ; 2 uses
  %i.jc = add nuw i64 %index154, %i.fk            ; 5 uses
  %i.jd = shl i64 %i.jc, 32
  %i.je = shl i64 %i.jc, 32
  %i.jf = shl i64 %i.jc, 32
  %i.jg = shl i64 %i.jc, 32
  %i.jh = ashr exact i64 %i.jd, 30
  %i.ji = ashr exact i64 %i.je, 30
  %i.jj = ashr exact i64 %i.jf, 30
  %i.jk = ashr exact i64 %i.jg, 30
  %i.jl = getelementptr inbounds i8, ptr %i.il, i64 %i.jh
  %i.jm = getelementptr i8, ptr %i.il, i64 %i.ji
  %i.jn = getelementptr i8, ptr %i.jm, i64 4
  %i.jo = getelementptr i8, ptr %i.il, i64 %i.jj
  %i.jp = getelementptr i8, ptr %i.jo, i64 8
  %i.jq = getelementptr i8, ptr %i.il, i64 %i.jk
  %i.jr = getelementptr i8, ptr %i.jq, i64 12
  %i.js = load i32, ptr %i.jl, align 4, !tbaa !134, !noalias !9932
  %i.jt = load i32, ptr %i.jn, align 4, !tbaa !134, !noalias !9932
  %i.ju = load i32, ptr %i.jp, align 4, !tbaa !134, !noalias !9932
  %i.jv = load i32, ptr %i.jr, align 4, !tbaa !134, !noalias !9932
  %i.jw = sext i32 %i.js to i64
  %i.jx = sext i32 %i.jt to i64
  %i.jy = sext i32 %i.ju to i64
  %i.jz = sext i32 %i.jv to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.jw
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.jx
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.jy
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.jz
  %i.ke = load i32, ptr %i.ka, align 4, !tbaa !134, !noalias !9932
  %i.kf = load i32, ptr %i.kb, align 4, !tbaa !134, !noalias !9932
  %i.kg = load i32, ptr %i.kc, align 4, !tbaa !134, !noalias !9932
  %i.kh = load i32, ptr %i.kd, align 4, !tbaa !134, !noalias !9932
  %i.ki = insertelement <4 x i32> poison, i32 %i.ke, i64 0
  %i.kj = insertelement <4 x i32> %i.ki, i32 %i.kf, i64 1
  %i.kk = insertelement <4 x i32> %i.kj, i32 %i.kg, i64 2
  %i.kl = insertelement <4 x i32> %i.kk, i32 %i.kh, i64 3
  %i.km = sext <4 x i32> %i.kl to <4 x i64>
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.jc
  store <4 x i64> %i.km, ptr %i.kn, align 8, !tbaa !191
  %index.next155 = add nuw i64 %index154, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next155, %n.vec152
  br i1 %i.ko, label %middle.block156, label %vector.body153, !llvm.loop !9923

middle.block156:                                  ; preds = %vector.body153
  %cmp.n157 = icmp eq i64 %i.ja, 0
  br i1 %cmp.n157, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader

_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader: ; preds = %vector.scevcheck145, %.lr.ph86.i.split.split, %middle.block156
  %.085.i.ph = phi i64 [ %i.fk, %vector.scevcheck145 ], [ %i.fk, %.lr.ph86.i.split.split ], [ %i.jb, %middle.block156 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit39.i

_ZN8facebook5velox6StatusD2Ev.exit39.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit39.i
  %.085.i = phi i64 [ %i.kx, %_ZN8facebook5velox6StatusD2Ev.exit39.i ], [ %.085.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit39.i.preheader ] ; 3 uses
  %sext.i.i = shl i64 %.085.i, 32
  %i.kp = ashr exact i64 %sext.i.i, 30
  %i.kq = getelementptr inbounds i8, ptr %i.il, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !134, !noalias !9932
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !134, !noalias !9932
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.085.i
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !191
  %i.kx = add nuw i64 %.085.i, 1                  ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.fj
  br i1 %i.ky, label %_ZN8facebook5velox6StatusD2Ev.exit39.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, !llvm.loop !9924

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit61.i, %.lr.ph.i
  %.01584.i = phi i64 [ %i.er, %.lr.ph.i ], [ %i.lq, %_ZN8facebook5velox6StatusD2Ev.exit61.i ] ; 3 uses
  %i.kz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01584.i, i1 true)
  %i.la = trunc nuw nsw i64 %i.kz to i32
  %i.lb = or disjoint i32 %i.es, %i.la            ; 2 uses
  %i.lc = sext i32 %i.lb to i64                   ; 2 uses
  br i1 %i.ex, label %_ZN8facebook5velox6StatusD2Ev.exit61.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ld = load i8, ptr %i.ey, align 1, !tbaa !528, !range !144, !noalias !9931, !noundef !145
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.lf = load i32, ptr %i.fa, align 8, !tbaa !529, !noalias !9931
  br label %_ZN8facebook5velox6StatusD2Ev.exit61.i

bb.o:                                             ; preds = %bb.m
  %i.lg = load ptr, ptr %i.ez, align 8, !tbaa !530, !noalias !9931
  %i.lh = shl nsw i64 %i.lc, 2
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !134, !noalias !9931
  br label %_ZN8facebook5velox6StatusD2Ev.exit61.i

_ZN8facebook5velox6StatusD2Ev.exit61.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i48.i = phi i32 [ %i.lj, %bb.o ], [ %i.lf, %bb.n ], [ %i.lb, %bb.l ]
  %i.lk = sext i32 %.0.i.i48.i to i64
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !134, !noalias !9931
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.lc
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !191
  %i.lp = add i64 %.01584.i, -1
  %i.lq = and i64 %i.lp, %.01584.i                ; 2 uses
  %.not.i46 = icmp eq i64 %i.lq, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !9925

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit39.i, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us63, %_ZN8facebook5velox6StatusD2Ev.exit39.i.us, %_ZN8facebook5velox6StatusD2Ev.exit61.i, %middle.block156, %middle.block128, %vec.epilog.middle.block142, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.k
  %i.lr = add nsw i32 %i.em, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.lr, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !9926

bb.p:                                             ; preds = %._crit_edge
  %i.ls = ashr i32 %1, 6
  %i.lt = and i32 %1, 63
  %i.lu = zext nneg i32 %i.lt to i64
  %notmask.i47 = shl nsw i64 -1, %i.lu
  %i.lv = xor i64 %notmask.i47, -1
  %i.lw = load i8, ptr %2, align 8, !tbaa !2132, !range !144, !noundef !145
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !2133
  %i.lz = sext i32 %i.ls to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.ly, i64 %i.lz
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !191
  %i.mc = xor i8 %i.lw, 1
  %i.md = zext nneg i8 %i.mc to i64
  %i.me = sub nsw i64 0, %i.md
  %i.mf = xor i64 %i.mb, %i.me
  %i.mg = and i64 %i.mf, %i.lv                    ; 4 uses
  %.not.i48 = icmp eq i64 %i.mg, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %.preheader.i49

.preheader.i49:                                   ; preds = %bb.p
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i50 = load ptr, ptr %i.mh, align 8, !tbaa !2122 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !2126, !nonnull !145, !align !245 ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !2127, !noalias !9933, !nonnull !145, !align !245 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 58
  %i.mm = load i8, ptr %i.ml, align 2, !tbaa !527, !range !144, !noalias !9933, !noundef !145
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 264
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !2117, !noalias !9933 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !2128, !nonnull !145, !align !245
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !2130, !nonnull !145, !align !245
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !474 ; 3 uses
  br i1 %i.mn, label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us.preheader, label %.preheader.i49.split

_ZN8facebook5velox6StatusD2Ev.exit24.i52.us.preheader: ; preds = %.preheader.i49
  %i.mx = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us

_ZN8facebook5velox6StatusD2Ev.exit24.i52.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us
  %.033.i51.us = phi i64 [ %i.nf, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us ], [ %i.mg, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us.preheader ] ; 3 uses
  %i.my = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i51.us, i1 true)
  %i.mz = or disjoint i64 %i.my, %i.mx            ; 2 uses
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !134, !noalias !9933
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.mz
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !191
  %i.ne = add nuw i64 %.033.i51.us, 9223372036854775807
  %i.nf = and i64 %i.ne, %.033.i51.us             ; 2 uses
  %.not10.i54.us = icmp eq i64 %i.nf, 0
  br i1 %.not10.i54.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us, !llvm.loop !9910

.preheader.i49.split:                             ; preds = %.preheader.i49
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mk, i64 59
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !528, !range !144, !noalias !9933, !noundef !145
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %.preheader.i49.split.split.us, label %.preheader.i49.split.split

.preheader.i49.split.split.us:                    ; preds = %.preheader.i49.split
  %i.nj = load i32, ptr %i.mp, align 8, !tbaa !529, !noalias !9933
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !134, !noalias !9933
  %i.nn = sext i32 %i.nm to i64
  %i.no = sext i32 %i.d to i64
  %invariant.gep98 = getelementptr [8 x i8], ptr %i.mw, i64 %i.no
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68

_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68, %.preheader.i49.split.split.us
  %.033.i51.us67 = phi i64 [ %i.mg, %.preheader.i49.split.split.us ], [ %i.nr, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68 ] ; 3 uses
  %i.np = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i51.us67, i1 true)
  %gep99 = getelementptr [8 x i8], ptr %invariant.gep98, i64 %i.np
  store i64 %i.nn, ptr %gep99, align 8, !tbaa !191
  %i.nq = add nuw i64 %.033.i51.us67, 9223372036854775807
  %i.nr = and i64 %i.nq, %.033.i51.us67           ; 2 uses
  %.not10.i54.us70 = icmp eq i64 %i.nr, 0
  br i1 %.not10.i54.us70, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68, !llvm.loop !9910

.preheader.i49.split.split:                       ; preds = %.preheader.i49.split
  %i.ns = load ptr, ptr %i.mo, align 8, !tbaa !530, !noalias !9933
  %i.nt = sext i32 %i.d to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i52

_ZN8facebook5velox6StatusD2Ev.exit24.i52:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i52, %.preheader.i49.split.split
  %.033.i51 = phi i64 [ %i.mg, %.preheader.i49.split.split ], [ %i.of, %_ZN8facebook5velox6StatusD2Ev.exit24.i52 ] ; 3 uses
  %i.nu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.033.i51, i1 true)
  %i.nv = or disjoint i64 %i.nu, %i.nt            ; 2 uses
  %i.nw = shl nsw i64 %i.nv, 2
  %i.nx = getelementptr inbounds i8, ptr %i.ns, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !134, !noalias !9933
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !134, !noalias !9933
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.nv
  store i64 %i.oc, ptr %i.od, align 8, !tbaa !191
  %i.oe = add nuw i64 %.033.i51, 9223372036854775807
  %i.of = and i64 %i.oe, %.033.i51                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.of, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit24.i52, !llvm.loop !9910

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions19CardinalityFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_3MapINS0_7GenericINS0_12TypeVariableILm1EEELb0ELb0EEENSF_INSG_ILm2EEELb0ELb0EEEEEEEEJSL_EEEE7iterateIJNS3_12VectorReaderISL_EEEEEvRNSO_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i52, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us68, %_ZN8facebook5velox6StatusD2Ev.exit24.i52.us, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.p, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #26 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #29 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { builtin nounwind }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { noreturn nounwind }
attributes #38 = { noreturn }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { cold }
attributes #41 = { allocsize(0) }
attributes #42 = { cold noreturn nounwind }
attributes #43 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!97, !98}
!llvm.ident = !{!99}
!llvm.errno.tbaa = !{!104}

!0 = distinct !{!0, !123}
!1 = distinct !{!1, !123}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{null, null}
!4 = distinct !{null, null, null, null}
!5 = distinct !{!5, !123}
!6 = distinct !{!6, !123}
!7 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{!8, !123}
!9 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!11 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!12 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!13 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = distinct !{!14, !123}
!15 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!16 = distinct !{!16, !123}
!17 = distinct !{null}
!18 = distinct !{!18, !123}
!19 = distinct !{!19, !123}
!20 = distinct !{!20, !123}
!21 = distinct !{!21, !123}
!22 = distinct !{null, null, null, null, null}
!23 = distinct !{!23, !123}
!24 = distinct !{null}
!25 = distinct !{!25, !123}
!26 = distinct !{null, null, null}
!27 = distinct !{null, null, null}
!28 = distinct !{!28, !123}
!29 = distinct !{!29, !123}
!30 = distinct !{null, null, null}
!31 = distinct !{!31, !123}
!32 = distinct !{!32, !123}
!33 = distinct !{!33, !123}
!34 = distinct !{!34, !123}
!35 = distinct !{!35, !123}
!36 = distinct !{!36, !123}
!37 = distinct !{!37, !123}
!38 = distinct !{!38, !123}
!39 = distinct !{!39, !123}
!40 = distinct !{!40, !123}
!41 = distinct !{!41, !123}
!42 = distinct !{!42, !123}
!43 = distinct !{!43, !123}
!44 = distinct !{!44, !123}
!45 = distinct !{!45, !123}
!46 = distinct !{!46, !123}
!47 = distinct !{!47, !123}
!48 = distinct !{!48, !123}
!49 = distinct !{!49, !123}
!50 = distinct !{!50, !123}
!51 = distinct !{!51, !123}
!52 = distinct !{!52, !123}
!53 = distinct !{!53, !123}
!54 = distinct !{!54, !123}
!55 = distinct !{!55, !123}
!56 = distinct !{!56, !123}
!57 = distinct !{!57, !123}
!58 = distinct !{!58, !123}
!59 = distinct !{null}
!60 = distinct !{!60, !123}
!61 = distinct !{!61, !123}
!62 = distinct !{!62, !123}
!63 = distinct !{!63, !123}
!64 = distinct !{!64, !123}
!65 = distinct !{!65, !123}
!66 = distinct !{!66, !123}
!67 = distinct !{!67, !123}
!68 = distinct !{!68, !123}
!69 = distinct !{!69, !123}
!70 = distinct !{!70, !123}
!71 = distinct !{!71, !123}
!72 = distinct !{!72, !123}
!73 = distinct !{ptr @_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_22TimestampWithTimezoneTELb1EEEED2Ev, null, null, null}
!74 = distinct !{null, null, null}
!75 = distinct !{null}
!76 = distinct !{ptr @_ZN8facebook5velox4exec34CustomTypeWithCustomComparisonViewIlED2Ev, null, null, null}
!77 = distinct !{!77, !123}
!78 = distinct !{null}
!79 = distinct !{!79, !123}
!80 = distinct !{ptr @_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_10IPAddressTELb1EEEED2Ev, null, null, null}
!81 = distinct !{null, null, null}
!82 = distinct !{null}
!83 = distinct !{ptr @_ZN8facebook5velox4exec34CustomTypeWithCustomComparisonViewInED2Ev, null, null, null}
!84 = distinct !{!84, !123}
!85 = distinct !{null}
!86 = distinct !{!86, !123}
!87 = distinct !{!87, !123}
!88 = distinct !{!88, !123}
!89 = distinct !{!89, !123}
!90 = distinct !{ptr @_ZN8facebook5velox4exec12VectorReaderINS0_10CustomTypeINS0_17TimeWithTimezoneTELb1EEEED2Ev, null, null, null}
!91 = distinct !{null}
!92 = distinct !{!92, !123}
!93 = distinct !{null}
!94 = distinct !{!94, !123}
!95 = distinct !{!95, !123}
!96 = distinct !{null}
!97 = !{i32 8, !"PIC Level", i32 2}
!98 = !{i32 7, !"uwtable", i32 2}
!99 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!100 = !{!"Simple C++ TBAA"}
!101 = !{!"omnipotent char", !100, i64 0}
!102 = !{!"int", !101, i64 0}
!103 = !{!"__libc_errno", !102, i64 0}
!104 = !{!103, !102, i64 0}
!105 = !{!"any pointer", !101, i64 0}
!106 = !{!"p1 omnipotent char", !105, i64 0}
end_hunk_4
