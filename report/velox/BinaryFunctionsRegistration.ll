Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/BinaryFunctionsRegistration?download=true
inline.NumInlined: 41770
inline.NumDeleted: 9798
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 686
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0112152 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0112151, %.loopexit ] ; 2 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !506
  %i.ei = and i64 %i.eh, 255
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.w
  %.0.in = phi i64 [ %i.ej, %._crit_edge ], [ %.0, %bb.w ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112152, i64 %.0
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !68  ; 3 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.x, !llvm.loop !3162

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %0, align 8, !tbaa !507
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
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !138
  br i1 %.not, label %bb.y, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %.0112152, i64 noundef %4) #35
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !72
  %i.ez = load i64, ptr %i.d, align 8, !tbaa !138
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !511 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !138
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
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !517, !range !90, !noundef !91
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3171, !nonnull !91
  %i.e = load i8, ptr %i.d, align 1, !tbaa !72, !range !90, !noundef !91
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !177

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3172, !nonnull !91, !align !175
  %i.i = load i64, ptr %i.h, align 8, !tbaa !138
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3173, !nonnull !91, !align !175
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !511
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3174, !nonnull !91, !align !175
  %i.o = load i64, ptr %i.n, align 8, !tbaa !138
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3175 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3176, !nonnull !91, !align !175
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !452
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3177, !nonnull !91, !align !175
  %i.w = load i64, ptr %i.v, align 8, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3173, !nonnull !91, !align !175
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !511
  store ptr %i.z, ptr %i.q, align 8, !tbaa !507
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3178, !nonnull !91, !align !175
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !138 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !506
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !506
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
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.689") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !506  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !507   ; 3 uses
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
  %i.aa = load ptr, ptr %4, align 8, !tbaa !522
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !522
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !177, !llvm.loop !3179

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !177

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !3180

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !68
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !507
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !506
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !68
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
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !523 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !523
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
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !3181

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !515
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !68
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.59) #41
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !522
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !522
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !3182
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !138
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !506 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !506
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !3184
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !138
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !3187
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !506
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.09.i28.epil = phi i32 [ %.09.i28.epil.init, %.lr.ph.epil.preheader ], [ %i.by, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bu = mul i32 %.09.i28.epil, 16777619
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.epil
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !68
  %i.bx = zext i8 %i.bw to i32
  %i.by = xor i32 %i.bu, %i.bx                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit19, label %.lr.ph.epil, !llvm.loop !7790

_ZN8facebook5velox6StatusD2Ev.exit19:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit
  %.09.i.lcssa = phi i32 [ -2128831035, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit ], [ %i.bt, %_ZN8facebook5velox6StatusD2Ev.exit19.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !7792
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv32
  store i32 %.09.i.lcssa, ptr %i.bz, align 4, !tbaa !79
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next33 to i32
  %exitcond35.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond35.not, label %.loopexit, label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit, !llvm.loop !7791

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !394   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !467
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !468
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1321
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ca, ptr %i.ch, align 8, !tbaa !1322
  store i8 1, ptr %3, align 8, !tbaa !1324
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ca, ptr %i.ci, align 8, !tbaa !1325
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.cc, i32 noundef %i.ce, ptr noundef nonnull byval(%class.anon.2773) align 8 %2, ptr noundef nonnull byval(%class.anon.2774) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.2773) align 8 %2, ptr noundef byval(%class.anon.2774) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1321, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1322
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ae = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1313 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1316, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1317, !nonnull !91, !align !175
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1319, !nonnull !91, !align !175
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.al, i64 %i.ae
  br label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i

_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.035.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bv, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !7804
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ag, align 8, !noalias !7804 ; 5 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !noalias !7804 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !7804
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ac, align 8, !noalias !7804
  %i.an = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ao = icmp ult i32 %i.an, 13
  %i.ap = select i1 %i.ao, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not36.i = icmp eq i32 %i.an, 0
  br i1 %.not36.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.aq = add nsw i64 %wide.trip.count.i, -1
  %xtraiter118 = and i64 %.sroa.0.0.copyload.i.i, 3 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 3
  br i1 %i.ar, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter123 = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i33.i = phi i32 [ -2128831035, %.lr.ph.preheader.i.new ], [ %i.bo, %.lr.ph.i ]
  %niter124 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter124.next.3, %.lr.ph.i ]
  %i.as = mul i32 %.09.i33.i, 16777619
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !68
  %i.av = zext i8 %i.au to i32
  %i.aw = xor i32 %i.as, %i.av
  %i.ax = mul i32 %i.aw, 16777619
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !68
  %i.bb = zext i8 %i.ba to i32
  %i.bc = xor i32 %i.ax, %i.bb
  %i.bd = mul i32 %i.bc, 16777619
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !68
  %i.bh = zext i8 %i.bg to i32
  %i.bi = xor i32 %i.bd, %i.bh
  %i.bj = mul i32 %i.bi, 16777619
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !68
  %i.bn = zext i8 %i.bm to i32
  %i.bo = xor i32 %i.bj, %i.bn                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter124.next.3 = add i64 %niter124, 4         ; 2 uses
  %niter124.ncmp.3 = icmp eq i64 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod120.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ]
  %.09.i33.i.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i ], [ %i.bo, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter118, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i33.i.epil = phi i32 [ %.09.i33.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bt, %.lr.ph.i.epil ]
  %epil.iter119 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter119.next, %.lr.ph.i.epil ]
  %i.bp = mul i32 %.09.i33.i.epil, 16777619
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i.epil
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !68
  %i.bs = zext i8 %i.br to i32
  %i.bt = xor i32 %i.bp, %i.bs                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter119.next = add i64 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i64 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.i.epil, !llvm.loop !7795

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i
  %.09.i.lcssa.i = phi i32 [ -2128831035, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i ], [ %i.bo, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !7804
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.am
  store i32 %.09.i.lcssa.i, ptr %gep.i, align 4, !tbaa !79
  %i.bu = add nuw i64 %.035.i, 9223372036854775807
  %i.bv = and i64 %i.bu, %.035.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bv, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i, !llvm.loop !7796

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = sdiv i32 %0, 64                         ; 2 uses
  %i.bx = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.by
  %i.bz = xor i64 %notmask.i.i35, -1
  %i.ca = sub nsw i32 64, %i.bx
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.bz, %i.cb
  %i.cd = load i8, ptr %2, align 8, !tbaa !1321, !range !90, !noundef !91
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1322
  %i.cg = sext i32 %i.bw to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !138
  %i.cj = xor i8 %i.cd, 1
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = and i64 %i.cm, %i.cc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = shl nsw i32 %i.bw, 6
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cs = sext i32 %i.cp to i64
  %.pre.i38 = load ptr, ptr %i.co, align 8, !tbaa !1313 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1316, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1317, !nonnull !91, !align !175
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1319, !nonnull !91, !align !175
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !528
  %invariant.gep.i40 = getelementptr [4 x i8], ptr %i.cz, i64 %i.cs
  br label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41

_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53, %.preheader.i37
  %.035.i42 = phi i64 [ %i.cn, %.preheader.i37 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit24.i53 ] ; 3 uses
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i42, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !7805
  %.sroa.0.0.copyload.i.i43 = load i64, ptr %i.cu, align 8, !noalias !7805 ; 5 uses
  %.sroa.2.0.copyload.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i39, align 8, !tbaa !68, !noalias !7805 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i43, ptr %5, align 8, !noalias !7805
  store ptr %.sroa.2.0.copyload.i.i44, ptr %i.cq, align 8, !noalias !7805
  %i.db = trunc i64 %.sroa.0.0.copyload.i.i43 to i32 ; 2 uses
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = select i1 %i.dc, ptr %i.cr, ptr %.sroa.2.0.copyload.i.i44 ; 5 uses
  %.not36.i45 = icmp eq i32 %i.db, 0
  br i1 %.not36.i45, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41
  %wide.trip.count.i47 = and i64 %.sroa.0.0.copyload.i.i43, 4294967295
  %i.de = add nsw i64 %wide.trip.count.i47, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i43, 3 ; 3 uses
  %i.df = icmp ult i64 %i.de, 3
  br i1 %i.df, label %.lr.ph.i48.epil.preheader, label %.lr.ph.preheader.i46.new

.lr.ph.preheader.i46.new:                         ; preds = %.lr.ph.preheader.i46
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i43, 4294967292
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i46.new
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %indvars.iv.next.i51.3, %.lr.ph.i48 ] ; 5 uses
  %.09.i33.i50 = phi i32 [ -2128831035, %.lr.ph.preheader.i46.new ], [ %i.ec, %.lr.ph.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %niter.next.3, %.lr.ph.i48 ]
  %i.dg = mul i32 %.09.i33.i50, 16777619
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !68
  %i.dj = zext i8 %i.di to i32
  %i.dk = xor i32 %i.dg, %i.dj
  %i.dl = mul i32 %i.dk, 16777619
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !68
  %i.dp = zext i8 %i.do to i32
  %i.dq = xor i32 %i.dl, %i.dp
  %i.dr = mul i32 %i.dq, 16777619
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !68
  %i.dv = zext i8 %i.du to i32
  %i.dw = xor i32 %i.dr, %i.dv
  %i.dx = mul i32 %i.dw, 16777619
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 3
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !68
  %i.eb = zext i8 %i.ea to i32
  %i.ec = xor i32 %i.dx, %i.eb                    ; 3 uses
  %indvars.iv.next.i51.3 = add nuw nsw i64 %indvars.iv.i49, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, label %.lr.ph.i48, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa: ; preds = %.lr.ph.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.i48.epil.preheader

.lr.ph.i48.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, %.lr.ph.preheader.i46
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i51.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ]
  %.09.i33.i50.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i46 ], [ %i.ec, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i48.epil

.lr.ph.i48.epil:                                  ; preds = %.lr.ph.i48.epil, %.lr.ph.i48.epil.preheader
  %indvars.iv.i49.epil = phi i64 [ %indvars.iv.i49.epil.init, %.lr.ph.i48.epil.preheader ], [ %indvars.iv.next.i51.epil, %.lr.ph.i48.epil ] ; 2 uses
  %.09.i33.i50.epil = phi i32 [ %.09.i33.i50.epil.init, %.lr.ph.i48.epil.preheader ], [ %i.eh, %.lr.ph.i48.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i48.epil.preheader ], [ %epil.iter.next, %.lr.ph.i48.epil ]
  %i.ed = mul i32 %.09.i33.i50.epil, 16777619
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49.epil
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !68
  %i.eg = zext i8 %i.ef to i32
  %i.eh = xor i32 %i.ed, %i.eg                    ; 2 uses
  %indvars.iv.next.i51.epil = add nuw nsw i64 %indvars.iv.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.i48.epil, !llvm.loop !7799

_ZN8facebook5velox6StatusD2Ev.exit24.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, %.lr.ph.i48.epil, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41
  %.09.i.lcssa.i54 = phi i32 [ -2128831035, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41 ], [ %i.ec, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ], [ %i.eh, %.lr.ph.i48.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !7805
  %gep.i55 = getelementptr [4 x i8], ptr %invariant.gep.i40, i64 %i.da
  store i32 %.09.i.lcssa.i54, ptr %gep.i55, align 4, !tbaa !79
  %i.ei = add i64 %.035.i42, -1
  %i.ej = and i64 %i.ei, %.035.i42                ; 2 uses
  %.not10.i56 = icmp eq i64 %i.ej, 0
  br i1 %.not10.i56, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41, !llvm.loop !7796

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53, %bb.e, %bb.d
  %i.ek = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3384 = icmp sgt i32 %i.ek, %i.d
  br i1 %.not3384, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, %.lr.ph
  %i.el = phi i32 [ %i.en, %.lr.ph ], [ %i.ek, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57 ] ; 2 uses
  %.085 = phi i32 [ %i.el, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57 ]
  %i.em = sdiv i32 %.085, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.em)
  %i.en = add nsw i32 %i.el, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.en, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !7800

bb.f:                                             ; preds = %._crit_edge
  %i.eo = ashr i32 %1, 6
  %i.ep = and i32 %1, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i58 = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i58, -1
  %i.es = load i8, ptr %2, align 8, !tbaa !1321, !range !90, !noundef !91
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1322
  %i.ev = sext i32 %i.eo to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !138
  %i.ey = xor i8 %i.es, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = and i64 %i.fb, %i.er                    ; 2 uses
  %.not.i59 = icmp eq i64 %i.fc, 0
  br i1 %.not.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i60

.preheader.i60:                                   ; preds = %bb.f
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fg = sext i32 %i.d to i64
  %.pre.i61 = load ptr, ptr %i.fd, align 8, !tbaa !1313 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1316, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1317, !nonnull !91, !align !175
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1319, !nonnull !91, !align !175
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !528
  %invariant.gep.i63 = getelementptr [4 x i8], ptr %i.fn, i64 %i.fg
  br label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64

_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76, %.preheader.i60
  %.035.i65 = phi i64 [ %i.fc, %.preheader.i60 ], [ %i.gx, %_ZN8facebook5velox6StatusD2Ev.exit24.i76 ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i65, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !7806
  %.sroa.0.0.copyload.i.i66 = load i64, ptr %i.fi, align 8, !noalias !7806 ; 5 uses
  %.sroa.2.0.copyload.i.i67 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i62, align 8, !tbaa !68, !noalias !7806 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i66, ptr %4, align 8, !noalias !7806
  store ptr %.sroa.2.0.copyload.i.i67, ptr %i.fe, align 8, !noalias !7806
  %i.fp = trunc i64 %.sroa.0.0.copyload.i.i66 to i32 ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 13
  %i.fr = select i1 %i.fq, ptr %i.ff, ptr %.sroa.2.0.copyload.i.i67 ; 5 uses
  %.not36.i68 = icmp eq i32 %i.fp, 0
  br i1 %.not36.i68, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.preheader.i69

.lr.ph.preheader.i69:                             ; preds = %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64
  %wide.trip.count.i70 = and i64 %.sroa.0.0.copyload.i.i66, 4294967295
  %i.fs = add nsw i64 %wide.trip.count.i70, -1
  %xtraiter111 = and i64 %.sroa.0.0.copyload.i.i66, 3 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 3
  br i1 %i.ft, label %.lr.ph.i71.epil.preheader, label %.lr.ph.preheader.i69.new

.lr.ph.preheader.i69.new:                         ; preds = %.lr.ph.preheader.i69
  %unroll_iter116 = and i64 %.sroa.0.0.copyload.i.i66, 4294967292
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71, %.lr.ph.preheader.i69.new
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.preheader.i69.new ], [ %indvars.iv.next.i74.3, %.lr.ph.i71 ] ; 5 uses
  %.09.i33.i73 = phi i32 [ -2128831035, %.lr.ph.preheader.i69.new ], [ %i.gq, %.lr.ph.i71 ]
  %niter117 = phi i64 [ 0, %.lr.ph.preheader.i69.new ], [ %niter117.next.3, %.lr.ph.i71 ]
  %i.fu = mul i32 %.09.i33.i73, 16777619
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !68
  %i.fx = zext i8 %i.fw to i32
  %i.fy = xor i32 %i.fu, %i.fx
  %i.fz = mul i32 %i.fy, 16777619
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !68
  %i.gd = zext i8 %i.gc to i32
  %i.ge = xor i32 %i.fz, %i.gd
  %i.gf = mul i32 %i.ge, 16777619
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !68
  %i.gj = zext i8 %i.gi to i32
  %i.gk = xor i32 %i.gf, %i.gj
  %i.gl = mul i32 %i.gk, 16777619
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !68
  %i.gp = zext i8 %i.go to i32
  %i.gq = xor i32 %i.gl, %i.gp                    ; 3 uses
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter117.next.3 = add i64 %niter117, 4         ; 2 uses
  %niter117.ncmp.3 = icmp eq i64 %niter117.next.3, %unroll_iter116
  br i1 %niter117.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, label %.lr.ph.i71, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa: ; preds = %.lr.ph.i71
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.i71.epil.preheader

.lr.ph.i71.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, %.lr.ph.preheader.i69
  %indvars.iv.i72.epil.init = phi i64 [ 0, %.lr.ph.preheader.i69 ], [ %indvars.iv.next.i74.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ]
  %.09.i33.i73.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i69 ], [ %i.gq, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i71.epil

.lr.ph.i71.epil:                                  ; preds = %.lr.ph.i71.epil, %.lr.ph.i71.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.i72.epil.init, %.lr.ph.i71.epil.preheader ], [ %indvars.iv.next.i74.epil, %.lr.ph.i71.epil ] ; 2 uses
  %.09.i33.i73.epil = phi i32 [ %.09.i33.i73.epil.init, %.lr.ph.i71.epil.preheader ], [ %i.gv, %.lr.ph.i71.epil ]
  %epil.iter112 = phi i64 [ 0, %.lr.ph.i71.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i71.epil ]
  %i.gr = mul i32 %.09.i33.i73.epil, 16777619
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72.epil
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !68
  %i.gu = zext i8 %i.gt to i32
  %i.gv = xor i32 %i.gr, %i.gu                    ; 2 uses
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.i71.epil, !llvm.loop !7803

_ZN8facebook5velox6StatusD2Ev.exit24.i76:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, %.lr.ph.i71.epil, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64
  %.09.i.lcssa.i77 = phi i32 [ -2128831035, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64 ], [ %i.gq, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ], [ %i.gv, %.lr.ph.i71.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !7806
  %gep.i78 = getelementptr [4 x i8], ptr %invariant.gep.i63, i64 %i.fo
  store i32 %.09.i.lcssa.i77, ptr %gep.i78, align 4, !tbaa !79
  %i.gw = add nuw i64 %.035.i65, 9223372036854775807
  %i.gx = and i64 %i.gw, %.035.i65                ; 2 uses
  %.not10.i79 = icmp eq i64 %i.gx, 0
  br i1 %.not10.i79, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64, !llvm.loop !7796

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1324, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1325
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = sext i32 %i.l to i64
  %.pre100 = load ptr, ptr %i.k, align 8, !tbaa !1313 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre100, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1316, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.pre100, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1317, !nonnull !91, !align !175
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1319, !nonnull !91, !align !175
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !528
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.o
  br label %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit

bb.b:                                             ; preds = %bb.a
  %i.w = shl i32 %1, 6                            ; 3 uses
  %i.x = add i32 %i.w, 64
  %i.y = sext i32 %i.x to i64
  %.not89 = icmp eq i32 %i.w, -64
  br i1 %.not89, label %.loopexit, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %bb.b
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !1313 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1316, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1317, !nonnull !91, !align !175
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1319, !nonnull !91, !align !175
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !528
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit38
  %.088 = phi i64 [ %i.z, %.noexc28.lr.ph ], [ %i.bs, %_ZN8facebook5velox6StatusD2Ev.exit38 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7817
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !noalias !7817 ; 5 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68, !noalias !7817 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !noalias !7817
  store ptr %.sroa.2.0.copyload.i, ptr %i.ab, align 8, !noalias !7817
  %i.ak = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 13
  %i.am = select i1 %i.al, ptr %i.ac, ptr %.sroa.2.0.copyload.i ; 5 uses
  %.not90 = icmp eq i32 %i.ak, 0
  br i1 %.not90, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.noexc28
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.an = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 3    ; 3 uses
  %i.ao = icmp ult i64 %i.an, 3
  br i1 %i.ao, label %.lr.ph86.epil.preheader, label %.lr.ph86.preheader.new

.lr.ph86.preheader.new:                           ; preds = %.lr.ph86.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i, 4294967292
  br label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86, %.lr.ph86.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %indvars.iv.next.3, %.lr.ph86 ] ; 5 uses
  %.09.i.i84 = phi i32 [ -2128831035, %.lr.ph86.preheader.new ], [ %i.bl, %.lr.ph86 ]
  %niter = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %niter.next.3, %.lr.ph86 ]
  %i.ap = mul i32 %.09.i.i84, 16777619
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !68, !noalias !7818
  %i.as = zext i8 %i.ar to i32
  %i.at = xor i32 %i.ap, %i.as
  %i.au = mul i32 %i.at, 16777619
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !68, !noalias !7818
  %i.ay = zext i8 %i.ax to i32
  %i.az = xor i32 %i.au, %i.ay
  %i.ba = mul i32 %i.az, 16777619
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !68, !noalias !7818
  %i.be = zext i8 %i.bd to i32
  %i.bf = xor i32 %i.ba, %i.be
  %i.bg = mul i32 %i.bf, 16777619
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !68, !noalias !7818
  %i.bk = zext i8 %i.bj to i32
  %i.bl = xor i32 %i.bg, %i.bk                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, label %.lr.ph86, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa: ; preds = %.lr.ph86
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.epil.preheader

.lr.ph86.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, %.lr.ph86.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph86.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ]
  %.09.i.i84.epil.init = phi i32 [ -2128831035, %.lr.ph86.preheader ], [ %i.bl, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph86.epil

.lr.ph86.epil:                                    ; preds = %.lr.ph86.epil, %.lr.ph86.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph86.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph86.epil ] ; 2 uses
  %.09.i.i84.epil = phi i32 [ %.09.i.i84.epil.init, %.lr.ph86.epil.preheader ], [ %i.bq, %.lr.ph86.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph86.epil.preheader ], [ %epil.iter.next, %.lr.ph86.epil ]
  %i.bm = mul i32 %.09.i.i84.epil, 16777619
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.epil
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !68, !noalias !7818
  %i.bp = zext i8 %i.bo to i32
  %i.bq = xor i32 %i.bm, %i.bp                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.epil, !llvm.loop !7811

_ZN8facebook5velox6StatusD2Ev.exit38:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, %.lr.ph86.epil, %.noexc28
  %.09.i.i.lcssa = phi i32 [ -2128831035, %.noexc28 ], [ %i.bl, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph86.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7817
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.088
  store i32 %.09.i.i.lcssa, ptr %i.br, align 4, !tbaa !79
  %i.bs = add nuw i64 %.088, 1                    ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.y
  br i1 %i.bt, label %.noexc28, label %.loopexit, !llvm.loop !7812

_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit: ; preds = %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit62
  %.01583 = phi i64 [ %i.j, %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.lr.ph ], [ %i.dd, %_ZN8facebook5velox6StatusD2Ev.exit62 ] ; 3 uses
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01583, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !7819
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.q, align 8, !noalias !7819 ; 5 uses
  %.sroa.2.0.copyload.i48 = load ptr, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !68, !noalias !7819 ; 2 uses
  store i64 %.sroa.0.0.copyload.i46, ptr %3, align 8, !noalias !7819
  store ptr %.sroa.2.0.copyload.i48, ptr %i.m, align 8, !noalias !7819
  %i.bv = trunc i64 %.sroa.0.0.copyload.i46 to i32 ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 13
  %i.bx = select i1 %i.bw, ptr %i.n, ptr %.sroa.2.0.copyload.i48 ; 5 uses
  %.not91 = icmp eq i32 %i.bv, 0
  br i1 %.not91, label %_ZN8facebook5velox6StatusD2Ev.exit62, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8facebook5velox9functions15Fnv1_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit
  %wide.trip.count98 = and i64 %.sroa.0.0.copyload.i46, 4294967295
  %i.by = add nsw i64 %wide.trip.count98, -1
  %xtraiter113 = and i64 %.sroa.0.0.copyload.i46, 3 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 3
  br i1 %i.bz, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter118 = and i64 %.sroa.0.0.copyload.i46, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next96.3, %.lr.ph ] ; 5 uses
  %.09.i80 = phi i32 [ -2128831035, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ]
  %niter119 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter119.next.3, %.lr.ph ]
  %i.ca = mul i32 %.09.i80, 16777619
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !68
  %i.cd = zext i8 %i.cc to i32
  %i.ce = xor i32 %i.ca, %i.cd
  %i.cf = mul i32 %i.ce, 16777619
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !68
  %i.cj = zext i8 %i.ci to i32
  %i.ck = xor i32 %i.cf, %i.cj
  %i.cl = mul i32 %i.ck, 16777619
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
  %.09.i.i23.epil = phi i32 [ %.09.i.i23.epil.init, %.lr.ph.epil.preheader ], [ %i.ca, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bw = mul i32 %.09.i.i23.epil, 16777619
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.epil
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !68, !noalias !7827
  %i.bz = zext i8 %i.by to i32
  %i.ca = xor i32 %i.bw, %i.bz                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit14, label %.lr.ph.epil, !llvm.loop !7824

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.loopexit.unr-lcssa, %.lr.ph.epil, %.noexc5
  %.09.i.i.lcssa = phi i32 [ -2128831035, %.noexc5 ], [ %i.bv, %_ZN8facebook5velox6StatusD2Ev.exit14.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !7826
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv27
  store i32 %.09.i.i.lcssa, ptr %i.cb, align 4, !tbaa !79
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next28 to i32
  %exitcond30.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond30.not, label %.loopexit, label %.noexc5, !llvm.loop !7825

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !394   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !467
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !468
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1333
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !1334
  store i8 1, ptr %3, align 8, !tbaa !1336
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cc, ptr %i.ck, align 8, !tbaa !1337
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.ce, i32 noundef %i.cg, ptr noundef nonnull byval(%class.anon.2799) align 8 %2, ptr noundef nonnull byval(%class.anon.2800) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.2799) align 8 %2, ptr noundef byval(%class.anon.2800) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1333, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1334
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1326 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1328, !nonnull !91, !align !175
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !379, !noalias !7845
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1329, !nonnull !91, !align !175
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1331, !nonnull !91, !align !175
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !528
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bz, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !7845
  %i.ao = or disjoint i64 %i.an, %i.ac            ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !noalias !7845 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !noalias !7845 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !7845
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ad, align 8, !noalias !7845
  %i.aq = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 13
  %i.as = select i1 %i.ar, ptr %i.ae, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not32.i = icmp eq i32 %i.aq, 0
  br i1 %.not32.i, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc12.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.at = add nsw i64 %wide.trip.count.i, -1
  %xtraiter114 = and i64 %.sroa.0.0.copyload.i.i, 3 ; 3 uses
  %i.au = icmp ult i64 %i.at, 3
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter119 = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i.i29.i = phi i32 [ -2128831035, %.lr.ph.preheader.i.new ], [ %i.br, %.lr.ph.i ]
  %niter120 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter120.next.3, %.lr.ph.i ]
  %i.av = mul i32 %.09.i.i29.i, 16777619
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !68, !noalias !7846
  %i.ay = zext i8 %i.ax to i32
  %i.az = xor i32 %i.av, %i.ay
  %i.ba = mul i32 %i.az, 16777619
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !68, !noalias !7846
  %i.be = zext i8 %i.bd to i32
  %i.bf = xor i32 %i.ba, %i.be
  %i.bg = mul i32 %i.bf, 16777619
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !68, !noalias !7846
  %i.bk = zext i8 %i.bj to i32
  %i.bl = xor i32 %i.bg, %i.bk
  %i.bm = mul i32 %i.bl, 16777619
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !68, !noalias !7846
  %i.bq = zext i8 %i.bp to i32
  %i.br = xor i32 %i.bm, %i.bq                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter120.next.3 = add i64 %niter120, 4         ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ]
  %.09.i.i29.i.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i ], [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i64 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i.i29.i.epil = phi i32 [ %.09.i.i29.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bw, %.lr.ph.i.epil ]
  %epil.iter115 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter115.next, %.lr.ph.i.epil ]
  %i.bs = mul i32 %.09.i.i29.i.epil, 16777619
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i.epil
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !68, !noalias !7846
  %i.bv = zext i8 %i.bu to i32
  %i.bw = xor i32 %i.bs, %i.bv                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.i.epil, !llvm.loop !7832

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.noexc12.i
  %.09.i.i.lcssa.i = phi i32 [ -2128831035, %.noexc12.i ], [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ], [ %i.bw, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !7845
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.09.i.i.lcssa.i, ptr %i.bx, align 4, !tbaa !79
  %i.by = add nuw i64 %.031.i, 9223372036854775807
  %i.bz = and i64 %i.by, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bz, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.noexc12.i, !llvm.loop !7833

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = sdiv i32 %0, 64                         ; 2 uses
  %i.cb = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.cc
  %i.cd = xor i64 %notmask.i.i35, -1
  %i.ce = sub nsw i32 64, %i.cb
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl i64 %i.cd, %i.cf
  %i.ch = load i8, ptr %2, align 8, !tbaa !1333, !range !90, !noundef !91
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1334
  %i.ck = sext i32 %i.ca to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !138
  %i.cn = xor i8 %i.ch, 1
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = sub nsw i64 0, %i.co
  %i.cq = xor i64 %i.cm, %i.cp
  %i.cr = and i64 %i.cq, %i.cg                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cr, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = shl nsw i32 %i.ca, 6
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre.i38 = load ptr, ptr %i.cs, align 8, !tbaa !1326 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1328, !nonnull !91, !align !175
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !379, !noalias !7847
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1329, !nonnull !91, !align !175
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1331, !nonnull !91, !align !175
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !528
  br label %.noexc12.i39

.noexc12.i39:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52, %.preheader.i37
  %.031.i40 = phi i64 [ %i.cr, %.preheader.i37 ], [ %i.er, %_ZN8facebook5velox6StatusD2Ev.exit20.i52 ] ; 3 uses
  %i.df = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !7847
  %i.dg = or disjoint i64 %i.df, %i.cu            ; 2 uses
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %i.dh, align 8, !noalias !7847 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.2.0.copyload.i.i43 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i42, align 8, !tbaa !68, !noalias !7847 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i41, ptr %5, align 8, !noalias !7847
  store ptr %.sroa.2.0.copyload.i.i43, ptr %i.cv, align 8, !noalias !7847
  %i.di = trunc i64 %.sroa.0.0.copyload.i.i41 to i32 ; 2 uses
  %i.dj = icmp ult i32 %i.di, 13
  %i.dk = select i1 %i.dj, ptr %i.cw, ptr %.sroa.2.0.copyload.i.i43 ; 5 uses
  %.not32.i44 = icmp eq i32 %i.di, 0
  br i1 %.not32.i44, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.preheader.i45

.lr.ph.preheader.i45:                             ; preds = %.noexc12.i39
  %wide.trip.count.i46 = and i64 %.sroa.0.0.copyload.i.i41, 4294967295
  %i.dl = add nsw i64 %wide.trip.count.i46, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i41, 3 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 3
  br i1 %i.dm, label %.lr.ph.i47.epil.preheader, label %.lr.ph.preheader.i45.new

.lr.ph.preheader.i45.new:                         ; preds = %.lr.ph.preheader.i45
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i41, 4294967292
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47, %.lr.ph.preheader.i45.new
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.preheader.i45.new ], [ %indvars.iv.next.i50.3, %.lr.ph.i47 ] ; 5 uses
  %.09.i.i29.i49 = phi i32 [ -2128831035, %.lr.ph.preheader.i45.new ], [ %i.ej, %.lr.ph.i47 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i45.new ], [ %niter.next.3, %.lr.ph.i47 ]
  %i.dn = mul i32 %.09.i.i29.i49, 16777619
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !68, !noalias !7848
  %i.dq = zext i8 %i.dp to i32
  %i.dr = xor i32 %i.dn, %i.dq
  %i.ds = mul i32 %i.dr, 16777619
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !68, !noalias !7848
  %i.dw = zext i8 %i.dv to i32
  %i.dx = xor i32 %i.ds, %i.dw
  %i.dy = mul i32 %i.dx, 16777619
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !68, !noalias !7848
  %i.ec = zext i8 %i.eb to i32
  %i.ed = xor i32 %i.dy, %i.ec
  %i.ee = mul i32 %i.ed, 16777619
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !68, !noalias !7848
  %i.ei = zext i8 %i.eh to i32
  %i.ej = xor i32 %i.ee, %i.ei                    ; 3 uses
  %indvars.iv.next.i50.3 = add nuw nsw i64 %indvars.iv.i48, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, label %.lr.ph.i47, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa: ; preds = %.lr.ph.i47
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.i47.epil.preheader

.lr.ph.i47.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, %.lr.ph.preheader.i45
  %indvars.iv.i48.epil.init = phi i64 [ 0, %.lr.ph.preheader.i45 ], [ %indvars.iv.next.i50.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ]
  %.09.i.i29.i49.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i45 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.i47.epil

.lr.ph.i47.epil:                                  ; preds = %.lr.ph.i47.epil, %.lr.ph.i47.epil.preheader
  %indvars.iv.i48.epil = phi i64 [ %indvars.iv.i48.epil.init, %.lr.ph.i47.epil.preheader ], [ %indvars.iv.next.i50.epil, %.lr.ph.i47.epil ] ; 2 uses
  %.09.i.i29.i49.epil = phi i32 [ %.09.i.i29.i49.epil.init, %.lr.ph.i47.epil.preheader ], [ %i.eo, %.lr.ph.i47.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i47.epil.preheader ], [ %epil.iter.next, %.lr.ph.i47.epil ]
  %i.ek = mul i32 %.09.i.i29.i49.epil, 16777619
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48.epil
  %i.em = load i8, ptr %i.el, align 1, !tbaa !68, !noalias !7848
  %i.en = zext i8 %i.em to i32
  %i.eo = xor i32 %i.ek, %i.en                    ; 2 uses
  %indvars.iv.next.i50.epil = add nuw nsw i64 %indvars.iv.i48.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.i47.epil, !llvm.loop !7838

_ZN8facebook5velox6StatusD2Ev.exit20.i52:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, %.lr.ph.i47.epil, %.noexc12.i39
  %.09.i.i.lcssa.i53 = phi i32 [ -2128831035, %.noexc12.i39 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph.i47.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !7847
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  store i32 %.09.i.i.lcssa.i53, ptr %i.ep, align 4, !tbaa !79
  %i.eq = add i64 %.031.i40, -1
  %i.er = and i64 %i.eq, %.031.i40                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.er, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %.noexc12.i39, !llvm.loop !7833

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52, %bb.e, %bb.d
  %i.es = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3380 = icmp sgt i32 %i.es, %i.d
  br i1 %.not3380, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, %.lr.ph
  %i.et = phi i32 [ %i.ev, %.lr.ph ], [ %i.es, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55 ] ; 2 uses
  %.081 = phi i32 [ %i.et, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55 ]
  %i.eu = sdiv i32 %.081, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.eu)
  %i.ev = add nsw i32 %i.et, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ev, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !7839

bb.f:                                             ; preds = %._crit_edge
  %i.ew = ashr i32 %1, 6
  %i.ex = and i32 %1, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %notmask.i56 = shl nsw i64 -1, %i.ey
  %i.ez = xor i64 %notmask.i56, -1
  %i.fa = load i8, ptr %2, align 8, !tbaa !1333, !range !90, !noundef !91
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1334
  %i.fd = sext i32 %i.ew to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !138
  %i.fg = xor i8 %i.fa, 1
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = xor i64 %i.ff, %i.fi
  %i.fk = and i64 %i.fj, %i.ez                    ; 2 uses
  %.not.i57 = icmp eq i64 %i.fk, 0
  br i1 %.not.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i58

.preheader.i58:                                   ; preds = %bb.f
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = sext i32 %i.d to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre.i59 = load ptr, ptr %i.fl, align 8, !tbaa !1326 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre.i59, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1328, !nonnull !91, !align !175
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !379, !noalias !7849
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre.i59, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1329, !nonnull !91, !align !175
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1331, !nonnull !91, !align !175
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !528
  br label %.noexc12.i60

.noexc12.i60:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73, %.preheader.i58
  %.031.i61 = phi i64 [ %i.fk, %.preheader.i58 ], [ %i.hj, %_ZN8facebook5velox6StatusD2Ev.exit20.i73 ] ; 3 uses
  %i.fx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i61, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !7849
  %i.fy = or disjoint i64 %i.fx, %i.fm            ; 2 uses
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fr, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.fz, align 8, !noalias !7849 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.2.0.copyload.i.i64 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i63, align 8, !tbaa !68, !noalias !7849 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i62, ptr %4, align 8, !noalias !7849
  store ptr %.sroa.2.0.copyload.i.i64, ptr %i.fn, align 8, !noalias !7849
  %i.ga = trunc i64 %.sroa.0.0.copyload.i.i62 to i32 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 13
  %i.gc = select i1 %i.gb, ptr %i.fo, ptr %.sroa.2.0.copyload.i.i64 ; 5 uses
  %.not32.i65 = icmp eq i32 %i.ga, 0
  br i1 %.not32.i65, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.preheader.i66

.lr.ph.preheader.i66:                             ; preds = %.noexc12.i60
  %wide.trip.count.i67 = and i64 %.sroa.0.0.copyload.i.i62, 4294967295
  %i.gd = add nsw i64 %wide.trip.count.i67, -1
  %xtraiter107 = and i64 %.sroa.0.0.copyload.i.i62, 3 ; 3 uses
  %i.ge = icmp ult i64 %i.gd, 3
  br i1 %i.ge, label %.lr.ph.i68.epil.preheader, label %.lr.ph.preheader.i66.new

.lr.ph.preheader.i66.new:                         ; preds = %.lr.ph.preheader.i66
  %unroll_iter112 = and i64 %.sroa.0.0.copyload.i.i62, 4294967292
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %.lr.ph.preheader.i66.new
  %indvars.iv.i69 = phi i64 [ 0, %.lr.ph.preheader.i66.new ], [ %indvars.iv.next.i71.3, %.lr.ph.i68 ] ; 5 uses
  %.09.i.i29.i70 = phi i32 [ -2128831035, %.lr.ph.preheader.i66.new ], [ %i.hb, %.lr.ph.i68 ]
  %niter113 = phi i64 [ 0, %.lr.ph.preheader.i66.new ], [ %niter113.next.3, %.lr.ph.i68 ]
  %i.gf = mul i32 %.09.i.i29.i70, 16777619
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !68, !noalias !7850
  %i.gi = zext i8 %i.gh to i32
  %i.gj = xor i32 %i.gf, %i.gi
  %i.gk = mul i32 %i.gj, 16777619
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !68, !noalias !7850
  %i.go = zext i8 %i.gn to i32
  %i.gp = xor i32 %i.gk, %i.go
  %i.gq = mul i32 %i.gp, 16777619
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !68, !noalias !7850
  %i.gu = zext i8 %i.gt to i32
  %i.gv = xor i32 %i.gq, %i.gu
  %i.gw = mul i32 %i.gv, 16777619
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !68, !noalias !7850
  %i.ha = zext i8 %i.gz to i32
  %i.hb = xor i32 %i.gw, %i.ha                    ; 3 uses
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i69, 4 ; 2 uses
  %niter113.next.3 = add i64 %niter113, 4         ; 2 uses
  %niter113.ncmp.3 = icmp eq i64 %niter113.next.3, %unroll_iter112
  br i1 %niter113.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, label %.lr.ph.i68, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa: ; preds = %.lr.ph.i68
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.i68.epil.preheader

.lr.ph.i68.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, %.lr.ph.preheader.i66
  %indvars.iv.i69.epil.init = phi i64 [ 0, %.lr.ph.preheader.i66 ], [ %indvars.iv.next.i71.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ]
  %.09.i.i29.i70.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i66 ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i68.epil

.lr.ph.i68.epil:                                  ; preds = %.lr.ph.i68.epil, %.lr.ph.i68.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.i69.epil.init, %.lr.ph.i68.epil.preheader ], [ %indvars.iv.next.i71.epil, %.lr.ph.i68.epil ] ; 2 uses
  %.09.i.i29.i70.epil = phi i32 [ %.09.i.i29.i70.epil.init, %.lr.ph.i68.epil.preheader ], [ %i.hg, %.lr.ph.i68.epil ]
  %epil.iter108 = phi i64 [ 0, %.lr.ph.i68.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i68.epil ]
  %i.hc = mul i32 %.09.i.i29.i70.epil, 16777619
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69.epil
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !68, !noalias !7850
  %i.hf = zext i8 %i.he to i32
  %i.hg = xor i32 %i.hc, %i.hf                    ; 2 uses
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter108.next = add i64 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i64 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.i68.epil, !llvm.loop !7844

_ZN8facebook5velox6StatusD2Ev.exit20.i73:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, %.lr.ph.i68.epil, %.noexc12.i60
  %.09.i.i.lcssa.i74 = phi i32 [ -2128831035, %.noexc12.i60 ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ], [ %i.hg, %.lr.ph.i68.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !7849
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.fy
  store i32 %.09.i.i.lcssa.i74, ptr %i.hh, align 4, !tbaa !79
  %i.hi = add nuw i64 %.031.i61, 9223372036854775807
  %i.hj = and i64 %i.hi, %.031.i61                ; 2 uses
  %.not10.i75 = icmp eq i64 %i.hj, 0
  br i1 %.not10.i75, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.noexc12.i60, !llvm.loop !7833

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1336, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1337
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.noexc18.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.noexc18.lr.ph:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre96 = load ptr, ptr %i.k, align 8, !tbaa !1326 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre96, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1328, !nonnull !91, !align !175
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !379, !noalias !7863
  %i.s = getelementptr inbounds nuw i8, ptr %.pre96, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1329, !nonnull !91, !align !175
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1331, !nonnull !91, !align !175
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !528
  br label %.noexc18

bb.b:                                             ; preds = %bb.a
  %i.x = shl i32 %1, 6                            ; 3 uses
  %i.y = add i32 %i.x, 64
  %i.z = sext i32 %i.y to i64
  %.not85 = icmp eq i32 %i.x, -64
  br i1 %.not85, label %.loopexit, label %.noexc24.lr.ph

.noexc24.lr.ph:                                   ; preds = %bb.b
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !1326 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1328, !nonnull !91, !align !175
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !379, !noalias !7864
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1329, !nonnull !91, !align !175
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1331, !nonnull !91, !align !175
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit34
  %.084 = phi i64 [ %i.aa, %.noexc24.lr.ph ], [ %i.bw, %_ZN8facebook5velox6StatusD2Ev.exit34 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7864
  %sext = shl i64 %.084, 32
  %i.am = ashr exact i64 %sext, 28
  %i.an = getelementptr inbounds i8, ptr %i.ag, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !noalias !7864 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68, !noalias !7864 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !noalias !7864
  store ptr %.sroa.2.0.copyload.i, ptr %i.ac, align 8, !noalias !7864
  %i.ao = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 13
  %i.aq = select i1 %i.ap, ptr %i.ad, ptr %.sroa.2.0.copyload.i ; 5 uses
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.noexc24
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ar = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 3    ; 3 uses
  %i.as = icmp ult i64 %i.ar, 3
  br i1 %i.as, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i, 4294967292
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %indvars.iv.next.3, %.lr.ph82 ] ; 5 uses
  %.09.i.i.i80 = phi i32 [ -2128831035, %.lr.ph82.preheader.new ], [ %i.bp, %.lr.ph82 ]
  %niter = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter.next.3, %.lr.ph82 ]
  %i.at = mul i32 %.09.i.i.i80, 16777619
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !68, !noalias !7865
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.at, %i.aw
  %i.ay = mul i32 %i.ax, 16777619
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !68, !noalias !7865
  %i.bc = zext i8 %i.bb to i32
  %i.bd = xor i32 %i.ay, %i.bc
  %i.be = mul i32 %i.bd, 16777619
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !68, !noalias !7865
  %i.bi = zext i8 %i.bh to i32
  %i.bj = xor i32 %i.be, %i.bi
  %i.bk = mul i32 %i.bj, 16777619
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68, !noalias !7865
  %i.bo = zext i8 %i.bn to i32
  %i.bp = xor i32 %i.bk, %i.bo                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, label %.lr.ph82, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa: ; preds = %.lr.ph82
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, %.lr.ph82.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ]
  %.09.i.i.i80.epil.init = phi i32 [ -2128831035, %.lr.ph82.preheader ], [ %i.bp, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph82.epil

.lr.ph82.epil:                                    ; preds = %.lr.ph82.epil, %.lr.ph82.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph82.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph82.epil ] ; 2 uses
  %.09.i.i.i80.epil = phi i32 [ %.09.i.i.i80.epil.init, %.lr.ph82.epil.preheader ], [ %i.bu, %.lr.ph82.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph82.epil.preheader ], [ %epil.iter.next, %.lr.ph82.epil ]
  %i.bq = mul i32 %.09.i.i.i80.epil, 16777619
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.epil
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !68, !noalias !7865
  %i.bt = zext i8 %i.bs to i32
  %i.bu = xor i32 %i.bq, %i.bt                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.epil, !llvm.loop !7857

_ZN8facebook5velox6StatusD2Ev.exit34:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, %.lr.ph82.epil, %.noexc24
  %.09.i.i.i.lcssa = phi i32 [ -2128831035, %.noexc24 ], [ %i.bp, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ], [ %i.bu, %.lr.ph82.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7864
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.084
  store i32 %.09.i.i.i.lcssa, ptr %i.bv, align 4, !tbaa !79
  %i.bw = add nuw i64 %.084, 1                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.z
  br i1 %i.bx, label %.noexc24, label %.loopexit, !llvm.loop !7858

.noexc18:                                         ; preds = %.noexc18.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit58
  %.01579 = phi i64 [ %i.j, %.noexc18.lr.ph ], [ %i.dk, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.by = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01579, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !7863
  %i.bz = or disjoint i64 %i.by, %i.m             ; 2 uses
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.ca, align 8, !noalias !7863 ; 5 uses
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2.0.copyload.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !68, !noalias !7863 ; 2 uses
  store i64 %.sroa.0.0.copyload.i42, ptr %3, align 8, !noalias !7863
  store ptr %.sroa.2.0.copyload.i44, ptr %i.n, align 8, !noalias !7863
  %i.cb = trunc i64 %.sroa.0.0.copyload.i42 to i32 ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 13
  %i.cd = select i1 %i.cc, ptr %i.o, ptr %.sroa.2.0.copyload.i44 ; 5 uses
  %.not87 = icmp eq i32 %i.cb, 0
  br i1 %.not87, label %_ZN8facebook5velox6StatusD2Ev.exit58, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc18
  %wide.trip.count94 = and i64 %.sroa.0.0.copyload.i42, 4294967295
  %i.ce = add nsw i64 %wide.trip.count94, -1
  %xtraiter110 = and i64 %.sroa.0.0.copyload.i42, 3 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter115 = and i64 %.sroa.0.0.copyload.i42, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next92.3, %.lr.ph ] ; 5 uses
  %.09.i.i76 = phi i32 [ -2128831035, %.lr.ph.preheader.new ], [ %i.dc, %.lr.ph ]
  %niter116 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter116.next.3, %.lr.ph ]
  %i.cg = mul i32 %.09.i.i76, 16777619
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv91
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !68, !noalias !7866
  %i.cj = zext i8 %i.ci to i32
  %i.ck = xor i32 %i.cg, %i.cj
  %i.cl = mul i32 %i.ck, 16777619
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1345
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ct, ptr %i.da, align 8, !tbaa !1346
  store i8 1, ptr %3, align 8, !tbaa !1348
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ct, ptr %i.db, align 8, !tbaa !1349
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef nonnull byval(%class.anon.2825) align 8 %2, ptr noundef nonnull byval(%class.anon.2826) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit15, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.2825) align 8 %2, ptr noundef byval(%class.anon.2826) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1345, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1346
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1338 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1340, !nonnull !91, !align !175
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !495
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !496, !range !90, !noundef !91
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 59
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1341, !nonnull !91, !align !175
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1343, !nonnull !91, !align !175
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !528
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i, %.preheader.i
  %.032.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.cq, %_ZN8facebook5velox6StatusD2Ev.exit21.i ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = or disjoint i32 %i.d, %i.av             ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !7892
  br i1 %i.al, label %.noexc13.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i8, ptr %i.am, align 1, !tbaa !497, !range !90, !noundef !91
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !498
  br label %.noexc13.i

bb.g:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !499
  %i.bc = shl nsw i64 %i.ax, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !79
  br label %.noexc13.i

.noexc13.i:                                       ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.g ], [ %i.ba, %bb.f ], [ %i.aw, %bb.d ]
  %i.bf = sext i32 %.0.i.i.i.i to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bg, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8, !noalias !7892
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.ac, align 8, !noalias !7892
  %i.bh = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 13
  %i.bj = select i1 %i.bi, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i.i ; 5 uses
  %.not33.i = icmp eq i32 %i.bh, 0
  br i1 %.not33.i, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.bk = add nsw i64 %wide.trip.count.i, -1
  %xtraiter116 = and i64 %.sroa.0.0.copyload.i.i.i, 3 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 3
  br i1 %i.bl, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter121 = and i64 %.sroa.0.0.copyload.i.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i.i30.i = phi i32 [ -2128831035, %.lr.ph.preheader.i.new ], [ %i.ci, %.lr.ph.i ]
  %niter122 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter122.next.3, %.lr.ph.i ]
  %i.bm = mul i32 %.09.i.i30.i, 16777619
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !68, !noalias !7893
  %i.bp = zext i8 %i.bo to i32
  %i.bq = xor i32 %i.bm, %i.bp
  %i.br = mul i32 %i.bq, 16777619
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !68, !noalias !7893
  %i.bv = zext i8 %i.bu to i32
  %i.bw = xor i32 %i.br, %i.bv
  %i.bx = mul i32 %i.bw, 16777619
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !68, !noalias !7893
  %i.cb = zext i8 %i.ca to i32
  %i.cc = xor i32 %i.bx, %i.cb
  %i.cd = mul i32 %i.cc, 16777619
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !68, !noalias !7893
  %i.ch = zext i8 %i.cg to i32
  %i.ci = xor i32 %i.cd, %i.ch                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter122.next.3 = add i64 %niter122, 4         ; 2 uses
  %niter122.ncmp.3 = icmp eq i64 %niter122.next.3, %unroll_iter121
  br i1 %niter122.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ]
  %.09.i.i30.i.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i ], [ %i.ci, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i.i30.i.epil = phi i32 [ %.09.i.i30.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cn, %.lr.ph.i.epil ]
  %epil.iter117 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter117.next, %.lr.ph.i.epil ]
  %i.cj = mul i32 %.09.i.i30.i.epil, 16777619
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i.epil
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !68, !noalias !7893
  %i.cm = zext i8 %i.cl to i32
  %i.cn = xor i32 %i.cj, %i.cm                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.i.epil, !llvm.loop !7879

_ZN8facebook5velox6StatusD2Ev.exit21.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.noexc13.i
  %.09.i.i.lcssa.i = phi i32 [ -2128831035, %.noexc13.i ], [ %i.ci, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ], [ %i.cn, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !7892
  %i.co = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ax
  store i32 %.09.i.i.lcssa.i, ptr %i.co, align 4, !tbaa !79
  %i.cp = add nuw i64 %.032.i, 9223372036854775807
  %i.cq = and i64 %i.cp, %.032.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.cq, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !7880

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = sdiv i32 %0, 64                         ; 2 uses
  %i.cs = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ct
  %i.cu = xor i64 %notmask.i.i35, -1
  %i.cv = sub nsw i32 64, %i.cs
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl i64 %i.cu, %i.cw
  %i.cy = load i8, ptr %2, align 8, !tbaa !1345, !range !90, !noundef !91
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1346
  %i.db = sext i32 %i.cr to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !138
  %i.de = xor i8 %i.cy, 1
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = xor i64 %i.dd, %i.dg
  %i.di = and i64 %i.dh, %i.cx                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.di, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = shl nsw i32 %i.cr, 6
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre.i38 = load ptr, ptr %i.dj, align 8, !tbaa !1338 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1340, !nonnull !91, !align !175
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !495
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !496, !range !90, !noundef !91
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1341, !nonnull !91, !align !175
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1343, !nonnull !91, !align !175
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !528
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53, %.preheader.i37
  %.032.i39 = phi i64 [ %i.di, %.preheader.i37 ], [ %i.fz, %_ZN8facebook5velox6StatusD2Ev.exit21.i53 ] ; 3 uses
  %i.ed = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i39, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = or disjoint i32 %i.dk, %i.ee            ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !7894
  br i1 %i.du, label %.noexc13.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = load i8, ptr %i.dv, align 1, !tbaa !497, !range !90, !noundef !91
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = load i32, ptr %i.dx, align 8, !tbaa !498
  br label %.noexc13.i40

bb.m:                                             ; preds = %bb.k
  %i.ek = load ptr, ptr %i.dw, align 8, !tbaa !499
  %i.el = shl nsw i64 %i.eg, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !79
  br label %.noexc13.i40

.noexc13.i40:                                     ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i41 = phi i32 [ %i.en, %bb.m ], [ %i.ej, %bb.l ], [ %i.ef, %bb.j ]
  %i.eo = sext i32 %.0.i.i.i.i41 to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.eo ; 2 uses
  %.sroa.0.0.copyload.i.i.i42 = load i64, ptr %i.ep, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.2.0.copyload.i.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i43, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i42, ptr %5, align 8, !noalias !7894
  store ptr %.sroa.2.0.copyload.i.i.i44, ptr %i.dl, align 8, !noalias !7894
  %i.eq = trunc i64 %.sroa.0.0.copyload.i.i.i42 to i32 ; 2 uses
  %i.er = icmp ult i32 %i.eq, 13
  %i.es = select i1 %i.er, ptr %i.dm, ptr %.sroa.2.0.copyload.i.i.i44 ; 5 uses
  %.not33.i45 = icmp eq i32 %i.eq, 0
  br i1 %.not33.i45, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.noexc13.i40
  %wide.trip.count.i47 = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967295
  %i.et = add nsw i64 %wide.trip.count.i47, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i.i42, 3 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 3
  br i1 %i.eu, label %.lr.ph.i48.epil.preheader, label %.lr.ph.preheader.i46.new

.lr.ph.preheader.i46.new:                         ; preds = %.lr.ph.preheader.i46
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967292
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i46.new
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %indvars.iv.next.i51.3, %.lr.ph.i48 ] ; 5 uses
  %.09.i.i30.i50 = phi i32 [ -2128831035, %.lr.ph.preheader.i46.new ], [ %i.fr, %.lr.ph.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %niter.next.3, %.lr.ph.i48 ]
  %i.ev = mul i32 %.09.i.i30.i50, 16777619
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !68, !noalias !7895
  %i.ey = zext i8 %i.ex to i32
  %i.ez = xor i32 %i.ev, %i.ey
  %i.fa = mul i32 %i.ez, 16777619
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !68, !noalias !7895
  %i.fe = zext i8 %i.fd to i32
  %i.ff = xor i32 %i.fa, %i.fe
  %i.fg = mul i32 %i.ff, 16777619
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !68, !noalias !7895
  %i.fk = zext i8 %i.fj to i32
  %i.fl = xor i32 %i.fg, %i.fk
  %i.fm = mul i32 %i.fl, 16777619
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !68, !noalias !7895
  %i.fq = zext i8 %i.fp to i32
  %i.fr = xor i32 %i.fm, %i.fq                    ; 3 uses
  %indvars.iv.next.i51.3 = add nuw nsw i64 %indvars.iv.i49, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, label %.lr.ph.i48, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa: ; preds = %.lr.ph.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.i48.epil.preheader

.lr.ph.i48.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, %.lr.ph.preheader.i46
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i51.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ]
  %.09.i.i30.i50.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i46 ], [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i48.epil

.lr.ph.i48.epil:                                  ; preds = %.lr.ph.i48.epil, %.lr.ph.i48.epil.preheader
  %indvars.iv.i49.epil = phi i64 [ %indvars.iv.i49.epil.init, %.lr.ph.i48.epil.preheader ], [ %indvars.iv.next.i51.epil, %.lr.ph.i48.epil ] ; 2 uses
  %.09.i.i30.i50.epil = phi i32 [ %.09.i.i30.i50.epil.init, %.lr.ph.i48.epil.preheader ], [ %i.fw, %.lr.ph.i48.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i48.epil.preheader ], [ %epil.iter.next, %.lr.ph.i48.epil ]
  %i.fs = mul i32 %.09.i.i30.i50.epil, 16777619
  %i.ft = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49.epil
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !68, !noalias !7895
  %i.fv = zext i8 %i.fu to i32
  %i.fw = xor i32 %i.fs, %i.fv                    ; 2 uses
  %indvars.iv.next.i51.epil = add nuw nsw i64 %indvars.iv.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.i48.epil, !llvm.loop !7885

_ZN8facebook5velox6StatusD2Ev.exit21.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, %.lr.ph.i48.epil, %.noexc13.i40
  %.09.i.i.lcssa.i54 = phi i32 [ -2128831035, %.noexc13.i40 ], [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ], [ %i.fw, %.lr.ph.i48.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !7894
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eg
  store i32 %.09.i.i.lcssa.i54, ptr %i.fx, align 4, !tbaa !79
  %i.fy = add i64 %.032.i39, -1
  %i.fz = and i64 %i.fy, %.032.i39                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.fz, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %bb.j, !llvm.loop !7880

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53, %bb.i, %bb.h
  %i.ga = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3382 = icmp sgt i32 %i.ga, %i.d
  br i1 %.not3382, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.n

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, %.lr.ph
  %i.gb = phi i32 [ %i.gd, %.lr.ph ], [ %i.ga, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56 ] ; 2 uses
  %.083 = phi i32 [ %i.gb, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56 ]
  %i.gc = sdiv i32 %.083, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.gc)
  %i.gd = add nsw i32 %i.gb, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gd, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !7886

bb.n:                                             ; preds = %._crit_edge
  %i.ge = ashr i32 %1, 6
  %i.gf = and i32 %1, 63
  %i.gg = zext nneg i32 %i.gf to i64
  %notmask.i57 = shl nsw i64 -1, %i.gg
  %i.gh = xor i64 %notmask.i57, -1
  %i.gi = load i8, ptr %2, align 8, !tbaa !1345, !range !90, !noundef !91
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1346
  %i.gl = sext i32 %i.ge to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !138
  %i.go = xor i8 %i.gi, 1
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = xor i64 %i.gn, %i.gq
  %i.gs = and i64 %i.gr, %i.gh                    ; 2 uses
  %.not.i58 = icmp eq i64 %i.gs, 0
  br i1 %.not.i58, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.n
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre.i60 = load ptr, ptr %i.gt, align 8, !tbaa !1338 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1340, !nonnull !91, !align !175
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !495
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 58
  %i.hc = load i8, ptr %i.hb, align 2, !tbaa !496, !range !90, !noundef !91
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 59
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1341, !nonnull !91, !align !175
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1343, !nonnull !91, !align !175
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !528
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75, %.preheader.i59
  %.032.i61 = phi i64 [ %i.gs, %.preheader.i59 ], [ %i.ji, %_ZN8facebook5velox6StatusD2Ev.exit21.i75 ] ; 3 uses
  %i.hm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i61, i1 true)
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = or disjoint i32 %i.d, %i.hn             ; 2 uses
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !7896
  br i1 %i.hd, label %.noexc13.i62, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hq = load i8, ptr %i.he, align 1, !tbaa !497, !range !90, !noundef !91
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hs = load i32, ptr %i.hg, align 8, !tbaa !498
  br label %.noexc13.i62

bb.r:                                             ; preds = %bb.p
  %i.ht = load ptr, ptr %i.hf, align 8, !tbaa !499
  %i.hu = shl nsw i64 %i.hp, 2
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !79
  br label %.noexc13.i62

.noexc13.i62:                                     ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i63 = phi i32 [ %i.hw, %bb.r ], [ %i.hs, %bb.q ], [ %i.ho, %bb.o ]
  %i.hx = sext i32 %.0.i.i.i.i63 to i64
  %i.hy = getelementptr inbounds [16 x i8], ptr %i.ha, i64 %i.hx ; 2 uses
  %.sroa.0.0.copyload.i.i.i64 = load i64, ptr %i.hy, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.2.0.copyload.i.i.i66 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i65, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i64, ptr %4, align 8, !noalias !7896
  store ptr %.sroa.2.0.copyload.i.i.i66, ptr %i.gu, align 8, !noalias !7896
  %i.hz = trunc i64 %.sroa.0.0.copyload.i.i.i64 to i32 ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 13
  %i.ib = select i1 %i.ia, ptr %i.gv, ptr %.sroa.2.0.copyload.i.i.i66 ; 5 uses
  %.not33.i67 = icmp eq i32 %i.hz, 0
  br i1 %.not33.i67, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.preheader.i68

.lr.ph.preheader.i68:                             ; preds = %.noexc13.i62
  %wide.trip.count.i69 = and i64 %.sroa.0.0.copyload.i.i.i64, 4294967295
  %i.ic = add nsw i64 %wide.trip.count.i69, -1
  %xtraiter109 = and i64 %.sroa.0.0.copyload.i.i.i64, 3 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 3
  br i1 %i.id, label %.lr.ph.i70.epil.preheader, label %.lr.ph.preheader.i68.new

.lr.ph.preheader.i68.new:                         ; preds = %.lr.ph.preheader.i68
  %unroll_iter114 = and i64 %.sroa.0.0.copyload.i.i.i64, 4294967292
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70, %.lr.ph.preheader.i68.new
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %indvars.iv.next.i73.3, %.lr.ph.i70 ] ; 5 uses
  %.09.i.i30.i72 = phi i32 [ -2128831035, %.lr.ph.preheader.i68.new ], [ %i.ja, %.lr.ph.i70 ]
  %niter115 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %niter115.next.3, %.lr.ph.i70 ]
  %i.ie = mul i32 %.09.i.i30.i72, 16777619
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !68, !noalias !7897
  %i.ih = zext i8 %i.ig to i32
  %i.ii = xor i32 %i.ie, %i.ih
  %i.ij = mul i32 %i.ii, 16777619
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !68, !noalias !7897
  %i.in = zext i8 %i.im to i32
  %i.io = xor i32 %i.ij, %i.in
  %i.ip = mul i32 %i.io, 16777619
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !68, !noalias !7897
  %i.it = zext i8 %i.is to i32
  %i.iu = xor i32 %i.ip, %i.it
  %i.iv = mul i32 %i.iu, 16777619
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !68, !noalias !7897
  %i.iz = zext i8 %i.iy to i32
  %i.ja = xor i32 %i.iv, %i.iz                    ; 3 uses
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i71, 4 ; 2 uses
  %niter115.next.3 = add i64 %niter115, 4         ; 2 uses
  %niter115.ncmp.3 = icmp eq i64 %niter115.next.3, %unroll_iter114
  br i1 %niter115.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, label %.lr.ph.i70, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa: ; preds = %.lr.ph.i70
  %lcmp.mod111.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.i70.epil.preheader

.lr.ph.i70.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, %.lr.ph.preheader.i68
  %indvars.iv.i71.epil.init = phi i64 [ 0, %.lr.ph.preheader.i68 ], [ %indvars.iv.next.i73.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ]
  %.09.i.i30.i72.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i68 ], [ %i.ja, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter109, 0
  call void @llvm.assume(i1 %lcmp.mod113)
  br label %.lr.ph.i70.epil

.lr.ph.i70.epil:                                  ; preds = %.lr.ph.i70.epil, %.lr.ph.i70.epil.preheader
  %indvars.iv.i71.epil = phi i64 [ %indvars.iv.i71.epil.init, %.lr.ph.i70.epil.preheader ], [ %indvars.iv.next.i73.epil, %.lr.ph.i70.epil ] ; 2 uses
  %.09.i.i30.i72.epil = phi i32 [ %.09.i.i30.i72.epil.init, %.lr.ph.i70.epil.preheader ], [ %i.jf, %.lr.ph.i70.epil ]
  %epil.iter110 = phi i64 [ 0, %.lr.ph.i70.epil.preheader ], [ %epil.iter110.next, %.lr.ph.i70.epil ]
  %i.jb = mul i32 %.09.i.i30.i72.epil, 16777619
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71.epil
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !68, !noalias !7897
  %i.je = zext i8 %i.jd to i32
  %i.jf = xor i32 %i.jb, %i.je                    ; 2 uses
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i71.epil, 1
  %epil.iter110.next = add i64 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i64 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.i70.epil, !llvm.loop !7891

_ZN8facebook5velox6StatusD2Ev.exit21.i75:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, %.lr.ph.i70.epil, %.noexc13.i62
  %.09.i.i.lcssa.i76 = phi i32 [ -2128831035, %.noexc13.i62 ], [ %i.ja, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ], [ %i.jf, %.lr.ph.i70.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !7896
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hp
  store i32 %.09.i.i.lcssa.i76, ptr %i.jg, align 4, !tbaa !79
  %i.jh = add nuw i64 %.032.i61, 9223372036854775807
  %i.ji = and i64 %i.jh, %.032.i61                ; 2 uses
  %.not10.i77 = icmp eq i64 %i.ji, 0
  br i1 %.not10.i77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !7880

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75, %_ZN8facebook5velox6StatusD2Ev.exit21.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1348, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1349
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph86 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph86:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre104 = load ptr, ptr %i.k, align 8, !tbaa !1338 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre104, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1340, !nonnull !91, !align !175
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !495
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 58
  %i.u = load i8, ptr %i.t, align 2, !tbaa !496, !range !90, !noundef !91
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 59
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.pre104, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1341, !nonnull !91, !align !175
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1343, !nonnull !91, !align !175
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !528
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = shl i32 %1, 6                           ; 3 uses
  %i.af = add i32 %i.ae, 64
  %i.ag = sext i32 %i.af to i64
  %.not93 = icmp eq i32 %i.ae, -64
  br i1 %.not93, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.b
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !1338 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1340, !nonnull !91, !align !175
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !495
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !496, !range !90, !noundef !91
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 59
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1341, !nonnull !91, !align !175
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1343, !nonnull !91, !align !175
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !528
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph92, %_ZN8facebook5velox6StatusD2Ev.exit37
  %.091 = phi i64 [ %i.ah, %.lr.ph92 ], [ %i.ct, %_ZN8facebook5velox6StatusD2Ev.exit37 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !7910
  %i.bb = trunc i64 %.091 to i32
  br i1 %i.as, label %.noexc26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = load i8, ptr %i.at, align 1, !tbaa !497, !range !90, !noundef !91
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr %i.av, align 8, !tbaa !498
  br label %.noexc26

bb.f:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !499
  %sext.i = shl i64 %.091, 32
  %i.bg = ashr exact i64 %sext.i, 30
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !79
  br label %.noexc26

.noexc26:                                         ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i29 = phi i32 [ %i.bi, %bb.f ], [ %i.be, %bb.e ], [ %i.bb, %bb.c ]
  %i.bj = sext i32 %.0.i.i.i29 to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.bj ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bk, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !7910
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.aj, align 8, !noalias !7910
  %i.bl = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 13
  %i.bn = select i1 %i.bm, ptr %i.ak, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not94 = icmp eq i32 %i.bl, 0
  br i1 %.not94, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.noexc26
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.bo = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i, 3  ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 3
  br i1 %i.bp, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %indvars.iv.next.3, %.lr.ph89 ] ; 5 uses
  %.09.i.i.i87 = phi i32 [ -2128831035, %.lr.ph89.preheader.new ], [ %i.cm, %.lr.ph89 ]
  %niter = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter.next.3, %.lr.ph89 ]
  %i.bq = mul i32 %.09.i.i.i87, 16777619
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !68, !noalias !7911
  %i.bt = zext i8 %i.bs to i32
  %i.bu = xor i32 %i.bq, %i.bt
  %i.bv = mul i32 %i.bu, 16777619
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !68, !noalias !7911
  %i.bz = zext i8 %i.by to i32
  %i.ca = xor i32 %i.bv, %i.bz
  %i.cb = mul i32 %i.ca, 16777619
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !68, !noalias !7911
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cb, %i.cf
  %i.ch = mul i32 %i.cg, 16777619
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !68, !noalias !7911
  %i.cl = zext i8 %i.ck to i32
  %i.cm = xor i32 %i.ch, %i.cl                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !36

_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, %.lr.ph89.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph89.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ]
  %.09.i.i.i87.epil.init = phi i32 [ -2128831035, %.lr.ph89.preheader ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph89.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph89.epil ] ; 2 uses
  %.09.i.i.i87.epil = phi i32 [ %.09.i.i.i87.epil.init, %.lr.ph89.epil.preheader ], [ %i.cr, %.lr.ph89.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph89.epil.preheader ], [ %epil.iter.next, %.lr.ph89.epil ]
  %i.cn = mul i32 %.09.i.i.i87.epil, 16777619
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.epil
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !68, !noalias !7911
  %i.cq = zext i8 %i.cp to i32
  %i.cr = xor i32 %i.cn, %i.cq                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.epil, !llvm.loop !7902

_ZN8facebook5velox6StatusD2Ev.exit37:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, %.lr.ph89.epil, %.noexc26
  %.09.i.i.i.lcssa = phi i32 [ -2128831035, %.noexc26 ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ], [ %i.cr, %.lr.ph89.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !7910
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.091
  store i32 %.09.i.i.i.lcssa, ptr %i.cs, align 4, !tbaa !79
  %i.ct = add nuw i64 %.091, 1                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.ag
  br i1 %i.cu, label %bb.c, label %.loopexit, !llvm.loop !7903

bb.g:                                             ; preds = %.lr.ph86, %_ZN8facebook5velox6StatusD2Ev.exit64
  %.01585 = phi i64 [ %i.j, %.lr.ph86 ], [ %i.er, %_ZN8facebook5velox6StatusD2Ev.exit64 ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.09.i28.epil = phi i64 [ %.09.i28.epil.init, %.lr.ph.epil.preheader ], [ %i.by, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bu = mul i64 %.09.i28.epil, 1099511628211
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.epil
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !68
  %i.bx = zext i8 %i.bw to i64
  %i.by = xor i64 %i.bu, %i.bx                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit19, label %.lr.ph.epil, !llvm.loop !7978

_ZN8facebook5velox6StatusD2Ev.exit19:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit
  %.09.i.lcssa = phi i64 [ -3750763034362895579, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit ], [ %i.bt, %_ZN8facebook5velox6StatusD2Ev.exit19.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !7980
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv32
  store i64 %.09.i.lcssa, ptr %i.bz, align 8, !tbaa !138
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next33 to i32
  %exitcond35.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond35.not, label %.loopexit, label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit, !llvm.loop !7979

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !394   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !467
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !468
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1372
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ca, ptr %i.ch, align 8, !tbaa !1373
  store i8 1, ptr %3, align 8, !tbaa !1375
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ca, ptr %i.ci, align 8, !tbaa !1376
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.cc, i32 noundef %i.ce, ptr noundef nonnull byval(%class.anon.2900) align 8 %2, ptr noundef nonnull byval(%class.anon.2901) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.2900) align 8 %2, ptr noundef byval(%class.anon.2901) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1372, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1373
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ae = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1364 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1367, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1368, !nonnull !91, !align !175
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1370, !nonnull !91, !align !175
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !365
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.al, i64 %i.ae
  br label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i

_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.035.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bv, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !7992
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ag, align 8, !noalias !7992 ; 5 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !noalias !7992 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !7992
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ac, align 8, !noalias !7992
  %i.an = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ao = icmp ult i32 %i.an, 13
  %i.ap = select i1 %i.ao, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not36.i = icmp eq i32 %i.an, 0
  br i1 %.not36.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.aq = add nsw i64 %wide.trip.count.i, -1
  %xtraiter118 = and i64 %.sroa.0.0.copyload.i.i, 3 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 3
  br i1 %i.ar, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter123 = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i33.i = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i.new ], [ %i.bo, %.lr.ph.i ]
  %niter124 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter124.next.3, %.lr.ph.i ]
  %i.as = mul i64 %.09.i33.i, 1099511628211
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !68
  %i.av = zext i8 %i.au to i64
  %i.aw = xor i64 %i.as, %i.av
  %i.ax = mul i64 %i.aw, 1099511628211
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !68
  %i.bb = zext i8 %i.ba to i64
  %i.bc = xor i64 %i.ax, %i.bb
  %i.bd = mul i64 %i.bc, 1099511628211
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !68
  %i.bh = zext i8 %i.bg to i64
  %i.bi = xor i64 %i.bd, %i.bh
  %i.bj = mul i64 %i.bi, 1099511628211
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !68
  %i.bn = zext i8 %i.bm to i64
  %i.bo = xor i64 %i.bj, %i.bn                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter124.next.3 = add i64 %niter124, 4         ; 2 uses
  %niter124.ncmp.3 = icmp eq i64 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod120.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ]
  %.09.i33.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i ], [ %i.bo, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter118, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i33.i.epil = phi i64 [ %.09.i33.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bt, %.lr.ph.i.epil ]
  %epil.iter119 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter119.next, %.lr.ph.i.epil ]
  %i.bp = mul i64 %.09.i33.i.epil, 1099511628211
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i.epil
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !68
  %i.bs = zext i8 %i.br to i64
  %i.bt = xor i64 %i.bp, %i.bs                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter119.next = add i64 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i64 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.i.epil, !llvm.loop !7983

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i
  %.09.i.lcssa.i = phi i64 [ -3750763034362895579, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i ], [ %i.bo, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !7992
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.am
  store i64 %.09.i.lcssa.i, ptr %gep.i, align 8, !tbaa !138
  %i.bu = add nuw i64 %.035.i, 9223372036854775807
  %i.bv = and i64 %i.bu, %.035.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bv, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i, !llvm.loop !7984

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = sdiv i32 %0, 64                         ; 2 uses
  %i.bx = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.by
  %i.bz = xor i64 %notmask.i.i35, -1
  %i.ca = sub nsw i32 64, %i.bx
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.bz, %i.cb
  %i.cd = load i8, ptr %2, align 8, !tbaa !1372, !range !90, !noundef !91
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1373
  %i.cg = sext i32 %i.bw to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !138
  %i.cj = xor i8 %i.cd, 1
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = and i64 %i.cm, %i.cc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = shl nsw i32 %i.bw, 6
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cs = sext i32 %i.cp to i64
  %.pre.i38 = load ptr, ptr %i.co, align 8, !tbaa !1364 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1367, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1368, !nonnull !91, !align !175
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1370, !nonnull !91, !align !175
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !365
  %invariant.gep.i40 = getelementptr [8 x i8], ptr %i.cz, i64 %i.cs
  br label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41

_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53, %.preheader.i37
  %.035.i42 = phi i64 [ %i.cn, %.preheader.i37 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit24.i53 ] ; 3 uses
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i42, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !7993
  %.sroa.0.0.copyload.i.i43 = load i64, ptr %i.cu, align 8, !noalias !7993 ; 5 uses
  %.sroa.2.0.copyload.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i39, align 8, !tbaa !68, !noalias !7993 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i43, ptr %5, align 8, !noalias !7993
  store ptr %.sroa.2.0.copyload.i.i44, ptr %i.cq, align 8, !noalias !7993
  %i.db = trunc i64 %.sroa.0.0.copyload.i.i43 to i32 ; 2 uses
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = select i1 %i.dc, ptr %i.cr, ptr %.sroa.2.0.copyload.i.i44 ; 5 uses
  %.not36.i45 = icmp eq i32 %i.db, 0
  br i1 %.not36.i45, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41
  %wide.trip.count.i47 = and i64 %.sroa.0.0.copyload.i.i43, 4294967295
  %i.de = add nsw i64 %wide.trip.count.i47, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i43, 3 ; 3 uses
  %i.df = icmp ult i64 %i.de, 3
  br i1 %i.df, label %.lr.ph.i48.epil.preheader, label %.lr.ph.preheader.i46.new

.lr.ph.preheader.i46.new:                         ; preds = %.lr.ph.preheader.i46
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i43, 4294967292
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i46.new
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %indvars.iv.next.i51.3, %.lr.ph.i48 ] ; 5 uses
  %.09.i33.i50 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i46.new ], [ %i.ec, %.lr.ph.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %niter.next.3, %.lr.ph.i48 ]
  %i.dg = mul i64 %.09.i33.i50, 1099511628211
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !68
  %i.dj = zext i8 %i.di to i64
  %i.dk = xor i64 %i.dg, %i.dj
  %i.dl = mul i64 %i.dk, 1099511628211
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !68
  %i.dp = zext i8 %i.do to i64
  %i.dq = xor i64 %i.dl, %i.dp
  %i.dr = mul i64 %i.dq, 1099511628211
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !68
  %i.dv = zext i8 %i.du to i64
  %i.dw = xor i64 %i.dr, %i.dv
  %i.dx = mul i64 %i.dw, 1099511628211
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 3
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !68
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dx, %i.eb                    ; 3 uses
  %indvars.iv.next.i51.3 = add nuw nsw i64 %indvars.iv.i49, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, label %.lr.ph.i48, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa: ; preds = %.lr.ph.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.i48.epil.preheader

.lr.ph.i48.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, %.lr.ph.preheader.i46
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i51.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ]
  %.09.i33.i50.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i46 ], [ %i.ec, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i48.epil

.lr.ph.i48.epil:                                  ; preds = %.lr.ph.i48.epil, %.lr.ph.i48.epil.preheader
  %indvars.iv.i49.epil = phi i64 [ %indvars.iv.i49.epil.init, %.lr.ph.i48.epil.preheader ], [ %indvars.iv.next.i51.epil, %.lr.ph.i48.epil ] ; 2 uses
  %.09.i33.i50.epil = phi i64 [ %.09.i33.i50.epil.init, %.lr.ph.i48.epil.preheader ], [ %i.eh, %.lr.ph.i48.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i48.epil.preheader ], [ %epil.iter.next, %.lr.ph.i48.epil ]
  %i.ed = mul i64 %.09.i33.i50.epil, 1099511628211
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49.epil
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !68
  %i.eg = zext i8 %i.ef to i64
  %i.eh = xor i64 %i.ed, %i.eg                    ; 2 uses
  %indvars.iv.next.i51.epil = add nuw nsw i64 %indvars.iv.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.i48.epil, !llvm.loop !7987

_ZN8facebook5velox6StatusD2Ev.exit24.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, %.lr.ph.i48.epil, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41
  %.09.i.lcssa.i54 = phi i64 [ -3750763034362895579, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41 ], [ %i.ec, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ], [ %i.eh, %.lr.ph.i48.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !7993
  %gep.i55 = getelementptr [8 x i8], ptr %invariant.gep.i40, i64 %i.da
  store i64 %.09.i.lcssa.i54, ptr %gep.i55, align 8, !tbaa !138
  %i.ei = add i64 %.035.i42, -1
  %i.ej = and i64 %i.ei, %.035.i42                ; 2 uses
  %.not10.i56 = icmp eq i64 %i.ej, 0
  br i1 %.not10.i56, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41, !llvm.loop !7984

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53, %bb.e, %bb.d
  %i.ek = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3384 = icmp sgt i32 %i.ek, %i.d
  br i1 %.not3384, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, %.lr.ph
  %i.el = phi i32 [ %i.en, %.lr.ph ], [ %i.ek, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57 ] ; 2 uses
  %.085 = phi i32 [ %i.el, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57 ]
  %i.em = sdiv i32 %.085, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.em)
  %i.en = add nsw i32 %i.el, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.en, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !7988

bb.f:                                             ; preds = %._crit_edge
  %i.eo = ashr i32 %1, 6
  %i.ep = and i32 %1, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i58 = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i58, -1
  %i.es = load i8, ptr %2, align 8, !tbaa !1372, !range !90, !noundef !91
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1373
  %i.ev = sext i32 %i.eo to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !138
  %i.ey = xor i8 %i.es, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = and i64 %i.fb, %i.er                    ; 2 uses
  %.not.i59 = icmp eq i64 %i.fc, 0
  br i1 %.not.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i60

.preheader.i60:                                   ; preds = %bb.f
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fg = sext i32 %i.d to i64
  %.pre.i61 = load ptr, ptr %i.fd, align 8, !tbaa !1364 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1367, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1368, !nonnull !91, !align !175
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1370, !nonnull !91, !align !175
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !365
  %invariant.gep.i63 = getelementptr [8 x i8], ptr %i.fn, i64 %i.fg
  br label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64

_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76, %.preheader.i60
  %.035.i65 = phi i64 [ %i.fc, %.preheader.i60 ], [ %i.gx, %_ZN8facebook5velox6StatusD2Ev.exit24.i76 ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i65, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !7994
  %.sroa.0.0.copyload.i.i66 = load i64, ptr %i.fi, align 8, !noalias !7994 ; 5 uses
  %.sroa.2.0.copyload.i.i67 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i62, align 8, !tbaa !68, !noalias !7994 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i66, ptr %4, align 8, !noalias !7994
  store ptr %.sroa.2.0.copyload.i.i67, ptr %i.fe, align 8, !noalias !7994
  %i.fp = trunc i64 %.sroa.0.0.copyload.i.i66 to i32 ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 13
  %i.fr = select i1 %i.fq, ptr %i.ff, ptr %.sroa.2.0.copyload.i.i67 ; 5 uses
  %.not36.i68 = icmp eq i32 %i.fp, 0
  br i1 %.not36.i68, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.preheader.i69

.lr.ph.preheader.i69:                             ; preds = %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64
  %wide.trip.count.i70 = and i64 %.sroa.0.0.copyload.i.i66, 4294967295
  %i.fs = add nsw i64 %wide.trip.count.i70, -1
  %xtraiter111 = and i64 %.sroa.0.0.copyload.i.i66, 3 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 3
  br i1 %i.ft, label %.lr.ph.i71.epil.preheader, label %.lr.ph.preheader.i69.new

.lr.ph.preheader.i69.new:                         ; preds = %.lr.ph.preheader.i69
  %unroll_iter116 = and i64 %.sroa.0.0.copyload.i.i66, 4294967292
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71, %.lr.ph.preheader.i69.new
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.preheader.i69.new ], [ %indvars.iv.next.i74.3, %.lr.ph.i71 ] ; 5 uses
  %.09.i33.i73 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i69.new ], [ %i.gq, %.lr.ph.i71 ]
  %niter117 = phi i64 [ 0, %.lr.ph.preheader.i69.new ], [ %niter117.next.3, %.lr.ph.i71 ]
  %i.fu = mul i64 %.09.i33.i73, 1099511628211
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !68
  %i.fx = zext i8 %i.fw to i64
  %i.fy = xor i64 %i.fu, %i.fx
  %i.fz = mul i64 %i.fy, 1099511628211
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !68
  %i.gd = zext i8 %i.gc to i64
  %i.ge = xor i64 %i.fz, %i.gd
  %i.gf = mul i64 %i.ge, 1099511628211
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !68
  %i.gj = zext i8 %i.gi to i64
  %i.gk = xor i64 %i.gf, %i.gj
  %i.gl = mul i64 %i.gk, 1099511628211
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !68
  %i.gp = zext i8 %i.go to i64
  %i.gq = xor i64 %i.gl, %i.gp                    ; 3 uses
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter117.next.3 = add i64 %niter117, 4         ; 2 uses
  %niter117.ncmp.3 = icmp eq i64 %niter117.next.3, %unroll_iter116
  br i1 %niter117.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, label %.lr.ph.i71, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa: ; preds = %.lr.ph.i71
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.i71.epil.preheader

.lr.ph.i71.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, %.lr.ph.preheader.i69
  %indvars.iv.i72.epil.init = phi i64 [ 0, %.lr.ph.preheader.i69 ], [ %indvars.iv.next.i74.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ]
  %.09.i33.i73.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i69 ], [ %i.gq, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i71.epil

.lr.ph.i71.epil:                                  ; preds = %.lr.ph.i71.epil, %.lr.ph.i71.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.i72.epil.init, %.lr.ph.i71.epil.preheader ], [ %indvars.iv.next.i74.epil, %.lr.ph.i71.epil ] ; 2 uses
  %.09.i33.i73.epil = phi i64 [ %.09.i33.i73.epil.init, %.lr.ph.i71.epil.preheader ], [ %i.gv, %.lr.ph.i71.epil ]
  %epil.iter112 = phi i64 [ 0, %.lr.ph.i71.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i71.epil ]
  %i.gr = mul i64 %.09.i33.i73.epil, 1099511628211
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72.epil
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !68
  %i.gu = zext i8 %i.gt to i64
  %i.gv = xor i64 %i.gr, %i.gu                    ; 2 uses
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.i71.epil, !llvm.loop !7991

_ZN8facebook5velox6StatusD2Ev.exit24.i76:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, %.lr.ph.i71.epil, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64
  %.09.i.lcssa.i77 = phi i64 [ -3750763034362895579, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64 ], [ %i.gq, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ], [ %i.gv, %.lr.ph.i71.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !7994
  %gep.i78 = getelementptr [8 x i8], ptr %invariant.gep.i63, i64 %i.fo
  store i64 %.09.i.lcssa.i77, ptr %gep.i78, align 8, !tbaa !138
  %i.gw = add nuw i64 %.035.i65, 9223372036854775807
  %i.gx = and i64 %i.gw, %.035.i65                ; 2 uses
  %.not10.i79 = icmp eq i64 %i.gx, 0
  br i1 %.not10.i79, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64, !llvm.loop !7984

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1375, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1376
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = sext i32 %i.l to i64
  %.pre100 = load ptr, ptr %i.k, align 8, !tbaa !1364 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre100, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1367, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.pre100, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1368, !nonnull !91, !align !175
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1370, !nonnull !91, !align !175
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !365
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.o
  br label %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit

bb.b:                                             ; preds = %bb.a
  %i.w = shl i32 %1, 6                            ; 3 uses
  %i.x = add i32 %i.w, 64
  %i.y = sext i32 %i.x to i64
  %.not89 = icmp eq i32 %i.w, -64
  br i1 %.not89, label %.loopexit, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %bb.b
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !1364 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1367, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1368, !nonnull !91, !align !175
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1370, !nonnull !91, !align !175
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !365
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit38
  %.088 = phi i64 [ %i.z, %.noexc28.lr.ph ], [ %i.bs, %_ZN8facebook5velox6StatusD2Ev.exit38 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8005
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !noalias !8005 ; 5 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68, !noalias !8005 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !noalias !8005
  store ptr %.sroa.2.0.copyload.i, ptr %i.ab, align 8, !noalias !8005
  %i.ak = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 13
  %i.am = select i1 %i.al, ptr %i.ac, ptr %.sroa.2.0.copyload.i ; 5 uses
  %.not90 = icmp eq i32 %i.ak, 0
  br i1 %.not90, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.noexc28
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.an = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 3    ; 3 uses
  %i.ao = icmp ult i64 %i.an, 3
  br i1 %i.ao, label %.lr.ph86.epil.preheader, label %.lr.ph86.preheader.new

.lr.ph86.preheader.new:                           ; preds = %.lr.ph86.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i, 4294967292
  br label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86, %.lr.ph86.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %indvars.iv.next.3, %.lr.ph86 ] ; 5 uses
  %.09.i.i84 = phi i64 [ -3750763034362895579, %.lr.ph86.preheader.new ], [ %i.bl, %.lr.ph86 ]
  %niter = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %niter.next.3, %.lr.ph86 ]
  %i.ap = mul i64 %.09.i.i84, 1099511628211
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !68, !noalias !8006
  %i.as = zext i8 %i.ar to i64
  %i.at = xor i64 %i.ap, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !68, !noalias !8006
  %i.ay = zext i8 %i.ax to i64
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !68, !noalias !8006
  %i.be = zext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !68, !noalias !8006
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, label %.lr.ph86, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa: ; preds = %.lr.ph86
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.epil.preheader

.lr.ph86.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, %.lr.ph86.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph86.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ]
  %.09.i.i84.epil.init = phi i64 [ -3750763034362895579, %.lr.ph86.preheader ], [ %i.bl, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph86.epil

.lr.ph86.epil:                                    ; preds = %.lr.ph86.epil, %.lr.ph86.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph86.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph86.epil ] ; 2 uses
  %.09.i.i84.epil = phi i64 [ %.09.i.i84.epil.init, %.lr.ph86.epil.preheader ], [ %i.bq, %.lr.ph86.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph86.epil.preheader ], [ %epil.iter.next, %.lr.ph86.epil ]
  %i.bm = mul i64 %.09.i.i84.epil, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.epil
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !68, !noalias !8006
  %i.bp = zext i8 %i.bo to i64
  %i.bq = xor i64 %i.bm, %i.bp                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.epil, !llvm.loop !7999

_ZN8facebook5velox6StatusD2Ev.exit38:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, %.lr.ph86.epil, %.noexc28
  %.09.i.i.lcssa = phi i64 [ -3750763034362895579, %.noexc28 ], [ %i.bl, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph86.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8005
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.088
  store i64 %.09.i.i.lcssa, ptr %i.br, align 8, !tbaa !138
  %i.bs = add nuw i64 %.088, 1                    ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.y
  br i1 %i.bt, label %.noexc28, label %.loopexit, !llvm.loop !8000

_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit: ; preds = %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit62
  %.01583 = phi i64 [ %i.j, %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.lr.ph ], [ %i.dd, %_ZN8facebook5velox6StatusD2Ev.exit62 ] ; 3 uses
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01583, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !8007
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.q, align 8, !noalias !8007 ; 5 uses
  %.sroa.2.0.copyload.i48 = load ptr, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !68, !noalias !8007 ; 2 uses
  store i64 %.sroa.0.0.copyload.i46, ptr %3, align 8, !noalias !8007
  store ptr %.sroa.2.0.copyload.i48, ptr %i.m, align 8, !noalias !8007
  %i.bv = trunc i64 %.sroa.0.0.copyload.i46 to i32 ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 13
  %i.bx = select i1 %i.bw, ptr %i.n, ptr %.sroa.2.0.copyload.i48 ; 5 uses
  %.not91 = icmp eq i32 %i.bv, 0
  br i1 %.not91, label %_ZN8facebook5velox6StatusD2Ev.exit62, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8facebook5velox9functions15Fnv1_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit
  %wide.trip.count98 = and i64 %.sroa.0.0.copyload.i46, 4294967295
  %i.by = add nsw i64 %wide.trip.count98, -1
  %xtraiter113 = and i64 %.sroa.0.0.copyload.i46, 3 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 3
  br i1 %i.bz, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter118 = and i64 %.sroa.0.0.copyload.i46, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next96.3, %.lr.ph ] ; 5 uses
  %.09.i80 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ]
  %niter119 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter119.next.3, %.lr.ph ]
  %i.ca = mul i64 %.09.i80, 1099511628211
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !68
  %i.cd = zext i8 %i.cc to i64
  %i.ce = xor i64 %i.ca, %i.cd
  %i.cf = mul i64 %i.ce, 1099511628211
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !68
  %i.cj = zext i8 %i.ci to i64
  %i.ck = xor i64 %i.cf, %i.cj
  %i.cl = mul i64 %i.ck, 1099511628211
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
  %.09.i.i23.epil = phi i64 [ %.09.i.i23.epil.init, %.lr.ph.epil.preheader ], [ %i.ca, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bw = mul i64 %.09.i.i23.epil, 1099511628211
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.epil
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !68, !noalias !8015
  %i.bz = zext i8 %i.by to i64
  %i.ca = xor i64 %i.bw, %i.bz                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit14, label %.lr.ph.epil, !llvm.loop !8012

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.loopexit.unr-lcssa, %.lr.ph.epil, %.noexc5
  %.09.i.i.lcssa = phi i64 [ -3750763034362895579, %.noexc5 ], [ %i.bv, %_ZN8facebook5velox6StatusD2Ev.exit14.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8014
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv27
  store i64 %.09.i.i.lcssa, ptr %i.cb, align 8, !tbaa !138
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next28 to i32
  %exitcond30.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond30.not, label %.loopexit, label %.noexc5, !llvm.loop !8013

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !394   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !467
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !468
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1384
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !1385
  store i8 1, ptr %3, align 8, !tbaa !1387
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cc, ptr %i.ck, align 8, !tbaa !1388
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.ce, i32 noundef %i.cg, ptr noundef nonnull byval(%class.anon.2926) align 8 %2, ptr noundef nonnull byval(%class.anon.2927) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.2926) align 8 %2, ptr noundef byval(%class.anon.2927) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1384, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1385
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1377 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1379, !nonnull !91, !align !175
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !379, !noalias !8033
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1380, !nonnull !91, !align !175
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1382, !nonnull !91, !align !175
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !365
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bz, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !8033
  %i.ao = or disjoint i64 %i.an, %i.ac            ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !noalias !8033 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !noalias !8033 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !8033
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ad, align 8, !noalias !8033
  %i.aq = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 13
  %i.as = select i1 %i.ar, ptr %i.ae, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not32.i = icmp eq i32 %i.aq, 0
  br i1 %.not32.i, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc12.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.at = add nsw i64 %wide.trip.count.i, -1
  %xtraiter114 = and i64 %.sroa.0.0.copyload.i.i, 3 ; 3 uses
  %i.au = icmp ult i64 %i.at, 3
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter119 = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i.i29.i = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i.new ], [ %i.br, %.lr.ph.i ]
  %niter120 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter120.next.3, %.lr.ph.i ]
  %i.av = mul i64 %.09.i.i29.i, 1099511628211
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !68, !noalias !8034
  %i.ay = zext i8 %i.ax to i64
  %i.az = xor i64 %i.av, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !68, !noalias !8034
  %i.be = zext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !68, !noalias !8034
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !68, !noalias !8034
  %i.bq = zext i8 %i.bp to i64
  %i.br = xor i64 %i.bm, %i.bq                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter120.next.3 = add i64 %niter120, 4         ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ]
  %.09.i.i29.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i ], [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i64 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i.i29.i.epil = phi i64 [ %.09.i.i29.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bw, %.lr.ph.i.epil ]
  %epil.iter115 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter115.next, %.lr.ph.i.epil ]
  %i.bs = mul i64 %.09.i.i29.i.epil, 1099511628211
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i.epil
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !68, !noalias !8034
  %i.bv = zext i8 %i.bu to i64
  %i.bw = xor i64 %i.bs, %i.bv                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.i.epil, !llvm.loop !8020

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.noexc12.i
  %.09.i.i.lcssa.i = phi i64 [ -3750763034362895579, %.noexc12.i ], [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ], [ %i.bw, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !8033
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  store i64 %.09.i.i.lcssa.i, ptr %i.bx, align 8, !tbaa !138
  %i.by = add nuw i64 %.031.i, 9223372036854775807
  %i.bz = and i64 %i.by, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bz, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.noexc12.i, !llvm.loop !8021

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = sdiv i32 %0, 64                         ; 2 uses
  %i.cb = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.cc
  %i.cd = xor i64 %notmask.i.i35, -1
  %i.ce = sub nsw i32 64, %i.cb
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl i64 %i.cd, %i.cf
  %i.ch = load i8, ptr %2, align 8, !tbaa !1384, !range !90, !noundef !91
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1385
  %i.ck = sext i32 %i.ca to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !138
  %i.cn = xor i8 %i.ch, 1
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = sub nsw i64 0, %i.co
  %i.cq = xor i64 %i.cm, %i.cp
  %i.cr = and i64 %i.cq, %i.cg                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cr, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = shl nsw i32 %i.ca, 6
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre.i38 = load ptr, ptr %i.cs, align 8, !tbaa !1377 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1379, !nonnull !91, !align !175
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !379, !noalias !8035
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1380, !nonnull !91, !align !175
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1382, !nonnull !91, !align !175
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !365
  br label %.noexc12.i39

.noexc12.i39:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52, %.preheader.i37
  %.031.i40 = phi i64 [ %i.cr, %.preheader.i37 ], [ %i.er, %_ZN8facebook5velox6StatusD2Ev.exit20.i52 ] ; 3 uses
  %i.df = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !8035
  %i.dg = or disjoint i64 %i.df, %i.cu            ; 2 uses
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %i.dh, align 8, !noalias !8035 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.2.0.copyload.i.i43 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i42, align 8, !tbaa !68, !noalias !8035 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i41, ptr %5, align 8, !noalias !8035
  store ptr %.sroa.2.0.copyload.i.i43, ptr %i.cv, align 8, !noalias !8035
  %i.di = trunc i64 %.sroa.0.0.copyload.i.i41 to i32 ; 2 uses
  %i.dj = icmp ult i32 %i.di, 13
  %i.dk = select i1 %i.dj, ptr %i.cw, ptr %.sroa.2.0.copyload.i.i43 ; 5 uses
  %.not32.i44 = icmp eq i32 %i.di, 0
  br i1 %.not32.i44, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.preheader.i45

.lr.ph.preheader.i45:                             ; preds = %.noexc12.i39
  %wide.trip.count.i46 = and i64 %.sroa.0.0.copyload.i.i41, 4294967295
  %i.dl = add nsw i64 %wide.trip.count.i46, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i41, 3 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 3
  br i1 %i.dm, label %.lr.ph.i47.epil.preheader, label %.lr.ph.preheader.i45.new

.lr.ph.preheader.i45.new:                         ; preds = %.lr.ph.preheader.i45
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i41, 4294967292
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47, %.lr.ph.preheader.i45.new
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.preheader.i45.new ], [ %indvars.iv.next.i50.3, %.lr.ph.i47 ] ; 5 uses
  %.09.i.i29.i49 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i45.new ], [ %i.ej, %.lr.ph.i47 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i45.new ], [ %niter.next.3, %.lr.ph.i47 ]
  %i.dn = mul i64 %.09.i.i29.i49, 1099511628211
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !68, !noalias !8036
  %i.dq = zext i8 %i.dp to i64
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = mul i64 %i.dr, 1099511628211
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !68, !noalias !8036
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.ds, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !68, !noalias !8036
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dy, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !68, !noalias !8036
  %i.ei = zext i8 %i.eh to i64
  %i.ej = xor i64 %i.ee, %i.ei                    ; 3 uses
  %indvars.iv.next.i50.3 = add nuw nsw i64 %indvars.iv.i48, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, label %.lr.ph.i47, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa: ; preds = %.lr.ph.i47
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.i47.epil.preheader

.lr.ph.i47.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, %.lr.ph.preheader.i45
  %indvars.iv.i48.epil.init = phi i64 [ 0, %.lr.ph.preheader.i45 ], [ %indvars.iv.next.i50.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ]
  %.09.i.i29.i49.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i45 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.i47.epil

.lr.ph.i47.epil:                                  ; preds = %.lr.ph.i47.epil, %.lr.ph.i47.epil.preheader
  %indvars.iv.i48.epil = phi i64 [ %indvars.iv.i48.epil.init, %.lr.ph.i47.epil.preheader ], [ %indvars.iv.next.i50.epil, %.lr.ph.i47.epil ] ; 2 uses
  %.09.i.i29.i49.epil = phi i64 [ %.09.i.i29.i49.epil.init, %.lr.ph.i47.epil.preheader ], [ %i.eo, %.lr.ph.i47.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i47.epil.preheader ], [ %epil.iter.next, %.lr.ph.i47.epil ]
  %i.ek = mul i64 %.09.i.i29.i49.epil, 1099511628211
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48.epil
  %i.em = load i8, ptr %i.el, align 1, !tbaa !68, !noalias !8036
  %i.en = zext i8 %i.em to i64
  %i.eo = xor i64 %i.ek, %i.en                    ; 2 uses
  %indvars.iv.next.i50.epil = add nuw nsw i64 %indvars.iv.i48.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.i47.epil, !llvm.loop !8026

_ZN8facebook5velox6StatusD2Ev.exit20.i52:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, %.lr.ph.i47.epil, %.noexc12.i39
  %.09.i.i.lcssa.i53 = phi i64 [ -3750763034362895579, %.noexc12.i39 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph.i47.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !8035
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dg
  store i64 %.09.i.i.lcssa.i53, ptr %i.ep, align 8, !tbaa !138
  %i.eq = add i64 %.031.i40, -1
  %i.er = and i64 %i.eq, %.031.i40                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.er, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %.noexc12.i39, !llvm.loop !8021

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52, %bb.e, %bb.d
  %i.es = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3380 = icmp sgt i32 %i.es, %i.d
  br i1 %.not3380, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, %.lr.ph
  %i.et = phi i32 [ %i.ev, %.lr.ph ], [ %i.es, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55 ] ; 2 uses
  %.081 = phi i32 [ %i.et, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55 ]
  %i.eu = sdiv i32 %.081, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.eu)
  %i.ev = add nsw i32 %i.et, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ev, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !8027

bb.f:                                             ; preds = %._crit_edge
  %i.ew = ashr i32 %1, 6
  %i.ex = and i32 %1, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %notmask.i56 = shl nsw i64 -1, %i.ey
  %i.ez = xor i64 %notmask.i56, -1
  %i.fa = load i8, ptr %2, align 8, !tbaa !1384, !range !90, !noundef !91
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1385
  %i.fd = sext i32 %i.ew to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !138
  %i.fg = xor i8 %i.fa, 1
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = xor i64 %i.ff, %i.fi
  %i.fk = and i64 %i.fj, %i.ez                    ; 2 uses
  %.not.i57 = icmp eq i64 %i.fk, 0
  br i1 %.not.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i58

.preheader.i58:                                   ; preds = %bb.f
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = sext i32 %i.d to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre.i59 = load ptr, ptr %i.fl, align 8, !tbaa !1377 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre.i59, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1379, !nonnull !91, !align !175
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !379, !noalias !8037
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre.i59, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1380, !nonnull !91, !align !175
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1382, !nonnull !91, !align !175
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !365
  br label %.noexc12.i60

.noexc12.i60:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73, %.preheader.i58
  %.031.i61 = phi i64 [ %i.fk, %.preheader.i58 ], [ %i.hj, %_ZN8facebook5velox6StatusD2Ev.exit20.i73 ] ; 3 uses
  %i.fx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i61, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !8037
  %i.fy = or disjoint i64 %i.fx, %i.fm            ; 2 uses
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fr, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.fz, align 8, !noalias !8037 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.2.0.copyload.i.i64 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i63, align 8, !tbaa !68, !noalias !8037 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i62, ptr %4, align 8, !noalias !8037
  store ptr %.sroa.2.0.copyload.i.i64, ptr %i.fn, align 8, !noalias !8037
  %i.ga = trunc i64 %.sroa.0.0.copyload.i.i62 to i32 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 13
  %i.gc = select i1 %i.gb, ptr %i.fo, ptr %.sroa.2.0.copyload.i.i64 ; 5 uses
  %.not32.i65 = icmp eq i32 %i.ga, 0
  br i1 %.not32.i65, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.preheader.i66

.lr.ph.preheader.i66:                             ; preds = %.noexc12.i60
  %wide.trip.count.i67 = and i64 %.sroa.0.0.copyload.i.i62, 4294967295
  %i.gd = add nsw i64 %wide.trip.count.i67, -1
  %xtraiter107 = and i64 %.sroa.0.0.copyload.i.i62, 3 ; 3 uses
  %i.ge = icmp ult i64 %i.gd, 3
  br i1 %i.ge, label %.lr.ph.i68.epil.preheader, label %.lr.ph.preheader.i66.new

.lr.ph.preheader.i66.new:                         ; preds = %.lr.ph.preheader.i66
  %unroll_iter112 = and i64 %.sroa.0.0.copyload.i.i62, 4294967292
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %.lr.ph.preheader.i66.new
  %indvars.iv.i69 = phi i64 [ 0, %.lr.ph.preheader.i66.new ], [ %indvars.iv.next.i71.3, %.lr.ph.i68 ] ; 5 uses
  %.09.i.i29.i70 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i66.new ], [ %i.hb, %.lr.ph.i68 ]
  %niter113 = phi i64 [ 0, %.lr.ph.preheader.i66.new ], [ %niter113.next.3, %.lr.ph.i68 ]
  %i.gf = mul i64 %.09.i.i29.i70, 1099511628211
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !68, !noalias !8038
  %i.gi = zext i8 %i.gh to i64
  %i.gj = xor i64 %i.gf, %i.gi
  %i.gk = mul i64 %i.gj, 1099511628211
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !68, !noalias !8038
  %i.go = zext i8 %i.gn to i64
  %i.gp = xor i64 %i.gk, %i.go
  %i.gq = mul i64 %i.gp, 1099511628211
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !68, !noalias !8038
  %i.gu = zext i8 %i.gt to i64
  %i.gv = xor i64 %i.gq, %i.gu
  %i.gw = mul i64 %i.gv, 1099511628211
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !68, !noalias !8038
  %i.ha = zext i8 %i.gz to i64
  %i.hb = xor i64 %i.gw, %i.ha                    ; 3 uses
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i69, 4 ; 2 uses
  %niter113.next.3 = add i64 %niter113, 4         ; 2 uses
  %niter113.ncmp.3 = icmp eq i64 %niter113.next.3, %unroll_iter112
  br i1 %niter113.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, label %.lr.ph.i68, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa: ; preds = %.lr.ph.i68
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.i68.epil.preheader

.lr.ph.i68.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, %.lr.ph.preheader.i66
  %indvars.iv.i69.epil.init = phi i64 [ 0, %.lr.ph.preheader.i66 ], [ %indvars.iv.next.i71.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ]
  %.09.i.i29.i70.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i66 ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i68.epil

.lr.ph.i68.epil:                                  ; preds = %.lr.ph.i68.epil, %.lr.ph.i68.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.i69.epil.init, %.lr.ph.i68.epil.preheader ], [ %indvars.iv.next.i71.epil, %.lr.ph.i68.epil ] ; 2 uses
  %.09.i.i29.i70.epil = phi i64 [ %.09.i.i29.i70.epil.init, %.lr.ph.i68.epil.preheader ], [ %i.hg, %.lr.ph.i68.epil ]
  %epil.iter108 = phi i64 [ 0, %.lr.ph.i68.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i68.epil ]
  %i.hc = mul i64 %.09.i.i29.i70.epil, 1099511628211
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69.epil
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !68, !noalias !8038
  %i.hf = zext i8 %i.he to i64
  %i.hg = xor i64 %i.hc, %i.hf                    ; 2 uses
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter108.next = add i64 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i64 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.i68.epil, !llvm.loop !8032

_ZN8facebook5velox6StatusD2Ev.exit20.i73:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, %.lr.ph.i68.epil, %.noexc12.i60
  %.09.i.i.lcssa.i74 = phi i64 [ -3750763034362895579, %.noexc12.i60 ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ], [ %i.hg, %.lr.ph.i68.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8037
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fy
  store i64 %.09.i.i.lcssa.i74, ptr %i.hh, align 8, !tbaa !138
  %i.hi = add nuw i64 %.031.i61, 9223372036854775807
  %i.hj = and i64 %i.hi, %.031.i61                ; 2 uses
  %.not10.i75 = icmp eq i64 %i.hj, 0
  br i1 %.not10.i75, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.noexc12.i60, !llvm.loop !8021

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1387, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1388
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.noexc18.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.noexc18.lr.ph:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre96 = load ptr, ptr %i.k, align 8, !tbaa !1377 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre96, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1379, !nonnull !91, !align !175
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !379, !noalias !8051
  %i.s = getelementptr inbounds nuw i8, ptr %.pre96, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1380, !nonnull !91, !align !175
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1382, !nonnull !91, !align !175
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !365
  br label %.noexc18

bb.b:                                             ; preds = %bb.a
  %i.x = shl i32 %1, 6                            ; 3 uses
  %i.y = add i32 %i.x, 64
  %i.z = sext i32 %i.y to i64
  %.not85 = icmp eq i32 %i.x, -64
  br i1 %.not85, label %.loopexit, label %.noexc24.lr.ph

.noexc24.lr.ph:                                   ; preds = %bb.b
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !1377 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1379, !nonnull !91, !align !175
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !379, !noalias !8052
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1380, !nonnull !91, !align !175
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1382, !nonnull !91, !align !175
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !365
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit34
  %.084 = phi i64 [ %i.aa, %.noexc24.lr.ph ], [ %i.bw, %_ZN8facebook5velox6StatusD2Ev.exit34 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8052
  %sext = shl i64 %.084, 32
  %i.am = ashr exact i64 %sext, 28
  %i.an = getelementptr inbounds i8, ptr %i.ag, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !noalias !8052 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68, !noalias !8052 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !noalias !8052
  store ptr %.sroa.2.0.copyload.i, ptr %i.ac, align 8, !noalias !8052
  %i.ao = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 13
  %i.aq = select i1 %i.ap, ptr %i.ad, ptr %.sroa.2.0.copyload.i ; 5 uses
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.noexc24
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ar = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 3    ; 3 uses
  %i.as = icmp ult i64 %i.ar, 3
  br i1 %i.as, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i, 4294967292
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %indvars.iv.next.3, %.lr.ph82 ] ; 5 uses
  %.09.i.i.i80 = phi i64 [ -3750763034362895579, %.lr.ph82.preheader.new ], [ %i.bp, %.lr.ph82 ]
  %niter = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter.next.3, %.lr.ph82 ]
  %i.at = mul i64 %.09.i.i.i80, 1099511628211
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !68, !noalias !8053
  %i.aw = zext i8 %i.av to i64
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = mul i64 %i.ax, 1099511628211
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !68, !noalias !8053
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ay, %i.bc
  %i.be = mul i64 %i.bd, 1099511628211
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !68, !noalias !8053
  %i.bi = zext i8 %i.bh to i64
  %i.bj = xor i64 %i.be, %i.bi
  %i.bk = mul i64 %i.bj, 1099511628211
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68, !noalias !8053
  %i.bo = zext i8 %i.bn to i64
  %i.bp = xor i64 %i.bk, %i.bo                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, label %.lr.ph82, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa: ; preds = %.lr.ph82
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, %.lr.ph82.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ]
  %.09.i.i.i80.epil.init = phi i64 [ -3750763034362895579, %.lr.ph82.preheader ], [ %i.bp, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph82.epil

.lr.ph82.epil:                                    ; preds = %.lr.ph82.epil, %.lr.ph82.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph82.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph82.epil ] ; 2 uses
  %.09.i.i.i80.epil = phi i64 [ %.09.i.i.i80.epil.init, %.lr.ph82.epil.preheader ], [ %i.bu, %.lr.ph82.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph82.epil.preheader ], [ %epil.iter.next, %.lr.ph82.epil ]
  %i.bq = mul i64 %.09.i.i.i80.epil, 1099511628211
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.epil
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !68, !noalias !8053
  %i.bt = zext i8 %i.bs to i64
  %i.bu = xor i64 %i.bq, %i.bt                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.epil, !llvm.loop !8045

_ZN8facebook5velox6StatusD2Ev.exit34:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, %.lr.ph82.epil, %.noexc24
  %.09.i.i.i.lcssa = phi i64 [ -3750763034362895579, %.noexc24 ], [ %i.bp, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ], [ %i.bu, %.lr.ph82.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8052
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.084
  store i64 %.09.i.i.i.lcssa, ptr %i.bv, align 8, !tbaa !138
  %i.bw = add nuw i64 %.084, 1                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.z
  br i1 %i.bx, label %.noexc24, label %.loopexit, !llvm.loop !8046

.noexc18:                                         ; preds = %.noexc18.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit58
  %.01579 = phi i64 [ %i.j, %.noexc18.lr.ph ], [ %i.dk, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.by = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01579, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !8051
  %i.bz = or disjoint i64 %i.by, %i.m             ; 2 uses
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.ca, align 8, !noalias !8051 ; 5 uses
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2.0.copyload.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !68, !noalias !8051 ; 2 uses
  store i64 %.sroa.0.0.copyload.i42, ptr %3, align 8, !noalias !8051
  store ptr %.sroa.2.0.copyload.i44, ptr %i.n, align 8, !noalias !8051
  %i.cb = trunc i64 %.sroa.0.0.copyload.i42 to i32 ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 13
  %i.cd = select i1 %i.cc, ptr %i.o, ptr %.sroa.2.0.copyload.i44 ; 5 uses
  %.not87 = icmp eq i32 %i.cb, 0
  br i1 %.not87, label %_ZN8facebook5velox6StatusD2Ev.exit58, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc18
  %wide.trip.count94 = and i64 %.sroa.0.0.copyload.i42, 4294967295
  %i.ce = add nsw i64 %wide.trip.count94, -1
  %xtraiter110 = and i64 %.sroa.0.0.copyload.i42, 3 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter115 = and i64 %.sroa.0.0.copyload.i42, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next92.3, %.lr.ph ] ; 5 uses
  %.09.i.i76 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.new ], [ %i.dc, %.lr.ph ]
  %niter116 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter116.next.3, %.lr.ph ]
  %i.cg = mul i64 %.09.i.i76, 1099511628211
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv91
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !68, !noalias !8054
  %i.cj = zext i8 %i.ci to i64
  %i.ck = xor i64 %i.cg, %i.cj
  %i.cl = mul i64 %i.ck, 1099511628211
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1396
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ct, ptr %i.da, align 8, !tbaa !1397
  store i8 1, ptr %3, align 8, !tbaa !1399
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ct, ptr %i.db, align 8, !tbaa !1400
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef nonnull byval(%class.anon.2952) align 8 %2, ptr noundef nonnull byval(%class.anon.2953) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit15, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.2952) align 8 %2, ptr noundef byval(%class.anon.2953) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1396, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1397
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1389 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1391, !nonnull !91, !align !175
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !495
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !496, !range !90, !noundef !91
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 59
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1392, !nonnull !91, !align !175
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1394, !nonnull !91, !align !175
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !365
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i, %.preheader.i
  %.032.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.cq, %_ZN8facebook5velox6StatusD2Ev.exit21.i ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = or disjoint i32 %i.d, %i.av             ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !8080
  br i1 %i.al, label %.noexc13.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i8, ptr %i.am, align 1, !tbaa !497, !range !90, !noundef !91
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !498
  br label %.noexc13.i

bb.g:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !499
  %i.bc = shl nsw i64 %i.ax, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !79
  br label %.noexc13.i

.noexc13.i:                                       ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.g ], [ %i.ba, %bb.f ], [ %i.aw, %bb.d ]
  %i.bf = sext i32 %.0.i.i.i.i to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bg, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8, !noalias !8080
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.ac, align 8, !noalias !8080
  %i.bh = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 13
  %i.bj = select i1 %i.bi, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i.i ; 5 uses
  %.not33.i = icmp eq i32 %i.bh, 0
  br i1 %.not33.i, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.bk = add nsw i64 %wide.trip.count.i, -1
  %xtraiter116 = and i64 %.sroa.0.0.copyload.i.i.i, 3 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 3
  br i1 %i.bl, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter121 = and i64 %.sroa.0.0.copyload.i.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i.i30.i = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i.new ], [ %i.ci, %.lr.ph.i ]
  %niter122 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter122.next.3, %.lr.ph.i ]
  %i.bm = mul i64 %.09.i.i30.i, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !68, !noalias !8081
  %i.bp = zext i8 %i.bo to i64
  %i.bq = xor i64 %i.bm, %i.bp
  %i.br = mul i64 %i.bq, 1099511628211
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !68, !noalias !8081
  %i.bv = zext i8 %i.bu to i64
  %i.bw = xor i64 %i.br, %i.bv
  %i.bx = mul i64 %i.bw, 1099511628211
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !68, !noalias !8081
  %i.cb = zext i8 %i.ca to i64
  %i.cc = xor i64 %i.bx, %i.cb
  %i.cd = mul i64 %i.cc, 1099511628211
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !68, !noalias !8081
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 %i.cd, %i.ch                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter122.next.3 = add i64 %niter122, 4         ; 2 uses
  %niter122.ncmp.3 = icmp eq i64 %niter122.next.3, %unroll_iter121
  br i1 %niter122.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ]
  %.09.i.i30.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i ], [ %i.ci, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i.i30.i.epil = phi i64 [ %.09.i.i30.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cn, %.lr.ph.i.epil ]
  %epil.iter117 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter117.next, %.lr.ph.i.epil ]
  %i.cj = mul i64 %.09.i.i30.i.epil, 1099511628211
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i.epil
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !68, !noalias !8081
  %i.cm = zext i8 %i.cl to i64
  %i.cn = xor i64 %i.cj, %i.cm                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.i.epil, !llvm.loop !8067

_ZN8facebook5velox6StatusD2Ev.exit21.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.noexc13.i
  %.09.i.i.lcssa.i = phi i64 [ -3750763034362895579, %.noexc13.i ], [ %i.ci, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ], [ %i.cn, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !8080
  %i.co = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ax
  store i64 %.09.i.i.lcssa.i, ptr %i.co, align 8, !tbaa !138
  %i.cp = add nuw i64 %.032.i, 9223372036854775807
  %i.cq = and i64 %i.cp, %.032.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.cq, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !8068

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = sdiv i32 %0, 64                         ; 2 uses
  %i.cs = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ct
  %i.cu = xor i64 %notmask.i.i35, -1
  %i.cv = sub nsw i32 64, %i.cs
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl i64 %i.cu, %i.cw
  %i.cy = load i8, ptr %2, align 8, !tbaa !1396, !range !90, !noundef !91
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1397
  %i.db = sext i32 %i.cr to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !138
  %i.de = xor i8 %i.cy, 1
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = xor i64 %i.dd, %i.dg
  %i.di = and i64 %i.dh, %i.cx                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.di, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = shl nsw i32 %i.cr, 6
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre.i38 = load ptr, ptr %i.dj, align 8, !tbaa !1389 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1391, !nonnull !91, !align !175
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !495
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !496, !range !90, !noundef !91
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1392, !nonnull !91, !align !175
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1394, !nonnull !91, !align !175
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !365
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53, %.preheader.i37
  %.032.i39 = phi i64 [ %i.di, %.preheader.i37 ], [ %i.fz, %_ZN8facebook5velox6StatusD2Ev.exit21.i53 ] ; 3 uses
  %i.ed = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i39, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = or disjoint i32 %i.dk, %i.ee            ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !8082
  br i1 %i.du, label %.noexc13.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = load i8, ptr %i.dv, align 1, !tbaa !497, !range !90, !noundef !91
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = load i32, ptr %i.dx, align 8, !tbaa !498
  br label %.noexc13.i40

bb.m:                                             ; preds = %bb.k
  %i.ek = load ptr, ptr %i.dw, align 8, !tbaa !499
  %i.el = shl nsw i64 %i.eg, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !79
  br label %.noexc13.i40

.noexc13.i40:                                     ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i41 = phi i32 [ %i.en, %bb.m ], [ %i.ej, %bb.l ], [ %i.ef, %bb.j ]
  %i.eo = sext i32 %.0.i.i.i.i41 to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.eo ; 2 uses
  %.sroa.0.0.copyload.i.i.i42 = load i64, ptr %i.ep, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.2.0.copyload.i.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i43, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i42, ptr %5, align 8, !noalias !8082
  store ptr %.sroa.2.0.copyload.i.i.i44, ptr %i.dl, align 8, !noalias !8082
  %i.eq = trunc i64 %.sroa.0.0.copyload.i.i.i42 to i32 ; 2 uses
  %i.er = icmp ult i32 %i.eq, 13
  %i.es = select i1 %i.er, ptr %i.dm, ptr %.sroa.2.0.copyload.i.i.i44 ; 5 uses
  %.not33.i45 = icmp eq i32 %i.eq, 0
  br i1 %.not33.i45, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.noexc13.i40
  %wide.trip.count.i47 = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967295
  %i.et = add nsw i64 %wide.trip.count.i47, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i.i42, 3 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 3
  br i1 %i.eu, label %.lr.ph.i48.epil.preheader, label %.lr.ph.preheader.i46.new

.lr.ph.preheader.i46.new:                         ; preds = %.lr.ph.preheader.i46
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967292
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i46.new
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %indvars.iv.next.i51.3, %.lr.ph.i48 ] ; 5 uses
  %.09.i.i30.i50 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i46.new ], [ %i.fr, %.lr.ph.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %niter.next.3, %.lr.ph.i48 ]
  %i.ev = mul i64 %.09.i.i30.i50, 1099511628211
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !68, !noalias !8083
  %i.ey = zext i8 %i.ex to i64
  %i.ez = xor i64 %i.ev, %i.ey
  %i.fa = mul i64 %i.ez, 1099511628211
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !68, !noalias !8083
  %i.fe = zext i8 %i.fd to i64
  %i.ff = xor i64 %i.fa, %i.fe
  %i.fg = mul i64 %i.ff, 1099511628211
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !68, !noalias !8083
  %i.fk = zext i8 %i.fj to i64
  %i.fl = xor i64 %i.fg, %i.fk
  %i.fm = mul i64 %i.fl, 1099511628211
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !68, !noalias !8083
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %i.fm, %i.fq                    ; 3 uses
  %indvars.iv.next.i51.3 = add nuw nsw i64 %indvars.iv.i49, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, label %.lr.ph.i48, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa: ; preds = %.lr.ph.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.i48.epil.preheader

.lr.ph.i48.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, %.lr.ph.preheader.i46
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i51.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ]
  %.09.i.i30.i50.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i46 ], [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i48.epil

.lr.ph.i48.epil:                                  ; preds = %.lr.ph.i48.epil, %.lr.ph.i48.epil.preheader
  %indvars.iv.i49.epil = phi i64 [ %indvars.iv.i49.epil.init, %.lr.ph.i48.epil.preheader ], [ %indvars.iv.next.i51.epil, %.lr.ph.i48.epil ] ; 2 uses
  %.09.i.i30.i50.epil = phi i64 [ %.09.i.i30.i50.epil.init, %.lr.ph.i48.epil.preheader ], [ %i.fw, %.lr.ph.i48.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i48.epil.preheader ], [ %epil.iter.next, %.lr.ph.i48.epil ]
  %i.fs = mul i64 %.09.i.i30.i50.epil, 1099511628211
  %i.ft = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49.epil
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !68, !noalias !8083
  %i.fv = zext i8 %i.fu to i64
  %i.fw = xor i64 %i.fs, %i.fv                    ; 2 uses
  %indvars.iv.next.i51.epil = add nuw nsw i64 %indvars.iv.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.i48.epil, !llvm.loop !8073

_ZN8facebook5velox6StatusD2Ev.exit21.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, %.lr.ph.i48.epil, %.noexc13.i40
  %.09.i.i.lcssa.i54 = phi i64 [ -3750763034362895579, %.noexc13.i40 ], [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ], [ %i.fw, %.lr.ph.i48.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !8082
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eg
  store i64 %.09.i.i.lcssa.i54, ptr %i.fx, align 8, !tbaa !138
  %i.fy = add i64 %.032.i39, -1
  %i.fz = and i64 %i.fy, %.032.i39                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.fz, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %bb.j, !llvm.loop !8068

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53, %bb.i, %bb.h
  %i.ga = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3382 = icmp sgt i32 %i.ga, %i.d
  br i1 %.not3382, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.n

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, %.lr.ph
  %i.gb = phi i32 [ %i.gd, %.lr.ph ], [ %i.ga, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56 ] ; 2 uses
  %.083 = phi i32 [ %i.gb, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56 ]
  %i.gc = sdiv i32 %.083, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.gc)
  %i.gd = add nsw i32 %i.gb, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gd, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !8074

bb.n:                                             ; preds = %._crit_edge
  %i.ge = ashr i32 %1, 6
  %i.gf = and i32 %1, 63
  %i.gg = zext nneg i32 %i.gf to i64
  %notmask.i57 = shl nsw i64 -1, %i.gg
  %i.gh = xor i64 %notmask.i57, -1
  %i.gi = load i8, ptr %2, align 8, !tbaa !1396, !range !90, !noundef !91
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1397
  %i.gl = sext i32 %i.ge to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !138
  %i.go = xor i8 %i.gi, 1
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = xor i64 %i.gn, %i.gq
  %i.gs = and i64 %i.gr, %i.gh                    ; 2 uses
  %.not.i58 = icmp eq i64 %i.gs, 0
  br i1 %.not.i58, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.n
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre.i60 = load ptr, ptr %i.gt, align 8, !tbaa !1389 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1391, !nonnull !91, !align !175
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !495
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 58
  %i.hc = load i8, ptr %i.hb, align 2, !tbaa !496, !range !90, !noundef !91
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 59
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1392, !nonnull !91, !align !175
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1394, !nonnull !91, !align !175
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !365
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75, %.preheader.i59
  %.032.i61 = phi i64 [ %i.gs, %.preheader.i59 ], [ %i.ji, %_ZN8facebook5velox6StatusD2Ev.exit21.i75 ] ; 3 uses
  %i.hm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i61, i1 true)
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = or disjoint i32 %i.d, %i.hn             ; 2 uses
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !8084
  br i1 %i.hd, label %.noexc13.i62, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hq = load i8, ptr %i.he, align 1, !tbaa !497, !range !90, !noundef !91
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hs = load i32, ptr %i.hg, align 8, !tbaa !498
  br label %.noexc13.i62

bb.r:                                             ; preds = %bb.p
  %i.ht = load ptr, ptr %i.hf, align 8, !tbaa !499
  %i.hu = shl nsw i64 %i.hp, 2
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !79
  br label %.noexc13.i62

.noexc13.i62:                                     ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i63 = phi i32 [ %i.hw, %bb.r ], [ %i.hs, %bb.q ], [ %i.ho, %bb.o ]
  %i.hx = sext i32 %.0.i.i.i.i63 to i64
  %i.hy = getelementptr inbounds [16 x i8], ptr %i.ha, i64 %i.hx ; 2 uses
  %.sroa.0.0.copyload.i.i.i64 = load i64, ptr %i.hy, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.2.0.copyload.i.i.i66 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i65, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i64, ptr %4, align 8, !noalias !8084
  store ptr %.sroa.2.0.copyload.i.i.i66, ptr %i.gu, align 8, !noalias !8084
  %i.hz = trunc i64 %.sroa.0.0.copyload.i.i.i64 to i32 ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 13
  %i.ib = select i1 %i.ia, ptr %i.gv, ptr %.sroa.2.0.copyload.i.i.i66 ; 5 uses
  %.not33.i67 = icmp eq i32 %i.hz, 0
  br i1 %.not33.i67, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.preheader.i68

.lr.ph.preheader.i68:                             ; preds = %.noexc13.i62
  %wide.trip.count.i69 = and i64 %.sroa.0.0.copyload.i.i.i64, 4294967295
  %i.ic = add nsw i64 %wide.trip.count.i69, -1
  %xtraiter109 = and i64 %.sroa.0.0.copyload.i.i.i64, 3 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 3
  br i1 %i.id, label %.lr.ph.i70.epil.preheader, label %.lr.ph.preheader.i68.new

.lr.ph.preheader.i68.new:                         ; preds = %.lr.ph.preheader.i68
  %unroll_iter114 = and i64 %.sroa.0.0.copyload.i.i.i64, 4294967292
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70, %.lr.ph.preheader.i68.new
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %indvars.iv.next.i73.3, %.lr.ph.i70 ] ; 5 uses
  %.09.i.i30.i72 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i68.new ], [ %i.ja, %.lr.ph.i70 ]
  %niter115 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %niter115.next.3, %.lr.ph.i70 ]
  %i.ie = mul i64 %.09.i.i30.i72, 1099511628211
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !68, !noalias !8085
  %i.ih = zext i8 %i.ig to i64
  %i.ii = xor i64 %i.ie, %i.ih
  %i.ij = mul i64 %i.ii, 1099511628211
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !68, !noalias !8085
  %i.in = zext i8 %i.im to i64
  %i.io = xor i64 %i.ij, %i.in
  %i.ip = mul i64 %i.io, 1099511628211
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !68, !noalias !8085
  %i.it = zext i8 %i.is to i64
  %i.iu = xor i64 %i.ip, %i.it
  %i.iv = mul i64 %i.iu, 1099511628211
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !68, !noalias !8085
  %i.iz = zext i8 %i.iy to i64
  %i.ja = xor i64 %i.iv, %i.iz                    ; 3 uses
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i71, 4 ; 2 uses
  %niter115.next.3 = add i64 %niter115, 4         ; 2 uses
  %niter115.ncmp.3 = icmp eq i64 %niter115.next.3, %unroll_iter114
  br i1 %niter115.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, label %.lr.ph.i70, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa: ; preds = %.lr.ph.i70
  %lcmp.mod111.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.i70.epil.preheader

.lr.ph.i70.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, %.lr.ph.preheader.i68
  %indvars.iv.i71.epil.init = phi i64 [ 0, %.lr.ph.preheader.i68 ], [ %indvars.iv.next.i73.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ]
  %.09.i.i30.i72.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i68 ], [ %i.ja, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter109, 0
  call void @llvm.assume(i1 %lcmp.mod113)
  br label %.lr.ph.i70.epil

.lr.ph.i70.epil:                                  ; preds = %.lr.ph.i70.epil, %.lr.ph.i70.epil.preheader
  %indvars.iv.i71.epil = phi i64 [ %indvars.iv.i71.epil.init, %.lr.ph.i70.epil.preheader ], [ %indvars.iv.next.i73.epil, %.lr.ph.i70.epil ] ; 2 uses
  %.09.i.i30.i72.epil = phi i64 [ %.09.i.i30.i72.epil.init, %.lr.ph.i70.epil.preheader ], [ %i.jf, %.lr.ph.i70.epil ]
  %epil.iter110 = phi i64 [ 0, %.lr.ph.i70.epil.preheader ], [ %epil.iter110.next, %.lr.ph.i70.epil ]
  %i.jb = mul i64 %.09.i.i30.i72.epil, 1099511628211
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71.epil
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !68, !noalias !8085
  %i.je = zext i8 %i.jd to i64
  %i.jf = xor i64 %i.jb, %i.je                    ; 2 uses
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i71.epil, 1
  %epil.iter110.next = add i64 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i64 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.i70.epil, !llvm.loop !8079

_ZN8facebook5velox6StatusD2Ev.exit21.i75:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, %.lr.ph.i70.epil, %.noexc13.i62
  %.09.i.i.lcssa.i76 = phi i64 [ -3750763034362895579, %.noexc13.i62 ], [ %i.ja, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ], [ %i.jf, %.lr.ph.i70.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8084
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hp
  store i64 %.09.i.i.lcssa.i76, ptr %i.jg, align 8, !tbaa !138
  %i.jh = add nuw i64 %.032.i61, 9223372036854775807
  %i.ji = and i64 %i.jh, %.032.i61                ; 2 uses
  %.not10.i77 = icmp eq i64 %i.ji, 0
  br i1 %.not10.i77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !8068

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75, %_ZN8facebook5velox6StatusD2Ev.exit21.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions15Fnv1_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1399, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1400
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph86 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph86:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre104 = load ptr, ptr %i.k, align 8, !tbaa !1389 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre104, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1391, !nonnull !91, !align !175
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !495
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 58
  %i.u = load i8, ptr %i.t, align 2, !tbaa !496, !range !90, !noundef !91
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 59
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.pre104, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1392, !nonnull !91, !align !175
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1394, !nonnull !91, !align !175
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !365
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = shl i32 %1, 6                           ; 3 uses
  %i.af = add i32 %i.ae, 64
  %i.ag = sext i32 %i.af to i64
  %.not93 = icmp eq i32 %i.ae, -64
  br i1 %.not93, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.b
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !1389 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1391, !nonnull !91, !align !175
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !495
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !496, !range !90, !noundef !91
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 59
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1392, !nonnull !91, !align !175
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1394, !nonnull !91, !align !175
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !365
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph92, %_ZN8facebook5velox6StatusD2Ev.exit37
  %.091 = phi i64 [ %i.ah, %.lr.ph92 ], [ %i.ct, %_ZN8facebook5velox6StatusD2Ev.exit37 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8098
  %i.bb = trunc i64 %.091 to i32
  br i1 %i.as, label %.noexc26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = load i8, ptr %i.at, align 1, !tbaa !497, !range !90, !noundef !91
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr %i.av, align 8, !tbaa !498
  br label %.noexc26

bb.f:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !499
  %sext.i = shl i64 %.091, 32
  %i.bg = ashr exact i64 %sext.i, 30
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !79
  br label %.noexc26

.noexc26:                                         ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i29 = phi i32 [ %i.bi, %bb.f ], [ %i.be, %bb.e ], [ %i.bb, %bb.c ]
  %i.bj = sext i32 %.0.i.i.i29 to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.bj ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bk, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !8098
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.aj, align 8, !noalias !8098
  %i.bl = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 13
  %i.bn = select i1 %i.bm, ptr %i.ak, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not94 = icmp eq i32 %i.bl, 0
  br i1 %.not94, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.noexc26
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.bo = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i, 3  ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 3
  br i1 %i.bp, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %indvars.iv.next.3, %.lr.ph89 ] ; 5 uses
  %.09.i.i.i87 = phi i64 [ -3750763034362895579, %.lr.ph89.preheader.new ], [ %i.cm, %.lr.ph89 ]
  %niter = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter.next.3, %.lr.ph89 ]
  %i.bq = mul i64 %.09.i.i.i87, 1099511628211
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !68, !noalias !8099
  %i.bt = zext i8 %i.bs to i64
  %i.bu = xor i64 %i.bq, %i.bt
  %i.bv = mul i64 %i.bu, 1099511628211
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !68, !noalias !8099
  %i.bz = zext i8 %i.by to i64
  %i.ca = xor i64 %i.bv, %i.bz
  %i.cb = mul i64 %i.ca, 1099511628211
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !68, !noalias !8099
  %i.cf = zext i8 %i.ce to i64
  %i.cg = xor i64 %i.cb, %i.cf
  %i.ch = mul i64 %i.cg, 1099511628211
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !68, !noalias !8099
  %i.cl = zext i8 %i.ck to i64
  %i.cm = xor i64 %i.ch, %i.cl                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !37

_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, %.lr.ph89.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph89.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ]
  %.09.i.i.i87.epil.init = phi i64 [ -3750763034362895579, %.lr.ph89.preheader ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph89.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph89.epil ] ; 2 uses
  %.09.i.i.i87.epil = phi i64 [ %.09.i.i.i87.epil.init, %.lr.ph89.epil.preheader ], [ %i.cr, %.lr.ph89.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph89.epil.preheader ], [ %epil.iter.next, %.lr.ph89.epil ]
  %i.cn = mul i64 %.09.i.i.i87.epil, 1099511628211
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.epil
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !68, !noalias !8099
  %i.cq = zext i8 %i.cp to i64
  %i.cr = xor i64 %i.cn, %i.cq                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.epil, !llvm.loop !8090

_ZN8facebook5velox6StatusD2Ev.exit37:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, %.lr.ph89.epil, %.noexc26
  %.09.i.i.i.lcssa = phi i64 [ -3750763034362895579, %.noexc26 ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ], [ %i.cr, %.lr.ph89.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8098
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.091
  store i64 %.09.i.i.i.lcssa, ptr %i.cs, align 8, !tbaa !138
  %i.ct = add nuw i64 %.091, 1                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.ag
  br i1 %i.cu, label %bb.c, label %.loopexit, !llvm.loop !8091

bb.g:                                             ; preds = %.lr.ph86, %_ZN8facebook5velox6StatusD2Ev.exit64
  %.01585 = phi i64 [ %i.j, %.lr.ph86 ], [ %i.er, %_ZN8facebook5velox6StatusD2Ev.exit64 ] ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.09.i28.epil = phi i32 [ %.09.i28.epil.init, %.lr.ph.epil.preheader ], [ %i.by, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !68
  %i.bw = zext i8 %i.bv to i32
  %i.bx = xor i32 %.09.i28.epil, %i.bw
  %i.by = mul i32 %i.bx, 16777619                 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit19, label %.lr.ph.epil, !llvm.loop !8166

_ZN8facebook5velox6StatusD2Ev.exit19:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit
  %.09.i.lcssa = phi i32 [ -2128831035, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit ], [ %i.bt, %_ZN8facebook5velox6StatusD2Ev.exit19.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8168
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv32
  store i32 %.09.i.lcssa, ptr %i.bz, align 4, !tbaa !79
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next33 to i32
  %exitcond35.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond35.not, label %.loopexit, label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit, !llvm.loop !8167

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !394   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !467
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !468
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1423
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ca, ptr %i.ch, align 8, !tbaa !1424
  store i8 1, ptr %3, align 8, !tbaa !1426
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ca, ptr %i.ci, align 8, !tbaa !1427
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.cc, i32 noundef %i.ce, ptr noundef nonnull byval(%class.anon.3027) align 8 %2, ptr noundef nonnull byval(%class.anon.3028) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.3027) align 8 %2, ptr noundef byval(%class.anon.3028) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1423, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1424
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ae = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1415 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1418, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1419, !nonnull !91, !align !175
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1421, !nonnull !91, !align !175
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.al, i64 %i.ae
  br label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i

_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.035.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bv, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !8180
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ag, align 8, !noalias !8180 ; 5 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !noalias !8180 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !8180
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ac, align 8, !noalias !8180
  %i.an = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ao = icmp ult i32 %i.an, 13
  %i.ap = select i1 %i.ao, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not36.i = icmp eq i32 %i.an, 0
  br i1 %.not36.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.aq = add nsw i64 %wide.trip.count.i, -1
  %xtraiter118 = and i64 %.sroa.0.0.copyload.i.i, 3 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 3
  br i1 %i.ar, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter123 = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i33.i = phi i32 [ -2128831035, %.lr.ph.preheader.i.new ], [ %i.bo, %.lr.ph.i ]
  %niter124 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter124.next.3, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !68
  %i.au = zext i8 %i.at to i32
  %i.av = xor i32 %.09.i33.i, %i.au
  %i.aw = mul i32 %i.av, 16777619
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !68
  %i.ba = zext i8 %i.az to i32
  %i.bb = xor i32 %i.aw, %i.ba
  %i.bc = mul i32 %i.bb, 16777619
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !68
  %i.bg = zext i8 %i.bf to i32
  %i.bh = xor i32 %i.bc, %i.bg
  %i.bi = mul i32 %i.bh, 16777619
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !68
  %i.bm = zext i8 %i.bl to i32
  %i.bn = xor i32 %i.bi, %i.bm
  %i.bo = mul i32 %i.bn, 16777619                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter124.next.3 = add i64 %niter124, 4         ; 2 uses
  %niter124.ncmp.3 = icmp eq i64 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod120.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ]
  %.09.i33.i.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i ], [ %i.bo, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter118, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i33.i.epil = phi i32 [ %.09.i33.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bt, %.lr.ph.i.epil ]
  %epil.iter119 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter119.next, %.lr.ph.i.epil ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i.epil
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !68
  %i.br = zext i8 %i.bq to i32
  %i.bs = xor i32 %.09.i33.i.epil, %i.br
  %i.bt = mul i32 %i.bs, 16777619                 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter119.next = add i64 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i64 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.i.epil, !llvm.loop !8171

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i
  %.09.i.lcssa.i = phi i32 [ -2128831035, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i ], [ %i.bo, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !8180
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.am
  store i32 %.09.i.lcssa.i, ptr %gep.i, align 4, !tbaa !79
  %i.bu = add nuw i64 %.035.i, 9223372036854775807
  %i.bv = and i64 %i.bu, %.035.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bv, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i, !llvm.loop !8172

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = sdiv i32 %0, 64                         ; 2 uses
  %i.bx = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.by
  %i.bz = xor i64 %notmask.i.i35, -1
  %i.ca = sub nsw i32 64, %i.bx
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.bz, %i.cb
  %i.cd = load i8, ptr %2, align 8, !tbaa !1423, !range !90, !noundef !91
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1424
  %i.cg = sext i32 %i.bw to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !138
  %i.cj = xor i8 %i.cd, 1
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = and i64 %i.cm, %i.cc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = shl nsw i32 %i.bw, 6
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cs = sext i32 %i.cp to i64
  %.pre.i38 = load ptr, ptr %i.co, align 8, !tbaa !1415 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1418, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1419, !nonnull !91, !align !175
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1421, !nonnull !91, !align !175
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !528
  %invariant.gep.i40 = getelementptr [4 x i8], ptr %i.cz, i64 %i.cs
  br label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41

_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53, %.preheader.i37
  %.035.i42 = phi i64 [ %i.cn, %.preheader.i37 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit24.i53 ] ; 3 uses
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i42, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !8181
  %.sroa.0.0.copyload.i.i43 = load i64, ptr %i.cu, align 8, !noalias !8181 ; 5 uses
  %.sroa.2.0.copyload.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i39, align 8, !tbaa !68, !noalias !8181 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i43, ptr %5, align 8, !noalias !8181
  store ptr %.sroa.2.0.copyload.i.i44, ptr %i.cq, align 8, !noalias !8181
  %i.db = trunc i64 %.sroa.0.0.copyload.i.i43 to i32 ; 2 uses
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = select i1 %i.dc, ptr %i.cr, ptr %.sroa.2.0.copyload.i.i44 ; 5 uses
  %.not36.i45 = icmp eq i32 %i.db, 0
  br i1 %.not36.i45, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41
  %wide.trip.count.i47 = and i64 %.sroa.0.0.copyload.i.i43, 4294967295
  %i.de = add nsw i64 %wide.trip.count.i47, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i43, 3 ; 3 uses
  %i.df = icmp ult i64 %i.de, 3
  br i1 %i.df, label %.lr.ph.i48.epil.preheader, label %.lr.ph.preheader.i46.new

.lr.ph.preheader.i46.new:                         ; preds = %.lr.ph.preheader.i46
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i43, 4294967292
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i46.new
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %indvars.iv.next.i51.3, %.lr.ph.i48 ] ; 5 uses
  %.09.i33.i50 = phi i32 [ -2128831035, %.lr.ph.preheader.i46.new ], [ %i.ec, %.lr.ph.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %niter.next.3, %.lr.ph.i48 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !68
  %i.di = zext i8 %i.dh to i32
  %i.dj = xor i32 %.09.i33.i50, %i.di
  %i.dk = mul i32 %i.dj, 16777619
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !68
  %i.do = zext i8 %i.dn to i32
  %i.dp = xor i32 %i.dk, %i.do
  %i.dq = mul i32 %i.dp, 16777619
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !68
  %i.du = zext i8 %i.dt to i32
  %i.dv = xor i32 %i.dq, %i.du
  %i.dw = mul i32 %i.dv, 16777619
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !68
  %i.ea = zext i8 %i.dz to i32
  %i.eb = xor i32 %i.dw, %i.ea
  %i.ec = mul i32 %i.eb, 16777619                 ; 3 uses
  %indvars.iv.next.i51.3 = add nuw nsw i64 %indvars.iv.i49, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, label %.lr.ph.i48, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa: ; preds = %.lr.ph.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.i48.epil.preheader

.lr.ph.i48.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, %.lr.ph.preheader.i46
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i51.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ]
  %.09.i33.i50.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i46 ], [ %i.ec, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i48.epil

.lr.ph.i48.epil:                                  ; preds = %.lr.ph.i48.epil, %.lr.ph.i48.epil.preheader
  %indvars.iv.i49.epil = phi i64 [ %indvars.iv.i49.epil.init, %.lr.ph.i48.epil.preheader ], [ %indvars.iv.next.i51.epil, %.lr.ph.i48.epil ] ; 2 uses
  %.09.i33.i50.epil = phi i32 [ %.09.i33.i50.epil.init, %.lr.ph.i48.epil.preheader ], [ %i.eh, %.lr.ph.i48.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i48.epil.preheader ], [ %epil.iter.next, %.lr.ph.i48.epil ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49.epil
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !68
  %i.ef = zext i8 %i.ee to i32
  %i.eg = xor i32 %.09.i33.i50.epil, %i.ef
  %i.eh = mul i32 %i.eg, 16777619                 ; 2 uses
  %indvars.iv.next.i51.epil = add nuw nsw i64 %indvars.iv.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.i48.epil, !llvm.loop !8175

_ZN8facebook5velox6StatusD2Ev.exit24.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, %.lr.ph.i48.epil, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41
  %.09.i.lcssa.i54 = phi i32 [ -2128831035, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41 ], [ %i.ec, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ], [ %i.eh, %.lr.ph.i48.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !8181
  %gep.i55 = getelementptr [4 x i8], ptr %invariant.gep.i40, i64 %i.da
  store i32 %.09.i.lcssa.i54, ptr %gep.i55, align 4, !tbaa !79
  %i.ei = add i64 %.035.i42, -1
  %i.ej = and i64 %i.ei, %.035.i42                ; 2 uses
  %.not10.i56 = icmp eq i64 %i.ej, 0
  br i1 %.not10.i56, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i41, !llvm.loop !8172

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53, %bb.e, %bb.d
  %i.ek = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3384 = icmp sgt i32 %i.ek, %i.d
  br i1 %.not3384, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, %.lr.ph
  %i.el = phi i32 [ %i.en, %.lr.ph ], [ %i.ek, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57 ] ; 2 uses
  %.085 = phi i32 [ %i.el, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57 ]
  %i.em = sdiv i32 %.085, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.em)
  %i.en = add nsw i32 %i.el, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.en, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !8176

bb.f:                                             ; preds = %._crit_edge
  %i.eo = ashr i32 %1, 6
  %i.ep = and i32 %1, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i58 = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i58, -1
  %i.es = load i8, ptr %2, align 8, !tbaa !1423, !range !90, !noundef !91
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1424
  %i.ev = sext i32 %i.eo to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !138
  %i.ey = xor i8 %i.es, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = and i64 %i.fb, %i.er                    ; 2 uses
  %.not.i59 = icmp eq i64 %i.fc, 0
  br i1 %.not.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i60

.preheader.i60:                                   ; preds = %bb.f
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fg = sext i32 %i.d to i64
  %.pre.i61 = load ptr, ptr %i.fd, align 8, !tbaa !1415 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1418, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1419, !nonnull !91, !align !175
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1421, !nonnull !91, !align !175
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !528
  %invariant.gep.i63 = getelementptr [4 x i8], ptr %i.fn, i64 %i.fg
  br label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64

_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76, %.preheader.i60
  %.035.i65 = phi i64 [ %i.fc, %.preheader.i60 ], [ %i.gx, %_ZN8facebook5velox6StatusD2Ev.exit24.i76 ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i65, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !8182
  %.sroa.0.0.copyload.i.i66 = load i64, ptr %i.fi, align 8, !noalias !8182 ; 5 uses
  %.sroa.2.0.copyload.i.i67 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i62, align 8, !tbaa !68, !noalias !8182 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i66, ptr %4, align 8, !noalias !8182
  store ptr %.sroa.2.0.copyload.i.i67, ptr %i.fe, align 8, !noalias !8182
  %i.fp = trunc i64 %.sroa.0.0.copyload.i.i66 to i32 ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 13
  %i.fr = select i1 %i.fq, ptr %i.ff, ptr %.sroa.2.0.copyload.i.i67 ; 5 uses
  %.not36.i68 = icmp eq i32 %i.fp, 0
  br i1 %.not36.i68, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.preheader.i69

.lr.ph.preheader.i69:                             ; preds = %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64
  %wide.trip.count.i70 = and i64 %.sroa.0.0.copyload.i.i66, 4294967295
  %i.fs = add nsw i64 %wide.trip.count.i70, -1
  %xtraiter111 = and i64 %.sroa.0.0.copyload.i.i66, 3 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 3
  br i1 %i.ft, label %.lr.ph.i71.epil.preheader, label %.lr.ph.preheader.i69.new

.lr.ph.preheader.i69.new:                         ; preds = %.lr.ph.preheader.i69
  %unroll_iter116 = and i64 %.sroa.0.0.copyload.i.i66, 4294967292
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71, %.lr.ph.preheader.i69.new
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.preheader.i69.new ], [ %indvars.iv.next.i74.3, %.lr.ph.i71 ] ; 5 uses
  %.09.i33.i73 = phi i32 [ -2128831035, %.lr.ph.preheader.i69.new ], [ %i.gq, %.lr.ph.i71 ]
  %niter117 = phi i64 [ 0, %.lr.ph.preheader.i69.new ], [ %niter117.next.3, %.lr.ph.i71 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !68
  %i.fw = zext i8 %i.fv to i32
  %i.fx = xor i32 %.09.i33.i73, %i.fw
  %i.fy = mul i32 %i.fx, 16777619
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !68
  %i.gc = zext i8 %i.gb to i32
  %i.gd = xor i32 %i.fy, %i.gc
  %i.ge = mul i32 %i.gd, 16777619
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !68
  %i.gi = zext i8 %i.gh to i32
  %i.gj = xor i32 %i.ge, %i.gi
  %i.gk = mul i32 %i.gj, 16777619
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 3
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !68
  %i.go = zext i8 %i.gn to i32
  %i.gp = xor i32 %i.gk, %i.go
  %i.gq = mul i32 %i.gp, 16777619                 ; 3 uses
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter117.next.3 = add i64 %niter117, 4         ; 2 uses
  %niter117.ncmp.3 = icmp eq i64 %niter117.next.3, %unroll_iter116
  br i1 %niter117.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, label %.lr.ph.i71, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa: ; preds = %.lr.ph.i71
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.i71.epil.preheader

.lr.ph.i71.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, %.lr.ph.preheader.i69
  %indvars.iv.i72.epil.init = phi i64 [ 0, %.lr.ph.preheader.i69 ], [ %indvars.iv.next.i74.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ]
  %.09.i33.i73.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i69 ], [ %i.gq, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i71.epil

.lr.ph.i71.epil:                                  ; preds = %.lr.ph.i71.epil, %.lr.ph.i71.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.i72.epil.init, %.lr.ph.i71.epil.preheader ], [ %indvars.iv.next.i74.epil, %.lr.ph.i71.epil ] ; 2 uses
  %.09.i33.i73.epil = phi i32 [ %.09.i33.i73.epil.init, %.lr.ph.i71.epil.preheader ], [ %i.gv, %.lr.ph.i71.epil ]
  %epil.iter112 = phi i64 [ 0, %.lr.ph.i71.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i71.epil ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72.epil
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !68
  %i.gt = zext i8 %i.gs to i32
  %i.gu = xor i32 %.09.i33.i73.epil, %i.gt
  %i.gv = mul i32 %i.gu, 16777619                 ; 2 uses
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.i71.epil, !llvm.loop !8179

_ZN8facebook5velox6StatusD2Ev.exit24.i76:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, %.lr.ph.i71.epil, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64
  %.09.i.lcssa.i77 = phi i32 [ -2128831035, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64 ], [ %i.gq, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ], [ %i.gv, %.lr.ph.i71.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8182
  %gep.i78 = getelementptr [4 x i8], ptr %invariant.gep.i63, i64 %i.fo
  store i32 %.09.i.lcssa.i77, ptr %gep.i78, align 4, !tbaa !79
  %i.gw = add nuw i64 %.035.i65, 9223372036854775807
  %i.gx = and i64 %i.gw, %.035.i65                ; 2 uses
  %.not10.i79 = icmp eq i64 %i.gx, 0
  br i1 %.not10.i79, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.i64, !llvm.loop !8172

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1426, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1427
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = sext i32 %i.l to i64
  %.pre100 = load ptr, ptr %i.k, align 8, !tbaa !1415 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre100, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1418, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.pre100, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1419, !nonnull !91, !align !175
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1421, !nonnull !91, !align !175
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !528
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.o
  br label %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit

bb.b:                                             ; preds = %bb.a
  %i.w = shl i32 %1, 6                            ; 3 uses
  %i.x = add i32 %i.w, 64
  %i.y = sext i32 %i.x to i64
  %.not89 = icmp eq i32 %i.w, -64
  br i1 %.not89, label %.loopexit, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %bb.b
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !1415 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1418, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1419, !nonnull !91, !align !175
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1421, !nonnull !91, !align !175
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !528
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit38
  %.088 = phi i64 [ %i.z, %.noexc28.lr.ph ], [ %i.bs, %_ZN8facebook5velox6StatusD2Ev.exit38 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8193
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !noalias !8193 ; 5 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68, !noalias !8193 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !noalias !8193
  store ptr %.sroa.2.0.copyload.i, ptr %i.ab, align 8, !noalias !8193
  %i.ak = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 13
  %i.am = select i1 %i.al, ptr %i.ac, ptr %.sroa.2.0.copyload.i ; 5 uses
  %.not90 = icmp eq i32 %i.ak, 0
  br i1 %.not90, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.noexc28
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.an = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 3    ; 3 uses
  %i.ao = icmp ult i64 %i.an, 3
  br i1 %i.ao, label %.lr.ph86.epil.preheader, label %.lr.ph86.preheader.new

.lr.ph86.preheader.new:                           ; preds = %.lr.ph86.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i, 4294967292
  br label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86, %.lr.ph86.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %indvars.iv.next.3, %.lr.ph86 ] ; 5 uses
  %.09.i.i84 = phi i32 [ -2128831035, %.lr.ph86.preheader.new ], [ %i.bl, %.lr.ph86 ]
  %niter = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %niter.next.3, %.lr.ph86 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !68, !noalias !8194
  %i.ar = zext i8 %i.aq to i32
  %i.as = xor i32 %.09.i.i84, %i.ar
  %i.at = mul i32 %i.as, 16777619
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !68, !noalias !8194
  %i.ax = zext i8 %i.aw to i32
  %i.ay = xor i32 %i.at, %i.ax
  %i.az = mul i32 %i.ay, 16777619
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !68, !noalias !8194
  %i.bd = zext i8 %i.bc to i32
  %i.be = xor i32 %i.az, %i.bd
  %i.bf = mul i32 %i.be, 16777619
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !68, !noalias !8194
  %i.bj = zext i8 %i.bi to i32
  %i.bk = xor i32 %i.bf, %i.bj
  %i.bl = mul i32 %i.bk, 16777619                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, label %.lr.ph86, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa: ; preds = %.lr.ph86
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.epil.preheader

.lr.ph86.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, %.lr.ph86.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph86.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ]
  %.09.i.i84.epil.init = phi i32 [ -2128831035, %.lr.ph86.preheader ], [ %i.bl, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph86.epil

.lr.ph86.epil:                                    ; preds = %.lr.ph86.epil, %.lr.ph86.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph86.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph86.epil ] ; 2 uses
  %.09.i.i84.epil = phi i32 [ %.09.i.i84.epil.init, %.lr.ph86.epil.preheader ], [ %i.bq, %.lr.ph86.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph86.epil.preheader ], [ %epil.iter.next, %.lr.ph86.epil ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.epil
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68, !noalias !8194
  %i.bo = zext i8 %i.bn to i32
  %i.bp = xor i32 %.09.i.i84.epil, %i.bo
  %i.bq = mul i32 %i.bp, 16777619                 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.epil, !llvm.loop !8187

_ZN8facebook5velox6StatusD2Ev.exit38:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, %.lr.ph86.epil, %.noexc28
  %.09.i.i.lcssa = phi i32 [ -2128831035, %.noexc28 ], [ %i.bl, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph86.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8193
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.088
  store i32 %.09.i.i.lcssa, ptr %i.br, align 4, !tbaa !79
  %i.bs = add nuw i64 %.088, 1                    ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.y
  br i1 %i.bt, label %.noexc28, label %.loopexit, !llvm.loop !8188

_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit: ; preds = %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit62
  %.01583 = phi i64 [ %i.j, %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit.lr.ph ], [ %i.dd, %_ZN8facebook5velox6StatusD2Ev.exit62 ] ; 3 uses
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01583, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !8195
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.q, align 8, !noalias !8195 ; 5 uses
  %.sroa.2.0.copyload.i48 = load ptr, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !68, !noalias !8195 ; 2 uses
  store i64 %.sroa.0.0.copyload.i46, ptr %3, align 8, !noalias !8195
  store ptr %.sroa.2.0.copyload.i48, ptr %i.m, align 8, !noalias !8195
  %i.bv = trunc i64 %.sroa.0.0.copyload.i46 to i32 ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 13
  %i.bx = select i1 %i.bw, ptr %i.n, ptr %.sroa.2.0.copyload.i48 ; 5 uses
  %.not91 = icmp eq i32 %i.bv, 0
  br i1 %.not91, label %_ZN8facebook5velox6StatusD2Ev.exit62, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8facebook5velox9functions16Fnv1a_32FunctionINS0_4exec10VectorExecEE4callERiRKNS0_10StringViewE.exit
  %wide.trip.count98 = and i64 %.sroa.0.0.copyload.i46, 4294967295
  %i.by = add nsw i64 %wide.trip.count98, -1
  %xtraiter113 = and i64 %.sroa.0.0.copyload.i46, 3 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 3
  br i1 %i.bz, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter118 = and i64 %.sroa.0.0.copyload.i46, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next96.3, %.lr.ph ] ; 5 uses
  %.09.i80 = phi i32 [ -2128831035, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ]
  %niter119 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter119.next.3, %.lr.ph ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !68
  %i.cc = zext i8 %i.cb to i32
  %i.cd = xor i32 %.09.i80, %i.cc
  %i.ce = mul i32 %i.cd, 16777619
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !68
  %i.ci = zext i8 %i.ch to i32
  %i.cj = xor i32 %i.ce, %i.ci
  %i.ck = mul i32 %i.cj, 16777619
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
  %.09.i.i23.epil = phi i32 [ %.09.i.i23.epil.init, %.lr.ph.epil.preheader ], [ %i.ca, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.epil
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !68, !noalias !8203
  %i.by = zext i8 %i.bx to i32
  %i.bz = xor i32 %.09.i.i23.epil, %i.by
  %i.ca = mul i32 %i.bz, 16777619                 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit14, label %.lr.ph.epil, !llvm.loop !8200

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.loopexit.unr-lcssa, %.lr.ph.epil, %.noexc5
  %.09.i.i.lcssa = phi i32 [ -2128831035, %.noexc5 ], [ %i.bv, %_ZN8facebook5velox6StatusD2Ev.exit14.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8202
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv27
  store i32 %.09.i.i.lcssa, ptr %i.cb, align 4, !tbaa !79
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next28 to i32
  %exitcond30.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond30.not, label %.loopexit, label %.noexc5, !llvm.loop !8201

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !394   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !467
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !468
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1435
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !1436
  store i8 1, ptr %3, align 8, !tbaa !1438
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cc, ptr %i.ck, align 8, !tbaa !1439
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.ce, i32 noundef %i.cg, ptr noundef nonnull byval(%class.anon.3053) align 8 %2, ptr noundef nonnull byval(%class.anon.3054) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.3053) align 8 %2, ptr noundef byval(%class.anon.3054) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1435, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1436
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1428 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1430, !nonnull !91, !align !175
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !379, !noalias !8221
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1431, !nonnull !91, !align !175
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1433, !nonnull !91, !align !175
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !528
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bz, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !8221
  %i.ao = or disjoint i64 %i.an, %i.ac            ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !noalias !8221 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !noalias !8221 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !8221
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ad, align 8, !noalias !8221
  %i.aq = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 13
  %i.as = select i1 %i.ar, ptr %i.ae, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not32.i = icmp eq i32 %i.aq, 0
  br i1 %.not32.i, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc12.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.at = add nsw i64 %wide.trip.count.i, -1
  %xtraiter114 = and i64 %.sroa.0.0.copyload.i.i, 3 ; 3 uses
  %i.au = icmp ult i64 %i.at, 3
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter119 = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i.i29.i = phi i32 [ -2128831035, %.lr.ph.preheader.i.new ], [ %i.br, %.lr.ph.i ]
  %niter120 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter120.next.3, %.lr.ph.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !68, !noalias !8222
  %i.ax = zext i8 %i.aw to i32
  %i.ay = xor i32 %.09.i.i29.i, %i.ax
  %i.az = mul i32 %i.ay, 16777619
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !68, !noalias !8222
  %i.bd = zext i8 %i.bc to i32
  %i.be = xor i32 %i.az, %i.bd
  %i.bf = mul i32 %i.be, 16777619
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !68, !noalias !8222
  %i.bj = zext i8 %i.bi to i32
  %i.bk = xor i32 %i.bf, %i.bj
  %i.bl = mul i32 %i.bk, 16777619
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !68, !noalias !8222
  %i.bp = zext i8 %i.bo to i32
  %i.bq = xor i32 %i.bl, %i.bp
  %i.br = mul i32 %i.bq, 16777619                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter120.next.3 = add i64 %niter120, 4         ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ]
  %.09.i.i29.i.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i ], [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i64 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i.i29.i.epil = phi i32 [ %.09.i.i29.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bw, %.lr.ph.i.epil ]
  %epil.iter115 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter115.next, %.lr.ph.i.epil ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i.epil
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !68, !noalias !8222
  %i.bu = zext i8 %i.bt to i32
  %i.bv = xor i32 %.09.i.i29.i.epil, %i.bu
  %i.bw = mul i32 %i.bv, 16777619                 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.i.epil, !llvm.loop !8208

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.noexc12.i
  %.09.i.i.lcssa.i = phi i32 [ -2128831035, %.noexc12.i ], [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ], [ %i.bw, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !8221
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.09.i.i.lcssa.i, ptr %i.bx, align 4, !tbaa !79
  %i.by = add nuw i64 %.031.i, 9223372036854775807
  %i.bz = and i64 %i.by, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bz, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.noexc12.i, !llvm.loop !8209

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = sdiv i32 %0, 64                         ; 2 uses
  %i.cb = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.cc
  %i.cd = xor i64 %notmask.i.i35, -1
  %i.ce = sub nsw i32 64, %i.cb
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl i64 %i.cd, %i.cf
  %i.ch = load i8, ptr %2, align 8, !tbaa !1435, !range !90, !noundef !91
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1436
  %i.ck = sext i32 %i.ca to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !138
  %i.cn = xor i8 %i.ch, 1
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = sub nsw i64 0, %i.co
  %i.cq = xor i64 %i.cm, %i.cp
  %i.cr = and i64 %i.cq, %i.cg                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cr, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = shl nsw i32 %i.ca, 6
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre.i38 = load ptr, ptr %i.cs, align 8, !tbaa !1428 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1430, !nonnull !91, !align !175
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !379, !noalias !8223
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1431, !nonnull !91, !align !175
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1433, !nonnull !91, !align !175
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !528
  br label %.noexc12.i39

.noexc12.i39:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52, %.preheader.i37
  %.031.i40 = phi i64 [ %i.cr, %.preheader.i37 ], [ %i.er, %_ZN8facebook5velox6StatusD2Ev.exit20.i52 ] ; 3 uses
  %i.df = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !8223
  %i.dg = or disjoint i64 %i.df, %i.cu            ; 2 uses
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %i.dh, align 8, !noalias !8223 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.2.0.copyload.i.i43 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i42, align 8, !tbaa !68, !noalias !8223 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i41, ptr %5, align 8, !noalias !8223
  store ptr %.sroa.2.0.copyload.i.i43, ptr %i.cv, align 8, !noalias !8223
  %i.di = trunc i64 %.sroa.0.0.copyload.i.i41 to i32 ; 2 uses
  %i.dj = icmp ult i32 %i.di, 13
  %i.dk = select i1 %i.dj, ptr %i.cw, ptr %.sroa.2.0.copyload.i.i43 ; 5 uses
  %.not32.i44 = icmp eq i32 %i.di, 0
  br i1 %.not32.i44, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.preheader.i45

.lr.ph.preheader.i45:                             ; preds = %.noexc12.i39
  %wide.trip.count.i46 = and i64 %.sroa.0.0.copyload.i.i41, 4294967295
  %i.dl = add nsw i64 %wide.trip.count.i46, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i41, 3 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 3
  br i1 %i.dm, label %.lr.ph.i47.epil.preheader, label %.lr.ph.preheader.i45.new

.lr.ph.preheader.i45.new:                         ; preds = %.lr.ph.preheader.i45
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i41, 4294967292
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47, %.lr.ph.preheader.i45.new
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.preheader.i45.new ], [ %indvars.iv.next.i50.3, %.lr.ph.i47 ] ; 5 uses
  %.09.i.i29.i49 = phi i32 [ -2128831035, %.lr.ph.preheader.i45.new ], [ %i.ej, %.lr.ph.i47 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i45.new ], [ %niter.next.3, %.lr.ph.i47 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !68, !noalias !8224
  %i.dp = zext i8 %i.do to i32
  %i.dq = xor i32 %.09.i.i29.i49, %i.dp
  %i.dr = mul i32 %i.dq, 16777619
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !68, !noalias !8224
  %i.dv = zext i8 %i.du to i32
  %i.dw = xor i32 %i.dr, %i.dv
  %i.dx = mul i32 %i.dw, 16777619
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !68, !noalias !8224
  %i.eb = zext i8 %i.ea to i32
  %i.ec = xor i32 %i.dx, %i.eb
  %i.ed = mul i32 %i.ec, 16777619
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !68, !noalias !8224
  %i.eh = zext i8 %i.eg to i32
  %i.ei = xor i32 %i.ed, %i.eh
  %i.ej = mul i32 %i.ei, 16777619                 ; 3 uses
  %indvars.iv.next.i50.3 = add nuw nsw i64 %indvars.iv.i48, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, label %.lr.ph.i47, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa: ; preds = %.lr.ph.i47
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.i47.epil.preheader

.lr.ph.i47.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, %.lr.ph.preheader.i45
  %indvars.iv.i48.epil.init = phi i64 [ 0, %.lr.ph.preheader.i45 ], [ %indvars.iv.next.i50.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ]
  %.09.i.i29.i49.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i45 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.i47.epil

.lr.ph.i47.epil:                                  ; preds = %.lr.ph.i47.epil, %.lr.ph.i47.epil.preheader
  %indvars.iv.i48.epil = phi i64 [ %indvars.iv.i48.epil.init, %.lr.ph.i47.epil.preheader ], [ %indvars.iv.next.i50.epil, %.lr.ph.i47.epil ] ; 2 uses
  %.09.i.i29.i49.epil = phi i32 [ %.09.i.i29.i49.epil.init, %.lr.ph.i47.epil.preheader ], [ %i.eo, %.lr.ph.i47.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i47.epil.preheader ], [ %epil.iter.next, %.lr.ph.i47.epil ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48.epil
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !68, !noalias !8224
  %i.em = zext i8 %i.el to i32
  %i.en = xor i32 %.09.i.i29.i49.epil, %i.em
  %i.eo = mul i32 %i.en, 16777619                 ; 2 uses
  %indvars.iv.next.i50.epil = add nuw nsw i64 %indvars.iv.i48.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.i47.epil, !llvm.loop !8214

_ZN8facebook5velox6StatusD2Ev.exit20.i52:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, %.lr.ph.i47.epil, %.noexc12.i39
  %.09.i.i.lcssa.i53 = phi i32 [ -2128831035, %.noexc12.i39 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph.i47.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !8223
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  store i32 %.09.i.i.lcssa.i53, ptr %i.ep, align 4, !tbaa !79
  %i.eq = add i64 %.031.i40, -1
  %i.er = and i64 %i.eq, %.031.i40                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.er, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %.noexc12.i39, !llvm.loop !8209

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52, %bb.e, %bb.d
  %i.es = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3380 = icmp sgt i32 %i.es, %i.d
  br i1 %.not3380, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, %.lr.ph
  %i.et = phi i32 [ %i.ev, %.lr.ph ], [ %i.es, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55 ] ; 2 uses
  %.081 = phi i32 [ %i.et, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55 ]
  %i.eu = sdiv i32 %.081, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.eu)
  %i.ev = add nsw i32 %i.et, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ev, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !8215

bb.f:                                             ; preds = %._crit_edge
  %i.ew = ashr i32 %1, 6
  %i.ex = and i32 %1, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %notmask.i56 = shl nsw i64 -1, %i.ey
  %i.ez = xor i64 %notmask.i56, -1
  %i.fa = load i8, ptr %2, align 8, !tbaa !1435, !range !90, !noundef !91
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1436
  %i.fd = sext i32 %i.ew to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !138
  %i.fg = xor i8 %i.fa, 1
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = xor i64 %i.ff, %i.fi
  %i.fk = and i64 %i.fj, %i.ez                    ; 2 uses
  %.not.i57 = icmp eq i64 %i.fk, 0
  br i1 %.not.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i58

.preheader.i58:                                   ; preds = %bb.f
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = sext i32 %i.d to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre.i59 = load ptr, ptr %i.fl, align 8, !tbaa !1428 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre.i59, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1430, !nonnull !91, !align !175
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !379, !noalias !8225
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre.i59, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1431, !nonnull !91, !align !175
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1433, !nonnull !91, !align !175
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !528
  br label %.noexc12.i60

.noexc12.i60:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73, %.preheader.i58
  %.031.i61 = phi i64 [ %i.fk, %.preheader.i58 ], [ %i.hj, %_ZN8facebook5velox6StatusD2Ev.exit20.i73 ] ; 3 uses
  %i.fx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i61, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !8225
  %i.fy = or disjoint i64 %i.fx, %i.fm            ; 2 uses
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fr, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.fz, align 8, !noalias !8225 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.2.0.copyload.i.i64 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i63, align 8, !tbaa !68, !noalias !8225 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i62, ptr %4, align 8, !noalias !8225
  store ptr %.sroa.2.0.copyload.i.i64, ptr %i.fn, align 8, !noalias !8225
  %i.ga = trunc i64 %.sroa.0.0.copyload.i.i62 to i32 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 13
  %i.gc = select i1 %i.gb, ptr %i.fo, ptr %.sroa.2.0.copyload.i.i64 ; 5 uses
  %.not32.i65 = icmp eq i32 %i.ga, 0
  br i1 %.not32.i65, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.preheader.i66

.lr.ph.preheader.i66:                             ; preds = %.noexc12.i60
  %wide.trip.count.i67 = and i64 %.sroa.0.0.copyload.i.i62, 4294967295
  %i.gd = add nsw i64 %wide.trip.count.i67, -1
  %xtraiter107 = and i64 %.sroa.0.0.copyload.i.i62, 3 ; 3 uses
  %i.ge = icmp ult i64 %i.gd, 3
  br i1 %i.ge, label %.lr.ph.i68.epil.preheader, label %.lr.ph.preheader.i66.new

.lr.ph.preheader.i66.new:                         ; preds = %.lr.ph.preheader.i66
  %unroll_iter112 = and i64 %.sroa.0.0.copyload.i.i62, 4294967292
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %.lr.ph.preheader.i66.new
  %indvars.iv.i69 = phi i64 [ 0, %.lr.ph.preheader.i66.new ], [ %indvars.iv.next.i71.3, %.lr.ph.i68 ] ; 5 uses
  %.09.i.i29.i70 = phi i32 [ -2128831035, %.lr.ph.preheader.i66.new ], [ %i.hb, %.lr.ph.i68 ]
  %niter113 = phi i64 [ 0, %.lr.ph.preheader.i66.new ], [ %niter113.next.3, %.lr.ph.i68 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !68, !noalias !8226
  %i.gh = zext i8 %i.gg to i32
  %i.gi = xor i32 %.09.i.i29.i70, %i.gh
  %i.gj = mul i32 %i.gi, 16777619
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !68, !noalias !8226
  %i.gn = zext i8 %i.gm to i32
  %i.go = xor i32 %i.gj, %i.gn
  %i.gp = mul i32 %i.go, 16777619
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !68, !noalias !8226
  %i.gt = zext i8 %i.gs to i32
  %i.gu = xor i32 %i.gp, %i.gt
  %i.gv = mul i32 %i.gu, 16777619
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 3
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !68, !noalias !8226
  %i.gz = zext i8 %i.gy to i32
  %i.ha = xor i32 %i.gv, %i.gz
  %i.hb = mul i32 %i.ha, 16777619                 ; 3 uses
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i69, 4 ; 2 uses
  %niter113.next.3 = add i64 %niter113, 4         ; 2 uses
  %niter113.ncmp.3 = icmp eq i64 %niter113.next.3, %unroll_iter112
  br i1 %niter113.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, label %.lr.ph.i68, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa: ; preds = %.lr.ph.i68
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.i68.epil.preheader

.lr.ph.i68.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, %.lr.ph.preheader.i66
  %indvars.iv.i69.epil.init = phi i64 [ 0, %.lr.ph.preheader.i66 ], [ %indvars.iv.next.i71.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ]
  %.09.i.i29.i70.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i66 ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i68.epil

.lr.ph.i68.epil:                                  ; preds = %.lr.ph.i68.epil, %.lr.ph.i68.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.i69.epil.init, %.lr.ph.i68.epil.preheader ], [ %indvars.iv.next.i71.epil, %.lr.ph.i68.epil ] ; 2 uses
  %.09.i.i29.i70.epil = phi i32 [ %.09.i.i29.i70.epil.init, %.lr.ph.i68.epil.preheader ], [ %i.hg, %.lr.ph.i68.epil ]
  %epil.iter108 = phi i64 [ 0, %.lr.ph.i68.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i68.epil ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69.epil
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !68, !noalias !8226
  %i.he = zext i8 %i.hd to i32
  %i.hf = xor i32 %.09.i.i29.i70.epil, %i.he
  %i.hg = mul i32 %i.hf, 16777619                 ; 2 uses
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter108.next = add i64 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i64 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.i68.epil, !llvm.loop !8220

_ZN8facebook5velox6StatusD2Ev.exit20.i73:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, %.lr.ph.i68.epil, %.noexc12.i60
  %.09.i.i.lcssa.i74 = phi i32 [ -2128831035, %.noexc12.i60 ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ], [ %i.hg, %.lr.ph.i68.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8225
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.fy
  store i32 %.09.i.i.lcssa.i74, ptr %i.hh, align 4, !tbaa !79
  %i.hi = add nuw i64 %.031.i61, 9223372036854775807
  %i.hj = and i64 %i.hi, %.031.i61                ; 2 uses
  %.not10.i75 = icmp eq i64 %i.hj, 0
  br i1 %.not10.i75, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.noexc12.i60, !llvm.loop !8209

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1438, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1439
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.noexc18.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.noexc18.lr.ph:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre96 = load ptr, ptr %i.k, align 8, !tbaa !1428 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre96, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1430, !nonnull !91, !align !175
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !379, !noalias !8239
  %i.s = getelementptr inbounds nuw i8, ptr %.pre96, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1431, !nonnull !91, !align !175
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1433, !nonnull !91, !align !175
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !528
  br label %.noexc18

bb.b:                                             ; preds = %bb.a
  %i.x = shl i32 %1, 6                            ; 3 uses
  %i.y = add i32 %i.x, 64
  %i.z = sext i32 %i.y to i64
  %.not85 = icmp eq i32 %i.x, -64
  br i1 %.not85, label %.loopexit, label %.noexc24.lr.ph

.noexc24.lr.ph:                                   ; preds = %bb.b
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !1428 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1430, !nonnull !91, !align !175
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !379, !noalias !8240
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1431, !nonnull !91, !align !175
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1433, !nonnull !91, !align !175
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !528
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit34
  %.084 = phi i64 [ %i.aa, %.noexc24.lr.ph ], [ %i.bw, %_ZN8facebook5velox6StatusD2Ev.exit34 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8240
  %sext = shl i64 %.084, 32
  %i.am = ashr exact i64 %sext, 28
  %i.an = getelementptr inbounds i8, ptr %i.ag, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !noalias !8240 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68, !noalias !8240 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !noalias !8240
  store ptr %.sroa.2.0.copyload.i, ptr %i.ac, align 8, !noalias !8240
  %i.ao = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 13
  %i.aq = select i1 %i.ap, ptr %i.ad, ptr %.sroa.2.0.copyload.i ; 5 uses
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.noexc24
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ar = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 3    ; 3 uses
  %i.as = icmp ult i64 %i.ar, 3
  br i1 %i.as, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i, 4294967292
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %indvars.iv.next.3, %.lr.ph82 ] ; 5 uses
  %.09.i.i.i80 = phi i32 [ -2128831035, %.lr.ph82.preheader.new ], [ %i.bp, %.lr.ph82 ]
  %niter = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter.next.3, %.lr.ph82 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !68, !noalias !8241
  %i.av = zext i8 %i.au to i32
  %i.aw = xor i32 %.09.i.i.i80, %i.av
  %i.ax = mul i32 %i.aw, 16777619
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !68, !noalias !8241
  %i.bb = zext i8 %i.ba to i32
  %i.bc = xor i32 %i.ax, %i.bb
  %i.bd = mul i32 %i.bc, 16777619
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !68, !noalias !8241
  %i.bh = zext i8 %i.bg to i32
  %i.bi = xor i32 %i.bd, %i.bh
  %i.bj = mul i32 %i.bi, 16777619
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !68, !noalias !8241
  %i.bn = zext i8 %i.bm to i32
  %i.bo = xor i32 %i.bj, %i.bn
  %i.bp = mul i32 %i.bo, 16777619                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, label %.lr.ph82, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa: ; preds = %.lr.ph82
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, %.lr.ph82.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ]
  %.09.i.i.i80.epil.init = phi i32 [ -2128831035, %.lr.ph82.preheader ], [ %i.bp, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph82.epil

.lr.ph82.epil:                                    ; preds = %.lr.ph82.epil, %.lr.ph82.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph82.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph82.epil ] ; 2 uses
  %.09.i.i.i80.epil = phi i32 [ %.09.i.i.i80.epil.init, %.lr.ph82.epil.preheader ], [ %i.bu, %.lr.ph82.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph82.epil.preheader ], [ %epil.iter.next, %.lr.ph82.epil ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.epil
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !68, !noalias !8241
  %i.bs = zext i8 %i.br to i32
  %i.bt = xor i32 %.09.i.i.i80.epil, %i.bs
  %i.bu = mul i32 %i.bt, 16777619                 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.epil, !llvm.loop !8233

_ZN8facebook5velox6StatusD2Ev.exit34:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, %.lr.ph82.epil, %.noexc24
  %.09.i.i.i.lcssa = phi i32 [ -2128831035, %.noexc24 ], [ %i.bp, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ], [ %i.bu, %.lr.ph82.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8240
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.084
  store i32 %.09.i.i.i.lcssa, ptr %i.bv, align 4, !tbaa !79
  %i.bw = add nuw i64 %.084, 1                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.z
  br i1 %i.bx, label %.noexc24, label %.loopexit, !llvm.loop !8234

.noexc18:                                         ; preds = %.noexc18.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit58
  %.01579 = phi i64 [ %i.j, %.noexc18.lr.ph ], [ %i.dk, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.by = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01579, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !8239
  %i.bz = or disjoint i64 %i.by, %i.m             ; 2 uses
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.ca, align 8, !noalias !8239 ; 5 uses
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2.0.copyload.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !68, !noalias !8239 ; 2 uses
  store i64 %.sroa.0.0.copyload.i42, ptr %3, align 8, !noalias !8239
  store ptr %.sroa.2.0.copyload.i44, ptr %i.n, align 8, !noalias !8239
  %i.cb = trunc i64 %.sroa.0.0.copyload.i42 to i32 ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 13
  %i.cd = select i1 %i.cc, ptr %i.o, ptr %.sroa.2.0.copyload.i44 ; 5 uses
  %.not87 = icmp eq i32 %i.cb, 0
  br i1 %.not87, label %_ZN8facebook5velox6StatusD2Ev.exit58, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc18
  %wide.trip.count94 = and i64 %.sroa.0.0.copyload.i42, 4294967295
  %i.ce = add nsw i64 %wide.trip.count94, -1
  %xtraiter110 = and i64 %.sroa.0.0.copyload.i42, 3 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter115 = and i64 %.sroa.0.0.copyload.i42, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next92.3, %.lr.ph ] ; 5 uses
  %.09.i.i76 = phi i32 [ -2128831035, %.lr.ph.preheader.new ], [ %i.dc, %.lr.ph ]
  %niter116 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter116.next.3, %.lr.ph ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv91
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !68, !noalias !8242
  %i.ci = zext i8 %i.ch to i32
  %i.cj = xor i32 %.09.i.i76, %i.ci
  %i.ck = mul i32 %i.cj, 16777619
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv91
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1447
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ct, ptr %i.da, align 8, !tbaa !1448
  store i8 1, ptr %3, align 8, !tbaa !1450
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ct, ptr %i.db, align 8, !tbaa !1451
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef nonnull byval(%class.anon.3079) align 8 %2, ptr noundef nonnull byval(%class.anon.3080) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit15, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS4_10VectorExecEEESC_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.3079) align 8 %2, ptr noundef byval(%class.anon.3080) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1447, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1448
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1440 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1442, !nonnull !91, !align !175
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !495
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !496, !range !90, !noundef !91
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 59
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1443, !nonnull !91, !align !175
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1445, !nonnull !91, !align !175
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !528
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i, %.preheader.i
  %.032.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.cq, %_ZN8facebook5velox6StatusD2Ev.exit21.i ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = or disjoint i32 %i.d, %i.av             ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !8268
  br i1 %i.al, label %.noexc13.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i8, ptr %i.am, align 1, !tbaa !497, !range !90, !noundef !91
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !498
  br label %.noexc13.i

bb.g:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !499
  %i.bc = shl nsw i64 %i.ax, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !79
  br label %.noexc13.i

.noexc13.i:                                       ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.g ], [ %i.ba, %bb.f ], [ %i.aw, %bb.d ]
  %i.bf = sext i32 %.0.i.i.i.i to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bg, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8, !noalias !8268
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.ac, align 8, !noalias !8268
  %i.bh = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 13
  %i.bj = select i1 %i.bi, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i.i ; 5 uses
  %.not33.i = icmp eq i32 %i.bh, 0
  br i1 %.not33.i, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.bk = add nsw i64 %wide.trip.count.i, -1
  %xtraiter116 = and i64 %.sroa.0.0.copyload.i.i.i, 3 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 3
  br i1 %i.bl, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter121 = and i64 %.sroa.0.0.copyload.i.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i.i30.i = phi i32 [ -2128831035, %.lr.ph.preheader.i.new ], [ %i.ci, %.lr.ph.i ]
  %niter122 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter122.next.3, %.lr.ph.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68, !noalias !8269
  %i.bo = zext i8 %i.bn to i32
  %i.bp = xor i32 %.09.i.i30.i, %i.bo
  %i.bq = mul i32 %i.bp, 16777619
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !68, !noalias !8269
  %i.bu = zext i8 %i.bt to i32
  %i.bv = xor i32 %i.bq, %i.bu
  %i.bw = mul i32 %i.bv, 16777619
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !68, !noalias !8269
  %i.ca = zext i8 %i.bz to i32
  %i.cb = xor i32 %i.bw, %i.ca
  %i.cc = mul i32 %i.cb, 16777619
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !68, !noalias !8269
  %i.cg = zext i8 %i.cf to i32
  %i.ch = xor i32 %i.cc, %i.cg
  %i.ci = mul i32 %i.ch, 16777619                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter122.next.3 = add i64 %niter122, 4         ; 2 uses
  %niter122.ncmp.3 = icmp eq i64 %niter122.next.3, %unroll_iter121
  br i1 %niter122.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ]
  %.09.i.i30.i.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i ], [ %i.ci, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i.i30.i.epil = phi i32 [ %.09.i.i30.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cn, %.lr.ph.i.epil ]
  %epil.iter117 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter117.next, %.lr.ph.i.epil ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i.epil
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !68, !noalias !8269
  %i.cl = zext i8 %i.ck to i32
  %i.cm = xor i32 %.09.i.i30.i.epil, %i.cl
  %i.cn = mul i32 %i.cm, 16777619                 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.i.epil, !llvm.loop !8255

_ZN8facebook5velox6StatusD2Ev.exit21.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.noexc13.i
  %.09.i.i.lcssa.i = phi i32 [ -2128831035, %.noexc13.i ], [ %i.ci, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ], [ %i.cn, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !8268
  %i.co = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ax
  store i32 %.09.i.i.lcssa.i, ptr %i.co, align 4, !tbaa !79
  %i.cp = add nuw i64 %.032.i, 9223372036854775807
  %i.cq = and i64 %i.cp, %.032.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.cq, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !8256

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = sdiv i32 %0, 64                         ; 2 uses
  %i.cs = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ct
  %i.cu = xor i64 %notmask.i.i35, -1
  %i.cv = sub nsw i32 64, %i.cs
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl i64 %i.cu, %i.cw
  %i.cy = load i8, ptr %2, align 8, !tbaa !1447, !range !90, !noundef !91
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1448
  %i.db = sext i32 %i.cr to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !138
  %i.de = xor i8 %i.cy, 1
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = xor i64 %i.dd, %i.dg
  %i.di = and i64 %i.dh, %i.cx                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.di, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = shl nsw i32 %i.cr, 6
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre.i38 = load ptr, ptr %i.dj, align 8, !tbaa !1440 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1442, !nonnull !91, !align !175
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !495
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !496, !range !90, !noundef !91
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1443, !nonnull !91, !align !175
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1445, !nonnull !91, !align !175
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !528
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53, %.preheader.i37
  %.032.i39 = phi i64 [ %i.di, %.preheader.i37 ], [ %i.fz, %_ZN8facebook5velox6StatusD2Ev.exit21.i53 ] ; 3 uses
  %i.ed = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i39, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = or disjoint i32 %i.dk, %i.ee            ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !8270
  br i1 %i.du, label %.noexc13.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = load i8, ptr %i.dv, align 1, !tbaa !497, !range !90, !noundef !91
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = load i32, ptr %i.dx, align 8, !tbaa !498
  br label %.noexc13.i40

bb.m:                                             ; preds = %bb.k
  %i.ek = load ptr, ptr %i.dw, align 8, !tbaa !499
  %i.el = shl nsw i64 %i.eg, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !79
  br label %.noexc13.i40

.noexc13.i40:                                     ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i41 = phi i32 [ %i.en, %bb.m ], [ %i.ej, %bb.l ], [ %i.ef, %bb.j ]
  %i.eo = sext i32 %.0.i.i.i.i41 to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.eo ; 2 uses
  %.sroa.0.0.copyload.i.i.i42 = load i64, ptr %i.ep, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.2.0.copyload.i.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i43, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i42, ptr %5, align 8, !noalias !8270
  store ptr %.sroa.2.0.copyload.i.i.i44, ptr %i.dl, align 8, !noalias !8270
  %i.eq = trunc i64 %.sroa.0.0.copyload.i.i.i42 to i32 ; 2 uses
  %i.er = icmp ult i32 %i.eq, 13
  %i.es = select i1 %i.er, ptr %i.dm, ptr %.sroa.2.0.copyload.i.i.i44 ; 5 uses
  %.not33.i45 = icmp eq i32 %i.eq, 0
  br i1 %.not33.i45, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.noexc13.i40
  %wide.trip.count.i47 = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967295
  %i.et = add nsw i64 %wide.trip.count.i47, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i.i42, 3 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 3
  br i1 %i.eu, label %.lr.ph.i48.epil.preheader, label %.lr.ph.preheader.i46.new

.lr.ph.preheader.i46.new:                         ; preds = %.lr.ph.preheader.i46
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967292
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i46.new
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %indvars.iv.next.i51.3, %.lr.ph.i48 ] ; 5 uses
  %.09.i.i30.i50 = phi i32 [ -2128831035, %.lr.ph.preheader.i46.new ], [ %i.fr, %.lr.ph.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %niter.next.3, %.lr.ph.i48 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !68, !noalias !8271
  %i.ex = zext i8 %i.ew to i32
  %i.ey = xor i32 %.09.i.i30.i50, %i.ex
  %i.ez = mul i32 %i.ey, 16777619
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !68, !noalias !8271
  %i.fd = zext i8 %i.fc to i32
  %i.fe = xor i32 %i.ez, %i.fd
  %i.ff = mul i32 %i.fe, 16777619
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !68, !noalias !8271
  %i.fj = zext i8 %i.fi to i32
  %i.fk = xor i32 %i.ff, %i.fj
  %i.fl = mul i32 %i.fk, 16777619
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !68, !noalias !8271
  %i.fp = zext i8 %i.fo to i32
  %i.fq = xor i32 %i.fl, %i.fp
  %i.fr = mul i32 %i.fq, 16777619                 ; 3 uses
  %indvars.iv.next.i51.3 = add nuw nsw i64 %indvars.iv.i49, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, label %.lr.ph.i48, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa: ; preds = %.lr.ph.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.i48.epil.preheader

.lr.ph.i48.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, %.lr.ph.preheader.i46
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i51.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ]
  %.09.i.i30.i50.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i46 ], [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i48.epil

.lr.ph.i48.epil:                                  ; preds = %.lr.ph.i48.epil, %.lr.ph.i48.epil.preheader
  %indvars.iv.i49.epil = phi i64 [ %indvars.iv.i49.epil.init, %.lr.ph.i48.epil.preheader ], [ %indvars.iv.next.i51.epil, %.lr.ph.i48.epil ] ; 2 uses
  %.09.i.i30.i50.epil = phi i32 [ %.09.i.i30.i50.epil.init, %.lr.ph.i48.epil.preheader ], [ %i.fw, %.lr.ph.i48.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i48.epil.preheader ], [ %epil.iter.next, %.lr.ph.i48.epil ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49.epil
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !68, !noalias !8271
  %i.fu = zext i8 %i.ft to i32
  %i.fv = xor i32 %.09.i.i30.i50.epil, %i.fu
  %i.fw = mul i32 %i.fv, 16777619                 ; 2 uses
  %indvars.iv.next.i51.epil = add nuw nsw i64 %indvars.iv.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.i48.epil, !llvm.loop !8261

_ZN8facebook5velox6StatusD2Ev.exit21.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, %.lr.ph.i48.epil, %.noexc13.i40
  %.09.i.i.lcssa.i54 = phi i32 [ -2128831035, %.noexc13.i40 ], [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ], [ %i.fw, %.lr.ph.i48.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !8270
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eg
  store i32 %.09.i.i.lcssa.i54, ptr %i.fx, align 4, !tbaa !79
  %i.fy = add i64 %.032.i39, -1
  %i.fz = and i64 %i.fy, %.032.i39                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.fz, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %bb.j, !llvm.loop !8256

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53, %bb.i, %bb.h
  %i.ga = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3382 = icmp sgt i32 %i.ga, %i.d
  br i1 %.not3382, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.n

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, %.lr.ph
  %i.gb = phi i32 [ %i.gd, %.lr.ph ], [ %i.ga, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56 ] ; 2 uses
  %.083 = phi i32 [ %i.gb, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56 ]
  %i.gc = sdiv i32 %.083, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.gc)
  %i.gd = add nsw i32 %i.gb, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gd, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !8262

bb.n:                                             ; preds = %._crit_edge
  %i.ge = ashr i32 %1, 6
  %i.gf = and i32 %1, 63
  %i.gg = zext nneg i32 %i.gf to i64
  %notmask.i57 = shl nsw i64 -1, %i.gg
  %i.gh = xor i64 %notmask.i57, -1
  %i.gi = load i8, ptr %2, align 8, !tbaa !1447, !range !90, !noundef !91
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1448
  %i.gl = sext i32 %i.ge to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !138
  %i.go = xor i8 %i.gi, 1
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = xor i64 %i.gn, %i.gq
  %i.gs = and i64 %i.gr, %i.gh                    ; 2 uses
  %.not.i58 = icmp eq i64 %i.gs, 0
  br i1 %.not.i58, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.n
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre.i60 = load ptr, ptr %i.gt, align 8, !tbaa !1440 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1442, !nonnull !91, !align !175
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !495
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 58
  %i.hc = load i8, ptr %i.hb, align 2, !tbaa !496, !range !90, !noundef !91
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 59
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1443, !nonnull !91, !align !175
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1445, !nonnull !91, !align !175
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !528
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75, %.preheader.i59
  %.032.i61 = phi i64 [ %i.gs, %.preheader.i59 ], [ %i.ji, %_ZN8facebook5velox6StatusD2Ev.exit21.i75 ] ; 3 uses
  %i.hm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i61, i1 true)
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = or disjoint i32 %i.d, %i.hn             ; 2 uses
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !8272
  br i1 %i.hd, label %.noexc13.i62, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hq = load i8, ptr %i.he, align 1, !tbaa !497, !range !90, !noundef !91
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hs = load i32, ptr %i.hg, align 8, !tbaa !498
  br label %.noexc13.i62

bb.r:                                             ; preds = %bb.p
  %i.ht = load ptr, ptr %i.hf, align 8, !tbaa !499
  %i.hu = shl nsw i64 %i.hp, 2
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !79
  br label %.noexc13.i62

.noexc13.i62:                                     ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i63 = phi i32 [ %i.hw, %bb.r ], [ %i.hs, %bb.q ], [ %i.ho, %bb.o ]
  %i.hx = sext i32 %.0.i.i.i.i63 to i64
  %i.hy = getelementptr inbounds [16 x i8], ptr %i.ha, i64 %i.hx ; 2 uses
  %.sroa.0.0.copyload.i.i.i64 = load i64, ptr %i.hy, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.2.0.copyload.i.i.i66 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i65, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i64, ptr %4, align 8, !noalias !8272
  store ptr %.sroa.2.0.copyload.i.i.i66, ptr %i.gu, align 8, !noalias !8272
  %i.hz = trunc i64 %.sroa.0.0.copyload.i.i.i64 to i32 ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 13
  %i.ib = select i1 %i.ia, ptr %i.gv, ptr %.sroa.2.0.copyload.i.i.i66 ; 5 uses
  %.not33.i67 = icmp eq i32 %i.hz, 0
  br i1 %.not33.i67, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.preheader.i68

.lr.ph.preheader.i68:                             ; preds = %.noexc13.i62
  %wide.trip.count.i69 = and i64 %.sroa.0.0.copyload.i.i.i64, 4294967295
  %i.ic = add nsw i64 %wide.trip.count.i69, -1
  %xtraiter109 = and i64 %.sroa.0.0.copyload.i.i.i64, 3 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 3
  br i1 %i.id, label %.lr.ph.i70.epil.preheader, label %.lr.ph.preheader.i68.new

.lr.ph.preheader.i68.new:                         ; preds = %.lr.ph.preheader.i68
  %unroll_iter114 = and i64 %.sroa.0.0.copyload.i.i.i64, 4294967292
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70, %.lr.ph.preheader.i68.new
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %indvars.iv.next.i73.3, %.lr.ph.i70 ] ; 5 uses
  %.09.i.i30.i72 = phi i32 [ -2128831035, %.lr.ph.preheader.i68.new ], [ %i.ja, %.lr.ph.i70 ]
  %niter115 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %niter115.next.3, %.lr.ph.i70 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !68, !noalias !8273
  %i.ig = zext i8 %i.if to i32
  %i.ih = xor i32 %.09.i.i30.i72, %i.ig
  %i.ii = mul i32 %i.ih, 16777619
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !68, !noalias !8273
  %i.im = zext i8 %i.il to i32
  %i.in = xor i32 %i.ii, %i.im
  %i.io = mul i32 %i.in, 16777619
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !68, !noalias !8273
  %i.is = zext i8 %i.ir to i32
  %i.it = xor i32 %i.io, %i.is
  %i.iu = mul i32 %i.it, 16777619
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !68, !noalias !8273
  %i.iy = zext i8 %i.ix to i32
  %i.iz = xor i32 %i.iu, %i.iy
  %i.ja = mul i32 %i.iz, 16777619                 ; 3 uses
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i71, 4 ; 2 uses
  %niter115.next.3 = add i64 %niter115, 4         ; 2 uses
  %niter115.ncmp.3 = icmp eq i64 %niter115.next.3, %unroll_iter114
  br i1 %niter115.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, label %.lr.ph.i70, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa: ; preds = %.lr.ph.i70
  %lcmp.mod111.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.i70.epil.preheader

.lr.ph.i70.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, %.lr.ph.preheader.i68
  %indvars.iv.i71.epil.init = phi i64 [ 0, %.lr.ph.preheader.i68 ], [ %indvars.iv.next.i73.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ]
  %.09.i.i30.i72.epil.init = phi i32 [ -2128831035, %.lr.ph.preheader.i68 ], [ %i.ja, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter109, 0
  call void @llvm.assume(i1 %lcmp.mod113)
  br label %.lr.ph.i70.epil

.lr.ph.i70.epil:                                  ; preds = %.lr.ph.i70.epil, %.lr.ph.i70.epil.preheader
  %indvars.iv.i71.epil = phi i64 [ %indvars.iv.i71.epil.init, %.lr.ph.i70.epil.preheader ], [ %indvars.iv.next.i73.epil, %.lr.ph.i70.epil ] ; 2 uses
  %.09.i.i30.i72.epil = phi i32 [ %.09.i.i30.i72.epil.init, %.lr.ph.i70.epil.preheader ], [ %i.jf, %.lr.ph.i70.epil ]
  %epil.iter110 = phi i64 [ 0, %.lr.ph.i70.epil.preheader ], [ %epil.iter110.next, %.lr.ph.i70.epil ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71.epil
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !68, !noalias !8273
  %i.jd = zext i8 %i.jc to i32
  %i.je = xor i32 %.09.i.i30.i72.epil, %i.jd
  %i.jf = mul i32 %i.je, 16777619                 ; 2 uses
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i71.epil, 1
  %epil.iter110.next = add i64 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i64 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.i70.epil, !llvm.loop !8267

_ZN8facebook5velox6StatusD2Ev.exit21.i75:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, %.lr.ph.i70.epil, %.noexc13.i62
  %.09.i.i.lcssa.i76 = phi i32 [ -2128831035, %.noexc13.i62 ], [ %i.ja, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ], [ %i.jf, %.lr.ph.i70.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8272
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hp
  store i32 %.09.i.i.lcssa.i76, ptr %i.jg, align 4, !tbaa !79
  %i.jh = add nuw i64 %.032.i61, 9223372036854775807
  %i.ji = and i64 %i.jh, %.032.i61                ; 2 uses
  %.not10.i77 = icmp eq i64 %i.ji, 0
  br i1 %.not10.i77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !8256

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75, %_ZN8facebook5velox6StatusD2Ev.exit21.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_32FunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1450, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1451
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph86 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph86:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre104 = load ptr, ptr %i.k, align 8, !tbaa !1440 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre104, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1442, !nonnull !91, !align !175
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !495
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 58
  %i.u = load i8, ptr %i.t, align 2, !tbaa !496, !range !90, !noundef !91
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 59
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.pre104, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1443, !nonnull !91, !align !175
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1445, !nonnull !91, !align !175
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !528
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = shl i32 %1, 6                           ; 3 uses
  %i.af = add i32 %i.ae, 64
  %i.ag = sext i32 %i.af to i64
  %.not93 = icmp eq i32 %i.ae, -64
  br i1 %.not93, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.b
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !1440 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1442, !nonnull !91, !align !175
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !495
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !496, !range !90, !noundef !91
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 59
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1443, !nonnull !91, !align !175
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1445, !nonnull !91, !align !175
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !528
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph92, %_ZN8facebook5velox6StatusD2Ev.exit37
  %.091 = phi i64 [ %i.ah, %.lr.ph92 ], [ %i.ct, %_ZN8facebook5velox6StatusD2Ev.exit37 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8286
  %i.bb = trunc i64 %.091 to i32
  br i1 %i.as, label %.noexc26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = load i8, ptr %i.at, align 1, !tbaa !497, !range !90, !noundef !91
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr %i.av, align 8, !tbaa !498
  br label %.noexc26

bb.f:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !499
  %sext.i = shl i64 %.091, 32
  %i.bg = ashr exact i64 %sext.i, 30
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !79
  br label %.noexc26

.noexc26:                                         ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i29 = phi i32 [ %i.bi, %bb.f ], [ %i.be, %bb.e ], [ %i.bb, %bb.c ]
  %i.bj = sext i32 %.0.i.i.i29 to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.bj ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bk, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !8286
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.aj, align 8, !noalias !8286
  %i.bl = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 13
  %i.bn = select i1 %i.bm, ptr %i.ak, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not94 = icmp eq i32 %i.bl, 0
  br i1 %.not94, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.noexc26
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.bo = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i, 3  ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 3
  br i1 %i.bp, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %indvars.iv.next.3, %.lr.ph89 ] ; 5 uses
  %.09.i.i.i87 = phi i32 [ -2128831035, %.lr.ph89.preheader.new ], [ %i.cm, %.lr.ph89 ]
  %niter = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter.next.3, %.lr.ph89 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !68, !noalias !8287
  %i.bs = zext i8 %i.br to i32
  %i.bt = xor i32 %.09.i.i.i87, %i.bs
  %i.bu = mul i32 %i.bt, 16777619
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !68, !noalias !8287
  %i.by = zext i8 %i.bx to i32
  %i.bz = xor i32 %i.bu, %i.by
  %i.ca = mul i32 %i.bz, 16777619
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !68, !noalias !8287
  %i.ce = zext i8 %i.cd to i32
  %i.cf = xor i32 %i.ca, %i.ce
  %i.cg = mul i32 %i.cf, 16777619
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !68, !noalias !8287
  %i.ck = zext i8 %i.cj to i32
  %i.cl = xor i32 %i.cg, %i.ck
  %i.cm = mul i32 %i.cl, 16777619                 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !38

_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, %.lr.ph89.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph89.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ]
  %.09.i.i.i87.epil.init = phi i32 [ -2128831035, %.lr.ph89.preheader ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph89.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph89.epil ] ; 2 uses
  %.09.i.i.i87.epil = phi i32 [ %.09.i.i.i87.epil.init, %.lr.ph89.epil.preheader ], [ %i.cr, %.lr.ph89.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph89.epil.preheader ], [ %epil.iter.next, %.lr.ph89.epil ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.epil
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !68, !noalias !8287
  %i.cp = zext i8 %i.co to i32
  %i.cq = xor i32 %.09.i.i.i87.epil, %i.cp
  %i.cr = mul i32 %i.cq, 16777619                 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.epil, !llvm.loop !8278

_ZN8facebook5velox6StatusD2Ev.exit37:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, %.lr.ph89.epil, %.noexc26
  %.09.i.i.i.lcssa = phi i32 [ -2128831035, %.noexc26 ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ], [ %i.cr, %.lr.ph89.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8286
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.091
  store i32 %.09.i.i.i.lcssa, ptr %i.cs, align 4, !tbaa !79
  %i.ct = add nuw i64 %.091, 1                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.ag
  br i1 %i.cu, label %bb.c, label %.loopexit, !llvm.loop !8279

bb.g:                                             ; preds = %.lr.ph86, %_ZN8facebook5velox6StatusD2Ev.exit64
  %.01585 = phi i64 [ %i.j, %.lr.ph86 ], [ %i.er, %_ZN8facebook5velox6StatusD2Ev.exit64 ] ; 3 uses
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.09.i28.epil = phi i64 [ %.09.i28.epil.init, %.lr.ph.epil.preheader ], [ %i.by, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !68
  %i.bw = zext i8 %i.bv to i64
  %i.bx = xor i64 %.09.i28.epil, %i.bw
  %i.by = mul i64 %i.bx, 1099511628211            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit19, label %.lr.ph.epil, !llvm.loop !8354

_ZN8facebook5velox6StatusD2Ev.exit19:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit
  %.09.i.lcssa = phi i64 [ -3750763034362895579, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit ], [ %i.bt, %_ZN8facebook5velox6StatusD2Ev.exit19.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8356
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv32
  store i64 %.09.i.lcssa, ptr %i.bz, align 8, !tbaa !138
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next33 to i32
  %exitcond35.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond35.not, label %.loopexit, label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit, !llvm.loop !8355

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !394   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !467
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !468
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1474
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ca, ptr %i.ch, align 8, !tbaa !1475
  store i8 1, ptr %3, align 8, !tbaa !1477
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ca, ptr %i.ci, align 8, !tbaa !1478
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.cc, i32 noundef %i.ce, ptr noundef nonnull byval(%class.anon.3154) align 8 %2, ptr noundef nonnull byval(%class.anon.3155) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_20ConstantVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.3154) align 8 %2, ptr noundef byval(%class.anon.3155) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1474, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1475
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ae = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1466 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1469, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1470, !nonnull !91, !align !175
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1472, !nonnull !91, !align !175
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !365
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.al, i64 %i.ae
  br label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i

_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i, %.preheader.i
  %.035.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bv, %_ZN8facebook5velox6StatusD2Ev.exit24.i ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !8368
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ag, align 8, !noalias !8368 ; 5 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !noalias !8368 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !8368
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ac, align 8, !noalias !8368
  %i.an = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ao = icmp ult i32 %i.an, 13
  %i.ap = select i1 %i.ao, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not36.i = icmp eq i32 %i.an, 0
  br i1 %.not36.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.aq = add nsw i64 %wide.trip.count.i, -1
  %xtraiter118 = and i64 %.sroa.0.0.copyload.i.i, 3 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 3
  br i1 %i.ar, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter123 = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i33.i = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i.new ], [ %i.bo, %.lr.ph.i ]
  %niter124 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter124.next.3, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !68
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %.09.i33.i, %i.au
  %i.aw = mul i64 %i.av, 1099511628211
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !68
  %i.ba = zext i8 %i.az to i64
  %i.bb = xor i64 %i.aw, %i.ba
  %i.bc = mul i64 %i.bb, 1099511628211
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !68
  %i.bg = zext i8 %i.bf to i64
  %i.bh = xor i64 %i.bc, %i.bg
  %i.bi = mul i64 %i.bh, 1099511628211
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !68
  %i.bm = zext i8 %i.bl to i64
  %i.bn = xor i64 %i.bi, %i.bm
  %i.bo = mul i64 %i.bn, 1099511628211            ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter124.next.3 = add i64 %niter124, 4         ; 2 uses
  %niter124.ncmp.3 = icmp eq i64 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod120.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ]
  %.09.i33.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i ], [ %i.bo, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter118, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i33.i.epil = phi i64 [ %.09.i33.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bt, %.lr.ph.i.epil ]
  %epil.iter119 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter119.next, %.lr.ph.i.epil ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv.i.epil
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !68
  %i.br = zext i8 %i.bq to i64
  %i.bs = xor i64 %.09.i33.i.epil, %i.br
  %i.bt = mul i64 %i.bs, 1099511628211            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter119.next = add i64 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i64 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i, label %.lr.ph.i.epil, !llvm.loop !8359

_ZN8facebook5velox6StatusD2Ev.exit24.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i
  %.09.i.lcssa.i = phi i64 [ -3750763034362895579, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i ], [ %i.bo, %_ZN8facebook5velox6StatusD2Ev.exit24.i.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !8368
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.am
  store i64 %.09.i.lcssa.i, ptr %gep.i, align 8, !tbaa !138
  %i.bu = add nuw i64 %.035.i, 9223372036854775807
  %i.bv = and i64 %i.bu, %.035.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bv, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i, !llvm.loop !8360

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = sdiv i32 %0, 64                         ; 2 uses
  %i.bx = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.by
  %i.bz = xor i64 %notmask.i.i35, -1
  %i.ca = sub nsw i32 64, %i.bx
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.bz, %i.cb
  %i.cd = load i8, ptr %2, align 8, !tbaa !1474, !range !90, !noundef !91
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1475
  %i.cg = sext i32 %i.bw to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !138
  %i.cj = xor i8 %i.cd, 1
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = xor i64 %i.ci, %i.cl
  %i.cn = and i64 %i.cm, %i.cc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = shl nsw i32 %i.bw, 6
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cs = sext i32 %i.cp to i64
  %.pre.i38 = load ptr, ptr %i.co, align 8, !tbaa !1466 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1469, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1470, !nonnull !91, !align !175
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1472, !nonnull !91, !align !175
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !365
  %invariant.gep.i40 = getelementptr [8 x i8], ptr %i.cz, i64 %i.cs
  br label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41

_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53, %.preheader.i37
  %.035.i42 = phi i64 [ %i.cn, %.preheader.i37 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit24.i53 ] ; 3 uses
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i42, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !8369
  %.sroa.0.0.copyload.i.i43 = load i64, ptr %i.cu, align 8, !noalias !8369 ; 5 uses
  %.sroa.2.0.copyload.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i39, align 8, !tbaa !68, !noalias !8369 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i43, ptr %5, align 8, !noalias !8369
  store ptr %.sroa.2.0.copyload.i.i44, ptr %i.cq, align 8, !noalias !8369
  %i.db = trunc i64 %.sroa.0.0.copyload.i.i43 to i32 ; 2 uses
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = select i1 %i.dc, ptr %i.cr, ptr %.sroa.2.0.copyload.i.i44 ; 5 uses
  %.not36.i45 = icmp eq i32 %i.db, 0
  br i1 %.not36.i45, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41
  %wide.trip.count.i47 = and i64 %.sroa.0.0.copyload.i.i43, 4294967295
  %i.de = add nsw i64 %wide.trip.count.i47, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i43, 3 ; 3 uses
  %i.df = icmp ult i64 %i.de, 3
  br i1 %i.df, label %.lr.ph.i48.epil.preheader, label %.lr.ph.preheader.i46.new

.lr.ph.preheader.i46.new:                         ; preds = %.lr.ph.preheader.i46
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i43, 4294967292
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i46.new
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %indvars.iv.next.i51.3, %.lr.ph.i48 ] ; 5 uses
  %.09.i33.i50 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i46.new ], [ %i.ec, %.lr.ph.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %niter.next.3, %.lr.ph.i48 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !68
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %.09.i33.i50, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !68
  %i.do = zext i8 %i.dn to i64
  %i.dp = xor i64 %i.dk, %i.do
  %i.dq = mul i64 %i.dp, 1099511628211
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !68
  %i.du = zext i8 %i.dt to i64
  %i.dv = xor i64 %i.dq, %i.du
  %i.dw = mul i64 %i.dv, 1099511628211
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !68
  %i.ea = zext i8 %i.dz to i64
  %i.eb = xor i64 %i.dw, %i.ea
  %i.ec = mul i64 %i.eb, 1099511628211            ; 3 uses
  %indvars.iv.next.i51.3 = add nuw nsw i64 %indvars.iv.i49, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, label %.lr.ph.i48, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa: ; preds = %.lr.ph.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.i48.epil.preheader

.lr.ph.i48.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, %.lr.ph.preheader.i46
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i51.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ]
  %.09.i33.i50.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i46 ], [ %i.ec, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i48.epil

.lr.ph.i48.epil:                                  ; preds = %.lr.ph.i48.epil, %.lr.ph.i48.epil.preheader
  %indvars.iv.i49.epil = phi i64 [ %indvars.iv.i49.epil.init, %.lr.ph.i48.epil.preheader ], [ %indvars.iv.next.i51.epil, %.lr.ph.i48.epil ] ; 2 uses
  %.09.i33.i50.epil = phi i64 [ %.09.i33.i50.epil.init, %.lr.ph.i48.epil.preheader ], [ %i.eh, %.lr.ph.i48.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i48.epil.preheader ], [ %epil.iter.next, %.lr.ph.i48.epil ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i49.epil
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !68
  %i.ef = zext i8 %i.ee to i64
  %i.eg = xor i64 %.09.i33.i50.epil, %i.ef
  %i.eh = mul i64 %i.eg, 1099511628211            ; 2 uses
  %indvars.iv.next.i51.epil = add nuw nsw i64 %indvars.iv.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i53, label %.lr.ph.i48.epil, !llvm.loop !8363

_ZN8facebook5velox6StatusD2Ev.exit24.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa, %.lr.ph.i48.epil, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41
  %.09.i.lcssa.i54 = phi i64 [ -3750763034362895579, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41 ], [ %i.ec, %_ZN8facebook5velox6StatusD2Ev.exit24.i53.loopexit.unr-lcssa ], [ %i.eh, %.lr.ph.i48.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !8369
  %gep.i55 = getelementptr [8 x i8], ptr %invariant.gep.i40, i64 %i.da
  store i64 %.09.i.lcssa.i54, ptr %gep.i55, align 8, !tbaa !138
  %i.ei = add i64 %.035.i42, -1
  %i.ej = and i64 %i.ei, %.035.i42                ; 2 uses
  %.not10.i56 = icmp eq i64 %i.ej, 0
  br i1 %.not10.i56, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i41, !llvm.loop !8360

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i53, %bb.e, %bb.d
  %i.ek = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3384 = icmp sgt i32 %i.ek, %i.d
  br i1 %.not3384, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57, %.lr.ph
  %i.el = phi i32 [ %i.en, %.lr.ph ], [ %i.ek, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57 ] ; 2 uses
  %.085 = phi i32 [ %i.el, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit57 ]
  %i.em = sdiv i32 %.085, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.em)
  %i.en = add nsw i32 %i.el, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.en, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !8364

bb.f:                                             ; preds = %._crit_edge
  %i.eo = ashr i32 %1, 6
  %i.ep = and i32 %1, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask.i58 = shl nsw i64 -1, %i.eq
  %i.er = xor i64 %notmask.i58, -1
  %i.es = load i8, ptr %2, align 8, !tbaa !1474, !range !90, !noundef !91
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1475
  %i.ev = sext i32 %i.eo to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !138
  %i.ey = xor i8 %i.es, 1
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = and i64 %i.fb, %i.er                    ; 2 uses
  %.not.i59 = icmp eq i64 %i.fc, 0
  br i1 %.not.i59, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i60

.preheader.i60:                                   ; preds = %bb.f
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fg = sext i32 %i.d to i64
  %.pre.i61 = load ptr, ptr %i.fd, align 8, !tbaa !1466 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1469, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre.i61, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1470, !nonnull !91, !align !175
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1472, !nonnull !91, !align !175
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !365
  %invariant.gep.i63 = getelementptr [8 x i8], ptr %i.fn, i64 %i.fg
  br label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64

_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76, %.preheader.i60
  %.035.i65 = phi i64 [ %i.fc, %.preheader.i60 ], [ %i.gx, %_ZN8facebook5velox6StatusD2Ev.exit24.i76 ] ; 3 uses
  %i.fo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.035.i65, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !8370
  %.sroa.0.0.copyload.i.i66 = load i64, ptr %i.fi, align 8, !noalias !8370 ; 5 uses
  %.sroa.2.0.copyload.i.i67 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i62, align 8, !tbaa !68, !noalias !8370 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i66, ptr %4, align 8, !noalias !8370
  store ptr %.sroa.2.0.copyload.i.i67, ptr %i.fe, align 8, !noalias !8370
  %i.fp = trunc i64 %.sroa.0.0.copyload.i.i66 to i32 ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 13
  %i.fr = select i1 %i.fq, ptr %i.ff, ptr %.sroa.2.0.copyload.i.i67 ; 5 uses
  %.not36.i68 = icmp eq i32 %i.fp, 0
  br i1 %.not36.i68, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.preheader.i69

.lr.ph.preheader.i69:                             ; preds = %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64
  %wide.trip.count.i70 = and i64 %.sroa.0.0.copyload.i.i66, 4294967295
  %i.fs = add nsw i64 %wide.trip.count.i70, -1
  %xtraiter111 = and i64 %.sroa.0.0.copyload.i.i66, 3 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 3
  br i1 %i.ft, label %.lr.ph.i71.epil.preheader, label %.lr.ph.preheader.i69.new

.lr.ph.preheader.i69.new:                         ; preds = %.lr.ph.preheader.i69
  %unroll_iter116 = and i64 %.sroa.0.0.copyload.i.i66, 4294967292
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71, %.lr.ph.preheader.i69.new
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.preheader.i69.new ], [ %indvars.iv.next.i74.3, %.lr.ph.i71 ] ; 5 uses
  %.09.i33.i73 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i69.new ], [ %i.gq, %.lr.ph.i71 ]
  %niter117 = phi i64 [ 0, %.lr.ph.preheader.i69.new ], [ %niter117.next.3, %.lr.ph.i71 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !68
  %i.fw = zext i8 %i.fv to i64
  %i.fx = xor i64 %.09.i33.i73, %i.fw
  %i.fy = mul i64 %i.fx, 1099511628211
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !68
  %i.gc = zext i8 %i.gb to i64
  %i.gd = xor i64 %i.fy, %i.gc
  %i.ge = mul i64 %i.gd, 1099511628211
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !68
  %i.gi = zext i8 %i.gh to i64
  %i.gj = xor i64 %i.ge, %i.gi
  %i.gk = mul i64 %i.gj, 1099511628211
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 3
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !68
  %i.go = zext i8 %i.gn to i64
  %i.gp = xor i64 %i.gk, %i.go
  %i.gq = mul i64 %i.gp, 1099511628211            ; 3 uses
  %indvars.iv.next.i74.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter117.next.3 = add i64 %niter117, 4         ; 2 uses
  %niter117.ncmp.3 = icmp eq i64 %niter117.next.3, %unroll_iter116
  br i1 %niter117.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, label %.lr.ph.i71, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa: ; preds = %.lr.ph.i71
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.i71.epil.preheader

.lr.ph.i71.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, %.lr.ph.preheader.i69
  %indvars.iv.i72.epil.init = phi i64 [ 0, %.lr.ph.preheader.i69 ], [ %indvars.iv.next.i74.3, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ]
  %.09.i33.i73.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i69 ], [ %i.gq, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i71.epil

.lr.ph.i71.epil:                                  ; preds = %.lr.ph.i71.epil, %.lr.ph.i71.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.i72.epil.init, %.lr.ph.i71.epil.preheader ], [ %indvars.iv.next.i74.epil, %.lr.ph.i71.epil ] ; 2 uses
  %.09.i33.i73.epil = phi i64 [ %.09.i33.i73.epil.init, %.lr.ph.i71.epil.preheader ], [ %i.gv, %.lr.ph.i71.epil ]
  %epil.iter112 = phi i64 [ 0, %.lr.ph.i71.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i71.epil ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i72.epil
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !68
  %i.gt = zext i8 %i.gs to i64
  %i.gu = xor i64 %.09.i33.i73.epil, %i.gt
  %i.gv = mul i64 %i.gu, 1099511628211            ; 2 uses
  %indvars.iv.next.i74.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit24.i76, label %.lr.ph.i71.epil, !llvm.loop !8367

_ZN8facebook5velox6StatusD2Ev.exit24.i76:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa, %.lr.ph.i71.epil, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64
  %.09.i.lcssa.i77 = phi i64 [ -3750763034362895579, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64 ], [ %i.gq, %_ZN8facebook5velox6StatusD2Ev.exit24.i76.loopexit.unr-lcssa ], [ %i.gv, %.lr.ph.i71.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8370
  %gep.i78 = getelementptr [8 x i8], ptr %invariant.gep.i63, i64 %i.fo
  store i64 %.09.i.lcssa.i77, ptr %gep.i78, align 8, !tbaa !138
  %i.gw = add nuw i64 %.035.i65, 9223372036854775807
  %i.gx = and i64 %i.gw, %.035.i65                ; 2 uses
  %.not10.i79 = icmp eq i64 %i.gx, 0
  br i1 %.not10.i79, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.i64, !llvm.loop !8360

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76, %_ZN8facebook5velox6StatusD2Ev.exit24.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_20ConstantVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1477, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1478
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = sext i32 %i.l to i64
  %.pre100 = load ptr, ptr %i.k, align 8, !tbaa !1466 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre100, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1469, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.pre100, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1470, !nonnull !91, !align !175
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1472, !nonnull !91, !align !175
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !365
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.o
  br label %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit

bb.b:                                             ; preds = %bb.a
  %i.w = shl i32 %1, 6                            ; 3 uses
  %i.x = add i32 %i.w, 64
  %i.y = sext i32 %i.x to i64
  %.not89 = icmp eq i32 %i.w, -64
  br i1 %.not89, label %.loopexit, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %bb.b
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !1466 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1469, !nonnull !91, !align !175 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1470, !nonnull !91, !align !175
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1472, !nonnull !91, !align !175
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !365
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit38
  %.088 = phi i64 [ %i.z, %.noexc28.lr.ph ], [ %i.bs, %_ZN8facebook5velox6StatusD2Ev.exit38 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8381
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !noalias !8381 ; 5 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68, !noalias !8381 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !noalias !8381
  store ptr %.sroa.2.0.copyload.i, ptr %i.ab, align 8, !noalias !8381
  %i.ak = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 13
  %i.am = select i1 %i.al, ptr %i.ac, ptr %.sroa.2.0.copyload.i ; 5 uses
  %.not90 = icmp eq i32 %i.ak, 0
  br i1 %.not90, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %.noexc28
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.an = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 3    ; 3 uses
  %i.ao = icmp ult i64 %i.an, 3
  br i1 %i.ao, label %.lr.ph86.epil.preheader, label %.lr.ph86.preheader.new

.lr.ph86.preheader.new:                           ; preds = %.lr.ph86.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i, 4294967292
  br label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86, %.lr.ph86.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %indvars.iv.next.3, %.lr.ph86 ] ; 5 uses
  %.09.i.i84 = phi i64 [ -3750763034362895579, %.lr.ph86.preheader.new ], [ %i.bl, %.lr.ph86 ]
  %niter = phi i64 [ 0, %.lr.ph86.preheader.new ], [ %niter.next.3, %.lr.ph86 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !68, !noalias !8382
  %i.ar = zext i8 %i.aq to i64
  %i.as = xor i64 %.09.i.i84, %i.ar
  %i.at = mul i64 %i.as, 1099511628211
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !68, !noalias !8382
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.at, %i.ax
  %i.az = mul i64 %i.ay, 1099511628211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !68, !noalias !8382
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 %i.az, %i.bd
  %i.bf = mul i64 %i.be, 1099511628211
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !68, !noalias !8382
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %i.bf, %i.bj
  %i.bl = mul i64 %i.bk, 1099511628211            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, label %.lr.ph86, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa: ; preds = %.lr.ph86
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.epil.preheader

.lr.ph86.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, %.lr.ph86.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph86.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ]
  %.09.i.i84.epil.init = phi i64 [ -3750763034362895579, %.lr.ph86.preheader ], [ %i.bl, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph86.epil

.lr.ph86.epil:                                    ; preds = %.lr.ph86.epil, %.lr.ph86.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph86.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph86.epil ] ; 2 uses
  %.09.i.i84.epil = phi i64 [ %.09.i.i84.epil.init, %.lr.ph86.epil.preheader ], [ %i.bq, %.lr.ph86.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph86.epil.preheader ], [ %epil.iter.next, %.lr.ph86.epil ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.epil
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68, !noalias !8382
  %i.bo = zext i8 %i.bn to i64
  %i.bp = xor i64 %.09.i.i84.epil, %i.bo
  %i.bq = mul i64 %i.bp, 1099511628211            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit38, label %.lr.ph86.epil, !llvm.loop !8375

_ZN8facebook5velox6StatusD2Ev.exit38:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa, %.lr.ph86.epil, %.noexc28
  %.09.i.i.lcssa = phi i64 [ -3750763034362895579, %.noexc28 ], [ %i.bl, %_ZN8facebook5velox6StatusD2Ev.exit38.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph86.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8381
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.088
  store i64 %.09.i.i.lcssa, ptr %i.br, align 8, !tbaa !138
  %i.bs = add nuw i64 %.088, 1                    ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.y
  br i1 %i.bt, label %.noexc28, label %.loopexit, !llvm.loop !8376

_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit: ; preds = %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit62
  %.01583 = phi i64 [ %i.j, %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit.lr.ph ], [ %i.dd, %_ZN8facebook5velox6StatusD2Ev.exit62 ] ; 3 uses
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01583, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !8383
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.q, align 8, !noalias !8383 ; 5 uses
  %.sroa.2.0.copyload.i48 = load ptr, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !68, !noalias !8383 ; 2 uses
  store i64 %.sroa.0.0.copyload.i46, ptr %3, align 8, !noalias !8383
  store ptr %.sroa.2.0.copyload.i48, ptr %i.m, align 8, !noalias !8383
  %i.bv = trunc i64 %.sroa.0.0.copyload.i46 to i32 ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 13
  %i.bx = select i1 %i.bw, ptr %i.n, ptr %.sroa.2.0.copyload.i48 ; 5 uses
  %.not91 = icmp eq i32 %i.bv, 0
  br i1 %.not91, label %_ZN8facebook5velox6StatusD2Ev.exit62, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN8facebook5velox9functions16Fnv1a_64FunctionINS0_4exec10VectorExecEE4callERlRKNS0_10StringViewE.exit
  %wide.trip.count98 = and i64 %.sroa.0.0.copyload.i46, 4294967295
  %i.by = add nsw i64 %wide.trip.count98, -1
  %xtraiter113 = and i64 %.sroa.0.0.copyload.i46, 3 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 3
  br i1 %i.bz, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter118 = and i64 %.sroa.0.0.copyload.i46, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv95 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next96.3, %.lr.ph ] ; 5 uses
  %.09.i80 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ]
  %niter119 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter119.next.3, %.lr.ph ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !68
  %i.cc = zext i8 %i.cb to i64
  %i.cd = xor i64 %.09.i80, %i.cc
  %i.ce = mul i64 %i.cd, 1099511628211
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !68
  %i.ci = zext i8 %i.ch to i64
  %i.cj = xor i64 %i.ce, %i.ci
  %i.ck = mul i64 %i.cj, 1099511628211
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv95
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
  %.09.i.i23.epil = phi i64 [ %.09.i.i23.epil.init, %.lr.ph.epil.preheader ], [ %i.ca, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.epil
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !68, !noalias !8391
  %i.by = zext i8 %i.bx to i64
  %i.bz = xor i64 %.09.i.i23.epil, %i.by
  %i.ca = mul i64 %i.bz, 1099511628211            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit14, label %.lr.ph.epil, !llvm.loop !8388

_ZN8facebook5velox6StatusD2Ev.exit14:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14.loopexit.unr-lcssa, %.lr.ph.epil, %.noexc5
  %.09.i.i.lcssa = phi i64 [ -3750763034362895579, %.noexc5 ], [ %i.bv, %_ZN8facebook5velox6StatusD2Ev.exit14.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8390
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv27
  store i64 %.09.i.i.lcssa, ptr %i.cb, align 8, !tbaa !138
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next28 to i32
  %exitcond30.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond30.not, label %.loopexit, label %.noexc5, !llvm.loop !8389

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !394   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !467
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !468
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1486
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !1487
  store i8 1, ptr %3, align 8, !tbaa !1489
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cc, ptr %i.ck, align 8, !tbaa !1490
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.ce, i32 noundef %i.cg, ptr noundef nonnull byval(%class.anon.3180) align 8 %2, ptr noundef nonnull byval(%class.anon.3181) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit14, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.3180) align 8 %2, ptr noundef byval(%class.anon.3181) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.d

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
  %i.q = load i8, ptr %2, align 8, !tbaa !1486, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1487
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = sext i32 %i.d to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1479 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1481, !nonnull !91, !align !175
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !379, !noalias !8409
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1482, !nonnull !91, !align !175
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1484, !nonnull !91, !align !175
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !365
  br label %.noexc12.i

.noexc12.i:                                       ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i, %.preheader.i
  %.031.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bz, %_ZN8facebook5velox6StatusD2Ev.exit20.i ] ; 3 uses
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !8409
  %i.ao = or disjoint i64 %i.an, %i.ac            ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8, !noalias !8409 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68, !noalias !8409 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %6, align 8, !noalias !8409
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ad, align 8, !noalias !8409
  %i.aq = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 13
  %i.as = select i1 %i.ar, ptr %i.ae, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not32.i = icmp eq i32 %i.aq, 0
  br i1 %.not32.i, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc12.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.at = add nsw i64 %wide.trip.count.i, -1
  %xtraiter114 = and i64 %.sroa.0.0.copyload.i.i, 3 ; 3 uses
  %i.au = icmp ult i64 %i.at, 3
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter119 = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i.i29.i = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i.new ], [ %i.br, %.lr.ph.i ]
  %niter120 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter120.next.3, %.lr.ph.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !68, !noalias !8410
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %.09.i.i29.i, %i.ax
  %i.az = mul i64 %i.ay, 1099511628211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !68, !noalias !8410
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 %i.az, %i.bd
  %i.bf = mul i64 %i.be, 1099511628211
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !68, !noalias !8410
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %i.bf, %i.bj
  %i.bl = mul i64 %i.bk, 1099511628211
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !68, !noalias !8410
  %i.bp = zext i8 %i.bo to i64
  %i.bq = xor i64 %i.bl, %i.bp
  %i.br = mul i64 %i.bq, 1099511628211            ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter120.next.3 = add i64 %niter120, 4         ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ]
  %.09.i.i29.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i ], [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ]
  %lcmp.mod118 = icmp ne i64 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i.i29.i.epil = phi i64 [ %.09.i.i29.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bw, %.lr.ph.i.epil ]
  %epil.iter115 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter115.next, %.lr.ph.i.epil ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.i.epil
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !68, !noalias !8410
  %i.bu = zext i8 %i.bt to i64
  %i.bv = xor i64 %.09.i.i29.i.epil, %i.bu
  %i.bw = mul i64 %i.bv, 1099511628211            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i, label %.lr.ph.i.epil, !llvm.loop !8396

_ZN8facebook5velox6StatusD2Ev.exit20.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.noexc12.i
  %.09.i.i.lcssa.i = phi i64 [ -3750763034362895579, %.noexc12.i ], [ %i.br, %_ZN8facebook5velox6StatusD2Ev.exit20.i.loopexit.unr-lcssa ], [ %i.bw, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !8409
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  store i64 %.09.i.i.lcssa.i, ptr %i.bx, align 8, !tbaa !138
  %i.by = add nuw i64 %.031.i, 9223372036854775807
  %i.bz = and i64 %i.by, %.031.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bz, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.noexc12.i, !llvm.loop !8397

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = sdiv i32 %0, 64                         ; 2 uses
  %i.cb = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.cc
  %i.cd = xor i64 %notmask.i.i35, -1
  %i.ce = sub nsw i32 64, %i.cb
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl i64 %i.cd, %i.cf
  %i.ch = load i8, ptr %2, align 8, !tbaa !1486, !range !90, !noundef !91
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1487
  %i.ck = sext i32 %i.ca to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !138
  %i.cn = xor i8 %i.ch, 1
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = sub nsw i64 0, %i.co
  %i.cq = xor i64 %i.cm, %i.cp
  %i.cr = and i64 %i.cq, %i.cg                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cr, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = shl nsw i32 %i.ca, 6
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre.i38 = load ptr, ptr %i.cs, align 8, !tbaa !1479 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1481, !nonnull !91, !align !175
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !379, !noalias !8411
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1482, !nonnull !91, !align !175
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1484, !nonnull !91, !align !175
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !365
  br label %.noexc12.i39

.noexc12.i39:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52, %.preheader.i37
  %.031.i40 = phi i64 [ %i.cr, %.preheader.i37 ], [ %i.er, %_ZN8facebook5velox6StatusD2Ev.exit20.i52 ] ; 3 uses
  %i.df = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i40, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !8411
  %i.dg = or disjoint i64 %i.df, %i.cu            ; 2 uses
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %i.dh, align 8, !noalias !8411 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.2.0.copyload.i.i43 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i42, align 8, !tbaa !68, !noalias !8411 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i41, ptr %5, align 8, !noalias !8411
  store ptr %.sroa.2.0.copyload.i.i43, ptr %i.cv, align 8, !noalias !8411
  %i.di = trunc i64 %.sroa.0.0.copyload.i.i41 to i32 ; 2 uses
  %i.dj = icmp ult i32 %i.di, 13
  %i.dk = select i1 %i.dj, ptr %i.cw, ptr %.sroa.2.0.copyload.i.i43 ; 5 uses
  %.not32.i44 = icmp eq i32 %i.di, 0
  br i1 %.not32.i44, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.preheader.i45

.lr.ph.preheader.i45:                             ; preds = %.noexc12.i39
  %wide.trip.count.i46 = and i64 %.sroa.0.0.copyload.i.i41, 4294967295
  %i.dl = add nsw i64 %wide.trip.count.i46, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i41, 3 ; 3 uses
  %i.dm = icmp ult i64 %i.dl, 3
  br i1 %i.dm, label %.lr.ph.i47.epil.preheader, label %.lr.ph.preheader.i45.new

.lr.ph.preheader.i45.new:                         ; preds = %.lr.ph.preheader.i45
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i41, 4294967292
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47, %.lr.ph.preheader.i45.new
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.preheader.i45.new ], [ %indvars.iv.next.i50.3, %.lr.ph.i47 ] ; 5 uses
  %.09.i.i29.i49 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i45.new ], [ %i.ej, %.lr.ph.i47 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i45.new ], [ %niter.next.3, %.lr.ph.i47 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !68, !noalias !8412
  %i.dp = zext i8 %i.do to i64
  %i.dq = xor i64 %.09.i.i29.i49, %i.dp
  %i.dr = mul i64 %i.dq, 1099511628211
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !68, !noalias !8412
  %i.dv = zext i8 %i.du to i64
  %i.dw = xor i64 %i.dr, %i.dv
  %i.dx = mul i64 %i.dw, 1099511628211
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !68, !noalias !8412
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dx, %i.eb
  %i.ed = mul i64 %i.ec, 1099511628211
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !68, !noalias !8412
  %i.eh = zext i8 %i.eg to i64
  %i.ei = xor i64 %i.ed, %i.eh
  %i.ej = mul i64 %i.ei, 1099511628211            ; 3 uses
  %indvars.iv.next.i50.3 = add nuw nsw i64 %indvars.iv.i48, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, label %.lr.ph.i47, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa: ; preds = %.lr.ph.i47
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.i47.epil.preheader

.lr.ph.i47.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, %.lr.ph.preheader.i45
  %indvars.iv.i48.epil.init = phi i64 [ 0, %.lr.ph.preheader.i45 ], [ %indvars.iv.next.i50.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ]
  %.09.i.i29.i49.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i45 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.i47.epil

.lr.ph.i47.epil:                                  ; preds = %.lr.ph.i47.epil, %.lr.ph.i47.epil.preheader
  %indvars.iv.i48.epil = phi i64 [ %indvars.iv.i48.epil.init, %.lr.ph.i47.epil.preheader ], [ %indvars.iv.next.i50.epil, %.lr.ph.i47.epil ] ; 2 uses
  %.09.i.i29.i49.epil = phi i64 [ %.09.i.i29.i49.epil.init, %.lr.ph.i47.epil.preheader ], [ %i.eo, %.lr.ph.i47.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i47.epil.preheader ], [ %epil.iter.next, %.lr.ph.i47.epil ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i48.epil
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !68, !noalias !8412
  %i.em = zext i8 %i.el to i64
  %i.en = xor i64 %.09.i.i29.i49.epil, %i.em
  %i.eo = mul i64 %i.en, 1099511628211            ; 2 uses
  %indvars.iv.next.i50.epil = add nuw nsw i64 %indvars.iv.i48.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i52, label %.lr.ph.i47.epil, !llvm.loop !8402

_ZN8facebook5velox6StatusD2Ev.exit20.i52:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa, %.lr.ph.i47.epil, %.noexc12.i39
  %.09.i.i.lcssa.i53 = phi i64 [ -3750763034362895579, %.noexc12.i39 ], [ %i.ej, %_ZN8facebook5velox6StatusD2Ev.exit20.i52.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph.i47.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !8411
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dg
  store i64 %.09.i.i.lcssa.i53, ptr %i.ep, align 8, !tbaa !138
  %i.eq = add i64 %.031.i40, -1
  %i.er = and i64 %i.eq, %.031.i40                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.er, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, label %.noexc12.i39, !llvm.loop !8397

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i52, %bb.e, %bb.d
  %i.es = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3380 = icmp sgt i32 %i.es, %i.d
  br i1 %.not3380, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.f

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55, %.lr.ph
  %i.et = phi i32 [ %i.ev, %.lr.ph ], [ %i.es, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55 ] ; 2 uses
  %.081 = phi i32 [ %i.et, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit55 ]
  %i.eu = sdiv i32 %.081, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.eu)
  %i.ev = add nsw i32 %i.et, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ev, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !8403

bb.f:                                             ; preds = %._crit_edge
  %i.ew = ashr i32 %1, 6
  %i.ex = and i32 %1, 63
  %i.ey = zext nneg i32 %i.ex to i64
  %notmask.i56 = shl nsw i64 -1, %i.ey
  %i.ez = xor i64 %notmask.i56, -1
  %i.fa = load i8, ptr %2, align 8, !tbaa !1486, !range !90, !noundef !91
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1487
  %i.fd = sext i32 %i.ew to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !138
  %i.fg = xor i8 %i.fa, 1
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = sub nsw i64 0, %i.fh
  %i.fj = xor i64 %i.ff, %i.fi
  %i.fk = and i64 %i.fj, %i.ez                    ; 2 uses
  %.not.i57 = icmp eq i64 %i.fk, 0
  br i1 %.not.i57, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i58

.preheader.i58:                                   ; preds = %bb.f
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = sext i32 %i.d to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre.i59 = load ptr, ptr %i.fl, align 8, !tbaa !1479 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre.i59, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1481, !nonnull !91, !align !175
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !379, !noalias !8413
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre.i59, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1482, !nonnull !91, !align !175
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1484, !nonnull !91, !align !175
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !365
  br label %.noexc12.i60

.noexc12.i60:                                     ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73, %.preheader.i58
  %.031.i61 = phi i64 [ %i.fk, %.preheader.i58 ], [ %i.hj, %_ZN8facebook5velox6StatusD2Ev.exit20.i73 ] ; 3 uses
  %i.fx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.031.i61, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !8413
  %i.fy = or disjoint i64 %i.fx, %i.fm            ; 2 uses
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fr, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.fz, align 8, !noalias !8413 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.2.0.copyload.i.i64 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i63, align 8, !tbaa !68, !noalias !8413 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i62, ptr %4, align 8, !noalias !8413
  store ptr %.sroa.2.0.copyload.i.i64, ptr %i.fn, align 8, !noalias !8413
  %i.ga = trunc i64 %.sroa.0.0.copyload.i.i62 to i32 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 13
  %i.gc = select i1 %i.gb, ptr %i.fo, ptr %.sroa.2.0.copyload.i.i64 ; 5 uses
  %.not32.i65 = icmp eq i32 %i.ga, 0
  br i1 %.not32.i65, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.preheader.i66

.lr.ph.preheader.i66:                             ; preds = %.noexc12.i60
  %wide.trip.count.i67 = and i64 %.sroa.0.0.copyload.i.i62, 4294967295
  %i.gd = add nsw i64 %wide.trip.count.i67, -1
  %xtraiter107 = and i64 %.sroa.0.0.copyload.i.i62, 3 ; 3 uses
  %i.ge = icmp ult i64 %i.gd, 3
  br i1 %i.ge, label %.lr.ph.i68.epil.preheader, label %.lr.ph.preheader.i66.new

.lr.ph.preheader.i66.new:                         ; preds = %.lr.ph.preheader.i66
  %unroll_iter112 = and i64 %.sroa.0.0.copyload.i.i62, 4294967292
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %.lr.ph.preheader.i66.new
  %indvars.iv.i69 = phi i64 [ 0, %.lr.ph.preheader.i66.new ], [ %indvars.iv.next.i71.3, %.lr.ph.i68 ] ; 5 uses
  %.09.i.i29.i70 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i66.new ], [ %i.hb, %.lr.ph.i68 ]
  %niter113 = phi i64 [ 0, %.lr.ph.preheader.i66.new ], [ %niter113.next.3, %.lr.ph.i68 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !68, !noalias !8414
  %i.gh = zext i8 %i.gg to i64
  %i.gi = xor i64 %.09.i.i29.i70, %i.gh
  %i.gj = mul i64 %i.gi, 1099511628211
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !68, !noalias !8414
  %i.gn = zext i8 %i.gm to i64
  %i.go = xor i64 %i.gj, %i.gn
  %i.gp = mul i64 %i.go, 1099511628211
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !68, !noalias !8414
  %i.gt = zext i8 %i.gs to i64
  %i.gu = xor i64 %i.gp, %i.gt
  %i.gv = mul i64 %i.gu, 1099511628211
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 3
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !68, !noalias !8414
  %i.gz = zext i8 %i.gy to i64
  %i.ha = xor i64 %i.gv, %i.gz
  %i.hb = mul i64 %i.ha, 1099511628211            ; 3 uses
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i69, 4 ; 2 uses
  %niter113.next.3 = add i64 %niter113, 4         ; 2 uses
  %niter113.ncmp.3 = icmp eq i64 %niter113.next.3, %unroll_iter112
  br i1 %niter113.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, label %.lr.ph.i68, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa: ; preds = %.lr.ph.i68
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.i68.epil.preheader

.lr.ph.i68.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, %.lr.ph.preheader.i66
  %indvars.iv.i69.epil.init = phi i64 [ 0, %.lr.ph.preheader.i66 ], [ %indvars.iv.next.i71.3, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ]
  %.09.i.i29.i70.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i66 ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i68.epil

.lr.ph.i68.epil:                                  ; preds = %.lr.ph.i68.epil, %.lr.ph.i68.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.i69.epil.init, %.lr.ph.i68.epil.preheader ], [ %indvars.iv.next.i71.epil, %.lr.ph.i68.epil ] ; 2 uses
  %.09.i.i29.i70.epil = phi i64 [ %.09.i.i29.i70.epil.init, %.lr.ph.i68.epil.preheader ], [ %i.hg, %.lr.ph.i68.epil ]
  %epil.iter108 = phi i64 [ 0, %.lr.ph.i68.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i68.epil ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i69.epil
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !68, !noalias !8414
  %i.he = zext i8 %i.hd to i64
  %i.hf = xor i64 %.09.i.i29.i70.epil, %i.he
  %i.hg = mul i64 %i.hf, 1099511628211            ; 2 uses
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter108.next = add i64 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i64 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit20.i73, label %.lr.ph.i68.epil, !llvm.loop !8408

_ZN8facebook5velox6StatusD2Ev.exit20.i73:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa, %.lr.ph.i68.epil, %.noexc12.i60
  %.09.i.i.lcssa.i74 = phi i64 [ -3750763034362895579, %.noexc12.i60 ], [ %i.hb, %_ZN8facebook5velox6StatusD2Ev.exit20.i73.loopexit.unr-lcssa ], [ %i.hg, %.lr.ph.i68.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8413
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fy
  store i64 %.09.i.i.lcssa.i74, ptr %i.hh, align 8, !tbaa !138
  %i.hi = add nuw i64 %.031.i61, 9223372036854775807
  %i.hj = and i64 %i.hi, %.031.i61                ; 2 uses
  %.not10.i75 = icmp eq i64 %i.hj, 0
  br i1 %.not10.i75, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.noexc12.i60, !llvm.loop !8397

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit20.i73, %_ZN8facebook5velox6StatusD2Ev.exit20.i, %bb.f, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1489, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1490
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.noexc18.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.noexc18.lr.ph:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre96 = load ptr, ptr %i.k, align 8, !tbaa !1479 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre96, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1481, !nonnull !91, !align !175
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !379, !noalias !8427
  %i.s = getelementptr inbounds nuw i8, ptr %.pre96, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1482, !nonnull !91, !align !175
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1484, !nonnull !91, !align !175
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !365
  br label %.noexc18

bb.b:                                             ; preds = %bb.a
  %i.x = shl i32 %1, 6                            ; 3 uses
  %i.y = add i32 %i.x, 64
  %i.z = sext i32 %i.y to i64
  %.not85 = icmp eq i32 %i.x, -64
  br i1 %.not85, label %.loopexit, label %.noexc24.lr.ph

.noexc24.lr.ph:                                   ; preds = %bb.b
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !1479 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1481, !nonnull !91, !align !175
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !379, !noalias !8428
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1482, !nonnull !91, !align !175
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1484, !nonnull !91, !align !175
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !365
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc24.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit34
  %.084 = phi i64 [ %i.aa, %.noexc24.lr.ph ], [ %i.bw, %_ZN8facebook5velox6StatusD2Ev.exit34 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8428
  %sext = shl i64 %.084, 32
  %i.am = ashr exact i64 %sext, 28
  %i.an = getelementptr inbounds i8, ptr %i.ag, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !noalias !8428 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68, !noalias !8428 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %2, align 8, !noalias !8428
  store ptr %.sroa.2.0.copyload.i, ptr %i.ac, align 8, !noalias !8428
  %i.ao = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 13
  %i.aq = select i1 %i.ap, ptr %i.ad, ptr %.sroa.2.0.copyload.i ; 5 uses
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.noexc24
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ar = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 3    ; 3 uses
  %i.as = icmp ult i64 %i.ar, 3
  br i1 %i.as, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i, 4294967292
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %indvars.iv.next.3, %.lr.ph82 ] ; 5 uses
  %.09.i.i.i80 = phi i64 [ -3750763034362895579, %.lr.ph82.preheader.new ], [ %i.bp, %.lr.ph82 ]
  %niter = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter.next.3, %.lr.ph82 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !68, !noalias !8429
  %i.av = zext i8 %i.au to i64
  %i.aw = xor i64 %.09.i.i.i80, %i.av
  %i.ax = mul i64 %i.aw, 1099511628211
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !68, !noalias !8429
  %i.bb = zext i8 %i.ba to i64
  %i.bc = xor i64 %i.ax, %i.bb
  %i.bd = mul i64 %i.bc, 1099511628211
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !68, !noalias !8429
  %i.bh = zext i8 %i.bg to i64
  %i.bi = xor i64 %i.bd, %i.bh
  %i.bj = mul i64 %i.bi, 1099511628211
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !68, !noalias !8429
  %i.bn = zext i8 %i.bm to i64
  %i.bo = xor i64 %i.bj, %i.bn
  %i.bp = mul i64 %i.bo, 1099511628211            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, label %.lr.ph82, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa: ; preds = %.lr.ph82
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, %.lr.ph82.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ]
  %.09.i.i.i80.epil.init = phi i64 [ -3750763034362895579, %.lr.ph82.preheader ], [ %i.bp, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph82.epil

.lr.ph82.epil:                                    ; preds = %.lr.ph82.epil, %.lr.ph82.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph82.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph82.epil ] ; 2 uses
  %.09.i.i.i80.epil = phi i64 [ %.09.i.i.i80.epil.init, %.lr.ph82.epil.preheader ], [ %i.bu, %.lr.ph82.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph82.epil.preheader ], [ %epil.iter.next, %.lr.ph82.epil ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.epil
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !68, !noalias !8429
  %i.bs = zext i8 %i.br to i64
  %i.bt = xor i64 %.09.i.i.i80.epil, %i.bs
  %i.bu = mul i64 %i.bt, 1099511628211            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit34, label %.lr.ph82.epil, !llvm.loop !8421

_ZN8facebook5velox6StatusD2Ev.exit34:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa, %.lr.ph82.epil, %.noexc24
  %.09.i.i.i.lcssa = phi i64 [ -3750763034362895579, %.noexc24 ], [ %i.bp, %_ZN8facebook5velox6StatusD2Ev.exit34.loopexit.unr-lcssa ], [ %i.bu, %.lr.ph82.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8428
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.084
  store i64 %.09.i.i.i.lcssa, ptr %i.bv, align 8, !tbaa !138
  %i.bw = add nuw i64 %.084, 1                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.z
  br i1 %i.bx, label %.noexc24, label %.loopexit, !llvm.loop !8422

.noexc18:                                         ; preds = %.noexc18.lr.ph, %_ZN8facebook5velox6StatusD2Ev.exit58
  %.01579 = phi i64 [ %i.j, %.noexc18.lr.ph ], [ %i.dk, %_ZN8facebook5velox6StatusD2Ev.exit58 ] ; 3 uses
  %i.by = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01579, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !8427
  %i.bz = or disjoint i64 %i.by, %i.m             ; 2 uses
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i42 = load i64, ptr %i.ca, align 8, !noalias !8427 ; 5 uses
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2.0.copyload.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !68, !noalias !8427 ; 2 uses
  store i64 %.sroa.0.0.copyload.i42, ptr %3, align 8, !noalias !8427
  store ptr %.sroa.2.0.copyload.i44, ptr %i.n, align 8, !noalias !8427
  %i.cb = trunc i64 %.sroa.0.0.copyload.i42 to i32 ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 13
  %i.cd = select i1 %i.cc, ptr %i.o, ptr %.sroa.2.0.copyload.i44 ; 5 uses
  %.not87 = icmp eq i32 %i.cb, 0
  br i1 %.not87, label %_ZN8facebook5velox6StatusD2Ev.exit58, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc18
  %wide.trip.count94 = and i64 %.sroa.0.0.copyload.i42, 4294967295
  %i.ce = add nsw i64 %wide.trip.count94, -1
  %xtraiter110 = and i64 %.sroa.0.0.copyload.i42, 3 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter115 = and i64 %.sroa.0.0.copyload.i42, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next92.3, %.lr.ph ] ; 5 uses
  %.09.i.i76 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.new ], [ %i.dc, %.lr.ph ]
  %niter116 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter116.next.3, %.lr.ph ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv91
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !68, !noalias !8430
  %i.ci = zext i8 %i.ch to i64
  %i.cj = xor i64 %.09.i.i76, %i.ci
  %i.ck = mul i64 %i.cj, 1099511628211
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv91
end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 1, ptr %2, align 8, !tbaa !1498
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ct, ptr %i.da, align 8, !tbaa !1499
  store i8 1, ptr %3, align 8, !tbaa !1501
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ct, ptr %i.db, align 8, !tbaa !1502
  tail call void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef nonnull byval(%class.anon.3206) align 8 %2, ptr noundef nonnull byval(%class.anon.3207) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit15, %bb.h, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.3206) align 8 %2, ptr noundef byval(%class.anon.3207) align 8 %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1498, !range !90, !noundef !91
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1499
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !138
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1491 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1493, !nonnull !91, !align !175
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !495
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !496, !range !90, !noundef !91
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 59
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1494, !nonnull !91, !align !175
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1496, !nonnull !91, !align !175
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !365
  br label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i, %.preheader.i
  %.032.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.cq, %_ZN8facebook5velox6StatusD2Ev.exit21.i ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = or disjoint i32 %i.d, %i.av             ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !8456
  br i1 %i.al, label %.noexc13.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i8, ptr %i.am, align 1, !tbaa !497, !range !90, !noundef !91
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !498
  br label %.noexc13.i

bb.g:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !499
  %i.bc = shl nsw i64 %i.ax, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !79
  br label %.noexc13.i

.noexc13.i:                                       ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.g ], [ %i.ba, %bb.f ], [ %i.aw, %bb.d ]
  %i.bf = sext i32 %.0.i.i.i.i to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bg, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8, !noalias !8456
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.ac, align 8, !noalias !8456
  %i.bh = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 13
  %i.bj = select i1 %i.bi, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i.i ; 5 uses
  %.not33.i = icmp eq i32 %i.bh, 0
  br i1 %.not33.i, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13.i
  %wide.trip.count.i = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.bk = add nsw i64 %wide.trip.count.i, -1
  %xtraiter116 = and i64 %.sroa.0.0.copyload.i.i.i, 3 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 3
  br i1 %i.bl, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter121 = and i64 %.sroa.0.0.copyload.i.i.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.09.i.i30.i = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i.new ], [ %i.ci, %.lr.ph.i ]
  %niter122 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter122.next.3, %.lr.ph.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68, !noalias !8457
  %i.bo = zext i8 %i.bn to i64
  %i.bp = xor i64 %.09.i.i30.i, %i.bo
  %i.bq = mul i64 %i.bp, 1099511628211
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !68, !noalias !8457
  %i.bu = zext i8 %i.bt to i64
  %i.bv = xor i64 %i.bq, %i.bu
  %i.bw = mul i64 %i.bv, 1099511628211
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !68, !noalias !8457
  %i.ca = zext i8 %i.bz to i64
  %i.cb = xor i64 %i.bw, %i.ca
  %i.cc = mul i64 %i.cb, 1099511628211
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !68, !noalias !8457
  %i.cg = zext i8 %i.cf to i64
  %i.ch = xor i64 %i.cc, %i.cg
  %i.ci = mul i64 %i.ch, 1099511628211            ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter122.next.3 = add i64 %niter122, 4         ; 2 uses
  %niter122.ncmp.3 = icmp eq i64 %niter122.next.3, %unroll_iter121
  br i1 %niter122.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ]
  %.09.i.i30.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i ], [ %i.ci, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.09.i.i30.i.epil = phi i64 [ %.09.i.i30.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.cn, %.lr.ph.i.epil ]
  %epil.iter117 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter117.next, %.lr.ph.i.epil ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i.epil
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !68, !noalias !8457
  %i.cl = zext i8 %i.ck to i64
  %i.cm = xor i64 %.09.i.i30.i.epil, %i.cl
  %i.cn = mul i64 %i.cm, 1099511628211            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i, label %.lr.ph.i.epil, !llvm.loop !8443

_ZN8facebook5velox6StatusD2Ev.exit21.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.noexc13.i
  %.09.i.i.lcssa.i = phi i64 [ -3750763034362895579, %.noexc13.i ], [ %i.ci, %_ZN8facebook5velox6StatusD2Ev.exit21.i.loopexit.unr-lcssa ], [ %i.cn, %.lr.ph.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !8456
  %i.co = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ax
  store i64 %.09.i.i.lcssa.i, ptr %i.co, align 8, !tbaa !138
  %i.cp = add nuw i64 %.032.i, 9223372036854775807
  %i.cq = and i64 %i.cp, %.032.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.cq, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !8444

bb.h:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = sdiv i32 %0, 64                         ; 2 uses
  %i.cs = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ct
  %i.cu = xor i64 %notmask.i.i35, -1
  %i.cv = sub nsw i32 64, %i.cs
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl i64 %i.cu, %i.cw
  %i.cy = load i8, ptr %2, align 8, !tbaa !1498, !range !90, !noundef !91
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1499
  %i.db = sext i32 %i.cr to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !138
  %i.de = xor i8 %i.cy, 1
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = xor i64 %i.dd, %i.dg
  %i.di = and i64 %i.dh, %i.cx                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.di, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = shl nsw i32 %i.cr, 6
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre.i38 = load ptr, ptr %i.dj, align 8, !tbaa !1491 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1493, !nonnull !91, !align !175
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !495
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 58
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !496, !range !90, !noundef !91
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1494, !nonnull !91, !align !175
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1496, !nonnull !91, !align !175
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !365
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53, %.preheader.i37
  %.032.i39 = phi i64 [ %i.di, %.preheader.i37 ], [ %i.fz, %_ZN8facebook5velox6StatusD2Ev.exit21.i53 ] ; 3 uses
  %i.ed = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i39, i1 true)
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = or disjoint i32 %i.dk, %i.ee            ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !8458
  br i1 %i.du, label %.noexc13.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = load i8, ptr %i.dv, align 1, !tbaa !497, !range !90, !noundef !91
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = load i32, ptr %i.dx, align 8, !tbaa !498
  br label %.noexc13.i40

bb.m:                                             ; preds = %bb.k
  %i.ek = load ptr, ptr %i.dw, align 8, !tbaa !499
  %i.el = shl nsw i64 %i.eg, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !79
  br label %.noexc13.i40

.noexc13.i40:                                     ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i41 = phi i32 [ %i.en, %bb.m ], [ %i.ej, %bb.l ], [ %i.ef, %bb.j ]
  %i.eo = sext i32 %.0.i.i.i.i41 to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.eo ; 2 uses
  %.sroa.0.0.copyload.i.i.i42 = load i64, ptr %i.ep, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i43 = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.2.0.copyload.i.i.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i43, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i42, ptr %5, align 8, !noalias !8458
  store ptr %.sroa.2.0.copyload.i.i.i44, ptr %i.dl, align 8, !noalias !8458
  %i.eq = trunc i64 %.sroa.0.0.copyload.i.i.i42 to i32 ; 2 uses
  %i.er = icmp ult i32 %i.eq, 13
  %i.es = select i1 %i.er, ptr %i.dm, ptr %.sroa.2.0.copyload.i.i.i44 ; 5 uses
  %.not33.i45 = icmp eq i32 %i.eq, 0
  br i1 %.not33.i45, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.noexc13.i40
  %wide.trip.count.i47 = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967295
  %i.et = add nsw i64 %wide.trip.count.i47, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i.i42, 3 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 3
  br i1 %i.eu, label %.lr.ph.i48.epil.preheader, label %.lr.ph.preheader.i46.new

.lr.ph.preheader.i46.new:                         ; preds = %.lr.ph.preheader.i46
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967292
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i46.new
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %indvars.iv.next.i51.3, %.lr.ph.i48 ] ; 5 uses
  %.09.i.i30.i50 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i46.new ], [ %i.fr, %.lr.ph.i48 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i46.new ], [ %niter.next.3, %.lr.ph.i48 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !68, !noalias !8459
  %i.ex = zext i8 %i.ew to i64
  %i.ey = xor i64 %.09.i.i30.i50, %i.ex
  %i.ez = mul i64 %i.ey, 1099511628211
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !68, !noalias !8459
  %i.fd = zext i8 %i.fc to i64
  %i.fe = xor i64 %i.ez, %i.fd
  %i.ff = mul i64 %i.fe, 1099511628211
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !68, !noalias !8459
  %i.fj = zext i8 %i.fi to i64
  %i.fk = xor i64 %i.ff, %i.fj
  %i.fl = mul i64 %i.fk, 1099511628211
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !68, !noalias !8459
  %i.fp = zext i8 %i.fo to i64
  %i.fq = xor i64 %i.fl, %i.fp
  %i.fr = mul i64 %i.fq, 1099511628211            ; 3 uses
  %indvars.iv.next.i51.3 = add nuw nsw i64 %indvars.iv.i49, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, label %.lr.ph.i48, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa: ; preds = %.lr.ph.i48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.i48.epil.preheader

.lr.ph.i48.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, %.lr.ph.preheader.i46
  %indvars.iv.i49.epil.init = phi i64 [ 0, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i51.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ]
  %.09.i.i30.i50.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i46 ], [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i48.epil

.lr.ph.i48.epil:                                  ; preds = %.lr.ph.i48.epil, %.lr.ph.i48.epil.preheader
  %indvars.iv.i49.epil = phi i64 [ %indvars.iv.i49.epil.init, %.lr.ph.i48.epil.preheader ], [ %indvars.iv.next.i51.epil, %.lr.ph.i48.epil ] ; 2 uses
  %.09.i.i30.i50.epil = phi i64 [ %.09.i.i30.i50.epil.init, %.lr.ph.i48.epil.preheader ], [ %i.fw, %.lr.ph.i48.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i48.epil.preheader ], [ %epil.iter.next, %.lr.ph.i48.epil ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv.i49.epil
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !68, !noalias !8459
  %i.fu = zext i8 %i.ft to i64
  %i.fv = xor i64 %.09.i.i30.i50.epil, %i.fu
  %i.fw = mul i64 %i.fv, 1099511628211            ; 2 uses
  %indvars.iv.next.i51.epil = add nuw nsw i64 %indvars.iv.i49.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i53, label %.lr.ph.i48.epil, !llvm.loop !8449

_ZN8facebook5velox6StatusD2Ev.exit21.i53:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa, %.lr.ph.i48.epil, %.noexc13.i40
  %.09.i.i.lcssa.i54 = phi i64 [ -3750763034362895579, %.noexc13.i40 ], [ %i.fr, %_ZN8facebook5velox6StatusD2Ev.exit21.i53.loopexit.unr-lcssa ], [ %i.fw, %.lr.ph.i48.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !8458
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eg
  store i64 %.09.i.i.lcssa.i54, ptr %i.fx, align 8, !tbaa !138
  %i.fy = add i64 %.032.i39, -1
  %i.fz = and i64 %i.fy, %.032.i39                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.fz, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, label %bb.j, !llvm.loop !8444

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i53, %bb.i, %bb.h
  %i.ga = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3382 = icmp sgt i32 %i.ga, %i.d
  br i1 %.not3382, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.n

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56, %.lr.ph
  %i.gb = phi i32 [ %i.gd, %.lr.ph ], [ %i.ga, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56 ] ; 2 uses
  %.083 = phi i32 [ %i.gb, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit56 ]
  %i.gc = sdiv i32 %.083, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.gc)
  %i.gd = add nsw i32 %i.gb, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gd, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !8450

bb.n:                                             ; preds = %._crit_edge
  %i.ge = ashr i32 %1, 6
  %i.gf = and i32 %1, 63
  %i.gg = zext nneg i32 %i.gf to i64
  %notmask.i57 = shl nsw i64 -1, %i.gg
  %i.gh = xor i64 %notmask.i57, -1
  %i.gi = load i8, ptr %2, align 8, !tbaa !1498, !range !90, !noundef !91
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1499
  %i.gl = sext i32 %i.ge to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !138
  %i.go = xor i8 %i.gi, 1
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = xor i64 %i.gn, %i.gq
  %i.gs = and i64 %i.gr, %i.gh                    ; 2 uses
  %.not.i58 = icmp eq i64 %i.gs, 0
  br i1 %.not.i58, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.n
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre.i60 = load ptr, ptr %i.gt, align 8, !tbaa !1491 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1493, !nonnull !91, !align !175
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !495
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 58
  %i.hc = load i8, ptr %i.hb, align 2, !tbaa !496, !range !90, !noundef !91
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 59
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %.pre.i60, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1494, !nonnull !91, !align !175
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1496, !nonnull !91, !align !175
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !365
  br label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75, %.preheader.i59
  %.032.i61 = phi i64 [ %i.gs, %.preheader.i59 ], [ %i.ji, %_ZN8facebook5velox6StatusD2Ev.exit21.i75 ] ; 3 uses
  %i.hm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.032.i61, i1 true)
  %i.hn = trunc nuw nsw i64 %i.hm to i32
  %i.ho = or disjoint i32 %i.d, %i.hn             ; 2 uses
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !8460
  br i1 %i.hd, label %.noexc13.i62, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hq = load i8, ptr %i.he, align 1, !tbaa !497, !range !90, !noundef !91
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hs = load i32, ptr %i.hg, align 8, !tbaa !498
  br label %.noexc13.i62

bb.r:                                             ; preds = %bb.p
  %i.ht = load ptr, ptr %i.hf, align 8, !tbaa !499
  %i.hu = shl nsw i64 %i.hp, 2
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !79
  br label %.noexc13.i62

.noexc13.i62:                                     ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i63 = phi i32 [ %i.hw, %bb.r ], [ %i.hs, %bb.q ], [ %i.ho, %bb.o ]
  %i.hx = sext i32 %.0.i.i.i.i63 to i64
  %i.hy = getelementptr inbounds [16 x i8], ptr %i.ha, i64 %i.hx ; 2 uses
  %.sroa.0.0.copyload.i.i.i64 = load i64, ptr %i.hy, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.2.0.copyload.i.i.i66 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i65, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i64, ptr %4, align 8, !noalias !8460
  store ptr %.sroa.2.0.copyload.i.i.i66, ptr %i.gu, align 8, !noalias !8460
  %i.hz = trunc i64 %.sroa.0.0.copyload.i.i.i64 to i32 ; 2 uses
  %i.ia = icmp ult i32 %i.hz, 13
  %i.ib = select i1 %i.ia, ptr %i.gv, ptr %.sroa.2.0.copyload.i.i.i66 ; 5 uses
  %.not33.i67 = icmp eq i32 %i.hz, 0
  br i1 %.not33.i67, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.preheader.i68

.lr.ph.preheader.i68:                             ; preds = %.noexc13.i62
  %wide.trip.count.i69 = and i64 %.sroa.0.0.copyload.i.i.i64, 4294967295
  %i.ic = add nsw i64 %wide.trip.count.i69, -1
  %xtraiter109 = and i64 %.sroa.0.0.copyload.i.i.i64, 3 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 3
  br i1 %i.id, label %.lr.ph.i70.epil.preheader, label %.lr.ph.preheader.i68.new

.lr.ph.preheader.i68.new:                         ; preds = %.lr.ph.preheader.i68
  %unroll_iter114 = and i64 %.sroa.0.0.copyload.i.i.i64, 4294967292
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70, %.lr.ph.preheader.i68.new
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %indvars.iv.next.i73.3, %.lr.ph.i70 ] ; 5 uses
  %.09.i.i30.i72 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i68.new ], [ %i.ja, %.lr.ph.i70 ]
  %niter115 = phi i64 [ 0, %.lr.ph.preheader.i68.new ], [ %niter115.next.3, %.lr.ph.i70 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !68, !noalias !8461
  %i.ig = zext i8 %i.if to i64
  %i.ih = xor i64 %.09.i.i30.i72, %i.ig
  %i.ii = mul i64 %i.ih, 1099511628211
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !68, !noalias !8461
  %i.im = zext i8 %i.il to i64
  %i.in = xor i64 %i.ii, %i.im
  %i.io = mul i64 %i.in, 1099511628211
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !68, !noalias !8461
  %i.is = zext i8 %i.ir to i64
  %i.it = xor i64 %i.io, %i.is
  %i.iu = mul i64 %i.it, 1099511628211
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !68, !noalias !8461
  %i.iy = zext i8 %i.ix to i64
  %i.iz = xor i64 %i.iu, %i.iy
  %i.ja = mul i64 %i.iz, 1099511628211            ; 3 uses
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i71, 4 ; 2 uses
  %niter115.next.3 = add i64 %niter115, 4         ; 2 uses
  %niter115.ncmp.3 = icmp eq i64 %niter115.next.3, %unroll_iter114
  br i1 %niter115.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, label %.lr.ph.i70, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa: ; preds = %.lr.ph.i70
  %lcmp.mod111.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.i70.epil.preheader

.lr.ph.i70.epil.preheader:                        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, %.lr.ph.preheader.i68
  %indvars.iv.i71.epil.init = phi i64 [ 0, %.lr.ph.preheader.i68 ], [ %indvars.iv.next.i73.3, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ]
  %.09.i.i30.i72.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader.i68 ], [ %i.ja, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter109, 0
  call void @llvm.assume(i1 %lcmp.mod113)
  br label %.lr.ph.i70.epil

.lr.ph.i70.epil:                                  ; preds = %.lr.ph.i70.epil, %.lr.ph.i70.epil.preheader
  %indvars.iv.i71.epil = phi i64 [ %indvars.iv.i71.epil.init, %.lr.ph.i70.epil.preheader ], [ %indvars.iv.next.i73.epil, %.lr.ph.i70.epil ] ; 2 uses
  %.09.i.i30.i72.epil = phi i64 [ %.09.i.i30.i72.epil.init, %.lr.ph.i70.epil.preheader ], [ %i.jf, %.lr.ph.i70.epil ]
  %epil.iter110 = phi i64 [ 0, %.lr.ph.i70.epil.preheader ], [ %epil.iter110.next, %.lr.ph.i70.epil ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i71.epil
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !68, !noalias !8461
  %i.jd = zext i8 %i.jc to i64
  %i.je = xor i64 %.09.i.i30.i72.epil, %i.jd
  %i.jf = mul i64 %i.je, 1099511628211            ; 2 uses
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i71.epil, 1
  %epil.iter110.next = add i64 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i64 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit21.i75, label %.lr.ph.i70.epil, !llvm.loop !8455

_ZN8facebook5velox6StatusD2Ev.exit21.i75:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa, %.lr.ph.i70.epil, %.noexc13.i62
  %.09.i.i.lcssa.i76 = phi i64 [ -3750763034362895579, %.noexc13.i62 ], [ %i.ja, %_ZN8facebook5velox6StatusD2Ev.exit21.i75.loopexit.unr-lcssa ], [ %i.jf, %.lr.ph.i70.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !8460
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hp
  store i64 %.09.i.i.lcssa.i76, ptr %i.jg, align 8, !tbaa !138
  %i.jh = add nuw i64 %.032.i61, 9223372036854775807
  %i.ji = and i64 %i.jh, %.032.i61                ; 2 uses
  %.not10.i77 = icmp eq i64 %i.ji, 0
  br i1 %.not10.i77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.o, !llvm.loop !8444

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit21.i75, %_ZN8facebook5velox6StatusD2Ev.exit21.i, %bb.n, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16Fnv1a_64FunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1501, !range !90, !noundef !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1502
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph86 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph86:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre104 = load ptr, ptr %i.k, align 8, !tbaa !1491 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre104, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1493, !nonnull !91, !align !175
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !495
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 58
  %i.u = load i8, ptr %i.t, align 2, !tbaa !496, !range !90, !noundef !91
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 59
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %.pre104, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1494, !nonnull !91, !align !175
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1496, !nonnull !91, !align !175
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !365
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = shl i32 %1, 6                           ; 3 uses
  %i.af = add i32 %i.ae, 64
  %i.ag = sext i32 %i.af to i64
  %.not93 = icmp eq i32 %i.ae, -64
  br i1 %.not93, label %.loopexit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.b
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !1491 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1493, !nonnull !91, !align !175
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !494, !nonnull !91, !align !175 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !495
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 58
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !496, !range !90, !noundef !91
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 59
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1494, !nonnull !91, !align !175
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1496, !nonnull !91, !align !175
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !365
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph92, %_ZN8facebook5velox6StatusD2Ev.exit37
  %.091 = phi i64 [ %i.ah, %.lr.ph92 ], [ %i.ct, %_ZN8facebook5velox6StatusD2Ev.exit37 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !8474
  %i.bb = trunc i64 %.091 to i32
  br i1 %i.as, label %.noexc26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = load i8, ptr %i.at, align 1, !tbaa !497, !range !90, !noundef !91
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr %i.av, align 8, !tbaa !498
  br label %.noexc26

bb.f:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !499
  %sext.i = shl i64 %.091, 32
  %i.bg = ashr exact i64 %sext.i, 30
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !79
  br label %.noexc26

.noexc26:                                         ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i29 = phi i32 [ %i.bi, %bb.f ], [ %i.be, %bb.e ], [ %i.bb, %bb.c ]
  %i.bj = sext i32 %.0.i.i.i29 to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.bj ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bk, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !68 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !8474
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.aj, align 8, !noalias !8474
  %i.bl = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 13
  %i.bn = select i1 %i.bm, ptr %i.ak, ptr %.sroa.2.0.copyload.i.i ; 5 uses
  %.not94 = icmp eq i32 %i.bl, 0
  br i1 %.not94, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.noexc26
  %wide.trip.count = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.bo = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %.sroa.0.0.copyload.i.i, 3  ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 3
  br i1 %i.bp, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter = and i64 %.sroa.0.0.copyload.i.i, 4294967292
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %indvars.iv.next.3, %.lr.ph89 ] ; 5 uses
  %.09.i.i.i87 = phi i64 [ -3750763034362895579, %.lr.ph89.preheader.new ], [ %i.cm, %.lr.ph89 ]
  %niter = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter.next.3, %.lr.ph89 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !68, !noalias !8475
  %i.bs = zext i8 %i.br to i64
  %i.bt = xor i64 %.09.i.i.i87, %i.bs
  %i.bu = mul i64 %i.bt, 1099511628211
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !68, !noalias !8475
  %i.by = zext i8 %i.bx to i64
  %i.bz = xor i64 %i.bu, %i.by
  %i.ca = mul i64 %i.bz, 1099511628211
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !68, !noalias !8475
  %i.ce = zext i8 %i.cd to i64
  %i.cf = xor i64 %i.ca, %i.ce
  %i.cg = mul i64 %i.cf, 1099511628211
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !68, !noalias !8475
  %i.ck = zext i8 %i.cj to i64
  %i.cl = xor i64 %i.cg, %i.ck
  %i.cm = mul i64 %i.cl, 1099511628211            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !39

_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, %.lr.ph89.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph89.preheader ], [ %indvars.iv.next.3, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ]
  %.09.i.i.i87.epil.init = phi i64 [ -3750763034362895579, %.lr.ph89.preheader ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph89.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph89.epil ] ; 2 uses
  %.09.i.i.i87.epil = phi i64 [ %.09.i.i.i87.epil.init, %.lr.ph89.epil.preheader ], [ %i.cr, %.lr.ph89.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph89.epil.preheader ], [ %epil.iter.next, %.lr.ph89.epil ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.epil
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !68, !noalias !8475
  %i.cp = zext i8 %i.co to i64
  %i.cq = xor i64 %.09.i.i.i87.epil, %i.cp
  %i.cr = mul i64 %i.cq, 1099511628211            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8facebook5velox6StatusD2Ev.exit37, label %.lr.ph89.epil, !llvm.loop !8466

_ZN8facebook5velox6StatusD2Ev.exit37:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa, %.lr.ph89.epil, %.noexc26
  %.09.i.i.i.lcssa = phi i64 [ -3750763034362895579, %.noexc26 ], [ %i.cm, %_ZN8facebook5velox6StatusD2Ev.exit37.loopexit.unr-lcssa ], [ %i.cr, %.lr.ph89.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !8474
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.091
  store i64 %.09.i.i.i.lcssa, ptr %i.cs, align 8, !tbaa !138
  %i.ct = add nuw i64 %.091, 1                    ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.ag
  br i1 %i.cu, label %bb.c, label %.loopexit, !llvm.loop !8467

bb.g:                                             ; preds = %.lr.ph86, %_ZN8facebook5velox6StatusD2Ev.exit64
  %.01585 = phi i64 [ %i.j, %.lr.ph86 ], [ %i.er, %_ZN8facebook5velox6StatusD2Ev.exit64 ] ; 3 uses
end_hunk_12
