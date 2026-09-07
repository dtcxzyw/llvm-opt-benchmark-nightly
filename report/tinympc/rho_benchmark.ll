Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rho_benchmark?download=true
inline.NumInlined: 3320
inline.NumDeleted: 1437
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !78
  %i.bk = mul nsw i64 %i.bj, %.05373.us
  %i.bl = getelementptr [8 x i8], ptr %i.bi, i64 %.175.us
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !58
  %i.bo = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us
  store <2 x double> %i.bn, ptr %i.bo, align 16, !tbaa !58
  %i.bp = or disjoint i64 %.05373.us, 1
  %i.bq = load ptr, ptr %2, align 8, !tbaa !77
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !78
  %i.bs = mul nsw i64 %i.br, %i.bp
  %i.bt = getelementptr [8 x i8], ptr %i.bq, i64 %.175.us
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load <2 x double>, ptr %i.bu, align 1, !tbaa !58
  %i.bw = getelementptr [8 x i8], ptr %1, i64 %.372.us
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  store <2 x double> %i.bv, ptr %i.bx, align 16, !tbaa !58
  %i.by = add nsw i64 %.372.us, 4                 ; 3 uses
  %i.bz = add nuw nsw i64 %.05373.us, 2           ; 2 uses
  %niter129.next.1 = add nuw nsw i64 %niter129, 2 ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !406

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod125.not, label %._crit_edge.us78, label %.epil.preheader123

.epil.preheader123:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.by, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.ca = load ptr, ptr %2, align 8, !tbaa !77
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !78
  %i.cc = mul nsw i64 %i.cb, %.05373.us.epil.init
  %i.cd = getelementptr [8 x i8], ptr %i.ca, i64 %.175.us
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !58
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %.372.us.epil.init
  store <2 x double> %i.cf, ptr %i.cg, align 16, !tbaa !58
  %i.ch = add nsw i64 %.372.us.epil.init, 2
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader123
  %.lcssa117 = phi i64 [ %i.by, %._crit_edge.us78.unr-lcssa ], [ %i.ch, %.epil.preheader123 ] ; 2 uses
  %i.ci = add nuw nsw i64 %.175.us, 2             ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %i.g
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !407

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa117, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bh, %.preheader62.preheader ], [ %i.ci, %._crit_edge.us78 ] ; 3 uses
  %i.ck = icmp slt i64 %.1.lcssa, %4
  %i.cl = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !78 ; 6 uses
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
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !19
  %wide.load113 = load <2 x double>, ptr %i.db, align 8, !tbaa !19
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x double> %wide.load, ptr %i.dc, align 8, !tbaa !19
  store <2 x double> %wide.load113, ptr %i.dd, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !408

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
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !19
  %i.di = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %1, i64 %.582.prol
  store double %i.dh, ptr %i.dj, align 8, !tbaa !19
  %i.dk = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter130
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !409

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
  br i1 %exitcond97.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !410

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.el, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ei, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.do = mul nsw i64 %i.cp, %.083
  %i.dp = getelementptr [8 x i8], ptr %i.cq, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !19
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %.582
  store double %i.dq, ptr %i.dr, align 8, !tbaa !19
  %i.ds = add nuw nsw i64 %.083, 1
  %i.dt = mul nsw i64 %i.cp, %i.ds
  %i.du = getelementptr [8 x i8], ptr %i.cq, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !19
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !19
  %i.dy = add nuw nsw i64 %.083, 2
  %i.dz = mul nsw i64 %i.cp, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !19
  %i.ec = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  store double %i.eb, ptr %i.ed, align 8, !tbaa !19
  %i.ee = add nuw nsw i64 %.083, 3
  %i.ef = mul nsw i64 %i.cp, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !19
  %i.ei = add nsw i64 %.582, 4                    ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %1, i64 %.582
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  store double %i.eh, ptr %i.ek, align 8, !tbaa !19
  %i.el = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond96.not.3 = icmp eq i64 %i.el, %3
  br i1 %exitcond96.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !411

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !426
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !77     ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78   ; 12 uses
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
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep91, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep89, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep93, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep94, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep90, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep88, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep92, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.ds, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.e, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.04460.us, 3
  %i.av = mul nsw i64 %i.g, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.e, i64 %i.av ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ax = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ax ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.bb = icmp ult ptr %i.ba, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ax ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %scevgep84
  %i.be = or i1 %i.bd, %mul.overflow
  %i.bf = or i1 %i.bb, %i.az
  %i.bg = or i1 %i.bf, %i.be
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.bh
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.bh
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep85, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bj, %i.ag
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.bm = shufflevector <4 x ptr> %i.bl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bn = icmp ult <4 x ptr> %i.ak, %i.bm
  %i.bo = and <4 x i1> %i.bk, %i.bn
  %i.bp = bitcast <4 x i1> %i.bo to i4
  %i.bq = icmp ne i4 %i.bp, 0
  %op.rdx = or i1 %i.bq, %stride.check98
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = add i64 %.04559.us, %i.al               ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !19, !alias.scope !427
  %.idx = shl i64 %index, 5
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.bv, align 8, !tbaa !19, !alias.scope !428
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bw, align 8, !tbaa !19, !alias.scope !429
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bx, align 8, !tbaa !19, !alias.scope !430
  %i.by = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.by, <4 x double> %i.bz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bu, align 8, !tbaa !19, !alias.scope !431, !noalias !432
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !419

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.br, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.cc, ptr %i.cd, align 8, !tbaa !19
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !19
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr i8, ptr %i.cd, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !19
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store double %i.cl, ptr %i.cm, align 8, !tbaa !19
  %i.cn = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.co = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.cp = icmp eq i64 %3, %.neg
  br i1 %i.cp, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dr, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dq, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !19
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cr, ptr %i.cs, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !19
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !19
  %i.cy = getelementptr i8, ptr %i.cs, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !19
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !19
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !19
  %i.dc = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !19
  %i.df = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store double %i.de, ptr %i.dg, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !19
  %i.dj = getelementptr i8, ptr %i.df, i64 40
  store double %i.di, ptr %i.dj, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !19
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !19
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !420

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !421

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !78 ; 3 uses
  %i.dy = icmp sgt i64 %3, 0
  br i1 %i.dy, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = mul i64 %i.dx, %i.b
  %i.eb = shl i64 %i.ea, 5
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = mul i64 %i.dx, -8
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
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fa, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.ef = mul nsw i64 %i.dx, %.04267
  %i.eg = getelementptr [8 x i8], ptr %i.dv, i64 %i.ef ; 6 uses
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph
  %i.eh = mul i64 %i.ee, %indvar
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = shl i64 %.266, 3
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = add i64 %i.ek, -1
  %diff.check = icmp ult i64 %i.el, 31
  br i1 %diff.check, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck113
  %i.em = add i64 %.266, %n.vec117                ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body118 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index119 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load120 = load <2 x double>, ptr %i.eo, align 8, !tbaa !19
  %wide.load121 = load <2 x double>, ptr %i.ep, align 8, !tbaa !19
  %i.eq = getelementptr [8 x i8], ptr %i.en, i64 %index119 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> %wide.load120, ptr %i.eq, align 8, !tbaa !19
  store <2 x double> %wide.load121, ptr %i.er, align 8, !tbaa !19
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.es, label %middle.block123, label %vector.body118, !llvm.loop !422

middle.block123:                                  ; preds = %vector.body118
  br i1 %cmp.n124, label %._crit_edge, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %vector.memcheck113, %.lr.ph, %middle.block123
  %.065.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph ], [ %n.vec117, %middle.block123 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck113 ], [ %.266, %.lr.ph ], [ %i.em, %middle.block123 ] ; 2 uses
  br i1 %lcmp.mod130.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol

scalar.ph114.prol:                                ; preds = %scalar.ph114.preheader, %scalar.ph114.prol
  %.065.prol = phi i64 [ %i.ex, %scalar.ph114.prol ], [ %.065.ph, %scalar.ph114.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ew, %scalar.ph114.prol ], [ %.364.ph, %scalar.ph114.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph114.prol ], [ 0, %scalar.ph114.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !19
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.eu, ptr %i.ev, align 8, !tbaa !19
  %i.ew = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ex = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol, !llvm.loop !423

scalar.ph114.prol.loopexit:                       ; preds = %scalar.ph114.prol, %scalar.ph114.preheader
  %.lcssa127.unr = phi i64 [ poison, %scalar.ph114.preheader ], [ %i.ew, %scalar.ph114.prol ]
  %.065.unr = phi i64 [ %.065.ph, %scalar.ph114.preheader ], [ %i.ex, %scalar.ph114.prol ]
  %.364.unr = phi i64 [ %.364.ph, %scalar.ph114.preheader ], [ %i.ew, %scalar.ph114.prol ]
  %i.ey = sub nsw i64 %.065.ph, %3
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge, label %scalar.ph114

._crit_edge:                                      ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114, %middle.block123
  %.lcssa = phi i64 [ %i.em, %middle.block123 ], [ %.lcssa127.unr, %scalar.ph114.prol.loopexit ], [ %i.ft, %scalar.ph114 ]
  %i.fa = add nsw i64 %.04267, 1                  ; 2 uses
  %exitcond73.not = icmp eq i64 %i.fa, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond73.not, label %._crit_edge69.split, label %.lr.ph, !llvm.loop !424

scalar.ph114:                                     ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114
  %.065 = phi i64 [ %i.fu, %scalar.ph114 ], [ %.065.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %.364 = phi i64 [ %i.ft, %scalar.ph114 ], [ %.364.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !19
  %i.fd = getelementptr inbounds [8 x i8], ptr %1, i64 %.364
  store double %i.fc, ptr %i.fd, align 8, !tbaa !19
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !19
  %i.fh = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  store double %i.fg, ptr %i.fi, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !19
  %i.fm = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store double %i.fl, ptr %i.fn, align 8, !tbaa !19
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !19
  %i.fr = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  store double %i.fq, ptr %i.fs, align 8, !tbaa !19
  %i.ft = add nsw i64 %.364, 4                    ; 2 uses
  %i.fu = add nuw nsw i64 %.065, 4                ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %i.fu, %3
  br i1 %exitcond72.not.3, label %._crit_edge, label %scalar.ph114, !llvm.loop !425
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %12 = alloca %"struct.Eigen::internal::lhs_process_one_packet", align 1 ; 3 uses
  %i.a = icmp eq i64 %8, -1
  %spec.select = select i1 %i.a, i64 %5, i64 %8   ; 11 uses
  %i.b = icmp eq i64 %9, -1
  %.0251 = select i1 %i.b, i64 %5, i64 %9         ; 6 uses
  %i.c = sdiv i64 %6, 4
  %i.d = shl nsw i64 %i.c, 2                      ; 14 uses
  %i.e = sdiv i64 %4, 4
  %i.f = shl nsw i64 %i.e, 2                      ; 6 uses
  %i.g = sub nsw i64 %4, %i.f
  %i.h = sdiv i64 %i.g, 2
  %i.i = shl nsw i64 %i.h, 1
  %i.j = add nsw i64 %i.i, %i.f                   ; 3 uses
  %i.k = sub nsw i64 %4, %i.j
end_hunk_0
