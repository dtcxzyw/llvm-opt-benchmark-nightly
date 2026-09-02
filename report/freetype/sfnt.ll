Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_face_colr_blend_layer:bb.a
bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !631  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.t = load i32, ptr %i.s, align 8, !tbaa !631  ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.t) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !627
  %i.w = add nsw i32 %i.v, %i.r                   ; 2 uses
  %i.x = load i32, ptr %i.f, align 4, !tbaa !627
  %i.y = add nsw i32 %i.x, %i.t                   ; 2 uses
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !632 ; 3 uses
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !633
  %i.ad = sub nsw i32 %i.ab, %i.ac                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !632 ; 3 uses
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !633
  %i.ah = sub nsw i32 %i.af, %i.ag                ; 2 uses
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ah)
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %i.af) ; 3 uses
  %.not189 = icmp sle i32 %i.r, %i.t
  %.not190 = icmp sge i32 %i.w, %i.y
  %or.cond213 = select i1 %.not189, i1 %.not190, i1 false
  br i1 %or.cond213, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not191 = icmp sle i32 %i.ad, %i.ah
  %.not192 = icmp sge i32 %i.ab, %i.af
  %or.cond = and i1 %.not192, %.not191
  br i1 %or.cond, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !162
  %i.am = sub nsw i32 %i.z, %.                    ; 2 uses
  %i.an = sub nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.ao = shl i32 %i.am, 2                        ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = zext i32 %i.an to i64
  %i.ar = call ptr @ft_mem_realloc(ptr noundef %i.al, i64 noundef %i.ap, i64 noundef 0, i64 noundef %i.aq, ptr noundef null, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.as = load i32, ptr %i.a, align 4, !tbaa !30  ; 2 uses
  %.not193 = icmp eq i32 %i.as, 0
  br i1 %.not193, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.b, align 8, !tbaa !633
  %.not226 = icmp eq i32 %i.at, 0
  br i1 %.not226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.au = load i32, ptr %i.aa, align 4, !tbaa !632
  %i.av = sub nsw i32 %i.aj, %i.au
  %i.aw = mul nsw i32 %i.av, %i.ao
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.ax
  %i.az = load i32, ptr %i.q, align 8, !tbaa !631
  %i.ba = sub nsw i32 %i.az, %.
  %i.bb = shl nsw i32 %i.ba, 2
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !626
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 160
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0165219 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %bb.g ]
  %.0175218 = phi ptr [ %i.bd, %.lr.ph ], [ %i.bm, %bb.g ] ; 2 uses
  %.0176217 = phi ptr [ %i.be, %.lr.ph ], [ %i.bl, %bb.g ] ; 2 uses
  %i.bg = load i32, ptr %i.u, align 4, !tbaa !627
  %i.bh = shl i32 %i.bg, 2
  %i.bi = zext i32 %i.bh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0175218, ptr align 1 %.0176217, i64 %i.bi, i1 false)
  %i.bj = load i32, ptr %i.bf, align 8, !tbaa !629
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %.0176217, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.0175218, i64 %i.ap
  %i.bn = add nuw i32 %.0165219, 1                ; 2 uses
  %i.bo = load i32, ptr %i.b, align 8, !tbaa !633
  %i.bp = icmp ult i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %._crit_edge, !llvm.loop !623

._crit_edge:                                      ; preds = %bb.g, %bb.f
  call void @ft_glyphslot_set_bitmap(ptr noundef nonnull %2, ptr noundef %i.ar) #27
  store i32 %i.aj, ptr %i.aa, align 4, !tbaa !632
  store i32 %., ptr %i.q, align 8, !tbaa !631
  store i32 %i.am, ptr %i.u, align 4, !tbaa !627
  store i32 %i.an, ptr %i.b, align 8, !tbaa !633
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %i.ao, ptr %i.bq, align 8, !tbaa !629
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !276
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !278
  %i.bv = or i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !278
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 1651078259, ptr %i.bw, align 8, !tbaa !634
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %._crit_edge, %bb.b
  %i.bx = icmp eq i32 %1, 65535
  br i1 %i.bx, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.critedge.thread
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !635
  %.not194 = icmp eq i8 %i.bz, 0
  br i1 %.not194, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1105
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !636
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1106
  %i.cd = load <2 x i8>, ptr %i.cc, align 2, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !637
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !210 ; 2 uses
  %.not195 = icmp eq ptr %i.ch, null
  br i1 %.not195, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !638
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !154
  %i.cn = and i16 %i.cm, 2
  %.not196 = icmp eq i16 %i.cn, 0
  br i1 %.not196, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.n

bb.m:                                             ; preds = %.critedge.thread
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !212
  %i.cq = zext i32 %1 to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !313
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.cu = load <2 x i8>, ptr %i.ct, align 1, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !314
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.i, %bb.l, %bb.m
  %.0170 = phi i8 [ %i.cf, %bb.i ], [ %i.cw, %bb.m ], [ -1, %bb.l ], [ -1, %bb.k ]
  %.0167 = phi i8 [ %i.cb, %bb.i ], [ %i.cs, %bb.m ], [ 0, %bb.l ], [ -1, %bb.k ]
  %i.cx = phi <2 x i8> [ %i.cd, %bb.i ], [ %i.cu, %bb.m ], [ zeroinitializer, %bb.l ], [ splat (i8 -1), %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !633 ; 2 uses
  %.not227 = icmp eq i32 %i.da, 0
  br i1 %.not227, label %.critedge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 2 uses
  %i.dc = zext i8 %.0170 to i16
  %i.dd = zext i8 %.0167 to i16
  %i.de = zext <2 x i8> %i.cx to <2 x i16>
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !627
  %.not228 = icmp eq i32 %i.dg, 0
  br i1 %.not228, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !626
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !626
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 196
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !632
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !632
  %i.do = sub nsw i32 %i.dl, %i.dn
  %i.dp = load i32, ptr %i.cz, align 8, !tbaa !629 ; 2 uses
  %i.dq = mul nsw i32 %i.do, %i.dp
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dj, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !631
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !631
  %i.dx = sub nsw i32 %i.du, %i.dw
  %i.dy = shl nsw i32 %i.dx, 2
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.ds, i64 %i.dz
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge222
  %i.eb = phi i32 [ %i.ez, %._crit_edge222 ], [ %i.da, %.preheader.preheader ]
  %i.ec = phi i32 [ %i.fa, %._crit_edge222 ], [ %i.dp, %.preheader.preheader ]
  %i.ed = phi i32 [ %i.fb, %._crit_edge222 ], [ 1, %.preheader.preheader ]
  %.1166225 = phi i32 [ %i.fh, %._crit_edge222 ], [ 0, %.preheader.preheader ]
  %.0171224 = phi ptr [ %i.fe, %._crit_edge222 ], [ %i.di, %.preheader.preheader ] ; 2 uses
  %.0172223 = phi ptr [ %i.fg, %._crit_edge222 ], [ %i.ea, %.preheader.preheader ] ; 5 uses
  %.not229 = icmp eq i32 %i.ed, 0
  br i1 %.not229, label %._crit_edge222, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader, %.lr.ph221
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph221 ], [ 0, %.preheader ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0171224, i64 %indvars.iv
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !29
  %i.eg = zext i8 %i.ef to i16
  %.lhs.trunc = mul nuw i16 %i.eg, %i.dc
  %4 = trunc nuw i64 %indvars.iv to i32
  %5 = shl i32 %4, 2                              ; 4 uses
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %.0172223, i64 %6 ; 2 uses
  %8 = or disjoint i32 %5, 1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %.0172223, i64 %9
  %11 = or disjoint i32 %5, 2
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds nuw i8, ptr %.0172223, i64 %12
  %14 = or disjoint i32 %5, 3
  %15 = zext i32 %14 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.0172223, i64 %15
  %i.ei = udiv i16 %.lhs.trunc, 255               ; 4 uses
  %.zext = zext nneg i16 %i.ei to i32
  %.lhs.trunc199 = mul nuw i16 %i.ei, %i.dd
  %i.ej = udiv i16 %.lhs.trunc199, 255
  %i.ek = insertelement <2 x i16> poison, i16 %i.ei, i64 0
  %i.el = shufflevector <2 x i16> %i.ek, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.em = mul nuw <2 x i16> %i.el, %i.de
  %i.en = udiv <2 x i16> %i.em, splat (i16 255)
  %16 = sub nuw nsw i32 255, %.zext               ; 4 uses
  %17 = load i8, ptr %i.eh, align 1, !tbaa !29
  %18 = load i8, ptr %13, align 1, !tbaa !29
  %19 = load i8, ptr %10, align 1, !tbaa !29
  %20 = load i8, ptr %7, align 1, !tbaa !29
  %21 = zext i8 %17 to i32
  %22 = zext i8 %18 to i32
  %23 = zext i8 %19 to i32
  %24 = zext i8 %20 to i32
  %25 = mul nuw nsw i32 %16, %21
  %26 = mul nuw nsw i32 %16, %22
  %27 = mul nuw nsw i32 %16, %23
  %28 = mul nuw nsw i32 %16, %24
  %.lhs.trunc211 = trunc nuw i32 %25 to i16
  %.lhs.trunc209 = trunc nuw i32 %26 to i16
  %.lhs.trunc207 = trunc nuw i32 %27 to i16
  %.lhs.trunc205 = trunc nuw i32 %28 to i16
  %29 = insertelement <4 x i16> poison, i16 %.lhs.trunc205, i64 0
  %i.eo = insertelement <4 x i16> %29, i16 %.lhs.trunc207, i64 1
  %30 = insertelement <4 x i16> %i.eo, i16 %.lhs.trunc209, i64 2
  %31 = insertelement <4 x i16> %30, i16 %.lhs.trunc211, i64 3
  %i.ep = udiv <4 x i16> %31, splat (i16 255)
  %i.eq = insertelement <4 x i16> poison, i16 %i.ej, i64 0
  %i.er = shufflevector <2 x i16> %i.en, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.es = shufflevector <4 x i16> %i.eq, <4 x i16> %i.er, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.et = insertelement <4 x i16> %i.es, i16 %i.ei, i64 3
  %i.eu = add nuw nsw <4 x i16> %i.ep, %i.et
  %i.ev = trunc <4 x i16> %i.eu to <4 x i8>
  store <4 x i8> %i.ev, ptr %7, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = load i32, ptr %i.db, align 4, !tbaa !627 ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = icmp samesign ult i64 %indvars.iv.next, %i.ex
  br i1 %i.ey, label %.lr.ph221, label %._crit_edge222.loopexit, !llvm.loop !624

._crit_edge222.loopexit:                          ; preds = %.lr.ph221
  %.pre = load i32, ptr %i.cz, align 8, !tbaa !629
  %.pre232 = load i32, ptr %i.cy, align 8, !tbaa !633
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %.preheader
  %i.ez = phi i32 [ %.pre232, %._crit_edge222.loopexit ], [ %i.eb, %.preheader ] ; 2 uses
  %i.fa = phi i32 [ %.pre, %._crit_edge222.loopexit ], [ %i.ec, %.preheader ] ; 2 uses
  %i.fb = phi i32 [ %i.ew, %._crit_edge222.loopexit ], [ 0, %.preheader ]
  %i.fc = load i32, ptr %i.df, align 8, !tbaa !629
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %.0171224, i64 %i.fd
  %i.ff = sext i32 %i.fa to i64
  %i.fg = getelementptr inbounds i8, ptr %.0172223, i64 %i.ff
  %i.fh = add nuw i32 %.1166225, 1                ; 2 uses
  %i.fi = icmp ult i32 %i.fh, %i.ez
  br i1 %i.fi, label %.preheader, label %.critedge, !llvm.loop !625

.critedge:                                        ; preds = %._crit_edge222, %.preheader.lr.ph, %bb.n, %bb.e, %bb.b
  %.3 = phi i32 [ %i.p, %bb.b ], [ %i.as, %bb.e ], [ 0, %bb.n ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge222 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal void @tt_face_get_metrics(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 2)) %3, ptr nofree noundef captures(none) initializes((0, 2)) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 5 uses
  %.not = icmp eq i8 %1, 0                        ; 4 uses
  %.070.in.v = select i1 %.not, i64 1424, i64 1432
  %.070.in = getelementptr inbounds nuw i8, ptr %0, i64 %.070.in.v
  %.0.in.v = select i1 %.not, i64 1248, i64 1256
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !121
  %.070 = load i64, ptr %.070.in, align 8, !tbaa !121 ; 3 uses
  %i.h = add i64 %.070, %.0                       ; 3 uses
  %i.i = select i1 %.not, i64 438, i64 542
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !640  ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %.not80 = icmp eq i16 %i.k, 0
  br i1 %.not80, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i32 %2, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = shl nuw nsw i32 %2, 2
  %i.o = zext nneg i32 %i.n to i64
  %i.p = add i64 %.070, %i.o                      ; 2 uses
  %i.q = add i64 %i.p, 4
  %i.r = icmp ugt i64 %i.q, %i.h
  br i1 %i.r, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @FT_Stream_Seek(ptr noundef %i.e, i64 noundef %i.p) #27 ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !30
  %.not84 = icmp eq i32 %i.s, 0
  br i1 %.not84, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.t = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.e, ptr noundef nonnull %i.a) #27
  store i16 %i.t, ptr %4, align 2, !tbaa !154
  %i.u = load i32, ptr %i.a, align 4, !tbaa !30
  %.not85 = icmp eq i32 %i.u, 0
  br i1 %.not85, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.v = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.e, ptr noundef nonnull %i.a) #27
  store i16 %i.v, ptr %3, align 2, !tbaa !154
  %i.w = load i32, ptr %i.a, align 4, !tbaa !30
  %.not86 = icmp eq i32 %i.w, 0
  br i1 %.not86, label %bb.p, label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.x = shl nuw nsw i32 %i.l, 2
  %i.y = add nsw i32 %i.x, -4
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = add i64 %.070, %i.z                     ; 3 uses
  %i.ab = add i64 %i.aa, 2
  %i.ac = icmp ugt i64 %i.ab, %i.h
  br i1 %i.ac, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @FT_Stream_Seek(ptr noundef %i.e, i64 noundef %i.aa) #27 ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !30
  %.not81 = icmp eq i32 %i.ad, 0
  br i1 %.not81, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ae = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.e, ptr noundef nonnull %i.a) #27
  store i16 %i.ae, ptr %4, align 2, !tbaa !154
  %i.af = load i32, ptr %i.a, align 4, !tbaa !30
  %.not82 = icmp eq i32 %i.af, 0
  br i1 %.not82, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ag = sub nuw i32 %2, %i.l
  %i.ah = shl i32 %i.ag, 1
  %i.ai = add i32 %i.ah, 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.aa, %i.aj                    ; 2 uses
  %i.al = add i64 %i.ak, 2
  %i.am = icmp ugt i64 %i.al, %i.h
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %3, align 2, !tbaa !154
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.an = call i32 @FT_Stream_Seek(ptr noundef %i.e, i64 noundef %i.ak) #27 ; 2 uses
  store i32 %i.an, ptr %i.a, align 4, !tbaa !30
  %.not83 = icmp eq i32 %i.an, 0
  br i1 %.not83, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i16 0, ptr %3, align 2, !tbaa !154
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.e, ptr noundef nonnull %i.a) #27
  store i16 %i.ao, ptr %3, align 2, !tbaa !154
  br label %bb.p

bb.o:                                             ; preds = %bb.a, %bb.h, %bb.i, %bb.g, %bb.d, %bb.e, %bb.f, %bb.c
  store i16 0, ptr %3, align 2, !tbaa !154
  store i16 0, ptr %4, align 2, !tbaa !154
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.m, %bb.n, %bb.k, %bb.o
  %.not87 = icmp eq ptr %i.g, null
  br i1 %.not87, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !140
  %i.ar = and i64 %i.aq, 32768
  %.not88 = icmp eq i64 %i.ar, 0
  br i1 %.not88, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.as = load i16, ptr %4, align 2, !tbaa !154
  %i.at = zext i16 %i.as to i32
  store i32 %i.at, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.au = load i16, ptr %3, align 2, !tbaa !154
  %i.av = sext i16 %i.au to i32
  store i32 %i.av, ptr %i.c, align 4, !tbaa !30
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !642 ; 2 uses
  %.not91 = icmp eq ptr %i.ax, null
  br i1 %.not91, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = call i32 %i.ax(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.b) #27 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !643 ; 2 uses
  %.not92 = icmp eq ptr %i.ba, null
  br i1 %.not92, label %bb.y, label %.sink.split

bb.v:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !644 ; 2 uses
  %.not89 = icmp eq ptr %i.bb, null
  br i1 %.not89, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = call i32 %i.bb(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.b) #27 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !645 ; 2 uses
  %.not90 = icmp eq ptr %i.be, null
  br i1 %.not90, label %bb.y, label %.sink.split

.sink.split:                                      ; preds = %bb.x, %bb.u
  %.sink = phi ptr [ %i.ba, %bb.u ], [ %i.be, %bb.x ]
  %i.bf = call i32 %.sink(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.c) #27 ; 0 uses
end_hunk_0
