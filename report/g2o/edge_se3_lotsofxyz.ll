begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.ds = add nsw i64 %.1124167, 3
  %i.dt = mul nsw i64 %i.dm, %i.ds
  br label %.preheader139

.preheader140:                                    ; preds = %.preheader140.preheader, %.preheader140
  %.2146 = phi i64 [ %i.eh, %.preheader140 ], [ %.1170, %.preheader140.preheader ] ; 2 uses
  %.0127145 = phi i64 [ %i.ei, %.preheader140 ], [ 0, %.preheader140.preheader ] ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146 ; 2 uses
  %i.dv = load ptr, ptr %2, align 8, !tbaa !312
  %i.dw = load i64, ptr %i.e, align 8, !tbaa !314 ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.dv, i64 %.0127145 ; 2 uses
  %i.dy = mul nsw i64 %i.dw, %.1124167
  %i.dz = getelementptr [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load <2 x double>, ptr %i.dz, align 1, !tbaa !72 ; 2 uses
  %i.eb = mul nsw i64 %i.dw, %i.dj
  %i.ec = getelementptr [8 x i8], ptr %i.dx, i64 %i.eb
  %i.ed = load <2 x double>, ptr %i.ec, align 1, !tbaa !72 ; 2 uses
  %i.ee = shufflevector <2 x double> %i.ea, <2 x double> %i.ed, <2 x i32> <i32 1, i32 3>
  %i.ef = shufflevector <2 x double> %i.ea, <2 x double> %i.ed, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.ef, ptr %i.du, align 16, !tbaa !72
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  store <2 x double> %i.ee, ptr %i.eg, align 16, !tbaa !72
  %i.eh = add nsw i64 %.2146, %i.t                ; 2 uses
  %i.ei = add nuw nsw i64 %.0127145, 2            ; 3 uses
  %i.ej = icmp slt i64 %i.ei, %i.c
  br i1 %i.ej, label %.preheader140, label %.preheader141, !llvm.loop !498

.preheader139:                                    ; preds = %.preheader139.lr.ph.split.split, %..loopexit_crit_edge
  %.4158 = phi i64 [ %.2.lcssa, %.preheader139.lr.ph.split.split ], [ %.lcssa258, %..loopexit_crit_edge ] ; 5 uses
  %.2129156 = phi i64 [ %.0127.lcssa, %.preheader139.lr.ph.split.split ], [ %i.fb, %..loopexit_crit_edge ] ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %i.dl, i64 %.2129156 ; 4 uses
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.dn
  %i.em = load double, ptr %i.el, align 8, !tbaa !66
  %i.en = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158
  store double %i.em, ptr %i.en, align 8, !tbaa !66
  %i.eo = getelementptr [8 x i8], ptr %i.ek, i64 %i.dp
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !66
  %i.eq = add nsw i64 %.4158, 2                   ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.es = getelementptr i8, ptr %i.er, i64 8
  store double %i.ep, ptr %i.es, align 8, !tbaa !66
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader139
  %i.et = getelementptr [8 x i8], ptr %i.ek, i64 %i.dr
  %i.eu = load double, ptr %i.et, align 8, !tbaa !66
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eq
  store double %i.eu, ptr %i.ev, align 8, !tbaa !66
  %i.ew = getelementptr [8 x i8], ptr %i.ek, i64 %i.dt
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !66
  %i.ey = add nsw i64 %.4158, 4
  %i.ez = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.fa = getelementptr i8, ptr %i.ez, i64 24
  store double %i.ex, ptr %i.fa, align 8, !tbaa !66
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.c, %.preheader139
  %.lcssa258 = phi i64 [ %i.ey, %bb.c ], [ %i.eq, %.preheader139 ] ; 2 uses
  %i.fb = add nuw nsw i64 %.2129156, 1            ; 2 uses
  %exitcond201.not = icmp eq i64 %i.fb, %3
  br i1 %exitcond201.not, label %._crit_edge159.split, label %.preheader139, !llvm.loop !499

._crit_edge159.split:                             ; preds = %..loopexit_crit_edge, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %.lcssa258, %..loopexit_crit_edge ] ; 2 uses
  %i.fc = add i64 %.1124167, %indvars.iv          ; 3 uses
  %i.fd = icmp slt i64 %i.fc, %i.r
  br i1 %i.fd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !497

._crit_edge:                                      ; preds = %._crit_edge159.split, %._crit_edge159.split.us.us, %bb.b
  %.1124.lcssa = phi i64 [ %.0123177, %bb.b ], [ %i.z, %._crit_edge159.split.us.us ], [ %i.fc, %._crit_edge159.split ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0122178, %bb.b ], [ %.4.lcssa.us, %._crit_edge159.split.us.us ], [ %.4.lcssa, %._crit_edge159.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %.preheader137, label %bb.b

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge182
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge182 ] ; 2 uses
  %.8185 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge182 ] ; 5 uses
  %.2125184 = phi i64 [ %.1124.lcssa, %.preheader.lr.ph.split ], [ %i.fx, %._crit_edge182 ] ; 2 uses
  %i.fe = mul nsw i64 %i.j, %.2125184
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.fe ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.ff = mul i64 %i.o, %indvar
  %i.fg = add i64 %i.n, %i.ff
  %i.fh = shl i64 %.8185, 3
  %i.fi = add i64 %i.fg, %i.fh
  %i.fj = add i64 %i.fi, -1
  %diff.check = icmp ult i64 %i.fj, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fk = add i64 %.8185, %n.vec                  ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %1, i64 %.8185
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fm = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  %wide.load = load <2 x double>, ptr %i.fm, align 8, !tbaa !66
  %wide.load252 = load <2 x double>, ptr %i.fn, align 8, !tbaa !66
  %i.fo = getelementptr [8 x i8], ptr %i.fl, i64 %index ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x double> %wide.load, ptr %i.fo, align 8, !tbaa !66
  store <2 x double> %wide.load252, ptr %i.fp, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !500

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge182, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.0180.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.9179.ph = phi i64 [ %.8185, %vector.memcheck ], [ %.8185, %.preheader ], [ %i.fk, %middle.block ] ; 2 uses
  br i1 %lcmp.mod265.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0180.prol = phi i64 [ %i.fu, %scalar.ph.prol ], [ %.0180.ph, %scalar.ph.preheader ] ; 2 uses
  %.9179.prol = phi i64 [ %i.fs, %scalar.ph.prol ], [ %.9179.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180.prol
  %i.fr = load double, ptr %gep.prol, align 8, !tbaa !66
  %i.fs = add nsw i64 %.9179.prol, 1              ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179.prol
  store double %i.fr, ptr %i.ft, align 8, !tbaa !66
  %i.fu = add nuw nsw i64 %.0180.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter264
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !501

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa254.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.fs, %scalar.ph.prol ]
  %.0180.unr = phi i64 [ %.0180.ph, %scalar.ph.preheader ], [ %i.fu, %scalar.ph.prol ]
  %.9179.unr = phi i64 [ %.9179.ph, %scalar.ph.preheader ], [ %i.fs, %scalar.ph.prol ]
  %i.fv = sub nsw i64 %.0180.ph, %3
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %._crit_edge182, label %scalar.ph

._crit_edge182:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.fk, %middle.block ], [ %.lcssa254.unr, %scalar.ph.prol.loopexit ], [ %i.gk, %scalar.ph ]
  %i.fx = add nuw nsw i64 %.2125184, 1            ; 2 uses
  %exitcond213.not = icmp eq i64 %i.fx, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond213.not, label %._crit_edge186.split, label %.preheader, !llvm.loop !502

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0180 = phi i64 [ %i.gn, %scalar.ph ], [ %.0180.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.9179 = phi i64 [ %i.gk, %scalar.ph ], [ %.9179.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %i.fy = load double, ptr %gep, align 8, !tbaa !66
  %i.fz = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179
  store double %i.fy, ptr %i.fz, align 8, !tbaa !66
  %i.ga = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.1 = getelementptr i8, ptr %i.ga, i64 8
  %i.gb = load double, ptr %gep.1, align 8, !tbaa !66
  %i.gc = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  store double %i.gb, ptr %i.gd, align 8, !tbaa !66
  %i.ge = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.2 = getelementptr i8, ptr %i.ge, i64 16
  %i.gf = load double, ptr %gep.2, align 8, !tbaa !66
  %i.gg = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  store double %i.gf, ptr %i.gh, align 8, !tbaa !66
  %i.gi = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.3 = getelementptr i8, ptr %i.gi, i64 24
  %i.gj = load double, ptr %gep.3, align 8, !tbaa !66
  %i.gk = add nsw i64 %.9179, 4                   ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.gm = getelementptr i8, ptr %i.gl, i64 24
  store double %i.gj, ptr %i.gm, align 8, !tbaa !66
  %i.gn = add nuw nsw i64 %.0180, 4               ; 2 uses
  %exitcond212.not.3 = icmp eq i64 %i.gn, %3
  br i1 %exitcond212.not.3, label %._crit_edge182, label %scalar.ph, !llvm.loop !503

._crit_edge186.split:                             ; preds = %._crit_edge182, %.preheader137
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !504
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !309    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !311  ; 12 uses
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
  %wide.load = load <2 x double>, ptr %i.ba, align 8, !tbaa !66, !alias.scope !505
  %.idx = shl i64 %index, 5
  %i.bb = getelementptr i8, ptr %i.az, i64 %.idx
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load116 = load <2 x double>, ptr %i.bc, align 8, !tbaa !66, !alias.scope !508
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index
  %wide.load117 = load <2 x double>, ptr %i.bd, align 8, !tbaa !66, !alias.scope !510
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index
  %wide.load118 = load <2 x double>, ptr %i.be, align 8, !tbaa !66, !alias.scope !512
  %i.bf = shufflevector <2 x double> %wide.load, <2 x double> %wide.load116, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bg = shufflevector <2 x double> %wide.load117, <2 x double> %wide.load118, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bf, <4 x double> %i.bg, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bb, align 8, !tbaa !66, !alias.scope !514, !noalias !516
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !517

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ay, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !66
  %i.bk = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bj, ptr %i.bk, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !66
  %i.bn = getelementptr i8, ptr %i.bk, i64 8
  store double %i.bm, ptr %i.bn, align 8, !tbaa !66
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us.ph
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !66
  %i.bq = getelementptr i8, ptr %i.bk, i64 16
  store double %i.bp, ptr %i.bq, align 8, !tbaa !66
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us.ph
  %i.bs = load double, ptr %i.br, align 8, !tbaa !66
  %i.bt = getelementptr i8, ptr %i.bk, i64 24
  store double %i.bs, ptr %i.bt, align 8, !tbaa !66
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
  %i.by = load double, ptr %i.bx, align 8, !tbaa !66
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.by, ptr %i.bz, align 8, !tbaa !66
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !66
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  store double %i.cb, ptr %i.cc, align 8, !tbaa !66
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.04358.us
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !66
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  store double %i.ce, ptr %i.cf, align 8, !tbaa !66
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.04358.us
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !66
  %i.ci = getelementptr i8, ptr %i.bz, i64 24
  store double %i.ch, ptr %i.ci, align 8, !tbaa !66
  %i.cj = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !66
  %i.cm = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 32
  store double %i.cl, ptr %i.cn, align 8, !tbaa !66
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cj
  %i.cp = load double, ptr %i.co, align 8, !tbaa !66
  %i.cq = getelementptr i8, ptr %i.cm, i64 40
  store double %i.cp, ptr %i.cq, align 8, !tbaa !66
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.cj
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !66
  %i.ct = getelementptr i8, ptr %i.cm, i64 48
  store double %i.cs, ptr %i.ct, align 8, !tbaa !66
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cj
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !66
  %i.cw = getelementptr i8, ptr %i.cm, i64 56
  store double %i.cv, ptr %i.cw, align 8, !tbaa !66
  %i.cx = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.cy = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !518

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa80 = phi i64 [ %i.ay, %middle.block ], [ %.lcssa136.unr, %scalar.ph.prol.loopexit ], [ %i.cx, %scalar.ph ] ; 2 uses
  %i.cz = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.da = icmp slt i64 %i.cz, %i.c
  br i1 %i.da, label %.lr.ph.us, label %.preheader, !llvm.loop !519

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa80, %._crit_edge.us ]
  %i.db = icmp slt i64 %i.c, %4
  br i1 %i.db, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dc = load ptr, ptr %2, align 8, !tbaa !309   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !311 ; 3 uses
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
  %wide.load128 = load <2 x double>, ptr %i.dv, align 8, !tbaa !66
  %wide.load129 = load <2 x double>, ptr %i.dw, align 8, !tbaa !66
  %i.dx = getelementptr [8 x i8], ptr %i.du, i64 %index127 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <2 x double> %wide.load128, ptr %i.dx, align 8, !tbaa !66
  store <2 x double> %wide.load129, ptr %i.dy, align 8, !tbaa !66
  %index.next130 = add nuw i64 %index127, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.dz, label %middle.block131, label %vector.body126, !llvm.loop !520

middle.block131:                                  ; preds = %vector.body126
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  %i.bc = icmp slt i64 %i.ay, %1
  br i1 %i.bc, label %bb.m, label %..loopexit_crit_edge.split.us188.us.us, !llvm.loop !760

..loopexit_crit_edge.split.us188.us.us:           ; preds = %bb.n
  %i.bd = icmp slt i64 %i.aw, %2
  br i1 %i.bd, label %.lr.ph183.split.us.split.us207.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !761

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us188.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.be = icmp slt i64 %i.ar, %0
  br i1 %i.be, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !762

.lr.ph183.split.us.split.us.us.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %.083182.us.us.us.us = phi i64 [ %i.bf, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bf = add nsw i64 %.083182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bf)
  %i.bg = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.083182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %gep.us185.us.us.us = getelementptr [8 x i8], ptr %invariant.gep184.us.us, i64 %.083182.us.us.us.us
  store ptr %gep.us185.us.us.us, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bg, i64 noundef %i.as, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.us190.split.us.split.us.split.us

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.bh = mul nsw i64 %.083182.us.us.us.us, %6
  %invariant.gep.us.us.us.us = getelementptr [8 x i8], ptr %5, i64 %i.bh
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.us.us.us.us
  %.077178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bi, %bb.q ] ; 4 uses
  %i.bi = add nsw i64 %.077178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bi)
  %i.bj = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.077178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %gep.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us.us.us, i64 %.077178.us.us.us.us.us
  store ptr %gep.us.us.us.us.us, ptr %17, align 8
  store i64 %6, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bg, i64 noundef %i.bj, i64 noundef 0, i64 noundef 0)
          to label %bb.p unwind label %.split.us.split.us.split.us.split.us.split.us

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.bk = mul nsw i64 %.077178.us.us.us.us.us, %9
  %i.bl = getelementptr [8 x i8], ptr %i.av, i64 %i.bk
  store ptr %i.bl, ptr %18, align 8
  store i64 %9, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.bg, i64 noundef %i.bj, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.q unwind label %.split180.us.split.us.split.us.split.us.split.us

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.bm = icmp slt i64 %i.bi, %1
  br i1 %i.bm, label %bb.o, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !760

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.q
  %i.bn = icmp slt i64 %i.bf, %2
  br i1 %i.bn, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !761

.split.us190.split.split.us.split.us:             ; preds = %.lr.ph183.split.us.split.us207.us
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.split.us190

.split180.split.us.split.us.split.us:             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.split.us190.split.us.split.us.split.us:          ; preds = %.lr.ph183.split.us.split.us.us.us
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.split.us190

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.x

.split180.us.split.us.split.us.split.us.split.us: ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us200
  %.084197.us = phi i64 [ %i.bt, %..loopexit177_crit_edge.split.us200 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bt = add nsw i64 %.084197.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bt)
  %i.bu = sub nsw i64 %.sroa.speculated128.us, %.084197.us
  %i.bv = mul nsw i64 %.084197.us, %4
  %invariant.gep184.us = getelementptr [8 x i8], ptr %3, i64 %i.bv
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph183.us, %.loopexit.us
  %.083182.us198 = phi i64 [ 0, %.lr.ph183.us ], [ %i.bw, %.loopexit.us ] ; 3 uses
  %i.bw = add nsw i64 %.083182.us198, %i.b        ; 3 uses
  %.sroa.speculated124.us199 = call i64 @llvm.smin.i64(i64 %2, i64 %i.bw)
  %i.bx = sub nsw i64 %.sroa.speculated124.us199, %.083182.us198
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep184.us, i64 %.083182.us198
  store ptr %gep.us, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bx, i64 noundef %i.bu, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us

.loopexit.us:                                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.by = icmp slt i64 %i.bw, %2
  br i1 %i.by, label %bb.r, label %..loopexit177_crit_edge.split.us200, !llvm.loop !761

..loopexit177_crit_edge.split.us200:              ; preds = %.loopexit.us
  %i.bz = icmp slt i64 %i.bt, %0
  br i1 %i.bz, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !762

.split.split.us:                                  ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.split.us190

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us200, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.l
  br i1 %i.ai, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.s:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ag) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.s
  br i1 %i.u, label %bb.t, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.t:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  ret void

bb.u:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.v:                                             ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

.split.us190:                                     ; preds = %.split.us190.split.split.us.split.us, %.split.us190.split.us.split.us.split.us, %.split.split.us
  %.us-phi = phi { ptr, i32 } [ %i.ca, %.split.split.us ], [ %i.bo, %.split.us190.split.split.us.split.us ], [ %i.bq, %.split.us190.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.x

bb.w:                                             ; preds = %.split180.us.split.us.split.us.split.us.split.us, %.split180.split.us.split.us.split.us
  %.us-phi181 = phi { ptr, i32 } [ %i.bp, %.split180.split.us.split.us.split.us ], [ %i.bs, %.split180.us.split.us.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.x

bb.x:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %bb.w, %.split.us190
  %.pn.pn = phi { ptr, i32 } [ %.us-phi, %.split.us190 ], [ %.us-phi181, %bb.w ], [ %i.br, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ai, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ag) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.x, %bb.y, %bb.v, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.u ], [ %i.cc, %bb.v ], [ %.pn.pn, %bb.y ], [ %.pn.pn, %bb.x ]
  br i1 %i.u, label %bb.z, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.z:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS ROWMAJOR", "~{dirflag},~{fpsr},~{flags}"() #30, !srcloc !763
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  %i.e = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.preheader43.lr.ph.split.us, label %.preheader42

.preheader43.lr.ph.split.us:                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %2, align 8, !tbaa !312    ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !tbaa !314  ; 4 uses
  %i.i = add nsw i64 %3, -1                       ; 4 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep66 = getelementptr i8, ptr %1, i64 16
  %scevgep71.a = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep77 = getelementptr i8, ptr %1, i64 %i.j
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.k = add nuw i64 %smax, %3
  %i.l = shl i64 %i.k, 3
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l
  %scevgep79 = getelementptr i8, ptr %i.m, i64 -8
  %min.iters.check = icmp ult i64 %3, 76
  %ident.check = icmp ne i64 %i.h, 1
  %mul.result = shl i64 %i.i, 5
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %mul.result69 = shl i64 %i.i, 5
  %mul.result74 = shl i64 %i.i, 5
  %invariant.op = or i1 %mul.overflow, %ident.check
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader43.us

.preheader43.us:                                  ; preds = %._crit_edge.us, %.preheader43.lr.ph.split.us
  %.03447.us = phi i64 [ 0, %.preheader43.lr.ph.split.us ], [ %i.cd, %._crit_edge.us ] ; 2 uses
  %.03546.us = phi i64 [ 0, %.preheader43.lr.ph.split.us ], [ %.lcssa64, %._crit_edge.us ] ; 7 uses
  %i.o = getelementptr [8 x i8], ptr %i.g, i64 %.03447.us ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader43.us
  %i.p = shl i64 %.03546.us, 3                    ; 3 uses
  %scevgep65 = getelementptr i8, ptr %scevgep, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %scevgep65, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %scevgep65
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.p ; 2 uses
  %i.s = getelementptr i8, ptr %scevgep67, i64 %mul.result69
  %i.t = icmp ult ptr %i.s, %scevgep67
  %scevgep72.a = getelementptr i8, ptr %scevgep71.a, i64 %i.p ; 2 uses
  %i.u = getelementptr i8, ptr %scevgep72.a, i64 %mul.result74
  %i.v = icmp ult ptr %i.u, %scevgep72.a
  %.reass = or i1 %i.r, %invariant.op
  %i.w = or i1 %i.t, %.reass
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.y = shl i64 %.03546.us, 3                    ; 2 uses
  %scevgep76 = getelementptr i8, ptr %1, i64 %i.y
  %scevgep78 = getelementptr i8, ptr %scevgep77, i64 %i.y
  %bound0 = icmp ult ptr %scevgep76, %scevgep79
  %bound1 = icmp ult ptr %i.g, %scevgep78
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.z = add i64 %.03546.us, %i.n                 ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %1, i64 %.03546.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !66, !alias.scope !764
  %.idx = shl i64 %index, 5
  %i.ac = getelementptr i8, ptr %i.aa, i64 %.idx
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load80 = load <2 x double>, ptr %i.ad, align 8, !tbaa !66, !alias.scope !764
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load81 = load <2 x double>, ptr %i.ae, align 8, !tbaa !66, !alias.scope !764
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %wide.load82 = load <2 x double>, ptr %i.af, align 8, !tbaa !66, !alias.scope !764
  %i.ag = shufflevector <2 x double> %wide.load, <2 x double> %wide.load80, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ah = shufflevector <2 x double> %wide.load81, <2 x double> %wide.load82, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.ag, <4 x double> %i.ah, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ac, align 8, !tbaa !66, !alias.scope !767, !noalias !764
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !769

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader43.us, %middle.block
  %.03345.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader43.us ], [ %n.vec, %middle.block ] ; 4 uses
  %.144.us.ph = phi i64 [ %.03546.us, %vector.memcheck ], [ %.03546.us, %vector.scevcheck ], [ %.03546.us, %.preheader43.us ], [ %i.z, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.03345.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aj = mul nsw i64 %i.h, %.03345.us.ph
  %i.ak = getelementptr [8 x i8], ptr %i.o, i64 %i.aj ; 4 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !66
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %.144.us.ph ; 4 uses
  store double %i.al, ptr %i.am, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !66
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  store double %i.ao, ptr %i.ap, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !66
  %i.as = getelementptr i8, ptr %i.am, i64 16
  store double %i.ar, ptr %i.as, align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.au = load double, ptr %i.at, align 8, !tbaa !66
  %i.av = getelementptr i8, ptr %i.am, i64 24
  store double %i.au, ptr %i.av, align 8, !tbaa !66
  %i.aw = add nsw i64 %.144.us.ph, 4              ; 2 uses
  %i.ax = or disjoint i64 %.03345.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa103.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %.03345.us.unr = phi i64 [ %.03345.us.ph, %scalar.ph.preheader ], [ %i.ax, %scalar.ph.prol ]
  %.144.us.unr = phi i64 [ %.144.us.ph, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %i.ay = icmp eq i64 %3, %.neg
  br i1 %i.ay, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03345.us = phi i64 [ %i.cc, %scalar.ph ], [ %.03345.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.144.us = phi i64 [ %i.cb, %scalar.ph ], [ %.144.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.az = mul nsw i64 %i.h, %.03345.us
  %i.ba = getelementptr [8 x i8], ptr %i.o, i64 %i.az ; 4 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !66
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %.144.us ; 4 uses
  store double %i.bb, ptr %i.bc, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !66
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  store double %i.be, ptr %i.bf, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !66
  %i.bi = getelementptr i8, ptr %i.bc, i64 16
  store double %i.bh, ptr %i.bi, align 8, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !66
  %i.bl = getelementptr i8, ptr %i.bc, i64 24
  store double %i.bk, ptr %i.bl, align 8, !tbaa !66
  %i.bm = add nuw nsw i64 %.03345.us, 1
  %i.bn = mul nsw i64 %i.h, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.o, i64 %i.bn ; 4 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !66
  %i.bq = getelementptr [8 x i8], ptr %1, i64 %.144.us ; 4 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  store double %i.bp, ptr %i.br, align 8, !tbaa !66
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !66
  %i.bu = getelementptr i8, ptr %i.bq, i64 40
  store double %i.bt, ptr %i.bu, align 8, !tbaa !66
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !66
  %i.bx = getelementptr i8, ptr %i.bq, i64 48
  store double %i.bw, ptr %i.bx, align 8, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bz = load double, ptr %i.by, align 8, !tbaa !66
  %i.ca = getelementptr i8, ptr %i.bq, i64 56
  store double %i.bz, ptr %i.ca, align 8, !tbaa !66
  %i.cb = add nsw i64 %.144.us, 8                 ; 2 uses
  %i.cc = add nuw nsw i64 %.03345.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cc, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !770

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa64 = phi i64 [ %i.z, %middle.block ], [ %.lcssa103.unr, %scalar.ph.prol.loopexit ], [ %i.cb, %scalar.ph ] ; 2 uses
  %i.cd = add nuw nsw i64 %.03447.us, 4           ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %i.c
  br i1 %i.ce, label %.preheader43.us, label %.preheader42, !llvm.loop !771

.preheader42:                                     ; preds = %._crit_edge.us, %bb.a
  %.035.lcssa = phi i64 [ 0, %bb.a ], [ %.lcssa64, %._crit_edge.us ]
  %i.cf = icmp slt i64 %i.c, %4
  %i.cg = icmp sgt i64 %3, 0
  %or.cond63 = and i1 %i.cf, %i.cg
  br i1 %or.cond63, label %.preheader.lr.ph.split, label %._crit_edge53.split

.preheader.lr.ph.split:                           ; preds = %.preheader42
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %2, align 8, !tbaa !312   ; 2 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = load i64, ptr %i.ch, align 8, !tbaa !314 ; 6 uses
  %i.cl = shl i64 %i.b, 5
  %i.cm = add i64 %i.cl, %i.cj
  %min.iters.check88 = icmp ugt i64 %3, 5
  %ident.check85.not = icmp eq i64 %i.ck, 1
  %or.cond101 = select i1 %min.iters.check88, i1 %ident.check85.not, i1 false
  %n.vec91 = and i64 %3, 9223372036854775804      ; 4 uses
  %cmp.n98 = icmp eq i64 %3, %n.vec91
  %xtraiter104 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.03252 = phi i64 [ %i.c, %.preheader.lr.ph.split ], [ %i.dj, %._crit_edge ] ; 2 uses
  %.251 = phi i64 [ %.035.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cn = getelementptr [8 x i8], ptr %i.ci, i64 %.03252 ; 6 uses
  br i1 %or.cond101, label %vector.memcheck86, label %scalar.ph87.preheader

vector.memcheck86:                                ; preds = %.preheader
  %i.co = shl i64 %indvar, 3
  %i.cp = add i64 %i.cm, %i.co
  %i.cq = sub i64 %i.a, %i.cp
  %i.cr = shl i64 %.251, 3
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = add i64 %i.cs, -1
  %diff.check = icmp ult i64 %i.ct, 31
  br i1 %diff.check, label %scalar.ph87.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck86
  %i.cu = add i64 %.251, %n.vec91                 ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %1, i64 %.251
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cn, i64 %index93 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %wide.load94 = load <2 x double>, ptr %i.cw, align 8, !tbaa !66
  %wide.load95 = load <2 x double>, ptr %i.cx, align 8, !tbaa !66
  %i.cy = getelementptr [8 x i8], ptr %i.cv, i64 %index93 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x double> %wide.load94, ptr %i.cy, align 8, !tbaa !66
  store <2 x double> %wide.load95, ptr %i.cz, align 8, !tbaa !66
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.da = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.da, label %middle.block97, label %vector.body92, !llvm.loop !772

middle.block97:                                   ; preds = %vector.body92
  br i1 %cmp.n98, label %._crit_edge, label %scalar.ph87.preheader

scalar.ph87.preheader:                            ; preds = %vector.memcheck86, %.preheader, %middle.block97
  %.050.ph = phi i64 [ 0, %vector.memcheck86 ], [ 0, %.preheader ], [ %n.vec91, %middle.block97 ] ; 3 uses
  %.349.ph = phi i64 [ %.251, %vector.memcheck86 ], [ %.251, %.preheader ], [ %i.cu, %middle.block97 ] ; 2 uses
  br i1 %lcmp.mod105.not, label %scalar.ph87.prol.loopexit, label %scalar.ph87.prol

scalar.ph87.prol:                                 ; preds = %scalar.ph87.preheader, %scalar.ph87.prol
  %.050.prol = phi i64 [ %i.dg, %scalar.ph87.prol ], [ %.050.ph, %scalar.ph87.preheader ] ; 2 uses
  %.349.prol = phi i64 [ %i.df, %scalar.ph87.prol ], [ %.349.ph, %scalar.ph87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph87.prol ], [ 0, %scalar.ph87.preheader ]
  %i.db = mul nsw i64 %i.ck, %.050.prol
  %i.dc = getelementptr [8 x i8], ptr %i.cn, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !66
  %i.de = getelementptr inbounds [8 x i8], ptr %1, i64 %.349.prol
end_hunk_1
