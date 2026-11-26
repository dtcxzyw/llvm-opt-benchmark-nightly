Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2631
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_:bb.a
  br label %bb.bj

bb.ad:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ae:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.af:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.ag:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.ah:                                            ; preds = %bb.c
  store i32 3072, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ai:                                            ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4, !tbaa !166
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 4096, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.ak:                                            ; preds = %bb.c
  store i32 6144, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.al:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  store i32 12288, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.an:                                            ; preds = %bb.c
  store i32 16384, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.ao:                                            ; preds = %bb.c
  store i32 6144, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ap:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.aq:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ar:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.as:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.at:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.au:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.av:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.aw:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ax:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ay:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.az:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ba:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bb:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bc:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bd:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.be:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bf:                                            ; preds = %bb.c
  store i32 2048, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bg:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bh:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bi:                                            ; preds = %bb.c
  store i32 3072, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bj:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.aj, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !789

.thread:                                          ; preds = %bb.ai
  store i32 4096, ptr %1, align 4, !tbaa !166
  store i32 4096, ptr %2, align 4, !tbaa !166
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not78 = icmp eq i64 %indvars.iv.next77, 14
  br i1 %exitcond.not78, label %.thread80, label %.outer, !llvm.loop !789

.thread80:                                        ; preds = %.thread, %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !166
  %i.o = load i32, ptr %2, align 4, !tbaa !166
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread80
  store i32 0, ptr %2, align 4, !tbaa !166
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread80, %bb.b
  %i.q = load i32, ptr %0, align 4, !tbaa !166
  %i.r = shl nsw i32 %i.q, 10
  store i32 %i.r, ptr %0, align 4, !tbaa !166
  %i.s = load i32, ptr %1, align 4, !tbaa !166
  %i.t = shl nsw i32 %i.s, 10
  store i32 %i.t, ptr %1, align 4, !tbaa !166
  %i.u = load i32, ptr %2, align 4, !tbaa !166
  %i.v = shl nsw i32 %i.u, 10
  store i32 %i.v, ptr %2, align 4, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !389
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !391    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !392  ; 12 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = add i64 %3, %6
  %i.k = sub i64 %5, %i.j
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph78.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph78
  %i.m = add nsw i64 %3, -1                       ; 2 uses
  %i.n = shl i64 %6, 5                            ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %scevgep100 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  %scevgep102 = getelementptr i8, ptr %i.q, i64 24
  %smax127 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.r = add nsw i64 %smax127, -4                 ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %7 = shl i64 %i.r, 3                            ; 3 uses
  %8 = or disjoint i64 %7, 24
  %9 = mul i64 %i.h, %8
  %i.t = shl i64 %3, 3                            ; 4 uses
  %i.u = getelementptr i8, ptr %i.f, i64 %9
  %scevgep128 = getelementptr i8, ptr %i.u, i64 %i.t
  %10 = mul i64 %i.h, 24
  %scevgep129 = getelementptr i8, ptr %i.f, i64 %10
  %i.v = or disjoint i64 %7, 16
  %i.w = mul i64 %i.h, %i.v
  %i.x = getelementptr i8, ptr %i.f, i64 %i.w
  %scevgep129.a = getelementptr i8, ptr %i.x, i64 %i.t
  %i.y = shl i64 %i.h, 4
  %scevgep130 = getelementptr i8, ptr %i.f, i64 %i.y
  %i.z = or disjoint i64 %7, 8
  %i.aa = mul i64 %i.h, %i.z
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.aa
  %scevgep131 = getelementptr i8, ptr %i.ab, i64 %i.t
  %i.ac = shl i64 %i.h, 3
  %scevgep132 = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ad = mul i64 %i.h, %i.s
  %11 = shl i64 %i.ad, 5
  %scevgep133 = getelementptr i8, ptr %i.f, i64 %11
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.t
  %i.ae = shl i64 %6, 5
  %i.af = add i64 %6, %3
  %i.ag = shl i64 %i.af, 5
  %scevgep135 = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep136 = getelementptr i8, ptr %1, i64 %i.ae
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep134, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep131, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep129.a, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %scevgep128, i64 3
  %i.al = insertelement <4 x ptr> poison, ptr %i.f, i64 0
  %i.am = insertelement <4 x ptr> %i.al, ptr %scevgep132, i64 1
  %i.an = insertelement <4 x ptr> %i.am, ptr %scevgep130, i64 2
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep129, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.ea, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.dz, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aq = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ar = mul nsw i64 %i.h, %.05076.us
  %i.as = getelementptr [8 x i8], ptr %i.f, i64 %i.ar ; 4 uses
  %i.at = or disjoint i64 %.05076.us, 1
  %i.au = mul nsw i64 %i.h, %i.at
  %i.av = getelementptr [8 x i8], ptr %i.f, i64 %i.au ; 4 uses
  %i.aw = or disjoint i64 %.05076.us, 2
  %i.ax = mul nsw i64 %i.h, %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  %i.az = or disjoint i64 %.05076.us, 3
  %i.ba = mul nsw i64 %i.h, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.bc = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bc ; 2 uses
  %i.bf = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.bg = icmp ult ptr %i.bf, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bc ; 2 uses
  %i.bh = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bi = icmp ult ptr %i.bh, %scevgep103
  %i.bj = or i1 %i.bi, %mul.overflow
  %i.bk = or i1 %i.bg, %i.be
  %i.bl = or i1 %i.bk, %i.bj
  br i1 %i.bl, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bm = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep136, i64 %i.bm
  %i.bo = getelementptr i8, ptr %scevgep135, i64 %i.bm
  %i.bp = insertelement <4 x ptr> poison, ptr %i.bn, i64 0
  %i.bq = shufflevector <4 x ptr> %i.bp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.br = icmp ult <4 x ptr> %i.bq, %i.ak
  %i.bs = insertelement <4 x ptr> poison, ptr %i.bo, i64 0
  %i.bt = shufflevector <4 x ptr> %i.bs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bu = icmp ult <4 x ptr> %i.ao, %i.bt
  %i.bv = and <4 x i1> %i.br, %i.bu
  %i.bw = bitcast <4 x i1> %i.bv to i4
  %i.bx = icmp ne i4 %i.bw, 0
  %op.rdx = or i1 %i.bx, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.by = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %1, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index
  %wide.load = load <2 x double>, ptr %i.ca, align 8, !tbaa !189, !alias.scope !804
  %.idx = shl i64 %index, 5
  %i.cb = getelementptr i8, ptr %i.bz, i64 %.idx
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.cc, align 8, !tbaa !189, !alias.scope !805
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load149 = load <2 x double>, ptr %i.cd, align 8, !tbaa !189, !alias.scope !806
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load150 = load <2 x double>, ptr %i.ce, align 8, !tbaa !189, !alias.scope !807
  %i.cf = shufflevector <2 x double> %wide.load, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cg = shufflevector <2 x double> %wide.load149, <2 x double> %wide.load150, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cf, <4 x double> %i.cg, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.cb, align 8, !tbaa !189, !alias.scope !808, !noalias !809
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %vector.scevcheck ], [ %i.aq, %.lr.ph.us ], [ %i.by, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04974.us.ph
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !189
  %i.ck = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cj, ptr %i.ck, align 8, !tbaa !189
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.04974.us.ph
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !189
  %i.cn = getelementptr i8, ptr %i.ck, i64 8
  store double %i.cm, ptr %i.cn, align 8, !tbaa !189
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !189
  %i.cq = getelementptr i8, ptr %i.ck, i64 16
  store double %i.cp, ptr %i.cq, align 8, !tbaa !189
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = getelementptr i8, ptr %i.ck, i64 24
  store double %i.cs, ptr %i.ct, align 8, !tbaa !189
  %i.cu = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.cv = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa168.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cu, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.cu, %scalar.ph.prol ]
  %i.cw = icmp eq i64 %3, %.neg
  br i1 %i.cw, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.dy, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.dx, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04974.us
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !189
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.cy, ptr %i.cz, align 8, !tbaa !189
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.04974.us
  %i.db = load double, ptr %i.da, align 8, !tbaa !189
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  store double %i.db, ptr %i.dc, align 8, !tbaa !189
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.de = load double, ptr %i.dd, align 8, !tbaa !189
  %i.df = getelementptr i8, ptr %i.cz, i64 16
  store double %i.de, ptr %i.df, align 8, !tbaa !189
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !189
  %i.di = getelementptr i8, ptr %i.cz, i64 24
  store double %i.dh, ptr %i.di, align 8, !tbaa !189
  %i.dj = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !189
  %i.dm = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 32
  store double %i.dl, ptr %i.dn, align 8, !tbaa !189
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dj
  %i.dp = load double, ptr %i.do, align 8, !tbaa !189
  %i.dq = getelementptr i8, ptr %i.dm, i64 40
  store double %i.dp, ptr %i.dq, align 8, !tbaa !189
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dj
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !189
  %i.dt = getelementptr i8, ptr %i.dm, i64 48
  store double %i.ds, ptr %i.dt, align 8, !tbaa !189
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dj
  %i.dv = load double, ptr %i.du, align 8, !tbaa !189
  %i.dw = getelementptr i8, ptr %i.dm, i64 56
  store double %i.dv, ptr %i.dw, align 8, !tbaa !189
  %i.dx = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.dy = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dy, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !798

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.by, %middle.block ], [ %.lcssa168.unr, %scalar.ph.prol.loopexit ], [ %i.dx, %scalar.ph ]
  %i.dz = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.ea = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.eb = icmp slt i64 %i.ea, %i.c
  br i1 %i.eb, label %.lr.ph.us, label %.preheader, !llvm.loop !799

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.ec = add nsw i64 %smax, -4
  %i.ed = lshr exact i64 %i.ec, 2
  %i.ee = mul i64 %i.ed, %invariant.op
  %i.ef = shl i64 %5, 2
  %i.eg = add i64 %i.ee, %i.ef
  %i.eh = shl i64 %3, 2
  %i.ei = sub i64 %i.eg, %i.eh
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.ei, %.lr.ph78.split ], [ %i.dz, %._crit_edge.us ]
  %i.ej = icmp slt i64 %i.c, %4
  br i1 %i.ej, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.ek = load ptr, ptr %2, align 8, !tbaa !391   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !392 ; 3 uses
  %i.en = icmp sgt i64 %3, 0
  %i.eo = add i64 %3, %6
  %i.ep = sub i64 %5, %i.eo
  br i1 %i.en, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.eq = ptrtoaddr ptr %i.ek to i64
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.us.us203.us
  %.0178.us185.us.us = phi i64 [ 0, %.lr.ph.us.us203.us ], [ %i.az, %bb.l ] ; 3 uses
  %i.az = add nsw i64 %.0178.us185.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us186.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.az)
  %i.ba = sub nsw i64 %.sroa.speculated.us186.us.us, %.0178.us185.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  %i.bb = mul nsw i64 %.0178.us185.us.us, %9
  %i.bc = getelementptr [8 x i8], ptr %i.au, i64 %i.bb
  store ptr %i.bc, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.aw, i64 noundef %i.ba, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.l unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  %i.bd = icmp slt i64 %i.az, %1
  br i1 %i.bd, label %bb.k, label %..loopexit_crit_edge.split.us187.us.us, !llvm.loop !997

..loopexit_crit_edge.split.us187.us.us:           ; preds = %bb.l
  %i.be = icmp slt i64 %i.av, %2
  br i1 %i.be, label %.lr.ph183.split.us.split.us200.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !998

.lr.ph183.split.us.split.us.us.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %.077182.us.us.us.us = phi i64 [ %i.bf, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bf = add nsw i64 %.077182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bf)
  %i.bg = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.077182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  %i.bh = mul nsw i64 %.077182.us.us.us.us, %4
  %i.bi = getelementptr [8 x i8], ptr %i.as, i64 %i.bh
  store ptr %i.bi, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bg, i64 noundef %i.ar, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.bj = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bk, %bb.o ] ; 4 uses
  %i.bk = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bk)
  %i.bl = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  %i.bm = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bn = getelementptr [8 x i8], ptr %i.bj, i64 %i.bm
  store ptr %i.bn, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bg, i64 noundef %i.bl, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  %i.bo = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bp = getelementptr [8 x i8], ptr %i.au, i64 %i.bo
  store ptr %i.bp, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.bg, i64 noundef %i.bl, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  %i.bq = icmp slt i64 %i.bk, %1
  br i1 %i.bq, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !997

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.br = icmp slt i64 %i.bf, %2
  br i1 %i.br, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !998

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bs = icmp slt i64 %i.aq, %0
  br i1 %i.bs, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !999

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  br label %bb.t

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us199
  %.078195.us = phi i64 [ %i.bu, %..loopexit177_crit_edge.split.us199 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bu = add nsw i64 %.078195.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bu)
  %i.bv = sub nsw i64 %.sroa.speculated128.us, %.078195.us
  %i.bw = getelementptr [8 x i8], ptr %3, i64 %.078195.us
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.us, %.lr.ph183.us
  %.077182.us197 = phi i64 [ 0, %.lr.ph183.us ], [ %i.bx, %.loopexit.us ] ; 3 uses
  %i.bx = add nsw i64 %.077182.us197, %i.b        ; 3 uses
  %.sroa.speculated124.us198 = call i64 @llvm.smin.i64(i64 %2, i64 %i.bx)
  %i.by = sub nsw i64 %.sroa.speculated124.us198, %.077182.us197
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  %i.bz = mul nsw i64 %.077182.us197, %4
  %i.ca = getelementptr [8 x i8], ptr %i.bw, i64 %i.bz
  store ptr %i.ca, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.by, i64 noundef %i.bv, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.cb = icmp slt i64 %i.bx, %2
  br i1 %i.cb, label %bb.p, label %..loopexit177_crit_edge.split.us199, !llvm.loop !998

..loopexit177_crit_edge.split.us199:              ; preds = %.loopexit.us
  %i.cc = icmp slt i64 %i.bu, %0
  br i1 %i.cc, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !999

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us200.us, %bb.p
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us199, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  ret void

bb.s:                                             ; preds = %.invoke
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp254, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bt, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !389
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !394    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !395  ; 12 uses
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
  %7 = shl i64 %i.j, 3                            ; 3 uses
  %8 = or disjoint i64 %7, 24
  %9 = mul i64 %i.g, %8
  %i.l = shl i64 %3, 3                            ; 4 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %9
  %scevgep106 = getelementptr i8, ptr %i.m, i64 %i.l
  %10 = mul i64 %i.g, 24
  %scevgep107 = getelementptr i8, ptr %i.e, i64 %10
  %i.n = or disjoint i64 %7, 16
  %i.o = mul i64 %i.g, %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %i.o
  %scevgep107.a = getelementptr i8, ptr %i.p, i64 %i.l
  %i.q = shl i64 %i.g, 4
  %scevgep108 = getelementptr i8, ptr %i.e, i64 %i.q
  %i.r = or disjoint i64 %7, 8
  %i.s = mul i64 %i.g, %i.r
  %i.t = getelementptr i8, ptr %i.e, i64 %i.s
  %scevgep109 = getelementptr i8, ptr %i.t, i64 %i.l
  %i.u = shl i64 %i.g, 3
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.u
  %i.v = mul i64 %i.g, %i.k
  %11 = shl i64 %i.v, 5
  %scevgep111 = getelementptr i8, ptr %i.e, i64 %11
  %scevgep112 = getelementptr i8, ptr %scevgep111, i64 %i.l
  %i.w = shl i64 %3, 5
  %scevgep113 = getelementptr i8, ptr %1, i64 %i.w
  %i.x = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.y = insertelement <4 x ptr> %i.x, ptr %scevgep109, i64 1
  %i.z = insertelement <4 x ptr> %i.y, ptr %scevgep107.a, i64 2
  %i.aa = insertelement <4 x ptr> %i.z, ptr %scevgep106, i64 3
  %i.ab = insertelement <4 x ptr> poison, ptr %i.e, i64 0
  %i.ac = insertelement <4 x ptr> %i.ab, ptr %scevgep110, i64 1
  %i.ad = insertelement <4 x ptr> %i.ac, ptr %scevgep108, i64 2
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep107, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.af = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.do, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.ag = mul nsw i64 %i.g, %.04460.us
  %i.ah = getelementptr [8 x i8], ptr %i.e, i64 %i.ag ; 4 uses
  %i.ai = or disjoint i64 %.04460.us, 1
  %i.aj = mul nsw i64 %i.g, %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.e, i64 %i.aj ; 4 uses
  %i.al = or disjoint i64 %.04460.us, 2
  %i.am = mul nsw i64 %i.g, %i.al
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 3
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ar = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.at = icmp ult ptr %i.as, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ar ; 2 uses
  %i.au = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.av = icmp ult ptr %i.au, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ar ; 2 uses
  %i.aw = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.ax = icmp ult ptr %i.aw, %scevgep84
  %i.ay = or i1 %i.ax, %mul.overflow
  %i.az = or i1 %i.av, %i.at
  %i.ba = or i1 %i.az, %i.ay
  br i1 %i.ba, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bb = shl i64 %.04559.us, 3                   ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %i.bd = getelementptr i8, ptr %scevgep113, i64 %i.bb
  %i.be = insertelement <4 x ptr> poison, ptr %i.bc, i64 0
  %i.bf = shufflevector <4 x ptr> %i.be, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bg = icmp ult <4 x ptr> %i.bf, %i.aa
  %i.bh = insertelement <4 x ptr> poison, ptr %i.bd, i64 0
  %i.bi = shufflevector <4 x ptr> %i.bh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bj = icmp ult <4 x ptr> %i.ae, %i.bi
  %i.bk = and <4 x i1> %i.bg, %i.bj
  %i.bl = bitcast <4 x i1> %i.bk to i4
  %i.bm = icmp ne i4 %i.bl, 0
  %op.rdx = or i1 %i.bm, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bn = add i64 %.04559.us, %i.af               ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index
  %wide.load = load <2 x double>, ptr %i.bp, align 8, !tbaa !189, !alias.scope !1013
  %.idx = shl i64 %index, 5
  %i.bq = getelementptr i8, ptr %i.bo, i64 %.idx
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.br, align 8, !tbaa !189, !alias.scope !1014
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bs, align 8, !tbaa !189, !alias.scope !1015
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load127 = load <2 x double>, ptr %i.bt, align 8, !tbaa !189, !alias.scope !1016
  %i.bu = shufflevector <2 x double> %wide.load, <2 x double> %wide.load125, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = shufflevector <2 x double> %wide.load126, <2 x double> %wide.load127, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bu, <4 x double> %i.bv, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bq, align 8, !tbaa !189, !alias.scope !1017, !noalias !1018
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !1006

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.bn, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.04358.us.ph
  %i.by = load double, ptr %i.bx, align 8, !tbaa !189
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.by, ptr %i.bz, align 8, !tbaa !189
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04358.us.ph
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !189
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  store double %i.cb, ptr %i.cc, align 8, !tbaa !189
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !189
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  store double %i.ce, ptr %i.cf, align 8, !tbaa !189
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !189
  %i.ci = getelementptr i8, ptr %i.bz, i64 24
  store double %i.ch, ptr %i.ci, align 8, !tbaa !189
  %i.cj = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.ck = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa145.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %i.cl = icmp eq i64 %3, %.neg
  br i1 %i.cl, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dn, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dm, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.04358.us
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !189
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !189
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04358.us
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !189
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !189
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !189
  %i.cu = getelementptr i8, ptr %i.co, i64 16
  store double %i.ct, ptr %i.cu, align 8, !tbaa !189
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !189
  %i.cx = getelementptr i8, ptr %i.co, i64 24
  store double %i.cw, ptr %i.cx, align 8, !tbaa !189
  %i.cy = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !189
  %i.db = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  store double %i.da, ptr %i.dc, align 8, !tbaa !189
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cy
  %i.de = load double, ptr %i.dd, align 8, !tbaa !189
  %i.df = getelementptr i8, ptr %i.db, i64 40
  store double %i.de, ptr %i.df, align 8, !tbaa !189
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cy
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !189
  %i.di = getelementptr i8, ptr %i.db, i64 48
  store double %i.dh, ptr %i.di, align 8, !tbaa !189
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cy
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = getelementptr i8, ptr %i.db, i64 56
  store double %i.dk, ptr %i.dl, align 8, !tbaa !189
  %i.dm = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dn = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1007

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.bn, %middle.block ], [ %.lcssa145.unr, %scalar.ph.prol.loopexit ], [ %i.dm, %scalar.ph ] ; 2 uses
  %i.do = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dp = icmp slt i64 %i.do, %i.c
  br i1 %i.dp, label %.lr.ph.us, label %.preheader, !llvm.loop !1008

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.dq = icmp slt i64 %i.c, %4
  br i1 %i.dq, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dr = load ptr, ptr %2, align 8, !tbaa !394   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !395 ; 3 uses
  %i.du = icmp sgt i64 %3, 0
  br i1 %i.du, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dv = ptrtoaddr ptr %i.dr to i64
  %i.dw = mul i64 %i.dt, -8
  %i.dx = mul i64 %i.dt, %i.b
  %i.dy = shl i64 %i.dx, 5
  %i.dz = add i64 %i.dy, %i.dv
  %i.ea = sub i64 %i.a, %i.dz
  %min.iters.check131 = icmp ult i64 %3, 4
  %n.vec134 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n141 = icmp eq i64 %3, %n.vec134
  %xtraiter146 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!609 = distinct !{!609, !181}
!610 = distinct !{!610, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8ConstantEllRKd"}
!611 = distinct !{!611, !610, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE8ConstantEllRKd: argument 0"}
!612 = distinct !{!612, !181, !271, !272}
!613 = distinct !{!613, !181, !272, !271}
!614 = distinct !{!614, !181, !271, !272}
!615 = distinct !{!615, !181, !272, !271}
!616 = distinct !{!616, !181}
!617 = distinct !{!617, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!618 = distinct !{!618, !617, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!619 = distinct !{!619, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!620 = distinct !{!620, !619, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!621 = distinct !{!621, i1 true, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl"}
!622 = distinct !{!622, !621, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!623 = distinct !{!623, i1 true, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_5BlockINSD_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEESA_E4typeEKSH_EERKS5_RKNS_10MatrixBaseISH_EE"}
!624 = distinct !{!624, !623, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_5BlockINSD_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEESA_E4typeEKSH_EERKS5_RKNS_10MatrixBaseISH_EE: argument 0"}
!625 = distinct !{!625, i1 false, !"LVerDomain"}
!626 = distinct !{!626, !625}
!627 = distinct !{!627, !625}
!628 = distinct !{!628, !181, !271, !272}
!629 = distinct !{!629, !181, !271}
!630 = distinct !{!630, i1 false, !"LVerDomain"}
!631 = distinct !{!631, !630}
!632 = distinct !{!632, !630}
!633 = distinct !{!633, !181, !271, !272}
!634 = distinct !{!634, !181, !271}
!635 = distinct !{!635, !181}
!636 = distinct !{!636, !181}
!637 = distinct !{!637, !181}
!638 = distinct !{!638, !181}
!639 = distinct !{!639, !181}
!640 = !{!579}
!641 = !{!324, !78, i64 96}
!642 = !{!587}
!643 = !{!595}
!644 = !{!596}
!645 = !{!600}
!646 = !{!601}
!647 = !{!605}
!648 = !{!606}
!649 = !{!611}
!650 = !{!618}
!651 = !{!620}
!652 = !{!622}
!653 = !{!624}
!654 = !{!626}
!655 = !{!627}
!656 = !{!631}
!657 = !{!632}
!658 = !{!324, !16, i64 120}
!659 = distinct !{!659, !181, !271, !272}
!660 = distinct !{!660, !181, !272, !271}
!661 = !{!"_ZTSN5Eigen8internal18scalar_opposite_opIdEE"}
!662 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEE", !329, i64 0, !661, i64 128}
!663 = !{!"_ZTSN5Eigen7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEES8_Li0EEE", !662, i64 0, !309, i64 136}
!664 = !{!663, !309, i64 136}
!665 = distinct !{!665, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!666 = distinct !{!666, !665, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!667 = distinct !{!667, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!668 = distinct !{!668, !667, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!669 = distinct !{!669, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!670 = distinct !{!670, !669, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!671 = distinct !{!671, i1 true, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEEE3rowEl"}
!672 = distinct !{!672, !671, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEEE3rowEl: argument 0"}
!673 = !{!666}
!674 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1EEE", !332, i64 0}
!675 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ELb1EEE", !674, i64 0, !309, i64 24, !330, i64 32, !330, i64 40, !116, i64 48}
!676 = !{!675, !116, i64 48}
!677 = !{!668}
!678 = !{!670}
!679 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1EEE", !339, i64 0}
!680 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0ELb1EEE", !679, i64 0, !309, i64 24, !330, i64 32, !330, i64 40, !116, i64 48}
!681 = !{!680, !116, i64 48}
!682 = !{!672}
!683 = distinct !{!683, i1 true, !"_ZNK5Eigen10MatrixBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEE11lazyProductIS4_EEKNS_7ProductIS6_T_Li1EEERKNS0_ISA_EE"}
!684 = distinct !{!684, !683, !"_ZNK5Eigen10MatrixBaseINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEE11lazyProductIS4_EEKNS_7ProductIS6_T_Li1EEERKNS0_ISA_EE: argument 0"}
!685 = distinct !{!685, i1 true, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_7ProductINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEESH_Li1EEESA_E4typeEKSK_EERKS5_RKNS_10MatrixBaseISK_EE"}
!686 = distinct !{!686, !685, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_7ProductINS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEESH_Li1EEESA_E4typeEKSK_EERKS5_RKNS_10MatrixBaseISK_EE: argument 0"}
!687 = !{!684}
!688 = !{!686}
!689 = !{!359, !359, i64 0}
!690 = distinct !{!690, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!691 = distinct !{!691, !690, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!692 = distinct !{!692, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!693 = distinct !{!693, !692, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!694 = distinct !{!694, !181}
!695 = distinct !{!695, !303}
!696 = distinct !{!696, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!697 = distinct !{!697, !696, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!698 = distinct !{!698, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!699 = distinct !{!699, !698, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!700 = distinct !{!700, i1 false, !"LVerDomain"}
!701 = distinct !{!701, !700}
!702 = distinct !{!702, !700}
!703 = distinct !{!703, !181, !271, !272}
!704 = distinct !{!704, !181, !271}
!705 = distinct !{!705, !181}
!706 = distinct !{!706, !181}
!707 = distinct !{!707, !181}
!708 = distinct !{!708, !303}
!709 = distinct !{!709, !181}
!710 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS_7ProductINS_7InverseINS_9FullPivLUIS4_EEEES4_Li1EEEEEEENS0_9assign_opIddEELi1EEE", !357, i64 0, !359, i64 8, !360, i64 16, !309, i64 24}
!711 = !{!710, !309, i64 24}
!712 = !{!710, !357, i64 0}
!713 = !{!710, !359, i64 8}
!714 = !{!691}
!715 = !{!365, !309, i64 24}
!716 = !{!693}
!717 = !{!697}
!718 = !{!699}
!719 = !{!701}
!720 = !{!702}
!721 = distinct !{!721, i1 true, !"_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8IdentityEll"}
!722 = distinct !{!722, !721, !"_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8IdentityEll: argument 0"}
!723 = distinct !{!723, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal18scalar_identity_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_"}
!724 = distinct !{!724, !723, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal18scalar_identity_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_: argument 0"}
!725 = !{!724, !722}
!726 = distinct !{!726, !181, !271, !272}
!727 = distinct !{!727, !181, !272, !271}
!728 = distinct !{!728, !181, !271, !272}
!729 = distinct !{!729, !181, !271}
!730 = distinct !{!730, !181}
!731 = distinct !{!731, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7topRowsIlEENS3_13NRowsBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeES6_"}
!732 = distinct !{!732, !731, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7topRowsIlEENS3_13NRowsBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeES6_: argument 0"}
!733 = distinct !{!733, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE13topLeftCornerIllEEKNS3_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_"}
!734 = distinct !{!734, !733, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE13topLeftCornerIllEEKNS3_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_: argument 0"}
!735 = distinct !{!735, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10bottomRowsIlEEKNS3_18ConstNRowsBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeES6_"}
!736 = distinct !{!736, !735, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10bottomRowsIlEEKNS3_18ConstNRowsBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeES6_: argument 0"}
!737 = distinct !{!737, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10bottomRowsIlEENS3_13NRowsBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeES6_"}
!738 = distinct !{!738, !737, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10bottomRowsIlEENS3_13NRowsBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeES6_: argument 0"}
!739 = distinct !{!739, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE13topLeftCornerIllEEKNS3_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_"}
!740 = distinct !{!740, !739, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE13topLeftCornerIllEEKNS3_18ConstFixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_: argument 0"}
!741 = distinct !{!741, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7topRowsIlEENS3_13NRowsBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeES6_"}
!742 = distinct !{!742, !741, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7topRowsIlEENS3_13NRowsBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeES6_: argument 0"}
!743 = distinct !{!743, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!744 = distinct !{!744, !743, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!745 = distinct !{!745, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!746 = distinct !{!746, !745, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!747 = distinct !{!747, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!748 = distinct !{!748, !747, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!749 = distinct !{!749, !181, !271, !272}
!750 = distinct !{!750, !303}
!751 = distinct !{!751, !181, !271}
!752 = distinct !{!752, !181}
!753 = distinct !{!753, !181, !271, !272}
!754 = distinct !{!754, !303}
!755 = distinct !{!755, !181, !271}
!756 = distinct !{!756, !181}
!757 = !{!324, !78, i64 112}
!758 = !{!732}
!759 = !{!734}
!760 = !{!370, !116, i64 48}
!761 = !{!736}
!762 = !{!738}
!763 = !{!373, !373, i64 0}
!764 = !{!374, !374, i64 0}
!765 = !{!375, !375, i64 0}
!766 = !{!740}
!767 = !{!742}
!768 = !{!744}
!769 = !{!746}
!770 = !{!748}
!771 = distinct !{!771, !181, !271}
!772 = distinct !{!772, !181}
!773 = distinct !{!773, i1 false, !"LVerDomain"}
!774 = distinct !{!774, !773}
!775 = distinct !{!775, !773}
!776 = distinct !{!776, !181, !271, !272}
!777 = distinct !{!777, !181}
!778 = distinct !{!778, !181}
!779 = distinct !{!779, !181}
!780 = distinct !{!780, !181}
!781 = !{!774}
!782 = !{!775}
!783 = distinct !{!783, !181}
!784 = !{i64 2157114060}
!785 = !{i64 2157113065}
!786 = !{i64 2157113463}
!787 = !{i64 2157113662}
!788 = !{i64 2157113861}
!789 = distinct !{!789, !181}
!790 = !{i64 2157113264}
!791 = distinct !{!791, i1 false, !"LVerDomain"}
!792 = distinct !{!792, !791}
!793 = distinct !{!793, !791}
!794 = distinct !{!794, !791}
!795 = distinct !{!795, !791}
!796 = distinct !{!796, !791}
!797 = distinct !{!797, !181, !271, !272}
!798 = distinct !{!798, !181, !271}
!799 = distinct !{!799, !181}
!800 = distinct !{!800, !181, !271, !272}
!801 = distinct !{!801, !303}
!802 = distinct !{!802, !181}
!803 = distinct !{!803, !181, !271}
!804 = !{!792}
!805 = !{!793}
!806 = !{!794}
!807 = !{!795}
!808 = !{!796}
!809 = !{!792, !793, !794, !795}
!810 = distinct !{!810, !181}
!811 = distinct !{!811, !181}
!812 = distinct !{!812, !181}
!813 = distinct !{!813, !181}
!814 = distinct !{!814, !181, !271, !272}
!815 = distinct !{!815, !303}
!816 = distinct !{!816, !181}
!817 = distinct !{!817, !181, !271}
!818 = !{i64 2159015260}
!819 = distinct !{!819, !181}
!820 = distinct !{!820, !181}
!821 = distinct !{!821, !181}
!822 = distinct !{!822, !181}
!823 = distinct !{!823, !181}
!824 = distinct !{!824, !181}
!825 = distinct !{!825, !181}
!826 = distinct !{!826, !181}
!827 = distinct !{!827, !181}
!828 = distinct !{!828, !181}
!829 = distinct !{!829, !181}
!830 = distinct !{!830, !181}
!831 = distinct !{!831, !181}
!832 = distinct !{!832, !181}
!833 = distinct !{!833, !303}
!834 = distinct !{!834, !181}
!835 = !{i64 2159006604}
!836 = !{i64 2159007427}
!837 = !{i64 2159007481}
!838 = !{i64 2159007544}
!839 = !{i64 2159008373}
!840 = !{i64 2159008427}
!841 = !{i64 2159008490}
!842 = !{i64 2159009319}
!843 = !{i64 2159009373}
!844 = !{i64 2159009436}
!845 = !{i64 2159010265}
!846 = !{i64 2159010319}
!847 = !{i64 2159010382}
!848 = !{i64 2159011211}
!849 = !{i64 2159011265}
!850 = !{i64 2159011328}
!851 = !{i64 2159012157}
!852 = !{i64 2159012211}
!853 = !{i64 2159012274}
!854 = !{i64 2159013103}
!855 = !{i64 2159013157}
!856 = !{i64 2159013220}
!857 = !{i64 2159014049}
!858 = !{i64 2159014103}
!859 = !{i64 2159014166}
!860 = !{i64 2159014218}
!861 = !{i64 2159015039}
!862 = !{i64 2159015093}
!863 = !{i64 2159015156}
!864 = !{i64 2158995039}
!865 = !{i64 2158996310}
!866 = !{i64 2158996364}
!867 = !{i64 2158997578}
!868 = !{i64 2158997632}
!869 = !{i64 2158998846}
!870 = !{i64 2158998900}
!871 = !{i64 2159000114}
!872 = !{i64 2159000168}
!873 = !{i64 2159001382}
!874 = !{i64 2159001436}
!875 = !{i64 2159002650}
!876 = !{i64 2159002704}
!877 = !{i64 2159003918}
!878 = !{i64 2159003972}
!879 = !{i64 2159005186}
!880 = !{i64 2159005240}
!881 = !{i64 2159005292}
!882 = !{i64 2159006498}
!883 = !{i64 2159006552}
!884 = distinct !{!884, !181}
!885 = distinct !{!885, !181}
!886 = distinct !{!886, !181}
!887 = distinct !{!887, !181}
!888 = distinct !{!888, !181}
!889 = distinct !{!889, !181}
!890 = distinct !{!890, !181}
!891 = !{i64 2158955268}
!892 = !{i64 2158955031}
!893 = !{i64 2158955084}
!894 = !{i64 2158955210}
!895 = !{i64 2158955326}
!896 = !{i64 2158955382}
!897 = !{i64 2158955941}
!898 = !{i64 2158956007}
!899 = !{i64 2158956070}
!900 = !{i64 2158956635}
!901 = !{i64 2158956701}
!902 = !{i64 2158956764}
!903 = !{i64 2158957329}
!904 = !{i64 2158957395}
!905 = !{i64 2158957458}
!906 = !{i64 2158958023}
!907 = !{i64 2158958089}
!908 = !{i64 2158958152}
!909 = !{i64 2158958717}
!910 = !{i64 2158958783}
!911 = !{i64 2158958846}
!912 = !{i64 2158959411}
!913 = !{i64 2158959477}
!914 = !{i64 2158959540}
!915 = !{i64 2158960105}
!916 = !{i64 2158960171}
!917 = !{i64 2158960234}
!918 = !{i64 2158960799}
!919 = !{i64 2158960865}
!920 = !{i64 2158960928}
!921 = !{i64 2158960992}
!922 = !{i64 2158961549}
!923 = !{i64 2158961615}
!924 = !{i64 2158961678}
!925 = distinct !{!925, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!926 = distinct !{!926, !925, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!927 = distinct !{!927, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl"}
!928 = distinct !{!928, !927, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!929 = distinct !{!929, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl"}
!930 = distinct !{!930, !929, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!931 = distinct !{!931, !181}
!932 = distinct !{!932, !303}
!933 = distinct !{!933, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!934 = distinct !{!934, !933, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!935 = distinct !{!935, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl"}
!936 = distinct !{!936, !935, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!937 = distinct !{!937, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl"}
!938 = distinct !{!938, !937, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!939 = distinct !{!939, !181}
!940 = distinct !{!940, !303}
!941 = !{!926}
!942 = !{!928}
!943 = !{!930}
!944 = !{!934}
!945 = !{!936}
!946 = !{!938}
!947 = !{!411, !411, i64 0}
!948 = distinct !{!948, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl"}
!949 = distinct !{!949, !948, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!950 = distinct !{!950, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl"}
!951 = distinct !{!951, !950, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!952 = distinct !{!952, !181}
!953 = distinct !{!953, !303}
!954 = distinct !{!954, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl"}
!955 = distinct !{!955, !954, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!956 = distinct !{!956, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl"}
!957 = distinct !{!957, !956, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!958 = distinct !{!958, !181}
!959 = distinct !{!959, !181}
!960 = distinct !{!960, !181}
!961 = distinct !{!961, !303}
!962 = distinct !{!962, !181}
!963 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_5BlockIKS4_Lin1ELin1ELb0EEENS7_IS4_Lin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi1EEE", !357, i64 0, !411, i64 8, !360, i64 16, !309, i64 24}
!964 = !{!963, !309, i64 24}
!965 = !{!963, !357, i64 0}
!966 = !{!963, !411, i64 8}
!967 = !{!949}
!968 = !{!951}
!969 = !{!955}
!970 = !{!957}
!971 = distinct !{!971, !181}
!972 = distinct !{!972, !181}
!973 = distinct !{!973, !181}
!974 = distinct !{!974, !181}
!975 = distinct !{!975, !181}
!976 = distinct !{!976, !181}
!977 = distinct !{!977, !181}
!978 = distinct !{!978, !181}
!979 = distinct !{!979, !181}
!980 = distinct !{!980, !181, !271, !272}
!981 = distinct !{!981, !303}
!982 = distinct !{!982, !181, !271}
!983 = distinct !{!983, !181}
!984 = distinct !{!984, !181}
!985 = distinct !{!985, !181}
!986 = distinct !{!986, !181}
!987 = distinct !{!987, !181}
!988 = distinct !{!988, !181}
!989 = distinct !{!989, !181}
!990 = distinct !{!990, !181}
!991 = distinct !{!991, !181}
!992 = distinct !{!992, !181}
!993 = distinct !{!993, !303}
!994 = distinct !{!994, !303}
!995 = distinct !{!995, !181}
!996 = distinct !{!996, !181}
!997 = distinct !{!997, !181}
!998 = distinct !{!998, !181}
!999 = distinct !{!999, !181}
!1000 = distinct !{!1000, i1 false, !"LVerDomain"}
!1001 = distinct !{!1001, !1000}
!1002 = distinct !{!1002, !1000}
!1003 = distinct !{!1003, !1000}
!1004 = distinct !{!1004, !1000}
!1005 = distinct !{!1005, !1000}
!1006 = distinct !{!1006, !181, !271, !272}
!1007 = distinct !{!1007, !181, !271}
!1008 = distinct !{!1008, !181}
!1009 = distinct !{!1009, !181, !271, !272}
!1010 = distinct !{!1010, !303}
!1011 = distinct !{!1011, !181}
!1012 = distinct !{!1012, !181, !271}
!1013 = !{!1001}
!1014 = !{!1002}
!1015 = !{!1003}
!1016 = !{!1004}
!1017 = !{!1005}
!1018 = !{!1001, !1002, !1003, !1004}
!1019 = distinct !{!1019, i1 false, !"LVerDomain"}
!1020 = distinct !{!1020, !1019}
!1021 = distinct !{!1021, !1019}
!1022 = distinct !{!1022, !181, !271, !272}
!1023 = distinct !{!1023, !303}
!1024 = distinct !{!1024, !181}
!1025 = distinct !{!1025, !181, !271}
!1026 = distinct !{!1026, i1 false, !"LVerDomain"}
!1027 = distinct !{!1027, !1026}
!1028 = distinct !{!1028, !1026}
!1029 = distinct !{!1029, !181, !271, !272}
!1030 = distinct !{!1030, !181}
!1031 = distinct !{!1031, !181}
!1032 = distinct !{!1032, !181, !271}
!1033 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_IS5_EENS0_13sub_assign_opIddEELi0EEE", !373, i64 0, !357, i64 8, !374, i64 16, !375, i64 24}
!1034 = !{!1033, !375, i64 24}
!1035 = !{!1020}
!1036 = !{!1021}
!1037 = !{!1033, !357, i64 8}
!1038 = !{!1033, !373, i64 0}
!1039 = !{!1027}
!1040 = !{!1028}
!1041 = distinct !{!1041, !181, !271, !272}
!1042 = distinct !{!1042, !181, !271}
!1043 = distinct !{!1043, i1 false, !"LVerDomain"}
!1044 = distinct !{!1044, !1043}
!1045 = distinct !{!1045, !1043}
!1046 = distinct !{!1046, !181, !271, !272}
!1047 = distinct !{!1047, !181, !271}
!1048 = distinct !{!1048, !181}
!1049 = distinct !{!1049, !181}
!1050 = distinct !{!1050, !181}
!1051 = distinct !{!1051, !181}
!1052 = distinct !{!1052, !181}
!1053 = distinct !{!1053, !181}
!1054 = !{!1044}
!1055 = !{!1045}
!1056 = distinct !{!1056, i1 true, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEEE3rowEl"}
!1057 = distinct !{!1057, !1056, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEEE3rowEl: argument 0"}
!1058 = distinct !{!1058, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl"}
!1059 = distinct !{!1059, !1058, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl: argument 0"}
!1060 = !{!1057}
!1061 = !{!1059}
!1062 = !{!"_ZTSN5Eigen9BlockImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ENS_5DenseEEE", !337, i64 0}
!1063 = !{!"_ZTSN5Eigen5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEE", !1062, i64 0}
!1064 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi0EEE"}
!1065 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb1ELb1EEE", !412, i64 0, !1063, i64 24, !330, i64 80, !1064, i64 88, !116, i64 96}
!1066 = !{!1065, !116, i64 96}
!1067 = distinct !{!1067, i1 true, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEELi1ELin1ELb0EEEE3rowEl"}
!1068 = distinct !{!1068, !1067, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEELi1ELin1ELb0EEEE3rowEl: argument 0"}
!1069 = distinct !{!1069, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!1070 = distinct !{!1070, !1069, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!1071 = distinct !{!1071, !181, !271, !272}
!1072 = distinct !{!1072, !181, !271}
!1073 = !{!1068}
!1074 = !{!1070}
!1075 = distinct !{!1075, !181}
!1076 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS2_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEEEE", !124, i64 0, !331, i64 8, !330, i64 16}
!1077 = !{!1076, !124, i64 0}
!1078 = distinct !{!1078, i1 true, !"_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8IdentityEll"}
!1079 = distinct !{!1079, !1078, !"_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8IdentityEll: argument 0"}
!1080 = distinct !{!1080, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal18scalar_identity_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_"}
!1081 = distinct !{!1081, !1080, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal18scalar_identity_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_: argument 0"}
!1082 = !{!1081, !1079}
!1083 = distinct !{!1083, !181, !271, !272}
!1084 = distinct !{!1084, !303}
!1085 = distinct !{!1085, !181, !271}
!1086 = distinct !{!1086, !181}
!1087 = distinct !{!1087, !181}
!1088 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEEEE", !124, i64 0, !331, i64 8, !330, i64 16}
!1089 = !{!1088, !124, i64 0}
!1090 = !{!"_ZTSN5Eigen9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !309, i64 0}
!1091 = !{!1090, !309, i64 0}
!1092 = !{!"p1 _ZTSN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEE", !21, i64 0}
!1093 = !{!"_ZTSN5Eigen9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEE", !1092, i64 0}
!1094 = !{!1093, !1092, i64 0}
!1095 = distinct !{!1095, i1 true, !"_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8IdentityEll"}
!1096 = distinct !{!1096, !1095, !"_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8IdentityEll: argument 0"}
!1097 = distinct !{!1097, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal18scalar_identity_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_"}
!1098 = distinct !{!1098, !1097, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal18scalar_identity_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_: argument 0"}
!1099 = !{!1098, !1096}
!1100 = distinct !{!1100, !181}
!1101 = distinct !{!1101, !181}
!1102 = distinct !{!1102, !303}
!1103 = distinct !{!1103, !181, !271, !272}
!1104 = distinct !{!1104, !181}
!1105 = distinct !{!1105, !181, !272, !271}
!1106 = distinct !{!1106, i1 false, !"LVerDomain"}
!1107 = distinct !{!1107, !1106}
!1108 = distinct !{!1108, !1106}
!1109 = distinct !{!1109, !181, !271, !272}
!1110 = distinct !{!1110, !303}
!1111 = distinct !{!1111, i1 false, !"LVerDomain"}
!1112 = distinct !{!1112, !1111}
!1113 = distinct !{!1113, !1111}
!1114 = distinct !{!1114, !181, !271, !272}
!1115 = distinct !{!1115, !303}
!1116 = distinct !{!1116, !181, !271}
!1117 = distinct !{!1117, !181, !271}
!1118 = !{!1107}
!1119 = !{!1108}
!1120 = !{!1112}
!1121 = !{!1113}
!1122 = distinct !{!1122, !181, !271, !272}
!1123 = distinct !{!1123, !181, !271}
!1124 = distinct !{!1124, !181}
!1125 = distinct !{!1125, !181}
!1126 = distinct !{!1126, i1 true, !"_ZNK5Eigen10MatrixBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEEEmlIS8_EEKNS_7ProductISC_T_Li0EEERKNS0_ISG_EE"}
!1127 = distinct !{!1127, !1126, !"_ZNK5Eigen10MatrixBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEEEmlIS8_EEKNS_7ProductISC_T_Li0EEERKNS0_ISG_EE: argument 0"}
!1128 = distinct !{!1128, i1 true, !"_ZNK8LightGBM4Tree10LeafCoeffsEi"}
!1129 = distinct !{!1129, !1128, !"_ZNK8LightGBM4Tree10LeafCoeffsEi: argument 0"}
!1130 = distinct !{!1130, !181}
!1131 = distinct !{!1131, !303}
!1132 = distinct !{!1132, !181}
!1133 = distinct !{!1133, !181, !271, !272}
!1134 = distinct !{!1134, !181, !271}
!1135 = !{!1127}
!1136 = !{!1129}
!1137 = distinct !{!1137, !181}
!1138 = distinct !{!1138, !181}
!1139 = distinct !{!1139, !181}
!1140 = !{!"_ZTSNSt12_Vector_baseIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE12_Vector_implE", !266, i64 0}
!1141 = !{!"_ZTSSt12_Vector_baseIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE", !1140, i64 0}
!1142 = !{!"_ZTSSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE", !1141, i64 0}
!1143 = !{!"_ZTSN8LightGBM23ParallelPartitionRunnerIiLb1EEE", !17, i64 0, !17, i64 4, !75, i64 8, !75, i64 32, !75, i64 56, !75, i64 80, !75, i64 104, !75, i64 128, !75, i64 152}
!1144 = !{!"_ZTSN8LightGBM13DataPartitionE", !17, i64 0, !17, i64 4, !75, i64 8, !75, i64 32, !1142, i64 56, !71, i64 80, !17, i64 88, !1143, i64 96}
!1145 = !{!1144, !17, i64 4}
!1146 = distinct !{!1146, !181}
!1147 = distinct !{!1147, !181}
!1148 = distinct !{!1148, !181}
!1149 = distinct !{!1149, !181}
!1150 = distinct !{!1150, !181}
!1151 = distinct !{!1151, !181}
!1152 = distinct !{!1152, !181, !271, !272}
!1153 = distinct !{!1153, !181, !271}
!1154 = distinct !{!1154, i1 true, !"_ZNK8LightGBM4Tree12LeafFeaturesEi"}
!1155 = distinct !{!1155, !1154, !"_ZNK8LightGBM4Tree12LeafFeaturesEi: argument 0"}
!1156 = distinct !{!1156, i1 true, !"_ZNK8LightGBM4Tree15branch_featuresEi"}
!1157 = distinct !{!1157, !1156, !"_ZNK8LightGBM4Tree15branch_featuresEi: argument 0"}
!1158 = distinct !{!1158, !181}
!1159 = distinct !{!1159, !181}
!1160 = distinct !{!1160, !181}
!1161 = distinct !{!1161, !181}
!1162 = !{!1155}
!1163 = !{!1157}
!1164 = distinct !{!1164, !181, !271, !272}
!1165 = distinct !{!1165, !181, !271}
!1166 = distinct !{!1166, i1 true, !"_ZNK8LightGBM4Tree12LeafFeaturesEi"}
!1167 = distinct !{!1167, !1166, !"_ZNK8LightGBM4Tree12LeafFeaturesEi: argument 0"}
!1168 = distinct !{!1168, i1 true, !"_ZNK8LightGBM4Tree15branch_featuresEi"}
!1169 = distinct !{!1169, !1168, !"_ZNK8LightGBM4Tree15branch_featuresEi: argument 0"}
!1170 = distinct !{!1170, !181}
!1171 = distinct !{!1171, !181}
!1172 = distinct !{!1172, !181}
!1173 = distinct !{!1173, !181}
!1174 = !{!1167}
!1175 = !{!1169}
!1176 = distinct !{}
!1177 = distinct !{!1177, !1179}
!1178 = distinct !{!1178, !181}
!1179 = !{!"llvm.loop.parallel_accesses", !1176}
!1180 = distinct !{!1180, !181}
!1181 = distinct !{!1181, !181}
!1182 = distinct !{!1182, !181, !271, !272}
!1183 = distinct !{!1183, !181}
!1184 = distinct !{!1184, !181, !272, !271}
!1185 = distinct !{!1185, i1 false, !"LVerDomain"}
!1186 = distinct !{!1186, !1185}
!1187 = distinct !{!1187, !1185}
!1188 = distinct !{!1188, !181, !271, !272}
!1189 = distinct !{!1189, !303}
!1190 = distinct !{!1190, i1 false, !"LVerDomain"}
!1191 = distinct !{!1191, !1190}
!1192 = distinct !{!1192, !1190}
!1193 = distinct !{!1193, !181, !271, !272}
!1194 = distinct !{!1194, !303}
!1195 = distinct !{!1195, !181, !271}
!1196 = distinct !{!1196, !181, !271}
!1197 = !{!1186}
!1198 = !{!1187}
!1199 = !{!1191}
!1200 = !{!1192}
!1201 = distinct !{!1201, !181, !271, !272}
!1202 = distinct !{!1202, !181, !271}
!1203 = distinct !{!1203, !181}
!1204 = distinct !{!1204, !181}
!1205 = distinct !{!1205, i1 true, !"_ZNK5Eigen10MatrixBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEEEmlIS8_EEKNS_7ProductISC_T_Li0EEERKNS0_ISG_EE"}
!1206 = distinct !{!1206, !1205, !"_ZNK5Eigen10MatrixBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_7InverseINS_9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEEEEEmlIS8_EEKNS_7ProductISC_T_Li0EEERKNS0_ISG_EE: argument 0"}
!1207 = distinct !{!1207, i1 true, !"_ZNK8LightGBM4Tree10LeafCoeffsEi"}
!1208 = distinct !{!1208, !1207, !"_ZNK8LightGBM4Tree10LeafCoeffsEi: argument 0"}
!1209 = distinct !{!1209, !181}
!1210 = distinct !{!1210, !303}
!1211 = distinct !{!1211, !181}
!1212 = distinct !{!1212, !181, !271, !272}
!1213 = distinct !{!1213, !181, !271}
!1214 = !{!1206}
!1215 = !{!1208}
!1216 = distinct !{!1216, !181}
!1217 = distinct !{!1217, !181}
!1218 = distinct !{!1218, !303}
end_hunk_2
