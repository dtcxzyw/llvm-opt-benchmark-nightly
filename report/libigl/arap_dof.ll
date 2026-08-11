inline.NumInlined: 10962
inline.NumDeleted: 4749
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN5Eigen8internal13gemm_pack_lhsIflNS0_22const_blas_data_mapperIflLi0EEELi8ELi4EDv4_fLi0ELb0ELb0EEclEPfRKS3_llll:bb.a
  br i1 %niter130.ncmp.1, label %._crit_edge.us78.unr-lcssa, label %.preheader62.us.new, !llvm.loop !1512

._crit_edge.us78.unr-lcssa:                       ; preds = %.preheader62.us.new
  br i1 %lcmp.mod126.not, label %._crit_edge.us78, label %.epil.preheader124

.epil.preheader124:                               ; preds = %._crit_edge.us78.unr-lcssa, %.preheader62.us
  %.05373.us.epil.init = phi i64 [ 0, %.preheader62.us ], [ %i.ca, %._crit_edge.us78.unr-lcssa ]
  %.372.us.epil.init = phi i64 [ %.25874.us, %.preheader62.us ], [ %i.bz, %._crit_edge.us78.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.cb = load ptr, ptr %2, align 8, !tbaa !385
  %i.cc = load i64, ptr %i.bb, align 8, !tbaa !387
  %i.cd = mul nsw i64 %i.cc, %.05373.us.epil.init
  %i.ce = getelementptr [4 x i8], ptr %i.cb, i64 %.175.us
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !tbaa !54
  %i.ch = getelementptr inbounds [4 x i8], ptr %1, i64 %.372.us.epil.init
  store <4 x float> %i.cg, ptr %i.ch, align 16, !tbaa !54
  %i.ci = add nsw i64 %.372.us.epil.init, 4
  br label %._crit_edge.us78

._crit_edge.us78:                                 ; preds = %._crit_edge.us78.unr-lcssa, %.epil.preheader124
  %.lcssa118 = phi i64 [ %i.bz, %._crit_edge.us78.unr-lcssa ], [ %i.ci, %.epil.preheader124 ] ; 2 uses
  %i.cj = add nuw nsw i64 %.175.us, 4             ; 3 uses
  %i.ck = icmp slt i64 %i.cj, %i.g
  br i1 %i.ck, label %.preheader62.us, label %.preheader61, !llvm.loop !1513

.preheader61:                                     ; preds = %._crit_edge.us78, %.preheader62.preheader, %.preheader63
  %.258.lcssa = phi i64 [ %.056.lcssa, %.preheader63 ], [ %.056.lcssa, %.preheader62.preheader ], [ %.lcssa118, %._crit_edge.us78 ]
  %.1.lcssa = phi i64 [ %.055.lcssa, %.preheader63 ], [ %i.bi, %.preheader62.preheader ], [ %i.cj, %._crit_edge.us78 ] ; 3 uses
  %i.cl = icmp slt i64 %.1.lcssa, %4
  %i.cm = icmp sgt i64 %3, 0
  %or.cond = and i1 %i.cl, %i.cm
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge86.split

.preheader.lr.ph.split:                           ; preds = %.preheader61
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %2, align 8, !tbaa !385   ; 2 uses
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !387 ; 6 uses
  %min.iters.check = icmp ugt i64 %3, 7
  %ident.check.not = icmp eq i64 %i.cq, 1
  %or.cond116 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %3, 9223372036854775800        ; 4 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter131 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.285 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %i.do, %._crit_edge ] ; 2 uses
  %.484 = phi i64 [ %.258.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %.285 ; 6 uses
  br i1 %or.cond116, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader
  %i.cs = add i64 %.1.lcssa, %indvar
  %i.ct = shl i64 %i.cs, 2
  %i.cu = add i64 %i.ct, %i.cp
  %i.cv = sub i64 %i.a, %i.cu
  %i.cw = shl i64 %.484, 2
  %i.cx = add i64 %i.cv, %i.cw
  %i.cy = add i64 %i.cx, -1
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cz = add i64 %.484, %n.vec                   ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %1, i64 %.484
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.db = getelementptr [4 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %wide.load = load <4 x float>, ptr %i.db, align 4, !tbaa !364
  %wide.load114 = load <4 x float>, ptr %i.dc, align 4, !tbaa !364
  %i.dd = getelementptr [4 x i8], ptr %i.da, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x float> %wide.load, ptr %i.dd, align 4, !tbaa !364
  store <4 x float> %wide.load114, ptr %i.de, align 4, !tbaa !364
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !1514

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.083.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.582.ph = phi i64 [ %.484, %vector.memcheck ], [ %.484, %.preheader ], [ %i.cz, %middle.block ] ; 2 uses
  br i1 %lcmp.mod132.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.083.prol = phi i64 [ %i.dl, %scalar.ph.prol ], [ %.083.ph, %scalar.ph.preheader ] ; 2 uses
  %.582.prol = phi i64 [ %i.dj, %scalar.ph.prol ], [ %.582.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dg = mul nsw i64 %i.cq, %.083.prol
  %i.dh = getelementptr [4 x i8], ptr %i.cr, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !364
  %i.dj = add nsw i64 %.582.prol, 1               ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %1, i64 %.582.prol
  store float %i.di, ptr %i.dk, align 4, !tbaa !364
  %i.dl = add nuw nsw i64 %.083.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1515

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa117.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.dj, %scalar.ph.prol ]
  %.083.unr = phi i64 [ %.083.ph, %scalar.ph.preheader ], [ %i.dl, %scalar.ph.prol ]
  %.582.unr = phi i64 [ %.582.ph, %scalar.ph.preheader ], [ %i.dj, %scalar.ph.prol ]
  %i.dm = sub nsw i64 %.083.ph, %3
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cz, %middle.block ], [ %.lcssa117.unr, %scalar.ph.prol.loopexit ], [ %i.ej, %scalar.ph ]
  %i.do = add nuw nsw i64 %.285, 1                ; 2 uses
  %exitcond98.not = icmp eq i64 %i.do, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond98.not, label %._crit_edge86.split, label %.preheader, !llvm.loop !1516

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.083 = phi i64 [ %i.em, %scalar.ph ], [ %.083.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.582 = phi i64 [ %i.ej, %scalar.ph ], [ %.582.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dp = mul nsw i64 %i.cq, %.083
  %i.dq = getelementptr [4 x i8], ptr %i.cr, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !364
  %i.ds = getelementptr inbounds [4 x i8], ptr %1, i64 %.582
  store float %i.dr, ptr %i.ds, align 4, !tbaa !364
  %i.dt = add nuw nsw i64 %.083, 1
  %i.du = mul nsw i64 %i.cq, %i.dt
  %i.dv = getelementptr [4 x i8], ptr %i.cr, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !364
  %i.dx = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  store float %i.dw, ptr %i.dy, align 4, !tbaa !364
  %i.dz = add nuw nsw i64 %.083, 2
  %i.ea = mul nsw i64 %i.cq, %i.dz
  %i.eb = getelementptr [4 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !364
  %i.ed = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  store float %i.ec, ptr %i.ee, align 4, !tbaa !364
  %i.ef = add nuw nsw i64 %.083, 3
  %i.eg = mul nsw i64 %i.cq, %i.ef
  %i.eh = getelementptr [4 x i8], ptr %i.cr, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !364
  %i.ej = add nsw i64 %.582, 4                    ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %1, i64 %.582
  %i.el = getelementptr i8, ptr %i.ek, i64 12
  store float %i.ei, ptr %i.el, align 4, !tbaa !364
  %i.em = add nuw nsw i64 %.083, 4                ; 2 uses
  %exitcond97.not.3 = icmp eq i64 %i.em, %3
  br i1 %exitcond97.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1517

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader61
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIflNS0_22const_blas_data_mapperIflLi0EEELi4ELi0ELb0ELb0EEclEPfRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !730
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = sdiv i64 %3, 4
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = icmp sgt i64 %4, 3
  br i1 %i.f, label %.lr.ph94, label %.preheader

.lr.ph94:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = icmp sgt i64 %3, 3
  br i1 %i.h, label %.lr.ph.us.preheader, label %.lr.ph94.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph94
  %smax = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4) ; 2 uses
  %i.i = or disjoint i64 %smax, 1
  %smax138 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.i)
  %i.j = xor i64 %smax, -1
  %i.k = add nsw i64 %smax138, %i.j               ; 2 uses
  %smax142 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4)
  %i.l = add nsw i64 %smax142, -1                 ; 2 uses
  %i.m = and i64 %i.l, -4
  %i.n = add nuw nsw i64 %i.m, 5
  %smax143 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.n) ; 2 uses
  %i.o = shl i64 %smax143, 4
  %i.p = lshr i64 %i.l, 2                         ; 2 uses
  %i.q = shl i64 %i.p, 6
  %i.r = sub i64 %i.o, %i.q
  %i.s = shl i64 %smax143, 2                      ; 4 uses
  %i.t = shl i64 %i.p, 4                          ; 4 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = sub i64 %i.s, %i.t
  %i.w = sub i64 %i.s, %i.t
  %i.x = sub i64 %i.s, %i.t
  %i.y = tail call i64 @llvm.smax.i64(i64 %i.e, i64 4) ; 2 uses
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.z) ; 2 uses
  %i.ab = sub nsw i64 %i.aa, %i.y                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 44
  %mul.result = shl i64 %i.k, 4                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.k, 1152921504606846975
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.r
  %i.ac = and i64 %i.aa, 3                        ; 2 uses
  %n.vec = sub i64 %i.ab, %i.ac                   ; 3 uses
  %i.ad = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.ac, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar145 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next146, %._crit_edge.us ] ; 2 uses
  %.06092.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.ch, %._crit_edge.us ] ; 5 uses
  %.06191.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ] ; 4 uses
  %i.ae = shl i64 %indvar145, 4                   ; 4 uses
  %i.af = or disjoint i64 %i.ae, 12
  %i.ag = or disjoint i64 %i.ae, 8
  %i.ah = or disjoint i64 %i.ae, 4
  %i.ai = load ptr, ptr %2, align 8, !tbaa !385   ; 12 uses
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !387 ; 8 uses
  %i.ak = mul nsw i64 %i.aj, %.06092.us
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.ak ; 3 uses
  %i.am = or disjoint i64 %.06092.us, 1
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = getelementptr [4 x i8], ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = or disjoint i64 %.06092.us, 2
  %i.aq = mul nsw i64 %i.aj, %i.ap
  %i.ar = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 3 uses
  %i.as = or disjoint i64 %.06092.us, 3
  %i.at = mul nsw i64 %i.aj, %i.as
  %i.au = getelementptr [4 x i8], ptr %i.ai, i64 %i.at ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvar = phi i64 [ 0, %.lr.ph.us ], [ %indvar.next, %bb.b ] ; 3 uses
  %.05985.us = phi i64 [ 0, %.lr.ph.us ], [ %i.bq, %bb.b ] ; 5 uses
  %.16284.us = phi i64 [ %.06191.us, %.lr.ph.us ], [ %i.bp, %bb.b ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.05985.us
  %i.aw = load <4 x float>, ptr %i.av, align 1, !tbaa !54 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.05985.us
  %i.ay = load <4 x float>, ptr %i.ax, align 1, !tbaa !54 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.05985.us
  %i.ba = load <4 x float>, ptr %i.az, align 1, !tbaa !54 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.05985.us
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !tbaa !54 ; 2 uses
  %i.bd = shufflevector <4 x float> %i.aw, <4 x float> %i.ay, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.be = shufflevector <4 x float> %i.ba, <4 x float> %i.bc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bf = shufflevector <4 x float> %i.aw, <4 x float> %i.ay, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.ba, <4 x float> %i.bc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bi = shufflevector <4 x float> %i.be, <4 x float> %i.bd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bj = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bk = shufflevector <4 x float> %i.bg, <4 x float> %i.bf, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %.16284.us ; 4 uses
  store <4 x float> %i.bh, ptr %i.bl, align 1, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x float> %i.bi, ptr %i.bm, align 1, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <4 x float> %i.bj, ptr %i.bn, align 1, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <4 x float> %i.bk, ptr %i.bo, align 1, !tbaa !54
  %i.bp = add nsw i64 %.16284.us, 16              ; 7 uses
  %i.bq = add nuw nsw i64 %.05985.us, 4           ; 8 uses
  %i.br = icmp slt i64 %i.bq, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.br, label %bb.b, label %..preheader83_crit_edge.us, !llvm.loop !1518

.lr.ph89.us:                                      ; preds = %.lr.ph89.us.preheader187, %.lr.ph89.us
  %.188.us = phi i64 [ %i.cf, %.lr.ph89.us ], [ %.188.us.ph, %.lr.ph89.us.preheader187 ] ; 5 uses
  %.287.us = phi i64 [ %i.ce, %.lr.ph89.us ], [ %.287.us.ph, %.lr.ph89.us.preheader187 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.188.us
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !364
  %i.bu = getelementptr inbounds [4 x i8], ptr %1, i64 %.287.us ; 4 uses
  store float %i.bt, ptr %i.bu, align 4, !tbaa !364
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.188.us
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !364
  %i.bx = getelementptr i8, ptr %i.bu, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !364
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.188.us
  %i.bz = load float, ptr %i.by, align 4, !tbaa !364
  %i.ca = getelementptr i8, ptr %i.bu, i64 8
  store float %i.bz, ptr %i.ca, align 4, !tbaa !364
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.188.us
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !364
  %i.cd = getelementptr i8, ptr %i.bu, i64 12
  store float %i.cc, ptr %i.cd, align 4, !tbaa !364
  %i.ce = add nsw i64 %.287.us, 4                 ; 2 uses
  %i.cf = add nuw nsw i64 %.188.us, 1             ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %3
  br i1 %i.cg, label %.lr.ph89.us, label %._crit_edge.us, !llvm.loop !1519

._crit_edge.us:                                   ; preds = %.lr.ph89.us, %middle.block, %..preheader83_crit_edge.us
  %.2.lcssa.us = phi i64 [ %i.bp, %..preheader83_crit_edge.us ], [ %i.eb, %middle.block ], [ %i.ce, %.lr.ph89.us ] ; 2 uses
  %i.ch = add nuw nsw i64 %.06092.us, 4           ; 2 uses
  %i.ci = icmp slt i64 %i.ch, %i.c
  %indvar.next146 = add i64 %indvar145, 1
  br i1 %i.ci, label %.lr.ph.us, label %.preheader, !llvm.loop !1520

..preheader83_crit_edge.us:                       ; preds = %bb.b
  %i.cj = icmp slt i64 %i.bq, %3
  br i1 %i.cj, label %.lr.ph89.us.preheader, label %._crit_edge.us

.lr.ph89.us.preheader:                            ; preds = %..preheader83_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph89.us.preheader187, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph89.us.preheader
  %i.ck = shl i64 %.06191.us, 2                   ; 3 uses
  %i.cl = shl i64 %indvar, 6                      ; 3 uses
  %i.cm = getelementptr i8, ptr %1, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ck
  %scevgep = getelementptr i8, ptr %i.cn, i64 68  ; 2 uses
  %i.co = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cp = icmp ult ptr %i.co, %scevgep
  %i.cq = getelementptr i8, ptr %1, i64 %i.cl
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.ck
  %scevgep139 = getelementptr i8, ptr %i.cr, i64 72 ; 2 uses
  %i.cs = getelementptr i8, ptr %scevgep139, i64 %mul.result
  %i.ct = icmp ult ptr %i.cs, %scevgep139
  %i.cu = getelementptr i8, ptr %1, i64 %i.cl
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ck
  %scevgep140 = getelementptr i8, ptr %i.cv, i64 76 ; 2 uses
  %i.cw = getelementptr i8, ptr %scevgep140, i64 %mul.result
  %i.cx = icmp ult ptr %i.cw, %scevgep140
  %i.cy = or i1 %i.cx, %mul.overflow
  %i.cz = or i1 %i.ct, %i.cp
  %i.da = or i1 %i.cz, %i.cy
  br i1 %i.da, label %.lr.ph89.us.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.db = shl i64 %.06191.us, 2                   ; 2 uses
  %i.dc = shl i64 %indvar, 6                      ; 2 uses
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.db
  %scevgep141 = getelementptr i8, ptr %i.de, i64 64 ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dc
  %scevgep144 = getelementptr i8, ptr %gep, i64 %i.db ; 4 uses
  %i.df = mul i64 %i.aj, %i.af                    ; 2 uses
  %i.dg = sub i64 %.16284.us, %.06191.us          ; 8 uses
  %i.dh = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  %scevgep147 = getelementptr i8, ptr %i.di, i64 16
  %i.dj = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.u
  %scevgep148 = getelementptr i8, ptr %i.dk, i64 %i.df
  %i.dl = mul i64 %i.aj, %i.ag                    ; 2 uses
  %i.dm = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %scevgep149 = getelementptr i8, ptr %i.dn, i64 16
  %i.do = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.v
  %scevgep150 = getelementptr i8, ptr %i.dp, i64 %i.dl
  %i.dq = mul i64 %i.aj, %i.ah                    ; 2 uses
  %i.dr = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dq
  %scevgep151 = getelementptr i8, ptr %i.ds, i64 16
  %i.dt = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.w
  %scevgep152 = getelementptr i8, ptr %i.du, i64 %i.dq
  %i.dv = mul i64 %i.aj, %i.ae                    ; 2 uses
  %i.dw = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.dv
  %scevgep153 = getelementptr i8, ptr %i.dx, i64 16
  %i.dy = getelementptr i8, ptr %i.ai, i64 %i.dg
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.x
  %scevgep154 = getelementptr i8, ptr %i.dz, i64 %i.dv
  %bound0 = icmp ult ptr %scevgep141, %scevgep148
  %bound1 = icmp ult ptr %scevgep147, %scevgep144
  %found.conflict = and i1 %bound0, %bound1
  %bound0155 = icmp ult ptr %scevgep141, %scevgep150
  %bound1156 = icmp ult ptr %scevgep149, %scevgep144
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx = or i1 %found.conflict, %found.conflict157
  %bound0158 = icmp ult ptr %scevgep141, %scevgep152
  %bound1159 = icmp ult ptr %scevgep151, %scevgep144
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx, %found.conflict160
  %bound0162 = icmp ult ptr %scevgep141, %scevgep154
  %bound1163 = icmp ult ptr %scevgep153, %scevgep144
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161, %found.conflict164
  br i1 %conflict.rdx165, label %.lr.ph89.us.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ea = add i64 %i.bq, %n.vec
  %i.eb = add i64 %i.bp, %i.ad                    ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %1, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = add nuw i64 %i.bq, %index               ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ed
  %wide.load = load <4 x float>, ptr %i.ee, align 4, !tbaa !364, !alias.scope !1521
  %.idx = shl i64 %index, 4
  %i.ef = getelementptr i8, ptr %i.ec, i64 %.idx
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ed
  %wide.load166 = load <4 x float>, ptr %i.eg, align 4, !tbaa !364, !alias.scope !1524
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ed
  %wide.load167 = load <4 x float>, ptr %i.eh, align 4, !tbaa !364, !alias.scope !1526
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ed
  %wide.load168 = load <4 x float>, ptr %i.ei, align 4, !tbaa !364, !alias.scope !1528
  %i.ej = shufflevector <4 x float> %wide.load, <4 x float> %wide.load166, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ek = shufflevector <4 x float> %wide.load167, <4 x float> %wide.load168, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ej, <8 x float> %i.ek, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ef, align 4, !tbaa !364, !alias.scope !1530, !noalias !1532
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_0
