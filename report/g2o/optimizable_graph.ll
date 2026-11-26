Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_:bb.a
  br label %bb.bj

bb.ab:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ac:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ad:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ae:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.af:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.ag:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.ah:                                            ; preds = %bb.c
  store i32 3072, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ai:                                            ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4, !tbaa !103
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 4096, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.ak:                                            ; preds = %bb.c
  store i32 6144, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.al:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  store i32 12288, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.an:                                            ; preds = %bb.c
  store i32 16384, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.ao:                                            ; preds = %bb.c
  store i32 6144, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ap:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.aq:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ar:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.as:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.at:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.au:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.av:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.aw:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ax:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ay:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.az:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.ba:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.bb:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.bc:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.bd:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.be:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !103
  br label %bb.bj

bb.bf:                                            ; preds = %bb.c
  store i32 2048, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.bg:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.bh:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.bi:                                            ; preds = %bb.c
  store i32 3072, ptr %2, align 4, !tbaa !103
  br label %bb.bj

bb.bj:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.aj, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !873

.thread:                                          ; preds = %bb.ai
  store i32 4096, ptr %1, align 4, !tbaa !103
  store i32 4096, ptr %2, align 4, !tbaa !103
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not78 = icmp eq i64 %indvars.iv.next77, 14
  br i1 %exitcond.not78, label %.thread80, label %.outer, !llvm.loop !873

.thread80:                                        ; preds = %.thread, %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !103
  %i.o = load i32, ptr %2, align 4, !tbaa !103
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread80
  store i32 0, ptr %2, align 4, !tbaa !103
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread80, %bb.b
  %i.q = load i32, ptr %0, align 4, !tbaa !103
  %i.r = shl nsw i32 %i.q, 10
  store i32 %i.r, ptr %0, align 4, !tbaa !103
  %i.s = load i32, ptr %1, align 4, !tbaa !103
  %i.t = shl nsw i32 %i.s, 10
  store i32 %i.t, ptr %1, align 4, !tbaa !103
  %i.u = load i32, ptr %2, align 4, !tbaa !103
  %i.v = shl nsw i32 %i.u, 10
  store i32 %i.v, ptr %2, align 4, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #35 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !888
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !281    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !282  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.j = add nsw i64 %smax, -4                    ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %7 = mul i64 %i.g, %i.k
  %8 = shl i64 %7, 5
  %i.l = shl i64 %3, 3                            ; 4 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %8
  %scevgep106 = getelementptr i8, ptr %i.m, i64 %i.l
  %9 = shl i64 %i.j, 3                            ; 3 uses
  %i.n = or disjoint i64 %9, 8
  %i.o = mul i64 %i.g, %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.o
  %scevgep107.a = getelementptr i8, ptr %i.p, i64 %i.l
  %i.q = shl i64 %i.g, 3
  %scevgep108 = getelementptr i8, ptr %i.e, i64 %i.q
  %i.r = or disjoint i64 %9, 16
  %i.s = mul i64 %i.g, %i.r
  %i.t = getelementptr i8, ptr %i.e, i64 %i.s
  %scevgep109 = getelementptr i8, ptr %i.t, i64 %i.l
  %i.u = shl i64 %i.g, 4
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.u
  %10 = or disjoint i64 %9, 24
  %i.v = mul i64 %i.g, %10
  %11 = getelementptr i8, ptr %i.e, i64 %i.v
  %scevgep111 = getelementptr i8, ptr %11, i64 %i.l
  %12 = mul i64 %i.g, 24
  %scevgep112 = getelementptr i8, ptr %i.e, i64 %12
  %i.w = shl i64 %3, 5
  %scevgep113 = getelementptr i8, ptr %1, i64 %i.w
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.x = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.cy, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.y = mul nsw i64 %i.g, %.04460.us
  %i.z = getelementptr [8 x i8], ptr %i.e, i64 %i.y ; 4 uses
  %i.aa = or disjoint i64 %.04460.us, 1
  %i.ab = mul nsw i64 %i.g, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.e, i64 %i.ab ; 4 uses
  %i.ad = or disjoint i64 %.04460.us, 2
  %i.ae = mul nsw i64 %i.g, %i.ad
  %i.af = getelementptr [8 x i8], ptr %i.e, i64 %i.ae ; 4 uses
  %i.ag = or disjoint i64 %.04460.us, 3
  %i.ah = mul nsw i64 %i.g, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.e, i64 %i.ah ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.aj = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.al = icmp ult ptr %i.ak, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.an = icmp ult ptr %i.am, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.aj ; 2 uses
  %i.ao = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.ap = icmp ult ptr %i.ao, %scevgep84
  %i.aq = or i1 %i.ap, %mul.overflow
  %i.ar = or i1 %i.an, %i.al
  %i.as = or i1 %i.ar, %i.aq
  br i1 %i.as, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.at = shl i64 %.04559.us, 3                   ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at     ; 4 uses
  %i.av = getelementptr i8, ptr %scevgep113, i64 %i.at ; 4 uses
  %bound0 = icmp ult ptr %i.au, %scevgep111
  %bound1 = icmp ult ptr %scevgep112, %i.av
  %found.conflict = and i1 %bound0, %bound1
  %i.aw = or i1 %found.conflict, %stride.check
  %bound0114 = icmp ult ptr %i.au, %scevgep109
  %bound1115 = icmp ult ptr %scevgep110, %i.av
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx = or i1 %i.aw, %found.conflict116
  %bound0117 = icmp ult ptr %i.au, %scevgep107.a
  %bound1118 = icmp ult ptr %scevgep108, %i.av
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx, %found.conflict119
  %bound0121 = icmp ult ptr %i.au, %scevgep106
  %bound1122 = icmp ult ptr %i.e, %i.av
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  br i1 %conflict.rdx124, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ax = add i64 %.04559.us, %i.x                ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index
  %wide.load = load <2 x double>, ptr %i.az, align 8, !tbaa !210, !alias.scope !889
  %.idx = shl i64 %index, 5
  %i.ba = getelementptr i8, ptr %i.ay, i64 %.idx
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.bb, align 8, !tbaa !210, !alias.scope !890
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bc, align 8, !tbaa !210, !alias.scope !891
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load127 = load <2 x double>, ptr %i.bd, align 8, !tbaa !210, !alias.scope !892
  %i.be = shufflevector <2 x double> %wide.load, <2 x double> %wide.load125, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bf = shufflevector <2 x double> %wide.load126, <2 x double> %wide.load127, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.be, <4 x double> %i.bf, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ba, align 8, !tbaa !210, !alias.scope !893, !noalias !894
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !881

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ax, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.04358.us.ph
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !210
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bi, ptr %i.bj, align 8, !tbaa !210
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04358.us.ph
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !210
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  store double %i.bl, ptr %i.bm, align 8, !tbaa !210
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !210
  %i.bp = getelementptr i8, ptr %i.bj, i64 16
  store double %i.bo, ptr %i.bp, align 8, !tbaa !210
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !210
  %i.bs = getelementptr i8, ptr %i.bj, i64 24
  store double %i.br, ptr %i.bs, align 8, !tbaa !210
  %i.bt = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.bu = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa145.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bt, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.bu, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.bt, %scalar.ph.prol ]
  %i.bv = icmp eq i64 %3, %.neg
  br i1 %i.bv, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.cx, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.cw, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.04358.us
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !210
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.bx, ptr %i.by, align 8, !tbaa !210
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04358.us
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !210
  %i.cb = getelementptr i8, ptr %i.by, i64 8
  store double %i.ca, ptr %i.cb, align 8, !tbaa !210
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !210
  %i.ce = getelementptr i8, ptr %i.by, i64 16
  store double %i.cd, ptr %i.ce, align 8, !tbaa !210
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !210
  %i.ch = getelementptr i8, ptr %i.by, i64 24
  store double %i.cg, ptr %i.ch, align 8, !tbaa !210
  %i.ci = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !210
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  store double %i.ck, ptr %i.cm, align 8, !tbaa !210
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ci
  %i.co = load double, ptr %i.cn, align 8, !tbaa !210
  %i.cp = getelementptr i8, ptr %i.cl, i64 40
  store double %i.co, ptr %i.cp, align 8, !tbaa !210
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ci
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !210
  %i.cs = getelementptr i8, ptr %i.cl, i64 48
  store double %i.cr, ptr %i.cs, align 8, !tbaa !210
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ci
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !210
  %i.cv = getelementptr i8, ptr %i.cl, i64 56
  store double %i.cu, ptr %i.cv, align 8, !tbaa !210
  %i.cw = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.cx = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cx, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !882

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.ax, %middle.block ], [ %.lcssa145.unr, %scalar.ph.prol.loopexit ], [ %i.cw, %scalar.ph ] ; 2 uses
  %i.cy = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.cz = icmp slt i64 %i.cy, %i.c
  br i1 %i.cz, label %.lr.ph.us, label %.preheader, !llvm.loop !883

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.da = icmp slt i64 %i.c, %4
  br i1 %i.da, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.db = load ptr, ptr %2, align 8, !tbaa !281   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !282 ; 3 uses
  %i.de = icmp sgt i64 %3, 0
  br i1 %i.de, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.df = ptrtoaddr ptr %i.db to i64
  %i.dg = mul i64 %i.dd, -8
  %i.dh = mul i64 %i.dd, %i.b
  %i.di = shl i64 %i.dh, 5
  %i.dj = add i64 %i.di, %i.df
  %i.dk = sub i64 %i.a, %i.dj
  %min.iters.check131 = icmp ult i64 %3, 4
  %n.vec134 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n141 = icmp eq i64 %3, %n.vec134
  %xtraiter146 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.eg, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.dl = mul nsw i64 %i.dd, %.04267
  %i.dm = getelementptr [8 x i8], ptr %i.db, i64 %i.dl ; 6 uses
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph
  %i.dn = mul i64 %indvar, %i.dg
  %i.do = add i64 %i.dk, %i.dn
  %i.dp = shl i64 %.266, 3
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = add i64 %i.dq, -1
  %diff.check = icmp ult i64 %i.dr, 31
  br i1 %diff.check, label %scalar.ph130.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck132
  %i.ds = add i64 %.266, %n.vec134                ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index136 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load137 = load <2 x double>, ptr %i.du, align 8, !tbaa !210
  %wide.load138 = load <2 x double>, ptr %i.dv, align 8, !tbaa !210
  %i.dw = getelementptr [8 x i8], ptr %i.dt, i64 %index136 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <2 x double> %wide.load137, ptr %i.dw, align 8, !tbaa !210
  store <2 x double> %wide.load138, ptr %i.dx, align 8, !tbaa !210
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.dy, label %middle.block140, label %vector.body135, !llvm.loop !884

middle.block140:                                  ; preds = %vector.body135
  br i1 %cmp.n141, label %._crit_edge, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %vector.memcheck132, %.lr.ph, %middle.block140
  %.065.ph = phi i64 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph ], [ %n.vec134, %middle.block140 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck132 ], [ %.266, %.lr.ph ], [ %i.ds, %middle.block140 ] ; 2 uses
  br i1 %lcmp.mod147.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol

scalar.ph130.prol:                                ; preds = %scalar.ph130.preheader, %scalar.ph130.prol
  %.065.prol = phi i64 [ %i.ed, %scalar.ph130.prol ], [ %.065.ph, %scalar.ph130.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ec, %scalar.ph130.prol ], [ %.364.ph, %scalar.ph130.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph130.prol ], [ 0, %scalar.ph130.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.065.prol
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !210
  %i.eb = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.ea, ptr %i.eb, align 8, !tbaa !210
  %i.ec = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ed = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol, !llvm.loop !885

scalar.ph130.prol.loopexit:                       ; preds = %scalar.ph130.prol, %scalar.ph130.preheader
  %.lcssa144.unr = phi i64 [ poison, %scalar.ph130.preheader ], [ %i.ec, %scalar.ph130.prol ]
  %.065.unr = phi i64 [ %.065.ph, %scalar.ph130.preheader ], [ %i.ed, %scalar.ph130.prol ]
  %.364.unr = phi i64 [ %.364.ph, %scalar.ph130.preheader ], [ %i.ec, %scalar.ph130.prol ]
  %i.ee = sub nsw i64 %.065.ph, %3
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge, label %scalar.ph130

._crit_edge:                                      ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130, %middle.block140
  %.lcssa = phi i64 [ %i.ds, %middle.block140 ], [ %.lcssa144.unr, %scalar.ph130.prol.loopexit ], [ %i.ez, %scalar.ph130 ]
  %i.eg = add nsw i64 %.04267, 1                  ; 2 uses
  %exitcond73.not = icmp eq i64 %i.eg, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond73.not, label %._crit_edge69.split, label %.lr.ph, !llvm.loop !886

scalar.ph130:                                     ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130
  %.065 = phi i64 [ %i.fa, %scalar.ph130 ], [ %.065.unr, %scalar.ph130.prol.loopexit ] ; 5 uses
  %.364 = phi i64 [ %i.ez, %scalar.ph130 ], [ %.364.unr, %scalar.ph130.prol.loopexit ] ; 5 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.065
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !210
  %i.ej = getelementptr inbounds [8 x i8], ptr %1, i64 %.364
  store double %i.ei, ptr %i.ej, align 8, !tbaa !210
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.065
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !210
  %i.en = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  store double %i.em, ptr %i.eo, align 8, !tbaa !210
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.065
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !210
  %i.es = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.et = getelementptr i8, ptr %i.es, i64 16
  store double %i.er, ptr %i.et, align 8, !tbaa !210
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.065
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !210
  %i.ex = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.ey = getelementptr i8, ptr %i.ex, i64 24
  store double %i.ew, ptr %i.ey, align 8, !tbaa !210
  %i.ez = add nsw i64 %.364, 4                    ; 2 uses
  %i.fa = add nuw nsw i64 %.065, 4                ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %i.fa, %3
  br i1 %exitcond72.not.3, label %._crit_edge, label %scalar.ph130, !llvm.loop !887
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !910
  %i.b = sdiv i64 %3, 2
  %i.c = shl nsw i64 %i.b, 1                      ; 2 uses
  %i.d = icmp sgt i64 %3, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep251 = getelementptr i8, ptr %1, i64 16
  %scevgep253 = getelementptr i8, ptr %1, i64 24
  %i.f = shl i64 %3, 3                            ; 4 uses
  %i.g = shl i64 %3, 5
  %scevgep283 = getelementptr i8, ptr %1, i64 %i.g
  br label %bb.b

.preheader137:                                    ; preds = %._crit_edge
  %i.h = icmp slt i64 %.1133.lcssa, %4
  %i.i = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge186.split

.preheader.lr.ph.split:                           ; preds = %.preheader137
  %i.j = load ptr, ptr %2, align 8, !tbaa !284    ; 2 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = load i64, ptr %i.e, align 8, !tbaa !285  ; 3 uses
  %i.m = mul i64 %i.l, -8
  %i.n = shl i64 %i.l, 3
  %i.o = mul i64 %i.n, %.1133.lcssa
  %i.p = add i64 %i.o, %i.k
  %i.q = sub i64 %i.a, %i.p
  %min.iters.check311 = icmp ult i64 %3, 4
  %n.vec314 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n321 = icmp eq i64 %3, %n.vec314
  %xtraiter334 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br label %.preheader

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvar281 = phi i64 [ 0, %bb.a ], [ %indvar.next282, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 11 uses
  %.0122178 = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.0132175 = phi i64 [ 0, %bb.a ], [ %.1133.lcssa, %._crit_edge ] ; 6 uses
  %i.r = shl i64 %indvar281, 4
  %i.s = sub i64 32, %i.r
  %i.t = sub i64 %4, %.0132175
  %i.u = srem i64 %i.t, %indvars.iv
  %i.v = sub i64 %4, %i.u                         ; 3 uses
  %i.w = icmp slt i64 %.0132175, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.x = shl nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.y = icmp samesign ugt i64 %indvars.iv, 3
  %i.z = and i64 %indvars.iv, 2
  %.not.not = icmp eq i64 %i.z, 0
  br i1 %i.y, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %exitcond.not.1 = icmp eq i64 %indvars.iv, 2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.aa = shl i64 %.0132175, 3                    ; 4 uses
  %i.ab = add i64 %i.aa, 8
  %i.ac = add i64 %i.aa, 16
  %i.ad = add i64 %i.aa, 24
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge159.split.us.us
  %indvar = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvar.next, %._crit_edge159.split.us.us ] ; 2 uses
  %.1170.us = phi i64 [ %.0122178, %.lr.ph.split.us.preheader ], [ %.4.lcssa.us, %._crit_edge159.split.us.us ] ; 2 uses
  %.1133167.us = phi i64 [ %.0132175, %.lr.ph.split.us.preheader ], [ %i.fv, %._crit_edge159.split.us.us ] ; 9 uses
  br i1 %i.d, label %.preheader140.us.preheader, label %.preheader141.us

.preheader140.us.preheader:                       ; preds = %.lr.ph.split.us
  %i.ae = add i64 %.1133167.us, 1
  %i.af = add i64 %.1133167.us, 2
  %i.ag = add i64 %.1133167.us, 3
  br label %.preheader140.us

.preheader140.us:                                 ; preds = %.preheader140.us.preheader, %.preheader140.us
  %.2146.us = phi i64 [ %i.bh, %.preheader140.us ], [ %.1170.us, %.preheader140.us.preheader ] ; 2 uses
  %.0128145.us = phi i64 [ %i.bi, %.preheader140.us ], [ 0, %.preheader140.us.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us ; 3 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !284
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !285 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %.0128145.us ; 2 uses
  %i.al = mul nsw i64 %i.aj, %.1133167.us
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !90 ; 2 uses
  %i.ao = mul nsw i64 %i.aj, %i.ae
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !90 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.as, ptr %i.ah, align 16, !tbaa !90
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  store <2 x double> %i.ar, ptr %i.at, align 16, !tbaa !90
  %i.au = load ptr, ptr %2, align 8, !tbaa !284
  %i.av = load i64, ptr %i.e, align 8, !tbaa !285 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %.0128145.us ; 2 uses
  %i.ax = mul nsw i64 %i.av, %i.af
  %i.ay = getelementptr [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !90 ; 2 uses
  %i.ba = mul nsw i64 %i.av, %i.ag
  %i.bb = getelementptr [8 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load <2 x double>, ptr %i.bb, align 1, !tbaa !90 ; 2 uses
  %i.bd = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.be = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store <2 x double> %i.be, ptr %i.bf, align 16, !tbaa !90
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store <2 x double> %i.bd, ptr %i.bg, align 16, !tbaa !90
  %i.bh = add nsw i64 %.2146.us, %i.x             ; 2 uses
  %i.bi = add nuw nsw i64 %.0128145.us, 2         ; 3 uses
  %i.bj = icmp slt i64 %i.bi, %i.c
  br i1 %i.bj, label %.preheader140.us, label %.preheader141.us, !llvm.loop !895

.preheader141.us:                                 ; preds = %.preheader140.us, %.lr.ph.split.us
  %.0128.lcssa.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.bi, %.preheader140.us ] ; 10 uses
  %.2.lcssa.us = phi i64 [ %.1170.us, %.lr.ph.split.us ], [ %i.bh, %.preheader140.us ] ; 8 uses
  %i.bk = icmp slt i64 %.0128.lcssa.us, %3
  br i1 %i.bk, label %.preheader139.lr.ph.us, label %._crit_edge159.split.us.us

.preheader139.lr.ph.us:                           ; preds = %.preheader141.us
  %i.bl = load ptr, ptr %2, align 8, !tbaa !284   ; 12 uses
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !285 ; 8 uses
  %i.bn = mul nsw i64 %i.bm, %.1133167.us         ; 4 uses
  %i.bo = add nsw i64 %.1133167.us, 1
  %i.bp = mul nsw i64 %i.bm, %i.bo                ; 4 uses
  %i.bq = add nsw i64 %.1133167.us, 2
  %i.br = mul nsw i64 %i.bm, %i.bq                ; 4 uses
  %i.bs = add nsw i64 %.1133167.us, 3
  %i.bt = mul nsw i64 %i.bm, %i.bs                ; 4 uses
  %i.bu = sub i64 %3, %.0128.lcssa.us             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bu, 68
  br i1 %min.iters.check, label %.loopexit.us.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader139.lr.ph.us
  %i.bv = xor i64 %.0128.lcssa.us, -1
  %i.bw = add i64 %3, %i.bv                       ; 2 uses
  %i.bx = shl i64 %.2.lcssa.us, 3                 ; 3 uses
  %scevgep250 = getelementptr i8, ptr %scevgep, i64 %i.bx ; 2 uses
  %mul.result = shl i64 %i.bw, 5                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.bw, 576460752303423487
  %i.by = getelementptr i8, ptr %scevgep250, i64 %mul.result
  %i.bz = icmp ult ptr %i.by, %scevgep250
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.bx ; 2 uses
  %i.ca = getelementptr i8, ptr %scevgep252, i64 %mul.result
  %i.cb = icmp ult ptr %i.ca, %scevgep252
  %scevgep254 = getelementptr i8, ptr %scevgep253, i64 %i.bx ; 2 uses
  %i.cc = getelementptr i8, ptr %scevgep254, i64 %mul.result
  %i.cd = icmp ult ptr %i.cc, %scevgep254
  %i.ce = or i1 %i.cd, %mul.overflow
  %i.cf = or i1 %i.cb, %i.bz
  %i.cg = or i1 %i.cf, %i.ce
  br i1 %i.cg, label %.loopexit.us.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ch = shl i64 %.2.lcssa.us, 3                 ; 2 uses
  %i.ci = getelementptr i8, ptr %1, i64 %i.ch     ; 4 uses
  %i.cj = shl i64 %.0128.lcssa.us, 5
  %i.ck = sub i64 %i.ch, %i.cj
  %i.cl = getelementptr i8, ptr %scevgep283, i64 %i.ck ; 4 uses
  %i.cm = mul i64 %indvar, %i.s                   ; 4 uses
  %i.cn = add i64 %i.ad, %i.cm
  %i.co = mul i64 %i.bm, %i.cn                    ; 2 uses
  %i.cp = shl i64 %.0128.lcssa.us, 3              ; 4 uses
  %i.cq = getelementptr i8, ptr %i.bl, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.bl, i64 %i.co
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.f
  %i.cu = add i64 %i.ac, %i.cm
  %i.cv = mul i64 %i.bm, %i.cu                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bl, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cp
  %i.cy = getelementptr i8, ptr %i.bl, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.f
  %i.da = add i64 %i.ab, %i.cm
  %i.db = mul i64 %i.bm, %i.da                    ; 2 uses
  %i.dc = getelementptr i8, ptr %i.bl, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cp
  %i.de = getelementptr i8, ptr %i.bl, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.f
  %i.dg = add i64 %i.aa, %i.cm
  %i.dh = mul i64 %i.bm, %i.dg                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.bl, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.cp
  %i.dk = getelementptr i8, ptr %i.bl, i64 %i.dh
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.f
  %bound0 = icmp ult ptr %i.ci, %i.ct
  %bound1 = icmp ult ptr %i.cr, %i.cl
  %found.conflict = and i1 %bound0, %bound1
  %bound0284 = icmp ult ptr %i.ci, %i.cz
  %bound1285 = icmp ult ptr %i.cx, %i.cl
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx = or i1 %found.conflict, %found.conflict286
  %bound0287 = icmp ult ptr %i.ci, %i.df
  %bound1288 = icmp ult ptr %i.dd, %i.cl
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx, %found.conflict289
  %bound0291 = icmp ult ptr %i.ci, %i.dl
  %bound1292 = icmp ult ptr %i.dj, %i.cl
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290, %found.conflict293
  br i1 %conflict.rdx294, label %.loopexit.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, -2                      ; 4 uses
  %i.dm = shl i64 %n.vec, 2
  %i.dn = add i64 %.2.lcssa.us, %i.dm             ; 2 uses
  %i.do = add i64 %.0128.lcssa.us, %n.vec
  %i.dp = getelementptr [8 x i8], ptr %i.bl, i64 %.0128.lcssa.us
  %i.dq = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dp, i64 %index ; 4 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %i.bn
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !210, !alias.scope !911
  %i.dt = getelementptr [8 x i8], ptr %i.dr, i64 %i.bp
  %wide.load295 = load <2 x double>, ptr %i.dt, align 8, !tbaa !210, !alias.scope !912
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %i.br
  %wide.load296 = load <2 x double>, ptr %i.du, align 8, !tbaa !210, !alias.scope !913
  %i.dv = getelementptr [8 x i8], ptr %i.dr, i64 %i.bt
  %wide.load297 = load <2 x double>, ptr %i.dv, align 8, !tbaa !210, !alias.scope !914
  %.idx = shl i64 %index, 5
  %i.dw = getelementptr i8, ptr %i.dq, i64 %.idx
  %i.dx = shufflevector <2 x double> %wide.load, <2 x double> %wide.load295, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = shufflevector <2 x double> %wide.load296, <2 x double> %wide.load297, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dx, <4 x double> %i.dy, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.dw, align 8, !tbaa !210, !alias.scope !915, !noalias !916
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !902

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge159.split.us.us, label %.loopexit.us.us.preheader

.loopexit.us.us.preheader:                        ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.lr.ph.us, %middle.block
  %.4158.us.us.ph = phi i64 [ %.2.lcssa.us, %vector.memcheck ], [ %.2.lcssa.us, %vector.scevcheck ], [ %.2.lcssa.us, %.preheader139.lr.ph.us ], [ %i.dn, %middle.block ] ; 3 uses
  %.2130156.us.us.ph = phi i64 [ %.0128.lcssa.us, %vector.memcheck ], [ %.0128.lcssa.us, %vector.scevcheck ], [ %.0128.lcssa.us, %.preheader139.lr.ph.us ], [ %i.do, %middle.block ] ; 5 uses
  %i.ea = sub i64 %3, %.2130156.us.us.ph
  %.neg = add i64 %.2130156.us.us.ph, 1
  %xtraiter = and i64 %i.ea, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.us.us.prol.loopexit, label %.loopexit.us.us.prol

.loopexit.us.us.prol:                             ; preds = %.loopexit.us.us.preheader
  %i.eb = getelementptr [8 x i8], ptr %i.bl, i64 %.2130156.us.us.ph ; 4 uses
  %i.ec = add nsw i64 %.4158.us.us.ph, 4          ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.eb, i64 %i.bn
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !210
  %i.ef = getelementptr [8 x i8], ptr %i.eb, i64 %i.bp
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !210
  %i.eh = getelementptr [8 x i8], ptr %i.eb, i64 %i.br
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !210
  %i.ej = getelementptr [8 x i8], ptr %i.eb, i64 %i.bt
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !210
  %i.el = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158.us.us.ph ; 4 uses
  store double %i.ee, ptr %i.el, align 8, !tbaa !210
  %i.em = getelementptr i8, ptr %i.el, i64 8
  store double %i.eg, ptr %i.em, align 8, !tbaa !210
  %i.en = getelementptr i8, ptr %i.el, i64 16
  store double %i.ei, ptr %i.en, align 8, !tbaa !210
  %i.eo = getelementptr i8, ptr %i.el, i64 24
  store double %i.ek, ptr %i.eo, align 8, !tbaa !210
  %i.ep = add nuw nsw i64 %.2130156.us.us.ph, 1
  br label %.loopexit.us.us.prol.loopexit

.loopexit.us.us.prol.loopexit:                    ; preds = %.loopexit.us.us.prol, %.loopexit.us.us.preheader
  %.lcssa332.unr = phi i64 [ poison, %.loopexit.us.us.preheader ], [ %i.ec, %.loopexit.us.us.prol ]
  %.4158.us.us.unr = phi i64 [ %.4158.us.us.ph, %.loopexit.us.us.preheader ], [ %i.ec, %.loopexit.us.us.prol ]
  %.2130156.us.us.unr = phi i64 [ %.2130156.us.us.ph, %.loopexit.us.us.preheader ], [ %i.ep, %.loopexit.us.us.prol ]
  %i.eq = icmp eq i64 %3, %.neg
  br i1 %i.eq, label %._crit_edge159.split.us.us, label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us
  %.4158.us.us = phi i64 [ %i.fg, %.loopexit.us.us ], [ %.4158.us.us.unr, %.loopexit.us.us.prol.loopexit ] ; 3 uses
  %.2130156.us.us = phi i64 [ %i.fu, %.loopexit.us.us ], [ %.2130156.us.us.unr, %.loopexit.us.us.prol.loopexit ] ; 3 uses
  %i.er = getelementptr [8 x i8], ptr %i.bl, i64 %.2130156.us.us ; 4 uses
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %i.bn
  %i.et = load double, ptr %i.es, align 8, !tbaa !210
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %i.bp
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !210
  %i.ew = getelementptr [8 x i8], ptr %i.er, i64 %i.br
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !210
  %i.ey = getelementptr [8 x i8], ptr %i.er, i64 %i.bt
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !210
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158.us.us ; 4 uses
  store double %i.et, ptr %i.fa, align 8, !tbaa !210
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  store double %i.ev, ptr %i.fb, align 8, !tbaa !210
  %i.fc = getelementptr i8, ptr %i.fa, i64 16
  store double %i.ex, ptr %i.fc, align 8, !tbaa !210
  %i.fd = getelementptr i8, ptr %i.fa, i64 24
  store double %i.ez, ptr %i.fd, align 8, !tbaa !210
  %i.fe = getelementptr [8 x i8], ptr %i.bl, i64 %.2130156.us.us
  %i.ff = getelementptr i8, ptr %i.fe, i64 8      ; 4 uses
  %i.fg = add nsw i64 %.4158.us.us, 8             ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.ff, i64 %i.bn
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !210
  %i.fj = getelementptr [8 x i8], ptr %i.ff, i64 %i.bp
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !210
  %i.fl = getelementptr [8 x i8], ptr %i.ff, i64 %i.br
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !210
  %i.fn = getelementptr [8 x i8], ptr %i.ff, i64 %i.bt
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !210
  %i.fp = getelementptr [8 x i8], ptr %1, i64 %.4158.us.us ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 32
  store double %i.fi, ptr %i.fq, align 8, !tbaa !210
  %i.fr = getelementptr i8, ptr %i.fp, i64 40
  store double %i.fk, ptr %i.fr, align 8, !tbaa !210
  %i.fs = getelementptr i8, ptr %i.fp, i64 48
  store double %i.fm, ptr %i.fs, align 8, !tbaa !210
  %i.ft = getelementptr i8, ptr %i.fp, i64 56
  store double %i.fo, ptr %i.ft, align 8, !tbaa !210
  %i.fu = add nuw nsw i64 %.2130156.us.us, 2      ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %i.fu, %3
  br i1 %exitcond208.not.1, label %._crit_edge159.split.us.us, label %.loopexit.us.us, !llvm.loop !903

._crit_edge159.split.us.us:                       ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us, %middle.block, %.preheader141.us
  %.4.lcssa.us = phi i64 [ %.2.lcssa.us, %.preheader141.us ], [ %i.dn, %middle.block ], [ %.lcssa332.unr, %.loopexit.us.us.prol.loopexit ], [ %i.fg, %.loopexit.us.us ] ; 2 uses
  %i.fv = add i64 %.1133167.us, %indvars.iv       ; 3 uses
  %i.fw = icmp slt i64 %i.fv, %i.v
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fw, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !904

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge159.split
  %.1170 = phi i64 [ %.4.lcssa, %._crit_edge159.split ], [ %.0122178, %.lr.ph.split.preheader ] ; 2 uses
  %.1133167 = phi i64 [ %i.hq, %._crit_edge159.split ], [ %.0132175, %.lr.ph.split.preheader ] ; 7 uses
  br i1 %i.d, label %.preheader140.preheader, label %.preheader141

.preheader140.preheader:                          ; preds = %.lr.ph.split
  %i.fx = add i64 %.1133167, 1
  br label %.preheader140

.preheader141:                                    ; preds = %.preheader140, %.lr.ph.split
  %.0128.lcssa = phi i64 [ 0, %.lr.ph.split ], [ %i.gw, %.preheader140 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1170, %.lr.ph.split ], [ %i.gv, %.preheader140 ] ; 2 uses
  %i.fy = icmp sge i64 %.0128.lcssa, %3
  %brmerge = or i1 %i.fy, %.not.not
  br i1 %brmerge, label %._crit_edge159.split, label %.preheader139.lr.ph.split.split

.preheader139.lr.ph.split.split:                  ; preds = %.preheader141
  %i.fz = load ptr, ptr %2, align 8, !tbaa !284
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !285 ; 4 uses
  %i.gb = mul nsw i64 %i.ga, %.1133167
  %i.gc = add nsw i64 %.1133167, 1
  %i.gd = mul nsw i64 %i.ga, %i.gc
  %i.ge = add nsw i64 %.1133167, 2
  %i.gf = mul nsw i64 %i.ga, %i.ge
  %i.gg = add nsw i64 %.1133167, 3
  %i.gh = mul nsw i64 %i.ga, %i.gg
  br label %.preheader139

.preheader140:                                    ; preds = %.preheader140.preheader, %.preheader140
  %.2146 = phi i64 [ %i.gv, %.preheader140 ], [ %.1170, %.preheader140.preheader ] ; 2 uses
  %.0128145 = phi i64 [ %i.gw, %.preheader140 ], [ 0, %.preheader140.preheader ] ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146 ; 2 uses
  %i.gj = load ptr, ptr %2, align 8, !tbaa !284
  %i.gk = load i64, ptr %i.e, align 8, !tbaa !285 ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gj, i64 %.0128145 ; 2 uses
  %i.gm = mul nsw i64 %i.gk, %.1133167
  %i.gn = getelementptr [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !90 ; 2 uses
  %i.gp = mul nsw i64 %i.gk, %i.fx
  %i.gq = getelementptr [8 x i8], ptr %i.gl, i64 %i.gp
  %i.gr = load <2 x double>, ptr %i.gq, align 1, !tbaa !90 ; 2 uses
  %i.gs = shufflevector <2 x double> %i.go, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  %i.gt = shufflevector <2 x double> %i.go, <2 x double> %i.gr, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.gt, ptr %i.gi, align 16, !tbaa !90
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv
  store <2 x double> %i.gs, ptr %i.gu, align 16, !tbaa !90
  %i.gv = add nsw i64 %.2146, %i.x                ; 2 uses
  %i.gw = add nuw nsw i64 %.0128145, 2            ; 3 uses
  %i.gx = icmp slt i64 %i.gw, %i.c
  br i1 %i.gx, label %.preheader140, label %.preheader141, !llvm.loop !895

.preheader139:                                    ; preds = %.preheader139.lr.ph.split.split, %..loopexit_crit_edge
  %.4158 = phi i64 [ %.2.lcssa, %.preheader139.lr.ph.split.split ], [ %.lcssa328, %..loopexit_crit_edge ] ; 5 uses
  %.2130156 = phi i64 [ %.0128.lcssa, %.preheader139.lr.ph.split.split ], [ %i.hp, %..loopexit_crit_edge ] ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %i.fz, i64 %.2130156 ; 4 uses
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v2f64
!694 = distinct !{!694, !693, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE17bottomRightCornerIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_: argument 0"}
!695 = distinct !{!695, i1 true, !"_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE15essentialVectorEl"}
!696 = distinct !{!696, !695, !"_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLin1ELi1ELi0ELin1ELi1EEELi1EE15essentialVectorEl: argument 0"}
!697 = distinct !{!697, i1 true, !"_ZN5Eigen8internal24hseq_side_dependent_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEELi1EE15essentialVectorERKNS_19HouseholderSequenceIS3_S4_Li1EEEl"}
!698 = distinct !{!698, !697, !"_ZN5Eigen8internal24hseq_side_dependent_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEELi1EE15essentialVectorERKNS_19HouseholderSequenceIS3_S4_Li1EEEl: argument 0"}
!699 = distinct !{!699, !91}
!700 = !{!691}
!701 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0ELb1EEE", !278, i64 0, !134, i64 24, !207, i64 32, !239, i64 40, !38, i64 48}
!702 = !{!701, !38, i64 48}
!703 = !{!694}
!704 = !{!696}
!705 = !{!698}
!706 = !{!698, !696}
!707 = distinct !{!707, i1 false, !"LVerDomain"}
!708 = distinct !{!708, !707}
!709 = distinct !{!709, !707}
!710 = distinct !{!710, !91, !216, !217}
!711 = distinct !{!711, !213}
!712 = distinct !{!712, !91}
!713 = distinct !{!713, !91, !216}
!714 = distinct !{!714, i1 false, !"LVerDomain"}
!715 = distinct !{!715, !714}
!716 = distinct !{!716, !714}
!717 = distinct !{!717, !91, !216, !217}
!718 = distinct !{!718, !91}
!719 = distinct !{!719, !91}
!720 = distinct !{!720, !91, !216}
!721 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES5_EEEENS0_13mul_assign_opIddEELi0EEE", !261, i64 0, !263, i64 8, !265, i64 16, !267, i64 24}
!722 = !{!721, !267, i64 24}
!723 = !{!708}
!724 = !{!709}
!725 = !{!721, !263, i64 8}
!726 = !{!721, !261, i64 0}
!727 = !{!715}
!728 = !{!716}
!729 = distinct !{!729, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEE3colEl"}
!730 = distinct !{!730, !729, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEE3colEl: argument 0"}
!731 = distinct !{!731, !91}
!732 = distinct !{!732, !213}
!733 = !{!730}
!734 = distinct !{!734, !91}
!735 = distinct !{!735, !91}
!736 = distinct !{!736, !91}
!737 = distinct !{!737, !91}
!738 = distinct !{!738, !91}
!739 = distinct !{!739, !91}
!740 = distinct !{!740, !91}
!741 = distinct !{!741, !91}
!742 = distinct !{!742, !91}
!743 = distinct !{!743, !91, !216, !217}
!744 = distinct !{!744, !91, !217, !216}
!745 = distinct !{!745, !91}
!746 = distinct !{!746, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3colEl"}
!747 = distinct !{!747, !746, !"_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!748 = distinct !{!748, !91, !216, !217}
!749 = distinct !{!749, !91, !217, !216}
!750 = distinct !{!750, !91, !216, !217}
!751 = distinct !{!751, !91, !217, !216}
!752 = distinct !{!752, !91}
!753 = !{!747}
!754 = distinct !{!754, !91}
!755 = distinct !{!755, !91}
!756 = distinct !{!756, !91}
!757 = distinct !{!757, !91}
!758 = distinct !{!758, !91}
!759 = distinct !{!759, !91}
!760 = distinct !{!760, !91}
!761 = distinct !{!761, !91}
!762 = distinct !{!762, !91}
!763 = distinct !{!763, !91}
!764 = distinct !{!764, !213}
!765 = distinct !{!765, !213}
!766 = distinct !{!766, !91}
!767 = distinct !{!767, !91}
!768 = distinct !{!768, !91, !216, !217}
!769 = distinct !{!769, !91, !217, !216}
!770 = distinct !{!770, !91}
!771 = distinct !{!771, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3colEl"}
!772 = distinct !{!772, !771, !"_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!773 = distinct !{!773, i1 true, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi16ENS_6StrideILi0ELi0EEEEESA_E4typeEKSI_EERKS5_RKNS_10MatrixBaseISI_EE"}
!774 = distinct !{!774, !773, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi16ENS_6StrideILi0ELi0EEEEESA_E4typeEKSI_EERKS5_RKNS_10MatrixBaseISI_EE: argument 0"}
!775 = distinct !{!775, !91, !216, !217}
!776 = distinct !{!776, !91, !217, !216}
!777 = distinct !{!777, !91, !216, !217}
!778 = distinct !{!778, !91, !217, !216}
!779 = distinct !{!779, !91}
!780 = !{!772}
!781 = !{!774}
!782 = distinct !{!782, i1 true, !"_ZNK5Eigen18TriangularViewImplIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj5ENS_5DenseEEmlIS3_EEKNS_7ProductINS_14TriangularViewIS5_Lj5EEET_Li0EEERKNS_10MatrixBaseISC_EE"}
!783 = distinct !{!783, !782, !"_ZNK5Eigen18TriangularViewImplIKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELj5ENS_5DenseEEmlIS3_EEKNS_7ProductINS_14TriangularViewIS5_Lj5EEET_Li0EEERKNS_10MatrixBaseISC_EE: argument 0"}
!784 = !{!783}
!785 = distinct !{!785, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl"}
!786 = distinct !{!786, !785, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!787 = distinct !{!787, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE17bottomRightCornerIllEEKNS5_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES8_S9_"}
!788 = distinct !{!788, !787, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE17bottomRightCornerIllEEKNS5_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES8_S9_: argument 0"}
!789 = distinct !{!789, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE3rowEl"}
!790 = distinct !{!790, !789, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE3rowEl: argument 0"}
!791 = distinct !{!791, i1 true, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS_5BlockIKNSE_IKNSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEE9transposeEv"}
!792 = distinct !{!792, !791, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS_5BlockIKNSE_IKNSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEE9transposeEv: argument 0"}
!793 = distinct !{!793, i1 false, !"LVerDomain"}
!794 = distinct !{!794, !793}
!795 = distinct !{!795, !793}
!796 = distinct !{!796, !91, !216, !217}
!797 = distinct !{!797, !91, !216}
!798 = distinct !{!798, i1 false, !"LVerDomain"}
!799 = distinct !{!799, !798}
!800 = distinct !{!800, !798}
!801 = distinct !{!801, !91, !216, !217}
!802 = distinct !{!802, !91, !216}
!803 = distinct !{!803, !91}
!804 = distinct !{!804, !91}
!805 = !{!786}
!806 = !{!788}
!807 = !{!790}
!808 = !{!792}
!809 = !{!794}
!810 = !{!795}
!811 = !{!799}
!812 = !{!800}
!813 = distinct !{!813, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl"}
!814 = distinct !{!814, !813, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!815 = distinct !{!815, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE17bottomRightCornerIllEEKNS5_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES8_S9_"}
!816 = distinct !{!816, !815, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE17bottomRightCornerIllEEKNS5_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES8_S9_: argument 0"}
!817 = distinct !{!817, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE3rowEl"}
!818 = distinct !{!818, !817, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEE3rowEl: argument 0"}
!819 = distinct !{!819, i1 true, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS_5BlockIKNSE_IKNSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEE9transposeEv"}
!820 = distinct !{!820, !819, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEKNS_9TransposeIKNS_5BlockIKNSE_IKNSE_INS8_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEE9transposeEv: argument 0"}
!821 = distinct !{!821, i1 false, !"LVerDomain"}
!822 = distinct !{!822, !821}
!823 = distinct !{!823, !821}
!824 = distinct !{!824, !91, !216, !217}
!825 = distinct !{!825, !91, !216}
!826 = distinct !{!826, i1 false, !"LVerDomain"}
!827 = distinct !{!827, !826}
!828 = distinct !{!828, !826}
!829 = distinct !{!829, !91, !216, !217}
!830 = distinct !{!830, !91, !216}
!831 = distinct !{!831, !91}
!832 = distinct !{!832, !91}
!833 = !{!814}
!834 = !{!816}
!835 = !{!818}
!836 = !{!820}
!837 = !{!822}
!838 = !{!823}
!839 = !{!827}
!840 = !{!828}
!841 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEELi0EEE", !195, i64 0, !236, i64 8, !207, i64 16}
!842 = !{!841, !195, i64 0}
!843 = distinct !{!843, !91}
!844 = distinct !{!844, !91}
!845 = distinct !{!845, !91}
!846 = distinct !{!846, !91}
!847 = distinct !{!847, !91}
!848 = distinct !{!848, !91}
!849 = distinct !{!849, !91}
!850 = distinct !{!850, !91}
!851 = distinct !{!851, !91}
!852 = distinct !{!852, !91}
!853 = distinct !{!853, !91}
!854 = distinct !{!854, !91}
!855 = distinct !{!855, !91}
!856 = distinct !{!856, !91}
!857 = distinct !{!857, !213}
!858 = distinct !{!858, !213}
!859 = distinct !{!859, !91}
!860 = distinct !{!860, !91}
!861 = distinct !{!861, !91}
!862 = distinct !{!862, !91}
!863 = distinct !{!863, !91}
!864 = !{!"branch_weights", i32 1, i32 1048575}
!865 = !{!301, !38, i64 0}
!866 = !{!301, !38, i64 8}
!867 = distinct !{!867, !91}
!868 = !{i64 2153776365}
!869 = !{i64 2153775370}
!870 = !{i64 2153775768}
!871 = !{i64 2153775967}
!872 = !{i64 2153776166}
!873 = distinct !{!873, !91}
!874 = !{i64 2153775569}
!875 = distinct !{!875, i1 false, !"LVerDomain"}
!876 = distinct !{!876, !875}
!877 = distinct !{!877, !875}
!878 = distinct !{!878, !875}
!879 = distinct !{!879, !875}
!880 = distinct !{!880, !875}
!881 = distinct !{!881, !91, !216, !217}
!882 = distinct !{!882, !91, !216}
!883 = distinct !{!883, !91}
!884 = distinct !{!884, !91, !216, !217}
!885 = distinct !{!885, !213}
!886 = distinct !{!886, !91}
!887 = distinct !{!887, !91, !216}
!888 = !{i64 2155679002}
!889 = !{!876}
!890 = !{!877}
!891 = !{!878}
!892 = !{!879}
!893 = !{!880}
!894 = !{!879, !878, !877, !876}
!895 = distinct !{!895, !91}
!896 = distinct !{!896, i1 false, !"LVerDomain"}
!897 = distinct !{!897, !896}
!898 = distinct !{!898, !896}
!899 = distinct !{!899, !896}
!900 = distinct !{!900, !896}
!901 = distinct !{!901, !896}
!902 = distinct !{!902, !91, !216, !217}
!903 = distinct !{!903, !91, !216}
!904 = distinct !{!904, !91}
!905 = distinct !{!905, !91}
!906 = distinct !{!906, !91, !216, !217}
!907 = distinct !{!907, !213}
!908 = distinct !{!908, !91}
!909 = distinct !{!909, !91, !216}
!910 = !{i64 2155678691}
!911 = !{!897}
!912 = !{!898}
!913 = !{!899}
!914 = !{!900}
!915 = !{!901}
!916 = !{!900, !899, !898, !897}
!917 = distinct !{!917, !91}
!918 = distinct !{!918, !91}
!919 = distinct !{!919, !91}
!920 = distinct !{!920, !91}
!921 = distinct !{!921, !91}
!922 = distinct !{!922, !91}
!923 = distinct !{!923, !91}
!924 = distinct !{!924, !91}
!925 = distinct !{!925, !91}
!926 = distinct !{!926, !91}
!927 = distinct !{!927, !91}
!928 = distinct !{!928, !91}
!929 = distinct !{!929, !91}
!930 = distinct !{!930, !91}
!931 = distinct !{!931, !213}
!932 = distinct !{!932, !91}
!933 = !{i64 2155669641}
!934 = !{i64 2155670464}
!935 = !{i64 2155670518}
!936 = !{i64 2155670581}
!937 = !{i64 2155671410}
!938 = !{i64 2155671464}
!939 = !{i64 2155671527}
!940 = !{i64 2155672356}
!941 = !{i64 2155672410}
!942 = !{i64 2155672473}
!943 = !{i64 2155673302}
!944 = !{i64 2155673356}
!945 = !{i64 2155673419}
!946 = !{i64 2155674248}
!947 = !{i64 2155674302}
!948 = !{i64 2155674365}
!949 = !{i64 2155675194}
!950 = !{i64 2155675248}
!951 = !{i64 2155675311}
!952 = !{i64 2155676140}
!953 = !{i64 2155676194}
!954 = !{i64 2155676257}
!955 = !{i64 2155677086}
!956 = !{i64 2155677140}
!957 = !{i64 2155677203}
!958 = !{i64 2155677255}
!959 = !{i64 2155678076}
!960 = !{i64 2155678130}
!961 = !{i64 2155678193}
!962 = !{i64 2155658076}
!963 = !{i64 2155659347}
!964 = !{i64 2155659401}
!965 = !{i64 2155660615}
!966 = !{i64 2155660669}
!967 = !{i64 2155661883}
!968 = !{i64 2155661937}
!969 = !{i64 2155663151}
!970 = !{i64 2155663205}
!971 = !{i64 2155664419}
!972 = !{i64 2155664473}
!973 = !{i64 2155665687}
!974 = !{i64 2155665741}
!975 = !{i64 2155666955}
!976 = !{i64 2155667009}
!977 = !{i64 2155668223}
!978 = !{i64 2155668277}
!979 = !{i64 2155668329}
!980 = !{i64 2155669535}
!981 = !{i64 2155669589}
!982 = distinct !{!982, !91}
!983 = distinct !{!983, !91}
!984 = distinct !{!984, !91}
!985 = distinct !{!985, !91}
!986 = distinct !{!986, !91}
!987 = distinct !{!987, !91}
!988 = distinct !{!988, !91}
!989 = !{i64 2155618305}
!990 = !{i64 2155618068}
!991 = !{i64 2155618121}
!992 = !{i64 2155618247}
!993 = !{i64 2155618363}
!994 = !{i64 2155618419}
!995 = !{i64 2155618978}
!996 = !{i64 2155619044}
!997 = !{i64 2155619107}
!998 = !{i64 2155619672}
!999 = !{i64 2155619738}
!1000 = !{i64 2155619801}
!1001 = !{i64 2155620366}
!1002 = !{i64 2155620432}
!1003 = !{i64 2155620495}
!1004 = !{i64 2155621060}
!1005 = !{i64 2155621126}
!1006 = !{i64 2155621189}
!1007 = !{i64 2155621754}
!1008 = !{i64 2155621820}
!1009 = !{i64 2155621883}
!1010 = !{i64 2155622448}
!1011 = !{i64 2155622514}
!1012 = !{i64 2155622577}
!1013 = !{i64 2155623142}
!1014 = !{i64 2155623208}
!1015 = !{i64 2155623271}
!1016 = !{i64 2155623836}
!1017 = !{i64 2155623902}
!1018 = !{i64 2155623965}
!1019 = !{i64 2155624029}
!1020 = !{i64 2155624586}
!1021 = !{i64 2155624652}
!1022 = !{i64 2155624715}
!1023 = distinct !{!1023, !91, !216, !217}
!1024 = distinct !{!1024, !213}
!1025 = distinct !{!1025, !91, !216}
!1026 = !{!"_ZTSN5Eigen14TriangularViewINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELj2EEE", !306, i64 0}
!1027 = !{!1026, !306, i64 0}
!1028 = !{!"_ZTSN5Eigen7ProductINS_14TriangularViewINS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEELj2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEELi0EEE", !1026, i64 0, !229, i64 8}
!1029 = !{!1028, !229, i64 8}
!1030 = distinct !{!1030, !91}
!1031 = distinct !{!1031, !91}
!1032 = distinct !{!1032, !91}
!1033 = distinct !{!1033, !91, !216, !217}
!1034 = distinct !{!1034, !213}
!1035 = distinct !{!1035, !91, !216}
!1036 = !{!"_ZTSN5Eigen14TriangularViewIKNS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEELj1EEE", !307, i64 0}
!1037 = !{!"_ZTSN5Eigen7ProductINS_14TriangularViewIKNS_9TransposeIKNS_6MatrixIdLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS3_IdLin1ELin1ELi0ELin1ELin1EEELi0EEE", !1036, i64 0, !229, i64 8}
!1038 = !{!1037, !229, i64 8}
!1039 = distinct !{!1039, !91}
!1040 = distinct !{!1040, !91}
!1041 = distinct !{!1041, !91}
!1042 = distinct !{!1042, !91}
!1043 = distinct !{!1043, !91}
!1044 = distinct !{!1044, !91}
!1045 = distinct !{!1045, !91}
!1046 = distinct !{!1046, !91, !216, !217}
!1047 = distinct !{!1047, !213}
!1048 = distinct !{!1048, !91}
!1049 = distinct !{!1049, !91, !216}
!1050 = !{i64 2155678297}
!1051 = distinct !{!1051, !91}
!1052 = distinct !{!1052, !91}
!1053 = distinct !{!1053, !91}
end_hunk_1
