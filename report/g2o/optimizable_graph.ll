begin_hunk_0_@_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_:bb.a

bb.z:                                             ; preds = %bb.c
  store i32 0, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.aa:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ab:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ac:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ad:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ae:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.af:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.ag:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.ah:                                            ; preds = %bb.c
  store i32 3072, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ai:                                            ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4, !tbaa !92
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 4096, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.ak:                                            ; preds = %bb.c
  store i32 6144, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.al:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  store i32 12288, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.an:                                            ; preds = %bb.c
  store i32 16384, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.ao:                                            ; preds = %bb.c
  store i32 6144, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ap:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.aq:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ar:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.as:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.at:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.au:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.av:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.aw:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ax:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ay:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.az:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.ba:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.bb:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.bc:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.bd:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.be:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !92
  br label %bb.bj

bb.bf:                                            ; preds = %bb.c
  store i32 2048, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.bg:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.bh:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.bi:                                            ; preds = %bb.c
  store i32 3072, ptr %2, align 4, !tbaa !92
  br label %bb.bj

bb.bj:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.aj, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !870

.thread:                                          ; preds = %bb.ai
  store i32 4096, ptr %1, align 4, !tbaa !92
  store i32 4096, ptr %2, align 4, !tbaa !92
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not78 = icmp eq i64 %indvars.iv.next77, 14
  br i1 %exitcond.not78, label %.thread80, label %.outer, !llvm.loop !870

.thread80:                                        ; preds = %.thread, %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !92
  %i.o = load i32, ptr %2, align 4, !tbaa !92
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread80
  store i32 0, ptr %2, align 4, !tbaa !92
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread80, %bb.b
  %i.q = load i32, ptr %0, align 4, !tbaa !92
  %i.r = shl nsw i32 %i.q, 10
  store i32 %i.r, ptr %0, align 4, !tbaa !92
  %i.s = load i32, ptr %1, align 4, !tbaa !92
  %i.t = shl nsw i32 %i.s, 10
  store i32 %i.t, ptr %1, align 4, !tbaa !92
  %i.u = load i32, ptr %2, align 4, !tbaa !92
  %i.v = shl nsw i32 %i.u, 10
  store i32 %i.v, ptr %2, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #35 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !871
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !703    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !705  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep82 = getelementptr i8, ptr %1, i64 16
  %scevgep87.a = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep93.a = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep95.a = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep96 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep97 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep98 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep99 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep100 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep101 = getelementptr i8, ptr %i.ac, i64 %i.q
  %min.iters.check = icmp ult i64 %3, 92
  %mul.result = shl i64 %i.i, 5
  %mul.result85 = shl i64 %i.i, 5
  %mul.overflow86 = icmp ugt i64 %i.i, 576460752303423487
  %mul.result90 = shl i64 %i.i, 5
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check105 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.cz, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa80, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
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
  %scevgep81 = getelementptr i8, ptr %scevgep, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %scevgep81, i64 %mul.result
  %i.ar = icmp ult ptr %i.aq, %scevgep81
  %scevgep83 = getelementptr i8, ptr %scevgep82, i64 %i.ap ; 2 uses
  %i.as = getelementptr i8, ptr %scevgep83, i64 %mul.result85
  %i.at = icmp ult ptr %i.as, %scevgep83
  %7 = or i1 %i.at, %mul.overflow86
  %scevgep88.a = getelementptr i8, ptr %scevgep87.a, i64 %i.ap ; 2 uses
  %8 = getelementptr i8, ptr %scevgep88.a, i64 %mul.result90
  %9 = icmp ult ptr %8, %scevgep88.a
  %i.au = or i1 %i.ar, %7
  %i.av = or i1 %9, %i.au
  br i1 %i.av, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %1, i64 %i.aw ; 4 uses
  %scevgep94 = getelementptr i8, ptr %scevgep93.a, i64 %i.aw ; 4 uses
  %bound0 = icmp ult ptr %scevgep92, %scevgep96
  %bound1 = icmp ult ptr %scevgep95.a, %scevgep94
  %found.conflict = and i1 %bound0, %bound1
  %bound0102 = icmp ult ptr %scevgep92, %scevgep98
  %bound1103 = icmp ult ptr %scevgep97, %scevgep94
  %found.conflict104 = and i1 %bound0102, %bound1103
  %i.ax = or i1 %found.conflict104, %stride.check105
  %conflict.rdx = or i1 %found.conflict, %i.ax
  %bound0106 = icmp ult ptr %scevgep92, %scevgep100
  %bound1107 = icmp ult ptr %scevgep99, %scevgep94
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx110 = or i1 %found.conflict108, %conflict.rdx
  %bound0111 = icmp ult ptr %scevgep92, %scevgep101
  %bound1112 = icmp ult ptr %i.e, %scevgep94
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx115 = or i1 %found.conflict113, %conflict.rdx110
  br i1 %conflict.rdx115, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ay = add i64 %.04559.us, %i.ad               ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load = load <2 x double>, ptr %i.ba, align 8, !tbaa !242, !alias.scope !872
  %.idx = shl i64 %index, 5
  %i.bb = getelementptr i8, ptr %i.az, i64 %.idx
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load116 = load <2 x double>, ptr %i.bc, align 8, !tbaa !242, !alias.scope !875
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index
  %wide.load117 = load <2 x double>, ptr %i.bd, align 8, !tbaa !242, !alias.scope !877
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index
  %wide.load118 = load <2 x double>, ptr %i.be, align 8, !tbaa !242, !alias.scope !879
  %i.bf = shufflevector <2 x double> %wide.load, <2 x double> %wide.load116, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bg = shufflevector <2 x double> %wide.load117, <2 x double> %wide.load118, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bf, <4 x double> %i.bg, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bb, align 8, !tbaa !242, !alias.scope !881, !noalias !883
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !884

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ay, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !242
  %i.bk = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bj, ptr %i.bk, align 8, !tbaa !242
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !242
  %i.bn = getelementptr i8, ptr %i.bk, i64 8
  store double %i.bm, ptr %i.bn, align 8, !tbaa !242
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us.ph
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !242
  %i.bq = getelementptr i8, ptr %i.bk, i64 16
  store double %i.bp, ptr %i.bq, align 8, !tbaa !242
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us.ph
  %i.bs = load double, ptr %i.br, align 8, !tbaa !242
  %i.bt = getelementptr i8, ptr %i.bk, i64 24
  store double %i.bs, ptr %i.bt, align 8, !tbaa !242
  %i.bu = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.bv = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa136.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bu, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.bv, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.bu, %scalar.ph.prol ]
  %i.bw = icmp eq i64 %3, %.neg
  br i1 %i.bw, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.cy, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.cx, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us
  %i.by = load double, ptr %i.bx, align 8, !tbaa !242
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.by, ptr %i.bz, align 8, !tbaa !242
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !242
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  store double %i.cb, ptr %i.cc, align 8, !tbaa !242
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !242
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  store double %i.ce, ptr %i.cf, align 8, !tbaa !242
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !242
  %i.ci = getelementptr i8, ptr %i.bz, i64 24
  store double %i.ch, ptr %i.ci, align 8, !tbaa !242
  %i.cj = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !242
  %i.cm = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 32
  store double %i.cl, ptr %i.cn, align 8, !tbaa !242
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cj
  %i.cp = load double, ptr %i.co, align 8, !tbaa !242
  %i.cq = getelementptr i8, ptr %i.cm, i64 40
  store double %i.cp, ptr %i.cq, align 8, !tbaa !242
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cj
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !242
  %i.ct = getelementptr i8, ptr %i.cm, i64 48
  store double %i.cs, ptr %i.ct, align 8, !tbaa !242
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cj
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !242
  %i.cw = getelementptr i8, ptr %i.cm, i64 56
  store double %i.cv, ptr %i.cw, align 8, !tbaa !242
  %i.cx = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.cy = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !885

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa80 = phi i64 [ %i.ay, %middle.block ], [ %.lcssa136.unr, %scalar.ph.prol.loopexit ], [ %i.cx, %scalar.ph ] ; 2 uses
  %i.cz = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.da = icmp slt i64 %i.cz, %i.c
  br i1 %i.da, label %.lr.ph.us, label %.preheader, !llvm.loop !886

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa80, %._crit_edge.us ]
  %i.db = icmp slt i64 %i.c, %4
  br i1 %i.db, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dc = load ptr, ptr %2, align 8, !tbaa !703   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !705 ; 3 uses
  %i.df = icmp sgt i64 %3, 0
  br i1 %i.df, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dg = ptrtoaddr ptr %i.dc to i64
  %i.dh = mul i64 %i.de, %i.b
  %i.di = shl i64 %i.dh, 5
  %i.dj = add i64 %i.di, %i.dg
  %i.dk = sub i64 %i.a, %i.dj
  %i.dl = mul i64 %i.de, -8
  %min.iters.check122 = icmp ult i64 %3, 4
  %n.vec125 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n132 = icmp eq i64 %3, %n.vec125
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.eh, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.dm = mul nsw i64 %i.de, %.04267
  %i.dn = getelementptr [8 x i8], ptr %i.dc, i64 %i.dm ; 6 uses
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.memcheck120

vector.memcheck120:                               ; preds = %.lr.ph
  %i.do = mul i64 %i.dl, %indvar
  %i.dp = add i64 %i.dk, %i.do
  %i.dq = shl i64 %.266, 3
  %i.dr = add i64 %i.dp, %i.dq
  %i.ds = add i64 %i.dr, -1
  %diff.check = icmp ult i64 %i.ds, 31
  br i1 %diff.check, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %vector.memcheck120
  %i.dt = add i64 %.266, %n.vec125                ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph123
  %index127 = phi i64 [ 0, %vector.ph123 ], [ %index.next130, %vector.body126 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index127 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load128 = load <2 x double>, ptr %i.dv, align 8, !tbaa !242
  %wide.load129 = load <2 x double>, ptr %i.dw, align 8, !tbaa !242
  %i.dx = getelementptr [8 x i8], ptr %i.du, i64 %index127 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <2 x double> %wide.load128, ptr %i.dx, align 8, !tbaa !242
  store <2 x double> %wide.load129, ptr %i.dy, align 8, !tbaa !242
  %index.next130 = add nuw i64 %index127, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.dz, label %middle.block131, label %vector.body126, !llvm.loop !887

middle.block131:                                  ; preds = %vector.body126
end_hunk_0
