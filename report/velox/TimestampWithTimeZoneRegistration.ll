Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TimestampWithTimeZoneRegistration?download=true
inline.NumInlined: 13148
inline.NumDeleted: 3234
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0112152 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0112151, %.loopexit ] ; 2 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !543
  %i.ei = and i64 %i.eh, 255
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.w
  %.0.in = phi i64 [ %i.ej, %._crit_edge ], [ %.0, %bb.w ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112152, i64 %.0
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !133 ; 3 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.x, !llvm.loop !2185

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %0, align 8, !tbaa !539
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
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !147
  br i1 %.not, label %bb.y, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %.0112152, i64 noundef %4) #43
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !256
  %i.ez = load i64, ptr %i.d, align 8, !tbaa !147
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !626 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !147
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fb) #38
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !628, !range !239, !noundef !240
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2194, !nonnull !240
  %i.e = load i8, ptr %i.d, align 1, !tbaa !256, !range !239, !noundef !240
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !137

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2195, !nonnull !240, !align !273
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2196, !nonnull !240, !align !273
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !626
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2197, !nonnull !240, !align !273
  %i.o = load i64, ptr %i.n, align 8, !tbaa !147
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2198 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2199, !nonnull !240, !align !273
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !410
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2200, !nonnull !240, !align !273
  %i.w = load i64, ptr %i.v, align 8, !tbaa !147
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2196, !nonnull !240, !align !273
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !626
  store ptr %i.z, ptr %i.q, align 8, !tbaa !539
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2201, !nonnull !240, !align !273
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !147 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !543
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !543
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #38
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #34

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #34

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.488") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !543  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !539   ; 3 uses
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
  %i.w = add nsw i32 %.sroa.040.0, -1
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !618
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !618
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !137, !llvm.loop !49

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !137

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !50

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !133
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !539
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !543
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !133
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
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !632 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !632
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
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !2202

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !617
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !133
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.8) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !133
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !618
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !618
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !633
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !147
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !543 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !543
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !2204
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !147
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !2207
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #36

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !543
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits8andRangeILb1EEEvPmPKmS5_ii:bb.a

bb.g:                                             ; preds = %._crit_edge.i
  %i.bj = ashr i32 %4, 6
  %i.bk = and i32 %4, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %notmask.i36.i = shl nsw i64 -1, %i.bl          ; 2 uses
  %i.bm = sext i32 %i.bj to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !147
  %i.bp = and i64 %i.bo, %notmask.i36.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !147
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bm
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !147
  %i.bu = or i64 %i.bt, %notmask.i36.i
  %i.bv = xor i64 %i.bu, -1
  %i.bw = and i64 %i.br, %i.bv
  %i.bx = or disjoint i64 %i.bw, %i.bp
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !147
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.552", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !462
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !133
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !464
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !133
  %i.e = load ptr, ptr %1, align 8, !tbaa !466    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !467  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !133
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !466
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !467
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !466
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !467
  %i.t = load i8, ptr %0, align 1, !tbaa !549
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !462
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !469
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !462    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !157
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !157
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !469
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.555) align 8 %2, ptr noundef byval(%class.anon.556) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !682, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !683
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2345
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !2346, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !428
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2347, !nonnull !240, !align !273
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !259
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !612
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !157
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !147
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !147
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2341

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !682, !range !239, !noundef !240
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !683
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !147
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2345
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !2346, !nonnull !240, !align !273
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !428
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2347, !nonnull !240, !align !273
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !259
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !612
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !157
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !147
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !147
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2341

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !685, !range !239, !noundef !240
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !686
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !147
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !428
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !259
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !612
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !428
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !259
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !612
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !157
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !147
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !147
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2342

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !157
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !147
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !147
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !2343

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2344

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !682, !range !239, !noundef !240
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !683
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !147
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2345
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !2346, !nonnull !240, !align !273
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !428
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !2347, !nonnull !240, !align !273
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !259
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !612
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !157
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !147
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !147
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2341

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.557) align 8 %2, ptr noundef byval(%class.anon.558) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !689, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !690
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2354
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2355, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !259
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !612
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !147
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !147
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2348

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !689, !range !239, !noundef !240
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !690
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !147
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !2354
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2355, !nonnull !240, !align !273
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !259
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !612
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !147
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !147
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2348

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !692, !range !239, !noundef !240
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !693
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !259
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !612
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !259 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !612 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !147
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !147
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !147
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !147
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !147
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !147
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !147
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !147
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !147
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2350

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !147
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !147
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2351

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !147
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !147
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2352

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2353

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !689, !range !239, !noundef !240
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !690
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !147
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !2354
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2355, !nonnull !240, !align !273
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !259
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !612
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !147
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !147
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2348

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.561) align 8 %2, ptr noundef byval(%class.anon.562) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

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
  %i.q = load i8, ptr %2, align 8, !tbaa !713, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !714
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !709, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !710, !nonnull !240, !align !273
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !711, !nonnull !240, !align !273
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !428
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !157
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !259
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !259
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !147
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !133
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !133
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2356

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !713, !range !239, !noundef !240
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !714
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !147
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !709, !nonnull !240, !align !273
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !710, !nonnull !240, !align !273
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !711, !nonnull !240, !align !273
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !428
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !157
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !259
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !259
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !147
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !133
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !133
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !2356

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !2357

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !713, !range !239, !noundef !240
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !714
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !147
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !709, !nonnull !240, !align !273
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !710, !nonnull !240, !align !273
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !711, !nonnull !240, !align !273
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !428
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !157
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !259
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !259
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !147
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !133
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !133
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2356

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !716, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !717
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
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
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !709, !nonnull !240, !align !273
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !428
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !157
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !710, !nonnull !240, !align !273
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !259
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !711, !nonnull !240, !align !273
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !259
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !133
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !133
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !2358

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !709, !nonnull !240, !align !273
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !428
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !157
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !710, !nonnull !240, !align !273
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !259
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !711, !nonnull !240, !align !273
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !259
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !147
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !133
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !133
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !2359

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.563) align 8 %2, ptr noundef byval(%class.anon.564) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !696, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !697
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2366
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2367, !nonnull !240, !align !273
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !612
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !147
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2360

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !696, !range !239, !noundef !240
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !697
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !147
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !2366
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2367, !nonnull !240, !align !273
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !612
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !147
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !147
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !2360

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !699, !range !239, !noundef !240
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !700
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !147
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !612
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !147
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !612 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !147 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !147
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !147
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !147
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !2361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !147
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2362

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !147
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2363

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !147
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2364

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2365

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !696, !range !239, !noundef !240
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !697
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !147
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2366
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2367, !nonnull !240, !align !273
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !612
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !147
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !147
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2360

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.566, align 8            ; 7 uses
  %7 = alloca %class.anon.565, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2368

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2371, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2372
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !735
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !736, !nonnull !240, !align !273 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !726  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !727, !range !239
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !728  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !612 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !147
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !147
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !2369

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !729, !range !239, !noundef !240
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !730
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !147
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !147
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !2369

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !731
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_:bb.a
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !740, !range !239, !noundef !240
  %i.s = load ptr, ptr %2, align 8, !tbaa !739
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !740, !range !239, !noundef !240
  %i.al = load ptr, ptr %2, align 8, !tbaa !739
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !147
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !239
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !147 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !740, !range !239, !noundef !240
  %i.bw = load ptr, ptr %2, align 8, !tbaa !739
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !147
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !428, !nonnull !240, !align !476
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !157
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.598) align 8 %2, ptr noundef byval(%class.anon.599) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !621, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !622
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2424
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !612
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !2425, !nonnull !240, !align !273
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !259
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !147
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !147
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2418

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !621, !range !239, !noundef !240
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !622
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !147
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2424
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !612
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !2425, !nonnull !240, !align !273
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !259
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !147
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !147
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2418

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !624, !range !239, !noundef !240
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !625
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !240, !align !273 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !612
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !259
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !612 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !259 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !147
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !147
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !147
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !147
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !147
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !147
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !147
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !2419

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !147
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !147
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2420

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !147
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !147
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2421

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !147
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !147
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2422

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2423

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !621, !range !239, !noundef !240
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !622
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !147
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2424
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !612
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !2425, !nonnull !240, !align !273
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !259
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !147
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !147
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2418

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorIlE12resizeValuesEiiRKSt8optionalIlE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !350
  %i.e = and i8 %i.d, 2
  %.not27 = icmp eq i8 %i.e, 0
  br i1 %.not27, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = shl nsw i64 %i.f, 3                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !373
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox13AlignedBuffer10reallocateIlEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef nonnull %i.a, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !344  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i8, ptr %i.o, align 4, !tbaa !350
  %i.q = and i8 %i.p, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIlEEPT_v.exit, label %bb.g, !prof !137

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs) #45
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIlEEPT_v.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !351
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.s, ptr %i.t, align 8, !tbaa !397
  br label %bb.s

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !406
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIlEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %4, i64 noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !344  ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %4, align 8, !tbaa !344    ; 3 uses
  br i1 %.not28, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store ptr null, ptr %4, align 8, !tbaa !344
  store ptr %i.y, ptr %i.a, align 8, !tbaa !344
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !350
  %i.ab = and i8 %i.aa, 2
  %.not.i13 = icmp eq i8 %i.ab, 0
  br i1 %.not.i13, label %bb.l, label %bb.j, !prof !137

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs) #45
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !351
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !351
  %i.ah = sext i32 %.sroa.speculated to i64
  %i.ai = shl nsw i64 %i.ah, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ag, i64 %i.ai, i1 false)
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !344  ; 7 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !344
  store ptr null, ptr %4, align 8, !tbaa !344
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !344
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.al = atomicrmw sub ptr %i.ak, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.m
  %i.an = load ptr, ptr %.pr, align 8, !tbaa !136
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i.i unwind label %bb.n, !inline_history !6

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !407
  %.not.i.i.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %.pr, align 8, !tbaa !136
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i.i.i
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.n, !inline_history !6

bb.n:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %.thread, %bb.l, %bb.m, %.noexc.i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !344 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !350
  %i.ba = and i8 %i.az, 2
  %.not.i15 = icmp eq i8 %i.ba, 0
  br i1 %.not.i15, label %bb.p, label %bb.o, !prof !137

bb.o:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs) #45
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !351
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !397
  %i.be = load ptr, ptr %4, align 8, !tbaa !344   ; 7 uses
  %.not.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i18, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.noexc.i unwind label %bb.r, !inline_history !6

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !407
  %.not.i.i19 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !136
  %..i.i = select i1 %.not.i.i19, i64 8, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %..i.i
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.r, !inline_history !6

bb.r:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.p, %bb.q, %.noexc.i
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !728 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.ao, align 1, !range !239
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.pre10, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !147
  %i.bi = and i64 %i.be, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.ap, align 1, !tbaa !729, !range !239, !noundef !240 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !731
  %i.bo = sext i32 %i.az to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !157
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !147
  %i.bv = and i64 %i.br, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not.i7.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !147
  %i.bz = and i64 %i.by, 1
  %.not.i6.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !728
  br label %bb.l

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %.split.i
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !728 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cc = phi ptr [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.pre = load i8, ptr %i.ap, align 1, !tbaa !729, !range !239
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cd = phi i8 [ %i.bl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.ce = phi ptr [ %i.ca, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !730
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !731
  %i.ci = sext i32 %i.az to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !157
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cl = phi ptr [ %i.ce, %bb.n ], [ %i.ce, %bb.m ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.ck, %bb.n ], [ %i.cg, %bb.m ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.az, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cm = sext i32 %.0.i.i.i to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !397
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %indvars.iv
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !147
  %i.cr = load ptr, ptr %i.at, align 8, !tbaa !259 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i
  %i.cs = trunc i64 %indvars.iv to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = lshr i64 %indvars.iv, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !133
  %i.cz = or i8 %i.cy, %i.cu
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !133
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i, %.split.i
  %i.da = load ptr, ptr %i.at, align 8, !tbaa !259
  %i.db = and i64 %indvars.iv, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !133
  %i.de = lshr i64 %indvars.iv, 3
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !133
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !133
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !2505

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !265
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !263
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !246
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.607) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.608) align 8 %2, ptr noundef byval(%class.anon.609) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !747, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !748
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2510
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !2511, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !428
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2512, !nonnull !240, !align !273
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !259
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !397
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !157
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !147
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !147
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2506

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !747, !range !239, !noundef !240
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !748
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !147
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2510
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !2511, !nonnull !240, !align !273
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !428
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2512, !nonnull !240, !align !273
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !259
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !397
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !157
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !147
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !147
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2506

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !750, !range !239, !noundef !240
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !751
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !147
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !428
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !259
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !397
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !428
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !259
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !397
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !157
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !147
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !147
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2507

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !157
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !147
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !147
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !2508

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2509

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !747, !range !239, !noundef !240
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !748
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !147
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2510
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !2511, !nonnull !240, !align !273
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !428
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !2512, !nonnull !240, !align !273
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !259
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !397
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !157
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !147
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !147
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2506

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.610) align 8 %2, ptr noundef byval(%class.anon.611) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !754, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !755
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2519
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2520, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !259
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !397
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !147
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !147
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2513

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !754, !range !239, !noundef !240
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !755
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !147
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !2519
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2520, !nonnull !240, !align !273
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !259
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !397
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !147
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !147
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2513

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !757, !range !239, !noundef !240
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !758
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !259
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !397
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !259 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !397 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !147
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !147
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !147
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !147
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !147
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !147
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !147
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !147
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !147
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2515

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !147
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !147
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2516

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !147
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !147
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2517

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2518

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !754, !range !239, !noundef !240
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !755
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !147
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !2519
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2520, !nonnull !240, !align !273
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !259
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !397
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !147
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !147
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2513

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.612) align 8 %2, ptr noundef byval(%class.anon.613) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

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
  %i.q = load i8, ptr %2, align 8, !tbaa !773, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !774
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !769, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !770, !nonnull !240, !align !273
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !771, !nonnull !240, !align !273
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !428
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !157
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !259
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !259
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !147
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !133
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !133
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2521

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !773, !range !239, !noundef !240
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !774
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !147
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !769, !nonnull !240, !align !273
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !770, !nonnull !240, !align !273
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !771, !nonnull !240, !align !273
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !428
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !157
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !259
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !259
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !147
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !133
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !133
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !2521

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !2522

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !773, !range !239, !noundef !240
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !774
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !147
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !769, !nonnull !240, !align !273
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !770, !nonnull !240, !align !273
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !771, !nonnull !240, !align !273
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !428
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !157
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !259
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !259
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !147
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !133
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !133
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2521

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !776, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !777
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
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
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !769, !nonnull !240, !align !273
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !428
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !157
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !770, !nonnull !240, !align !273
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !259
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !771, !nonnull !240, !align !273
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !259
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !133
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !133
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !2523

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !769, !nonnull !240, !align !273
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !428
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !157
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !770, !nonnull !240, !align !273
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !259
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !771, !nonnull !240, !align !273
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !259
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !147
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !133
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !133
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !2524

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.614) align 8 %2, ptr noundef byval(%class.anon.615) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !761, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !762
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2531
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2532, !nonnull !240, !align !273
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !397
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !147
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2525

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !761, !range !239, !noundef !240
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !762
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !147
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !2531
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2532, !nonnull !240, !align !273
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !397
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !147
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !147
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !2525

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !764, !range !239, !noundef !240
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !765
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !147
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !397
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !147
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !397 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !147 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !147
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !147
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !147
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !2526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !147
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2527

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !147
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2528

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !147
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2529

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2530

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !761, !range !239, !noundef !240
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !762
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !147
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2531
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2532, !nonnull !240, !align !273
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !397
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !147
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !147
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2525

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.617, align 8            ; 7 uses
  %7 = alloca %class.anon.616, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2533

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2536, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2537
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !781
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !782, !nonnull !240, !align !273 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !726  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !727, !range !239
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !728  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !397 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !147
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !147
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !2534

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !729, !range !239, !noundef !240
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !730
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !147
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !147
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !2534

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !731
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10FlatVectorIlE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE:bb.a
bb.p:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5clearEv.exit
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.bn)
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit: ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.i.i.i, %bb.p
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !552 ; 2 uses
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !552 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit, %.lr.ph
  %.sroa.05.08 = phi ptr [ %i.dn, %.lr.ph ], [ %i.de, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.dh = load ptr, ptr %.sroa.05.08, align 8, !tbaa !344 ; 2 uses
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !618
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !2573
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.di) ; 2 uses
  %i.dk = lshr i64 %i.dj, 24
  %i.dl = or i64 %i.dk, 128
  %i.dm = add i64 %i.dj, %i.di
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.488") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 %i.dm, i64 %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !2573
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !2573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.df
  br i1 %i.do, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIlEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !255
  %i.b = load ptr, ptr %3, align 8, !tbaa !344
  store ptr %i.b, ptr %7, align 8, !tbaa !344
  store ptr null, ptr %3, align 8, !tbaa !344
  %i.c = load i32, ptr %4, align 4, !tbaa !157
  %i.d = load ptr, ptr %5, align 8, !tbaa !344
  store ptr %i.d, ptr %8, align 8, !tbaa !344
  store ptr null, ptr %5, align 8, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !306
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !306
  invoke void @_ZN8facebook5velox10FlatVectorIlEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIlEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.g = load ptr, ptr %8, align 8, !tbaa !344    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !6

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !407
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !136
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !6

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !344    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !6

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !407
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !136
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !6

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #38
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #38
  resume { ptr, i32 } %i.ai
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.633) align 8 %2, ptr noundef byval(%class.anon.634) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !555, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !556
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2580
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !397
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !2581, !nonnull !240, !align !273
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !259
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !147
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !147
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2574

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !555, !range !239, !noundef !240
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !556
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !147
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2580
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !397
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !2581, !nonnull !240, !align !273
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !259
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !147
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !147
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2574

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !559, !range !239, !noundef !240
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !560
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !240, !align !273 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !397
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !259
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !397 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !259 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !147
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !147
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !147
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !147
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !147
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !147
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !147
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !147
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !2575

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !147
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !147
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2576

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !147
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !147
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2577

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !147
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !147
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2578

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2579

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !555, !range !239, !noundef !240
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !556
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !147
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2580
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !397
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !2581, !nonnull !240, !align !273
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !259
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !147
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !147
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2574

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #37

declare void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #10

declare void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_12_GLOBAL__N_133TimestampWithTimeZoneCastOperator6castToERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSF_IS8_EEUliE_ZNS4_22applyToSelectedNoThrowISN_EEvSE_T_EUlSP_E_EEvSE_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.412", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2587, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2588
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_12_GLOBAL__N_133TimestampWithTimeZoneCastOperator6castToERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS6_EEUliE_ZNS2_22applyToSelectedNoThrowISL_EEvSC_T_EUlSN_E_EEvSC_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit
  %.025 = phi i64 [ %i.k, %.preheader ], [ %i.cg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_12_GLOBAL__N_133TimestampWithTimeZoneCastOperator6castToERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS6_EEUliE_ZNS2_22applyToSelectedNoThrowISL_EEvSC_T_EUlSN_E_EEvSC_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit ] ; 3 uses
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.025, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.m, %i.q               ; 4 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !2589 ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !2590, !nonnull !240, !align !273 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !272, !nonnull !240, !align !273
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !261  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(136) %i.v, i32 noundef %i.r)
          to label %.noexc unwind label %bb.f, !inline_history !3

.noexc:                                           ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !274, !nonnull !240, !align !273
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !147
  %i.ad = add nsw i64 %i.ac, %i.z                 ; 3 uses
  %i.ae = add i64 %i.ad, -2251799813685248
  %i.af = icmp ult i64 %i.ae, -4503599627370496
  br i1 %i.af, label %bb.c, label %_ZZNK8facebook5velox12_GLOBAL__N_133TimestampWithTimeZoneCastOperator6castToERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSC_IS3_EENKUliE_clEi.exit, !prof !248

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !2591
  %.sroa.03.0.insert.ext.i.i.i = zext i64 %i.ad to i128
  store i128 %.sroa.03.0.insert.ext.i.i.i, ptr %3, align 16, !noalias !2591
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.158, i64 37, i64 3, ptr nonnull %3)
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !2591
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4packElsE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.158) #45
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc11
  unreachable

bb.e:                                             ; preds = %.noexc11
  %i.ag = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ah = load ptr, ptr %4, align 8, !tbaa !132   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.o
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !133
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.body

_ZZNK8facebook5velox12_GLOBAL__N_133TimestampWithTimeZoneCastOperator6castToERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSC_IS3_EENKUliE_clEi.exit: ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !275, !nonnull !240, !align !273
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !219
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !254
  %i.aq = shl nsw i64 %i.ad, 12
  %i.ar = and i16 %i.ap, 4095
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = or disjoint i64 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !276, !nonnull !240, !align !273
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !259
  %i.ax = sext i32 %i.r to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  store i64 %i.at, ptr %i.ay, align 8, !tbaa !147
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_12_GLOBAL__N_133TimestampWithTimeZoneCastOperator6castToERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSD_IS6_EEUliE_ZNS2_22applyToSelectedNoThrowISL_EEvSC_T_EUlSN_E_EEvSC_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.az = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.f ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 3 uses
  %i.ba = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.bb = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.bc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.body
  %i.be = call ptr @__cxa_begin_catch(ptr %i.ba) #38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !279 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !132 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !134
  %i.bl = icmp eq i64 %i.bk, 4
  br i1 %i.bl, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !133
  %or.cond.not.i.i.i = icmp eq i8 %i.bm, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !133
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bo, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !133
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.bq, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !133
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bs, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.s, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #45
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %.body
  %i.bt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.bu = icmp eq i32 %i.bb, %i.bt
  br i1 %i.bu, label %bb.i, label %.loopexit19

bb.i:                                             ; preds = %bb.h
  %i.bv = call ptr @__cxa_begin_catch(ptr %i.ba) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.s, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %5, align 8, !tbaa !281
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSD_:bb.a

._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !728 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.ao, align 1, !range !239
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.pre10, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !147
  %i.bi = and i64 %i.be, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.ap, align 1, !tbaa !729, !range !239, !noundef !240 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !731
  %i.bo = sext i32 %i.az to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !157
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !147
  %i.bv = and i64 %i.br, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not.i7.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !147
  %i.bz = and i64 %i.by, 1
  %.not.i6.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !728
  br label %bb.l

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %.split.i
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !728 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cc = phi ptr [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.pre = load i8, ptr %i.ap, align 1, !tbaa !729, !range !239
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cd = phi i8 [ %i.bl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.ce = phi ptr [ %i.ca, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !730
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !731
  %i.ci = sext i32 %i.az to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !157
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cl = phi ptr [ %i.ce, %bb.n ], [ %i.ce, %bb.m ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.ck, %bb.n ], [ %i.cg, %bb.m ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.az, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cm = sext i32 %.0.i.i.i to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load ptr, ptr %i.av, align 8, !tbaa !343
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load <2 x i64>, ptr %i.cn, align 8, !tbaa !147
  store <2 x i64> %i.cq, ptr %i.cp, align 8, !tbaa !147
  %i.cr = load ptr, ptr %i.at, align 8, !tbaa !259 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSC_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i
  %i.cs = trunc i64 %indvars.iv to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = lshr i64 %indvars.iv, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !133
  %i.cz = or i8 %i.cy, %i.cu
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !133
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSC_.exit

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i, %.split.i
  %i.da = load ptr, ptr %i.at, align 8, !tbaa !259
  %i.db = and i64 %indvars.iv, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !133
  %i.de = lshr i64 %indvars.iv, 3
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !133
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !133
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSC_.exit

_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSC_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !3039

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !265
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !263
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !246
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSE_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.743) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSC_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.744) align 8 %2, ptr noundef byval(%class.anon.745) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !844, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !845
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !3044
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !3045, !nonnull !240, !align !273
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !3046, !nonnull !240, !align !273
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.au, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !428
  %i.al = or disjoint i64 %i.aj, %i.ad            ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !157
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !786
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !343
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !286
  %i.at = add nsw i64 %.011.i, -1
  %i.au = and i64 %i.at, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.au, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3040

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = sdiv i32 %0, 64                         ; 2 uses
  %i.aw = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i35, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = load i8, ptr %2, align 8, !tbaa !844, !range !239, !noundef !240
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !845
  %i.bf = sext i32 %i.av to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !147
  %i.bi = xor i8 %i.bc, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = and i64 %i.bl, %i.bb                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bm, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i32 %i.av, 6
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !3044
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !3045, !nonnull !240, !align !273
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !3046, !nonnull !240, !align !273
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 160
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bm, %.preheader.i37 ], [ %i.ch, %bb.g ] ; 3 uses
  %i.bw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !428
  %i.by = or disjoint i64 %i.bw, %i.bq            ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !157
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !786
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !343
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !286
  %i.cg = add i64 %.011.i38, -1
  %i.ch = and i64 %i.cg, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.ch, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3040

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ci = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ci, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40
  %i.cj = load i8, ptr %3, align 8, !tbaa !847, !range !239, !noundef !240
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !848
  %i.cm = xor i8 %i.cj, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cs = load ptr, ptr %i.cq, align 8
  %i.ct = load ptr, ptr %i.cp, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 160 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit
  %i.cw = phi i32 [ %i.ci, %.lr.ph ], [ %i.ee, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit ] ; 2 uses
  %i.cx = sdiv i32 %.051, 64                      ; 3 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !147
  %i.db = xor i64 %i.da, %i.co                    ; 2 uses
  switch i64 %i.db, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.dc = shl nsw i32 %i.cx, 6
  %i.dd = sext i32 %i.dc to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.de = shl nsw i32 %i.cx, 6                    ; 2 uses
  %i.df = add nuw i32 %i.de, 64
  %i.dg = sext i32 %i.df to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dh = sext i32 %i.de to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dh, %.lr.ph21.i ], [ %i.dq, %bb.j ] ; 3 uses
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !428
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.020.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !157
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !786
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load ptr, ptr %i.cv, align 8, !tbaa !343
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %.020.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !286
  %i.dq = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dg
  br i1 %i.dr, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit, !llvm.loop !3041

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.db, %.lr.ph.i ], [ %i.ed, %bb.k ] ; 3 uses
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dt = load ptr, ptr %i.ct, align 8, !tbaa !428
  %i.du = or disjoint i64 %i.ds, %i.dd            ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !157
  %i.dx = load ptr, ptr %i.cu, align 8, !tbaa !786
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load ptr, ptr %i.cv, align 8, !tbaa !343
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !286
  %i.ec = add i64 %.01519.i, -1
  %i.ed = and i64 %i.ec, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ed, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !3042

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ee = add nsw i32 %i.cw, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ee, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3043

bb.l:                                             ; preds = %._crit_edge
  %i.ef = ashr i32 %1, 6
  %i.eg = and i32 %1, 63
  %i.eh = zext nneg i32 %i.eg to i64
  %notmask.i42 = shl nsw i64 -1, %i.eh
  %i.ei = xor i64 %notmask.i42, -1
  %i.ej = load i8, ptr %2, align 8, !tbaa !844, !range !239, !noundef !240
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !845
  %i.em = sext i32 %i.ef to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !147
  %i.ep = xor i8 %i.ej, 1
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = sub nsw i64 0, %i.eq
  %i.es = xor i64 %i.eo, %i.er
  %i.et = and i64 %i.es, %i.ei                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.et, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = sext i32 %i.d to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !3044
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !3045, !nonnull !240, !align !273
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !3046, !nonnull !240, !align !273
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 160
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.et, %.preheader.i44 ], [ %i.fn, %bb.m ] ; 3 uses
  %i.fc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !428
  %i.fe = or disjoint i64 %i.fc, %i.ew            ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !157
  %i.fh = load ptr, ptr %i.fa, align 8, !tbaa !786
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [16 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !343
  %i.fl = getelementptr inbounds [16 x i8], ptr %i.fk, i64 %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !286
  %i.fm = add nsw i64 %.011.i45, -1
  %i.fn = and i64 %i.fm, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fn, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3040

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.746) align 8 %2, ptr noundef byval(%class.anon.747) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !851, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !852
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !3051
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !3052, !nonnull !240, !align !273
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !786
  %i.aj = or disjoint i64 %i.ah, %i.ad            ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !343
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !286
  %i.an = add nsw i64 %.011.i, -1
  %i.ao = and i64 %i.an, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3047

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sdiv i32 %0, 64                         ; 2 uses
  %i.aq = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i35, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = load i8, ptr %2, align 8, !tbaa !851, !range !239, !noundef !240
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !852
  %i.az = sext i32 %i.ap to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !147
  %i.bc = xor i8 %i.aw, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, %i.av                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = shl nsw i32 %i.ap, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !3051
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !3052, !nonnull !240, !align !273
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bg, %.preheader.i37 ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !786
  %i.bq = or disjoint i64 %i.bo, %i.bk            ; 2 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !343
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !286
  %i.bu = add i64 %.011.i38, -1
  %i.bv = and i64 %i.bu, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bv, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3047

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bw = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bw, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40
  %i.bx = load i8, ptr %3, align 8, !tbaa !854, !range !239, !noundef !240
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !855
  %i.ca = xor i8 %i.bx, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.cd, align 8
  %i.cg = load ptr, ptr %i.ce, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 160 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit
  %i.ci = phi i32 [ %i.bw, %.lr.ph ], [ %i.di, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit ] ; 2 uses
  %i.cj = sdiv i32 %.051, 64                      ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !147
  %i.cn = xor i64 %i.cm, %i.cc                    ; 2 uses
  switch i64 %i.cn, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.co = shl nsw i32 %i.cj, 6
  %i.cp = sext i32 %i.co to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cr = add nuw i32 %i.cq, 64
  %i.cs = sext i32 %i.cr to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ct = sext i32 %i.cq to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ct, %.lr.ph21.i ], [ %i.cy, %bb.j ] ; 3 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !786
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.020.i
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !343
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %.020.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !tbaa.struct !286
  %i.cy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cs
  br i1 %i.cz, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit, !llvm.loop !3048

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.dh, %bb.k ] ; 3 uses
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.db = load ptr, ptr %i.cg, align 8, !tbaa !786
  %i.dc = or disjoint i64 %i.da, %i.cp            ; 2 uses
  %i.dd = getelementptr inbounds [16 x i8], ptr %i.db, i64 %i.dc
  %i.de = load ptr, ptr %i.ch, align 8, !tbaa !343
  %i.df = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !tbaa.struct !286
  %i.dg = add i64 %.01519.i, -1
  %i.dh = and i64 %i.dg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.dh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !3049

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.di = add nsw i32 %i.ci, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.di, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3050

bb.l:                                             ; preds = %._crit_edge
  %i.dj = ashr i32 %1, 6
  %i.dk = and i32 %1, 63
  %i.dl = zext nneg i32 %i.dk to i64
  %notmask.i42 = shl nsw i64 -1, %i.dl
  %i.dm = xor i64 %notmask.i42, -1
  %i.dn = load i8, ptr %2, align 8, !tbaa !851, !range !239, !noundef !240
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !852
  %i.dq = sext i32 %i.dj to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !147
  %i.dt = xor i8 %i.dn, 1
  %i.du = zext nneg i8 %i.dt to i64
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = xor i64 %i.ds, %i.dv
  %i.dx = and i64 %i.dw, %i.dm                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dx, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ea = sext i32 %i.d to i64
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !3051
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !3052, !nonnull !240, !align !273
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 160
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dx, %.preheader.i44 ], [ %i.el, %bb.m ] ; 3 uses
  %i.ee = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !786
  %i.eg = or disjoint i64 %i.ee, %i.ea            ; 2 uses
  %i.eh = getelementptr inbounds [16 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !343
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.ei, i64 %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !tbaa.struct !286
  %i.ek = add nsw i64 %.011.i45, -1
  %i.el = and i64 %i.ek, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.el, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3047

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.748) align 8 %2, ptr noundef byval(%class.anon.749) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

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
  %i.q = load i8, ptr %2, align 8, !tbaa !870, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !871
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !866, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !867, !nonnull !240, !align !273
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !868, !nonnull !240, !align !273
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !428
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !157
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !259
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !259
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !147
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !133
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i

_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !133
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3053

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !870, !range !239, !noundef !240
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !871
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !147
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !866, !nonnull !240, !align !273
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !867, !nonnull !240, !align !273
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !868, !nonnull !240, !align !273
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !428
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !157
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !259
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !259
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !147
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !133
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40

_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !133
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !3053

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !3054

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !870, !range !239, !noundef !240
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !871
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !147
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !866, !nonnull !240, !align !273
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !867, !nonnull !240, !align !273
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !868, !nonnull !240, !align !273
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !428
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !157
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !259
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !259
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !147
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !133
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49

_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !133
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3053

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i49, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !873, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !874
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
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
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !866, !nonnull !240, !align !273
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !428
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !157
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !867, !nonnull !240, !align !273
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !259
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !868, !nonnull !240, !align !273
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !259
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !133
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit

_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !133
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !3055

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !866, !nonnull !240, !align !273
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !428
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !157
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !867, !nonnull !240, !align !273
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !259
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !868, !nonnull !240, !align !273
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !259
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !147
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !133
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit

_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !133
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !3056

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSC_.exit, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSC_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISF_EEvSH_iibSI_EUliE_EEviiSI_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.750) align 8 %2, ptr noundef byval(%class.anon.751) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !858, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !859
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !3061
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !3062, !nonnull !240, !align !273
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.am, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !343
  %i.aj = getelementptr [16 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr [16 x i8], ptr %i.aj, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !286
  %i.al = add nsw i64 %.011.i, -1
  %i.am = and i64 %i.al, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.am, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3057

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = sdiv i32 %0, 64                         ; 2 uses
  %i.ao = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ap
  %i.aq = xor i64 %notmask.i.i35, -1
  %i.ar = sub nsw i32 64, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %i.aq, %i.as
  %i.au = load i8, ptr %2, align 8, !tbaa !858, !range !239, !noundef !240
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !859
  %i.ax = sext i32 %i.an to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !147
  %i.ba = xor i8 %i.au, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = xor i64 %i.az, %i.bc
  %i.be = and i64 %i.bd, %i.at                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.be, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = shl nsw i32 %i.an, 6
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = sext i32 %i.bg to i64
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !3061
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !3062, !nonnull !240, !align !273
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.be, %.preheader.i37 ], [ %i.br, %bb.g ] ; 3 uses
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !343
  %i.bo = getelementptr [16 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = getelementptr [16 x i8], ptr %i.bo, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !286
  %i.bq = add i64 %.011.i38, -1
  %i.br = and i64 %i.bq, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.br, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3057

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bs = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bs, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bt = load i8, ptr %3, align 8, !tbaa !861, !range !239, !noundef !240
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !862
  %i.bw = xor i8 %i.bt, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = load ptr, ptr %i.bz, align 8
  %i.cc = load ptr, ptr %i.ca, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 160 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ce = phi i32 [ %i.bs, %.lr.ph ], [ %i.db, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cf = sdiv i32 %.051, 64                      ; 3 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !147
  %i.cj = xor i64 %i.ci, %i.by                    ; 2 uses
  switch i64 %i.cj, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.ck = shl nsw i32 %i.cf, 6
  %i.cl = sext i32 %i.ck to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cm = shl nsw i32 %i.cf, 6                    ; 2 uses
  %i.cn = add nuw i32 %i.cm, 64
  %i.co = sext i32 %i.cn to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.cp = sext i32 %i.cm to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.cp, %.lr.ph21.i ], [ %i.ct, %bb.j ] ; 2 uses
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !343
  %sext.i = shl i64 %.020.i, 32
  %i.cr = ashr exact i64 %sext.i, 28
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !286
  %i.ct = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.co
  br i1 %i.cu, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !3058

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %i.da, %bb.k ] ; 3 uses
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !343
  %i.cx = getelementptr [16 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = getelementptr [16 x i8], ptr %i.cx, i64 %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !286
  %i.cz = add i64 %.01519.i, -1
  %i.da = and i64 %i.cz, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.da, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !3059

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.db = add nsw i32 %i.ce, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.db, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3060

bb.l:                                             ; preds = %._crit_edge
  %i.dc = ashr i32 %1, 6
  %i.dd = and i32 %1, 63
  %i.de = zext nneg i32 %i.dd to i64
  %notmask.i42 = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i42, -1
  %i.dg = load i8, ptr %2, align 8, !tbaa !858, !range !239, !noundef !240
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !859
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !147
  %i.dm = xor i8 %i.dg, 1
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = xor i64 %i.dl, %i.do
  %i.dq = and i64 %i.dp, %i.df                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dq, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dt = sext i32 %i.d to i64
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !3061
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !3062, !nonnull !240, !align !273
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 160
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dq, %.preheader.i44 ], [ %i.ec, %bb.m ] ; 3 uses
  %i.dx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !343
  %i.dz = getelementptr [16 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = getelementptr [16 x i8], ptr %i.dz, i64 %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !286
  %i.eb = add nsw i64 %.011.i45, -1
  %i.ec = and i64 %i.eb, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.ec, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3057

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.753, align 8            ; 7 uses
  %7 = alloca %class.anon.752, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3063

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSF_EUlimE_ZNS3_ISG_EEvSI_iibSF_EUliE_EEviiSF_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !3066, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3067
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !878
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !879, !nonnull !240, !align !273 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !726  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !727, !range !239
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 160 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !728  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !343 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.ad
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !147
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !147
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !3064

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !729, !range !239, !noundef !240
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !730
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.am
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us23

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us23: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us23, %.preheader.split.us.split.split.us
  %.011.us.us24 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.as, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us23 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us24, i1 true)
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.ap
  %i.aq = load <2 x i64>, ptr %i.an, align 8, !tbaa !147
  store <2 x i64> %i.aq, ptr %gep, align 8, !tbaa !147
  %i.ar = add i64 %.011.us.us24, -1
  %i.as = and i64 %i.ar, %.011.us.us24            ; 2 uses
  %.not10.us.us31 = icmp eq i64 %i.as, 0
  br i1 %.not10.us.us31, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us23, !llvm.loop !3064

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !731
  %i.au = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.be, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.aw = or disjoint i64 %i.av, %i.au            ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE:bb.a
  %i.dj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.di) ; 2 uses
  %i.dk = lshr i64 %i.dj, 24
  %i.dl = or i64 %i.dk, 128
  %i.dm = add i64 %i.dj, %i.di
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.488") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 %i.dm, i64 %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !3103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !3103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.df
  br i1 %i.do, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_9TimestampEED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_9TimestampEE6resizeEib(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorINS0_9TimestampEE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.77) #45
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorINS0_9TimestampEE8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_9TimestampEEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSJ_St6vectorISJ_SaISJ_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats.151", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !255
  %i.b = load ptr, ptr %3, align 8, !tbaa !344
  store ptr %i.b, ptr %7, align 8, !tbaa !344
  store ptr null, ptr %3, align 8, !tbaa !344
  %i.c = load i32, ptr %4, align 4, !tbaa !157
  %i.d = load ptr, ptr %5, align 8, !tbaa !344
  store ptr %i.d, ptr %8, align 8, !tbaa !344
  store ptr null, ptr %5, align 8, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.e, align 8, !tbaa !787
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.f, align 8, !tbaa !787
  invoke void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.g = load ptr, ptr %8, align 8, !tbaa !344    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !6

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !407
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !136
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !6

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !344    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !6

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !407
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !136
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !6

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #38
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #38
  resume { ptr, i32 } %i.ai
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.771) align 8 %2, ptr noundef byval(%class.anon.772) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !791, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !792
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !3108
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !3109, !nonnull !240, !align !273
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !343
  %i.aj = or disjoint i64 %i.ah, %i.ad            ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !786
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !286
  %i.an = add nsw i64 %.011.i, -1
  %i.ao = and i64 %i.an, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3104

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sdiv i32 %0, 64                         ; 2 uses
  %i.aq = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i35, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = load i8, ptr %2, align 8, !tbaa !791, !range !239, !noundef !240
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !792
  %i.az = sext i32 %i.ap to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !147
  %i.bc = xor i8 %i.aw, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, %i.av                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = shl nsw i32 %i.ap, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !3108
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !3109, !nonnull !240, !align !273
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bg, %.preheader.i37 ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bq = or disjoint i64 %i.bo, %i.bk            ; 2 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !786
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !286
  %i.bu = add i64 %.011.i38, -1
  %i.bv = and i64 %i.bu, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bv, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3104

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bw = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bw, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bx = load i8, ptr %3, align 8, !tbaa !795, !range !239, !noundef !240
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !796
  %i.ca = xor i8 %i.bx, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 160 ; 2 uses
  %i.ch = load ptr, ptr %i.cd, align 8, !nonnull !240, !align !273 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ci = phi i32 [ %i.bw, %.lr.ph ], [ %i.dj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cj = sdiv i32 %.051, 64                      ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !147
  %i.cn = xor i64 %i.cm, %i.cc                    ; 2 uses
  switch i64 %i.cn, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.co = shl nsw i32 %i.cj, 6
  %i.cp = sext i32 %i.co to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cr = add nuw i32 %i.cq, 64
  %i.cs = sext i32 %i.cr to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ct = sext i32 %i.cq to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ct, %.lr.ph21.i ], [ %i.cz, %bb.j ] ; 2 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !343
  %sext.i = shl i64 %.020.i, 32
  %i.cv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !786
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !286
  %i.cz = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cs
  br i1 %i.da, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !3105

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.di, %bb.k ] ; 3 uses
  %i.db = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dc = load ptr, ptr %i.cg, align 8, !tbaa !343
  %i.dd = or disjoint i64 %i.db, %i.cp            ; 2 uses
  %i.de = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !786
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !286
  %i.dh = add i64 %.01519.i, -1
  %i.di = and i64 %i.dh, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.di, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !3106

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dj = add nsw i32 %i.ci, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dj, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3107

bb.l:                                             ; preds = %._crit_edge
  %i.dk = ashr i32 %1, 6
  %i.dl = and i32 %1, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i42 = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i42, -1
  %i.do = load i8, ptr %2, align 8, !tbaa !791, !range !239, !noundef !240
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !792
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !147
  %i.du = xor i8 %i.do, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = sext i32 %i.d to i64
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !3108
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 160
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !3109, !nonnull !240, !align !273
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dy, %.preheader.i44 ], [ %i.em, %bb.m ] ; 3 uses
  %i.ef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !343
  %i.eh = or disjoint i64 %i.ef, %i.eb            ; 2 uses
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !786
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !286
  %i.el = add nsw i64 %.011.i45, -1
  %i.em = and i64 %i.el, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.em, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3104

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_9TimestampEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox9Timestamp8toStringB5cxx11ERKNS0_24TimestampToStringOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.412", align 16 ; 4 uses
  %4 = alloca %struct.tm, align 8                 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = load i64, ptr %1, align 8, !tbaa !290
  %i.b = call noundef zeroext i1 @_ZN8facebook5velox9Timestamp18epochToCalendarUtcElR2tm(i64 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(56) %4)
  br i1 %i.b, label %bb.e, label %bb.b, !prof !137

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !3112
  %i.c = load i64, ptr %1, align 8, !tbaa !147, !noalias !3112
  %.sroa.03.0.insert.ext.i = zext i64 %i.c to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !3112
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.210, i64 33, i64 3, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !3112
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9Timestamp8toStringB5cxx11ERKNS0_24TimestampToStringOptionsEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.210) #45
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !132    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !133
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.k, align 8, !tbaa !134
  store i8 0, ptr %i.j, align 8, !tbaa !133
  %i.l = invoke noundef i64 @_ZN8facebook5velox18getMaxStringLengthERKNS0_24TimestampToStringOptionsE(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.r       ; 6 uses

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !134  ; 7 uses
  %i.n = icmp ult i64 %i.m, %i.l
  br i1 %i.n, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.o = sub nuw i64 %i.l, %i.m                   ; 4 uses
  %i.p = sub i64 9223372036854775807, %i.m
  %i.q = icmp ult i64 %i.p, %i.o
  br i1 %i.q, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #45
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.t = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.t)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.u = load i64, ptr %i.j, align 8, !tbaa !133
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.v = phi i64 [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.l, %i.v
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m, i64 noundef 0, ptr noundef null, i64 noundef %i.o)
          to label %.noexc10 unwind label %bb.r

.noexc10:                                         ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !132
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %.noexc10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.w = phi ptr [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %.noexc10 ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.o, 1
  br i1 %cond.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  store i8 0, ptr %i.x, align 1, !tbaa !133
  br label %.sink.split.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.o, i1 false)
  br label %.sink.split.i.i

bb.l:                                             ; preds = %bb.f
  %i.y = icmp ult i64 %i.l, %i.m
  br i1 %i.y, label %.sink.split.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

.sink.split.i.i:                                  ; preds = %bb.l, %bb.k, %bb.j
  store i64 %i.l, ptr %i.k, align 8, !tbaa !134
  %i.z = load ptr, ptr %0, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.l
  store i8 0, ptr %i.aa, align 1, !tbaa !133
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %.sink.split.i.i, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !291
  %i.ad = load ptr, ptr %0, align 8, !tbaa !132
  %i.ae = invoke { i64, ptr } @_ZN8facebook5velox9Timestamp14tmToStringViewERK2tmmRKNS0_24TimestampToStringOptionsEPc(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ad)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.af = extractvalue { i64, ptr } %i.ae, 0
  %i.ag = and i64 %i.af, 4294967295               ; 6 uses
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !134 ; 6 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i12, label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i12: ; preds = %bb.m
  %i.aj = sub nuw nsw i64 %i.ag, %i.ah            ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.j
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i12
  %i.am = icmp samesign ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i12
  %i.an = load i64, ptr %i.j, align 8, !tbaa !133
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i19
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i19 ]
  %.not.i.i.i.i15 = icmp ugt i64 %i.ag, %i.ao
  br i1 %.not.i.i.i.i15, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i16

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ah, i64 noundef 0, ptr noundef null, i64 noundef %i.aj)
          to label %.noexc21 unwind label %bb.s

.noexc21:                                         ; preds = %bb.n
  %.pre.i.i18 = load ptr, ptr %0, align 8, !tbaa !132
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i16: ; preds = %.noexc21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i14
  %i.ap = phi ptr [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i14 ], [ %.pre.i.i18, %.noexc21 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  %cond.i.i.i.i17 = icmp eq i64 %i.aj, 1
  br i1 %cond.i.i.i.i17, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i16
  store i8 0, ptr %i.aq, align 1, !tbaa !133
  br label %.sink.split.i.i11

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i16
  call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.aj, i1 false)
  br label %.sink.split.i.i11

bb.q:                                             ; preds = %bb.m
  %i.ar = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ar, label %.sink.split.i.i11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit22

.sink.split.i.i11:                                ; preds = %bb.q, %bb.p, %bb.o
  store i64 %i.ag, ptr %i.k, align 8, !tbaa !134
  %i.as = load ptr, ptr %0, align 8, !tbaa !132
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ag
  store i8 0, ptr %i.at, align 1, !tbaa !133
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit22: ; preds = %.sink.split.i.i11, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18clearStringBuffersEv:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !446    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !447  ; 2 uses
  %.not16 = icmp eq ptr %i.a, %i.c
  br i1 %.not16, label %._crit_edge18, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01417 = phi ptr [ %i.a, %.preheader.lr.ph ], [ %i.j, %._crit_edge ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01417, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !443
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.01417, i64 4
  br label %bb.b

._crit_edge18:                                    ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.01417, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge18, label %.preheader

bb.b:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit ] ; 3 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !442
  %i.l = add nsw i32 %i.k, %.015                  ; 2 uses
  %i.m = load i32, ptr %.01417, align 4, !tbaa !441
  %i.n = add nsw i32 %i.m, %.015                  ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !901  ; 4 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !3464, !nonnull !240, !align !273
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !257  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(94) %i.q, i32 noundef %i.n), !inline_history !3462
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !345
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.o, i32 noundef %i.x, i1 noundef zeroext true)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !344  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !350
  %i.ab = and i8 %i.aa, 2
  %.not.i3.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i3.i.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, label %bb.d, !prof !137

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #45
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !351
  %i.ae = zext i32 %i.l to i64                    ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !133
  %i.ai = and i64 %i.ae, 7
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !133
  %i.al = and i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.ag, align 1, !tbaa !133
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit

bb.e:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !3465, !nonnull !240, !align !273
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !897 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !3464, !nonnull !240, !align !273
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !257 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(94) %i.ap, i32 noundef %i.n), !inline_history !3462
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !136
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(208) %i.an, i32 noundef %i.at), !inline_history !3462 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !133
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.o, i32 noundef %i.l, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  br label %_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit

_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E_clIiiEEDaSF_SG_.exit: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, %bb.e
  %i.ay = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.az = load i32, ptr %i.f, align 4, !tbaa !443
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !3463
}

declare void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef) local_unnamed_addr #1

declare void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, i64, ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) local_unnamed_addr #39 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.268", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair.488", align 8    ; 4 uses
  %5 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %6 = alloca %"class.std::optional.876", align 1 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.875", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.boost::intrusive_ptr", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !552  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !552  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aj
  %i.l = icmp eq ptr %.sroa.0106.3, %.sroa.12.1
  br i1 %i.l, label %.loopexit, label %bb.ak

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.0106.0213 = phi ptr [ null, %.lr.ph ], [ %.sroa.0106.3, %bb.aj ] ; 13 uses
  %.sroa.12.0212 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %bb.aj ] ; 9 uses
  %.sroa.19.0211 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.3, %bb.aj ] ; 8 uses
  %.sroa.0103.0210 = phi ptr [ %i.d, %.lr.ph ], [ %i.ee, %bb.aj ] ; 10 uses
  %i.m = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !344 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef %1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !344 ; 3 uses
  %i.s = load i64, ptr %i.i, align 8, !tbaa !543  ; 2 uses
  %i.t = icmp ult i64 %i.s, 256
  br i1 %i.t, label %.loopexit131, label %bb.e, !prof !248

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.u) ; 2 uses
  %i.w = lshr i64 %i.v, 24
  %i.x = or i64 %i.w, 128                         ; 3 uses
  %i.y = add i64 %i.v, %i.u                       ; 2 uses
  %i.z = shl nuw nsw i64 %i.x, 1
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = trunc nuw i64 %i.x to i8
  %i.ac = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ae = and i64 %i.s, 255                       ; 2 uses
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !539
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.023.i39.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.ba, %bb.i ]
  %.025.i38.i.i.i = phi i64 [ %i.y, %bb.e ], [ %i.bb, %bb.i ] ; 2 uses
  %i.ah = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i.i, i64 range(i64 0, 256) %i.ae)
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.am = icmp eq <16 x i8> %i.al, %i.ad
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = and i16 %i.an, 16383
  %i.ap = zext nneg i16 %i.ao to i32
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ar = extractelement <16 x i8> %i.al, i64 15
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.sroa.012.0.i.i.i = phi i32 [ %i.ap, %bb.f ], [ %i.au, %bb.g ] ; 4 uses
  %.not.i.i.i = icmp eq i32 %.sroa.012.0.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i
  %i.as = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i.i, i1 true)
  %i.at = add nsw i32 %.sroa.012.0.i.i.i, -1
  %i.au = and i32 %i.at, %.sroa.012.0.i.i.i
  %i.av = zext nneg i32 %i.as to i64              ; 3 uses
  call void @llvm.assume(i1 %i.aq)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !618
  %i.ay = icmp eq ptr %i.r, %i.ax
  br i1 %i.ay, label %bb.j, label %.critedge.i.i.i.i, !prof !137, !llvm.loop !49

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.az = icmp eq i8 %i.ar, 0
  br i1 %i.az, label %.loopexit131, label %bb.i, !prof !137

bb.i:                                             ; preds = %bb.h
  %i.ba = add i64 %.023.i39.i.i.i, -1             ; 2 uses
  %i.bb = add i64 %i.aa, %.025.i38.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i, label %.loopexit131, label %bb.f, !llvm.loop !50

bb.j:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.av
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr nonnull %i.bc, i64 %i.av, i64 %i.y, i64 %i.x)
          to label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit unwind label %bb.o

.loopexit131:                                     ; preds = %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store ptr %i.r, ptr %i.a, align 8, !tbaa !618
  %i.bd = invoke noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %.loopexit131
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !3482
  store i64 %i.bd, ptr %7, align 16, !tbaa !133, !alias.scope !3483, !noalias !3482
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.be, align 16, !tbaa !133, !alias.scope !3483, !noalias !3482
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.218, i64 67, i64 20, ptr nonnull %7)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !3482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.218) #45
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.o:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body74

bb.p:                                             ; preds = %.loopexit131
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn52 = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %8, align 8, !tbaa !132   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !133
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn54 = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn52, %bb.r ], [ %i.bj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %.body74

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  %i.bp = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !344, !noalias !3484, !nonnull !240, !noundef !240
  store ptr null, ptr %9, align 8, !tbaa !344, !alias.scope !3484
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !374, !noalias !3484
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38, !noalias !3484
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !3484
  store i8 0, ptr %i.j, align 1, !tbaa !3486, !noalias !3484
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.br, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i unwind label %bb.t, !noalias !3484

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.bs = load ptr, ptr %5, align 8, !tbaa !344, !noalias !3484 ; 4 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !344, !alias.scope !3484
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.pre15.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !374, !noalias !3484
  %.pre.i = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !344, !noalias !3484
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !3484
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !3484
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !136, !noalias !3484
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !3484
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef %.pre.i, i64 noundef %.pre15.i)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge unwind label %bb.u, !noalias !3484

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %.pre = load ptr, ptr %.sroa.0103.0210, align 8, !tbaa !344 ; 3 uses
  %.pre270 = load ptr, ptr %9, align 8, !tbaa !344 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !351 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre270, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !351 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !374 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0212, %.sroa.19.0211
  br i1 %.not.i.i, label %bb.v, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread

bb.t:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !3484
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !3484
  br label %.body

bb.u:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit.thread: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  store ptr %i.bx, ptr %.sroa.12.0212, align 8, !tbaa !410
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !410
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx, align 8, !tbaa !147
  %.sroa.12.2299 = getelementptr inbounds nuw i8, ptr %.sroa.12.0212, i64 24
  store ptr null, ptr %9, align 8, !tbaa !344
  store ptr %.pre270, ptr %.sroa.0103.0210, align 8, !tbaa !344
  br label %bb.z

bb.v:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i._ZN8facebook5velox13AlignedBuffer4copyIcEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit_crit_edge
  %i.ce = ptrtoint ptr %.sroa.12.0212 to i64
  %i.cf = ptrtoint ptr %.sroa.0106.0213 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.w, label %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #45
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.ci = sdiv exact i64 %i.cg, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 384307168202282325)
  %i.cm = select i1 %i.ck, i64 384307168202282325, i64 %i.cl ; 3 uses
  %.not.i.i.i.i59 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i59)
  %i.cn = mul nuw nsw i64 %i.cm, 24
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #42
          to label %.noexc61 unwind label %.loopexit133 ; 5 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 4 uses
  store ptr %i.bx, ptr %i.cp, align 8, !tbaa !410
  %.sroa.6.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.bz, ptr %.sroa.6.0..sroa_idx93, align 8, !tbaa !410
  %.sroa.795.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.cb, ptr %.sroa.795.0..sroa_idx96, align 8, !tbaa !147
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.x, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc61
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %.sroa.0106.0213, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i: ; preds = %bb.x, %.noexc61
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0106.0213, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE9push_backEOS8_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0213, i64 noundef %i.cg) #43
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE30transferAndUpdateStringBuffersEPNS0_6memory10MemoryPoolE:bb.a
_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.ao
  %i.fe = lshr i64 %indvars.iv, 6
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !147
  %i.fh = and i64 %indvars.iv, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fg, %i.fi
  %.not.i.i72 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i72, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %bb.ao, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %indvars.iv ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !298 ; 3 uses
  %i.fm = icmp ult i32 %i.fl, 13
  br i1 %i.fm, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 4 uses
  br i1 %i.ey, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ap, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ez, %bb.ap ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %.sroa.0106.3, %bb.ap ] ; 2 uses
  %i.fq = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.015.i.i, i64 %i.fq ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !971
  %i.ft = icmp ult ptr %i.fp, %i.fs               ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fv = xor i64 %i.fq, -1
  %i.fw = add nsw i64 %.016.i.i, %i.fv
  %.sroa.011.1.i.i = select i1 %i.ft, ptr %.sroa.011.015.i.i, ptr %i.fu ; 5 uses
  %.1.i.i = select i1 %i.ft, i64 %i.fq, i64 %i.fw ; 2 uses
  %i.fx = icmp sgt i64 %.1.i.i, 0
  br i1 %i.fx, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit, !llvm.loop !3478

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.fy = icmp eq ptr %.sroa.011.1.i.i, %.sroa.0106.3
  br i1 %i.fy, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit
  %i.fz = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !971 ; 3 uses
  %.not = icmp ult ptr %i.fp, %i.ga
  br i1 %.not, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !3489
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gc
  %i.ge = icmp ult ptr %i.fp, %i.gd
  br i1 %i.ge, label %bb.as, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.gf = icmp slt i32 %i.fl, 0
  br i1 %i.gf, label %bb.at, label %bb.aw, !prof !248

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !3490
  store i32 %i.fl, ptr %2, align 16, !tbaa !133, !noalias !3490
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.gg, align 16, !tbaa !133, !noalias !3490
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.106, i64 11, i64 17, ptr nonnull %2)
          to label %.noexc73 unwind label %bb.ax

.noexc73:                                         ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !3490
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.106) #45
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc73
  unreachable

bb.av:                                            ; preds = %.noexc73
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %3, align 8, !tbaa !132   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.av
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !133
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %.body74

bb.aw:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds i8, ptr %.sroa.011.1.i.i, i64 -16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !3491
  %i.gp = ptrtoint ptr %i.fp to i64
  %i.gq = ptrtoint ptr %i.ga to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 1
  store i32 %i.gt, ptr %i.fn, align 4, !tbaa !133
  %.sroa.5.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.gs, ptr %.sroa.5.sroa.5.0..sroa_idx, align 8, !tbaa !133
  %.pre273 = load i32, ptr %i.eu, align 8, !tbaa !345
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread

bb.ax:                                            ; preds = %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body74

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread: ; preds = %bb.ap, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit, %bb.aw, %bb.ar, %bb.aq, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.gv = phi i32 [ %i.fc, %bb.ap ], [ %i.fc, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit ], [ %.pre273, %bb.aw ], [ %i.fc, %bb.ar ], [ %i.fc, %bb.aq ], [ %i.fc, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread ], [ %i.fc, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next, %i.gw
  br i1 %i.gx, label %bb.ao, label %.loopexit, !llvm.loop !3481

.loopexit:                                        ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEEPKcZNS6_30transferAndUpdateStringBuffersES9_EUlSI_RSB_E_ET_SL_SL_RKT0_T1_.exit.thread, %_ZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_v.exit, %._crit_edge
  %.not.i.i.i76 = icmp eq ptr %.sroa.0106.3, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  %i.gy = ptrtoint ptr %.sroa.19.3 to i64
  %i.gz = ptrtoint ptr %.sroa.0106.3 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.3, i64 noundef %i.ha) #43
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit: ; preds = %bb.a, %.loopexit, %bb.ay
  ret void

.body74:                                          ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.n, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.body, %bb.an, %bb.am
  %.sroa.19.5 = phi ptr [ %.sroa.19.0211, %bb.n ], [ %.sroa.19.3, %bb.an ], [ %.sroa.19.3, %bb.am ], [ %.sroa.19.0211, %bb.o ], [ %.sroa.19.2, %.body ], [ %.sroa.19.0211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.19.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.19.3, %bb.ax ]
  %.sroa.0106.5 = phi ptr [ %.sroa.0106.0213, %bb.n ], [ %.sroa.0106.3, %bb.an ], [ %.sroa.0106.3, %bb.am ], [ %.sroa.0106.0213, %bb.o ], [ %.sroa.0106.2, %.body ], [ %.sroa.0106.0213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0106.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0106.3, %bb.ax ] ; 3 uses
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %i.fb, %bb.an ], [ %i.fa, %bb.am ], [ %i.bg, %bb.o ], [ %.pn49.pn, %.body ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gu, %bb.ax ]
  %.not.i.i.i77 = icmp eq ptr %.sroa.0106.5, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78, label %.thread

.thread:                                          ; preds = %.body74
  %i.hb = ptrtoint ptr %.sroa.19.5 to i64
  %i.hc = ptrtoint ptr %.sroa.0106.5 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.5, i64 noundef %i.hd) #43
  br label %_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78

_ZNSt6vectorIZN8facebook5velox10FlatVectorINS1_10StringViewEE30transferAndUpdateStringBuffersEPNS1_6memory10MemoryPoolEE21StringBufferRemappingSaIS8_EED2Ev.exit78: ; preds = %.body74, %.thread
  resume { ptr, i32 } %.pn54.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5eraseERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !543  ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.b, !prof !248

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !618    ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.e) ; 2 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = or i64 %i.g, 128                         ; 3 uses
  %i.i = add i64 %i.f, %i.e                       ; 2 uses
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  %i.l = trunc nuw i64 %i.h to i8
  %i.m = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.o = and i64 %i.b, 255                        ; 2 uses
  %i.p = shl nuw i64 1, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !539
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.023.i39.i.i = phi i64 [ %i.p, %bb.b ], [ %i.ak, %bb.f ]
  %.025.i38.i.i = phi i64 [ %i.i, %bb.b ], [ %i.al, %bb.f ] ; 2 uses
  %i.r = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i38.i.i, i64 range(i64 0, 256) %i.o)
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 0, i32 3, i32 1)
  %i.v = load <16 x i8>, ptr %i.s, align 16       ; 2 uses
  %i.w = icmp eq <16 x i8> %i.v, %i.n
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = icmp ne ptr %i.s, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ab = extractelement <16 x i8> %i.v, i64 15
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.d, %bb.c
  %.sroa.012.0.i.i = phi i32 [ %i.z, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %.not.i.i = icmp eq i32 %.sroa.012.0.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.ac = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i.i, i1 true)
  %i.ad = add nsw i32 %.sroa.012.0.i.i, -1
  %i.ae = and i32 %i.ad, %.sroa.012.0.i.i
  %i.af = zext nneg i32 %i.ac to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.aa)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !618
  %i.ai = icmp eq ptr %i.d, %i.ah
  br i1 %i.ai, label %bb.g, label %.critedge.i.i.i, !prof !137, !llvm.loop !49

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.aj = icmp eq i8 %i.ab, 0
  br i1 %i.aj, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.f, !prof !137

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %.023.i39.i.i, -1               ; 2 uses
  %i.al = add i64 %i.k, %.025.i38.i.i
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit, label %bb.c, !llvm.loop !50

bb.g:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.am, i64 %i.af, i64 %i.i, i64 %i.h)
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseIntoIRKNS_16variadic_noop_fnEEEmRKS8_OT_.exit: ; preds = %bb.e, %bb.f, %bb.a, %bb.g
  %.1.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !543
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !543
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i64 %i.d, 1
  %i.g = ptrtoint ptr %1 to i64
  %i.h = or i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !633
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, 256
  br i1 %i.l, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.q, %bb.d ], [ %2, %bb.c ]
  %i.p = phi ptr [ %i.r, %bb.d ], [ %1, %bb.c ]
  %i.q = add i64 %i.o, -1                         ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !133
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i, !prof !248, !llvm.loop !3492

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.n, %.critedge.i.i.i.preheader ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 3 uses
  %i.v = load <16 x i8>, ptr %i.u, align 16, !tbaa !133
  %i.w = icmp slt <16 x i8> %i.v, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = and i16 %i.x, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.y, 0
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !248, !llvm.loop !3493

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ab = xor i32 %i.aa, 31
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = icmp ne ptr %i.u, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -112
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.af, %bb.e ], [ %i.r, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %i.ag = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i64 %i.ag, 1
  %i.aj = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !147
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !133
  %.not.i.i7 = icmp sgt i8 %i.ao, -1
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.8) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !133
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !617
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load ptr, ptr %0, align 8, !tbaa !539   ; 4 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !543
  %i.av = and i64 %i.au, 255                      ; 2 uses
  %i.aw = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %3, i64 range(i64 0, 256) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.aw
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.az = phi i64 [ %i.aw, %bb.g ], [ %i.bk, %bb.i ]
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 14 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !617
  %i.bd = add i8 %i.bc, %.010.lcssa.i
  store i8 %i.bd, ptr %i.bb, align 2, !tbaa !617
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.be = phi i64 [ %i.bk, %bb.i ], [ %i.aw, %bb.g ]
  %.01126.i = phi i64 [ %i.bj, %bb.i ], [ %3, %bb.g ]
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !632 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bh, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bi = add i8 %i.bh, -1
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !632
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bj = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bj, i64 range(i64 0, 256) %i.av) ; 3 uses
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.at, i64 %i.bk
  %i.bm = icmp eq ptr %i.bl, %i.am
  br i1 %i.bm, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #26

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.313", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.313", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  br i1 %4, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %1, -64                          ; 2 uses
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 160) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !248

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !3502
  store ptr @.str.92, ptr %7, align 16, !tbaa !133, !alias.scope !3503, !noalias !3502
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.a, ptr %i.d, align 16, !tbaa !133, !noalias !3502
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 160, ptr %i.e, align 16, !tbaa !133, !noalias !3502
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.99, i64 20, i64 1100, ptr nonnull %7)
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.av) #38
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #38
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #38
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef align 8 %2, i32 noundef %3, ptr noundef align 8 %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !247
  store ptr null, ptr %i.b, align 8, !tbaa !143
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !247
  store ptr null, ptr %2, align 8, !tbaa !142
  %i.d = load ptr, ptr %4, align 8, !tbaa !344
  store ptr %i.d, ptr %13, align 8, !tbaa !344
  store ptr null, ptr %4, align 8, !tbaa !344
  invoke void @_ZN8facebook5velox10BaseVectorC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiSt8optionalIiESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef %1, ptr noundef nonnull align 8 %12, i32 noundef %3, ptr noundef nonnull align 8 %13, i32 noundef %5, i64 %7, i64 %8, i64 %10, i64 %11)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %13, align 8, !tbaa !344   ; 7 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.noexc.i unwind label %bb.d, !inline_history !6

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !407
  %.not.i.i = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !136
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !6

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !143  ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.s, null
  br i1 %.not.i.i16, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !146
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #38, !inline_history !29
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !136
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #38, !inline_history !29
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !133
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !157
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.i ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !248

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.f, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox12SimpleVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !136
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i16 %9, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 16, ptr %i.aj, align 8, !tbaa !916
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.ak, align 8, !tbaa !3539
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %i.al, align 1, !tbaa !3539
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 0, ptr %i.an, align 1, !tbaa !262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.am, i8 0, i64 36, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 0, ptr %i.ao, align 8, !tbaa !3540
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  ret void

bb.l:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #38
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #38
  resume { ptr, i32 } %i.aq
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.898) align 8 %2, ptr noundef byval(%class.anon.899) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !906, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !907
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = sext i32 %i.d to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !3545
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !3546, !nonnull !240, !align !273
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ao, %bb.d ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !895
  %i.aj = or disjoint i64 %i.ah, %i.ad            ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !882
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !902
  %i.an = add nsw i64 %.011.i, -1
  %i.ao = and i64 %i.an, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3541

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sdiv i32 %0, 64                         ; 2 uses
  %i.aq = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i35, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = load i8, ptr %2, align 8, !tbaa !906, !range !239, !noundef !240
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !907
  %i.az = sext i32 %i.ap to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !147
  %i.bc = xor i8 %i.aw, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, %i.av                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = shl nsw i32 %i.ap, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !3545
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !3546, !nonnull !240, !align !273
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bg, %.preheader.i37 ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !895
  %i.bq = or disjoint i64 %i.bo, %i.bk            ; 2 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !882
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !902
  %i.bu = add i64 %.011.i38, -1
  %i.bv = and i64 %i.bu, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bv, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3541

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bw = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bw, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bx = load i8, ptr %3, align 8, !tbaa !909, !range !239, !noundef !240
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !910
  %i.ca = xor i8 %i.bx, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216 ; 2 uses
  %i.ch = load ptr, ptr %i.cd, align 8, !nonnull !240, !align !273 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ci = phi i32 [ %i.bw, %.lr.ph ], [ %i.dj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cj = sdiv i32 %.051, 64                      ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !147
  %i.cn = xor i64 %i.cm, %i.cc                    ; 2 uses
  switch i64 %i.cn, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.co = shl nsw i32 %i.cj, 6
  %i.cp = sext i32 %i.co to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cr = add nuw i32 %i.cq, 64
  %i.cs = sext i32 %i.cr to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ct = sext i32 %i.cq to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ct, %.lr.ph21.i ], [ %i.cz, %bb.j ] ; 2 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !895
  %sext.i = shl i64 %.020.i, 32
  %i.cv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !882
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !902
  %i.cz = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cs
  br i1 %i.da, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !3542

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.di, %bb.k ] ; 3 uses
  %i.db = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dc = load ptr, ptr %i.cg, align 8, !tbaa !895
  %i.dd = or disjoint i64 %i.db, %i.cp            ; 2 uses
  %i.de = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !882
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !902
  %i.dh = add i64 %.01519.i, -1
  %i.di = and i64 %i.dh, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.di, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !3543

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dj = add nsw i32 %i.ci, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dj, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3544

bb.l:                                             ; preds = %._crit_edge
  %i.dk = ashr i32 %1, 6
  %i.dl = and i32 %1, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i42 = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i42, -1
  %i.do = load i8, ptr %2, align 8, !tbaa !906, !range !239, !noundef !240
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !907
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !147
  %i.du = xor i8 %i.do, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = sext i32 %i.d to i64
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !3545
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 216
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !3546, !nonnull !240, !align !273
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dy, %.preheader.i44 ], [ %i.em, %bb.m ] ; 3 uses
  %i.ef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !895
  %i.eh = or disjoint i64 %i.ef, %i.eb            ; 2 uses
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !882
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !902
  %i.el = add nsw i64 %.011.i45, -1
  %i.em = and i64 %i.el, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.em, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3541

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN8facebook5velox12_GLOBAL__N_112castToStringERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS2_ENK3$_0clIiEEDaT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 20 uses
  %5 = alloca %"class.std::optional.180", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !359, !nonnull !240, !align !273
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 noundef %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.g = ashr i64 %i.f, 12                        ; 5 uses
  %i.h = icmp sgt i64 %i.g, -1
  %i.i = srem i64 %i.g, 1000                      ; 2 uses
  %i.j = sdiv i64 %i.g, 1000
  %i.k = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %i.k
  br i1 %or.cond.i.i, label %_ZN8facebook5velox18unpackTimestampUtcEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.nonneg.i.i = sub nsw i64 0, %i.g
  %i.l = udiv i64 %.nonneg.i.i, 1000
  %i.m = xor i64 %i.l, -1                         ; 2 uses
  %.neg.i.i = mul nsw i64 %i.m, -1000
  %i.n = add nsw i64 %.neg.i.i, %i.g
  %i.o = srem i64 %i.n, 1000
  br label %_ZN8facebook5velox18unpackTimestampUtcEl.exit

_ZN8facebook5velox18unpackTimestampUtcEl.exit:    ; preds = %bb.a, %bb.b
  %.sroa.3.0.in.i.i = phi i64 [ %i.o, %bb.b ], [ %i.i, %bb.a ]
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.b ], [ %i.j, %bb.a ]
  %.sroa.3.0.i.i = mul nsw i64 %.sroa.3.0.in.i.i, 1000000
  store i64 %.sroa.0.0.i.i, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.3.0.i.i, ptr %i.p, align 8
  %i.q = and i64 %i.f, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN8facebook5velox2tz15getTimeZoneNameB5cxx11El(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %i.q)
  %i.r = load ptr, ptr %3, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !134
  %i.u = invoke noundef ptr @_ZN8facebook5velox2tz10locateZoneESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.t, ptr %i.r, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %_ZN8facebook5velox18unpackTimestampUtcEl.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !132    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.w, align 8, !tbaa !133
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !360, !nonnull !240, !align !273
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !353
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %4, align 8, !tbaa !136
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 0, ptr %i.ae, align 8, !tbaa !363
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !364
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !365
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %1, ptr %i.ah, align 8, !tbaa !366
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 6 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !129
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 0, ptr %i.ak, align 8, !tbaa !134
  store i8 0, ptr %i.aj, align 8, !tbaa !133
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !367, !nonnull !240, !align !273
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !370
  %i.ao = invoke noundef i32 @_ZNK8facebook5velox9functions17DateTimeFormatter13maxResultSizeEPKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(44) %i.an, ptr noundef %i.u)
          to label %bb.d unwind label %bb.o       ; 2 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !371
  %.not.i = icmp ult i64 %i.ar, %i.ap
  br i1 %.not.i, label %bb.e, label %._ZN8facebook5velox4exec12StringWriter7reserveEm.exit_crit_edge

._ZN8facebook5velox4exec12StringWriter7reserveEm.exit_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !372
  br label %_ZN8facebook5velox4exec12StringWriter7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !365
  %i.at = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.as, i64 noundef %i.ap, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.o     ; 5 uses

.noexc:                                           ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !373
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !374 ; 2 uses
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !350
  %i.bb = and i8 %i.ba, 2
  %.not.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, label %bb.f, !prof !137

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #45
          to label %.noexc18 unwind label %bb.o

.noexc18:                                         ; preds = %bb.f
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i: ; preds = %.noexc
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !351
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !375 ; 2 uses
  %.not10.i = icmp eq i64 %i.bg, 0
  br i1 %.not10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i
  %i.bh = load ptr, ptr %i.ad, align 8, !tbaa !372
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bh, i64 %i.bg, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !371
  store ptr %i.be, ptr %i.ad, align 8, !tbaa !372
  store ptr %i.at, ptr %i.af, align 8, !tbaa !364
  br label %_ZN8facebook5velox4exec12StringWriter7reserveEm.exit

_ZN8facebook5velox4exec12StringWriter7reserveEm.exit: ; preds = %._ZN8facebook5velox4exec12StringWriter7reserveEm.exit_crit_edge, %bb.h
  %i.bi = phi ptr [ %.pre, %._ZN8facebook5velox4exec12StringWriter7reserveEm.exit_crit_edge ], [ %i.be, %bb.h ]
  %i.bj = load ptr, ptr %i.al, align 8, !tbaa !367, !nonnull !240, !align !273
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store i8 0, ptr %i.bl, align 8, !tbaa !377
  %i.bm = invoke noundef i32 @_ZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.u, i32 noundef %i.ao, ptr noundef %i.bi, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter7reserveEm.exit
  %i.bn = load i8, ptr %i.bl, align 8, !tbaa !377, !range !239, !noundef !240
  %i.bo = trunc nuw i8 %i.bn to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !377
  br i1 %i.bo, label %bb.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %5, align 8, !tbaa !132   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !133
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #43
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.j, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.bu = sext i32 %i.bm to i64                   ; 3 uses
  %i.bv = load i64, ptr %i.aq, align 8, !tbaa !371
  %i.bw = icmp ult i64 %i.bv, %i.bu
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.bx = load ptr, ptr %4, align 8, !tbaa !136
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bu)
          to label %bb.l unwind label %bb.r, !inline_history !4

bb.l:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.bu, ptr %i.ca, align 8, !tbaa !375
  invoke void @_ZN8facebook5velox4exec12StringWriter8finalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !728 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.ao, align 1, !range !239
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.pre10, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !147
  %i.bi = and i64 %i.be, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.ap, align 1, !tbaa !729, !range !239, !noundef !240 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !731
  %i.bo = sext i32 %i.az to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !157
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !147
  %i.bv = and i64 %i.br, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not.i7.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !147
  %i.bz = and i64 %i.by, 1
  %.not.i6.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !728
  br label %bb.l

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %.split.i
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !728 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cc = phi ptr [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.pre = load i8, ptr %i.ap, align 1, !tbaa !729, !range !239
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cd = phi i8 [ %i.bl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.ce = phi ptr [ %i.ca, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !730
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !731
  %i.ci = sext i32 %i.az to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !157
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cl = phi ptr [ %i.ce, %bb.n ], [ %i.ce, %bb.m ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.ck, %bb.n ], [ %i.cg, %bb.m ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.az, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cm = sext i32 %.0.i.i.i to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !157
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !389
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !157
  %i.cr = load ptr, ptr %i.at, align 8, !tbaa !259 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i
  %i.cs = trunc i64 %indvars.iv to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = lshr i64 %indvars.iv, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !133
  %i.cz = or i8 %i.cy, %i.cu
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !133
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i, %.split.i
  %i.da = load ptr, ptr %i.at, align 8, !tbaa !259
  %i.db = and i64 %indvars.iv, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !133
  %i.de = lshr i64 %indvars.iv, 3
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !133
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !133
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !3927

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !265
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !263
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !246
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.970) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.971) align 8 %2, ptr noundef byval(%class.anon.972) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1032, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1033
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3932
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !3933, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !428
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3934, !nonnull !240, !align !273
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !428
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !389
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !157
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !157
  %i.at = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.as, ptr %i.at, align 4, !tbaa !157
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3928

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !1032, !range !239, !noundef !240
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1033
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !147
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3932
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !3933, !nonnull !240, !align !273
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !428
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !3934, !nonnull !240, !align !273
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !428
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !389
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !157
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !157
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !157
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3928

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !1035, !range !239, !noundef !240
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1036
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !147
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !428
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !428
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !389
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !428
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !428
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !389
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !157
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !157
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.020.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !157
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !3929

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !157
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !157
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dz
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !157
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !3930

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3931

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !1032, !range !239, !noundef !240
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1033
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !147
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !3932
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !3933, !nonnull !240, !align !273
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !428
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !3934, !nonnull !240, !align !273
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !428
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !389
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !157
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !157
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fk
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !157
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3928

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.973) align 8 %2, ptr noundef byval(%class.anon.974) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1039, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1040
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3941
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3942, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !428
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !389
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !157
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !157
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3935

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !1039, !range !239, !noundef !240
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1040
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !147
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !3941
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3942, !nonnull !240, !align !273
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !428
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !389
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !157
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !157
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3935

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !1042, !range !239, !noundef !240
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1043
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !240, !align !273 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !428
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !389
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !428 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !389 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 32
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <8 x i32>, ptr %i.di, align 4, !tbaa !157
  %wide.load69 = load <8 x i32>, ptr %i.dj, align 4, !tbaa !157
  %wide.load70 = load <8 x i32>, ptr %i.dk, align 4, !tbaa !157
  %wide.load71 = load <8 x i32>, ptr %i.dl, align 4, !tbaa !157
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <8 x i32> %wide.load, ptr %i.dm, align 4, !tbaa !157
  store <8 x i32> %wide.load69, ptr %i.dn, align 4, !tbaa !157
  store <8 x i32> %wide.load70, ptr %i.do, align 4, !tbaa !157
  store <8 x i32> %wide.load71, ptr %i.dp, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !3936

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <8 x i32>, ptr %i.ds, align 4, !tbaa !157
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dr
  store <8 x i32> %wide.load74, ptr %i.dt, align 4, !tbaa !157
  %index.next75 = add nuw i64 %index73, 8         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3937

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !157
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.020.i
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !157
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !3938

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !157
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.eb
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !157
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !3939

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3940

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !1039, !range !239, !noundef !240
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1040
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !147
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !3941
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !3942, !nonnull !240, !align !273
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !428
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !389
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !157
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fg
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !157
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !3935

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.975) align 8 %2, ptr noundef byval(%class.anon.976) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1058, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1059
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1054, !nonnull !240, !align !273
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !1055, !nonnull !240, !align !273
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1056, !nonnull !240, !align !273
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !428
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !157
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !259
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !259
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !147
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !133
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !133
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3943

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !1058, !range !239, !noundef !240
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1059
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !147
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !1054, !nonnull !240, !align !273
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !1055, !nonnull !240, !align !273
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1056, !nonnull !240, !align !273
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !428
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !157
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !259
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !259
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !147
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !133
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !133
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !3943

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !3944

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !1058, !range !239, !noundef !240
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1059
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !147
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !1054, !nonnull !240, !align !273
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !1055, !nonnull !240, !align !273
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !1056, !nonnull !240, !align !273
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !428
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !157
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !259
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !259
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !147
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !133
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !133
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3943

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1061, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1062
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
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
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1054, !nonnull !240, !align !273
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !428
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !157
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1055, !nonnull !240, !align !273
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !259
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !1056, !nonnull !240, !align !273
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !259
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !133
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !133
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !3945

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !1054, !nonnull !240, !align !273
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !428
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !157
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !1055, !nonnull !240, !align !273
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !259
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !1056, !nonnull !240, !align !273
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !259
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !147
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !133 ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !133
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !133
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !3946

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.977) align 8 %2, ptr noundef byval(%class.anon.978) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1046, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1047
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3953
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3954, !nonnull !240, !align !476
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !389
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i32, ptr %i.ae, align 4, !tbaa !157
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i32 %.pre.i, ptr %gep.i, align 4, !tbaa !157
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3947

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !1046, !range !239, !noundef !240
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1047
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !147
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !3953
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3954, !nonnull !240, !align !476
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !389
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [4 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i32, ptr %i.bh, align 4, !tbaa !157
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [4 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i32 %.pre.i39, ptr %gep.i41, align 4, !tbaa !157
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !3947

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !1049, !range !239, !noundef !240
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1050
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !240, !align !476 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !147
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !389
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [4 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i32, ptr %i.by, align 4, !tbaa !157
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !389 ; 3 uses
  %.pre.i44 = load i32, ptr %i.by, align 4, !tbaa !157 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i34                   ; 2 uses
  %i.cu = shl nsw i34 %i.ct, 2
  %i.cv = trunc i64 %i.cs to i34
  %i.cw = add i34 %i.ct, %i.cv
  %i.cx = shl i34 %i.cw, 2
  %i.cy = icmp slt i34 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 32
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <8 x i32> poison, i32 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 30
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <8 x i32> %broadcast.splat80, ptr %i.dg, align 4, !tbaa !157
  store <8 x i32> %broadcast.splat80, ptr %i.dh, align 4, !tbaa !157
  store <8 x i32> %broadcast.splat80, ptr %i.di, align 4, !tbaa !157
  store <8 x i32> %broadcast.splat80, ptr %i.dj, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !3948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 30
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <8 x i32> %broadcast.splat80, ptr %i.do, align 4, !tbaa !157
  %index.next82 = add nuw i64 %index81, 8         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3949

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 30
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i32 %.pre.i44, ptr %i.dr, align 4, !tbaa !157
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !3950

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [4 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i32 %.pre24.i, ptr %gep.i46, align 4, !tbaa !157
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !3951

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3952

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !1046, !range !239, !noundef !240
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1047
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !147
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !3953
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !3954, !nonnull !240, !align !476
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !389
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [4 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i32, ptr %i.eq, align 4, !tbaa !157
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i32 %.pre.i52, ptr %gep.i54, align 4, !tbaa !157
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !3947

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.980, align 8            ; 7 uses
  %7 = alloca %class.anon.979, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3955

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !3958, !range !239, !noundef !240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3959
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1066
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1067, !nonnull !240, !align !273 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !726  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !727, !range !239
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !728  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !389 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !157
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !157
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !3956

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !729, !range !239, !noundef !240
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader, label %.preheader.split.us.split.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader: ; preds = %.preheader.split.us.split
  %i.al = sext i32 %i.m to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.aa, i64 %i.al
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19
  %.011.us.us20 = phi i64 [ %i.as, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %i.an = load i32, ptr %i.x, align 8, !tbaa !730
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !157
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.am
  store i32 %i.aq, ptr %gep, align 4, !tbaa !157
  %i.ar = add i64 %.011.us.us20, -1
  %i.as = and i64 %i.ar, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.as, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !3956

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !731
  %i.au = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.be, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.aw = or disjoint i64 %i.av, %i.au            ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox10BaseVectorD2Ev:bb.a
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !248

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #38
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIiED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIiE6resizeEib(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12SimpleVectorIiE6resizeEibE18veloxCheckFailArgs, ptr noundef nonnull @.str.77) #45
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox12SimpleVectorIiE8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIiEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats.173", align 4 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !255
  %i.b = load ptr, ptr %3, align 8, !tbaa !344
  store ptr %i.b, ptr %7, align 8, !tbaa !344
  store ptr null, ptr %3, align 8, !tbaa !344
  %i.c = load i32, ptr %4, align 4, !tbaa !157
  %i.d = load ptr, ptr %5, align 8, !tbaa !344
  store ptr %i.d, ptr %8, align 8, !tbaa !344
  store ptr null, ptr %5, align 8, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 0, ptr %i.e, align 4, !tbaa !451
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i8 0, ptr %i.f, align 4, !tbaa !451
  invoke void @_ZN8facebook5velox10FlatVectorIiEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIiEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.g = load ptr, ptr %8, align 8, !tbaa !344    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !6

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !407
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !136
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !6

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !344    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !6

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !407
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !136
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !6

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #38
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #38
  resume { ptr, i32 } %i.ai
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.998) align 8 %2, ptr noundef byval(%class.anon.999) align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

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
  %i.q = load i8, ptr %2, align 8, !tbaa !978, !range !239, !noundef !240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !979
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !4002
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !389
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !4003, !nonnull !240, !align !273
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !428
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !157
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !157
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3996

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !978, !range !239, !noundef !240
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !979
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !147
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4002
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !389
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !4003, !nonnull !240, !align !273
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !428
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !157
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !157
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3996

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !981, !range !239, !noundef !240
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !982
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !240, !align !273 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !389
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !428
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !389 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !428 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 32
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <8 x i32>, ptr %i.ds, align 4, !tbaa !157
  %wide.load69 = load <8 x i32>, ptr %i.dt, align 4, !tbaa !157
  %wide.load70 = load <8 x i32>, ptr %i.du, align 4, !tbaa !157
  %wide.load71 = load <8 x i32>, ptr %i.dv, align 4, !tbaa !157
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <8 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !157
  store <8 x i32> %wide.load69, ptr %i.dx, align 4, !tbaa !157
  store <8 x i32> %wide.load70, ptr %i.dy, align 4, !tbaa !157
  store <8 x i32> %wide.load71, ptr %i.dz, align 4, !tbaa !157
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !3997

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <8 x i32>, ptr %i.ee, align 4, !tbaa !157
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ed
  store <8 x i32> %wide.load74, ptr %i.ef, align 4, !tbaa !157
  %index.next75 = add nuw i64 %index73, 8         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3998

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !157
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.eh
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !157
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !3999

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !157
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.eo
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !157
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !4000

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !4001

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !978, !range !239, !noundef !240
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !979
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !147
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !4002
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !389
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !4003, !nonnull !240, !align !273
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !428
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !157
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ft
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !157
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !3996

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4Type13valueToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %3 = alloca %"class.std::shared_ptr.34", align 8 ; 6 uses
  %i.a = icmp eq ptr %1, @_ZZN8facebook5velox8DateType3getEvE9kInstance
  br i1 %i.a, label %bb.a, label %bb.c

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr @_ZZN8facebook5velox8DateType3getEvE9kInstance, ptr %3, align 8, !tbaa !4012, !alias.scope !4013
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !143, !alias.scope !4013
  invoke void @_ZNK8facebook5velox8DateType8toStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox8DateType3getEvE9kInstance, i32 noundef %2)
          to label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6 unwind label %bb.b

_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %common.resume

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !129, !alias.scope !4014
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !134, !alias.scope !4014
  store i8 0, ptr %i.d, align 8, !tbaa !133, !alias.scope !4014
  %i.f = tail call i32 @llvm.abs.i32(i32 %2, i1 false)
  %i.g = zext i32 %i.f to i64
  %i.h = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.g)
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  %.lobit.i.i.i.i.i = lshr i32 %2, 31
  %i.i = zext nneg i32 %.lobit.i.i.i.i.i to i64
  %i.j = add i64 %i.h, %i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j)
          to label %.noexc3.i.i unwind label %bb.d

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %2, ptr noundef nonnull align 8 %0)
          to label %_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc3.i.i, %.noexc.i.i, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !132, !alias.scope !4014 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !tbaa !133, !alias.scope !4014
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #43
  br label %common.resume

_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit: ; preds = %.noexc3.i.i, %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6
  ret void
}

declare void @_ZNK8facebook5velox8DateType8toStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !134  ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.g, align 8, !tbaa !133
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !132
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.c
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 45, ptr %i.n, align 1, !tbaa !133
  store i64 %i.e, ptr %i.c, align 8, !tbaa !134
  %i.o = load ptr, ptr %1, align 8, !tbaa !132
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  store i8 0, ptr %i.p, align 1, !tbaa !133
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.a
  %i.q = tail call i32 @llvm.abs.i32(i32 %0, i1 false)
  %i.r = zext i32 %i.q to i64
  %i.s = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.r) ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !134  ; 5 uses
  %i.v = sub i64 9223372036854775807, %i.u
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #45
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.d
  %i.x = add i64 %i.u, %i.s                       ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ab = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !133
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.x, %i.ad
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u ; 2 uses
  %cond.i.i = icmp eq i64 %i.s, 1
  br i1 %cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.a, align 16, !tbaa !133
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !133
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 16 %i.a, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.x, ptr %i.t, align 8, !tbaa !134
  %i.ag = load ptr, ptr %1, align 8, !tbaa !132
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x
  store i8 0, ptr %i.ah, align 1, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN8facebook5velox12_GLOBAL__N_110castToDateERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS2_ENK3$_0clIiEEDaT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #21 align 2 {
bb.a:
  %2 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !383, !nonnull !240, !align !273
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_11
