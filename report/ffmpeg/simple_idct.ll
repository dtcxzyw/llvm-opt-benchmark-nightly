Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/simple_idct?download=true
inline.NumInlined: 16
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ff_simple_idct_put_int16_10bit:.preheader.preheader
  %.0107.i = phi i32 [ %i.ax, %bb.a ], [ %i.u, %.preheader ] ; 2 uses
  %.0105.i = phi i32 [ %i.ay, %bb.a ], [ %i.w, %.preheader ] ; 2 uses
  %.0103.i = phi i32 [ %i.az, %bb.a ], [ %i.y, %.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !10 ; 2 uses
  %.not115.i = icmp eq i16 %i.bb, 0
  br i1 %.not115.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = sext i16 %i.bb to i32                   ; 4 uses
  %i.bd = mul nsw i32 %i.bc, 12873
  %i.be = add nsw i32 %i.bd, %i.ak
  %i.bf = mul nsw i32 %i.bc, -22725
  %i.bg = add nsw i32 %i.bf, %i.am
  %i.bh = mul nsw i32 %i.bc, 4520
  %i.bi = add nsw i32 %i.bh, %i.ao
  %i.bj = mul nsw i32 %i.bc, 19265
  %i.bk = add nsw i32 %i.bj, %i.aq
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0101.i = phi i32 [ %i.be, %bb.c ], [ %i.ak, %bb.b ] ; 2 uses
  %.099.i = phi i32 [ %i.bg, %bb.c ], [ %i.am, %bb.b ] ; 2 uses
  %.097.i = phi i32 [ %i.bi, %bb.c ], [ %i.ao, %bb.b ] ; 2 uses
  %.0.i = phi i32 [ %i.bk, %bb.c ], [ %i.aq, %bb.b ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !10 ; 2 uses
  %.not116.i = icmp eq i16 %i.bm, 0
  br i1 %.not116.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = sext i16 %i.bm to i32                   ; 4 uses
  %i.bo = mul nsw i32 %i.bn, 8867
  %i.bp = add nsw i32 %i.bo, %.0109.i
  %i.bq = mul nsw i32 %i.bn, -21407
  %i.br = add nsw i32 %i.bq, %.0107.i
  %i.bs = mul nsw i32 %i.bn, 21407
  %i.bt = add nsw i32 %i.bs, %.0105.i
  %i.bu = mul nsw i32 %i.bn, -8867
  %i.bv = add nsw i32 %i.bu, %.0103.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1110.i = phi i32 [ %i.bp, %bb.e ], [ %.0109.i, %bb.d ] ; 2 uses
  %.1108.i = phi i32 [ %i.br, %bb.e ], [ %.0107.i, %bb.d ] ; 2 uses
  %.1106.i = phi i32 [ %i.bt, %bb.e ], [ %.0105.i, %bb.d ] ; 2 uses
  %.1104.i = phi i32 [ %i.bv, %bb.e ], [ %.0103.i, %bb.d ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !10 ; 2 uses
  %.not117.i = icmp eq i16 %i.bx, 0
  br i1 %.not117.i, label %idctSparseColPut_int16_10bit.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = sext i16 %i.bx to i32                   ; 4 uses
  %i.bz = mul nsw i32 %i.by, 4520
  %i.ca = add nsw i32 %i.bz, %.0101.i
  %i.cb = mul nsw i32 %i.by, -12873
  %i.cc = add nsw i32 %i.cb, %.099.i
  %i.cd = mul nsw i32 %i.by, 19265
  %i.ce = add nsw i32 %i.cd, %.097.i
  %i.cf = mul nsw i32 %i.by, -22725
  %i.cg = add nsw i32 %i.cf, %.0.i
  br label %idctSparseColPut_int16_10bit.exit

idctSparseColPut_int16_10bit.exit:                ; preds = %bb.f, %bb.g
  %.1102.i = phi i32 [ %i.ca, %bb.g ], [ %.0101.i, %bb.f ] ; 2 uses
  %.1100.i = phi i32 [ %i.cc, %bb.g ], [ %.099.i, %bb.f ] ; 2 uses
  %.198.i = phi i32 [ %i.ce, %bb.g ], [ %.097.i, %bb.f ] ; 2 uses
  %.1.i = phi i32 [ %i.cg, %bb.g ], [ %.0.i, %bb.f ] ; 2 uses
  %i.ch = add i32 %.1102.i, %.1110.i
  %i.ci = ashr i32 %i.ch, 19
  %i.cj = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 1023)
  %i.cl = trunc nuw nsw i32 %i.ck to i16
  store i16 %i.cl, ptr %i.i, align 2, !tbaa !10
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.cn = add i32 %.1100.i, %.1108.i
  %i.co = ashr i32 %i.cn, 19
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 1023)
  %i.cr = trunc nuw nsw i32 %i.cq to i16
  store i16 %i.cr, ptr %i.cm, align 2, !tbaa !10
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.h ; 2 uses
  %i.ct = add i32 %.198.i, %.1106.i
  %i.cu = ashr i32 %i.ct, 19
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 1023)
  %i.cx = trunc nuw nsw i32 %i.cw to i16
  store i16 %i.cx, ptr %i.cs, align 2, !tbaa !10
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.h ; 2 uses
  %i.cz = add i32 %.1.i, %.1104.i
  %i.da = ashr i32 %i.cz, 19
  %i.db = tail call i32 @llvm.smax.i32(i32 %i.da, i32 0)
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.db, i32 1023)
  %i.dd = trunc nuw nsw i32 %i.dc to i16
  store i16 %i.dd, ptr %i.cy, align 2, !tbaa !10
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.h ; 2 uses
  %i.df = sub i32 %.1104.i, %.1.i
  %i.dg = ashr i32 %i.df, 19
  %i.dh = tail call i32 @llvm.smax.i32(i32 %i.dg, i32 0)
  %i.di = tail call i32 @llvm.umin.i32(i32 %i.dh, i32 1023)
  %i.dj = trunc nuw nsw i32 %i.di to i16
  store i16 %i.dj, ptr %i.de, align 2, !tbaa !10
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.h ; 2 uses
  %i.dl = sub i32 %.1106.i, %.198.i
  %i.dm = ashr i32 %i.dl, 19
  %i.dn = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 1023)
  %i.dp = trunc nuw nsw i32 %i.do to i16
  store i16 %i.dp, ptr %i.dk, align 2, !tbaa !10
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.h ; 2 uses
  %i.dr = sub i32 %.1108.i, %.1100.i
  %i.ds = ashr i32 %i.dr, 19
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 0)
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.dt, i32 1023)
  %i.dv = trunc nuw nsw i32 %i.du to i16
  store i16 %i.dv, ptr %i.dq, align 2, !tbaa !10
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.h
  %i.dx = sub i32 %.1110.i, %.1102.i
  %i.dy = ashr i32 %i.dx, 19
  %i.dz = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 0)
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 1023)
  %i.eb = trunc nuw nsw i32 %i.ea to i16
  store i16 %i.eb, ptr %i.dw, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.h, label %.preheader, !llvm.loop !14

bb.h:                                             ; preds = %idctSparseColPut_int16_10bit.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @idctRowCondDC_int16_10bit(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = or i32 %i.d, %i.f
  %i.h = or i32 %i.g, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !10
  %i.k = sext i16 %i.j to i32                     ; 5 uses
  %i.l = or i32 %i.h, %i.k
  %.not = icmp eq i32 %i.l, 0
  %i.m = load i16, ptr %0, align 4, !tbaa !10
  %i.n = sext i16 %i.m to i32                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = shl nsw i32 %i.n, 2
  %i.p = and i32 %i.o, 65532
  %i.q = mul nuw i32 %i.p, 65537
  %i.r = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.s, ptr %0, align 4, !tbaa !11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.t = shl nsw i32 %i.n, 14
  %i.u = or disjoint i32 %i.t, 2048               ; 4 uses
  %sext = shl i32 %i.b, 16
  %i.v = ashr exact i32 %sext, 16                 ; 2 uses
  %i.w = mul nsw i32 %i.v, 21407                  ; 2 uses
  %i.x = add nsw i32 %i.u, %i.w                   ; 2 uses
  %i.y = mul nsw i32 %i.v, 8867                   ; 2 uses
  %i.z = add nsw i32 %i.u, %i.y                   ; 2 uses
  %i.aa = sub nsw i32 %i.u, %i.y                  ; 2 uses
  %i.ab = sub nsw i32 %i.u, %i.w                  ; 2 uses
  %i.ac = mul nsw i32 %i.k, 22725
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ae = ashr i32 %i.b, 16                       ; 4 uses
  %i.af = mul nsw i32 %i.ae, 19265
  %i.ag = add nsw i32 %i.af, %i.ac                ; 2 uses
  %i.ah = mul nsw i32 %i.k, 19265
  %i.ai = mul nsw i32 %i.ae, -4520
  %i.aj = add nsw i32 %i.ai, %i.ah                ; 2 uses
  %i.ak = mul nsw i32 %i.k, 12873
  %i.al = mul nsw i32 %i.ae, -22725
  %i.am = add nsw i32 %i.al, %i.ak                ; 2 uses
  %i.an = mul nsw i32 %i.k, 4520
  %i.ao = mul nsw i32 %i.ae, -12873
  %i.ap = add nsw i32 %i.ao, %i.an                ; 2 uses
  %i.aq = load i64, ptr %i.c, align 8             ; 5 uses
  %.not114 = icmp eq i64 %i.aq, 0
  br i1 %.not114, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = lshr i64 %i.aq, 16
  %i.as = trunc i64 %i.ar to i16
  %i.at = lshr i64 %i.aq, 32
  %i.au = trunc i64 %i.at to i16
  %i.av = trunc i64 %i.aq to i16
  %i.aw = sext i16 %i.av to i32                   ; 2 uses
  %i.ax = shl nsw i32 %i.aw, 14                   ; 2 uses
  %i.ay = sext i16 %i.au to i32                   ; 2 uses
  %i.az = mul nsw i32 %i.ay, 8867                 ; 2 uses
  %i.ba = add nsw i32 %i.ax, %i.x
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = mul nsw i32 %i.aw, -16384               ; 2 uses
  %i.bd = mul nsw i32 %i.ay, 21407                ; 2 uses
  %i.be = add nsw i32 %i.bc, %i.z
  %i.bf = sub nsw i32 %i.be, %i.bd
  %i.bg = add nsw i32 %i.bc, %i.aa
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = add nsw i32 %i.ax, %i.ab
  %i.bj = sub nsw i32 %i.bi, %i.az
  %i.bk = sext i16 %i.as to i32                   ; 4 uses
  %i.bl = mul nsw i32 %i.bk, 12873
  %i.bm = add nsw i32 %i.bl, %i.ag
  %i.bn = ashr i64 %i.aq, 48
  %i.bo = trunc nsw i64 %i.bn to i32              ; 4 uses
  %i.bp = mul nsw i32 %i.bo, 4520
  %i.bq = add nsw i32 %i.bm, %i.bp
  %i.br = mul nsw i32 %i.bk, -22725
  %i.bs = add nsw i32 %i.br, %i.aj
  %i.bt = mul nsw i32 %i.bo, -12873
  %i.bu = add nsw i32 %i.bs, %i.bt
  %i.bv = mul nsw i32 %i.bk, 4520
  %i.bw = add nsw i32 %i.bv, %i.am
  %i.bx = mul nsw i32 %i.bo, 19265
  %i.by = add nsw i32 %i.bw, %i.bx
  %i.bz = mul nsw i32 %i.bk, 19265
  %i.ca = add nsw i32 %i.bz, %i.ap
  %i.cb = mul nsw i32 %i.bo, -22725
  %i.cc = add nsw i32 %i.ca, %i.cb
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0112 = phi i32 [ %i.bb, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %.0111 = phi i32 [ %i.bf, %bb.d ], [ %i.z, %bb.c ] ; 2 uses
  %.0110 = phi i32 [ %i.bh, %bb.d ], [ %i.aa, %bb.c ] ; 2 uses
  %.0109 = phi i32 [ %i.bj, %bb.d ], [ %i.ab, %bb.c ] ; 2 uses
  %.0108 = phi i32 [ %i.bq, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %.0107 = phi i32 [ %i.bu, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.0106 = phi i32 [ %i.by, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %.0105 = phi i32 [ %i.cc, %bb.d ], [ %i.ap, %bb.c ] ; 2 uses
  %i.cd = add i32 %.0108, %.0112
  %i.ce = lshr i32 %i.cd, 12
  %i.cf = trunc i32 %i.ce to i16
  store i16 %i.cf, ptr %0, align 8, !tbaa !10
  %i.cg = sub i32 %.0112, %.0108
  %i.ch = lshr i32 %i.cg, 12
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !10
  %i.ck = add i32 %.0107, %.0111
  %i.cl = lshr i32 %i.ck, 12
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %i.i, align 2, !tbaa !10
  %i.cn = sub i32 %.0111, %.0107
  %i.co = lshr i32 %i.cn, 12
  %i.cp = trunc i32 %i.co to i16
  store i16 %i.cp, ptr %i.e, align 4, !tbaa !10
  %i.cq = add i32 %.0106, %.0110
  %i.cr = lshr i32 %i.cq, 12
  %i.cs = trunc i32 %i.cr to i16
  store i16 %i.cs, ptr %i.a, align 4, !tbaa !10
  %i.ct = sub i32 %.0110, %.0106
  %i.cu = lshr i32 %i.ct, 12
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !10
  %i.cx = add i32 %.0105, %.0109
  %i.cy = lshr i32 %i.cx, 12
  %i.cz = trunc i32 %i.cy to i16
  store i16 %i.cz, ptr %i.ad, align 2, !tbaa !10
  %i.da = sub i32 %.0109, %.0105
  %i.db = lshr i32 %i.da, 12
  %i.dc = trunc i32 %i.db to i16
  store i16 %i.dc, ptr %i.c, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_simple_idct_add_int16_10bit(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
.preheader.preheader:
  tail call fastcc void @idctRowCondDC_int16_10bit(ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call fastcc void @idctRowCondDC_int16_10bit(ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call fastcc void @idctRowCondDC_int16_10bit(ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call fastcc void @idctRowCondDC_int16_10bit(ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call fastcc void @idctRowCondDC_int16_10bit(ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  tail call fastcc void @idctRowCondDC_int16_10bit(ptr noundef nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call fastcc void @idctRowCondDC_int16_10bit(ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call fastcc void @idctRowCondDC_int16_10bit(ptr noundef nonnull %i.g)
  %i.h = lshr i64 %1, 1                           ; 7 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %idctSparseColAdd_int16_10bit.exit
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %idctSparseColAdd_int16_10bit.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 8 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !10
  %i.l = sext i16 %i.k to i32
  %i.m = shl nsw i32 %i.l, 14
  %i.n = add nsw i32 %i.m, 262144                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load i16, ptr %i.o, align 2, !tbaa !10
  %i.q = sext i16 %i.p to i32                     ; 4 uses
  %i.r = mul nsw i32 %i.q, 21407
  %i.s = add nsw i32 %i.n, %i.r                   ; 2 uses
  %i.t = mul nsw i32 %i.q, 8867
  %i.u = add nsw i32 %i.n, %i.t                   ; 2 uses
  %i.v = mul nsw i32 %i.q, -8867
  %i.w = add nsw i32 %i.n, %i.v                   ; 2 uses
  %i.x = mul nsw i32 %i.q, -21407
  %i.y = add nsw i32 %i.n, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !10
  %i.ab = sext i16 %i.aa to i32                   ; 4 uses
  %i.ac = mul nsw i32 %i.ab, 22725
  %i.ad = mul nsw i32 %i.ab, 19265
  %i.ae = mul nsw i32 %i.ab, 12873
  %i.af = mul nsw i32 %i.ab, 4520
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !10
  %i.ai = sext i16 %i.ah to i32                   ; 4 uses
  %i.aj = mul nsw i32 %i.ai, 19265
  %i.ak = add nsw i32 %i.aj, %i.ac                ; 2 uses
  %i.al = mul nsw i32 %i.ai, -4520
  %i.am = add nsw i32 %i.al, %i.ad                ; 2 uses
  %i.an = mul nsw i32 %i.ai, -22725
  %i.ao = add nsw i32 %i.an, %i.ae                ; 2 uses
  %i.ap = mul nsw i32 %i.ai, -12873
  %i.aq = add nsw i32 %i.ap, %i.af                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !10 ; 2 uses
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = shl nsw i32 %i.at, 14                   ; 2 uses
  %i.av = add nsw i32 %i.au, %i.s
  %i.aw = mul nsw i32 %i.at, -16384               ; 2 uses
  %i.ax = add nsw i32 %i.aw, %i.u
  %i.ay = add nsw i32 %i.aw, %i.w
  %i.az = add nsw i32 %i.au, %i.y
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  %.0117.i = phi i32 [ %i.av, %bb.a ], [ %i.s, %.preheader ] ; 2 uses
  %.0115.i = phi i32 [ %i.ax, %bb.a ], [ %i.u, %.preheader ] ; 2 uses
  %.0113.i = phi i32 [ %i.ay, %bb.a ], [ %i.w, %.preheader ] ; 2 uses
  %.0111.i = phi i32 [ %i.az, %bb.a ], [ %i.y, %.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !10 ; 2 uses
  %.not123.i = icmp eq i16 %i.bb, 0
  br i1 %.not123.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = sext i16 %i.bb to i32                   ; 4 uses
  %i.bd = mul nsw i32 %i.bc, 12873
  %i.be = add nsw i32 %i.bd, %i.ak
  %i.bf = mul nsw i32 %i.bc, -22725
  %i.bg = add nsw i32 %i.bf, %i.am
  %i.bh = mul nsw i32 %i.bc, 4520
  %i.bi = add nsw i32 %i.bh, %i.ao
  %i.bj = mul nsw i32 %i.bc, 19265
  %i.bk = add nsw i32 %i.bj, %i.aq
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0109.i = phi i32 [ %i.be, %bb.c ], [ %i.ak, %bb.b ] ; 2 uses
  %.0107.i = phi i32 [ %i.bg, %bb.c ], [ %i.am, %bb.b ] ; 2 uses
  %.0105.i = phi i32 [ %i.bi, %bb.c ], [ %i.ao, %bb.b ] ; 2 uses
  %.0.i = phi i32 [ %i.bk, %bb.c ], [ %i.aq, %bb.b ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !10 ; 2 uses
  %.not124.i = icmp eq i16 %i.bm, 0
  br i1 %.not124.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = sext i16 %i.bm to i32                   ; 4 uses
  %i.bo = mul nsw i32 %i.bn, 8867
  %i.bp = add nsw i32 %i.bo, %.0117.i
  %i.bq = mul nsw i32 %i.bn, -21407
  %i.br = add nsw i32 %i.bq, %.0115.i
  %i.bs = mul nsw i32 %i.bn, 21407
  %i.bt = add nsw i32 %i.bs, %.0113.i
  %i.bu = mul nsw i32 %i.bn, -8867
  %i.bv = add nsw i32 %i.bu, %.0111.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1118.i = phi i32 [ %i.bp, %bb.e ], [ %.0117.i, %bb.d ] ; 2 uses
  %.1116.i = phi i32 [ %i.br, %bb.e ], [ %.0115.i, %bb.d ] ; 2 uses
  %.1114.i = phi i32 [ %i.bt, %bb.e ], [ %.0113.i, %bb.d ] ; 2 uses
  %.1112.i = phi i32 [ %i.bv, %bb.e ], [ %.0111.i, %bb.d ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !10 ; 2 uses
  %.not125.i = icmp eq i16 %i.bx, 0
  br i1 %.not125.i, label %idctSparseColAdd_int16_10bit.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = sext i16 %i.bx to i32                   ; 4 uses
  %i.bz = mul nsw i32 %i.by, 4520
end_hunk_0
