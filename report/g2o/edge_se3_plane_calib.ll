Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_plane_calib?download=true
inline.NumInlined: 7154
inline.NumDeleted: 3645
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.bp = or disjoint i64 %.05373.us, 1
  %i.bq = load ptr, ptr %2, align 8, !tbaa !125
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !126
  %i.bs = mul nsw i64 %i.br, %i.bp
  %i.bt = getelementptr [8 x i8], ptr %i.bq, i64 %.175.us
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load <2 x double>, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr [8 x i8], ptr %1, i64 %.372.us
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <2 x double> %i.bv, ptr %i.bx, align 16, !tbaa !8
  %i.by = add nsw i64 %.372.us, 4                 ; 3 uses
  %i.bz = add nuw nsw i64 %.05373.us, 2           ; 2 uses
  %niter129.next.1 = add nuw nsw i64 %niter129, 2 ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !392

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod125.not, label %._crit_edge.us78, label %.epil.preheader123

.epil.preheader123:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.by, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.ca = load ptr, ptr %2, align 8, !tbaa !125
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !126
  %i.cc = mul nsw i64 %i.cb, %.05373.us.epil.init
  %i.cd = getelementptr [8 x i8], ptr %i.ca, i64 %.175.us
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !8
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us.epil.init
  store <2 x double> %i.cf, ptr %i.cg, align 16, !tbaa !8
  %i.ch = add nsw i64 %.372.us.epil.init, 2
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader123
  %.lcssa117 = phi i64 [ %i.by, %._crit_edge.us78.unr-lcssa ], [ %i.ch, %.epil.preheader123 ] ; 2 uses
  %i.ci = add nuw nsw i64 %.175.us, 2             ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %i.g
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !393

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa117, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bh, %.preheader62.preheader ], [ %i.ci, %._crit_edge.us78 ] ; 3 uses
  %i.ck = icmp slt i64 %.1.lcssa, %4
  %i.cl = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !125   ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !126 ; 6 uses
  %min.iters.check = icmp ugt i64 %3, 5
  %ident.check.not = icmp eq i64 %i.cp, 1
  %or.cond115 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter130 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.285 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %i.dn, %._crit_edge ] ; 2 uses
  %.484 = phi i64 [ %.258.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cn, i64 %.285 ; 6 uses
  br i1 %or.cond115, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.cr = add i64 %.1.lcssa, %indvar
  %i.cs = shl i64 %i.cr, 3
  %i.ct = add i64 %i.cs, %i.co
  %i.cu = sub i64 %i.a, %i.ct
  %i.cv = shl i64 %.484, 3
  %i.cw = add i64 %i.cu, %i.cv
  %i.cx = add i64 %i.cw, -1
  %diff.check = icmp ult i64 %i.cx, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cy = add i64 %.484, %n.vec                   ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %.484
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %i.cq, i64 %index ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !43
  %wide.load113 = load <2 x double>, ptr %i.db, align 8, !tbaa !43
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !43
  store <2 x double> %wide.load113, ptr %i.dd, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.083.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.582.ph = phi i64 [ %.484, %vector.memcheck ], [ %.484, %.preheader ], [ %i.cy, %middle.block ] ; 2 uses
  br i1 %lcmp.mod131.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.083.prol = phi i64 [ %i.dk, %scalar.ph.prol ], [ %.083.ph, %scalar.ph.preheader ] ; 2 uses
  %.582.prol = phi i64 [ %i.di, %scalar.ph.prol ], [ %.582.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.df = mul nsw i64 %i.cp, %.083.prol
  %i.dg = getelementptr [8 x i8], ptr %i.cq, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !43
  %i.di = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %.582.prol
  store double %i.dh, ptr %i.dj, align 8, !tbaa !43
  %i.dk = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter130
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !395

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa116.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.di, %scalar.ph.prol ]
  %.083.unr = phi i64 [ %.083.ph, %scalar.ph.preheader ], [ %i.dk, %scalar.ph.prol ]
  %.582.unr = phi i64 [ %.582.ph, %scalar.ph.preheader ], [ %i.di, %scalar.ph.prol ]
  %i.dl = sub nsw i64 %.083.ph, %3
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cy, %middle.block ], [ %.lcssa116.unr, %scalar.ph.prol.loopexit ], [ %i.ei, %scalar.ph ]
  %i.dn = add nuw nsw i64 %.285, 1                ; 2 uses
  %exitcond97.not = icmp eq i64 %i.dn, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond97.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !396

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.el, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ei, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.do = mul nsw i64 %i.cp, %.083
  %i.dp = getelementptr [8 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !43
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %.582
  store double %i.dq, ptr %i.dr, align 8, !tbaa !43
  %i.ds = add nuw nsw i64 %.083, 1
  %i.dt = mul nsw i64 %i.cp, %i.ds
  %i.du = getelementptr [8 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !43
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !43
  %i.dy = add nuw nsw i64 %.083, 2
  %i.dz = mul nsw i64 %i.cp, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !43
  %i.ec = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store double %i.eb, ptr %i.ed, align 8, !tbaa !43
  %i.ee = add nuw nsw i64 %.083, 3
  %i.ef = mul nsw i64 %i.cp, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !43
  %i.ei = add nsw i64 %.582, 4                    ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  store double %i.eh, ptr %i.ek, align 8, !tbaa !43
  %i.el = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond96.not.3 = icmp eq i64 %i.el, %3
  br i1 %exitcond96.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !397

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !412
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !125    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126  ; 12 uses
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
  %wide.load = load <2 x double>, ptr %i.az, align 8, !tbaa !43, !alias.scope !413
  %.idx = shl i64 %index, 5
  %i.ba = getelementptr i8, ptr %i.ay, i64 %.idx
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.bb, align 8, !tbaa !43, !alias.scope !414
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bc, align 8, !tbaa !43, !alias.scope !415
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  %wide.load127 = load <2 x double>, ptr %i.bd, align 8, !tbaa !43, !alias.scope !416
  %i.be = shufflevector <2 x double> %wide.load, <2 x double> %wide.load125, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bf = shufflevector <2 x double> %wide.load126, <2 x double> %wide.load127, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.be, <4 x double> %i.bf, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ba, align 8, !tbaa !43, !alias.scope !417, !noalias !418
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !405

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.ax, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.04358.us.ph
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.bi, ptr %i.bj, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04358.us.ph
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !43
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  store double %i.bl, ptr %i.bm, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !43
  %i.bp = getelementptr i8, ptr %i.bj, i64 16
  store double %i.bo, ptr %i.bp, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !43
  %i.bs = getelementptr i8, ptr %i.bj, i64 24
  store double %i.br, ptr %i.bs, align 8, !tbaa !43
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
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !43
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.bx, ptr %i.by, align 8, !tbaa !43
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04358.us
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr i8, ptr %i.by, i64 8
  store double %i.ca, ptr %i.cb, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04358.us
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !43
  %i.ce = getelementptr i8, ptr %i.by, i64 16
  store double %i.cd, ptr %i.ce, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.04358.us
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !43
  %i.ch = getelementptr i8, ptr %i.by, i64 24
  store double %i.cg, ptr %i.ch, align 8, !tbaa !43
  %i.ci = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !43
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  store double %i.ck, ptr %i.cm, align 8, !tbaa !43
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ci
  %i.co = load double, ptr %i.cn, align 8, !tbaa !43
  %i.cp = getelementptr i8, ptr %i.cl, i64 40
  store double %i.co, ptr %i.cp, align 8, !tbaa !43
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ci
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = getelementptr i8, ptr %i.cl, i64 48
  store double %i.cr, ptr %i.cs, align 8, !tbaa !43
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ci
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !43
  %i.cv = getelementptr i8, ptr %i.cl, i64 56
  store double %i.cu, ptr %i.cv, align 8, !tbaa !43
  %i.cw = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.cx = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cx, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !406

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.ax, %middle.block ], [ %.lcssa145.unr, %scalar.ph.prol.loopexit ], [ %i.cw, %scalar.ph ] ; 2 uses
  %i.cy = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.cz = icmp slt i64 %i.cy, %i.c
  br i1 %i.cz, label %.lr.ph.us, label %.preheader, !llvm.loop !407

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.da = icmp slt i64 %i.c, %4
  br i1 %i.da, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.db = load ptr, ptr %2, align 8, !tbaa !125   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !126 ; 3 uses
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
  %wide.load137 = load <2 x double>, ptr %i.du, align 8, !tbaa !43
  %wide.load138 = load <2 x double>, ptr %i.dv, align 8, !tbaa !43
  %i.dw = getelementptr [8 x i8], ptr %i.dt, i64 %index136 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <2 x double> %wide.load137, ptr %i.dw, align 8, !tbaa !43
  store <2 x double> %wide.load138, ptr %i.dx, align 8, !tbaa !43
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.dy, label %middle.block140, label %vector.body135, !llvm.loop !408

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
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !43
  %i.eb = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.ea, ptr %i.eb, align 8, !tbaa !43
  %i.ec = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ed = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter146
  br i1 %prol.iter.cmp.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol, !llvm.loop !409
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  %i.bf = mul nsw i64 %.077182.us.us.us.us, %6
  %invariant.gep.us.us.us.us = getelementptr [8 x i8], ptr %5, i64 %i.bf
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bg, %bb.o ] ; 4 uses
  %i.bg = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bg)
  %i.bh = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %gep.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us.us.us, i64 %.0178.us.us.us.us.us
  store ptr %gep.us.us.us.us.us, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.be, i64 noundef %i.bh, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.bi = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bj = getelementptr [8 x i8], ptr %i.au, i64 %i.bi
  store ptr %i.bj, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.be, i64 noundef %i.bh, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.bk = icmp slt i64 %i.bg, %1
  br i1 %i.bk, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !561

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.bl = icmp slt i64 %i.bd, %2
  br i1 %i.bl, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !562

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us189.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bm = icmp slt i64 %i.aq, %0
  br i1 %i.bm, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !563

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.t

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us201
  %.078197.us = phi i64 [ %i.bo, %..loopexit177_crit_edge.split.us201 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bo = add nsw i64 %.078197.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bo)
  %i.bp = sub nsw i64 %.sroa.speculated128.us, %.078197.us
  %i.bq = mul nsw i64 %.078197.us, %4
  %invariant.gep184.us = getelementptr [8 x i8], ptr %3, i64 %i.bq
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.us, %.lr.ph183.us
  %.077182.us199 = phi i64 [ 0, %.lr.ph183.us ], [ %i.br, %.loopexit.us ] ; 3 uses
  %i.br = add nsw i64 %.077182.us199, %i.b        ; 3 uses
  %.sroa.speculated124.us200 = call i64 @llvm.smin.i64(i64 %2, i64 %i.br)
  %i.bs = sub nsw i64 %.sroa.speculated124.us200, %.077182.us199
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep184.us, i64 %.077182.us199
  store ptr %gep.us, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bs, i64 noundef %i.bp, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.bt = icmp slt i64 %i.br, %2
  br i1 %i.bt, label %bb.p, label %..loopexit177_crit_edge.split.us201, !llvm.loop !562

..loopexit177_crit_edge.split.us201:              ; preds = %.loopexit.us
  %i.bu = icmp slt i64 %i.bo, %0
  br i1 %i.bu, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !563

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us202.us, %bb.p
  %lpad.loopexit.split-lp257 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us201, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  ret void

bb.s:                                             ; preds = %.invoke
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp257, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bn, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #27, !srcloc !579
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
  %i.j = load ptr, ptr %2, align 8, !tbaa !128    ; 2 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = load i64, ptr %i.e, align 8, !tbaa !129  ; 3 uses
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
  %i.ai = load ptr, ptr %2, align 8, !tbaa !128
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !129 ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %.0128145.us ; 2 uses
  %i.al = mul nsw i64 %i.aj, %.1133167.us
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !8 ; 2 uses
  %i.ao = mul nsw i64 %i.aj, %i.ae
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !8 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.as, ptr %i.ah, align 16, !tbaa !8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  store <2 x double> %i.ar, ptr %i.at, align 16, !tbaa !8
  %i.au = load ptr, ptr %2, align 8, !tbaa !128
  %i.av = load i64, ptr %i.e, align 8, !tbaa !129 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %.0128145.us ; 2 uses
  %i.ax = mul nsw i64 %i.av, %i.af
  %i.ay = getelementptr [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !8 ; 2 uses
  %i.ba = mul nsw i64 %i.av, %i.ag
  %i.bb = getelementptr [8 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load <2 x double>, ptr %i.bb, align 1, !tbaa !8 ; 2 uses
  %i.bd = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.be = shufflevector <2 x double> %i.az, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store <2 x double> %i.be, ptr %i.bf, align 16, !tbaa !8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store <2 x double> %i.bd, ptr %i.bg, align 16, !tbaa !8
  %i.bh = add nsw i64 %.2146.us, %i.x             ; 2 uses
  %i.bi = add nuw nsw i64 %.0128145.us, 2         ; 3 uses
  %i.bj = icmp slt i64 %i.bi, %i.c
  br i1 %i.bj, label %.preheader140.us, label %.preheader141.us, !llvm.loop !564

.preheader141.us:                                 ; preds = %.preheader140.us, %.lr.ph.split.us
  %.0128.lcssa.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.bi, %.preheader140.us ] ; 10 uses
  %.2.lcssa.us = phi i64 [ %.1170.us, %.lr.ph.split.us ], [ %i.bh, %.preheader140.us ] ; 8 uses
  %i.bk = icmp slt i64 %.0128.lcssa.us, %3
  br i1 %i.bk, label %.preheader139.lr.ph.us, label %._crit_edge159.split.us.us

.preheader139.lr.ph.us:                           ; preds = %.preheader141.us
  %i.bl = load ptr, ptr %2, align 8, !tbaa !128   ; 12 uses
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !129 ; 8 uses
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
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !43, !alias.scope !580
  %i.dt = getelementptr [8 x i8], ptr %i.dr, i64 %i.bp
  %wide.load295 = load <2 x double>, ptr %i.dt, align 8, !tbaa !43, !alias.scope !581
  %i.du = getelementptr [8 x i8], ptr %i.dr, i64 %i.br
  %wide.load296 = load <2 x double>, ptr %i.du, align 8, !tbaa !43, !alias.scope !582
  %i.dv = getelementptr [8 x i8], ptr %i.dr, i64 %i.bt
  %wide.load297 = load <2 x double>, ptr %i.dv, align 8, !tbaa !43, !alias.scope !583
  %.idx = shl i64 %index, 5
  %i.dw = getelementptr i8, ptr %i.dq, i64 %.idx
  %i.dx = shufflevector <2 x double> %wide.load, <2 x double> %wide.load295, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = shufflevector <2 x double> %wide.load296, <2 x double> %wide.load297, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dx, <4 x double> %i.dy, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.dw, align 8, !tbaa !43, !alias.scope !584, !noalias !585
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !571

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
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !43
  %i.ef = getelementptr [8 x i8], ptr %i.eb, i64 %i.bp
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !43
  %i.eh = getelementptr [8 x i8], ptr %i.eb, i64 %i.br
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !43
  %i.ej = getelementptr [8 x i8], ptr %i.eb, i64 %i.bt
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !43
  %i.el = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158.us.us.ph ; 4 uses
  store double %i.ee, ptr %i.el, align 8, !tbaa !43
  %i.em = getelementptr i8, ptr %i.el, i64 8
  store double %i.eg, ptr %i.em, align 8, !tbaa !43
  %i.en = getelementptr i8, ptr %i.el, i64 16
  store double %i.ei, ptr %i.en, align 8, !tbaa !43
  %i.eo = getelementptr i8, ptr %i.el, i64 24
  store double %i.ek, ptr %i.eo, align 8, !tbaa !43
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
  %i.et = load double, ptr %i.es, align 8, !tbaa !43
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %i.bp
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !43
  %i.ew = getelementptr [8 x i8], ptr %i.er, i64 %i.br
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !43
  %i.ey = getelementptr [8 x i8], ptr %i.er, i64 %i.bt
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !43
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %.4158.us.us ; 4 uses
  store double %i.et, ptr %i.fa, align 8, !tbaa !43
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  store double %i.ev, ptr %i.fb, align 8, !tbaa !43
  %i.fc = getelementptr i8, ptr %i.fa, i64 16
  store double %i.ex, ptr %i.fc, align 8, !tbaa !43
  %i.fd = getelementptr i8, ptr %i.fa, i64 24
  store double %i.ez, ptr %i.fd, align 8, !tbaa !43
  %i.fe = getelementptr [8 x i8], ptr %i.bl, i64 %.2130156.us.us
  %i.ff = getelementptr i8, ptr %i.fe, i64 8      ; 4 uses
  %i.fg = add nsw i64 %.4158.us.us, 8             ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.ff, i64 %i.bn
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !43
  %i.fj = getelementptr [8 x i8], ptr %i.ff, i64 %i.bp
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !43
  %i.fl = getelementptr [8 x i8], ptr %i.ff, i64 %i.br
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !43
  %i.fn = getelementptr [8 x i8], ptr %i.ff, i64 %i.bt
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !43
  %i.fp = getelementptr [8 x i8], ptr %1, i64 %.4158.us.us ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 32
  store double %i.fi, ptr %i.fq, align 8, !tbaa !43
  %i.fr = getelementptr i8, ptr %i.fp, i64 40
  store double %i.fk, ptr %i.fr, align 8, !tbaa !43
  %i.fs = getelementptr i8, ptr %i.fp, i64 48
  store double %i.fm, ptr %i.fs, align 8, !tbaa !43
  %i.ft = getelementptr i8, ptr %i.fp, i64 56
  store double %i.fo, ptr %i.ft, align 8, !tbaa !43
  %i.fu = add nuw nsw i64 %.2130156.us.us, 2      ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %i.fu, %3
  br i1 %exitcond208.not.1, label %._crit_edge159.split.us.us, label %.loopexit.us.us, !llvm.loop !572

._crit_edge159.split.us.us:                       ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us, %middle.block, %.preheader141.us
  %.4.lcssa.us = phi i64 [ %.2.lcssa.us, %.preheader141.us ], [ %i.dn, %middle.block ], [ %.lcssa332.unr, %.loopexit.us.us.prol.loopexit ], [ %i.fg, %.loopexit.us.us ] ; 2 uses
  %i.fv = add i64 %.1133167.us, %indvars.iv       ; 3 uses
  %i.fw = icmp slt i64 %i.fv, %i.v
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fw, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !573

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
  %i.fz = load ptr, ptr %2, align 8, !tbaa !128
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !129 ; 4 uses
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
  %i.gj = load ptr, ptr %2, align 8, !tbaa !128
  %i.gk = load i64, ptr %i.e, align 8, !tbaa !129 ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gj, i64 %.0128145 ; 2 uses
  %i.gm = mul nsw i64 %i.gk, %.1133167
  %i.gn = getelementptr [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !8 ; 2 uses
  %i.gp = mul nsw i64 %i.gk, %i.fx
  %i.gq = getelementptr [8 x i8], ptr %i.gl, i64 %i.gp
  %i.gr = load <2 x double>, ptr %i.gq, align 1, !tbaa !8 ; 2 uses
  %i.gs = shufflevector <2 x double> %i.go, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  %i.gt = shufflevector <2 x double> %i.go, <2 x double> %i.gr, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.gt, ptr %i.gi, align 16, !tbaa !8
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv
  store <2 x double> %i.gs, ptr %i.gu, align 16, !tbaa !8
  %i.gv = add nsw i64 %.2146, %i.x                ; 2 uses
  %i.gw = add nuw nsw i64 %.0128145, 2            ; 3 uses
  %i.gx = icmp slt i64 %i.gw, %i.c
  br i1 %i.gx, label %.preheader140, label %.preheader141, !llvm.loop !564

.preheader139:                                    ; preds = %.preheader139.lr.ph.split.split, %..loopexit_crit_edge
  %.4158 = phi i64 [ %.2.lcssa, %.preheader139.lr.ph.split.split ], [ %.lcssa328, %..loopexit_crit_edge ] ; 5 uses
  %.2130156 = phi i64 [ %.0128.lcssa, %.preheader139.lr.ph.split.split ], [ %i.hp, %..loopexit_crit_edge ] ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %i.fz, i64 %.2130156 ; 4 uses
end_hunk_1
begin_hunk_2_@llvm.memmove.p0.p0.i64
!218 = distinct !{!218, !87}
!219 = distinct !{!219, !87, !101, !102}
!220 = distinct !{!220, !103}
!221 = distinct !{!221, !87, !101}
!222 = distinct !{!222, !87, !101, !102}
!223 = distinct !{!223, !103}
!224 = distinct !{!224, !87, !101}
!225 = distinct !{!225, !87}
!226 = distinct !{!226, !103}
!227 = distinct !{!227, !87}
!228 = distinct !{!228, !87, !101, !102}
!229 = distinct !{!229, !103}
!230 = distinct !{!230, !87, !101}
!231 = distinct !{!231, !87, !101, !102}
!232 = distinct !{!232, !103}
!233 = distinct !{!233, !87, !101}
!234 = distinct !{!234, !103}
!235 = distinct !{!235, !87}
!236 = distinct !{!236, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlINS3_IdLi3ELi3ELi0ELi3ELi3EEEEEKNS_7ProductIS9_T_Li0EEERKNS0_ISE_EE"}
!237 = distinct !{!237, !236, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlINS3_IdLi3ELi3ELi0ELi3ELi3EEEEEKNS_7ProductIS9_T_Li0EEERKNS0_ISE_EE: argument 0"}
!238 = distinct !{!238, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE"}
!239 = distinct !{!239, !238, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE: argument 0"}
!240 = distinct !{!240, !87}
!241 = distinct !{!241, i1 true, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlINS1_IS4_EEEEKNS_7ProductIS9_T_Li0EEERKNS0_ISE_EE"}
!242 = distinct !{!242, !241, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEmlINS1_IS4_EEEEKNS_7ProductIS9_T_Li0EEERKNS0_ISE_EE: argument 0"}
!243 = distinct !{!243, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!244 = distinct !{!244, !243, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!245 = distinct !{!245, !87}
!246 = distinct !{!246, !103}
!247 = distinct !{!247, !87}
!248 = distinct !{!248, !87}
!249 = distinct !{!249, i1 false, !"LVerDomain"}
!250 = distinct !{!250, !249}
!251 = distinct !{!251, !249}
!252 = distinct !{!252, !249}
!253 = distinct !{!253, !87, !101, !102}
!254 = distinct !{!254, !87, !101}
!255 = distinct !{!255, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE"}
!256 = distinct !{!256, !255, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmlINS_3MapIS2_Li0ENS_6StrideILi0ELi0EEEEEEEKNS_7ProductIS2_T_Li0EEERKNS0_ISA_EE: argument 0"}
!257 = distinct !{!257, !87}
!258 = distinct !{!258, !87}
!259 = !{!104, !104, i64 0}
!260 = !{!237}
!261 = !{!109, !109, i64 0}
!262 = !{!239}
!263 = !{!110, !88, i64 0}
!264 = !{!120, !120, i64 0}
!265 = !{!121, !121, i64 0}
!266 = !{!122, !122, i64 0}
!267 = !{!54, !54, i64 0}
!268 = !{!242}
!269 = !{!244}
!270 = !{!250}
!271 = !{!251}
!272 = !{!252}
!273 = !{!251, !250}
!274 = !{!256}
!275 = distinct !{!275, !87}
!276 = distinct !{!276, !87}
!277 = !{!"_ZTSN5Eigen9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEE", !95, i64 0}
!278 = !{!"_ZTSN5Eigen7ProductINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_IdLi3ELi3ELi0ELi3ELi3EEELi0EEE", !277, i64 0, !104, i64 32}
!279 = !{!278, !104, i64 32}
!280 = distinct !{!280, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!281 = distinct !{!281, !280, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!282 = distinct !{!282, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!283 = distinct !{!283, !282, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!284 = distinct !{!284, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!285 = distinct !{!285, !284, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!286 = distinct !{!286, !87}
!287 = distinct !{!287, !103}
!288 = distinct !{!288, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl"}
!289 = distinct !{!289, !288, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl: argument 0"}
!290 = distinct !{!290, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!291 = distinct !{!291, !290, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!292 = distinct !{!292, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!293 = distinct !{!293, !292, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!294 = distinct !{!294, !87}
!295 = distinct !{!295, !103}
!296 = !{!281}
!297 = !{!283}
!298 = !{!285}
!299 = !{!289}
!300 = !{!291}
!301 = !{!293}
!302 = distinct !{!302, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!303 = distinct !{!303, !302, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!304 = distinct !{!304, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!305 = distinct !{!305, !304, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!306 = distinct !{!306, !87, !101, !102}
!307 = distinct !{!307, !87, !102, !101}
!308 = distinct !{!308, !87}
!309 = distinct !{!309, !87}
!310 = distinct !{!310, !103}
!311 = distinct !{!311, !87}
!312 = distinct !{!312, i1 false, !"LVerDomain"}
!313 = distinct !{!313, !312}
!314 = distinct !{!314, !312}
!315 = distinct !{!315, !312}
!316 = distinct !{!316, !87, !101, !102}
!317 = distinct !{!317, !87, !101}
!318 = distinct !{!318, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!319 = distinct !{!319, !318, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!320 = distinct !{!320, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!321 = distinct !{!321, !320, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!322 = distinct !{!322, !103}
!323 = distinct !{!323, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!324 = distinct !{!324, !323, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!325 = distinct !{!325, i1 true, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!326 = distinct !{!326, !325, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!327 = distinct !{!327, !87, !101, !102}
!328 = distinct !{!328, !87, !102, !101}
!329 = distinct !{!329, !87}
!330 = distinct !{!330, !87}
!331 = distinct !{!331, !87}
!332 = distinct !{!332, !103}
!333 = distinct !{!333, !87}
!334 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductIS5_S8_Li1EEEEENS0_13add_assign_opIddEELi1EEE", !120, i64 0, !121, i64 8, !122, i64 16, !54, i64 24}
!335 = !{!334, !54, i64 24}
!336 = !{!118, !109, i64 0}
!337 = !{!303}
!338 = !{!305}
!339 = !{!313}
!340 = !{!314}
!341 = !{!315}
!342 = !{!314, !313}
!343 = !{!334, !120, i64 0}
!344 = !{!334, !121, i64 8}
!345 = !{!319}
!346 = !{!321}
!347 = !{!324}
!348 = !{!326}
!349 = !{!115, !88, i64 0}
!350 = distinct !{!350, !87}
!351 = distinct !{!351, !87}
!352 = distinct !{!352, !87}
!353 = distinct !{!353, !87}
!354 = distinct !{!354, !87}
!355 = distinct !{!355, !87}
!356 = distinct !{!356, !87}
!357 = distinct !{!357, !87}
!358 = distinct !{!358, !87}
!359 = distinct !{!359, !87, !101, !102}
!360 = distinct !{!360, !103}
!361 = distinct !{!361, !87, !101}
!362 = distinct !{!362, !87}
!363 = distinct !{!363, !87}
!364 = distinct !{!364, !87}
!365 = distinct !{!365, !87}
!366 = distinct !{!366, !87}
!367 = distinct !{!367, !87}
!368 = distinct !{!368, !87}
!369 = distinct !{!369, !87}
!370 = distinct !{!370, !87}
!371 = distinct !{!371, !87}
!372 = distinct !{!372, !103}
!373 = distinct !{!373, !103}
!374 = distinct !{!374, !87}
!375 = distinct !{!375, !87}
!376 = !{!"branch_weights", i32 1, i32 1048575}
!377 = !{!141, !44, i64 0}
!378 = !{!141, !44, i64 8}
!379 = distinct !{!379, !87}
!380 = !{i64 2153718943}
!381 = !{i64 2153717948}
!382 = !{i64 2153718346}
!383 = !{i64 2153718545}
!384 = !{i64 2153718744}
!385 = distinct !{!385, !87}
!386 = !{i64 2153718147}
!387 = distinct !{!387, !87}
!388 = distinct !{!388, !87}
!389 = distinct !{!389, !87}
!390 = distinct !{!390, !87}
!391 = distinct !{!391, !87}
!392 = distinct !{!392, !87}
!393 = distinct !{!393, !87}
!394 = distinct !{!394, !87, !101, !102}
!395 = distinct !{!395, !103}
!396 = distinct !{!396, !87}
!397 = distinct !{!397, !87, !101}
!398 = !{i64 2155620875}
!399 = distinct !{!399, i1 false, !"LVerDomain"}
!400 = distinct !{!400, !399}
!401 = distinct !{!401, !399}
!402 = distinct !{!402, !399}
!403 = distinct !{!403, !399}
!404 = distinct !{!404, !399}
!405 = distinct !{!405, !87, !101, !102}
!406 = distinct !{!406, !87, !101}
!407 = distinct !{!407, !87}
!408 = distinct !{!408, !87, !101, !102}
!409 = distinct !{!409, !103}
!410 = distinct !{!410, !87}
!411 = distinct !{!411, !87, !101}
!412 = !{i64 2155621580}
!413 = !{!400}
!414 = !{!401}
!415 = !{!402}
!416 = !{!403}
!417 = !{!404}
!418 = !{!403, !402, !401, !400}
!419 = distinct !{!419, !87}
!420 = distinct !{!420, !87}
!421 = distinct !{!421, !87}
!422 = distinct !{!422, !87}
!423 = distinct !{!423, !87}
!424 = distinct !{!424, !87}
!425 = distinct !{!425, !87}
!426 = distinct !{!426, !87}
!427 = distinct !{!427, !87}
!428 = distinct !{!428, !87}
!429 = distinct !{!429, !87}
!430 = distinct !{!430, !87}
!431 = distinct !{!431, !87}
!432 = distinct !{!432, !87}
!433 = distinct !{!433, !103}
!434 = distinct !{!434, !87}
!435 = !{i64 2155612219}
!436 = !{i64 2155613042}
!437 = !{i64 2155613096}
!438 = !{i64 2155613159}
!439 = !{i64 2155613988}
!440 = !{i64 2155614042}
!441 = !{i64 2155614105}
!442 = !{i64 2155614934}
!443 = !{i64 2155614988}
!444 = !{i64 2155615051}
!445 = !{i64 2155615880}
!446 = !{i64 2155615934}
!447 = !{i64 2155615997}
!448 = !{i64 2155616826}
!449 = !{i64 2155616880}
!450 = !{i64 2155616943}
!451 = !{i64 2155617772}
!452 = !{i64 2155617826}
!453 = !{i64 2155617889}
!454 = !{i64 2155618718}
!455 = !{i64 2155618772}
!456 = !{i64 2155618835}
!457 = !{i64 2155619664}
!458 = !{i64 2155619718}
!459 = !{i64 2155619781}
!460 = !{i64 2155619833}
!461 = !{i64 2155620654}
!462 = !{i64 2155620708}
!463 = !{i64 2155620771}
!464 = !{i64 2155600654}
!465 = !{i64 2155601925}
!466 = !{i64 2155601979}
!467 = !{i64 2155603193}
!468 = !{i64 2155603247}
!469 = !{i64 2155604461}
!470 = !{i64 2155604515}
!471 = !{i64 2155605729}
!472 = !{i64 2155605783}
!473 = !{i64 2155606997}
!474 = !{i64 2155607051}
!475 = !{i64 2155608265}
!476 = !{i64 2155608319}
!477 = !{i64 2155609533}
!478 = !{i64 2155609587}
!479 = !{i64 2155610801}
!480 = !{i64 2155610855}
!481 = !{i64 2155610907}
!482 = !{i64 2155612113}
!483 = !{i64 2155612167}
!484 = distinct !{!484, !87}
!485 = distinct !{!485, !87}
!486 = distinct !{!486, !87}
!487 = distinct !{!487, !87}
!488 = distinct !{!488, !87}
!489 = distinct !{!489, !87}
!490 = distinct !{!490, !87}
!491 = !{i64 2155560883}
!492 = !{i64 2155560646}
!493 = !{i64 2155560699}
!494 = !{i64 2155560825}
!495 = !{i64 2155560941}
!496 = !{i64 2155560997}
!497 = !{i64 2155561556}
!498 = !{i64 2155561622}
!499 = !{i64 2155561685}
!500 = !{i64 2155562250}
!501 = !{i64 2155562316}
!502 = !{i64 2155562379}
!503 = !{i64 2155562944}
!504 = !{i64 2155563010}
!505 = !{i64 2155563073}
!506 = !{i64 2155563638}
!507 = !{i64 2155563704}
!508 = !{i64 2155563767}
!509 = !{i64 2155564332}
!510 = !{i64 2155564398}
!511 = !{i64 2155564461}
!512 = !{i64 2155565026}
!513 = !{i64 2155565092}
!514 = !{i64 2155565155}
!515 = !{i64 2155565720}
!516 = !{i64 2155565786}
!517 = !{i64 2155565849}
!518 = !{i64 2155566414}
!519 = !{i64 2155566480}
!520 = !{i64 2155566543}
!521 = !{i64 2155566607}
!522 = !{i64 2155567164}
!523 = !{i64 2155567230}
!524 = !{i64 2155567293}
!525 = distinct !{!525, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl"}
!526 = distinct !{!526, !525, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3colEl: argument 0"}
!527 = distinct !{!527, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!528 = distinct !{!528, !527, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!529 = distinct !{!529, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!530 = distinct !{!530, !529, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!531 = distinct !{!531, !87}
!532 = distinct !{!532, !103}
!533 = distinct !{!533, i1 true, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl"}
!534 = distinct !{!534, !533, !"_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE3rowEl: argument 0"}
!535 = distinct !{!535, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl"}
!536 = distinct !{!536, !535, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEE3rowEl: argument 0"}
!537 = distinct !{!537, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!538 = distinct !{!538, !537, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!539 = distinct !{!539, !87}
!540 = distinct !{!540, !103}
!541 = !{!526}
!542 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1EEELi1EEE", !149, i64 0}
!543 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb1ELb1EEE", !542, i64 0, !95, i64 24, !89, i64 56, !89, i64 64, !44, i64 72}
!544 = !{!543, !44, i64 72}
!545 = !{!528}
!546 = !{!530}
!547 = !{!534}
!548 = !{!536}
!549 = !{!538}
!550 = distinct !{!550, !87, !101, !102}
!551 = distinct !{!551, !103}
!552 = distinct !{!552, !87, !101}
!553 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb0EEELi0EEE", !88, i64 0, !89, i64 8, !112, i64 16}
!554 = !{!553, !88, i64 0}
!555 = distinct !{!555, !87, !101, !102}
!556 = distinct !{!556, !103}
!557 = distinct !{!557, !87, !101}
!558 = distinct !{!558, !87, !101, !102}
!559 = distinct !{!559, !103}
!560 = distinct !{!560, !87, !101}
!561 = distinct !{!561, !87}
!562 = distinct !{!562, !87}
!563 = distinct !{!563, !87}
!564 = distinct !{!564, !87}
!565 = distinct !{!565, i1 false, !"LVerDomain"}
!566 = distinct !{!566, !565}
!567 = distinct !{!567, !565}
!568 = distinct !{!568, !565}
!569 = distinct !{!569, !565}
!570 = distinct !{!570, !565}
!571 = distinct !{!571, !87, !101, !102}
!572 = distinct !{!572, !87, !101}
!573 = distinct !{!573, !87}
!574 = distinct !{!574, !87}
!575 = distinct !{!575, !87, !101, !102}
!576 = distinct !{!576, !103}
!577 = distinct !{!577, !87}
!578 = distinct !{!578, !87, !101}
!579 = !{i64 2155621269}
!580 = !{!566}
!581 = !{!567}
!582 = !{!568}
!583 = !{!569}
!584 = !{!570}
!585 = !{!569, !568, !567, !566}
!586 = distinct !{!586, i1 false, !"LVerDomain"}
!587 = distinct !{!587, !586}
!588 = distinct !{!588, !586}
!589 = distinct !{!589, !87, !101, !102}
!590 = distinct !{!590, !87, !101}
!591 = distinct !{!591, !87}
!592 = distinct !{!592, !87, !101, !102}
!593 = distinct !{!593, !103}
!594 = distinct !{!594, !87}
!595 = distinct !{!595, !87, !101}
!596 = !{i64 2155621874}
!597 = !{!587}
!598 = !{!588}
end_hunk_2
