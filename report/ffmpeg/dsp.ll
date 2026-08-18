inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 307
begin_hunk_0_@put_luma_v_8:bb.a
._crit_edge51.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.du = getelementptr inbounds nuw i8, ptr %.04549, i64 256
  %i.dv = add nuw nsw i32 %.04450, 1              ; 2 uses
  %exitcond53.not = icmp eq i32 %i.dv, %3
  br i1 %exitcond53.not, label %._crit_edge51.split, label %.preheader, !llvm.loop !1590

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %i.dw = sub nsw i64 %indvars.iv, %i.c
  %i.dx = getelementptr inbounds i8, ptr %.04648, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !62
  %i.dz = sub nsw i64 %indvars.iv, %i.e
  %i.ea = getelementptr inbounds i8, ptr %.04648, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !62
  %i.ec = sub nsw i64 %indvars.iv, %2
  %i.ed = getelementptr inbounds i8, ptr %.04648, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !62
  %i.ef = getelementptr inbounds nuw i8, ptr %.04648, i64 %indvars.iv
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !62
  %i.eh = getelementptr i8, ptr %i.bq, i64 %indvars.iv
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !62
  %i.ej = getelementptr i8, ptr %i.br, i64 %indvars.iv
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !62
  %i.el = getelementptr i8, ptr %i.bs, i64 %indvars.iv
  %i.em = load i8, ptr %i.el, align 1, !tbaa !62
  %i.en = getelementptr i8, ptr %i.bt, i64 %indvars.iv
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !62
  %i.ep = load <8 x i8>, ptr %5, align 1, !tbaa !62
  %i.eq = sext <8 x i8> %i.ep to <8 x i16>
  %i.er = zext i8 %i.eo to i16
  %i.es = zext i8 %i.em to i16
  %i.et = zext i8 %i.ek to i16
  %i.eu = zext i8 %i.ei to i16
  %i.ev = zext i8 %i.eg to i16
  %i.ew = zext i8 %i.ee to i16
  %i.ex = zext i8 %i.dy to i16
  %i.ey = zext i8 %i.eb to i16
  %i.ez = insertelement <8 x i16> poison, i16 %i.ex, i64 0
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.ey, i64 1
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.ew, i64 2
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.ev, i64 3
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.eu, i64 4
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.et, i64 5
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.es, i64 6
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.er, i64 7
  %i.fh = mul nsw <8 x i16> %i.fg, %i.eq
  %i.fi = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.fh)
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.04549, i64 %indvars.iv
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1591
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_luma_hv_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) #2 {
bb.a:
  %i.a = alloca [17280 x i16], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.neg = mul i64 %2, -3
  %i.b = getelementptr inbounds i8, ptr %1, i64 %.neg
  %i.c = icmp sgt i32 %3, -7
  br i1 %i.c, label %.preheader80.lr.ph, label %._crit_edge91.split

.preheader80.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %6, 0
  br i1 %i.d, label %.preheader80.lr.ph.split, label %._crit_edge85.split

.preheader80.lr.ph.split:                         ; preds = %.preheader80.lr.ph
  %i.e = load <8 x i8>, ptr %4, align 1, !tbaa !62
  %i.f = sext <8 x i8> %i.e to <8 x i16>          ; 9 uses
  %i.g = add i32 %3, 6
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %wide.trip.count = zext nneg i32 %6 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %6, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splat105 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat107 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat109 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat111 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat113 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat115 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat117 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader80

.preheader80:                                     ; preds = %.preheader80.lr.ph.split, %._crit_edge
  %.07684 = phi i32 [ 0, %.preheader80.lr.ph.split ], [ %i.bh, %._crit_edge ] ; 2 uses
  %.07883 = phi ptr [ %i.b, %.preheader80.lr.ph.split ], [ %i.bf, %._crit_edge ] ; 6 uses
  %.07982 = phi ptr [ %i.a, %.preheader80.lr.ph.split ], [ %i.bg, %._crit_edge ] ; 3 uses
  %.pre = load i8, ptr %.07883, align 1, !tbaa !62 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader80
  %vector.recur.init = insertelement <8 x i8> poison, i8 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load120, %vector.body ]
  %i.h = getelementptr i8, ptr %.07883, i64 %index ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -3
  %wide.load = load <8 x i8>, ptr %i.i, align 1, !tbaa !62
  %i.j = zext <8 x i8> %wide.load to <8 x i16>
  %i.k = mul nsw <8 x i16> %broadcast.splat, %i.j
  %i.l = getelementptr i8, ptr %i.h, i64 -2
  %wide.load118 = load <8 x i8>, ptr %i.l, align 1, !tbaa !62
  %i.m = zext <8 x i8> %wide.load118 to <8 x i16>
  %i.n = mul nsw <8 x i16> %broadcast.splat105, %i.m
  %i.o = add <8 x i16> %i.n, %i.k
  %i.p = getelementptr i8, ptr %i.h, i64 -1
  %wide.load119 = load <8 x i8>, ptr %i.p, align 1, !tbaa !62
  %i.q = zext <8 x i8> %wide.load119 to <8 x i16>
  %i.r = mul nsw <8 x i16> %broadcast.splat107, %i.q
  %i.s = add <8 x i16> %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.07883, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %wide.load120 = load <8 x i8>, ptr %i.u, align 1, !tbaa !62 ; 4 uses
  %i.v = shufflevector <8 x i8> %vector.recur, <8 x i8> %wide.load120, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.w = zext <8 x i8> %i.v to <8 x i16>
  %i.x = mul nsw <8 x i16> %broadcast.splat109, %i.w
  %i.y = add <8 x i16> %i.s, %i.x
  %i.z = zext <8 x i8> %wide.load120 to <8 x i16>
  %i.aa = mul nsw <8 x i16> %broadcast.splat111, %i.z
  %i.ab = add <8 x i16> %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %wide.load121 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !62
  %i.ad = zext <8 x i8> %wide.load121 to <8 x i16>
  %i.ae = mul nsw <8 x i16> %broadcast.splat113, %i.ad
  %i.af = add <8 x i16> %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %wide.load122 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !62
  %i.ah = zext <8 x i8> %wide.load122 to <8 x i16>
  %i.ai = mul nsw <8 x i16> %broadcast.splat115, %i.ah
  %i.aj = add <8 x i16> %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %wide.load123 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !62
  %i.al = zext <8 x i8> %wide.load123 to <8 x i16>
  %i.am = mul nsw <8 x i16> %broadcast.splat117, %i.al
  %i.an = add <8 x i16> %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.07982, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1592

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i8> %wide.load120, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader80, %middle.block
  %.ph = phi i8 [ %.pre, %.preheader80 ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.preheader80 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge85.split:                              ; preds = %._crit_edge, %.preheader80.lr.ph
  %i.aq = icmp sgt i32 %3, 0
  br i1 %i.aq, label %.preheader.lr.ph, label %._crit_edge91.split

.preheader.lr.ph:                                 ; preds = %._crit_edge85.split
  %i.ar = icmp sgt i32 %6, 0
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 7 ; 2 uses
  br i1 %i.ar, label %.preheader.preheader, label %._crit_edge91.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %wide.trip.count97 = zext nneg i32 %6 to i64    ; 4 uses
  %i.ba = add nsw i32 %3, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 8
  %i.bd = shl nuw nsw i64 %wide.trip.count97, 1
  %i.be = getelementptr i8, ptr %0, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.bd
  %scevgep124 = getelementptr i8, ptr %5, i64 8
  %min.iters.check126 = icmp ult i32 %6, 8
  %bound0 = icmp ult ptr %0, %scevgep124
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec128 = and i64 %wide.trip.count97, 2147483640 ; 3 uses
  %cmp.n157 = icmp eq i64 %n.vec128, %wide.trip.count97
  br label %.preheader

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bf = getelementptr inbounds i8, ptr %.07883, i64 %2
  %i.bg = getelementptr inbounds nuw i8, ptr %.07982, i64 256
  %i.bh = add nuw i32 %.07684, 1
  %exitcond93.not = icmp eq i32 %.07684, %smax
  br i1 %exitcond93.not, label %._crit_edge85.split, label %.preheader80, !llvm.loop !1593

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bi = phi i8 [ %13, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bj = getelementptr i8, ptr %.07883, i64 %indvars.iv ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -3
  %i.bl = getelementptr i8, ptr %i.bj, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %.07883, i64 %indvars.iv.next
  %8 = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %9 = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %10 = load i8, ptr %i.bn, align 1, !tbaa !62
  %11 = load i8, ptr %9, align 1, !tbaa !62
  %12 = load i8, ptr %8, align 1, !tbaa !62
  %13 = load i8, ptr %7, align 1, !tbaa !62       ; 2 uses
  %i.bo = load <2 x i8>, ptr %i.bk, align 1, !tbaa !62
  %14 = shufflevector <2 x i8> %i.bo, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = insertelement <8 x i8> %14, i8 %i.bm, i64 2
  %16 = insertelement <8 x i8> %15, i8 %i.bi, i64 3
  %17 = insertelement <8 x i8> %16, i8 %13, i64 4
  %18 = insertelement <8 x i8> %17, i8 %12, i64 5
  %i.bp = insertelement <8 x i8> %18, i8 %11, i64 6
  %i.bq = insertelement <8 x i8> %i.bp, i8 %10, i64 7
  %i.br = zext <8 x i8> %i.bq to <8 x i16>
  %i.bs = mul nsw <8 x i16> %i.br, %i.f
  %i.bt = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.bs)
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.07982, i64 %indvars.iv
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !45
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1594

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge87
  %.07490 = phi i32 [ %i.dw, %._crit_edge87 ], [ 0, %.preheader.preheader ]
  %.07789 = phi ptr [ %i.dv, %._crit_edge87 ], [ %0, %.preheader.preheader ] ; 3 uses
  %.188 = phi ptr [ %i.du, %._crit_edge87 ], [ %i.az, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check126, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph125.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %.preheader
  %i.bv = load i8, ptr %5, align 1, !tbaa !62, !alias.scope !1595
  %broadcast.splatinsert129 = insertelement <8 x i8> poison, i8 %i.bv, i64 0
  %broadcast.splat130 = shufflevector <8 x i8> %broadcast.splatinsert129, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bw = sext <8 x i8> %broadcast.splat130 to <8 x i32>
  %i.bx = load i8, ptr %i.as, align 1, !tbaa !62, !alias.scope !1595
  %broadcast.splatinsert131 = insertelement <8 x i8> poison, i8 %i.bx, i64 0
  %broadcast.splat132 = shufflevector <8 x i8> %broadcast.splatinsert131, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.by = sext <8 x i8> %broadcast.splat132 to <8 x i32>
  %i.bz = load i8, ptr %i.at, align 1, !tbaa !62, !alias.scope !1595
  %broadcast.splatinsert133 = insertelement <8 x i8> poison, i8 %i.bz, i64 0
  %broadcast.splat134 = shufflevector <8 x i8> %broadcast.splatinsert133, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ca = sext <8 x i8> %broadcast.splat134 to <8 x i32>
  %i.cb = load i8, ptr %i.au, align 1, !tbaa !62, !alias.scope !1595
  %broadcast.splatinsert135 = insertelement <8 x i8> poison, i8 %i.cb, i64 0
  %broadcast.splat136 = shufflevector <8 x i8> %broadcast.splatinsert135, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cc = sext <8 x i8> %broadcast.splat136 to <8 x i32>
  %i.cd = load i8, ptr %i.av, align 1, !tbaa !62, !alias.scope !1595
  %broadcast.splatinsert137 = insertelement <8 x i8> poison, i8 %i.cd, i64 0
  %broadcast.splat138 = shufflevector <8 x i8> %broadcast.splatinsert137, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ce = sext <8 x i8> %broadcast.splat138 to <8 x i32>
  %i.cf = load i8, ptr %i.aw, align 1, !tbaa !62, !alias.scope !1595
  %broadcast.splatinsert139 = insertelement <8 x i8> poison, i8 %i.cf, i64 0
  %broadcast.splat140 = shufflevector <8 x i8> %broadcast.splatinsert139, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cg = sext <8 x i8> %broadcast.splat140 to <8 x i32>
  %i.ch = load i8, ptr %i.ax, align 1, !tbaa !62, !alias.scope !1595
  %broadcast.splatinsert141 = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %broadcast.splat142 = shufflevector <8 x i8> %broadcast.splatinsert141, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ci = sext <8 x i8> %broadcast.splat142 to <8 x i32>
  %i.cj = load i8, ptr %i.ay, align 1, !tbaa !62, !alias.scope !1595
  %broadcast.splatinsert143 = insertelement <8 x i8> poison, i8 %i.cj, i64 0
  %broadcast.splat144 = shufflevector <8 x i8> %broadcast.splatinsert143, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ck = sext <8 x i8> %broadcast.splat144 to <8 x i32>
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph127
  %index146 = phi i64 [ 0, %vector.ph127 ], [ %index.next155, %vector.body145 ] ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %.188, i64 %index146 ; 8 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -768
  %wide.load147 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !45
  %i.cn = sext <8 x i16> %wide.load147 to <8 x i32>
  %i.co = mul nsw <8 x i32> %i.cn, %i.bw
  %i.cp = getelementptr i8, ptr %i.cl, i64 -512
  %wide.load148 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !45
  %i.cq = sext <8 x i16> %wide.load148 to <8 x i32>
  %i.cr = mul nsw <8 x i32> %i.cq, %i.by
  %i.cs = add nsw <8 x i32> %i.cr, %i.co
  %i.ct = getelementptr i8, ptr %i.cl, i64 -256
  %wide.load149 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !45
  %i.cu = sext <8 x i16> %wide.load149 to <8 x i32>
  %i.cv = mul nsw <8 x i32> %i.cu, %i.ca
  %i.cw = add nsw <8 x i32> %i.cs, %i.cv
  %wide.load150 = load <8 x i16>, ptr %i.cl, align 2, !tbaa !45
  %i.cx = sext <8 x i16> %wide.load150 to <8 x i32>
  %i.cy = mul nsw <8 x i32> %i.cx, %i.cc
  %i.cz = add nsw <8 x i32> %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 256
  %wide.load151 = load <8 x i16>, ptr %i.da, align 2, !tbaa !45
  %i.db = sext <8 x i16> %wide.load151 to <8 x i32>
  %i.dc = mul nsw <8 x i32> %i.db, %i.ce
  %i.dd = add nsw <8 x i32> %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 512
  %wide.load152 = load <8 x i16>, ptr %i.de, align 2, !tbaa !45
  %i.df = sext <8 x i16> %wide.load152 to <8 x i32>
  %i.dg = mul nsw <8 x i32> %i.df, %i.cg
  %i.dh = add nsw <8 x i32> %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 768
  %wide.load153 = load <8 x i16>, ptr %i.di, align 2, !tbaa !45
  %i.dj = sext <8 x i16> %wide.load153 to <8 x i32>
  %i.dk = mul nsw <8 x i32> %i.dj, %i.ci
  %i.dl = add nsw <8 x i32> %i.dh, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1024
  %wide.load154 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !45
  %i.dn = sext <8 x i16> %wide.load154 to <8 x i32>
  %i.do = mul nsw <8 x i32> %i.dn, %i.ck
  %i.dp = add nsw <8 x i32> %i.dl, %i.do
  %i.dq = lshr <8 x i32> %i.dp, splat (i32 6)
  %i.dr = trunc <8 x i32> %i.dq to <8 x i16>
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.07789, i64 %index146
  store <8 x i16> %i.dr, ptr %i.ds, align 2, !tbaa !45, !alias.scope !1598, !noalias !1595
  %index.next155 = add nuw i64 %index146, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next155, %n.vec128
  br i1 %i.dt, label %middle.block156, label %vector.body145, !llvm.loop !1600

middle.block156:                                  ; preds = %vector.body145
  br i1 %cmp.n157, label %._crit_edge87, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %.preheader, %middle.block156
  %indvars.iv94.ph = phi i64 [ %n.vec128, %middle.block156 ], [ 0, %.preheader ]
  br label %scalar.ph125

._crit_edge91.split:                              ; preds = %._crit_edge87, %bb.a, %.preheader.lr.ph, %._crit_edge85.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge87:                                    ; preds = %scalar.ph125, %middle.block156
  %i.du = getelementptr inbounds nuw i8, ptr %.188, i64 256
  %i.dv = getelementptr inbounds nuw i8, ptr %.07789, i64 256
  %i.dw = add nuw nsw i32 %.07490, 1              ; 2 uses
  %exitcond99.not = icmp eq i32 %i.dw, %3
  br i1 %exitcond99.not, label %._crit_edge91.split, label %.preheader, !llvm.loop !1601

scalar.ph125:                                     ; preds = %scalar.ph125.preheader, %scalar.ph125
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %scalar.ph125 ], [ %indvars.iv94.ph, %scalar.ph125.preheader ] ; 3 uses
  %i.dx = load i8, ptr %5, align 1, !tbaa !62
  %i.dy = sext i8 %i.dx to i32
  %i.dz = getelementptr [2 x i8], ptr %.188, i64 %indvars.iv94 ; 8 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -768
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !45
  %i.ec = sext i16 %i.eb to i32
  %i.ed = mul nsw i32 %i.ec, %i.dy
  %i.ee = load i8, ptr %i.as, align 1, !tbaa !62
  %i.ef = sext i8 %i.ee to i32
  %i.eg = getelementptr i8, ptr %i.dz, i64 -512
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !45
  %i.ei = sext i16 %i.eh to i32
  %i.ej = mul nsw i32 %i.ei, %i.ef
  %i.ek = add nsw i32 %i.ej, %i.ed
  %i.el = load i8, ptr %i.at, align 1, !tbaa !62
  %i.em = sext i8 %i.el to i32
  %i.en = getelementptr i8, ptr %i.dz, i64 -256
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !45
  %i.ep = sext i16 %i.eo to i32
  %i.eq = mul nsw i32 %i.ep, %i.em
  %i.er = add nsw i32 %i.ek, %i.eq
  %i.es = load i8, ptr %i.au, align 1, !tbaa !62
  %i.et = sext i8 %i.es to i32
  %i.eu = load i16, ptr %i.dz, align 2, !tbaa !45
  %i.ev = sext i16 %i.eu to i32
  %i.ew = mul nsw i32 %i.ev, %i.et
  %i.ex = add nsw i32 %i.er, %i.ew
  %i.ey = load i8, ptr %i.av, align 1, !tbaa !62
  %i.ez = sext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dz, i64 256
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !45
  %i.fc = sext i16 %i.fb to i32
  %i.fd = mul nsw i32 %i.fc, %i.ez
  %i.fe = add nsw i32 %i.ex, %i.fd
  %i.ff = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.fg = sext i8 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dz, i64 512
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !45
  %i.fj = sext i16 %i.fi to i32
  %i.fk = mul nsw i32 %i.fj, %i.fg
  %i.fl = add nsw i32 %i.fe, %i.fk
  %i.fm = load i8, ptr %i.ax, align 1, !tbaa !62
  %i.fn = sext i8 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dz, i64 768
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !45
  %i.fq = sext i16 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, %i.fn
  %i.fs = add nsw i32 %i.fl, %i.fr
  %i.ft = load i8, ptr %i.ay, align 1, !tbaa !62
  %i.fu = sext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dz, i64 1024
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !45
  %i.fx = sext i16 %i.fw to i32
  %i.fy = mul nsw i32 %i.fx, %i.fu
  %i.fz = add nsw i32 %i.fs, %i.fy
  %i.ga = lshr i32 %i.fz, 6
  %i.gb = trunc i32 %i.ga to i16
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %.07789, i64 %indvars.iv94
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !45
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge87, label %scalar.ph125, !llvm.loop !1602
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_uni_pixels_8(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, i32 noundef %7) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %7 to i64                       ; 5 uses
  %xtraiter = and i32 %4, 3                       ; 3 uses
  %i.c = icmp ult i32 %4, 4
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %4, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
end_hunk_0
begin_hunk_1_@put_uni_luma_v_8:bb.a
  %i.hd = sub nsw i64 %indvars.iv, %3
  %i.he = getelementptr inbounds i8, ptr %.054, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !62
  %i.hg = zext i8 %i.hf to i32
  %i.hh = mul nsw i32 %i.hg, %i.hc
  %i.hi = load i8, ptr %i.g, align 1, !tbaa !62
  %i.hj = sext i8 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %.054, i64 %indvars.iv
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !62
  %i.hm = zext i8 %i.hl to i32
  %i.hn = mul nsw i32 %i.hm, %i.hj
  %i.ho = load i8, ptr %i.h, align 1, !tbaa !62
  %i.hp = sext i8 %i.ho to i32
  %i.hq = getelementptr i8, ptr %i.bt, i64 %indvars.iv
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !62
  %i.hs = zext i8 %i.hr to i32
  %i.ht = mul nsw i32 %i.hs, %i.hp
  %i.hu = load i8, ptr %i.i, align 1, !tbaa !62
  %i.hv = sext i8 %i.hu to i32
  %i.hw = getelementptr i8, ptr %i.bu, i64 %indvars.iv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !62
  %i.hy = zext i8 %i.hx to i32
  %i.hz = mul nsw i32 %i.hy, %i.hv
  %i.ia = load i8, ptr %i.j, align 1, !tbaa !62
  %i.ib = sext i8 %i.ia to i32
  %i.ic = getelementptr i8, ptr %i.bv, i64 %indvars.iv
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !62
  %i.ie = zext i8 %i.id to i32
  %i.if = mul nsw i32 %i.ie, %i.ib
  %i.ig = load i8, ptr %i.k, align 1, !tbaa !62
  %i.ih = sext i8 %i.ig to i32
  %i.ii = getelementptr i8, ptr %i.bw, i64 %indvars.iv
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !62
  %i.ik = zext i8 %i.ij to i32
  %i.il = mul nsw i32 %i.ik, %i.ih
  %i.im = add nsw i32 %i.gt, 32
  %i.in = add nsw i32 %i.im, %i.ha
  %i.io = add nsw i32 %i.in, %i.hh
  %i.ip = add nsw i32 %i.io, %i.hn
  %i.iq = add nsw i32 %i.ip, %i.ht
  %i.ir = add nsw i32 %i.iq, %i.hz
  %i.is = add nsw i32 %i.ir, %i.if
  %i.it = add nsw i32 %i.is, %i.il
  %i.iu = ashr i32 %i.it, 6                       ; 3 uses
  %.not.i = icmp ult i32 %i.iu, 256
  %isnotneg.i = icmp sgt i32 %i.iu, -1
  %i.iv = sext i1 %isnotneg.i to i8
  %i.iw = trunc nuw i32 %i.iu to i8
  %.0.i = select i1 %.not.i, i8 %i.iw, i8 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.05052, i64 %indvars.iv
  store i8 %.0.i, ptr %i.ix, align 1, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1642
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_uni_luma_hv_8(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7) #2 {
bb.a:
  %i.a = alloca [17280 x i16], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.neg = mul i64 %3, -3
  %i.b = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.c = icmp sgt i32 %4, -7
  br i1 %i.c, label %.preheader84.lr.ph, label %._crit_edge95.split

.preheader84.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %7, 0
  br i1 %i.d, label %.preheader84.lr.ph.split, label %._crit_edge89.split

.preheader84.lr.ph.split:                         ; preds = %.preheader84.lr.ph
  %i.e = load <8 x i8>, ptr %5, align 1, !tbaa !62
  %i.f = sext <8 x i8> %i.e to <8 x i16>          ; 9 uses
  %i.g = add i32 %4, 6
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %wide.trip.count = zext nneg i32 %7 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %7, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splat109 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat111 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat113 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat115 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat117 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat119 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat121 = shufflevector <8 x i16> %i.f, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.lr.ph.split, %._crit_edge
  %.088 = phi ptr [ %i.a, %.preheader84.lr.ph.split ], [ %i.bg, %._crit_edge ] ; 3 uses
  %.08187 = phi i32 [ 0, %.preheader84.lr.ph.split ], [ %i.bh, %._crit_edge ] ; 2 uses
  %.08286 = phi ptr [ %i.b, %.preheader84.lr.ph.split ], [ %i.bf, %._crit_edge ] ; 6 uses
  %.pre = load i8, ptr %.08286, align 1, !tbaa !62 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader84
  %vector.recur.init = insertelement <8 x i8> poison, i8 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load124, %vector.body ]
  %i.h = getelementptr i8, ptr %.08286, i64 %index ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -3
  %wide.load = load <8 x i8>, ptr %i.i, align 1, !tbaa !62
  %i.j = zext <8 x i8> %wide.load to <8 x i16>
  %i.k = mul nsw <8 x i16> %broadcast.splat, %i.j
  %i.l = getelementptr i8, ptr %i.h, i64 -2
  %wide.load122 = load <8 x i8>, ptr %i.l, align 1, !tbaa !62
  %i.m = zext <8 x i8> %wide.load122 to <8 x i16>
  %i.n = mul nsw <8 x i16> %broadcast.splat109, %i.m
  %i.o = add <8 x i16> %i.n, %i.k
  %i.p = getelementptr i8, ptr %i.h, i64 -1
  %wide.load123 = load <8 x i8>, ptr %i.p, align 1, !tbaa !62
  %i.q = zext <8 x i8> %wide.load123 to <8 x i16>
  %i.r = mul nsw <8 x i16> %broadcast.splat111, %i.q
  %i.s = add <8 x i16> %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.08286, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %wide.load124 = load <8 x i8>, ptr %i.u, align 1, !tbaa !62 ; 4 uses
  %i.v = shufflevector <8 x i8> %vector.recur, <8 x i8> %wide.load124, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.w = zext <8 x i8> %i.v to <8 x i16>
  %i.x = mul nsw <8 x i16> %broadcast.splat113, %i.w
  %i.y = add <8 x i16> %i.s, %i.x
  %i.z = zext <8 x i8> %wide.load124 to <8 x i16>
  %i.aa = mul nsw <8 x i16> %broadcast.splat115, %i.z
  %i.ab = add <8 x i16> %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %wide.load125 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !62
  %i.ad = zext <8 x i8> %wide.load125 to <8 x i16>
  %i.ae = mul nsw <8 x i16> %broadcast.splat117, %i.ad
  %i.af = add <8 x i16> %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %wide.load126 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !62
  %i.ah = zext <8 x i8> %wide.load126 to <8 x i16>
  %i.ai = mul nsw <8 x i16> %broadcast.splat119, %i.ah
  %i.aj = add <8 x i16> %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %wide.load127 = load <8 x i8>, ptr %i.ak, align 1, !tbaa !62
  %i.al = zext <8 x i8> %wide.load127 to <8 x i16>
  %i.am = mul nsw <8 x i16> %broadcast.splat121, %i.al
  %i.an = add <8 x i16> %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.088, i64 %index
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1643

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i8> %wide.load124, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader84, %middle.block
  %.ph = phi i8 [ %.pre, %.preheader84 ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.preheader84 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge89.split:                              ; preds = %._crit_edge, %.preheader84.lr.ph
  %i.aq = icmp sgt i32 %4, 0
  br i1 %i.aq, label %.preheader.lr.ph, label %._crit_edge95.split

.preheader.lr.ph:                                 ; preds = %._crit_edge89.split
  %i.ar = icmp sgt i32 %7, 0
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 6 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 7 ; 2 uses
  br i1 %i.ar, label %.preheader.preheader, label %._crit_edge95.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %wide.trip.count101 = zext nneg i32 %7 to i64   ; 4 uses
  %i.ba = add nsw i32 %4, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = mul i64 %1, %i.bb
  %i.bd = getelementptr i8, ptr %0, i64 %i.bc
  %scevgep = getelementptr i8, ptr %i.bd, i64 %wide.trip.count101
  %scevgep128 = getelementptr i8, ptr %6, i64 8
  %min.iters.check130 = icmp ult i32 %7, 8
  %bound0 = icmp ult ptr %0, %scevgep128
  %bound1 = icmp ult ptr %6, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %i.be = or i1 %found.conflict, %stride.check
  %n.vec132 = and i64 %wide.trip.count101, 2147483640 ; 3 uses
  %cmp.n161 = icmp eq i64 %n.vec132, %wide.trip.count101
  br label %.preheader

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bf = getelementptr inbounds i8, ptr %.08286, i64 %3
  %i.bg = getelementptr inbounds nuw i8, ptr %.088, i64 256
  %i.bh = add nuw i32 %.08187, 1
  %exitcond97.not = icmp eq i32 %.08187, %smax
  br i1 %exitcond97.not, label %._crit_edge89.split, label %.preheader84, !llvm.loop !1644

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bi = phi i8 [ %14, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bj = getelementptr i8, ptr %.08286, i64 %indvars.iv ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -3
  %i.bl = getelementptr i8, ptr %i.bj, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %.08286, i64 %indvars.iv.next
  %9 = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %10 = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %11 = load i8, ptr %i.bn, align 1, !tbaa !62
  %12 = load i8, ptr %10, align 1, !tbaa !62
  %13 = load i8, ptr %9, align 1, !tbaa !62
  %14 = load i8, ptr %8, align 1, !tbaa !62       ; 2 uses
  %i.bo = load <2 x i8>, ptr %i.bk, align 1, !tbaa !62
  %15 = shufflevector <2 x i8> %i.bo, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = insertelement <8 x i8> %15, i8 %i.bm, i64 2
  %17 = insertelement <8 x i8> %16, i8 %i.bi, i64 3
  %18 = insertelement <8 x i8> %17, i8 %14, i64 4
  %19 = insertelement <8 x i8> %18, i8 %13, i64 5
  %i.bp = insertelement <8 x i8> %19, i8 %12, i64 6
  %i.bq = insertelement <8 x i8> %i.bp, i8 %11, i64 7
  %i.br = zext <8 x i8> %i.bq to <8 x i16>
  %i.bs = mul nsw <8 x i16> %i.br, %i.f
  %i.bt = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.bs)
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.088, i64 %indvars.iv
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !45
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1645

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge91
  %.194 = phi ptr [ %i.ea, %._crit_edge91 ], [ %i.az, %.preheader.preheader ] ; 3 uses
  %.07993 = phi i32 [ %i.ec, %._crit_edge91 ], [ 0, %.preheader.preheader ]
  %.08392 = phi ptr [ %i.eb, %._crit_edge91 ], [ %0, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check130, i1 true, i1 %i.be
  br i1 %brmerge, label %scalar.ph129.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.preheader
  %i.bv = load i8, ptr %6, align 1, !tbaa !62, !alias.scope !1646
  %broadcast.splatinsert133 = insertelement <8 x i8> poison, i8 %i.bv, i64 0
  %broadcast.splat134 = shufflevector <8 x i8> %broadcast.splatinsert133, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bw = sext <8 x i8> %broadcast.splat134 to <8 x i32>
  %i.bx = load i8, ptr %i.as, align 1, !tbaa !62, !alias.scope !1646
  %broadcast.splatinsert135 = insertelement <8 x i8> poison, i8 %i.bx, i64 0
  %broadcast.splat136 = shufflevector <8 x i8> %broadcast.splatinsert135, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.by = sext <8 x i8> %broadcast.splat136 to <8 x i32>
  %i.bz = load i8, ptr %i.at, align 1, !tbaa !62, !alias.scope !1646
  %broadcast.splatinsert137 = insertelement <8 x i8> poison, i8 %i.bz, i64 0
  %broadcast.splat138 = shufflevector <8 x i8> %broadcast.splatinsert137, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ca = sext <8 x i8> %broadcast.splat138 to <8 x i32>
  %i.cb = load i8, ptr %i.au, align 1, !tbaa !62, !alias.scope !1646
  %broadcast.splatinsert139 = insertelement <8 x i8> poison, i8 %i.cb, i64 0
  %broadcast.splat140 = shufflevector <8 x i8> %broadcast.splatinsert139, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cc = sext <8 x i8> %broadcast.splat140 to <8 x i32>
  %i.cd = load i8, ptr %i.av, align 1, !tbaa !62, !alias.scope !1646
  %broadcast.splatinsert141 = insertelement <8 x i8> poison, i8 %i.cd, i64 0
  %broadcast.splat142 = shufflevector <8 x i8> %broadcast.splatinsert141, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ce = sext <8 x i8> %broadcast.splat142 to <8 x i32>
  %i.cf = load i8, ptr %i.aw, align 1, !tbaa !62, !alias.scope !1646
  %broadcast.splatinsert143 = insertelement <8 x i8> poison, i8 %i.cf, i64 0
  %broadcast.splat144 = shufflevector <8 x i8> %broadcast.splatinsert143, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cg = sext <8 x i8> %broadcast.splat144 to <8 x i32>
  %i.ch = load i8, ptr %i.ax, align 1, !tbaa !62, !alias.scope !1646
  %broadcast.splatinsert145 = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %broadcast.splat146 = shufflevector <8 x i8> %broadcast.splatinsert145, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ci = sext <8 x i8> %broadcast.splat146 to <8 x i32>
  %i.cj = load i8, ptr %i.ay, align 1, !tbaa !62, !alias.scope !1646
  %broadcast.splatinsert147 = insertelement <8 x i8> poison, i8 %i.cj, i64 0
  %broadcast.splat148 = shufflevector <8 x i8> %broadcast.splatinsert147, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ck = sext <8 x i8> %broadcast.splat148 to <8 x i32>
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph131
  %index150 = phi i64 [ 0, %vector.ph131 ], [ %index.next159, %vector.body149 ] ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %.194, i64 %index150 ; 8 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -768
  %wide.load151 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !45
  %i.cn = sext <8 x i16> %wide.load151 to <8 x i32>
  %i.co = mul nsw <8 x i32> %i.cn, %i.bw
  %i.cp = getelementptr i8, ptr %i.cl, i64 -512
  %wide.load152 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !45
  %i.cq = sext <8 x i16> %wide.load152 to <8 x i32>
  %i.cr = mul nsw <8 x i32> %i.cq, %i.by
  %i.cs = add nsw <8 x i32> %i.cr, %i.co
  %i.ct = getelementptr i8, ptr %i.cl, i64 -256
  %wide.load153 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !45
  %i.cu = sext <8 x i16> %wide.load153 to <8 x i32>
  %i.cv = mul nsw <8 x i32> %i.cu, %i.ca
  %i.cw = add nsw <8 x i32> %i.cs, %i.cv
  %wide.load154 = load <8 x i16>, ptr %i.cl, align 2, !tbaa !45
  %i.cx = sext <8 x i16> %wide.load154 to <8 x i32>
  %i.cy = mul nsw <8 x i32> %i.cx, %i.cc
  %i.cz = add nsw <8 x i32> %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 256
  %wide.load155 = load <8 x i16>, ptr %i.da, align 2, !tbaa !45
  %i.db = sext <8 x i16> %wide.load155 to <8 x i32>
  %i.dc = mul nsw <8 x i32> %i.db, %i.ce
  %i.dd = add nsw <8 x i32> %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 512
  %wide.load156 = load <8 x i16>, ptr %i.de, align 2, !tbaa !45
  %i.df = sext <8 x i16> %wide.load156 to <8 x i32>
  %i.dg = mul nsw <8 x i32> %i.df, %i.cg
  %i.dh = add nsw <8 x i32> %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 768
  %wide.load157 = load <8 x i16>, ptr %i.di, align 2, !tbaa !45
  %i.dj = sext <8 x i16> %wide.load157 to <8 x i32>
  %i.dk = mul nsw <8 x i32> %i.dj, %i.ci
  %i.dl = add nsw <8 x i32> %i.dh, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1024
  %wide.load158 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !45
  %i.dn = sext <8 x i16> %wide.load158 to <8 x i32>
  %i.do = mul nsw <8 x i32> %i.dn, %i.ck
  %i.dp = add nsw <8 x i32> %i.dl, %i.do
  %i.dq = ashr <8 x i32> %i.dp, splat (i32 6)
  %i.dr = add nsw <8 x i32> %i.dq, splat (i32 32)
  %i.ds = ashr <8 x i32> %i.dr, splat (i32 6)     ; 3 uses
  %i.dt = icmp ult <8 x i32> %i.ds, splat (i32 256)
  %i.du = icmp sgt <8 x i32> %i.ds, splat (i32 -1)
  %i.dv = sext <8 x i1> %i.du to <8 x i8>
  %i.dw = trunc nuw <8 x i32> %i.ds to <8 x i8>
  %i.dx = select <8 x i1> %i.dt, <8 x i8> %i.dw, <8 x i8> %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %.08392, i64 %index150
  store <8 x i8> %i.dx, ptr %i.dy, align 1, !tbaa !62, !alias.scope !1649, !noalias !1646
  %index.next159 = add nuw i64 %index150, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next159, %n.vec132
  br i1 %i.dz, label %middle.block160, label %vector.body149, !llvm.loop !1651

middle.block160:                                  ; preds = %vector.body149
  br i1 %cmp.n161, label %._crit_edge91, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %.preheader, %middle.block160
  %indvars.iv98.ph = phi i64 [ %n.vec132, %middle.block160 ], [ 0, %.preheader ]
  br label %scalar.ph129

._crit_edge95.split:                              ; preds = %._crit_edge91, %bb.a, %.preheader.lr.ph, %._crit_edge89.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge91:                                    ; preds = %scalar.ph129, %middle.block160
  %i.ea = getelementptr inbounds nuw i8, ptr %.194, i64 256
  %i.eb = getelementptr inbounds i8, ptr %.08392, i64 %1
  %i.ec = add nuw nsw i32 %.07993, 1              ; 2 uses
  %exitcond103.not = icmp eq i32 %i.ec, %4
  br i1 %exitcond103.not, label %._crit_edge95.split, label %.preheader, !llvm.loop !1652

scalar.ph129:                                     ; preds = %scalar.ph129.preheader, %scalar.ph129
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %scalar.ph129 ], [ %indvars.iv98.ph, %scalar.ph129.preheader ] ; 3 uses
  %i.ed = load i8, ptr %6, align 1, !tbaa !62
  %i.ee = sext i8 %i.ed to i32
  %i.ef = getelementptr [2 x i8], ptr %.194, i64 %indvars.iv98 ; 8 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -768
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !45
  %i.ei = sext i16 %i.eh to i32
  %i.ej = mul nsw i32 %i.ei, %i.ee
  %i.ek = load i8, ptr %i.as, align 1, !tbaa !62
  %i.el = sext i8 %i.ek to i32
  %i.em = getelementptr i8, ptr %i.ef, i64 -512
  %i.en = load i16, ptr %i.em, align 2, !tbaa !45
  %i.eo = sext i16 %i.en to i32
  %i.ep = mul nsw i32 %i.eo, %i.el
  %i.eq = add nsw i32 %i.ep, %i.ej
  %i.er = load i8, ptr %i.at, align 1, !tbaa !62
  %i.es = sext i8 %i.er to i32
  %i.et = getelementptr i8, ptr %i.ef, i64 -256
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !45
  %i.ev = sext i16 %i.eu to i32
  %i.ew = mul nsw i32 %i.ev, %i.es
  %i.ex = add nsw i32 %i.eq, %i.ew
  %i.ey = load i8, ptr %i.au, align 1, !tbaa !62
  %i.ez = sext i8 %i.ey to i32
  %i.fa = load i16, ptr %i.ef, align 2, !tbaa !45
  %i.fb = sext i16 %i.fa to i32
  %i.fc = mul nsw i32 %i.fb, %i.ez
  %i.fd = add nsw i32 %i.ex, %i.fc
  %i.fe = load i8, ptr %i.av, align 1, !tbaa !62
  %i.ff = sext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ef, i64 256
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !45
  %i.fi = sext i16 %i.fh to i32
  %i.fj = mul nsw i32 %i.fi, %i.ff
  %i.fk = add nsw i32 %i.fd, %i.fj
  %i.fl = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.fm = sext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ef, i64 512
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !45
  %i.fp = sext i16 %i.fo to i32
  %i.fq = mul nsw i32 %i.fp, %i.fm
  %i.fr = add nsw i32 %i.fk, %i.fq
  %i.fs = load i8, ptr %i.ax, align 1, !tbaa !62
  %i.ft = sext i8 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ef, i64 768
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !45
  %i.fw = sext i16 %i.fv to i32
  %i.fx = mul nsw i32 %i.fw, %i.ft
  %i.fy = add nsw i32 %i.fr, %i.fx
  %i.fz = load i8, ptr %i.ay, align 1, !tbaa !62
  %i.ga = sext i8 %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ef, i64 1024
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !45
  %i.gd = sext i16 %i.gc to i32
  %i.ge = mul nsw i32 %i.gd, %i.ga
  %i.gf = add nsw i32 %i.fy, %i.ge
  %i.gg = ashr i32 %i.gf, 6
  %i.gh = add nsw i32 %i.gg, 32
  %i.gi = ashr i32 %i.gh, 6                       ; 3 uses
  %.not.i = icmp ult i32 %i.gi, 256
  %isnotneg.i = icmp sgt i32 %i.gi, -1
  %i.gj = sext i1 %isnotneg.i to i8
  %i.gk = trunc nuw i32 %i.gi to i8
  %.0.i = select i1 %.not.i, i8 %i.gk, i8 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %.08392, i64 %indvars.iv98
  store i8 %.0.i, ptr %i.gl, align 1, !tbaa !62
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge91, label %scalar.ph129, !llvm.loop !1653
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_uni_w_pixels_8(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9, i32 noundef %10) #2 {
bb.a:
  %i.a = add nsw i32 %5, 6                        ; 5 uses
  %i.b = add nsw i32 %5, 5
end_hunk_1
begin_hunk_2_@put_uni_luma_w_v_8:bb.a
  %i.hx = add nsw i32 %i.hq, %i.hw
  %i.hy = load i8, ptr %i.k, align 1, !tbaa !62
  %i.hz = sext i8 %i.hy to i32
  %i.ia = getelementptr i8, ptr %i.bw, i64 %indvars.iv
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !62
  %i.ic = zext i8 %i.ib to i32
  %i.id = mul nsw i32 %i.ic, %i.hz
  %i.ie = add nsw i32 %i.hx, %i.id
  %i.if = load i8, ptr %i.l, align 1, !tbaa !62
  %i.ig = sext i8 %i.if to i32
  %i.ih = getelementptr i8, ptr %i.bx, i64 %indvars.iv
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !62
  %i.ij = zext i8 %i.ii to i32
  %i.ik = mul nsw i32 %i.ij, %i.ig
  %i.il = add nsw i32 %i.ie, %i.ik
  %i.im = load i8, ptr %i.m, align 1, !tbaa !62
  %i.in = sext i8 %i.im to i32
  %i.io = getelementptr i8, ptr %i.by, i64 %indvars.iv
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !62
  %i.iq = zext i8 %i.ip to i32
  %i.ir = mul nsw i32 %i.iq, %i.in
  %i.is = add nsw i32 %i.il, %i.ir
  %i.it = load i8, ptr %i.n, align 1, !tbaa !62
  %i.iu = sext i8 %i.it to i32
  %i.iv = getelementptr i8, ptr %i.bz, i64 %indvars.iv
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !62
  %i.ix = zext i8 %i.iw to i32
  %i.iy = mul nsw i32 %i.ix, %i.iu
  %i.iz = add nsw i32 %i.is, %i.iy
  %i.ja = mul nsw i32 %i.iz, %6
  %i.jb = add nsw i32 %i.ja, %i.c
  %i.jc = ashr i32 %i.jb, %i.a
  %i.jd = add nsw i32 %i.jc, %7                   ; 3 uses
  %.not.i = icmp ult i32 %i.jd, 256
  %isnotneg.i = icmp sgt i32 %i.jd, -1
  %i.je = sext i1 %isnotneg.i to i8
  %i.jf = trunc nuw i32 %i.jd to i8
  %.0.i = select i1 %.not.i, i8 %i.jf, i8 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %.05658, i64 %indvars.iv
  store i8 %.0.i, ptr %i.jg, align 1, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1700
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_uni_luma_w_hv_8(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10) #2 {
bb.a:
  %i.a = alloca [17280 x i16], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = add nsw i32 %5, 6                        ; 2 uses
  %i.c = add nsw i32 %5, 5
  %i.d = shl nuw i32 1, %i.c                      ; 2 uses
  %.neg = mul i64 %3, -3
  %i.e = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.f = icmp sgt i32 %4, -7
  br i1 %i.f, label %.preheader90.lr.ph, label %._crit_edge101.split

.preheader90.lr.ph:                               ; preds = %bb.a
  %i.g = icmp sgt i32 %10, 0
  br i1 %i.g, label %.preheader90.lr.ph.split, label %._crit_edge95.split

.preheader90.lr.ph.split:                         ; preds = %.preheader90.lr.ph
  %i.h = load <8 x i8>, ptr %8, align 1, !tbaa !62
  %i.i = sext <8 x i8> %i.h to <8 x i16>          ; 9 uses
  %i.j = add i32 %4, 6
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %wide.trip.count = zext nneg i32 %10 to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %10, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splat115 = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat117 = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat119 = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat121 = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat123 = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat125 = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat127 = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader90

.preheader90:                                     ; preds = %.preheader90.lr.ph.split, %._crit_edge
  %.08694 = phi i32 [ 0, %.preheader90.lr.ph.split ], [ %i.bk, %._crit_edge ] ; 2 uses
  %.08793 = phi ptr [ %i.a, %.preheader90.lr.ph.split ], [ %i.bj, %._crit_edge ] ; 3 uses
  %.08892 = phi ptr [ %i.e, %.preheader90.lr.ph.split ], [ %i.bi, %._crit_edge ] ; 6 uses
  %.pre = load i8, ptr %.08892, align 1, !tbaa !62 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader90
  %vector.recur.init = insertelement <8 x i8> poison, i8 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load130, %vector.body ]
  %i.k = getelementptr i8, ptr %.08892, i64 %index ; 6 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -3
  %wide.load = load <8 x i8>, ptr %i.l, align 1, !tbaa !62
  %i.m = zext <8 x i8> %wide.load to <8 x i16>
  %i.n = mul nsw <8 x i16> %broadcast.splat, %i.m
  %i.o = getelementptr i8, ptr %i.k, i64 -2
  %wide.load128 = load <8 x i8>, ptr %i.o, align 1, !tbaa !62
  %i.p = zext <8 x i8> %wide.load128 to <8 x i16>
  %i.q = mul nsw <8 x i16> %broadcast.splat115, %i.p
  %i.r = add <8 x i16> %i.q, %i.n
  %i.s = getelementptr i8, ptr %i.k, i64 -1
  %wide.load129 = load <8 x i8>, ptr %i.s, align 1, !tbaa !62
  %i.t = zext <8 x i8> %wide.load129 to <8 x i16>
  %i.u = mul nsw <8 x i16> %broadcast.splat117, %i.t
  %i.v = add <8 x i16> %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.08892, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %wide.load130 = load <8 x i8>, ptr %i.x, align 1, !tbaa !62 ; 4 uses
  %i.y = shufflevector <8 x i8> %vector.recur, <8 x i8> %wide.load130, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.z = zext <8 x i8> %i.y to <8 x i16>
  %i.aa = mul nsw <8 x i16> %broadcast.splat119, %i.z
  %i.ab = add <8 x i16> %i.v, %i.aa
  %i.ac = zext <8 x i8> %wide.load130 to <8 x i16>
  %i.ad = mul nsw <8 x i16> %broadcast.splat121, %i.ac
  %i.ae = add <8 x i16> %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %wide.load131 = load <8 x i8>, ptr %i.af, align 1, !tbaa !62
  %i.ag = zext <8 x i8> %wide.load131 to <8 x i16>
  %i.ah = mul nsw <8 x i16> %broadcast.splat123, %i.ag
  %i.ai = add <8 x i16> %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %wide.load132 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !62
  %i.ak = zext <8 x i8> %wide.load132 to <8 x i16>
  %i.al = mul nsw <8 x i16> %broadcast.splat125, %i.ak
  %i.am = add <8 x i16> %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load133 = load <8 x i8>, ptr %i.an, align 1, !tbaa !62
  %i.ao = zext <8 x i8> %wide.load133 to <8 x i16>
  %i.ap = mul nsw <8 x i16> %broadcast.splat127, %i.ao
  %i.aq = add <8 x i16> %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.08793, i64 %index
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1701

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i8> %wide.load130, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader90, %middle.block
  %.ph = phi i8 [ %.pre, %.preheader90 ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.preheader90 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge95.split:                              ; preds = %._crit_edge, %.preheader90.lr.ph
  %i.at = icmp sgt i32 %4, 0
  br i1 %i.at, label %.preheader.lr.ph, label %._crit_edge101.split

.preheader.lr.ph:                                 ; preds = %._crit_edge95.split
  %i.au = icmp sgt i32 %10, 0
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 6 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 7 ; 2 uses
  br i1 %i.au, label %.preheader.preheader, label %._crit_edge101.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %wide.trip.count107 = zext nneg i32 %10 to i64  ; 4 uses
  %i.bd = add nsw i32 %4, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul i64 %1, %i.be
  %i.bg = getelementptr i8, ptr %0, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bg, i64 %wide.trip.count107
  %scevgep134 = getelementptr i8, ptr %9, i64 8
  %min.iters.check136 = icmp ult i32 %10, 8
  %bound0 = icmp ult ptr %0, %scevgep134
  %bound1 = icmp ult ptr %9, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %i.bh = or i1 %found.conflict, %stride.check
  %n.vec138 = and i64 %wide.trip.count107, 2147483640 ; 3 uses
  %broadcast.splatinsert155 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat156 = shufflevector <8 x i32> %broadcast.splatinsert155, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert157 = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat158 = shufflevector <8 x i32> %broadcast.splatinsert157, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert159 = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat160 = shufflevector <8 x i32> %broadcast.splatinsert159, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert161 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat162 = shufflevector <8 x i32> %broadcast.splatinsert161, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n175 = icmp eq i64 %n.vec138, %wide.trip.count107
  br label %.preheader

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bi = getelementptr inbounds i8, ptr %.08892, i64 %3
  %i.bj = getelementptr inbounds nuw i8, ptr %.08793, i64 256
  %i.bk = add nuw i32 %.08694, 1
  %exitcond103.not = icmp eq i32 %.08694, %smax
  br i1 %exitcond103.not, label %._crit_edge95.split, label %.preheader90, !llvm.loop !1702

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bl = phi i8 [ %17, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bm = getelementptr i8, ptr %.08892, i64 %indvars.iv ; 5 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -3
  %i.bo = getelementptr i8, ptr %i.bm, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %.08892, i64 %indvars.iv.next
  %12 = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %13 = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %14 = load i8, ptr %i.bq, align 1, !tbaa !62
  %15 = load i8, ptr %13, align 1, !tbaa !62
  %16 = load i8, ptr %12, align 1, !tbaa !62
  %17 = load i8, ptr %11, align 1, !tbaa !62      ; 2 uses
  %i.br = load <2 x i8>, ptr %i.bn, align 1, !tbaa !62
  %18 = shufflevector <2 x i8> %i.br, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = insertelement <8 x i8> %18, i8 %i.bp, i64 2
  %20 = insertelement <8 x i8> %19, i8 %i.bl, i64 3
  %21 = insertelement <8 x i8> %20, i8 %17, i64 4
  %22 = insertelement <8 x i8> %21, i8 %16, i64 5
  %i.bs = insertelement <8 x i8> %22, i8 %15, i64 6
  %i.bt = insertelement <8 x i8> %i.bs, i8 %14, i64 7
  %i.bu = zext <8 x i8> %i.bt to <8 x i16>
  %i.bv = mul nsw <8 x i16> %i.bu, %i.i
  %i.bw = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.bv)
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.08793, i64 %indvars.iv
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !45
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1703

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge97
  %.084100 = phi i32 [ %i.eh, %._crit_edge97 ], [ 0, %.preheader.preheader ]
  %.199 = phi ptr [ %i.ef, %._crit_edge97 ], [ %i.bc, %.preheader.preheader ] ; 3 uses
  %.08998 = phi ptr [ %i.eg, %._crit_edge97 ], [ %0, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check136, i1 true, i1 %i.bh
  br i1 %brmerge, label %scalar.ph135.preheader, label %vector.ph137

vector.ph137:                                     ; preds = %.preheader
  %i.by = load i8, ptr %9, align 1, !tbaa !62, !alias.scope !1704
  %broadcast.splatinsert139 = insertelement <8 x i8> poison, i8 %i.by, i64 0
  %broadcast.splat140 = shufflevector <8 x i8> %broadcast.splatinsert139, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bz = sext <8 x i8> %broadcast.splat140 to <8 x i32>
  %i.ca = load i8, ptr %i.av, align 1, !tbaa !62, !alias.scope !1704
  %broadcast.splatinsert141 = insertelement <8 x i8> poison, i8 %i.ca, i64 0
  %broadcast.splat142 = shufflevector <8 x i8> %broadcast.splatinsert141, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cb = sext <8 x i8> %broadcast.splat142 to <8 x i32>
  %i.cc = load i8, ptr %i.aw, align 1, !tbaa !62, !alias.scope !1704
  %broadcast.splatinsert143 = insertelement <8 x i8> poison, i8 %i.cc, i64 0
  %broadcast.splat144 = shufflevector <8 x i8> %broadcast.splatinsert143, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cd = sext <8 x i8> %broadcast.splat144 to <8 x i32>
  %i.ce = load i8, ptr %i.ax, align 1, !tbaa !62, !alias.scope !1704
  %broadcast.splatinsert145 = insertelement <8 x i8> poison, i8 %i.ce, i64 0
  %broadcast.splat146 = shufflevector <8 x i8> %broadcast.splatinsert145, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cf = sext <8 x i8> %broadcast.splat146 to <8 x i32>
  %i.cg = load i8, ptr %i.ay, align 1, !tbaa !62, !alias.scope !1704
  %broadcast.splatinsert147 = insertelement <8 x i8> poison, i8 %i.cg, i64 0
  %broadcast.splat148 = shufflevector <8 x i8> %broadcast.splatinsert147, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ch = sext <8 x i8> %broadcast.splat148 to <8 x i32>
  %i.ci = load i8, ptr %i.az, align 1, !tbaa !62, !alias.scope !1704
  %broadcast.splatinsert149 = insertelement <8 x i8> poison, i8 %i.ci, i64 0
  %broadcast.splat150 = shufflevector <8 x i8> %broadcast.splatinsert149, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cj = sext <8 x i8> %broadcast.splat150 to <8 x i32>
  %i.ck = load i8, ptr %i.ba, align 1, !tbaa !62, !alias.scope !1704
  %broadcast.splatinsert151 = insertelement <8 x i8> poison, i8 %i.ck, i64 0
  %broadcast.splat152 = shufflevector <8 x i8> %broadcast.splatinsert151, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cl = sext <8 x i8> %broadcast.splat152 to <8 x i32>
  %i.cm = load i8, ptr %i.bb, align 1, !tbaa !62, !alias.scope !1704
  %broadcast.splatinsert153 = insertelement <8 x i8> poison, i8 %i.cm, i64 0
  %broadcast.splat154 = shufflevector <8 x i8> %broadcast.splatinsert153, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cn = sext <8 x i8> %broadcast.splat154 to <8 x i32>
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph137
  %index164 = phi i64 [ 0, %vector.ph137 ], [ %index.next173, %vector.body163 ] ; 3 uses
  %i.co = getelementptr [2 x i8], ptr %.199, i64 %index164 ; 8 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -768
  %wide.load165 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !45
  %i.cq = sext <8 x i16> %wide.load165 to <8 x i32>
  %i.cr = mul nsw <8 x i32> %i.cq, %i.bz
  %i.cs = getelementptr i8, ptr %i.co, i64 -512
  %wide.load166 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !45
  %i.ct = sext <8 x i16> %wide.load166 to <8 x i32>
  %i.cu = mul nsw <8 x i32> %i.ct, %i.cb
  %i.cv = add nsw <8 x i32> %i.cu, %i.cr
  %i.cw = getelementptr i8, ptr %i.co, i64 -256
  %wide.load167 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !45
  %i.cx = sext <8 x i16> %wide.load167 to <8 x i32>
  %i.cy = mul nsw <8 x i32> %i.cx, %i.cd
  %i.cz = add nsw <8 x i32> %i.cv, %i.cy
  %wide.load168 = load <8 x i16>, ptr %i.co, align 2, !tbaa !45
  %i.da = sext <8 x i16> %wide.load168 to <8 x i32>
  %i.db = mul nsw <8 x i32> %i.da, %i.cf
  %i.dc = add nsw <8 x i32> %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 256
  %wide.load169 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !45
  %i.de = sext <8 x i16> %wide.load169 to <8 x i32>
  %i.df = mul nsw <8 x i32> %i.de, %i.ch
  %i.dg = add nsw <8 x i32> %i.dc, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %wide.load170 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !45
  %i.di = sext <8 x i16> %wide.load170 to <8 x i32>
  %i.dj = mul nsw <8 x i32> %i.di, %i.cj
  %i.dk = add nsw <8 x i32> %i.dg, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 768
  %wide.load171 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !45
  %i.dm = sext <8 x i16> %wide.load171 to <8 x i32>
  %i.dn = mul nsw <8 x i32> %i.dm, %i.cl
  %i.do = add nsw <8 x i32> %i.dk, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.co, i64 1024
  %wide.load172 = load <8 x i16>, ptr %i.dp, align 2, !tbaa !45
  %i.dq = sext <8 x i16> %wide.load172 to <8 x i32>
  %i.dr = mul nsw <8 x i32> %i.dq, %i.cn
  %i.ds = add nsw <8 x i32> %i.do, %i.dr
  %i.dt = ashr <8 x i32> %i.ds, splat (i32 6)
  %i.du = mul nsw <8 x i32> %i.dt, %broadcast.splat156
  %i.dv = add nsw <8 x i32> %i.du, %broadcast.splat158
  %i.dw = ashr <8 x i32> %i.dv, %broadcast.splat160
  %i.dx = add nsw <8 x i32> %i.dw, %broadcast.splat162 ; 3 uses
  %i.dy = icmp ult <8 x i32> %i.dx, splat (i32 256)
  %i.dz = icmp sgt <8 x i32> %i.dx, splat (i32 -1)
  %i.ea = sext <8 x i1> %i.dz to <8 x i8>
  %i.eb = trunc nuw <8 x i32> %i.dx to <8 x i8>
  %i.ec = select <8 x i1> %i.dy, <8 x i8> %i.eb, <8 x i8> %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %.08998, i64 %index164
  store <8 x i8> %i.ec, ptr %i.ed, align 1, !tbaa !62, !alias.scope !1707, !noalias !1704
  %index.next173 = add nuw i64 %index164, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next173, %n.vec138
  br i1 %i.ee, label %middle.block174, label %vector.body163, !llvm.loop !1709

middle.block174:                                  ; preds = %vector.body163
  br i1 %cmp.n175, label %._crit_edge97, label %scalar.ph135.preheader

scalar.ph135.preheader:                           ; preds = %.preheader, %middle.block174
  %indvars.iv104.ph = phi i64 [ %n.vec138, %middle.block174 ], [ 0, %.preheader ]
  br label %scalar.ph135

._crit_edge101.split:                             ; preds = %._crit_edge97, %bb.a, %.preheader.lr.ph, %._crit_edge95.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge97:                                    ; preds = %scalar.ph135, %middle.block174
  %i.ef = getelementptr inbounds nuw i8, ptr %.199, i64 256
  %i.eg = getelementptr inbounds i8, ptr %.08998, i64 %1
  %i.eh = add nuw nsw i32 %.084100, 1             ; 2 uses
  %exitcond109.not = icmp eq i32 %i.eh, %4
  br i1 %exitcond109.not, label %._crit_edge101.split, label %.preheader, !llvm.loop !1710

scalar.ph135:                                     ; preds = %scalar.ph135.preheader, %scalar.ph135
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph135 ], [ %indvars.iv104.ph, %scalar.ph135.preheader ] ; 3 uses
  %i.ei = load i8, ptr %9, align 1, !tbaa !62
  %i.ej = sext i8 %i.ei to i32
  %i.ek = getelementptr [2 x i8], ptr %.199, i64 %indvars.iv104 ; 8 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -768
  %i.em = load i16, ptr %i.el, align 2, !tbaa !45
  %i.en = sext i16 %i.em to i32
  %i.eo = mul nsw i32 %i.en, %i.ej
  %i.ep = load i8, ptr %i.av, align 1, !tbaa !62
  %i.eq = sext i8 %i.ep to i32
  %i.er = getelementptr i8, ptr %i.ek, i64 -512
  %i.es = load i16, ptr %i.er, align 2, !tbaa !45
  %i.et = sext i16 %i.es to i32
  %i.eu = mul nsw i32 %i.et, %i.eq
  %i.ev = add nsw i32 %i.eu, %i.eo
  %i.ew = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ex = sext i8 %i.ew to i32
  %i.ey = getelementptr i8, ptr %i.ek, i64 -256
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !45
  %i.fa = sext i16 %i.ez to i32
  %i.fb = mul nsw i32 %i.fa, %i.ex
  %i.fc = add nsw i32 %i.ev, %i.fb
  %i.fd = load i8, ptr %i.ax, align 1, !tbaa !62
  %i.fe = sext i8 %i.fd to i32
  %i.ff = load i16, ptr %i.ek, align 2, !tbaa !45
  %i.fg = sext i16 %i.ff to i32
  %i.fh = mul nsw i32 %i.fg, %i.fe
  %i.fi = add nsw i32 %i.fc, %i.fh
  %i.fj = load i8, ptr %i.ay, align 1, !tbaa !62
  %i.fk = sext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 256
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !45
  %i.fn = sext i16 %i.fm to i32
  %i.fo = mul nsw i32 %i.fn, %i.fk
  %i.fp = add nsw i32 %i.fi, %i.fo
  %i.fq = load i8, ptr %i.az, align 1, !tbaa !62
  %i.fr = sext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ek, i64 512
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !45
  %i.fu = sext i16 %i.ft to i32
  %i.fv = mul nsw i32 %i.fu, %i.fr
  %i.fw = add nsw i32 %i.fp, %i.fv
  %i.fx = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.fy = sext i8 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ek, i64 768
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !45
  %i.gb = sext i16 %i.ga to i32
  %i.gc = mul nsw i32 %i.gb, %i.fy
  %i.gd = add nsw i32 %i.fw, %i.gc
  %i.ge = load i8, ptr %i.bb, align 1, !tbaa !62
  %i.gf = sext i8 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ek, i64 1024
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !45
  %i.gi = sext i16 %i.gh to i32
  %i.gj = mul nsw i32 %i.gi, %i.gf
  %i.gk = add nsw i32 %i.gd, %i.gj
  %i.gl = ashr i32 %i.gk, 6
  %i.gm = mul nsw i32 %i.gl, %6
  %i.gn = add nsw i32 %i.gm, %i.d
  %i.go = ashr i32 %i.gn, %i.b
  %i.gp = add nsw i32 %i.go, %7                   ; 3 uses
  %.not.i = icmp ult i32 %i.gp, 256
  %isnotneg.i = icmp sgt i32 %i.gp, -1
  %i.gq = sext i1 %isnotneg.i to i8
  %i.gr = trunc nuw i32 %i.gp to i8
  %.0.i = select i1 %.not.i, i8 %i.gr, i8 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %.08998, i64 %indvars.iv104
  store i8 %.0.i, ptr %i.gs, align 1, !tbaa !62
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge97, label %scalar.ph135, !llvm.loop !1711
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
end_hunk_2
