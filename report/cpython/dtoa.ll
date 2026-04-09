inline.NumInlined: 94
inline.NumDeleted: 14
begin_hunk_0_@_Py_dg_strtod:bb.a
  %.9484.in854 = phi i8 [ %i.bq, %.lr.ph858 ], [ %.8483.in.lcssa, %._crit_edge851 ]
  %.9484 = zext nneg i8 %.9484.in854 to i32
  %i.bm = mul i32 %.0413856, 10
  %i.bn = add i32 %i.bm, %.9484
  %i.bo = add i32 %i.bn, -48                      ; 2 uses
  %i.bp = getelementptr i8, ptr %.9855, i64 1     ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = add i8 %i.bq, -48
end_hunk_0
begin_hunk_1_@_Py_dg_strtod:bb.a
  %i.cr = getelementptr i8, ptr %.1430, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !11
  %i.ct = sext i8 %i.cs to i32
  %i.cu = add i32 %i.cm, %i.ct
  %i.cv = add i32 %i.cu, -48
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph866
end_hunk_1
begin_hunk_2_@_Py_dg_strtod:bb.a
  %i.dc = getelementptr i8, ptr %.1430, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11
  %i.de = sext i8 %i.dd to i32
  %i.df = add i32 %i.cx, %i.de
  %i.dg = add i32 %i.df, -48
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
end_hunk_2
begin_hunk_3_@_Py_dg_strtod:bb.a
  %i.kf = getelementptr i8, ptr %.1430, i64 %indvars.iv1015.epil
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !11
  %i.kh = sext i8 %i.kg to i32
  %i.ki = add i32 %i.ke, %i.kh
  %i.kj = add i32 %i.ki, -48                      ; 2 uses
  %indvars.iv.next1016.epil = add nuw nsw i64 %indvars.iv1015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_3
begin_hunk_4_@_Py_dg_strtod:bb.a
  %i.ko = getelementptr i8, ptr %.1430, i64 %indvars.iv.next1020.prol
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !11
  %i.kq = sext i8 %i.kp to i32
  %i.kr = add i32 %i.kn, %i.kq
  %i.ks = add i32 %i.kr, -48                      ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1505
  br i1 %prol.iter.cmp.not, label %.lr.ph896.prol.loopexit, label %.lr.ph896.prol, !llvm.loop !35
end_hunk_4
begin_hunk_5_@_Py_dg_strtod:bb.a
  %i.kw = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !11
  %i.ky = sext i8 %i.kx to i32
  %i.kz = add i32 %i.kv, %i.ky
  %i.la = mul i32 %i.kz, 10
  %i.lb = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lc = getelementptr i8, ptr %i.lb, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !11
  %i.le = sext i8 %i.ld to i32
  %i.lf = add i32 %i.la, %i.le
  %i.lg = mul i32 %i.lf, 10
  %i.lh = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.li = getelementptr i8, ptr %i.lh, i64 2
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !11
  %i.lk = sext i8 %i.lj to i32
  %i.ll = add i32 %i.lg, %i.lk
  %i.lm = mul i32 %i.ll, 10
  %i.ln = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lo = getelementptr i8, ptr %i.ln, i64 3
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !11
  %i.lq = sext i8 %i.lp to i32
  %i.lr = add i32 %i.lm, %i.lq
  %i.ls = add i32 %i.lr, -53328                   ; 3 uses
  %indvars.iv.next1016.3 = add nuw nsw i64 %indvars.iv1015, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_5
begin_hunk_6_@_Py_dg_strtod:bb.a
  %i.lv = getelementptr i8, ptr %i.lu, i64 1
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !11
  %i.lx = sext i8 %i.lw to i32
  %i.ly = add i32 %i.lt, %i.lx
  %i.lz = mul i32 %i.ly, 10
  %i.ma = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.mb = getelementptr i8, ptr %i.ma, i64 2
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !11
  %i.md = sext i8 %i.mc to i32
  %i.me = add i32 %i.lz, %i.md
  %i.mf = mul i32 %i.me, 10
  %i.mg = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.mh = getelementptr i8, ptr %i.mg, i64 3
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !11
  %i.mj = sext i8 %i.mi to i32
  %i.mk = add i32 %i.mf, %i.mj
  %i.ml = mul i32 %i.mk, 10
  %indvars.iv.next1020.3 = add nuw nsw i64 %indvars.iv1019, 4 ; 3 uses
  %i.mm = getelementptr i8, ptr %.1430, i64 %indvars.iv.next1020.3
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !11
  %i.mo = sext i8 %i.mn to i32
  %i.mp = add i32 %i.ml, %i.mo
  %i.mq = add i32 %i.mp, -53328                   ; 2 uses
  %exitcond1023.not.3 = icmp eq i64 %indvars.iv.next1020.3, %wide.trip.count1022
  br i1 %exitcond1023.not.3, label %._crit_edge.thread.i, label %.lr.ph896, !llvm.loop !37

end_hunk_6
begin_hunk_7_@mult:bb.a
  %i.cl = add i64 %i.ck, 24
  %i.cm = add i64 %.1.i82101, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cm)
  %2 = sub i64 %umax, %.1.i82101
  %3 = add i64 %2, -25
  %i.cn = and i64 %3, -4
  %i.co = add i64 %i.cn, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %i.co, i1 false), !tbaa !7
end_hunk_7
begin_hunk_8_@lshift:bb.a
  %i.cb = add i64 %i.ca, 24
  %i.cc = add i64 %i.a, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.cc)
  %2 = sub i64 %umax, %i.a
  %3 = add i64 %2, -25                            ; 2 uses
  %i.cd = lshr i64 %3, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 44
  br i1 %min.iters.check, label %.preheader.preheader96, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %4 = sub i64 %.046.lcssa91, %i.b
  %5 = add i64 %4, -24
  %diff.check = icmp ult i64 %5, 32
  br i1 %diff.check, label %.preheader.preheader96, label %vector.ph

end_hunk_8
begin_hunk_9_@bigcomp:bb.a
  %i.gj = getelementptr i8, ptr %1, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !11
  %i.gl = sext i8 %i.gk to i32
  %i.gm = tail call fastcc i32 @quorem(ptr noundef %i.fv, ptr noundef %.169)
  %i.gn = sub i32 %i.gl, %i.gm
  %3 = add i32 %i.gn, -48                         ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
end_hunk_9
begin_hunk_10_@bigcomp:bb.a

.thread:                                          ; preds = %bb.ax, %bb.bg, %bb.bc, %cmp.exit, %bb.aw, %bb.bf
  %.3142 = phi ptr [ %.1, %cmp.exit ], [ %i.fv, %bb.bf ], [ %i.fv, %bb.bg ], [ %.1, %bb.aw ], [ %i.fv, %bb.bc ], [ %.1, %bb.ax ] ; 4 uses
  %.072140 = phi i32 [ -1, %cmp.exit ], [ %i.gu, %bb.bf ], [ -1, %bb.bg ], [ -1, %bb.aw ], [ %3, %bb.bc ], [ -1, %bb.ax ] ; 2 uses
  %i.gv = getelementptr i8, ptr %.3142, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !134 ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 7
end_hunk_10
begin_hunk_11_@_Py_dg_dtoa:bb.a
  br i1 %.not.i663, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ei = add nuw nsw i32 %i.cn, %.030.i
  %i.ej = add nsw i32 %i.ei, -1075
  %i.ek = sub nsw i32 53, %.030.i
  %i.el = and i64 %.pre-phi, 4503599627370495
  %.sroa.086.4.insert.insert95 = or disjoint i64 %i.el, 4607182418800017408
end_hunk_11
begin_hunk_12_@_Py_dg_dtoa:bb.a
.loopexit979:                                     ; preds = %.lr.ph1097, %bb.cn, %.lr.ph1108._crit_edge, %._crit_edge1104
  %.5477 = phi i32 [ %.2474, %.lr.ph1108._crit_edge ], [ %.2474, %bb.cn ], [ %.3475, %._crit_edge1104 ], [ %.3475, %.lr.ph1097 ] ; 2 uses
  %.5 = phi ptr [ %.lcssa1464, %.lr.ph1108._crit_edge ], [ %.lcssa1464, %bb.cn ], [ %.lcssa1073, %._crit_edge1104 ], [ %i.ks, %.lr.ph1097 ] ; 4 uses
  %.51221 = ptrtoint ptr %.5 to i64               ; 2 uses
  %i.nl = sub i64 %.1.i.i6681218, %.51221
  %scevgep1222.a = getelementptr i8, ptr %.5, i64 %i.nl
  %scevgep1222 = getelementptr i8, ptr %scevgep1222.a, i64 5
  %i.nm = sub i64 %.1.i.i6681218, %.51221
  %6 = getelementptr i8, ptr %.5, i64 %i.nm
  %scevgep1223 = getelementptr i8, ptr %6, i64 4  ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cp, %.loopexit979
end_hunk_12
begin_hunk_13_@_Py_dg_dtoa:bb.a

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cq
  %i.nt = phi i8 [ 49, %bb.cq ], [ %i.ns, %.loopexit.loopexit ]
  %.61119 = phi ptr [ %scevgep1222, %bb.cq ], [ %.6, %.loopexit.loopexit ]
  %i.nu = phi ptr [ %scevgep1223, %bb.cq ], [ %i.nn, %.loopexit.loopexit ]
  %.6478 = phi i32 [ %i.nr, %bb.cq ], [ %.5477, %.loopexit.loopexit ]
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !11
end_hunk_13
begin_hunk_14_@_Py_dg_dtoa:bb.a
  %.3431 = phi ptr [ %.0428, %bb.fv ], [ %.2430, %cmp.exit720 ], [ %.2430, %cmp.exit720.thread ], [ %.2430, %bb.gk ] ; 2 uses
  %.14425 = phi ptr [ %.11422, %bb.fv ], [ %.13424, %cmp.exit720 ], [ %.13424, %cmp.exit720.thread ], [ %.13424, %bb.gk ] ; 2 uses
  %.13 = phi ptr [ %i.xi, %bb.fv ], [ %.12, %cmp.exit720 ], [ %.12, %cmp.exit720.thread ], [ %.12, %bb.gk ] ; 4 uses
  %.131219 = ptrtoint ptr %.13 to i64             ; 2 uses
  %i.ze = sub i64 %.1.i.i6681218, %.131219
  %scevgep.a = getelementptr i8, ptr %.13, i64 %i.ze
  %scevgep = getelementptr i8, ptr %scevgep.a, i64 5
  %i.zf = sub i64 %.1.i.i6681218, %.131219
  %7 = getelementptr i8, ptr %.13, i64 %i.zf
  %scevgep1220 = getelementptr i8, ptr %7, i64 4
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gn, %cmp.exit720.thread876
end_hunk_14
begin_hunk_15_@_Py_dg_dtoa:bb.a
  %.4432 = phi ptr [ null, %cmp.exit690.thread ], [ null, %cmp.exit690.thread858 ], [ %.3431, %bb.go ], [ %.3431, %bb.gp ], [ %.0428, %.thread869 ], [ %.0428, %bb.fw ], [ %.0428, %bb.fg ], [ %.2430, %.preheader970 ] ; 2 uses
  %.15426 = phi ptr [ %.7418, %cmp.exit690.thread ], [ %.8419, %cmp.exit690.thread858 ], [ %.14425, %bb.go ], [ %.14425, %bb.gp ], [ %.11422, %.thread869 ], [ %.11422, %bb.fw ], [ %.11422, %bb.fg ], [ %.13424, %.preheader970 ] ; 2 uses
  %.6409 = phi ptr [ %.4407, %cmp.exit690.thread ], [ %.5408, %cmp.exit690.thread858 ], [ %.3406, %bb.go ], [ %.3406, %bb.gp ], [ %.3406, %.thread869 ], [ %.3406, %bb.fw ], [ %.3406, %bb.fg ], [ %.3406, %.preheader970 ] ; 2 uses
  %.16 = phi ptr [ %i.ih, %cmp.exit690.thread ], [ %i.tg, %cmp.exit690.thread858 ], [ %scevgep, %bb.go ], [ %.14, %bb.gp ], [ %i.xf, %.thread869 ], [ %i.xl, %bb.fw ], [ %i.wa, %bb.fg ], [ %.15, %.preheader970 ] ; 2 uses
  %.not.i721 = icmp eq ptr %.6409, null
  br i1 %.not.i721, label %Bfree.exit722, label %.thread878

end_hunk_15
