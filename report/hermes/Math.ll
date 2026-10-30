Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Math?download=true
inline.NumInlined: 560
inline.NumDeleted: 278
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6hermes2vm10mathRandomEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %bb.e
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.e ], [ %i.at, %select.unfold.i.i.i.i ]
  %.01422.i.i.i.i = phi double [ 1.000000e+00, %bb.e ], [ %i.as, %select.unfold.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi double [ 0.000000e+00, %bb.e ], [ %i.ap, %select.unfold.i.i.i.i ]
  %i.an = call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.b)
  %i.ao = uitofp i64 %i.an to double
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %.01422.i.i.i.i, double %.01521.i.i.i.i) ; 2 uses
  %i.aq = fpext double %.01422.i.i.i.i to x86_fp80
  %i.ar = fmul x86_fp80 %i.aq, f0x403F8000000000000000
  %i.as = fptrunc x86_fp80 %i.ar to double        ; 2 uses
  %i.at = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %select.unfold.i.i.i.i, !llvm.loop !55

bb.g:                                             ; preds = %bb.f
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEdRT_.exit: ; preds = %bb.f, %bb.g
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %i.au = fadd double %.016.i.i.i.i, 0.000000e+00
  %i.av = fcmp uno double %.016.i.i.i.i, 0.000000e+00
  %i.aw = bitcast double %i.au to i64
  %spec.select.i = select i1 %i.av, i64 9221120237041090560, i64 %i.aw, !prof !12
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %spec.select.i, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10mathFroundEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = bitcast i64 %i.h to double               ; 2 uses
  %i.j = fptrunc double %i.i to float
  %i.k = fpext float %i.j to double
  %i.l = fcmp uno double %i.i, 0.000000e+00
  %i.m = bitcast double %i.k to i64
  %spec.select.i = select i1 %i.l, i64 9221120237041090560, i64 %i.m, !prof !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %spec.select.i, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm9mathHypotEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.llvh::SmallVector.156", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %1, ptr %3, align 8, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  store ptr %i.c, ptr %i.a, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !79
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !25
  store ptr %3, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.m, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 4, ptr %i.n, align 4, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !11   ; 3 uses
  %i.q = icmp ugt i32 %i.p, 4
  br i1 %i.q, label %bb.b, label %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %i.p to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.l, i64 noundef %i.r, i64 noundef 8) #12
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !24
  %.pre90 = load i32, ptr %i.k, align 8, !tbaa !25
  %.pre91 = load i32, ptr %i.o, align 8, !tbaa !11, !noalias !81
  br label %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit

_ZN4llvh15SmallVectorImplIdE7reserveEm.exit:      ; preds = %bb.a, %bb.b
  %i.s = phi i32 [ %i.p, %bb.a ], [ %.pre91, %bb.b ] ; 2 uses
  %i.t = phi i32 [ 0, %bb.a ], [ %.pre90, %bb.b ] ; 2 uses
  %i.u = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.b ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !26, !noalias !82 ; 2 uses
  %i.w = zext i32 %i.s to i64
  %.neg = mul nsw i64 %i.w, -8
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %.neg
  %.not6973 = icmp eq i32 %i.s, 0
  br i1 %.not6973, label %.thread67, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit
  %i.y = zext i32 %i.t to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.077 = phi i1 [ false, %.lr.ph ], [ %i.an, %bb.f ]
  %.03976 = phi i1 [ false, %.lr.ph ], [ %i.al, %bb.f ]
  %.sroa.050.075 = phi ptr [ %i.v, %.lr.ph ], [ %i.z, %bb.f ]
  %.06074 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.050.075, i64 -8 ; 3 uses
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store i32 %i.t, ptr %i.k, align 8, !tbaa !25
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !29
  store ptr %i.u, ptr %i.i, align 8, !tbaa !24
  %i.ae = call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.z) #12
  %.fr = freeze { i32, i64 } %i.ae                ; 2 uses
  %i.af = extractvalue { i32, i64 } %.fr, 0
  %i.ag = extractvalue { i32, i64 } %.fr, 1       ; 2 uses
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %.thread67, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.ai = bitcast i64 %i.ag to double             ; 2 uses
  %i.aj = call double @llvm.fabs.f64(double %i.ai) ; 3 uses
  %i.ak = fcmp oeq double %i.aj, +inf
  %i.al = select i1 %i.ak, i1 true, i1 %.03976    ; 3 uses
  %i.am = fcmp uno double %i.ai, 0.000000e+00
  %i.an = select i1 %i.am, i1 true, i1 %.077      ; 2 uses
  %i.ao = load i32, ptr %i.m, align 8, !tbaa !80  ; 2 uses
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !79
  %.not.i = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 8) #12
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aq = phi i32 [ %.pre.i, %bb.e ], [ %i.ao, %bb.d ]
  %i.ar = load ptr, ptr %4, align 8, !tbaa !27
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  store i64 %i.ag, ptr %i.at, align 1
  %i.au = load i32, ptr %i.m, align 8, !tbaa !80
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.m, align 8, !tbaa !80
  %i.aw = fcmp olt double %i.aj, %.06074
  %.sroa.speculated = select i1 %i.aw, double %.06074, double %i.aj ; 6 uses
  %.not69 = icmp eq ptr %i.z, %i.x
  br i1 %.not69, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.f
  %brmerge = select i1 %i.al, i1 true, i1 %i.an
  %. = select i1 %i.al, i64 9218868437227405312, i64 9221120237041090560
  br i1 %brmerge, label %.thread67, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ax = fcmp oeq double %.sroa.speculated, 0.000000e+00
  br i1 %i.ax, label %.thread67, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %4, align 8, !tbaa !27    ; 4 uses
  %i.az = load i32, ptr %i.m, align 8, !tbaa !80  ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.idx = shl nuw nsw i64 %i.ba, 3                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %.not80 = icmp eq i32 %i.az, 0
  br i1 %.not80, label %._crit_edge86, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.h
  %i.bc = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bd = and i64 %i.bc, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bd, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph85.prol, label %.lr.ph85.prol.loopexit

.lr.ph85.prol:                                    ; preds = %.lr.ph85.preheader
  %i.be = load double, ptr %i.ay, align 8, !tbaa !84
  %i.bf = fdiv double %i.be, %.sroa.speculated    ; 2 uses
  %i.bg = fmul double %i.bf, %i.bf                ; 4 uses
  %i.bh = fsub double %i.bg, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  br label %.lr.ph85.prol.loopexit

.lr.ph85.prol.loopexit:                           ; preds = %.lr.ph85.prol, %.lr.ph85.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.preheader ], [ %i.bg, %.lr.ph85.prol ]
  %.04283.unr = phi ptr [ %i.ay, %.lr.ph85.preheader ], [ %i.bi, %.lr.ph85.prol ]
  %.04382.unr = phi double [ 0.000000e+00, %.lr.ph85.preheader ], [ %i.bh, %.lr.ph85.prol ]
  %.04481.unr = phi double [ 0.000000e+00, %.lr.ph85.preheader ], [ %i.bg, %.lr.ph85.prol ]
  %i.bj = icmp eq i64 %i.bc, 0
  br i1 %i.bj, label %._crit_edge86, label %.lr.ph85

._crit_edge86:                                    ; preds = %.lr.ph85.prol.loopexit, %.lr.ph85, %bb.h
  %.044.lcssa = phi double [ 0.000000e+00, %bb.h ], [ %.lcssa.unr, %.lr.ph85.prol.loopexit ], [ %i.by, %.lr.ph85 ]
  %i.bk = call double @sqrt(double noundef %.044.lcssa) #12, !tbaa !6
  %i.bl = fmul double %.sroa.speculated, %i.bk    ; 2 uses
  %i.bm = fcmp uno double %i.bl, 0.000000e+00
  %i.bn = bitcast double %i.bl to i64
  %spec.select.i = select i1 %i.bm, i64 9221120237041090560, i64 %i.bn, !prof !12
  br label %.thread67

.lr.ph85:                                         ; preds = %.lr.ph85.prol.loopexit, %.lr.ph85
  %.04283 = phi ptr [ %i.cb, %.lr.ph85 ], [ %.04283.unr, %.lr.ph85.prol.loopexit ] ; 3 uses
  %.04382 = phi double [ %i.ca, %.lr.ph85 ], [ %.04382.unr, %.lr.ph85.prol.loopexit ]
  %.04481 = phi double [ %i.by, %.lr.ph85 ], [ %.04481.unr, %.lr.ph85.prol.loopexit ] ; 2 uses
  %i.bo = load double, ptr %.04283, align 8, !tbaa !84
  %i.bp = fdiv double %i.bo, %.sroa.speculated    ; 2 uses
  %i.bq = fmul double %i.bp, %i.bp
  %i.br = fsub double %i.bq, %.04382              ; 2 uses
  %i.bs = fadd double %.04481, %i.br              ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.04283, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !84
  %i.bv = fdiv double %i.bu, %.sroa.speculated    ; 2 uses
  %i.bw = fmul double %i.bv, %i.bv
  %i.bx = fsub double %.04481, %i.bs
  %5 = fadd double %i.br, %i.bx
  %6 = fadd double %i.bw, %5                      ; 2 uses
  %i.by = fadd double %i.bs, %6                   ; 3 uses
  %i.bz = fsub double %i.by, %i.bs
  %i.ca = fsub double %i.bz, %6
  %i.cb = getelementptr inbounds nuw i8, ptr %.04283, i64 16 ; 2 uses
  %.not.1 = icmp eq ptr %i.cb, %i.bb
  br i1 %.not.1, label %._crit_edge86, label %.lr.ph85

.thread67:                                        ; preds = %bb.c, %._crit_edge, %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit, %bb.g, %._crit_edge86
  %.sroa.059.3 = phi i32 [ 1, %bb.g ], [ 1, %._crit_edge86 ], [ 1, %._crit_edge ], [ 1, %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit ], [ 0, %bb.c ]
  %.sroa.6.0 = phi i64 [ 0, %bb.g ], [ %spec.select.i, %._crit_edge86 ], [ %., %._crit_edge ], [ 0, %_ZN4llvh15SmallVectorImplIdE7reserveEm.exit ], [ undef, %bb.c ]
  %i.cc = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %_ZN4llvh11SmallVectorIdLj4EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.thread67
  call void @free(ptr noundef %i.cc) #12
  br label %_ZN4llvh11SmallVectorIdLj4EED2Ev.exit

_ZN4llvh11SmallVectorIdLj4EED2Ev.exit:            ; preds = %.thread67, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.059.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8mathImulEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm12toUInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !11
  %i.i = icmp ugt i32 %i.h, 1
  %i.j = load ptr, ptr %2, align 8
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  %.sroa.02.0.i6 = select i1 %i.i, ptr %i.k, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.l = tail call { i32, i64 } @_ZN6hermes2vm12toUInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i6) #12 ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.l, 0
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.o = extractvalue { i32, i64 } %i.l, 1
  %i.p = extractvalue { i32, i64 } %i.e, 1
  %i.q = bitcast i64 %i.p to double
  %i.r = fptoui double %i.q to i32
  %i.s = bitcast i64 %i.o to double
  %i.t = fptoui double %i.s to i32
  %i.u = mul i32 %i.t, %i.r
  %i.v = sitofp i32 %i.u to double
  %i.w = bitcast double %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.012.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.413.0 = phi i64 [ %i.w, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.413.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm12toUInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm9mathClz32EPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm12toUInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = bitcast i64 %i.h to double
  %i.j = fptoui double %i.i to i32
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 false)
  %i.l = uitofp nneg i32 %i.k to double
  %i.m = bitcast double %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.04.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.m, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8mathSignEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = extractvalue { i32, i64 } %i.e, 1        ; 3 uses
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.e, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = bitcast i64 %i.g to double               ; 2 uses
  %i.j = fcmp uno double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fcmp oeq double %i.i, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %i.g, -9223372036854775808
  %i.m = or disjoint i64 %i.l, 4607182418800017408
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sroa.09.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.d ], [ undef, %bb.a ], [ 9221120237041090560, %bb.b ], [ %i.g, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm16createMathObjectERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #12
  br label %_ZN6hermes2vm12SingleObjectILNS0_8CellKindE60EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !88
  br label %_ZN6hermes2vm12SingleObjectILNS0_8CellKindE60EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12SingleObjectILNS0_8CellKindE60EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9496
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !34 ; 2 uses
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, 281474976710655
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.o = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.p = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.o
  %i.q = trunc i64 %i.p to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.q
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.n, align 4, !tbaa !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  %i.s = sub i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, %i.o
  %i.t = trunc i64 %i.s to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.t
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i, ptr %i.r, align 4, !tbaa !6
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 1006633000, ptr %i.i, align 4, !tbaa !33
  store <4 x i32> <i32 0, i32 14, i32 14, i32 14>, ptr %i.u, align 4
  %.01320.i.ptr.3.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.3.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.4.i.i.i, align 4, !tbaa !6
  %i.v = ptrtoint ptr %i.i to i64
  %i.w = or i64 %i.v, -281474976710656            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192 ; 2 uses
end_hunk_0
