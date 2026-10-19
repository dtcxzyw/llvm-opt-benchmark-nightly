Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_dense?download=true
inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 137
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_:bb.a
  store i32 6144, ptr %2, align 4, !tbaa !81
  br label %bb.bj

bb.al:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !81
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  store i32 12288, ptr %2, align 4, !tbaa !81
  br label %bb.bj

bb.an:                                            ; preds = %bb.c
  store i32 16384, ptr %2, align 4, !tbaa !81
  br label %bb.bj

bb.ao:                                            ; preds = %bb.c
  store i32 6144, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.ap:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.aq:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.ar:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.as:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.at:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.au:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.av:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.aw:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.ax:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.ay:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.az:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.ba:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.bb:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.bc:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.bd:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.be:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !81
  br label %bb.bj

bb.bf:                                            ; preds = %bb.c
  store i32 2048, ptr %2, align 4, !tbaa !81
  br label %bb.bj

bb.bg:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !81
  br label %bb.bj

bb.bh:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !81
  br label %bb.bj

bb.bi:                                            ; preds = %bb.c
  store i32 3072, ptr %2, align 4, !tbaa !81
  br label %bb.bj

bb.bj:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.aj, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1290

.thread:                                          ; preds = %bb.ai
  store i32 4096, ptr %1, align 4, !tbaa !81
  store i32 4096, ptr %2, align 4, !tbaa !81
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not78 = icmp eq i64 %indvars.iv.next77, 14
  br i1 %exitcond.not78, label %.thread80, label %.outer, !llvm.loop !1290

.thread80:                                        ; preds = %.thread, %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !81
  %i.o = load i32, ptr %2, align 4, !tbaa !81
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread80
  store i32 0, ptr %2, align 4, !tbaa !81
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread80, %bb.b
  %i.q = load i32, ptr %0, align 4, !tbaa !81
  %i.r = shl nsw i32 %i.q, 10
  store i32 %i.r, ptr %0, align 4, !tbaa !81
  %i.s = load i32, ptr %1, align 4, !tbaa !81
  %i.t = shl nsw i32 %i.s, 10
  store i32 %i.t, ptr %1, align 4, !tbaa !81
  %i.u = load i32, ptr %2, align 4, !tbaa !81
  %i.v = shl nsw i32 %i.u, 10
  store i32 %i.v, ptr %2, align 4, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #24

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !533
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !535    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !536  ; 12 uses
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
  %i.r = shl i64 %6, 5
  %scevgep104 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = add i64 %6, %3
  %i.t = shl i64 %i.s, 5
  %scevgep106 = getelementptr i8, ptr %1, i64 %i.t
  %i.u = mul i64 %i.h, 24
  %scevgep108 = getelementptr i8, ptr %i.f, i64 %i.u
  %smax109 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.v = add nsw i64 %smax109, -4                 ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = shl i64 %i.v, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 24
  %i.z = mul i64 %i.h, %i.y
  %i.aa = shl i64 %3, 3                           ; 4 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep110 = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ac = shl i64 %i.h, 4
  %scevgep111 = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ad = or disjoint i64 %i.x, 16
  %i.ae = mul i64 %i.h, %i.ad
  %i.af = getelementptr i8, ptr %i.f, i64 %i.ae
  %scevgep112 = getelementptr i8, ptr %i.af, i64 %i.aa
  %i.ag = shl i64 %i.h, 3
  %scevgep113 = getelementptr i8, ptr %i.f, i64 %i.ag
  %i.ah = or disjoint i64 %i.x, 8
  %i.ai = mul i64 %i.h, %i.ah
  %i.aj = getelementptr i8, ptr %i.f, i64 %i.ai
  %scevgep114 = getelementptr i8, ptr %i.aj, i64 %i.aa
  %i.ak = mul i64 %i.h, %i.w
  %i.al = shl i64 %i.ak, 5
  %i.am = getelementptr i8, ptr %i.f, i64 %i.al
  %scevgep115 = getelementptr i8, ptr %i.am, i64 %i.aa
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check119 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.an = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.dn, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.dm, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.ao = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ap = mul nsw i64 %i.h, %.05076.us
  %i.aq = getelementptr [8 x i8], ptr %i.f, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.05076.us, 1
  %i.as = mul nsw i64 %i.h, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.f, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.05076.us, 2
  %i.av = mul nsw i64 %i.h, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.f, i64 %i.av ; 4 uses
  %i.ax = or disjoint i64 %.05076.us, 3
  %i.ay = mul nsw i64 %i.h, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.f, i64 %i.ay ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ba = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bc = icmp ult ptr %i.bb, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.ba ; 2 uses
  %i.bd = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.be = icmp ult ptr %i.bd, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.ba ; 2 uses
  %i.bf = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bg = icmp ult ptr %i.bf, %scevgep103
  %i.bh = or i1 %i.bg, %mul.overflow
  %i.bi = or i1 %i.be, %i.bc
  %i.bj = or i1 %i.bi, %i.bh
  br i1 %i.bj, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bk = shl i64 %.05175.us, 3                   ; 2 uses
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.bk ; 4 uses
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.bk ; 4 uses
  %bound0 = icmp ult ptr %scevgep105, %scevgep110
  %bound1 = icmp ult ptr %scevgep108, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %scevgep105, %scevgep112
  %bound1117.a = icmp ult ptr %scevgep111, %scevgep107
  %found.conflict118 = and i1 %bound0116, %bound1117.a
  %7 = or i1 %found.conflict118, %stride.check119
  %conflict.rdx = or i1 %found.conflict, %7
  %bound0120 = icmp ult ptr %scevgep105, %scevgep114
  %bound1121 = icmp ult ptr %scevgep113, %scevgep107
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx124 = or i1 %found.conflict122, %conflict.rdx
  %bound0125 = icmp ult ptr %scevgep105, %scevgep115
  %bound1126 = icmp ult ptr %i.f, %scevgep107
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx129 = or i1 %found.conflict127, %conflict.rdx124
  br i1 %conflict.rdx129, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bl = add i64 %i.ao, %i.an                    ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %1, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load = load <2 x double>, ptr %i.bn, align 8, !tbaa !370, !alias.scope !1305
  %.idx = shl i64 %index, 5
  %i.bo = getelementptr i8, ptr %i.bm, i64 %.idx
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load130 = load <2 x double>, ptr %i.bp, align 8, !tbaa !370, !alias.scope !1306
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load131 = load <2 x double>, ptr %i.bq, align 8, !tbaa !370, !alias.scope !1307
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index
  %wide.load132 = load <2 x double>, ptr %i.br, align 8, !tbaa !370, !alias.scope !1308
  %i.bs = shufflevector <2 x double> %wide.load, <2 x double> %wide.load130, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bt = shufflevector <2 x double> %wide.load131, <2 x double> %wide.load132, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bs, <4 x double> %i.bt, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bo, align 8, !tbaa !370, !alias.scope !1309, !noalias !1310
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !1298

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %vector.scevcheck ], [ %i.ao, %.lr.ph.us ], [ %i.bl, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04974.us.ph
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !370
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.bw, ptr %i.bx, align 8, !tbaa !370
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04974.us.ph
  %i.bz = load double, ptr %i.by, align 8, !tbaa !370
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  store double %i.bz, ptr %i.ca, align 8, !tbaa !370
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04974.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !370
  %i.cd = getelementptr i8, ptr %i.bx, i64 16
  store double %i.cc, ptr %i.cd, align 8, !tbaa !370
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04974.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !370
  %i.cg = getelementptr i8, ptr %i.bx, i64 24
  store double %i.cf, ptr %i.cg, align 8, !tbaa !370
  %i.ch = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.ci = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa149.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.ci, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.ch, %scalar.ph.prol ]
  %i.cj = icmp eq i64 %3, %.neg
  br i1 %i.cj, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.dl, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.dk, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04974.us
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !370
  %i.cm = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.cl, ptr %i.cm, align 8, !tbaa !370
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04974.us
  %i.co = load double, ptr %i.cn, align 8, !tbaa !370
  %i.cp = getelementptr i8, ptr %i.cm, i64 8
  store double %i.co, ptr %i.cp, align 8, !tbaa !370
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04974.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !370
  %i.cs = getelementptr i8, ptr %i.cm, i64 16
  store double %i.cr, ptr %i.cs, align 8, !tbaa !370
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04974.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !370
  %i.cv = getelementptr i8, ptr %i.cm, i64 24
  store double %i.cu, ptr %i.cv, align 8, !tbaa !370
  %i.cw = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !370
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 32
  store double %i.cy, ptr %i.da, align 8, !tbaa !370
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cw
  %i.dc = load double, ptr %i.db, align 8, !tbaa !370
  %i.dd = getelementptr i8, ptr %i.cz, i64 40
  store double %i.dc, ptr %i.dd, align 8, !tbaa !370
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cw
  %i.df = load double, ptr %i.de, align 8, !tbaa !370
  %i.dg = getelementptr i8, ptr %i.cz, i64 48
  store double %i.df, ptr %i.dg, align 8, !tbaa !370
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cw
  %i.di = load double, ptr %i.dh, align 8, !tbaa !370
  %i.dj = getelementptr i8, ptr %i.cz, i64 56
  store double %i.di, ptr %i.dj, align 8, !tbaa !370
  %i.dk = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.dl = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1299

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.bl, %middle.block ], [ %.lcssa149.unr, %scalar.ph.prol.loopexit ], [ %i.dk, %scalar.ph ]
  %i.dm = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.dn = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.c
  br i1 %i.do, label %.lr.ph.us, label %.preheader, !llvm.loop !1300

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.dp = add nsw i64 %smax, -4
  %i.dq = lshr exact i64 %i.dp, 2
  %i.dr = mul i64 %i.dq, %invariant.op
  %i.ds = shl i64 %5, 2
  %i.dt = add i64 %i.dr, %i.ds
  %i.du = shl i64 %3, 2
  %i.dv = sub i64 %i.dt, %i.du
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.dv, %.lr.ph78.split ], [ %i.dm, %._crit_edge.us ]
  %i.dw = icmp slt i64 %i.c, %4
  br i1 %i.dw, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.dx = load ptr, ptr %2, align 8, !tbaa !535   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !536 ; 3 uses
  %i.ea = icmp sgt i64 %3, 0
  %i.eb = add i64 %3, %6
  %i.ec = sub i64 %5, %i.eb
  br i1 %i.ea, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ed = ptrtoaddr ptr %i.dx to i64
  %i.ee = mul i64 %i.dz, %i.b
  %i.ef = shl i64 %i.ee, 5
  %i.eg = add i64 %i.ef, %i.ed
  %i.eh = sub i64 %i.a, %i.eg
  %i.ei = mul i64 %i.dz, -8
  %min.iters.check136 = icmp ult i64 %3, 4
  %n.vec138 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n145 = icmp eq i64 %3, %n.vec138
  %xtraiter151 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br label %.lr.ph

._crit_edge85.split:                              ; preds = %._crit_edge, %.lr.ph84, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04883 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fg, %._crit_edge ] ; 2 uses
  %.282 = phi i64 [ %.051.lcssa, %.lr.ph.preheader ], [ %i.ff, %._crit_edge ]
  %i.ej = add i64 %.282, %6                       ; 5 uses
  %i.ek = mul nsw i64 %i.dz, %.04883
  %i.el = getelementptr [8 x i8], ptr %i.dx, i64 %i.ek ; 6 uses
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph
  %i.em = mul i64 %i.ei, %indvar
  %i.en = add i64 %i.eh, %i.em
  %i.eo = shl i64 %i.ej, 3
  %i.ep = add i64 %i.en, %i.eo
  %i.eq = add i64 %i.ep, -1
  %diff.check = icmp ult i64 %i.eq, 31
  br i1 %diff.check, label %scalar.ph135.preheader, label %vector.ph137

vector.ph137:                                     ; preds = %vector.memcheck134
  %i.er = add i64 %i.ej, %n.vec138                ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %1, i64 %i.ej
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next143, %vector.body139 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %index140 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load141 = load <2 x double>, ptr %i.et, align 8, !tbaa !370
  %wide.load142 = load <2 x double>, ptr %i.eu, align 8, !tbaa !370
  %i.ev = getelementptr [8 x i8], ptr %i.es, i64 %index140 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <2 x double> %wide.load141, ptr %i.ev, align 8, !tbaa !370
  store <2 x double> %wide.load142, ptr %i.ew, align 8, !tbaa !370
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.ex, label %middle.block144, label %vector.body139, !llvm.loop !1301

middle.block144:                                  ; preds = %vector.body139
  br i1 %cmp.n145, label %._crit_edge, label %scalar.ph135.preheader

scalar.ph135.preheader:                           ; preds = %vector.memcheck134, %.lr.ph, %middle.block144
  %.081.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph ], [ %n.vec138, %middle.block144 ] ; 3 uses
  %.380.ph = phi i64 [ %i.ej, %vector.memcheck134 ], [ %i.ej, %.lr.ph ], [ %i.er, %middle.block144 ] ; 2 uses
  br i1 %lcmp.mod152.not, label %scalar.ph135.prol.loopexit, label %scalar.ph135.prol
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_NS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS7_SE_RKd:bb.a
  %i.cq = add nsw i64 %i.ch, -2
  %xtraiter = and i64 %i.cp, 3                    ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 3
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i29.epil.preheader, label %.lr.ph.i.i.i.i.i.i29.preheader.new

.lr.ph.i.i.i.i.i.i29.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i29.preheader
  %unroll_iter = and i64 %i.cp, -4
  br label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i29.preheader.new
  %.01724.i.i.i.i.i.i30 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %i.dx, %.lr.ph.i.i.i.i.i.i29 ] ; 6 uses
  %.02223.i.i.i.i.i.i31 = phi double [ %i.cn, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %i.dw, %.lr.ph.i.i.i.i.i.i29 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i29 ]
  %i.cs = mul nsw i64 %.01724.i.i.i.i.i.i30, %i.ck
  %i.ct = getelementptr [8 x i8], ptr %i.cc, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !370
  %i.cv = getelementptr [8 x i8], ptr %i.cf, i64 %.01724.i.i.i.i.i.i30
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !370
  %i.cx = fmul double %i.cu, %i.cw
  %i.cy = fadd double %.02223.i.i.i.i.i.i31, %i.cx
  %i.cz = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 1 ; 2 uses
  %i.da = mul nsw i64 %i.cz, %i.ck
  %i.db = getelementptr [8 x i8], ptr %i.cc, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !370
  %i.dd = getelementptr [8 x i8], ptr %i.cf, i64 %i.cz
  %i.de = load double, ptr %i.dd, align 8, !tbaa !370
  %i.df = fmul double %i.dc, %i.de
  %i.dg = fadd double %i.cy, %i.df
  %i.dh = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 2 ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.ck
  %i.dj = getelementptr [8 x i8], ptr %i.cc, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !370
  %i.dl = getelementptr [8 x i8], ptr %i.cf, i64 %i.dh
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !370
  %i.dn = fmul double %i.dk, %i.dm
  %i.do = fadd double %i.dg, %i.dn
  %i.dp = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 3 ; 2 uses
  %i.dq = mul nsw i64 %i.dp, %i.ck
  %i.dr = getelementptr [8 x i8], ptr %i.cc, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !370
  %i.dt = getelementptr [8 x i8], ptr %i.cf, i64 %i.dp
  %i.du = load double, ptr %i.dt, align 8, !tbaa !370
  %i.dv = fmul double %i.ds, %i.du
  %i.dw = fadd double %i.do, %i.dv                ; 3 uses
  %i.dx = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i29, !llvm.loop !1440

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i29
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil.preheader

.lr.ph.i.i.i.i.i.i29.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.preheader
  %.01724.i.i.i.i.i.i30.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.dx, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i31.epil.init = phi double [ %i.cn, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.dw, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.i.i.i.i29.epil

.lr.ph.i.i.i.i.i.i29.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i29.epil, %.lr.ph.i.i.i.i.i.i29.epil.preheader
  %.01724.i.i.i.i.i.i30.epil = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i29.epil ], [ %.01724.i.i.i.i.i.i30.epil.init, %.lr.ph.i.i.i.i.i.i29.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i31.epil = phi double [ %i.ee, %.lr.ph.i.i.i.i.i.i29.epil ], [ %.02223.i.i.i.i.i.i31.epil.init, %.lr.ph.i.i.i.i.i.i29.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i29.epil ], [ 0, %.lr.ph.i.i.i.i.i.i29.epil.preheader ]
  %i.dy = mul nsw i64 %.01724.i.i.i.i.i.i30.epil, %i.ck
  %i.dz = getelementptr [8 x i8], ptr %i.cc, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !370
  %i.eb = getelementptr [8 x i8], ptr %i.cf, i64 %.01724.i.i.i.i.i.i30.epil
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !370
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = fadd double %.02223.i.i.i.i.i.i31.epil, %i.ed ; 2 uses
  %i.ef = add nuw nsw i64 %.01724.i.i.i.i.i.i30.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil, !llvm.loop !1441

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.epil, %bb.l, %bb.k
  %.0.i.i.i.i28 = phi double [ 0.000000e+00, %bb.k ], [ %i.cn, %bb.l ], [ %i.dw, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i.loopexit.unr-lcssa ], [ %i.ee, %.lr.ph.i.i.i.i.i.i29.epil ]
  %i.eg = load double, ptr %i.cb, align 8, !tbaa !370
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.ce, double %.0.i.i.i.i28, double %i.eg)
  store double %i.eh, ptr %i.cb, align 8, !tbaa !370
  br label %_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEKNS_5BlockIKS7_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_IS7_Lin1ELi1ELb1EEEEEvRT_RS9_RSB_RKd.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store ptr %i.cc, ptr %6, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.cb, ptr %4, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.k, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.741.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.943.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %2, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS4_IKNS_5BlockISB_Li1ELin1ELb0EEEEENS4_INSD_ISA_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSP_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEKNS_5BlockIKS7_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_IS7_Lin1ELi1ELb1EEEEEvRT_RS9_RSB_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES9_S9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.i
  %i.ei = load double, ptr %3, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.bz, ptr %i.ej, align 8, !tbaa !522
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.k, ptr %i.ek, align 8, !tbaa !525
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.el, align 8, !tbaa !521
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i64 noundef 1)
  %i.em = load i64, ptr %i.ej, align 8, !tbaa !522
  %i.en = load i64, ptr %i.el, align 8, !tbaa !521 ; 2 uses
  %i.eo = mul nsw i64 %i.en, %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !538
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !525
  %i.er = mul nsw i64 %i.eq, %i.en
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.er, ptr %i.es, align 8, !tbaa !539
  %i.et = load i64, ptr %i.d, align 8, !tbaa !500
  %i.eu = load i64, ptr %i.g, align 8, !tbaa !500
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !500
  %i.ew = load ptr, ptr %1, align 8, !tbaa !509
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !500
  %i.ez = load ptr, ptr %2, align 8, !tbaa !509
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !500
  %i.fc = load ptr, ptr %0, align 8, !tbaa !509
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !500
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.et, i64 noundef %i.eu, i64 noundef %i.ev, ptr noundef nonnull %i.ew, i64 noundef %i.ey, ptr noundef nonnull %i.ez, i64 noundef %i.fb, ptr noundef nonnull %i.fc, i64 noundef 1, i64 noundef %i.fe, double noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEESA_SA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit unwind label %bb.n

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEESA_SA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES9_S9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ff = load ptr, ptr %9, align 8, !tbaa !527
  call void @free(ptr noundef %i.ff) #35
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !528
  call void @free(ptr noundef %i.fh) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEKNS_5BlockIKS7_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_IS7_Lin1ELi1ELb1EEEEEvRT_RS9_RSB_RKd.exit

_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEKNS_5BlockIKS7_Lin1ELi1ELb1EEENS_10DenseShapeESC_Li7EE13scaleAndAddToINS8_IS7_Lin1ELi1ELb1EEEEEvRT_RS9_RSB_RKd.exit: ; preds = %bb.m, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS8_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i, %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS8_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSG_17scalar_product_opIdSK_EEE10ReturnTypeERKNS0_ISI_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEESA_SA_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit
  ret void

bb.n:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES9_S9_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %9, align 8, !tbaa !527
  call void @free(ptr noundef %i.fj) #35
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !528
  call void @free(ptr noundef %i.fl) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  resume { ptr, i32 } %i.fi
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1477, !nonnull !396, !align !469 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !509
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !500  ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !500  ; 10 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !396, !align !469 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %0, align 8, !nonnull !396, !align !469 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !513  ; 5 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !500  ; 4 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !1478, !nonnull !396, !align !469 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !509, !noalias !1479 ; 7 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !1480, !nonnull !396, !align !469 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !509, !noalias !1481 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !500, !noalias !1481 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !500, !noalias !1481 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %i.ab = icmp sgt i64 %i.z, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !500 ; 5 uses
  br i1 %i.ab, label %.preheader.us17.i.preheader, label %.preheader.i.preheader

.preheader.us17.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %i.ae = add nsw i64 %i.z, -1                    ; 2 uses
  %i.af = add nsw i64 %i.z, -2
  %xtraiter119 = and i64 %i.ae, 3                 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 3
  %unroll_iter = and i64 %i.ae, -4
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  %lcmp.mod122 = icmp ne i64 %xtraiter119, 0
  br label %.preheader.us17.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.split.i
  %i.ah = add nsw i64 %i.g, -1                    ; 2 uses
  %i.ai = mul i64 %i.r, %i.ah
  %i.aj = shl i64 %i.j, 3
  %i.ak = add i64 %i.ai, %i.j
  %i.al = shl i64 %i.ak, 3
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.al ; 2 uses
  %scevgep103 = getelementptr i8, ptr %i.t, i64 %i.aj
  %i.am = mul i64 %i.x, %i.ah
  %i.an = shl i64 %i.am, 3
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.an
  %scevgep104 = getelementptr i8, ptr %i.ao, i64 8
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.q, %scevgep103
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0105 = icmp ult ptr %i.q, %scevgep104
  %bound1106 = icmp ult ptr %i.v, %scevgep
  %found.conflict107 = and i1 %bound0105, %bound1106
  %1 = or i64 %i.x, %i.r
  %2 = and i64 %1, 1152921504606846976
  %3 = icmp ne i64 %2, 0
  %4 = or i1 %found.conflict107, %3
  %conflict.rdx = or i1 %found.conflict, %4
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.us17.i:                                ; preds = %.preheader.us17.i.preheader, %._crit_edge.split.split.us.us.i
  %.0813.us18.i = phi i64 [ %i.cp, %._crit_edge.split.split.us.us.i ], [ 0, %.preheader.us17.i.preheader ] ; 3 uses
  %i.ap = mul nsw i64 %.0813.us18.i, %i.x
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ap ; 6 uses
  %i.ar = mul nsw i64 %.0813.us18.i, %i.r
  %i.as = getelementptr [8 x i8], ptr %i.q, i64 %i.ar
  br label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i

.lr.ph.i.i.i.i.i.i.preheader.us.us.i:             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, %.preheader.us17.i
  %.09.us10.us.i = phi i64 [ 0, %.preheader.us17.i ], [ %i.co, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.us10.us.i ; 6 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !370
  %i.av = load double, ptr %i.aq, align 8, !tbaa !370
  %i.aw = fmul double %i.au, %i.av                ; 2 uses
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.us.i

.lr.ph.i.i.i.i.i.i.us.us.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, %.lr.ph.i.i.i.i.i.i.us.us.i
  %.01724.i.i.i.i.i.i.us.us.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.us.us.i = phi double [ %i.cb, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.us.us.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ]
  %i.ax = mul nsw i64 %.01724.i.i.i.i.i.i.us.us.i, %i.ad
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !370
  %i.ba = getelementptr [8 x i8], ptr %i.aq, i64 %.01724.i.i.i.i.i.i.us.us.i
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !370
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = fadd double %.02223.i.i.i.i.i.i.us.us.i, %i.bc
  %i.be = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 1 ; 2 uses
  %i.bf = mul nsw i64 %i.be, %i.ad
  %i.bg = getelementptr [8 x i8], ptr %i.at, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !370
  %i.bi = getelementptr [8 x i8], ptr %i.aq, i64 %i.be
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !370
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = fadd double %i.bd, %i.bk
  %i.bm = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 2 ; 2 uses
  %i.bn = mul nsw i64 %i.bm, %i.ad
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !370
  %i.bq = getelementptr [8 x i8], ptr %i.aq, i64 %i.bm
  %i.br = load double, ptr %i.bq, align 8, !tbaa !370
  %i.bs = fmul double %i.bp, %i.br
  %i.bt = fadd double %i.bl, %i.bs
  %i.bu = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 3 ; 2 uses
  %i.bv = mul nsw i64 %i.bu, %i.ad
  %i.bw = getelementptr [8 x i8], ptr %i.at, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !370
  %i.by = getelementptr [8 x i8], ptr %i.aq, i64 %i.bu
  %i.bz = load double, ptr %i.by, align 8, !tbaa !370
  %i.ca = fmul double %i.bx, %i.bz
  %i.cb = fadd double %i.bt, %i.ca                ; 3 uses
  %i.cc = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us.us.i, !llvm.loop !1452

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i
  br i1 %lcmp.mod120.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader

.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader:        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i
  %.01724.i.i.i.i.i.i.us.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ], [ %i.cc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ]
  %.02223.i.i.i.i.i.i.us.us.i.epil.init = phi double [ %i.aw, %.lr.ph.i.i.i.i.i.i.preheader.us.us.i ], [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i.i.i.i.us.us.i.epil

.lr.ph.i.i.i.i.i.i.us.us.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader
  %.01724.i.i.i.i.i.i.us.us.i.epil = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ %.01724.i.i.i.i.i.i.us.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.us.us.i.epil = phi double [ %i.cj, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ %.02223.i.i.i.i.i.i.us.us.i.epil.init, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.epil.preheader ]
  %i.cd = mul nsw i64 %.01724.i.i.i.i.i.i.us.us.i.epil, %i.ad
  %i.ce = getelementptr [8 x i8], ptr %i.at, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !370
  %i.cg = getelementptr [8 x i8], ptr %i.aq, i64 %.01724.i.i.i.i.i.i.us.us.i.epil
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !370
  %i.ci = fmul double %i.cf, %i.ch
  %i.cj = fadd double %.02223.i.i.i.i.i.i.us.us.i.epil, %i.ci ; 2 uses
  %i.ck = add nuw nsw i64 %.01724.i.i.i.i.i.i.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter119
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.epil, !llvm.loop !1453

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa
  %.lcssa117 = phi double [ %i.cb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.us.us.i.epil ]
  %i.cl = getelementptr [8 x i8], ptr %i.as, i64 %.09.us10.us.i ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !370
  %i.cn = fsub double %i.cm, %.lcssa117
  store double %i.cn, ptr %i.cl, align 8, !tbaa !370
  %i.co = add nuw nsw i64 %.09.us10.us.i, 1       ; 2 uses
  %exitcond22.not.i = icmp eq i64 %i.co, %i.j
  br i1 %exitcond22.not.i, label %._crit_edge.split.split.us.us.i, label %.lr.ph.i.i.i.i.i.i.preheader.us.us.i, !llvm.loop !1454

._crit_edge.split.split.us.us.i:                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.us.us.i
  %i.cp = add nuw nsw i64 %.0813.us18.i, 1        ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.cp, %i.g
  br i1 %exitcond23.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.us17.i, !llvm.loop !1455

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.split.i
  %.0813.i = phi i64 [ %i.dn, %._crit_edge.split.split.i ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %i.cq = mul nsw i64 %.0813.i, %i.x
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cq ; 4 uses
  %i.cs = mul nsw i64 %.0813.i, %i.r
  %i.ct = getelementptr [8 x i8], ptr %i.q, i64 %i.cs ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !370, !alias.scope !1482
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <2 x double>, ptr %i.cv, align 8, !tbaa !370, !alias.scope !1483
  %wide.load110.a = load <2 x double>, ptr %i.cw, align 8, !tbaa !370, !alias.scope !1483
  %i.cx = fmul <2 x double> %wide.load, %broadcast.splat
  %i.cy = fmul <2 x double> %wide.load110.a, %broadcast.splat
  %i.cz = getelementptr [8 x i8], ptr %i.ct, i64 %index ; 3 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16     ; 2 uses
  %wide.load111.a = load <2 x double>, ptr %i.cz, align 8, !tbaa !370, !alias.scope !1484, !noalias !1485
  %wide.load112 = load <2 x double>, ptr %i.da, align 8, !tbaa !370, !alias.scope !1484, !noalias !1485
  %i.db = fsub <2 x double> %wide.load111.a, %i.cx
  %i.dc = fsub <2 x double> %wide.load112, %i.cy
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !370, !alias.scope !1484, !noalias !1485
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !370, !alias.scope !1484, !noalias !1485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !1460

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader: ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.df = load double, ptr %i.de, align 8, !tbaa !370
  %i.dg = load double, ptr %i.cr, align 8, !tbaa !370
  %i.dh = fmul double %i.df, %i.dg
  %i.di = getelementptr [8 x i8], ptr %i.ct, i64 %.09.i.ph ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !370
  %i.dk = fsub double %i.dj, %i.dh
  store double %i.dk, ptr %i.di, align 8, !tbaa !370
  %i.dl = or disjoint i64 %.09.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.preheader ], [ %i.dl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol ]
  %i.dm = icmp eq i64 %i.j, %.neg
  br i1 %i.dm, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i

._crit_edge.split.split.i:                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, %middle.block
  %i.dn = add nuw nsw i64 %.0813.i, 1             ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.dn, %i.g
  br i1 %exitcond21.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit, label %.preheader.i, !llvm.loop !1455

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i
  %.09.i = phi i64 [ %i.ed, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i ], [ %.09.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.prol.loopexit ] ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !370
  %i.dq = load double, ptr %i.cr, align 8, !tbaa !370
  %i.dr = fmul double %i.dp, %i.dq
  %i.ds = getelementptr [8 x i8], ptr %i.ct, i64 %.09.i ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !370
  %i.du = fsub double %i.dt, %i.dr
  store double %i.du, ptr %i.ds, align 8, !tbaa !370
  %i.dv = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !370
  %i.dy = load double, ptr %i.cr, align 8, !tbaa !370
  %i.dz = fmul double %i.dx, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.ct, i64 %i.dv ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !370
  %i.ec = fsub double %i.eb, %i.dz
  store double %i.ec, ptr %i.ea, align 8, !tbaa !370
  %i.ed = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ed, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.split.split.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i, !llvm.loop !1461

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !500 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !500 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !500
  %i.ek = and i64 %i.ej, 1
  %i.el = icmp sgt i64 %i.eh, 0
  br i1 %i.el, label %.lr.ph65, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi0ELi0EE3runERSG_.exit

.lr.ph65:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.em = lshr exact i64 %i.d, 3
  %i.en = and i64 %i.em, 1
  %i.eo = tail call i64 @llvm.smin.i64(i64 %i.en, i64 %i.ef)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph65, %._crit_edge
  %.03464 = phi i64 [ 0, %.lr.ph65 ], [ %i.ku, %._crit_edge ] ; 7 uses
  %.03563 = phi i64 [ %i.eo, %.lr.ph65 ], [ %.sroa.speculated, %._crit_edge ] ; 5 uses
  %i.eq = sub nsw i64 %i.ef, %.03563              ; 2 uses
  %i.er = and i64 %i.eq, -2
  %i.es = add nsw i64 %i.er, %.03563              ; 3 uses
  %i.et = icmp sgt i64 %.03563, 0
  br i1 %i.et, label %.lr.ph, label %.preheader49

.lr.ph:                                           ; preds = %bb.c
  %i.eu = load ptr, ptr %0, align 8, !tbaa !1486, !nonnull !396, !align !469 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !513
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !500
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !1487, !nonnull !396, !align !469 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1478, !nonnull !396, !align !469 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !509, !noalias !1488 ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1480, !nonnull !396, !align !469 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !509, !noalias !1489
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !500, !noalias !1489
  %i.fg = mul nsw i64 %i.ff, %.03464
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fg ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !500, !noalias !1489 ; 4 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = mul nsw i64 %i.ex, %.03464
  %i.fm = getelementptr [8 x i8], ptr %i.ev, i64 %i.fl ; 2 uses
  br i1 %i.fk, label %.preheader49, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fn = icmp sgt i64 %i.fj, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !500 ; 5 uses
  %i.fq = load double, ptr %i.fa, align 8, !tbaa !370
  %i.fr = load double, ptr %i.fh, align 8, !tbaa !370
  %i.fs = fmul double %i.fq, %i.fr                ; 3 uses
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i.us.preheader, label %.preheader49.sink.split

.lr.ph.i.i.i.i.i.i.us.preheader:                  ; preds = %.lr.ph.split
  %i.ft = add nsw i64 %i.fj, -1                   ; 2 uses
  %i.fu = add nsw i64 %i.fj, -2
  %xtraiter123 = and i64 %i.ft, 3                 ; 3 uses
  %i.fv = icmp ult i64 %i.fu, 3
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.preheader.new

.lr.ph.i.i.i.i.i.i.us.preheader.new:              ; preds = %.lr.ph.i.i.i.i.i.i.us.preheader
  %unroll_iter128 = and i64 %i.ft, -4
  br label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.lr.ph.i.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.i.us.preheader.new
  %.01724.i.i.i.i.i.i.us = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %i.hb, %.lr.ph.i.i.i.i.i.i.us ] ; 6 uses
  %.02223.i.i.i.i.i.i.us = phi double [ %i.fs, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %i.ha, %.lr.ph.i.i.i.i.i.i.us ]
  %niter129 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.preheader.new ], [ %niter129.next.3, %.lr.ph.i.i.i.i.i.i.us ]
  %i.fw = mul nsw i64 %.01724.i.i.i.i.i.i.us, %i.fp
  %i.fx = getelementptr [8 x i8], ptr %i.fa, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !370
  %i.fz = getelementptr [8 x i8], ptr %i.fh, i64 %.01724.i.i.i.i.i.i.us
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !370
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %.02223.i.i.i.i.i.i.us, %i.gb
  %i.gd = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.ge = mul nsw i64 %i.gd, %i.fp
  %i.gf = getelementptr [8 x i8], ptr %i.fa, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !370
  %i.gh = getelementptr [8 x i8], ptr %i.fh, i64 %i.gd
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !370
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = fadd double %i.gc, %i.gj
  %i.gl = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.gm = mul nsw i64 %i.gl, %i.fp
  %i.gn = getelementptr [8 x i8], ptr %i.fa, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !370
  %i.gp = getelementptr [8 x i8], ptr %i.fh, i64 %i.gl
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !370
  %i.gr = fmul double %i.go, %i.gq
  %i.gs = fadd double %i.gk, %i.gr
  %i.gt = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.gu = mul nsw i64 %i.gt, %i.fp
  %i.gv = getelementptr [8 x i8], ptr %i.fa, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !370
  %i.gx = getelementptr [8 x i8], ptr %i.fh, i64 %i.gt
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !370
  %i.gz = fmul double %i.gw, %i.gy
  %i.ha = fadd double %i.gs, %i.gz                ; 3 uses
  %i.hb = add nuw nsw i64 %.01724.i.i.i.i.i.i.us, 4 ; 2 uses
  %niter129.next.3 = add i64 %niter129, 4         ; 2 uses
  %niter129.ncmp.3 = icmp eq i64 %niter129.next.3, %unroll_iter128
  br i1 %niter129.ncmp.3, label %.preheader49.sink.split.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !1452

.preheader49.sink.split.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i.i.i.i.i.us
  %lcmp.mod125.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %.preheader49.sink.split, label %.lr.ph.i.i.i.i.i.i.us.epil.preheader

.lr.ph.i.i.i.i.i.i.us.epil.preheader:             ; preds = %.preheader49.sink.split.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.preheader
  %.01724.i.i.i.i.i.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.us.preheader ], [ %i.hb, %.preheader49.sink.split.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.us.epil.init = phi double [ %i.fs, %.lr.ph.i.i.i.i.i.i.us.preheader ], [ %i.ha, %.preheader49.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter123, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph.i.i.i.i.i.i.us.epil
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  %.077182.us.us.us.us = phi i64 [ %i.bf, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bf = add nsw i64 %.077182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bf)
  %i.bg = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.077182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.bh = mul nsw i64 %.077182.us.us.us.us, %4
  %i.bi = getelementptr [8 x i8], ptr %i.as, i64 %i.bh
  store ptr %i.bi, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bg, i64 noundef %i.ar, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  %i.bj = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bk, %bb.o ] ; 4 uses
  %i.bk = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bk)
  %i.bl = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.bm = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bn = getelementptr [8 x i8], ptr %i.bj, i64 %i.bm
  store ptr %i.bn, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bg, i64 noundef %i.bl, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  %i.bo = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bp = getelementptr [8 x i8], ptr %i.au, i64 %i.bo
  store ptr %i.bp, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.bg, i64 noundef %i.bl, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
  %i.bq = icmp slt i64 %i.bk, %1
  br i1 %i.bq, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !1522

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.br = icmp slt i64 %i.bf, %2
  br i1 %i.br, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !1523

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bs = icmp slt i64 %i.aq, %0
  br i1 %i.bs, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !1524

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35
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
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.bz = mul nsw i64 %.077182.us197, %4
  %i.ca = getelementptr [8 x i8], ptr %i.bw, i64 %i.bz
  store ptr %i.ca, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.by, i64 noundef %i.bv, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  %i.cb = icmp slt i64 %i.bx, %2
  br i1 %i.cb, label %bb.p, label %..loopexit177_crit_edge.split.us199, !llvm.loop !1523

..loopexit177_crit_edge.split.us199:              ; preds = %.loopexit.us
  %i.cc = icmp slt i64 %i.bu, %0
  br i1 %i.cc, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !1524

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us200.us, %bb.p
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us199, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  ret void

bb.s:                                             ; preds = %.invoke
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp254, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bt, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !533
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !471    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !472  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.db, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.ae = mul nsw i64 %i.g, %.04460.us
  %i.af = getelementptr [8 x i8], ptr %i.e, i64 %i.ae ; 4 uses
  %i.ag = or disjoint i64 %.04460.us, 1
  %i.ah = mul nsw i64 %i.g, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.e, i64 %i.ah ; 4 uses
  %i.aj = or disjoint i64 %.04460.us, 2
  %i.ak = mul nsw i64 %i.g, %i.aj
  %i.al = getelementptr [8 x i8], ptr %i.e, i64 %i.ak ; 4 uses
  %i.am = or disjoint i64 %.04460.us, 3
  %i.an = mul nsw i64 %i.g, %i.am
  %i.ao = getelementptr [8 x i8], ptr %i.e, i64 %i.an ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ap = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.ar = icmp ult ptr %i.aq, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ap ; 2 uses
  %i.as = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.at = icmp ult ptr %i.as, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ap ; 2 uses
  %i.au = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.av = icmp ult ptr %i.au, %scevgep84
  %i.aw = or i1 %i.av, %mul.overflow
  %i.ax = or i1 %i.at, %i.ar
  %i.ay = or i1 %i.ax, %i.aw
  br i1 %i.ay, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.az = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.az ; 4 uses
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.az ; 4 uses
  %bound0 = icmp ult ptr %scevgep85, %scevgep89
  %bound1 = icmp ult ptr %scevgep88, %scevgep87
  %found.conflict = and i1 %bound0, %bound1
  %bound095 = icmp ult ptr %scevgep85, %scevgep91
  %bound196.a = icmp ult ptr %scevgep90, %scevgep87
  %found.conflict97 = and i1 %bound095, %bound196.a
  %7 = or i1 %found.conflict97, %stride.check98
  %conflict.rdx = or i1 %found.conflict, %7
  %bound099 = icmp ult ptr %scevgep85, %scevgep93
  %bound1100 = icmp ult ptr %scevgep92, %scevgep87
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx103 = or i1 %found.conflict101, %conflict.rdx
  %bound0104 = icmp ult ptr %scevgep85, %scevgep94
  %bound1105 = icmp ult ptr %i.e, %scevgep87
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx108 = or i1 %found.conflict106, %conflict.rdx103
  br i1 %conflict.rdx108, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ba = add i64 %.04559.us, %i.ad               ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load = load <2 x double>, ptr %i.bc, align 8, !tbaa !370, !alias.scope !1538
  %.idx = shl i64 %index, 5
  %i.bd = getelementptr i8, ptr %i.bb, i64 %.idx
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.be, align 8, !tbaa !370, !alias.scope !1539
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bf, align 8, !tbaa !370, !alias.scope !1540
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bg, align 8, !tbaa !370, !alias.scope !1541
  %i.bh = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bh, <4 x double> %i.bi, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bd, align 8, !tbaa !370, !alias.scope !1542, !noalias !1543
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1531

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ba, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !370
  %i.bm = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bl, ptr %i.bm, align 8, !tbaa !370
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !370
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  store double %i.bo, ptr %i.bp, align 8, !tbaa !370
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !370
  %i.bs = getelementptr i8, ptr %i.bm, i64 16
  store double %i.br, ptr %i.bs, align 8, !tbaa !370
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us.ph
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !370
  %i.bv = getelementptr i8, ptr %i.bm, i64 24
  store double %i.bu, ptr %i.bv, align 8, !tbaa !370
  %i.bw = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.bx = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bw, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.bx, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.bw, %scalar.ph.prol ]
  %i.by = icmp eq i64 %3, %.neg
  br i1 %i.by, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.da, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.cz, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !370
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.ca, ptr %i.cb, align 8, !tbaa !370
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !370
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  store double %i.cd, ptr %i.ce, align 8, !tbaa !370
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !370
  %i.ch = getelementptr i8, ptr %i.cb, i64 16
  store double %i.cg, ptr %i.ch, align 8, !tbaa !370
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !370
  %i.ck = getelementptr i8, ptr %i.cb, i64 24
  store double %i.cj, ptr %i.ck, align 8, !tbaa !370
  %i.cl = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !370
  %i.co = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  store double %i.cn, ptr %i.cp, align 8, !tbaa !370
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cl
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !370
  %i.cs = getelementptr i8, ptr %i.co, i64 40
  store double %i.cr, ptr %i.cs, align 8, !tbaa !370
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cl
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !370
  %i.cv = getelementptr i8, ptr %i.co, i64 48
  store double %i.cu, ptr %i.cv, align 8, !tbaa !370
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cl
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !370
  %i.cy = getelementptr i8, ptr %i.co, i64 56
  store double %i.cx, ptr %i.cy, align 8, !tbaa !370
  %i.cz = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.da = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.da, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1532

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.ba, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.cz, %scalar.ph ] ; 2 uses
  %i.db = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dc = icmp slt i64 %i.db, %i.c
  br i1 %i.dc, label %.lr.ph.us, label %.preheader, !llvm.loop !1533

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.dd = icmp slt i64 %i.c, %4
  br i1 %i.dd, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.de = load ptr, ptr %2, align 8, !tbaa !471   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !472 ; 3 uses
  %i.dh = icmp sgt i64 %3, 0
  br i1 %i.dh, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.di = ptrtoaddr ptr %i.de to i64
  %i.dj = mul i64 %i.dg, %i.b
  %i.dk = shl i64 %i.dj, 5
  %i.dl = add i64 %i.dk, %i.di
  %i.dm = sub i64 %i.a, %i.dl
  %i.dn = mul i64 %i.dg, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.ej, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.do = mul nsw i64 %i.dg, %.04267
  %i.dp = getelementptr [8 x i8], ptr %i.de, i64 %i.do ; 6 uses
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph
  %i.dq = mul i64 %i.dn, %indvar
  %i.dr = add i64 %i.dm, %i.dq
  %i.ds = shl i64 %.266, 3
  %i.dt = add i64 %i.dr, %i.ds
  %i.du = add i64 %i.dt, -1
  %diff.check = icmp ult i64 %i.du, 31
  br i1 %diff.check, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck113
  %i.dv = add i64 %.266, %n.vec117                ; 2 uses
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body118 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index119 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load120 = load <2 x double>, ptr %i.dx, align 8, !tbaa !370
  %wide.load121 = load <2 x double>, ptr %i.dy, align 8, !tbaa !370
  %i.dz = getelementptr [8 x i8], ptr %i.dw, i64 %index119 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x double> %wide.load120, ptr %i.dz, align 8, !tbaa !370
  store <2 x double> %wide.load121, ptr %i.ea, align 8, !tbaa !370
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.eb, label %middle.block123, label %vector.body118, !llvm.loop !1534

middle.block123:                                  ; preds = %vector.body118
  br i1 %cmp.n124, label %._crit_edge, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %vector.memcheck113, %.lr.ph, %middle.block123
  %.065.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph ], [ %n.vec117, %middle.block123 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck113 ], [ %.266, %.lr.ph ], [ %i.dv, %middle.block123 ] ; 2 uses
  br i1 %lcmp.mod130.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol

scalar.ph114.prol:                                ; preds = %scalar.ph114.preheader, %scalar.ph114.prol
  %.065.prol = phi i64 [ %i.eg, %scalar.ph114.prol ], [ %.065.ph, %scalar.ph114.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ef, %scalar.ph114.prol ], [ %.364.ph, %scalar.ph114.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph114.prol ], [ 0, %scalar.ph114.preheader ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.065.prol
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !370
  %i.ee = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.ed, ptr %i.ee, align 8, !tbaa !370
  %i.ef = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.eg = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol, !llvm.loop !1535

scalar.ph114.prol.loopexit:                       ; preds = %scalar.ph114.prol, %scalar.ph114.preheader
end_hunk_2
