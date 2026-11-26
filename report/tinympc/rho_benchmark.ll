Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rho_benchmark?download=true
inline.NumInlined: 3320
inline.NumDeleted: 1439
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll:bb.a
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
  br i1 %niter129.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !408

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
  br i1 %i.cj, label %.preheader62.us, label %.preheader61, !llvm.loop !409

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
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !410

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
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !411

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
  br i1 %exitcond97.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !412

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
  br i1 %exitcond96.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !413

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !428
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
  %i.x = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.y = insertelement <4 x ptr> %i.x, ptr %scevgep109, i64 1
  %i.z = insertelement <4 x ptr> %i.y, ptr %scevgep107.a, i64 2
  %i.aa = insertelement <4 x ptr> %i.z, ptr %scevgep106, i64 3
  %i.ab = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.ac = insertelement <4 x ptr> %i.ab, ptr %scevgep110, i64 1
  %i.ad = insertelement <4 x ptr> %i.ac, ptr %scevgep108, i64 2
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %i.e, i64 3
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
  %wide.load = load <2 x double>, ptr %i.bp, align 8, !tbaa !19, !alias.scope !429
  %.idx = shl i64 %index, 5
  %i.bq = getelementptr i8, ptr %i.bo, i64 %.idx
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.br, align 8, !tbaa !19, !alias.scope !430
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bs, align 8, !tbaa !19, !alias.scope !431
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load127 = load <2 x double>, ptr %i.bt, align 8, !tbaa !19, !alias.scope !432
  %i.bu = shufflevector <2 x double> %wide.load, <2 x double> %wide.load125, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = shufflevector <2 x double> %wide.load126, <2 x double> %wide.load127, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bu, <4 x double> %i.bv, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bq, align 8, !tbaa !19, !alias.scope !433, !noalias !434
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.bn, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.04358.us.ph
  %i.by = load double, ptr %i.bx, align 8, !tbaa !19
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.by, ptr %i.bz, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04358.us.ph
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !19
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  store double %i.cb, ptr %i.cc, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  store double %i.ce, ptr %i.cf, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !19
  %i.ci = getelementptr i8, ptr %i.bz, i64 24
  store double %i.ch, ptr %i.ci, align 8, !tbaa !19
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
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !19
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04358.us
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !19
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !19
  %i.cu = getelementptr i8, ptr %i.co, i64 16
  store double %i.ct, ptr %i.cu, align 8, !tbaa !19
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !19
  %i.cx = getelementptr i8, ptr %i.co, i64 24
  store double %i.cw, ptr %i.cx, align 8, !tbaa !19
  %i.cy = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !19
  %i.db = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  store double %i.da, ptr %i.dc, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cy
  %i.de = load double, ptr %i.dd, align 8, !tbaa !19
  %i.df = getelementptr i8, ptr %i.db, i64 40
  store double %i.de, ptr %i.df, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cy
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !19
  %i.di = getelementptr i8, ptr %i.db, i64 48
  store double %i.dh, ptr %i.di, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cy
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !19
  %i.dl = getelementptr i8, ptr %i.db, i64 56
  store double %i.dk, ptr %i.dl, align 8, !tbaa !19
  %i.dm = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dn = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !422

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.bn, %middle.block ], [ %.lcssa145.unr, %scalar.ph.prol.loopexit ], [ %i.dm, %scalar.ph ] ; 2 uses
  %i.do = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dp = icmp slt i64 %i.do, %i.c
  br i1 %i.dp, label %.lr.ph.us, label %.preheader, !llvm.loop !423

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.dq = icmp slt i64 %i.c, %4
  br i1 %i.dq, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dr = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !78 ; 3 uses
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
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.bv = icmp slt i64 %i.bt, %2
  br i1 %i.bv, label %bb.p, label %..loopexit177_crit_edge.split.us200, !llvm.loop !603

..loopexit177_crit_edge.split.us200:              ; preds = %.loopexit.us
  %i.bw = icmp slt i64 %i.bq, %0
  br i1 %i.bw, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !604

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us201.us, %bb.p
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us200, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  ret void

bb.s:                                             ; preds = %.invoke
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp256, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bp, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK LHS", "~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !625
  %i.b = sdiv i64 %3, 2
  %i.c = shl nsw i64 %i.b, 1                      ; 2 uses
  %i.d = icmp sgt i64 %3, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = srem i64 %4, 4
  %i.g = sub nsw i64 %4, %i.f                     ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph166.preheader, label %._crit_edge167

.lr.ph166.preheader:                              ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep232 = getelementptr i8, ptr %1, i64 16
  %scevgep234 = getelementptr i8, ptr %1, i64 24
  %i.i = shl i64 %3, 3                            ; 4 uses
  %i.j = shl i64 %3, 5
  %scevgep260 = getelementptr i8, ptr %1, i64 %i.j
  br label %.lr.ph166

.preheader.lr.ph.split:                           ; preds = %._crit_edge167.1
  %i.k = load ptr, ptr %2, align 8, !tbaa !80     ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.e, align 8, !tbaa !81   ; 3 uses
  %i.n = mul i64 %i.m, -8
  %i.o = mul i64 %.1133.lcssa.1, %i.m
  %i.p = shl i64 %i.o, 3
  %i.q = add i64 %i.p, %i.l
  %i.r = sub i64 %i.a, %i.q
  %min.iters.check331 = icmp ult i64 %3, 4
  %n.vec334 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n341 = icmp eq i64 %3, %n.vec334
  %xtraiter359 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br label %.preheader

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %._crit_edge160
  %indvar = phi i64 [ 0, %.lr.ph166.preheader ], [ %indvar.next, %._crit_edge160 ] ; 2 uses
  %.1164 = phi i64 [ 0, %.lr.ph166.preheader ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %.1133162 = phi i64 [ 0, %.lr.ph166.preheader ], [ %i.fh, %._crit_edge160 ] ; 9 uses
  br i1 %i.d, label %.preheader140.us.preheader, label %.preheader141

.preheader140.us.preheader:                       ; preds = %.lr.ph166
  %i.s = or disjoint i64 %.1133162, 1
  %i.t = or disjoint i64 %.1133162, 2
  %i.u = or disjoint i64 %.1133162, 3
  br label %.preheader140.us

.preheader140.us:                                 ; preds = %.preheader140.us.preheader, %.preheader140.us
  %.2146.us = phi i64 [ %i.av, %.preheader140.us ], [ %.1164, %.preheader140.us.preheader ] ; 2 uses
  %.0128145.us = phi i64 [ %i.aw, %.preheader140.us ], [ 0, %.preheader140.us.preheader ] ; 3 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us ; 4 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !80
  %i.x = load i64, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %.0128145.us ; 2 uses
  %i.z = mul nsw i64 %i.x, %.1133162
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load <2 x double>, ptr %i.aa, align 1, !tbaa !58 ; 2 uses
  %i.ac = mul nsw i64 %i.x, %i.s
  %i.ad = getelementptr [8 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !58 ; 2 uses
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.ag, ptr %i.v, align 16, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store <2 x double> %i.af, ptr %i.ah, align 16, !tbaa !58
  %i.ai = load ptr, ptr %2, align 8, !tbaa !80
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %.0128145.us ; 2 uses
  %i.al = mul nsw i64 %i.aj, %i.t
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !58 ; 2 uses
  %i.ao = mul nsw i64 %i.aj, %i.u
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !58 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <2 x double> %i.an, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %i.as, ptr %i.at, align 16, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store <2 x double> %i.ar, ptr %i.au, align 16, !tbaa !58
  %i.av = add nsw i64 %.2146.us, 8                ; 2 uses
  %i.aw = add nuw nsw i64 %.0128145.us, 2         ; 3 uses
  %i.ax = icmp slt i64 %i.aw, %i.c
  br i1 %i.ax, label %.preheader140.us, label %.preheader141, !llvm.loop !605

.preheader141:                                    ; preds = %.preheader140.us, %.lr.ph166
  %.0128.lcssa = phi i64 [ 0, %.lr.ph166 ], [ %i.aw, %.preheader140.us ] ; 10 uses
  %.2.lcssa = phi i64 [ %.1164, %.lr.ph166 ], [ %i.av, %.preheader140.us ] ; 8 uses
  %i.ay = icmp slt i64 %.0128.lcssa, %3
  br i1 %i.ay, label %.preheader139.preheader, label %._crit_edge160

.preheader139.preheader:                          ; preds = %.preheader141
  %i.az = load ptr, ptr %2, align 8, !tbaa !80    ; 12 uses
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !81  ; 8 uses
  %i.bb = mul nsw i64 %i.ba, %.1133162            ; 4 uses
  %i.bc = or disjoint i64 %.1133162, 1
  %i.bd = mul nsw i64 %i.ba, %i.bc                ; 4 uses
  %i.be = or disjoint i64 %.1133162, 2
  %i.bf = mul nsw i64 %i.ba, %i.be                ; 4 uses
  %i.bg = or disjoint i64 %.1133162, 3
  %i.bh = mul nsw i64 %i.ba, %i.bg                ; 4 uses
  %i.bi = sub i64 %3, %.0128.lcssa                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bi, 68
  br i1 %min.iters.check, label %.loopexit.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader139.preheader
  %i.bj = xor i64 %.0128.lcssa, -1
  %i.bk = add i64 %3, %i.bj                       ; 2 uses
  %i.bl = shl i64 %.2.lcssa, 3                    ; 3 uses
  %scevgep231 = getelementptr i8, ptr %scevgep, i64 %i.bl ; 2 uses
  %mul.result = shl i64 %i.bk, 5                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.bk, 576460752303423487
  %i.bm = getelementptr i8, ptr %scevgep231, i64 %mul.result
  %i.bn = icmp ult ptr %i.bm, %scevgep231
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.bl ; 2 uses
  %i.bo = getelementptr i8, ptr %scevgep233, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %scevgep233
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.bl ; 2 uses
  %i.bq = getelementptr i8, ptr %scevgep235, i64 %mul.result
  %i.br = icmp ult ptr %i.bq, %scevgep235
  %i.bs = or i1 %i.br, %mul.overflow
  %i.bt = or i1 %i.bp, %i.bn
  %i.bu = or i1 %i.bt, %i.bs
  br i1 %i.bu, label %.loopexit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bv = shl i64 %.2.lcssa, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv     ; 4 uses
  %i.bx = shl i64 %.0128.lcssa, 5
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = getelementptr i8, ptr %scevgep260, i64 %i.by ; 4 uses
  %i.ca = shl i64 %indvar, 5                      ; 4 uses
  %7 = or disjoint i64 %i.ca, 24
  %i.cb = mul i64 %i.ba, %7                       ; 2 uses
  %i.cc = shl i64 %.0128.lcssa, 3                 ; 4 uses
  %i.cd = getelementptr i8, ptr %i.az, i64 %i.cb
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.az, i64 %i.cb
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.i
  %i.ch = or disjoint i64 %i.ca, 16
  %i.ci = mul i64 %i.ba, %i.ch                    ; 2 uses
  %i.cj = getelementptr i8, ptr %i.az, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.az, i64 %i.ci
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.i
  %i.cn = or disjoint i64 %i.ca, 8
  %i.co = mul i64 %i.ba, %i.cn                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.az, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cc
  %i.cr = getelementptr i8, ptr %i.az, i64 %i.co
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.i
  %i.ct = mul i64 %i.ba, %i.ca                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.az, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cc
  %i.cw = getelementptr i8, ptr %i.az, i64 %i.ct
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.i
  %bound0 = icmp ult ptr %i.bw, %i.cg
  %bound1 = icmp ult ptr %i.ce, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  %bound0261 = icmp ult ptr %i.bw, %i.cm
  %bound1262 = icmp ult ptr %i.ck, %i.bz
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx = or i1 %found.conflict, %found.conflict263
  %bound0264 = icmp ult ptr %i.bw, %i.cs
  %bound1265 = icmp ult ptr %i.cq, %i.bz
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx, %found.conflict266
  %bound0268 = icmp ult ptr %i.bw, %i.cx
  %bound1269 = icmp ult ptr %i.cv, %i.bz
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  br i1 %conflict.rdx271, label %.loopexit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -2                      ; 4 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = add i64 %.2.lcssa, %i.cy                ; 2 uses
  %i.da = add i64 %.0128.lcssa, %n.vec
  %i.db = getelementptr [8 x i8], ptr %i.az, i64 %.0128.lcssa
  %i.dc = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = getelementptr [8 x i8], ptr %i.db, i64 %index ; 4 uses
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %i.bb
  %wide.load = load <2 x double>, ptr %i.de, align 8, !tbaa !19, !alias.scope !626
  %i.df = getelementptr [8 x i8], ptr %i.dd, i64 %i.bd
  %wide.load272 = load <2 x double>, ptr %i.df, align 8, !tbaa !19, !alias.scope !627
  %i.dg = getelementptr [8 x i8], ptr %i.dd, i64 %i.bf
  %wide.load273 = load <2 x double>, ptr %i.dg, align 8, !tbaa !19, !alias.scope !628
  %i.dh = getelementptr [8 x i8], ptr %i.dd, i64 %i.bh
  %wide.load274 = load <2 x double>, ptr %i.dh, align 8, !tbaa !19, !alias.scope !629
  %.idx = shl i64 %index, 5
  %i.di = getelementptr i8, ptr %i.dc, i64 %.idx
  %i.dj = shufflevector <2 x double> %wide.load, <2 x double> %wide.load272, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dk = shufflevector <2 x double> %wide.load273, <2 x double> %wide.load274, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.dj, <4 x double> %i.dk, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.di, align 8, !tbaa !19, !alias.scope !630, !noalias !631
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge160, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader139.preheader, %middle.block
  %.4159.ph = phi i64 [ %.2.lcssa, %vector.memcheck ], [ %.2.lcssa, %vector.scevcheck ], [ %.2.lcssa, %.preheader139.preheader ], [ %i.cz, %middle.block ] ; 3 uses
  %.2130157.ph = phi i64 [ %.0128.lcssa, %vector.memcheck ], [ %.0128.lcssa, %vector.scevcheck ], [ %.0128.lcssa, %.preheader139.preheader ], [ %i.da, %middle.block ] ; 5 uses
  %i.dm = sub i64 %3, %.2130157.ph
  %.neg = add i64 %.2130157.ph, 1
  %xtraiter = and i64 %i.dm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.prol.loopexit, label %.loopexit.prol

.loopexit.prol:                                   ; preds = %.loopexit.preheader
  %i.dn = getelementptr [8 x i8], ptr %i.az, i64 %.2130157.ph ; 4 uses
  %i.do = add nsw i64 %.4159.ph, 4                ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %i.dn, i64 %i.bb
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !19
  %i.dr = getelementptr [8 x i8], ptr %i.dn, i64 %i.bd
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr [8 x i8], ptr %i.dn, i64 %i.bf
  %i.du = load double, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr [8 x i8], ptr %i.dn, i64 %i.bh
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !19
  %i.dx = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.ph ; 4 uses
  store double %i.dq, ptr %i.dx, align 8, !tbaa !19
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  store double %i.ds, ptr %i.dy, align 8, !tbaa !19
  %i.dz = getelementptr i8, ptr %i.dx, i64 16
  store double %i.du, ptr %i.dz, align 8, !tbaa !19
  %i.ea = getelementptr i8, ptr %i.dx, i64 24
  store double %i.dw, ptr %i.ea, align 8, !tbaa !19
  %i.eb = add nuw nsw i64 %.2130157.ph, 1
  br label %.loopexit.prol.loopexit

.loopexit.prol.loopexit:                          ; preds = %.loopexit.prol, %.loopexit.preheader
  %.lcssa352.unr = phi i64 [ poison, %.loopexit.preheader ], [ %i.do, %.loopexit.prol ]
  %.4159.unr = phi i64 [ %.4159.ph, %.loopexit.preheader ], [ %i.do, %.loopexit.prol ]
  %.2130157.unr = phi i64 [ %.2130157.ph, %.loopexit.preheader ], [ %i.eb, %.loopexit.prol ]
  %i.ec = icmp eq i64 %3, %.neg
  br i1 %i.ec, label %._crit_edge160, label %.loopexit

.loopexit:                                        ; preds = %.loopexit.prol.loopexit, %.loopexit
  %.4159 = phi i64 [ %i.es, %.loopexit ], [ %.4159.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %.2130157 = phi i64 [ %i.fg, %.loopexit ], [ %.2130157.unr, %.loopexit.prol.loopexit ] ; 3 uses
  %i.ed = getelementptr [8 x i8], ptr %i.az, i64 %.2130157 ; 4 uses
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %i.bb
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !19
  %i.eg = getelementptr [8 x i8], ptr %i.ed, i64 %i.bd
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !19
  %i.ei = getelementptr [8 x i8], ptr %i.ed, i64 %i.bf
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !19
  %i.ek = getelementptr [8 x i8], ptr %i.ed, i64 %i.bh
  %i.el = load double, ptr %i.ek, align 8, !tbaa !19
  %i.em = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  store double %i.ef, ptr %i.em, align 8, !tbaa !19
  %i.en = getelementptr i8, ptr %i.em, i64 8
  store double %i.eh, ptr %i.en, align 8, !tbaa !19
  %i.eo = getelementptr i8, ptr %i.em, i64 16
  store double %i.ej, ptr %i.eo, align 8, !tbaa !19
  %i.ep = getelementptr i8, ptr %i.em, i64 24
  store double %i.el, ptr %i.ep, align 8, !tbaa !19
  %i.eq = getelementptr [8 x i8], ptr %i.az, i64 %.2130157
  %i.er = getelementptr i8, ptr %i.eq, i64 8      ; 4 uses
  %i.es = add nsw i64 %.4159, 8                   ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.er, i64 %i.bb
  %i.eu = load double, ptr %i.et, align 8, !tbaa !19
  %i.ev = getelementptr [8 x i8], ptr %i.er, i64 %i.bd
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !19
  %i.ex = getelementptr [8 x i8], ptr %i.er, i64 %i.bf
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !19
  %i.ez = getelementptr [8 x i8], ptr %i.er, i64 %i.bh
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !19
  %i.fb = getelementptr [8 x i8], ptr %1, i64 %.4159 ; 4 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 32
  store double %i.eu, ptr %i.fc, align 8, !tbaa !19
  %i.fd = getelementptr i8, ptr %i.fb, i64 40
  store double %i.ew, ptr %i.fd, align 8, !tbaa !19
  %i.fe = getelementptr i8, ptr %i.fb, i64 48
  store double %i.ey, ptr %i.fe, align 8, !tbaa !19
  %i.ff = getelementptr i8, ptr %i.fb, i64 56
  store double %i.fa, ptr %i.ff, align 8, !tbaa !19
  %i.fg = add nuw nsw i64 %.2130157, 2            ; 2 uses
  %exitcond190.not.1 = icmp eq i64 %i.fg, %3
  br i1 %exitcond190.not.1, label %._crit_edge160, label %.loopexit, !llvm.loop !613

._crit_edge160:                                   ; preds = %.loopexit.prol.loopexit, %.loopexit, %middle.block, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %i.cz, %middle.block ], [ %.lcssa352.unr, %.loopexit.prol.loopexit ], [ %i.es, %.loopexit ] ; 2 uses
  %i.fh = add i64 %.1133162, 4                    ; 3 uses
  %i.fi = icmp slt i64 %i.fh, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fi, label %.lr.ph166, label %._crit_edge167, !llvm.loop !614

._crit_edge167:                                   ; preds = %._crit_edge160, %bb.a
  %.1133.lcssa = phi i64 [ 0, %bb.a ], [ %i.fh, %._crit_edge160 ] ; 5 uses
  %.1.lcssa = phi i64 [ 0, %bb.a ], [ %.4.lcssa, %._crit_edge160 ] ; 2 uses
  %i.fj = sub i64 %4, %.1133.lcssa
  %i.fk = srem i64 %i.fj, 2
  %i.fl = sub i64 %4, %i.fk                       ; 2 uses
  %i.fm = icmp slt i64 %.1133.lcssa, %i.fl
  br i1 %i.fm, label %.lr.ph166.1.preheader, label %._crit_edge167.1

.lr.ph166.1.preheader:                            ; preds = %._crit_edge167
  %scevgep277 = getelementptr i8, ptr %1, i64 8
  %i.fn = shl i64 %.1133.lcssa, 3                 ; 2 uses
  %8 = shl i64 %3, 3                              ; 2 uses
  %9 = add i64 %i.fn, 8
  %i.fo = shl i64 %3, 4
  %scevgep302 = getelementptr i8, ptr %1, i64 %i.fo
  br label %.lr.ph166.1

.lr.ph166.1:                                      ; preds = %.lr.ph166.1.preheader, %._crit_edge160.1
  %indvar300 = phi i64 [ 0, %.lr.ph166.1.preheader ], [ %indvar.next301, %._crit_edge160.1 ] ; 2 uses
  %.1164.1 = phi i64 [ %.1.lcssa, %.lr.ph166.1.preheader ], [ %.4.lcssa.1, %._crit_edge160.1 ] ; 2 uses
  %.1133162.1 = phi i64 [ %.1133.lcssa, %.lr.ph166.1.preheader ], [ %i.jc, %._crit_edge160.1 ] ; 5 uses
  br i1 %i.d, label %.preheader140.us.preheader.1, label %.preheader141.1

.preheader140.us.preheader.1:                     ; preds = %.lr.ph166.1
  %i.fp = add nsw i64 %.1133162.1, 1
  br label %.preheader140.us.1

.preheader140.us.1:                               ; preds = %.preheader140.us.1, %.preheader140.us.preheader.1
  %.2146.us.1 = phi i64 [ %i.gd, %.preheader140.us.1 ], [ %.1164.1, %.preheader140.us.preheader.1 ] ; 2 uses
  %.0128145.us.1 = phi i64 [ %i.ge, %.preheader140.us.1 ], [ 0, %.preheader140.us.preheader.1 ] ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %1, i64 %.2146.us.1 ; 2 uses
  %i.fr = load ptr, ptr %2, align 8, !tbaa !80
  %i.fs = load i64, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.ft = getelementptr [8 x i8], ptr %i.fr, i64 %.0128145.us.1 ; 2 uses
  %i.fu = mul nsw i64 %i.fs, %.1133162.1
  %i.fv = getelementptr [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load <2 x double>, ptr %i.fv, align 1, !tbaa !58 ; 2 uses
  %i.fx = mul nsw i64 %i.fs, %i.fp
  %i.fy = getelementptr [8 x i8], ptr %i.ft, i64 %i.fx
  %i.fz = load <2 x double>, ptr %i.fy, align 1, !tbaa !58 ; 2 uses
  %i.ga = shufflevector <2 x double> %i.fw, <2 x double> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.gb = shufflevector <2 x double> %i.fw, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2>
  store <2 x double> %i.gb, ptr %i.fq, align 16, !tbaa !58
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <2 x double> %i.ga, ptr %i.gc, align 16, !tbaa !58
  %i.gd = add nsw i64 %.2146.us.1, 4              ; 2 uses
  %i.ge = add nuw nsw i64 %.0128145.us.1, 2       ; 3 uses
  %i.gf = icmp slt i64 %i.ge, %i.c
  br i1 %i.gf, label %.preheader140.us.1, label %.preheader141.1, !llvm.loop !605

.preheader141.1:                                  ; preds = %.preheader140.us.1, %.lr.ph166.1
  %.0128.lcssa.1 = phi i64 [ 0, %.lr.ph166.1 ], [ %i.ge, %.preheader140.us.1 ] ; 10 uses
  %.2.lcssa.1 = phi i64 [ %.1164.1, %.lr.ph166.1 ], [ %i.gd, %.preheader140.us.1 ] ; 8 uses
  %i.gg = icmp slt i64 %.0128.lcssa.1, %3
  br i1 %i.gg, label %.preheader139.preheader.1, label %._crit_edge160.1

.preheader139.preheader.1:                        ; preds = %.preheader141.1
  %i.gh = load ptr, ptr %2, align 8, !tbaa !80    ; 8 uses
  %i.gi = load i64, ptr %i.e, align 8, !tbaa !81  ; 4 uses
  %i.gj = mul nsw i64 %i.gi, %.1133162.1          ; 4 uses
  %i.gk = add nsw i64 %.1133162.1, 1
  %i.gl = mul nsw i64 %i.gi, %i.gk                ; 4 uses
  %i.gm = sub i64 %3, %.0128.lcssa.1              ; 3 uses
  %min.iters.check304 = icmp ult i64 %i.gm, 42
  br i1 %min.iters.check304, label %.loopexit.1.preheader, label %vector.scevcheck276

vector.scevcheck276:                              ; preds = %.preheader139.preheader.1
  %i.gn = xor i64 %.0128.lcssa.1, -1
  %i.go = add i64 %3, %i.gn                       ; 2 uses
  %i.gp = shl i64 %.2.lcssa.1, 3
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.gp ; 2 uses
  %mul.result280 = shl i64 %i.go, 4
  %mul.overflow281 = icmp ugt i64 %i.go, 1152921504606846975
  %i.gq = getelementptr i8, ptr %scevgep278, i64 %mul.result280
  %i.gr = icmp ult ptr %i.gq, %scevgep278
  %i.gs = or i1 %i.gr, %mul.overflow281
  br i1 %i.gs, label %.loopexit.1.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %vector.scevcheck276
  %i.gt = shl i64 %.2.lcssa.1, 3                  ; 2 uses
  %i.gu = getelementptr i8, ptr %1, i64 %i.gt     ; 2 uses
  %i.gv = shl i64 %.0128.lcssa.1, 4
  %i.gw = sub i64 %i.gt, %i.gv
  %i.gx = getelementptr i8, ptr %scevgep302, i64 %i.gw ; 2 uses
  %i.gy = shl i64 %indvar300, 4                   ; 2 uses
  %i.gz = add i64 %9, %i.gy
  %i.ha = mul i64 %i.gi, %i.gz                    ; 2 uses
  %i.hb = shl i64 %.0128.lcssa.1, 3               ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gh, i64 %i.ha
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.hb
  %i.he = getelementptr i8, ptr %i.gh, i64 %i.ha
  %i.hf = getelementptr i8, ptr %i.he, i64 %8
  %i.hg = add i64 %i.fn, %i.gy
  %i.hh = mul i64 %i.gi, %i.hg                    ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gh, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.hb
  %i.hk = getelementptr i8, ptr %i.gh, i64 %i.hh
  %i.hl = getelementptr i8, ptr %i.hk, i64 %8
  %bound0306 = icmp ult ptr %i.gu, %i.hf
  %bound1307 = icmp ult ptr %i.hd, %i.gx
  %found.conflict308 = and i1 %bound0306, %bound1307
  %bound0309 = icmp ult ptr %i.gu, %i.hl
  %bound1310 = icmp ult ptr %i.hj, %i.gx
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %found.conflict308, %found.conflict311
  br i1 %conflict.rdx312, label %.loopexit.1.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck305
  %n.vec314 = and i64 %i.gm, -2                   ; 4 uses
  %i.hm = shl i64 %n.vec314, 1
  %i.hn = add i64 %.2.lcssa.1, %i.hm              ; 2 uses
  %i.ho = add i64 %.0128.lcssa.1, %n.vec314
  %i.hp = getelementptr [8 x i8], ptr %i.gh, i64 %.0128.lcssa.1
  %i.hq = getelementptr [8 x i8], ptr %1, i64 %.2.lcssa.1
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next320, %vector.body315 ] ; 3 uses
  %i.hr = getelementptr [8 x i8], ptr %i.hp, i64 %index316 ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.gj
  %wide.load317 = load <2 x double>, ptr %i.hs, align 8, !tbaa !19, !alias.scope !632
  %.idx344 = shl i64 %index316, 4
  %i.ht = getelementptr i8, ptr %i.hq, i64 %.idx344
  %i.hu = getelementptr [8 x i8], ptr %i.hr, i64 %i.gl
  %wide.load318 = load <2 x double>, ptr %i.hu, align 8, !tbaa !19, !alias.scope !633
  %interleaved.vec319 = shufflevector <2 x double> %wide.load317, <2 x double> %wide.load318, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec319, ptr %i.ht, align 8, !tbaa !19, !alias.scope !634, !noalias !635
  %index.next320 = add nuw i64 %index316, 2       ; 2 uses
  %i.hv = icmp eq i64 %index.next320, %n.vec314
  br i1 %i.hv, label %middle.block321, label %vector.body315, !llvm.loop !619

middle.block321:                                  ; preds = %vector.body315
  %cmp.n322 = icmp eq i64 %i.gm, %n.vec314
  br i1 %cmp.n322, label %._crit_edge160.1, label %.loopexit.1.preheader

.loopexit.1.preheader:                            ; preds = %vector.memcheck305, %vector.scevcheck276, %.preheader139.preheader.1, %middle.block321
  %.4159.1.ph = phi i64 [ %.2.lcssa.1, %vector.memcheck305 ], [ %.2.lcssa.1, %vector.scevcheck276 ], [ %.2.lcssa.1, %.preheader139.preheader.1 ], [ %i.hn, %middle.block321 ] ; 4 uses
  %.2130157.1.ph = phi i64 [ %.0128.lcssa.1, %vector.memcheck305 ], [ %.0128.lcssa.1, %vector.scevcheck276 ], [ %.0128.lcssa.1, %.preheader139.preheader.1 ], [ %i.ho, %middle.block321 ] ; 5 uses
  %i.hw = sub i64 %3, %.2130157.1.ph
  %.neg361 = add i64 %.2130157.1.ph, 1
  %xtraiter357 = and i64 %i.hw, 1
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.loopexit.1.prol.loopexit, label %.loopexit.1.prol

.loopexit.1.prol:                                 ; preds = %.loopexit.1.preheader
  %i.hx = getelementptr [8 x i8], ptr %i.gh, i64 %.2130157.1.ph ; 2 uses
  %i.hy = getelementptr [8 x i8], ptr %i.hx, i64 %i.gj
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !19
  %i.ia = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1.ph
  store double %i.hz, ptr %i.ia, align 8, !tbaa !19
  %i.ib = getelementptr [8 x i8], ptr %i.hx, i64 %i.gl
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !19
  %i.id = add i64 %.4159.1.ph, 2                  ; 2 uses
  %i.ie = getelementptr [8 x i8], ptr %1, i64 %.4159.1.ph
  %i.if = getelementptr i8, ptr %i.ie, i64 8
  store double %i.ic, ptr %i.if, align 8, !tbaa !19
  %i.ig = add nuw nsw i64 %.2130157.1.ph, 1
  br label %.loopexit.1.prol.loopexit

.loopexit.1.prol.loopexit:                        ; preds = %.loopexit.1.prol, %.loopexit.1.preheader
  %.lcssa348.unr = phi i64 [ poison, %.loopexit.1.preheader ], [ %i.id, %.loopexit.1.prol ]
  %.4159.1.unr = phi i64 [ %.4159.1.ph, %.loopexit.1.preheader ], [ %i.id, %.loopexit.1.prol ]
  %.2130157.1.unr = phi i64 [ %.2130157.1.ph, %.loopexit.1.preheader ], [ %i.ig, %.loopexit.1.prol ]
  %i.ih = icmp eq i64 %3, %.neg361
  br i1 %i.ih, label %._crit_edge160.1, label %.loopexit.1

.loopexit.1:                                      ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1
  %.4159.1 = phi i64 [ %i.iy, %.loopexit.1 ], [ %.4159.1.unr, %.loopexit.1.prol.loopexit ] ; 4 uses
  %.2130157.1 = phi i64 [ %i.jb, %.loopexit.1 ], [ %.2130157.1.unr, %.loopexit.1.prol.loopexit ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %i.gh, i64 %.2130157.1 ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.ii, i64 %i.gj
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !19
  %i.il = getelementptr inbounds [8 x i8], ptr %1, i64 %.4159.1
  store double %i.ik, ptr %i.il, align 8, !tbaa !19
  %i.im = getelementptr [8 x i8], ptr %i.ii, i64 %i.gl
  %i.in = load double, ptr %i.im, align 8, !tbaa !19
  %i.io = add i64 %.4159.1, 2                     ; 2 uses
  %i.ip = getelementptr [8 x i8], ptr %1, i64 %.4159.1
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  store double %i.in, ptr %i.iq, align 8, !tbaa !19
  %i.ir = getelementptr [8 x i8], ptr %i.gh, i64 %.2130157.1
  %i.is = getelementptr i8, ptr %i.ir, i64 8      ; 2 uses
  %i.it = getelementptr [8 x i8], ptr %i.is, i64 %i.gj
  %i.iu = load double, ptr %i.it, align 8, !tbaa !19
  %i.iv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.io
  store double %i.iu, ptr %i.iv, align 8, !tbaa !19
  %i.iw = getelementptr [8 x i8], ptr %i.is, i64 %i.gl
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !19
  %i.iy = add i64 %.4159.1, 4                     ; 2 uses
  %i.iz = getelementptr [8 x i8], ptr %1, i64 %i.io
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  store double %i.ix, ptr %i.ja, align 8, !tbaa !19
  %i.jb = add nuw nsw i64 %.2130157.1, 2          ; 2 uses
  %exitcond190.1.not.1 = icmp eq i64 %i.jb, %3
  br i1 %exitcond190.1.not.1, label %._crit_edge160.1, label %.loopexit.1, !llvm.loop !620

._crit_edge160.1:                                 ; preds = %.loopexit.1.prol.loopexit, %.loopexit.1, %middle.block321, %.preheader141.1
  %.4.lcssa.1 = phi i64 [ %.2.lcssa.1, %.preheader141.1 ], [ %i.hn, %middle.block321 ], [ %.lcssa348.unr, %.loopexit.1.prol.loopexit ], [ %i.iy, %.loopexit.1 ] ; 2 uses
  %i.jc = add i64 %.1133162.1, 2                  ; 3 uses
  %i.jd = icmp slt i64 %i.jc, %i.fl
  %indvar.next301 = add i64 %indvar300, 1
  br i1 %i.jd, label %.lr.ph166.1, label %._crit_edge167.1, !llvm.loop !614

._crit_edge167.1:                                 ; preds = %._crit_edge160.1, %._crit_edge167
  %.1133.lcssa.1 = phi i64 [ %.1133.lcssa, %._crit_edge167 ], [ %i.jc, %._crit_edge160.1 ] ; 3 uses
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge167 ], [ %.4.lcssa.1, %._crit_edge160.1 ]
  %i.je = icmp slt i64 %.1133.lcssa.1, %4
  %i.jf = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.je, %i.jf
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge180.split

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge176
  %indvar328 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next329, %._crit_edge176 ] ; 2 uses
  %.8179 = phi i64 [ %.1.lcssa.1, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge176 ] ; 5 uses
  %.2134178 = phi i64 [ %.1133.lcssa.1, %.preheader.lr.ph.split ], [ %i.jz, %._crit_edge176 ] ; 2 uses
  %i.jg = mul nsw i64 %i.m, %.2134178
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.jg ; 6 uses
  br i1 %min.iters.check331, label %scalar.ph330.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.preheader
  %i.jh = mul i64 %indvar328, %i.n
  %i.ji = add i64 %i.r, %i.jh
  %i.jj = shl i64 %.8179, 3
  %i.jk = add i64 %i.ji, %i.jj
  %i.jl = add i64 %i.jk, -1
  %diff.check = icmp ult i64 %i.jl, 31
  br i1 %diff.check, label %scalar.ph330.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck332
  %i.jm = add i64 %.8179, %n.vec334               ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr %1, i64 %.8179
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.jo = getelementptr [8 x i8], ptr %invariant.gep, i64 %index336 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  %wide.load337 = load <2 x double>, ptr %i.jo, align 8, !tbaa !19
  %wide.load338 = load <2 x double>, ptr %i.jp, align 8, !tbaa !19
  %i.jq = getelementptr [8 x i8], ptr %i.jn, i64 %index336 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <2 x double> %wide.load337, ptr %i.jq, align 8, !tbaa !19
  store <2 x double> %wide.load338, ptr %i.jr, align 8, !tbaa !19
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.js, label %middle.block340, label %vector.body335, !llvm.loop !621

middle.block340:                                  ; preds = %vector.body335
  br i1 %cmp.n341, label %._crit_edge176, label %scalar.ph330.preheader

scalar.ph330.preheader:                           ; preds = %vector.memcheck332, %.preheader, %middle.block340
  %.0174.ph = phi i64 [ 0, %vector.memcheck332 ], [ 0, %.preheader ], [ %n.vec334, %middle.block340 ] ; 3 uses
  %.9173.ph = phi i64 [ %.8179, %vector.memcheck332 ], [ %.8179, %.preheader ], [ %i.jm, %middle.block340 ] ; 2 uses
  br i1 %lcmp.mod360.not, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol

scalar.ph330.prol:                                ; preds = %scalar.ph330.preheader, %scalar.ph330.prol
  %.0174.prol = phi i64 [ %i.jw, %scalar.ph330.prol ], [ %.0174.ph, %scalar.ph330.preheader ] ; 2 uses
  %.9173.prol = phi i64 [ %i.ju, %scalar.ph330.prol ], [ %.9173.ph, %scalar.ph330.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph330.prol ], [ 0, %scalar.ph330.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174.prol
  %i.jt = load double, ptr %gep.prol, align 8, !tbaa !19
  %i.ju = add nsw i64 %.9173.prol, 1              ; 3 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173.prol
  store double %i.jt, ptr %i.jv, align 8, !tbaa !19
  %i.jw = add nuw nsw i64 %.0174.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter359
  br i1 %prol.iter.cmp.not, label %scalar.ph330.prol.loopexit, label %scalar.ph330.prol, !llvm.loop !622

scalar.ph330.prol.loopexit:                       ; preds = %scalar.ph330.prol, %scalar.ph330.preheader
  %.lcssa345.unr = phi i64 [ poison, %scalar.ph330.preheader ], [ %i.ju, %scalar.ph330.prol ]
  %.0174.unr = phi i64 [ %.0174.ph, %scalar.ph330.preheader ], [ %i.jw, %scalar.ph330.prol ]
  %.9173.unr = phi i64 [ %.9173.ph, %scalar.ph330.preheader ], [ %i.ju, %scalar.ph330.prol ]
  %i.jx = sub nsw i64 %.0174.ph, %3
  %i.jy = icmp ugt i64 %i.jx, -4
  br i1 %i.jy, label %._crit_edge176, label %scalar.ph330

._crit_edge176:                                   ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330, %middle.block340
  %.lcssa = phi i64 [ %i.jm, %middle.block340 ], [ %.lcssa345.unr, %scalar.ph330.prol.loopexit ], [ %i.km, %scalar.ph330 ]
  %i.jz = add nuw nsw i64 %.2134178, 1            ; 2 uses
  %exitcond191.not = icmp eq i64 %i.jz, %4
  %indvar.next329 = add i64 %indvar328, 1
  br i1 %exitcond191.not, label %._crit_edge180.split, label %.preheader, !llvm.loop !623

scalar.ph330:                                     ; preds = %scalar.ph330.prol.loopexit, %scalar.ph330
  %.0174 = phi i64 [ %i.kp, %scalar.ph330 ], [ %.0174.unr, %scalar.ph330.prol.loopexit ] ; 5 uses
  %.9173 = phi i64 [ %i.km, %scalar.ph330 ], [ %.9173.unr, %scalar.ph330.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %i.ka = load double, ptr %gep, align 8, !tbaa !19
  %i.kb = getelementptr inbounds [8 x i8], ptr %1, i64 %.9173
  store double %i.ka, ptr %i.kb, align 8, !tbaa !19
  %i.kc = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
  %gep.1 = getelementptr i8, ptr %i.kc, i64 8
  %i.kd = load double, ptr %gep.1, align 8, !tbaa !19
  %i.ke = getelementptr [8 x i8], ptr %1, i64 %.9173
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  store double %i.kd, ptr %i.kf, align 8, !tbaa !19
  %i.kg = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0174
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.fadd.v2f64
!234 = distinct !{!234, !47, !48, !49}
!235 = distinct !{!235, !47, !48}
!236 = distinct !{!236, !47, !48, !49}
!237 = distinct !{!237, !47, !48}
!238 = distinct !{!238, !47, !48, !49}
!239 = distinct !{!239, !47, !48}
!240 = !{!"_ZTS18RhoBenchmarkResult", !6, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48}
!241 = !{!240, !6, i64 0}
!242 = !{!240, !18, i64 8}
!243 = !{!240, !18, i64 16}
!244 = !{!240, !18, i64 24}
!245 = !{!240, !18, i64 32}
!246 = !{!240, !18, i64 40}
!247 = !{!240, !18, i64 48}
!248 = distinct !{!248, i1 false, !"LVerDomain"}
!249 = distinct !{!249, !248}
!250 = distinct !{!250, !248}
!251 = distinct !{!251, !47, !48, !49}
!252 = distinct !{!252, !57}
!253 = distinct !{!253, !47}
!254 = distinct !{!254, !47, !48}
!255 = distinct !{!255, !47, !48, !49}
!256 = distinct !{!256, !47}
!257 = distinct !{!257, !47}
!258 = distinct !{!258, !47, !48}
!259 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_INS3_IKS5_Lin1ELi1ELb1EEEEENS0_9assign_opIddEELi0EEE", !42, i64 0, !43, i64 8, !44, i64 16, !46, i64 24}
!260 = !{!259, !46, i64 24}
!261 = !{!249}
!262 = !{!250}
!263 = !{!259, !43, i64 8}
!264 = !{!259, !42, i64 0}
!265 = distinct !{!265, i1 false, !"LVerDomain"}
!266 = distinct !{!266, !265}
!267 = distinct !{!267, !265}
!268 = distinct !{!268, !47, !48, !49}
!269 = distinct !{!269, !57}
!270 = distinct !{!270, !47}
!271 = distinct !{!271, !47, !48}
!272 = distinct !{!272, !47, !48, !49}
!273 = distinct !{!273, !47}
!274 = distinct !{!274, !47}
!275 = distinct !{!275, !47, !48}
!276 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_IS5_EENS0_9assign_opIddEELi0EEE", !42, i64 0, !53, i64 8, !44, i64 16, !46, i64 24}
!277 = !{!276, !46, i64 24}
!278 = !{!266}
!279 = !{!267}
!280 = !{!276, !53, i64 8}
!281 = !{!276, !42, i64 0}
!282 = distinct !{!282, !47}
!283 = distinct !{!283, !47}
!284 = distinct !{!284, !57}
!285 = distinct !{!285, !47}
!286 = distinct !{!286, !57}
!287 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !9, i64 0}
!288 = !{!"_ZTSN5Eigen15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !287, i64 0}
!289 = !{!288, !287, i64 0}
!290 = distinct !{!290, !57}
!291 = distinct !{!291, !47}
!292 = distinct !{!292, i1 false, !"LVerDomain"}
!293 = distinct !{!293, !292}
!294 = distinct !{!294, !292}
!295 = distinct !{!295, !292}
!296 = distinct !{!296, !47, !48, !49}
!297 = distinct !{!297, !57}
!298 = distinct !{!298, !47}
!299 = distinct !{!299, !47, !48}
!300 = distinct !{!300, !47, !48, !49}
!301 = distinct !{!301, !47}
!302 = distinct !{!302, !47}
!303 = distinct !{!303, !47, !48}
!304 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_INS_7ProductINS_15DiagonalWrapperIKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEE", !42, i64 0, !62, i64 8, !44, i64 16, !46, i64 24}
!305 = !{!304, !46, i64 24}
!306 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEE", !61, i64 0}
!307 = !{!306, !10, i64 0}
!308 = !{!293}
!309 = !{!294}
!310 = !{!295}
!311 = !{!293, !294}
!312 = !{!304, !62, i64 8}
!313 = !{!304, !42, i64 0}
!314 = distinct !{!314, !47, !48, !49}
!315 = distinct !{!315, !57}
!316 = distinct !{!316, !47, !48}
!317 = !{!"_ZTSN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEE", !33, i64 0, !33, i64 8}
!318 = !{!317, !33, i64 0}
!319 = !{!317, !33, i64 8}
!320 = !{!75, !75, i64 0}
!321 = distinct !{!321, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!322 = distinct !{!322, !321, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!323 = distinct !{!323, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!324 = distinct !{!324, !323, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!325 = distinct !{!325, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!326 = distinct !{!326, !325, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!327 = distinct !{!327, !47}
!328 = distinct !{!328, !57}
!329 = distinct !{!329, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!330 = distinct !{!330, !329, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!331 = distinct !{!331, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!332 = distinct !{!332, !331, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!333 = distinct !{!333, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!334 = distinct !{!334, !333, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!335 = distinct !{!335, !47}
!336 = distinct !{!336, !57}
!337 = !{!322}
!338 = !{!324}
!339 = !{!326}
!340 = !{!330}
!341 = !{!332}
!342 = !{!334}
!343 = distinct !{!343, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!344 = distinct !{!344, !343, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!345 = distinct !{!345, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!346 = distinct !{!346, !345, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!347 = distinct !{!347, !47}
!348 = distinct !{!348, !57}
!349 = distinct !{!349, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!350 = distinct !{!350, !349, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!351 = distinct !{!351, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!352 = distinct !{!352, !351, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!353 = distinct !{!353, !47}
!354 = distinct !{!354, !47}
!355 = distinct !{!355, !47}
!356 = distinct !{!356, !57}
!357 = distinct !{!357, !47}
!358 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EEE", !53, i64 0, !75, i64 8, !44, i64 16, !33, i64 24}
!359 = !{!358, !33, i64 24}
!360 = !{!358, !53, i64 0}
!361 = !{!358, !75, i64 8}
!362 = !{!73, !33, i64 0}
!363 = !{!344}
!364 = !{!73, !33, i64 8}
!365 = !{!346}
!366 = !{!350}
!367 = !{!352}
!368 = distinct !{!368, !47}
!369 = distinct !{!369, !47}
!370 = distinct !{!370, !47}
!371 = distinct !{!371, !47}
!372 = distinct !{!372, !47}
!373 = distinct !{!373, !47}
!374 = distinct !{!374, !47}
!375 = distinct !{!375, !47}
!376 = distinct !{!376, !47}
!377 = distinct !{!377, !47, !48, !49}
!378 = distinct !{!378, !57}
!379 = distinct !{!379, !47, !48}
!380 = distinct !{!380, !47}
!381 = distinct !{!381, !47}
!382 = distinct !{!382, !47}
!383 = distinct !{!383, !47}
!384 = distinct !{!384, !47}
!385 = distinct !{!385, !47}
!386 = distinct !{!386, !47}
!387 = distinct !{!387, !47}
!388 = distinct !{!388, !47}
!389 = distinct !{!389, !57}
!390 = distinct !{!390, !47}
!391 = distinct !{!391, !47}
!392 = distinct !{!392, !47}
!393 = !{!"branch_weights", i32 1, i32 1048575}
!394 = !{!11, !11, i64 0}
!395 = distinct !{!395, !47}
!396 = !{i64 2153325534}
!397 = !{i64 2153324539}
!398 = !{i64 2153324937}
!399 = !{i64 2153325136}
!400 = !{i64 2153325335}
!401 = distinct !{!401, !47}
!402 = !{i64 2153324738}
!403 = distinct !{!403, !47}
!404 = distinct !{!404, !47}
!405 = distinct !{!405, !47}
!406 = distinct !{!406, !47}
!407 = distinct !{!407, !47}
!408 = distinct !{!408, !47}
!409 = distinct !{!409, !47}
!410 = distinct !{!410, !47, !48, !49}
!411 = distinct !{!411, !57}
!412 = distinct !{!412, !47}
!413 = distinct !{!413, !47, !48}
!414 = !{i64 2155486604}
!415 = distinct !{!415, i1 false, !"LVerDomain"}
!416 = distinct !{!416, !415}
!417 = distinct !{!417, !415}
!418 = distinct !{!418, !415}
!419 = distinct !{!419, !415}
!420 = distinct !{!420, !415}
!421 = distinct !{!421, !47, !48, !49}
!422 = distinct !{!422, !47, !48}
!423 = distinct !{!423, !47}
!424 = distinct !{!424, !47, !48, !49}
!425 = distinct !{!425, !57}
!426 = distinct !{!426, !47}
!427 = distinct !{!427, !47, !48}
!428 = !{i64 2155487339}
!429 = !{!416}
!430 = !{!417}
!431 = !{!418}
!432 = !{!419}
!433 = !{!420}
!434 = !{!419, !418, !417, !416}
!435 = distinct !{!435, !47}
!436 = distinct !{!436, !47}
!437 = distinct !{!437, !47}
!438 = distinct !{!438, !47}
!439 = distinct !{!439, !47}
!440 = distinct !{!440, !47}
!441 = distinct !{!441, !47}
!442 = distinct !{!442, !47}
!443 = distinct !{!443, !47}
!444 = distinct !{!444, !47}
!445 = distinct !{!445, !47}
!446 = distinct !{!446, !47}
!447 = distinct !{!447, !47}
!448 = distinct !{!448, !47}
!449 = distinct !{!449, !57}
!450 = distinct !{!450, !47}
!451 = !{i64 2155477946}
!452 = !{i64 2155478769}
!453 = !{i64 2155478823}
!454 = !{i64 2155478886}
!455 = !{i64 2155479715}
!456 = !{i64 2155479769}
!457 = !{i64 2155479832}
!458 = !{i64 2155480661}
!459 = !{i64 2155480715}
!460 = !{i64 2155480778}
!461 = !{i64 2155481607}
!462 = !{i64 2155481661}
!463 = !{i64 2155481724}
!464 = !{i64 2155482553}
!465 = !{i64 2155482607}
!466 = !{i64 2155482670}
!467 = !{i64 2155483499}
!468 = !{i64 2155483553}
!469 = !{i64 2155483616}
!470 = !{i64 2155484445}
!471 = !{i64 2155484499}
!472 = !{i64 2155484562}
!473 = !{i64 2155485391}
!474 = !{i64 2155485445}
!475 = !{i64 2155485508}
!476 = !{i64 2155485560}
!477 = !{i64 2155486381}
!478 = !{i64 2155486435}
!479 = !{i64 2155486498}
!480 = !{i64 2155466440}
!481 = !{i64 2155467652}
!482 = !{i64 2155467706}
!483 = !{i64 2155468920}
!484 = !{i64 2155468974}
!485 = !{i64 2155470188}
!486 = !{i64 2155470242}
!487 = !{i64 2155471456}
!488 = !{i64 2155471510}
!489 = !{i64 2155472724}
!490 = !{i64 2155472778}
!491 = !{i64 2155473992}
!492 = !{i64 2155474046}
!493 = !{i64 2155475260}
!494 = !{i64 2155475314}
!495 = !{i64 2155476528}
!496 = !{i64 2155476582}
!497 = !{i64 2155476634}
!498 = !{i64 2155477840}
!499 = !{i64 2155477894}
!500 = distinct !{!500, !47}
!501 = distinct !{!501, !47}
!502 = distinct !{!502, !47}
!503 = distinct !{!503, !47}
!504 = distinct !{!504, !47}
!505 = distinct !{!505, !47}
!506 = distinct !{!506, !47}
!507 = !{i64 2155426728}
!508 = !{i64 2155426548}
!509 = !{i64 2155426601}
!510 = !{i64 2155426668}
!511 = !{i64 2155426786}
!512 = !{i64 2155426842}
!513 = !{i64 2155427401}
!514 = !{i64 2155427467}
!515 = !{i64 2155427530}
!516 = !{i64 2155428095}
!517 = !{i64 2155428161}
!518 = !{i64 2155428224}
!519 = !{i64 2155428789}
!520 = !{i64 2155428855}
!521 = !{i64 2155428918}
!522 = !{i64 2155429483}
!523 = !{i64 2155429549}
!524 = !{i64 2155429612}
!525 = !{i64 2155430177}
!526 = !{i64 2155430243}
!527 = !{i64 2155430306}
!528 = !{i64 2155430871}
!529 = !{i64 2155430937}
!530 = !{i64 2155431000}
!531 = !{i64 2155431565}
!532 = !{i64 2155431631}
!533 = !{i64 2155431694}
!534 = !{i64 2155432259}
!535 = !{i64 2155432325}
!536 = !{i64 2155432388}
!537 = !{i64 2155432452}
!538 = !{i64 2155433009}
!539 = !{i64 2155433075}
!540 = !{i64 2155433138}
!541 = distinct !{!541, !47, !48, !49}
!542 = distinct !{!542, !57}
!543 = distinct !{!543, !47, !48}
!544 = !{!"_ZTSN5Eigen7ProductINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES3_Li0EEE", !103, i64 0, !33, i64 8}
!545 = !{!544, !33, i64 8}
!546 = distinct !{!546, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!547 = distinct !{!547, !546, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!548 = distinct !{!548, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!549 = distinct !{!549, !548, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!550 = distinct !{!550, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl"}
!551 = distinct !{!551, !550, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl: argument 0"}
!552 = distinct !{!552, !47}
!553 = distinct !{!553, !57}
!554 = distinct !{!554, !47}
!555 = distinct !{!555, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!556 = distinct !{!556, !555, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!557 = distinct !{!557, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl"}
!558 = distinct !{!558, !557, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl: argument 0"}
!559 = distinct !{!559, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!560 = distinct !{!560, !559, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!561 = distinct !{!561, !47}
!562 = distinct !{!562, !57}
!563 = distinct !{!563, !47}
!564 = !{!547}
!565 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1EEE", !105, i64 0}
!566 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ELb1EEE", !565, i64 0, !33, i64 24, !29, i64 32, !29, i64 40, !11, i64 48}
!567 = !{!566, !11, i64 48}
!568 = !{!549}
!569 = !{!551}
!570 = !{!556}
!571 = !{!558}
!572 = !{!560}
!573 = distinct !{!573, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!574 = distinct !{!574, !573, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!575 = distinct !{!575, i1 true, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl"}
!576 = distinct !{!576, !575, !"_ZNK5Eigen9DenseBaseINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3rowEl: argument 0"}
!577 = distinct !{!577, !47}
!578 = distinct !{!578, !57}
!579 = distinct !{!579, !47}
!580 = distinct !{!580, !47}
!581 = distinct !{!581, !47}
!582 = distinct !{!582, !57}
!583 = distinct !{!583, !57}
!584 = distinct !{!584, !57}
!585 = distinct !{!585, !57}
!586 = distinct !{!586, i1 false, !"LVerDomain"}
!587 = distinct !{!587, !586}
!588 = distinct !{!588, !586}
!589 = distinct !{!589, !586}
!590 = distinct !{!590, !47, !48, !49}
!591 = distinct !{!591, !47, !48}
!592 = !{!"_ZTSN5Eigen7ProductINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES3_Li1EEE", !91, i64 0, !33, i64 8}
!593 = !{!592, !33, i64 8}
!594 = !{!574}
!595 = !{!576}
!596 = !{!587}
!597 = !{!588}
!598 = !{!589}
!599 = !{!588, !587}
!600 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi0EEE", !10, i64 0, !29, i64 8, !37, i64 16}
!601 = !{!600, !10, i64 0}
!602 = distinct !{!602, !47}
!603 = distinct !{!603, !47}
!604 = distinct !{!604, !47}
!605 = distinct !{!605, !47}
!606 = distinct !{!606, i1 false, !"LVerDomain"}
!607 = distinct !{!607, !606}
!608 = distinct !{!608, !606}
!609 = distinct !{!609, !606}
!610 = distinct !{!610, !606}
!611 = distinct !{!611, !606}
!612 = distinct !{!612, !47, !48, !49}
!613 = distinct !{!613, !47, !48}
!614 = distinct !{!614, !47}
!615 = distinct !{!615, i1 false, !"LVerDomain"}
!616 = distinct !{!616, !615}
!617 = distinct !{!617, !615}
!618 = distinct !{!618, !615}
!619 = distinct !{!619, !47, !48, !49}
!620 = distinct !{!620, !47, !48}
!621 = distinct !{!621, !47, !48, !49}
!622 = distinct !{!622, !57}
!623 = distinct !{!623, !47}
!624 = distinct !{!624, !47, !48}
!625 = !{i64 2155487018}
!626 = !{!607}
!627 = !{!608}
!628 = !{!609}
!629 = !{!610}
!630 = !{!611}
!631 = !{!610, !609, !608, !607}
!632 = !{!616}
!633 = !{!617}
!634 = !{!618}
!635 = !{!617, !616}
end_hunk_2
