Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/simple_idct?download=true
inline.NumInlined: 16
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ff_simple_idct_add_int16_12bit:.preheader.preheader
  store i16 %i.cx, ptr %i.cp, align 2, !tbaa !10
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.h ; 3 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !10
  %i.da = zext i16 %i.cz to i32
  %i.db = add i32 %.1106.i, %.1114.i
  %i.dc = ashr i32 %i.db, 17
  %i.dd = add nsw i32 %i.dc, %i.da
  %i.de = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 0)
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.de, i32 4095)
  %i.dg = trunc nuw nsw i32 %i.df to i16
  store i16 %i.dg, ptr %i.cy, align 2, !tbaa !10
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.h ; 3 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !10
  %i.dj = zext i16 %i.di to i32
  %i.dk = add i32 %.1.i, %.1112.i
  %i.dl = ashr i32 %i.dk, 17
  %i.dm = add nsw i32 %i.dl, %i.dj
  %i.dn = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 4095)
  %i.dp = trunc nuw nsw i32 %i.do to i16
  store i16 %i.dp, ptr %i.dh, align 2, !tbaa !10
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.h ; 3 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !10
  %i.ds = zext i16 %i.dr to i32
  %i.dt = sub i32 %.1112.i, %.1.i
  %i.du = ashr i32 %i.dt, 17
  %i.dv = add nsw i32 %i.du, %i.ds
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 4095)
  %i.dy = trunc nuw nsw i32 %i.dx to i16
  store i16 %i.dy, ptr %i.dq, align 2, !tbaa !10
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.h ; 3 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !10
  %i.eb = zext i16 %i.ea to i32
  %i.ec = sub i32 %.1114.i, %.1106.i
  %i.ed = ashr i32 %i.ec, 17
  %i.ee = add nsw i32 %i.ed, %i.eb
  %i.ef = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.eg = tail call i32 @llvm.umin.i32(i32 %i.ef, i32 4095)
  %i.eh = trunc nuw nsw i32 %i.eg to i16
  store i16 %i.eh, ptr %i.dz, align 2, !tbaa !10
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.h ; 3 uses
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !10
  %i.ek = zext i16 %i.ej to i32
  %i.el = sub i32 %.1116.i, %.1108.i
  %i.em = ashr i32 %i.el, 17
  %i.en = add nsw i32 %i.em, %i.ek
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.en, i32 0)
  %i.ep = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 4095)
  %i.eq = trunc nuw nsw i32 %i.ep to i16
  store i16 %i.eq, ptr %i.ei, align 2, !tbaa !10
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.h ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !10
  %i.et = zext i16 %i.es to i32
  %i.eu = sub i32 %.1118.i, %.1110.i
  %i.ev = ashr i32 %i.eu, 17
  %i.ew = add nsw i32 %i.ev, %i.et
  %i.ex = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 0)
  %i.ey = tail call i32 @llvm.umin.i32(i32 %i.ex, i32 4095)
  %i.ez = trunc nuw nsw i32 %i.ey to i16
  store i16 %i.ez, ptr %i.er, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.h, label %.preheader, !llvm.loop !17

bb.h:                                             ; preds = %idctSparseColAdd_int16_12bit.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_simple_idct_int16_12bit(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
.preheader.preheader:
  tail call fastcc void @idctRowCondDC_int16_12bit(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @idctRowCondDC_int16_12bit(ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @idctRowCondDC_int16_12bit(ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @idctRowCondDC_int16_12bit(ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @idctRowCondDC_int16_12bit(ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @idctRowCondDC_int16_12bit(ptr noundef nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @idctRowCondDC_int16_12bit(ptr noundef nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call fastcc void @idctRowCondDC_int16_12bit(ptr noundef nonnull %i.g)
  %wide.load = load <8 x i16>, ptr %0, align 2, !tbaa !10
  %i.h = sext <8 x i16> %wide.load to <8 x i32>
  %i.i = mul nsw <8 x i32> %i.h, splat (i32 32767)
  %i.j = add nsw <8 x i32> %i.i, splat (i32 65534) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load14 = load <8 x i16>, ptr %i.k, align 2, !tbaa !10
  %i.l = sext <8 x i16> %wide.load14 to <8 x i32> ; 4 uses
  %i.m = mul nsw <8 x i32> %i.l, splat (i32 42813)
  %i.n = add <8 x i32> %i.j, %i.m
  %i.o = mul nsw <8 x i32> %i.l, splat (i32 17734)
  %i.p = add nsw <8 x i32> %i.j, %i.o
  %i.q = mul nsw <8 x i32> %i.l, splat (i32 -17734)
  %i.r = add nsw <8 x i32> %i.j, %i.q
  %i.s = mul nsw <8 x i32> %i.l, splat (i32 -42813)
  %i.t = add <8 x i32> %i.j, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load15 = load <8 x i16>, ptr %i.u, align 2, !tbaa !10
  %i.v = sext <8 x i16> %wide.load15 to <8 x i32> ; 4 uses
  %i.w = mul nsw <8 x i32> %i.v, splat (i32 45451)
  %i.x = mul nsw <8 x i32> %i.v, splat (i32 38531)
  %i.y = mul nsw <8 x i32> %i.v, splat (i32 25746)
  %i.z = mul nsw <8 x i32> %i.v, splat (i32 9041)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load16 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !10
  %i.ab = sext <8 x i16> %wide.load16 to <8 x i32> ; 4 uses
  %i.ac = mul nsw <8 x i32> %i.ab, splat (i32 38531)
  %i.ad = add <8 x i32> %i.ac, %i.w
  %i.ae = mul nsw <8 x i32> %i.ab, splat (i32 -9041)
  %i.af = add nsw <8 x i32> %i.ae, %i.x
  %i.ag = mul nsw <8 x i32> %i.ab, splat (i32 -45451)
  %i.ah = add <8 x i32> %i.ag, %i.y
  %i.ai = mul nsw <8 x i32> %i.ab, splat (i32 -25746)
  %i.aj = add nsw <8 x i32> %i.ai, %i.z
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %wide.load17 = load <8 x i16>, ptr %i.ak, align 2, !tbaa !10
  %i.al = sext <8 x i16> %wide.load17 to <8 x i32> ; 2 uses
  %i.am = mul nsw <8 x i32> %i.al, splat (i32 32767) ; 2 uses
  %i.an = add <8 x i32> %i.am, %i.n
  %i.ao = mul nsw <8 x i32> %i.al, splat (i32 -32767) ; 2 uses
  %i.ap = add <8 x i32> %i.ao, %i.p
  %i.aq = add <8 x i32> %i.ao, %i.r
  %i.ar = add <8 x i32> %i.am, %i.t
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load21 = load <8 x i16>, ptr %i.as, align 2, !tbaa !10
  %i.at = sext <8 x i16> %wide.load21 to <8 x i32> ; 4 uses
  %i.au = mul nsw <8 x i32> %i.at, splat (i32 25746)
  %i.av = add <8 x i32> %i.au, %i.ad
  %i.aw = mul <8 x i32> %i.at, splat (i32 -45451)
  %i.ax = add <8 x i32> %i.aw, %i.af
  %i.ay = mul nsw <8 x i32> %i.at, splat (i32 9041)
  %i.az = add <8 x i32> %i.ay, %i.ah
  %i.ba = mul nsw <8 x i32> %i.at, splat (i32 38531)
  %i.bb = add <8 x i32> %i.ba, %i.aj
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %wide.load26 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !10
  %i.bd = sext <8 x i16> %wide.load26 to <8 x i32> ; 4 uses
  %i.be = mul nsw <8 x i32> %i.bd, splat (i32 17734)
  %i.bf = add <8 x i32> %i.be, %i.an              ; 2 uses
  %i.bg = mul <8 x i32> %i.bd, splat (i32 -42813)
  %i.bh = add <8 x i32> %i.bg, %i.ap              ; 2 uses
  %i.bi = mul nsw <8 x i32> %i.bd, splat (i32 42813)
  %i.bj = add <8 x i32> %i.bi, %i.aq              ; 2 uses
  %i.bk = mul nsw <8 x i32> %i.bd, splat (i32 -17734)
  %i.bl = add <8 x i32> %i.bk, %i.ar              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load31 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !10
  %i.bn = sext <8 x i16> %wide.load31 to <8 x i32> ; 4 uses
  %i.bo = mul nsw <8 x i32> %i.bn, splat (i32 9041)
  %i.bp = add <8 x i32> %i.bo, %i.av              ; 2 uses
  %i.bq = mul nsw <8 x i32> %i.bn, splat (i32 -25746)
  %i.br = add <8 x i32> %i.bq, %i.ax              ; 2 uses
  %i.bs = mul nsw <8 x i32> %i.bn, splat (i32 38531)
  %i.bt = add <8 x i32> %i.bs, %i.az              ; 2 uses
  %i.bu = mul <8 x i32> %i.bn, splat (i32 -45451)
  %i.bv = add <8 x i32> %i.bu, %i.bb              ; 2 uses
  %i.bw = add <8 x i32> %i.bp, %i.bf
  %i.bx = ashr <8 x i32> %i.bw, splat (i32 17)
  %i.by = trunc nsw <8 x i32> %i.bx to <8 x i16>
  store <8 x i16> %i.by, ptr %0, align 2, !tbaa !10
  %i.bz = add <8 x i32> %i.br, %i.bh
  %i.ca = ashr <8 x i32> %i.bz, splat (i32 17)
  %i.cb = trunc nsw <8 x i32> %i.ca to <8 x i16>
  store <8 x i16> %i.cb, ptr %i.u, align 2, !tbaa !10
  %i.cc = add <8 x i32> %i.bt, %i.bj
  %i.cd = ashr <8 x i32> %i.cc, splat (i32 17)
  %i.ce = trunc nsw <8 x i32> %i.cd to <8 x i16>
  store <8 x i16> %i.ce, ptr %i.k, align 2, !tbaa !10
  %i.cf = add <8 x i32> %i.bv, %i.bl
  %i.cg = ashr <8 x i32> %i.cf, splat (i32 17)
  %i.ch = trunc nsw <8 x i32> %i.cg to <8 x i16>
  store <8 x i16> %i.ch, ptr %i.aa, align 2, !tbaa !10
  %i.ci = sub <8 x i32> %i.bl, %i.bv
  %i.cj = ashr <8 x i32> %i.ci, splat (i32 17)
  %i.ck = trunc nsw <8 x i32> %i.cj to <8 x i16>
  store <8 x i16> %i.ck, ptr %i.ak, align 2, !tbaa !10
  %i.cl = sub <8 x i32> %i.bj, %i.bt
  %i.cm = ashr <8 x i32> %i.cl, splat (i32 17)
  %i.cn = trunc nsw <8 x i32> %i.cm to <8 x i16>
  store <8 x i16> %i.cn, ptr %i.as, align 2, !tbaa !10
  %i.co = sub <8 x i32> %i.bh, %i.br
  %i.cp = ashr <8 x i32> %i.co, splat (i32 17)
  %i.cq = trunc nsw <8 x i32> %i.cp to <8 x i16>
  store <8 x i16> %i.cq, ptr %i.bc, align 2, !tbaa !10
  %i.cr = sub <8 x i32> %i.bf, %i.bp
  %i.cs = ashr <8 x i32> %i.cr, splat (i32 17)
  %i.ct = trunc nsw <8 x i32> %i.cs to <8 x i16>
  store <8 x i16> %i.ct, ptr %i.bm, align 2, !tbaa !10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_simple_idct_put_int32_10bit(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !19
  %i.b = shl i32 %i.a, 14
  %i.c = or disjoint i32 %i.b, 4096               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.f = mul i32 %i.e, 21407                      ; 2 uses
  %i.g = add i32 %i.c, %i.f                       ; 2 uses
  %i.h = mul i32 %i.e, 8867                       ; 2 uses
  %i.i = add i32 %i.c, %i.h                       ; 2 uses
  %i.j = sub i32 %i.c, %i.h                       ; 2 uses
  %i.k = sub i32 %i.c, %i.f                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19   ; 4 uses
  %i.n = mul i32 %i.m, 22725
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19   ; 4 uses
  %i.q = mul i32 %i.p, 19265
  %i.r = add i32 %i.q, %i.n                       ; 2 uses
  %i.s = mul i32 %i.m, 19265
  %i.t = mul i32 %i.p, -4520
  %i.u = add i32 %i.t, %i.s                       ; 2 uses
  %i.v = mul i32 %i.m, 12873
  %i.w = mul i32 %i.p, -22725
  %i.x = add i32 %i.w, %i.v                       ; 2 uses
  %i.y = mul i32 %i.m, 4520
  %i.z = mul i32 %i.p, -12873
  %i.aa = add i32 %i.z, %i.y                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = or i64 %i.ae, %i.ac
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %idctRowCondDC_int32_10bit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = lshr i64 %i.ae, 32
  %i.ah = trunc nuw i64 %i.ag to i32              ; 4 uses
  %i.ai = lshr i64 %i.ac, 32
  %i.aj = trunc nuw i64 %i.ai to i32              ; 4 uses
  %i.ak = trunc i64 %i.ae to i32                  ; 2 uses
  %i.al = trunc i64 %i.ac to i32                  ; 2 uses
  %i.am = shl i32 %i.al, 14                       ; 2 uses
  %i.an = mul i32 %i.ak, 8867                     ; 2 uses
  %i.ao = add i32 %i.am, %i.g
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = mul i32 %i.al, -16384                   ; 2 uses
  %i.ar = mul i32 %i.ak, 21407                    ; 2 uses
  %i.as = add i32 %i.aq, %i.i
  %i.at = sub i32 %i.as, %i.ar
  %i.au = add i32 %i.aq, %i.j
  %i.av = add i32 %i.au, %i.ar
  %i.aw = add i32 %i.am, %i.k
  %i.ax = sub i32 %i.aw, %i.an
  %i.ay = mul i32 %i.aj, 12873
  %i.az = add i32 %i.ay, %i.r
  %i.ba = mul i32 %i.ah, 4520
  %i.bb = add i32 %i.az, %i.ba
  %i.bc = mul i32 %i.aj, -22725
  %i.bd = add i32 %i.bc, %i.u
  %i.be = mul i32 %i.ah, -12873
  %i.bf = add i32 %i.bd, %i.be
  %i.bg = mul i32 %i.aj, 4520
  %i.bh = add i32 %i.bg, %i.x
  %i.bi = mul i32 %i.ah, 19265
  %i.bj = add i32 %i.bh, %i.bi
  %i.bk = mul i32 %i.aj, 19265
  %i.bl = add i32 %i.bk, %i.aa
  %i.bm = mul i32 %i.ah, -22725
  %i.bn = add i32 %i.bl, %i.bm
  br label %idctRowCondDC_int32_10bit.exit

idctRowCondDC_int32_10bit.exit:                   ; preds = %bb.a, %bb.b
  %.092.i = phi i32 [ %i.ap, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.091.i = phi i32 [ %i.at, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %.090.i = phi i32 [ %i.av, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %.089.i = phi i32 [ %i.ax, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %.088.i = phi i32 [ %i.bb, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
  %.087.i = phi i32 [ %i.bf, %bb.b ], [ %i.u, %bb.a ] ; 2 uses
  %.086.i = phi i32 [ %i.bj, %bb.b ], [ %i.x, %bb.a ] ; 2 uses
  %.0.i = phi i32 [ %i.bn, %bb.b ], [ %i.aa, %bb.a ] ; 2 uses
  %i.bo = add i32 %.088.i, %.092.i
  %i.bp = ashr i32 %i.bo, 13
  store i32 %i.bp, ptr %2, align 8, !tbaa !19
  %i.bq = sub i32 %.092.i, %.088.i
  %i.br = ashr i32 %i.bq, 13
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !19
  %i.bt = add i32 %.087.i, %.091.i
  %i.bu = ashr i32 %i.bt, 13
  store i32 %i.bu, ptr %i.l, align 4, !tbaa !19
  %i.bv = sub i32 %.091.i, %.087.i
  %i.bw = ashr i32 %i.bv, 13
  store i32 %i.bw, ptr %i.ad, align 8, !tbaa !19
  %i.bx = add i32 %.086.i, %.090.i
  %i.by = ashr i32 %i.bx, 13
  store i32 %i.by, ptr %i.d, align 8, !tbaa !19
  %i.bz = sub i32 %.090.i, %.086.i
  %i.ca = ashr i32 %i.bz, 13
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !19
  %i.cc = add i32 %.0.i, %.089.i
  %i.cd = ashr i32 %i.cc, 13
  store i32 %i.cd, ptr %i.o, align 4, !tbaa !19
  %i.ce = sub i32 %.089.i, %.0.i
  %i.cf = ashr i32 %i.ce, 13
  store i32 %i.cf, ptr %i.ab, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !19
  %i.ci = shl i32 %i.ch, 14
  %i.cj = or disjoint i32 %i.ci, 4096             ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !19 ; 2 uses
  %i.cm = mul i32 %i.cl, 21407                    ; 2 uses
  %i.cn = add i32 %i.cj, %i.cm                    ; 2 uses
  %i.co = mul i32 %i.cl, 8867                     ; 2 uses
  %i.cp = add i32 %i.cj, %i.co                    ; 2 uses
  %i.cq = sub i32 %i.cj, %i.co                    ; 2 uses
  %i.cr = sub i32 %i.cj, %i.cm                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !19 ; 4 uses
  %i.cu = mul i32 %i.ct, 22725
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !19 ; 4 uses
  %i.cx = mul i32 %i.cw, 19265
  %i.cy = add i32 %i.cx, %i.cu                    ; 2 uses
  %i.cz = mul i32 %i.ct, 19265
  %i.da = mul i32 %i.cw, -4520
  %i.db = add i32 %i.da, %i.cz                    ; 2 uses
  %i.dc = mul i32 %i.ct, 12873
  %i.dd = mul i32 %i.cw, -22725
  %i.de = add i32 %i.dd, %i.dc                    ; 2 uses
  %i.df = mul i32 %i.ct, 4520
  %i.dg = mul i32 %i.cw, -12873
  %i.dh = add i32 %i.dg, %i.df                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8            ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8            ; 3 uses
  %i.dm = or i64 %i.dl, %i.dj
  %.not.i.1 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.1, label %idctRowCondDC_int32_10bit.exit.1, label %bb.c

bb.c:                                             ; preds = %idctRowCondDC_int32_10bit.exit
  %i.dn = lshr i64 %i.dl, 32
  %i.do = trunc nuw i64 %i.dn to i32              ; 4 uses
  %i.dp = lshr i64 %i.dj, 32
  %i.dq = trunc nuw i64 %i.dp to i32              ; 4 uses
  %i.dr = trunc i64 %i.dl to i32                  ; 2 uses
  %i.ds = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dt = shl i32 %i.ds, 14                       ; 2 uses
  %i.du = mul i32 %i.dr, 8867                     ; 2 uses
  %i.dv = add i32 %i.dt, %i.cn
  %i.dw = add i32 %i.dv, %i.du
  %i.dx = mul i32 %i.ds, -16384                   ; 2 uses
  %i.dy = mul i32 %i.dr, 21407                    ; 2 uses
  %i.dz = add i32 %i.dx, %i.cp
  %i.ea = sub i32 %i.dz, %i.dy
  %i.eb = add i32 %i.dx, %i.cq
  %i.ec = add i32 %i.eb, %i.dy
  %i.ed = add i32 %i.dt, %i.cr
  %i.ee = sub i32 %i.ed, %i.du
  %i.ef = mul i32 %i.dq, 12873
  %i.eg = add i32 %i.ef, %i.cy
  %i.eh = mul i32 %i.do, 4520
  %i.ei = add i32 %i.eg, %i.eh
  %i.ej = mul i32 %i.dq, -22725
  %i.ek = add i32 %i.ej, %i.db
  %i.el = mul i32 %i.do, -12873
  %i.em = add i32 %i.ek, %i.el
  %i.en = mul i32 %i.dq, 4520
  %i.eo = add i32 %i.en, %i.de
  %i.ep = mul i32 %i.do, 19265
  %i.eq = add i32 %i.eo, %i.ep
  %i.er = mul i32 %i.dq, 19265
  %i.es = add i32 %i.er, %i.dh
  %i.et = mul i32 %i.do, -22725
  %i.eu = add i32 %i.es, %i.et
  br label %idctRowCondDC_int32_10bit.exit.1

idctRowCondDC_int32_10bit.exit.1:                 ; preds = %bb.c, %idctRowCondDC_int32_10bit.exit
  %.092.i.1 = phi i32 [ %i.dw, %bb.c ], [ %i.cn, %idctRowCondDC_int32_10bit.exit ] ; 2 uses
  %.091.i.1 = phi i32 [ %i.ea, %bb.c ], [ %i.cp, %idctRowCondDC_int32_10bit.exit ] ; 2 uses
  %.090.i.1 = phi i32 [ %i.ec, %bb.c ], [ %i.cq, %idctRowCondDC_int32_10bit.exit ] ; 2 uses
  %.089.i.1 = phi i32 [ %i.ee, %bb.c ], [ %i.cr, %idctRowCondDC_int32_10bit.exit ] ; 2 uses
  %.088.i.1 = phi i32 [ %i.ei, %bb.c ], [ %i.cy, %idctRowCondDC_int32_10bit.exit ] ; 2 uses
  %.087.i.1 = phi i32 [ %i.em, %bb.c ], [ %i.db, %idctRowCondDC_int32_10bit.exit ] ; 2 uses
  %.086.i.1 = phi i32 [ %i.eq, %bb.c ], [ %i.de, %idctRowCondDC_int32_10bit.exit ] ; 2 uses
  %.0.i.1 = phi i32 [ %i.eu, %bb.c ], [ %i.dh, %idctRowCondDC_int32_10bit.exit ] ; 2 uses
  %i.ev = add i32 %.088.i.1, %.092.i.1
  %i.ew = ashr i32 %i.ev, 13
  store i32 %i.ew, ptr %i.cg, align 8, !tbaa !19
  %i.ex = sub i32 %.092.i.1, %.088.i.1
  %i.ey = ashr i32 %i.ex, 13
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !19
  %i.fa = add i32 %.087.i.1, %.091.i.1
  %i.fb = ashr i32 %i.fa, 13
  store i32 %i.fb, ptr %i.cs, align 4, !tbaa !19
  %i.fc = sub i32 %.091.i.1, %.087.i.1
  %i.fd = ashr i32 %i.fc, 13
  store i32 %i.fd, ptr %i.dk, align 8, !tbaa !19
  %i.fe = add i32 %.086.i.1, %.090.i.1
  %i.ff = ashr i32 %i.fe, 13
  store i32 %i.ff, ptr %i.ck, align 8, !tbaa !19
  %i.fg = sub i32 %.090.i.1, %.086.i.1
  %i.fh = ashr i32 %i.fg, 13
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !19
  %i.fj = add i32 %.0.i.1, %.089.i.1
  %i.fk = ashr i32 %i.fj, 13
  store i32 %i.fk, ptr %i.cv, align 4, !tbaa !19
  %i.fl = sub i32 %.089.i.1, %.0.i.1
  %i.fm = ashr i32 %i.fl, 13
  store i32 %i.fm, ptr %i.di, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !19
  %i.fp = shl i32 %i.fo, 14
  %i.fq = or disjoint i32 %i.fp, 4096             ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !19 ; 2 uses
  %i.ft = mul i32 %i.fs, 21407                    ; 2 uses
  %i.fu = add i32 %i.fq, %i.ft                    ; 2 uses
  %i.fv = mul i32 %i.fs, 8867                     ; 2 uses
  %i.fw = add i32 %i.fq, %i.fv                    ; 2 uses
  %i.fx = sub i32 %i.fq, %i.fv                    ; 2 uses
  %i.fy = sub i32 %i.fq, %i.ft                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !19 ; 4 uses
  %i.gb = mul i32 %i.ga, 22725
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !19 ; 4 uses
  %i.ge = mul i32 %i.gd, 19265
  %i.gf = add i32 %i.ge, %i.gb                    ; 2 uses
  %i.gg = mul i32 %i.ga, 19265
  %i.gh = mul i32 %i.gd, -4520
  %i.gi = add i32 %i.gh, %i.gg                    ; 2 uses
  %i.gj = mul i32 %i.ga, 12873
  %i.gk = mul i32 %i.gd, -22725
  %i.gl = add i32 %i.gk, %i.gj                    ; 2 uses
  %i.gm = mul i32 %i.ga, 4520
  %i.gn = mul i32 %i.gd, -12873
  %i.go = add i32 %i.gn, %i.gm                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8            ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8            ; 3 uses
  %i.gt = or i64 %i.gs, %i.gq
  %.not.i.2 = icmp eq i64 %i.gt, 0
  br i1 %.not.i.2, label %idctRowCondDC_int32_10bit.exit.2, label %bb.d

bb.d:                                             ; preds = %idctRowCondDC_int32_10bit.exit.1
  %i.gu = lshr i64 %i.gs, 32
  %i.gv = trunc nuw i64 %i.gu to i32              ; 4 uses
  %i.gw = lshr i64 %i.gq, 32
  %i.gx = trunc nuw i64 %i.gw to i32              ; 4 uses
  %i.gy = trunc i64 %i.gs to i32                  ; 2 uses
  %i.gz = trunc i64 %i.gq to i32                  ; 2 uses
  %i.ha = shl i32 %i.gz, 14                       ; 2 uses
  %i.hb = mul i32 %i.gy, 8867                     ; 2 uses
  %i.hc = add i32 %i.ha, %i.fu
  %i.hd = add i32 %i.hc, %i.hb
  %i.he = mul i32 %i.gz, -16384                   ; 2 uses
  %i.hf = mul i32 %i.gy, 21407                    ; 2 uses
  %i.hg = add i32 %i.he, %i.fw
  %i.hh = sub i32 %i.hg, %i.hf
  %i.hi = add i32 %i.he, %i.fx
  %i.hj = add i32 %i.hi, %i.hf
  %i.hk = add i32 %i.ha, %i.fy
  %i.hl = sub i32 %i.hk, %i.hb
  %i.hm = mul i32 %i.gx, 12873
  %i.hn = add i32 %i.hm, %i.gf
  %i.ho = mul i32 %i.gv, 4520
  %i.hp = add i32 %i.hn, %i.ho
  %i.hq = mul i32 %i.gx, -22725
  %i.hr = add i32 %i.hq, %i.gi
  %i.hs = mul i32 %i.gv, -12873
  %i.ht = add i32 %i.hr, %i.hs
  %i.hu = mul i32 %i.gx, 4520
  %i.hv = add i32 %i.hu, %i.gl
  %i.hw = mul i32 %i.gv, 19265
  %i.hx = add i32 %i.hv, %i.hw
  %i.hy = mul i32 %i.gx, 19265
  %i.hz = add i32 %i.hy, %i.go
  %i.ia = mul i32 %i.gv, -22725
  %i.ib = add i32 %i.hz, %i.ia
  br label %idctRowCondDC_int32_10bit.exit.2

idctRowCondDC_int32_10bit.exit.2:                 ; preds = %bb.d, %idctRowCondDC_int32_10bit.exit.1
  %.092.i.2 = phi i32 [ %i.hd, %bb.d ], [ %i.fu, %idctRowCondDC_int32_10bit.exit.1 ] ; 2 uses
  %.091.i.2 = phi i32 [ %i.hh, %bb.d ], [ %i.fw, %idctRowCondDC_int32_10bit.exit.1 ] ; 2 uses
  %.090.i.2 = phi i32 [ %i.hj, %bb.d ], [ %i.fx, %idctRowCondDC_int32_10bit.exit.1 ] ; 2 uses
  %.089.i.2 = phi i32 [ %i.hl, %bb.d ], [ %i.fy, %idctRowCondDC_int32_10bit.exit.1 ] ; 2 uses
  %.088.i.2 = phi i32 [ %i.hp, %bb.d ], [ %i.gf, %idctRowCondDC_int32_10bit.exit.1 ] ; 2 uses
  %.087.i.2 = phi i32 [ %i.ht, %bb.d ], [ %i.gi, %idctRowCondDC_int32_10bit.exit.1 ] ; 2 uses
  %.086.i.2 = phi i32 [ %i.hx, %bb.d ], [ %i.gl, %idctRowCondDC_int32_10bit.exit.1 ] ; 2 uses
  %.0.i.2 = phi i32 [ %i.ib, %bb.d ], [ %i.go, %idctRowCondDC_int32_10bit.exit.1 ] ; 2 uses
  %i.ic = add i32 %.088.i.2, %.092.i.2
  %i.id = ashr i32 %i.ic, 13
  store i32 %i.id, ptr %i.fn, align 8, !tbaa !19
  %i.ie = sub i32 %.092.i.2, %.088.i.2
  %i.if = ashr i32 %i.ie, 13
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !19
  %i.ih = add i32 %.087.i.2, %.091.i.2
  %i.ii = ashr i32 %i.ih, 13
  store i32 %i.ii, ptr %i.fz, align 4, !tbaa !19
  %i.ij = sub i32 %.091.i.2, %.087.i.2
  %i.ik = ashr i32 %i.ij, 13
  store i32 %i.ik, ptr %i.gr, align 8, !tbaa !19
  %i.il = add i32 %.086.i.2, %.090.i.2
  %i.im = ashr i32 %i.il, 13
  store i32 %i.im, ptr %i.fr, align 8, !tbaa !19
  %i.in = sub i32 %.090.i.2, %.086.i.2
  %i.io = ashr i32 %i.in, 13
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !19
  %i.iq = add i32 %.0.i.2, %.089.i.2
  %i.ir = ashr i32 %i.iq, 13
  store i32 %i.ir, ptr %i.gc, align 4, !tbaa !19
  %i.is = sub i32 %.089.i.2, %.0.i.2
  %i.it = ashr i32 %i.is, 13
  store i32 %i.it, ptr %i.gp, align 8, !tbaa !19
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !19
  %i.iw = shl i32 %i.iv, 14
  %i.ix = or disjoint i32 %i.iw, 4096             ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !19 ; 2 uses
  %i.ja = mul i32 %i.iz, 21407                    ; 2 uses
  %i.jb = add i32 %i.ix, %i.ja                    ; 2 uses
  %i.jc = mul i32 %i.iz, 8867                     ; 2 uses
  %i.jd = add i32 %i.ix, %i.jc                    ; 2 uses
  %i.je = sub i32 %i.ix, %i.jc                    ; 2 uses
  %i.jf = sub i32 %i.ix, %i.ja                    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !19 ; 4 uses
  %i.ji = mul i32 %i.jh, 22725
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !19 ; 4 uses
  %i.jl = mul i32 %i.jk, 19265
  %i.jm = add i32 %i.jl, %i.ji                    ; 2 uses
  %i.jn = mul i32 %i.jh, 19265
  %i.jo = mul i32 %i.jk, -4520
  %i.jp = add i32 %i.jo, %i.jn                    ; 2 uses
  %i.jq = mul i32 %i.jh, 12873
  %i.jr = mul i32 %i.jk, -22725
  %i.js = add i32 %i.jr, %i.jq                    ; 2 uses
  %i.jt = mul i32 %i.jh, 4520
  %i.ju = mul i32 %i.jk, -12873
  %i.jv = add i32 %i.ju, %i.jt                    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8            ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8            ; 3 uses
  %i.ka = or i64 %i.jz, %i.jx
  %.not.i.3 = icmp eq i64 %i.ka, 0
  br i1 %.not.i.3, label %idctRowCondDC_int32_10bit.exit.3, label %bb.e

bb.e:                                             ; preds = %idctRowCondDC_int32_10bit.exit.2
  %i.kb = lshr i64 %i.jz, 32
  %i.kc = trunc nuw i64 %i.kb to i32              ; 4 uses
  %i.kd = lshr i64 %i.jx, 32
  %i.ke = trunc nuw i64 %i.kd to i32              ; 4 uses
  %i.kf = trunc i64 %i.jz to i32                  ; 2 uses
  %i.kg = trunc i64 %i.jx to i32                  ; 2 uses
  %i.kh = shl i32 %i.kg, 14                       ; 2 uses
  %i.ki = mul i32 %i.kf, 8867                     ; 2 uses
  %i.kj = add i32 %i.kh, %i.jb
  %i.kk = add i32 %i.kj, %i.ki
  %i.kl = mul i32 %i.kg, -16384                   ; 2 uses
  %i.km = mul i32 %i.kf, 21407                    ; 2 uses
  %i.kn = add i32 %i.kl, %i.jd
  %i.ko = sub i32 %i.kn, %i.km
  %i.kp = add i32 %i.kl, %i.je
  %i.kq = add i32 %i.kp, %i.km
  %i.kr = add i32 %i.kh, %i.jf
  %i.ks = sub i32 %i.kr, %i.ki
  %i.kt = mul i32 %i.ke, 12873
  %i.ku = add i32 %i.kt, %i.jm
  %i.kv = mul i32 %i.kc, 4520
  %i.kw = add i32 %i.ku, %i.kv
  %i.kx = mul i32 %i.ke, -22725
  %i.ky = add i32 %i.kx, %i.jp
  %i.kz = mul i32 %i.kc, -12873
  %i.la = add i32 %i.ky, %i.kz
  %i.lb = mul i32 %i.ke, 4520
  %i.lc = add i32 %i.lb, %i.js
  %i.ld = mul i32 %i.kc, 19265
  %i.le = add i32 %i.lc, %i.ld
  %i.lf = mul i32 %i.ke, 19265
  %i.lg = add i32 %i.lf, %i.jv
  %i.lh = mul i32 %i.kc, -22725
  %i.li = add i32 %i.lg, %i.lh
  br label %idctRowCondDC_int32_10bit.exit.3

idctRowCondDC_int32_10bit.exit.3:                 ; preds = %bb.e, %idctRowCondDC_int32_10bit.exit.2
  %.092.i.3 = phi i32 [ %i.kk, %bb.e ], [ %i.jb, %idctRowCondDC_int32_10bit.exit.2 ] ; 2 uses
  %.091.i.3 = phi i32 [ %i.ko, %bb.e ], [ %i.jd, %idctRowCondDC_int32_10bit.exit.2 ] ; 2 uses
  %.090.i.3 = phi i32 [ %i.kq, %bb.e ], [ %i.je, %idctRowCondDC_int32_10bit.exit.2 ] ; 2 uses
  %.089.i.3 = phi i32 [ %i.ks, %bb.e ], [ %i.jf, %idctRowCondDC_int32_10bit.exit.2 ] ; 2 uses
  %.088.i.3 = phi i32 [ %i.kw, %bb.e ], [ %i.jm, %idctRowCondDC_int32_10bit.exit.2 ] ; 2 uses
  %.087.i.3 = phi i32 [ %i.la, %bb.e ], [ %i.jp, %idctRowCondDC_int32_10bit.exit.2 ] ; 2 uses
  %.086.i.3 = phi i32 [ %i.le, %bb.e ], [ %i.js, %idctRowCondDC_int32_10bit.exit.2 ] ; 2 uses
  %.0.i.3 = phi i32 [ %i.li, %bb.e ], [ %i.jv, %idctRowCondDC_int32_10bit.exit.2 ] ; 2 uses
  %i.lj = add i32 %.088.i.3, %.092.i.3
  %i.lk = ashr i32 %i.lj, 13
  store i32 %i.lk, ptr %i.iu, align 8, !tbaa !19
  %i.ll = sub i32 %.092.i.3, %.088.i.3
  %i.lm = ashr i32 %i.ll, 13
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 124
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !19
  %i.lo = add i32 %.087.i.3, %.091.i.3
  %i.lp = ashr i32 %i.lo, 13
  store i32 %i.lp, ptr %i.jg, align 4, !tbaa !19
  %i.lq = sub i32 %.091.i.3, %.087.i.3
  %i.lr = ashr i32 %i.lq, 13
  store i32 %i.lr, ptr %i.jy, align 8, !tbaa !19
  %i.ls = add i32 %.086.i.3, %.090.i.3
  %i.lt = ashr i32 %i.ls, 13
  store i32 %i.lt, ptr %i.iy, align 8, !tbaa !19
  %i.lu = sub i32 %.090.i.3, %.086.i.3
  %i.lv = ashr i32 %i.lu, 13
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !19
  %i.lx = add i32 %.0.i.3, %.089.i.3
  %i.ly = ashr i32 %i.lx, 13
  store i32 %i.ly, ptr %i.jj, align 4, !tbaa !19
  %i.lz = sub i32 %.089.i.3, %.0.i.3
  %i.ma = ashr i32 %i.lz, 13
  store i32 %i.ma, ptr %i.jw, align 8, !tbaa !19
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !19
  %i.md = shl i32 %i.mc, 14
  %i.me = or disjoint i32 %i.md, 4096             ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !19 ; 2 uses
  %i.mh = mul i32 %i.mg, 21407                    ; 2 uses
  %i.mi = add i32 %i.me, %i.mh                    ; 2 uses
  %i.mj = mul i32 %i.mg, 8867                     ; 2 uses
  %i.mk = add i32 %i.me, %i.mj                    ; 2 uses
  %i.ml = sub i32 %i.me, %i.mj                    ; 2 uses
  %i.mm = sub i32 %i.me, %i.mh                    ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !19 ; 4 uses
  %i.mp = mul i32 %i.mo, 22725
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !19 ; 4 uses
  %i.ms = mul i32 %i.mr, 19265
  %i.mt = add i32 %i.ms, %i.mp                    ; 2 uses
  %i.mu = mul i32 %i.mo, 19265
  %i.mv = mul i32 %i.mr, -4520
  %i.mw = add i32 %i.mv, %i.mu                    ; 2 uses
  %i.mx = mul i32 %i.mo, 12873
  %i.my = mul i32 %i.mr, -22725
  %i.mz = add i32 %i.my, %i.mx                    ; 2 uses
  %i.na = mul i32 %i.mo, 4520
  %i.nb = mul i32 %i.mr, -12873
  %i.nc = add i32 %i.nb, %i.na                    ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8            ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8            ; 3 uses
  %i.nh = or i64 %i.ng, %i.ne
  %.not.i.4 = icmp eq i64 %i.nh, 0
  br i1 %.not.i.4, label %idctRowCondDC_int32_10bit.exit.4, label %bb.f

bb.f:                                             ; preds = %idctRowCondDC_int32_10bit.exit.3
  %i.ni = lshr i64 %i.ng, 32
  %i.nj = trunc nuw i64 %i.ni to i32              ; 4 uses
  %i.nk = lshr i64 %i.ne, 32
  %i.nl = trunc nuw i64 %i.nk to i32              ; 4 uses
  %i.nm = trunc i64 %i.ng to i32                  ; 2 uses
  %i.nn = trunc i64 %i.ne to i32                  ; 2 uses
  %i.no = shl i32 %i.nn, 14                       ; 2 uses
  %i.np = mul i32 %i.nm, 8867                     ; 2 uses
  %i.nq = add i32 %i.no, %i.mi
  %i.nr = add i32 %i.nq, %i.np
  %i.ns = mul i32 %i.nn, -16384                   ; 2 uses
  %i.nt = mul i32 %i.nm, 21407                    ; 2 uses
  %i.nu = add i32 %i.ns, %i.mk
  %i.nv = sub i32 %i.nu, %i.nt
  %i.nw = add i32 %i.ns, %i.ml
  %i.nx = add i32 %i.nw, %i.nt
  %i.ny = add i32 %i.no, %i.mm
  %i.nz = sub i32 %i.ny, %i.np
  %i.oa = mul i32 %i.nl, 12873
  %i.ob = add i32 %i.oa, %i.mt
  %i.oc = mul i32 %i.nj, 4520
  %i.od = add i32 %i.ob, %i.oc
  %i.oe = mul i32 %i.nl, -22725
  %i.of = add i32 %i.oe, %i.mw
  %i.og = mul i32 %i.nj, -12873
  %i.oh = add i32 %i.of, %i.og
  %i.oi = mul i32 %i.nl, 4520
  %i.oj = add i32 %i.oi, %i.mz
  %i.ok = mul i32 %i.nj, 19265
  %i.ol = add i32 %i.oj, %i.ok
  %i.om = mul i32 %i.nl, 19265
  %i.on = add i32 %i.om, %i.nc
  %i.oo = mul i32 %i.nj, -22725
  %i.op = add i32 %i.on, %i.oo
  br label %idctRowCondDC_int32_10bit.exit.4

idctRowCondDC_int32_10bit.exit.4:                 ; preds = %bb.f, %idctRowCondDC_int32_10bit.exit.3
  %.092.i.4 = phi i32 [ %i.nr, %bb.f ], [ %i.mi, %idctRowCondDC_int32_10bit.exit.3 ] ; 2 uses
  %.091.i.4 = phi i32 [ %i.nv, %bb.f ], [ %i.mk, %idctRowCondDC_int32_10bit.exit.3 ] ; 2 uses
  %.090.i.4 = phi i32 [ %i.nx, %bb.f ], [ %i.ml, %idctRowCondDC_int32_10bit.exit.3 ] ; 2 uses
  %.089.i.4 = phi i32 [ %i.nz, %bb.f ], [ %i.mm, %idctRowCondDC_int32_10bit.exit.3 ] ; 2 uses
  %.088.i.4 = phi i32 [ %i.od, %bb.f ], [ %i.mt, %idctRowCondDC_int32_10bit.exit.3 ] ; 2 uses
  %.087.i.4 = phi i32 [ %i.oh, %bb.f ], [ %i.mw, %idctRowCondDC_int32_10bit.exit.3 ] ; 2 uses
  %.086.i.4 = phi i32 [ %i.ol, %bb.f ], [ %i.mz, %idctRowCondDC_int32_10bit.exit.3 ] ; 2 uses
  %.0.i.4 = phi i32 [ %i.op, %bb.f ], [ %i.nc, %idctRowCondDC_int32_10bit.exit.3 ] ; 2 uses
  %i.oq = add i32 %.088.i.4, %.092.i.4
  %i.or = ashr i32 %i.oq, 13
  store i32 %i.or, ptr %i.mb, align 8, !tbaa !19
  %i.os = sub i32 %.092.i.4, %.088.i.4
  %i.ot = ashr i32 %i.os, 13
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !19
  %i.ov = add i32 %.087.i.4, %.091.i.4
  %i.ow = ashr i32 %i.ov, 13
  store i32 %i.ow, ptr %i.mn, align 4, !tbaa !19
  %i.ox = sub i32 %.091.i.4, %.087.i.4
  %i.oy = ashr i32 %i.ox, 13
  store i32 %i.oy, ptr %i.nf, align 8, !tbaa !19
  %i.oz = add i32 %.086.i.4, %.090.i.4
  %i.pa = ashr i32 %i.oz, 13
  store i32 %i.pa, ptr %i.mf, align 8, !tbaa !19
  %i.pb = sub i32 %.090.i.4, %.086.i.4
  %i.pc = ashr i32 %i.pb, 13
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 148
  store i32 %i.pc, ptr %i.pd, align 4, !tbaa !19
  %i.pe = add i32 %.0.i.4, %.089.i.4
  %i.pf = ashr i32 %i.pe, 13
  store i32 %i.pf, ptr %i.mq, align 4, !tbaa !19
  %i.pg = sub i32 %.089.i.4, %.0.i.4
  %i.ph = ashr i32 %i.pg, 13
  store i32 %i.ph, ptr %i.nd, align 8, !tbaa !19
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !19
  %i.pk = shl i32 %i.pj, 14
  %i.pl = or disjoint i32 %i.pk, 4096             ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !19 ; 2 uses
  %i.po = mul i32 %i.pn, 21407                    ; 2 uses
  %i.pp = add i32 %i.pl, %i.po                    ; 2 uses
  %i.pq = mul i32 %i.pn, 8867                     ; 2 uses
  %i.pr = add i32 %i.pl, %i.pq                    ; 2 uses
  %i.ps = sub i32 %i.pl, %i.pq                    ; 2 uses
  %i.pt = sub i32 %i.pl, %i.po                    ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !19 ; 4 uses
  %i.pw = mul i32 %i.pv, 22725
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !19 ; 4 uses
  %i.pz = mul i32 %i.py, 19265
  %i.qa = add i32 %i.pz, %i.pw                    ; 2 uses
  %i.qb = mul i32 %i.pv, 19265
  %i.qc = mul i32 %i.py, -4520
  %i.qd = add i32 %i.qc, %i.qb                    ; 2 uses
  %i.qe = mul i32 %i.pv, 12873
  %i.qf = mul i32 %i.py, -22725
  %i.qg = add i32 %i.qf, %i.qe                    ; 2 uses
  %i.qh = mul i32 %i.pv, 4520
  %i.qi = mul i32 %i.py, -12873
  %i.qj = add i32 %i.qi, %i.qh                    ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.ql = load i64, ptr %i.qk, align 8            ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.qn = load i64, ptr %i.qm, align 8            ; 3 uses
  %i.qo = or i64 %i.qn, %i.ql
  %.not.i.5 = icmp eq i64 %i.qo, 0
  br i1 %.not.i.5, label %idctRowCondDC_int32_10bit.exit.5, label %bb.g

bb.g:                                             ; preds = %idctRowCondDC_int32_10bit.exit.4
  %i.qp = lshr i64 %i.qn, 32
  %i.qq = trunc nuw i64 %i.qp to i32              ; 4 uses
  %i.qr = lshr i64 %i.ql, 32
  %i.qs = trunc nuw i64 %i.qr to i32              ; 4 uses
  %i.qt = trunc i64 %i.qn to i32                  ; 2 uses
  %i.qu = trunc i64 %i.ql to i32                  ; 2 uses
  %i.qv = shl i32 %i.qu, 14                       ; 2 uses
  %i.qw = mul i32 %i.qt, 8867                     ; 2 uses
  %i.qx = add i32 %i.qv, %i.pp
  %i.qy = add i32 %i.qx, %i.qw
  %i.qz = mul i32 %i.qu, -16384                   ; 2 uses
  %i.ra = mul i32 %i.qt, 21407                    ; 2 uses
  %i.rb = add i32 %i.qz, %i.pr
  %i.rc = sub i32 %i.rb, %i.ra
  %i.rd = add i32 %i.qz, %i.ps
  %i.re = add i32 %i.rd, %i.ra
  %i.rf = add i32 %i.qv, %i.pt
  %i.rg = sub i32 %i.rf, %i.qw
  %i.rh = mul i32 %i.qs, 12873
  %i.ri = add i32 %i.rh, %i.qa
  %i.rj = mul i32 %i.qq, 4520
  %i.rk = add i32 %i.ri, %i.rj
  %i.rl = mul i32 %i.qs, -22725
  %i.rm = add i32 %i.rl, %i.qd
  %i.rn = mul i32 %i.qq, -12873
  %i.ro = add i32 %i.rm, %i.rn
  %i.rp = mul i32 %i.qs, 4520
  %i.rq = add i32 %i.rp, %i.qg
  %i.rr = mul i32 %i.qq, 19265
  %i.rs = add i32 %i.rq, %i.rr
  %i.rt = mul i32 %i.qs, 19265
  %i.ru = add i32 %i.rt, %i.qj
  %i.rv = mul i32 %i.qq, -22725
  %i.rw = add i32 %i.ru, %i.rv
  br label %idctRowCondDC_int32_10bit.exit.5

idctRowCondDC_int32_10bit.exit.5:                 ; preds = %bb.g, %idctRowCondDC_int32_10bit.exit.4
  %.092.i.5 = phi i32 [ %i.qy, %bb.g ], [ %i.pp, %idctRowCondDC_int32_10bit.exit.4 ] ; 2 uses
  %.091.i.5 = phi i32 [ %i.rc, %bb.g ], [ %i.pr, %idctRowCondDC_int32_10bit.exit.4 ] ; 2 uses
  %.090.i.5 = phi i32 [ %i.re, %bb.g ], [ %i.ps, %idctRowCondDC_int32_10bit.exit.4 ] ; 2 uses
  %.089.i.5 = phi i32 [ %i.rg, %bb.g ], [ %i.pt, %idctRowCondDC_int32_10bit.exit.4 ] ; 2 uses
  %.088.i.5 = phi i32 [ %i.rk, %bb.g ], [ %i.qa, %idctRowCondDC_int32_10bit.exit.4 ] ; 2 uses
  %.087.i.5 = phi i32 [ %i.ro, %bb.g ], [ %i.qd, %idctRowCondDC_int32_10bit.exit.4 ] ; 2 uses
  %.086.i.5 = phi i32 [ %i.rs, %bb.g ], [ %i.qg, %idctRowCondDC_int32_10bit.exit.4 ] ; 2 uses
  %.0.i.5 = phi i32 [ %i.rw, %bb.g ], [ %i.qj, %idctRowCondDC_int32_10bit.exit.4 ] ; 2 uses
  %i.rx = add i32 %.088.i.5, %.092.i.5
  %i.ry = ashr i32 %i.rx, 13
  store i32 %i.ry, ptr %i.pi, align 8, !tbaa !19
  %i.rz = sub i32 %.092.i.5, %.088.i.5
  %i.sa = ashr i32 %i.rz, 13
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 188
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !19
  %i.sc = add i32 %.087.i.5, %.091.i.5
  %i.sd = ashr i32 %i.sc, 13
  store i32 %i.sd, ptr %i.pu, align 4, !tbaa !19
  %i.se = sub i32 %.091.i.5, %.087.i.5
  %i.sf = ashr i32 %i.se, 13
  store i32 %i.sf, ptr %i.qm, align 8, !tbaa !19
  %i.sg = add i32 %.086.i.5, %.090.i.5
  %i.sh = ashr i32 %i.sg, 13
  store i32 %i.sh, ptr %i.pm, align 8, !tbaa !19
  %i.si = sub i32 %.090.i.5, %.086.i.5
  %i.sj = ashr i32 %i.si, 13
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i32 %i.sj, ptr %i.sk, align 4, !tbaa !19
  %i.sl = add i32 %.0.i.5, %.089.i.5
  %i.sm = ashr i32 %i.sl, 13
  store i32 %i.sm, ptr %i.px, align 4, !tbaa !19
  %i.sn = sub i32 %.089.i.5, %.0.i.5
  %i.so = ashr i32 %i.sn, 13
  store i32 %i.so, ptr %i.qk, align 8, !tbaa !19
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !19
  %i.sr = shl i32 %i.sq, 14
  %i.ss = or disjoint i32 %i.sr, 4096             ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.su = load i32, ptr %i.st, align 8, !tbaa !19 ; 2 uses
  %i.sv = mul i32 %i.su, 21407                    ; 2 uses
  %i.sw = add i32 %i.ss, %i.sv                    ; 2 uses
  %i.sx = mul i32 %i.su, 8867                     ; 2 uses
  %i.sy = add i32 %i.ss, %i.sx                    ; 2 uses
  %i.sz = sub i32 %i.ss, %i.sx                    ; 2 uses
  %i.ta = sub i32 %i.ss, %i.sv                    ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !19 ; 4 uses
  %i.td = mul i32 %i.tc, 22725
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 204 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !19 ; 4 uses
  %i.tg = mul i32 %i.tf, 19265
  %i.th = add i32 %i.tg, %i.td                    ; 2 uses
  %i.ti = mul i32 %i.tc, 19265
  %i.tj = mul i32 %i.tf, -4520
  %i.tk = add i32 %i.tj, %i.ti                    ; 2 uses
  %i.tl = mul i32 %i.tc, 12873
  %i.tm = mul i32 %i.tf, -22725
  %i.tn = add i32 %i.tm, %i.tl                    ; 2 uses
  %i.to = mul i32 %i.tc, 4520
  %i.tp = mul i32 %i.tf, -12873
  %i.tq = add i32 %i.tp, %i.to                    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.ts = load i64, ptr %i.tr, align 8            ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.tu = load i64, ptr %i.tt, align 8            ; 3 uses
  %i.tv = or i64 %i.tu, %i.ts
  %.not.i.6 = icmp eq i64 %i.tv, 0
  br i1 %.not.i.6, label %idctRowCondDC_int32_10bit.exit.6, label %bb.h

bb.h:                                             ; preds = %idctRowCondDC_int32_10bit.exit.5
  %i.tw = lshr i64 %i.tu, 32
  %i.tx = trunc nuw i64 %i.tw to i32              ; 4 uses
  %i.ty = lshr i64 %i.ts, 32
  %i.tz = trunc nuw i64 %i.ty to i32              ; 4 uses
  %i.ua = trunc i64 %i.tu to i32                  ; 2 uses
  %i.ub = trunc i64 %i.ts to i32                  ; 2 uses
  %i.uc = shl i32 %i.ub, 14                       ; 2 uses
  %i.ud = mul i32 %i.ua, 8867                     ; 2 uses
  %i.ue = add i32 %i.uc, %i.sw
  %i.uf = add i32 %i.ue, %i.ud
  %i.ug = mul i32 %i.ub, -16384                   ; 2 uses
  %i.uh = mul i32 %i.ua, 21407                    ; 2 uses
  %i.ui = add i32 %i.ug, %i.sy
  %i.uj = sub i32 %i.ui, %i.uh
  %i.uk = add i32 %i.ug, %i.sz
  %i.ul = add i32 %i.uk, %i.uh
  %i.um = add i32 %i.uc, %i.ta
  %i.un = sub i32 %i.um, %i.ud
  %i.uo = mul i32 %i.tz, 12873
  %i.up = add i32 %i.uo, %i.th
  %i.uq = mul i32 %i.tx, 4520
  %i.ur = add i32 %i.up, %i.uq
  %i.us = mul i32 %i.tz, -22725
  %i.ut = add i32 %i.us, %i.tk
  %i.uu = mul i32 %i.tx, -12873
  %i.uv = add i32 %i.ut, %i.uu
  %i.uw = mul i32 %i.tz, 4520
  %i.ux = add i32 %i.uw, %i.tn
  %i.uy = mul i32 %i.tx, 19265
  %i.uz = add i32 %i.ux, %i.uy
  %i.va = mul i32 %i.tz, 19265
  %i.vb = add i32 %i.va, %i.tq
  %i.vc = mul i32 %i.tx, -22725
  %i.vd = add i32 %i.vb, %i.vc
  br label %idctRowCondDC_int32_10bit.exit.6

idctRowCondDC_int32_10bit.exit.6:                 ; preds = %bb.h, %idctRowCondDC_int32_10bit.exit.5
  %.092.i.6 = phi i32 [ %i.uf, %bb.h ], [ %i.sw, %idctRowCondDC_int32_10bit.exit.5 ] ; 2 uses
  %.091.i.6 = phi i32 [ %i.uj, %bb.h ], [ %i.sy, %idctRowCondDC_int32_10bit.exit.5 ] ; 2 uses
  %.090.i.6 = phi i32 [ %i.ul, %bb.h ], [ %i.sz, %idctRowCondDC_int32_10bit.exit.5 ] ; 2 uses
  %.089.i.6 = phi i32 [ %i.un, %bb.h ], [ %i.ta, %idctRowCondDC_int32_10bit.exit.5 ] ; 2 uses
  %.088.i.6 = phi i32 [ %i.ur, %bb.h ], [ %i.th, %idctRowCondDC_int32_10bit.exit.5 ] ; 2 uses
  %.087.i.6 = phi i32 [ %i.uv, %bb.h ], [ %i.tk, %idctRowCondDC_int32_10bit.exit.5 ] ; 2 uses
  %.086.i.6 = phi i32 [ %i.uz, %bb.h ], [ %i.tn, %idctRowCondDC_int32_10bit.exit.5 ] ; 2 uses
  %.0.i.6 = phi i32 [ %i.vd, %bb.h ], [ %i.tq, %idctRowCondDC_int32_10bit.exit.5 ] ; 2 uses
  %i.ve = add i32 %.088.i.6, %.092.i.6
  %i.vf = ashr i32 %i.ve, 13
  store i32 %i.vf, ptr %i.sp, align 8, !tbaa !19
  %i.vg = sub i32 %.092.i.6, %.088.i.6
  %i.vh = ashr i32 %i.vg, 13
  %i.vi = getelementptr inbounds nuw i8, ptr %2, i64 220
  store i32 %i.vh, ptr %i.vi, align 4, !tbaa !19
  %i.vj = add i32 %.087.i.6, %.091.i.6
  %i.vk = ashr i32 %i.vj, 13
  store i32 %i.vk, ptr %i.tb, align 4, !tbaa !19
  %i.vl = sub i32 %.091.i.6, %.087.i.6
  %i.vm = ashr i32 %i.vl, 13
  store i32 %i.vm, ptr %i.tt, align 8, !tbaa !19
  %i.vn = add i32 %.086.i.6, %.090.i.6
  %i.vo = ashr i32 %i.vn, 13
  store i32 %i.vo, ptr %i.st, align 8, !tbaa !19
  %i.vp = sub i32 %.090.i.6, %.086.i.6
  %i.vq = ashr i32 %i.vp, 13
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 212
  store i32 %i.vq, ptr %i.vr, align 4, !tbaa !19
  %i.vs = add i32 %.0.i.6, %.089.i.6
  %i.vt = ashr i32 %i.vs, 13
  store i32 %i.vt, ptr %i.te, align 4, !tbaa !19
  %i.vu = sub i32 %.089.i.6, %.0.i.6
  %i.vv = ashr i32 %i.vu, 13
  store i32 %i.vv, ptr %i.tr, align 8, !tbaa !19
  %i.vw = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !19
  %i.vy = shl i32 %i.vx, 14
  %i.vz = or disjoint i32 %i.vy, 4096             ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !19 ; 2 uses
  %i.wc = mul i32 %i.wb, 21407                    ; 2 uses
  %i.wd = add i32 %i.vz, %i.wc                    ; 2 uses
  %i.we = mul i32 %i.wb, 8867                     ; 2 uses
  %i.wf = add i32 %i.vz, %i.we                    ; 2 uses
  %i.wg = sub i32 %i.vz, %i.we                    ; 2 uses
  %i.wh = sub i32 %i.vz, %i.wc                    ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 228 ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !19 ; 4 uses
  %i.wk = mul i32 %i.wj, 22725
  %i.wl = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !19 ; 4 uses
  %i.wn = mul i32 %i.wm, 19265
  %i.wo = add i32 %i.wn, %i.wk                    ; 2 uses
  %i.wp = mul i32 %i.wj, 19265
  %i.wq = mul i32 %i.wm, -4520
  %i.wr = add i32 %i.wq, %i.wp                    ; 2 uses
  %i.ws = mul i32 %i.wj, 12873
  %i.wt = mul i32 %i.wm, -22725
  %i.wu = add i32 %i.wt, %i.ws                    ; 2 uses
  %i.wv = mul i32 %i.wj, 4520
  %i.ww = mul i32 %i.wm, -12873
  %i.wx = add i32 %i.ww, %i.wv                    ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.wz = load i64, ptr %i.wy, align 8            ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.xb = load i64, ptr %i.xa, align 8            ; 3 uses
  %i.xc = or i64 %i.xb, %i.wz
  %.not.i.7 = icmp eq i64 %i.xc, 0
  br i1 %.not.i.7, label %idctRowCondDC_int32_10bit.exit.7, label %bb.i

bb.i:                                             ; preds = %idctRowCondDC_int32_10bit.exit.6
  %i.xd = lshr i64 %i.xb, 32
  %i.xe = trunc nuw i64 %i.xd to i32              ; 4 uses
  %i.xf = lshr i64 %i.wz, 32
  %i.xg = trunc nuw i64 %i.xf to i32              ; 4 uses
  %i.xh = trunc i64 %i.xb to i32                  ; 2 uses
  %i.xi = trunc i64 %i.wz to i32                  ; 2 uses
  %i.xj = shl i32 %i.xi, 14                       ; 2 uses
  %i.xk = mul i32 %i.xh, 8867                     ; 2 uses
  %i.xl = add i32 %i.xj, %i.wd
  %i.xm = add i32 %i.xl, %i.xk
  %i.xn = mul i32 %i.xi, -16384                   ; 2 uses
  %i.xo = mul i32 %i.xh, 21407                    ; 2 uses
  %i.xp = add i32 %i.xn, %i.wf
  %i.xq = sub i32 %i.xp, %i.xo
  %i.xr = add i32 %i.xn, %i.wg
  %i.xs = add i32 %i.xr, %i.xo
  %i.xt = add i32 %i.xj, %i.wh
  %i.xu = sub i32 %i.xt, %i.xk
  %i.xv = mul i32 %i.xg, 12873
  %i.xw = add i32 %i.xv, %i.wo
  %i.xx = mul i32 %i.xe, 4520
  %i.xy = add i32 %i.xw, %i.xx
  %i.xz = mul i32 %i.xg, -22725
  %i.ya = add i32 %i.xz, %i.wr
  %i.yb = mul i32 %i.xe, -12873
  %i.yc = add i32 %i.ya, %i.yb
  %i.yd = mul i32 %i.xg, 4520
  %i.ye = add i32 %i.yd, %i.wu
  %i.yf = mul i32 %i.xe, 19265
  %i.yg = add i32 %i.ye, %i.yf
  %i.yh = mul i32 %i.xg, 19265
  %i.yi = add i32 %i.yh, %i.wx
  %i.yj = mul i32 %i.xe, -22725
  %i.yk = add i32 %i.yi, %i.yj
  br label %idctRowCondDC_int32_10bit.exit.7

idctRowCondDC_int32_10bit.exit.7:                 ; preds = %bb.i, %idctRowCondDC_int32_10bit.exit.6
  %.092.i.7 = phi i32 [ %i.xm, %bb.i ], [ %i.wd, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.091.i.7 = phi i32 [ %i.xq, %bb.i ], [ %i.wf, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.090.i.7 = phi i32 [ %i.xs, %bb.i ], [ %i.wg, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.089.i.7 = phi i32 [ %i.xu, %bb.i ], [ %i.wh, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.088.i.7 = phi i32 [ %i.xy, %bb.i ], [ %i.wo, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.087.i.7 = phi i32 [ %i.yc, %bb.i ], [ %i.wr, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.086.i.7 = phi i32 [ %i.yg, %bb.i ], [ %i.wu, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %.0.i.7 = phi i32 [ %i.yk, %bb.i ], [ %i.wx, %idctRowCondDC_int32_10bit.exit.6 ] ; 2 uses
  %i.yl = add i32 %.088.i.7, %.092.i.7
  %i.ym = ashr i32 %i.yl, 13
  store i32 %i.ym, ptr %i.vw, align 8, !tbaa !19
  %i.yn = sub i32 %.092.i.7, %.088.i.7
  %i.yo = ashr i32 %i.yn, 13
  %i.yp = getelementptr inbounds nuw i8, ptr %2, i64 252
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !19
  %i.yq = add i32 %.087.i.7, %.091.i.7
  %i.yr = ashr i32 %i.yq, 13
  store i32 %i.yr, ptr %i.wi, align 4, !tbaa !19
  %i.ys = sub i32 %.091.i.7, %.087.i.7
  %i.yt = ashr i32 %i.ys, 13
  store i32 %i.yt, ptr %i.xa, align 8, !tbaa !19
  %i.yu = add i32 %.086.i.7, %.090.i.7
  %i.yv = ashr i32 %i.yu, 13
  store i32 %i.yv, ptr %i.wa, align 8, !tbaa !19
  %i.yw = sub i32 %.090.i.7, %.086.i.7
  %i.yx = ashr i32 %i.yw, 13
  %i.yy = getelementptr inbounds nuw i8, ptr %2, i64 244
  store i32 %i.yx, ptr %i.yy, align 4, !tbaa !19
  %i.yz = add i32 %.0.i.7, %.089.i.7
  %i.za = ashr i32 %i.yz, 13
  store i32 %i.za, ptr %i.wl, align 4, !tbaa !19
  %i.zb = sub i32 %.089.i.7, %.0.i.7
  %i.zc = ashr i32 %i.zb, 13
  store i32 %i.zc, ptr %i.wy, align 8, !tbaa !19
  %i.zd = lshr i64 %1, 1                          ; 7 uses
  br label %.preheader

.preheader:                                       ; preds = %idctRowCondDC_int32_10bit.exit.7, %idctSparseColPut_int32_10bit.exit
  %indvars.iv = phi i64 [ 0, %idctRowCondDC_int32_10bit.exit.7 ], [ %indvars.iv.next, %idctSparseColPut_int32_10bit.exit ] ; 3 uses
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 8 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !19
  %i.zh = shl i32 %i.zg, 14
  %i.zi = add i32 %i.zh, 1048576
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 64
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !19
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !19
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zf, i64 96
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !19
  %i.zp = insertelement <4 x i32> poison, i32 %i.zk, i64 0
  %i.zq = shufflevector <4 x i32> %i.zp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zr = mul <4 x i32> %i.zq, <i32 -21407, i32 -8867, i32 8867, i32 21407>
  %i.zs = insertelement <4 x i32> poison, i32 %i.zi, i64 0
  %i.zt = shufflevector <4 x i32> %i.zs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zu = add <4 x i32> %i.zt, %i.zr              ; 2 uses
  %i.zv = insertelement <4 x i32> poison, i32 %i.zm, i64 0
  %i.zw = shufflevector <4 x i32> %i.zv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zx = mul <4 x i32> %i.zw, <i32 4520, i32 12873, i32 19265, i32 22725>
  %i.zy = insertelement <4 x i32> poison, i32 %i.zo, i64 0
  %i.zz = shufflevector <4 x i32> %i.zy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aaa = mul <4 x i32> %i.zz, <i32 -12873, i32 -22725, i32 -4520, i32 19265>
  %i.aab = add <4 x i32> %i.aaa, %i.zx            ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zf, i64 128
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !19 ; 2 uses
  %.not.i13 = icmp eq i32 %i.aad, 0
  br i1 %.not.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.aae = insertelement <4 x i32> poison, i32 %i.aad, i64 0
  %i.aaf = shufflevector <4 x i32> %i.aae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aag = mul <4 x i32> %i.aaf, <i32 16384, i32 -16384, i32 -16384, i32 16384>
  %i.aah = add <4 x i32> %i.aag, %i.zu
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader
  %i.aai = phi <4 x i32> [ %i.aah, %bb.j ], [ %i.zu, %.preheader ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zf, i64 160
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !19 ; 2 uses
  %.not115.i = icmp eq i32 %i.aak, 0
  br i1 %.not115.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aal = insertelement <4 x i32> poison, i32 %i.aak, i64 0
  %i.aam = shufflevector <4 x i32> %i.aal, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aan = mul <4 x i32> %i.aam, <i32 19265, i32 4520, i32 -22725, i32 12873>
  %i.aao = add <4 x i32> %i.aan, %i.aab
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aap = phi <4 x i32> [ %i.aao, %bb.l ], [ %i.aab, %bb.k ] ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zf, i64 192
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !19 ; 2 uses
  %.not116.i = icmp eq i32 %i.aar, 0
  br i1 %.not116.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aas = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %i.aat = shufflevector <4 x i32> %i.aas, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aau = mul <4 x i32> %i.aat, <i32 -8867, i32 21407, i32 -21407, i32 8867>
  %i.aav = add <4 x i32> %i.aau, %i.aai
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aaw = phi <4 x i32> [ %i.aav, %bb.n ], [ %i.aai, %bb.m ] ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zf, i64 224
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !19 ; 2 uses
  %.not117.i = icmp eq i32 %i.aay, 0
  br i1 %.not117.i, label %idctSparseColPut_int32_10bit.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aaz = insertelement <4 x i32> poison, i32 %i.aay, i64 0
  %i.aba = shufflevector <4 x i32> %i.aaz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abb = mul <4 x i32> %i.aba, <i32 -22725, i32 19265, i32 -12873, i32 4520>
  %i.abc = add <4 x i32> %i.abb, %i.aap
  br label %idctSparseColPut_int32_10bit.exit

idctSparseColPut_int32_10bit.exit:                ; preds = %bb.o, %bb.p
  %i.abd = phi <4 x i32> [ %i.abc, %bb.p ], [ %i.aap, %bb.o ] ; 2 uses
  %i.abe = add <4 x i32> %i.abd, %i.aaw
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %i.ze, i64 %i.zd ; 2 uses
  %i.abg = getelementptr inbounds nuw [2 x i8], ptr %i.abf, i64 %i.zd ; 2 uses
  %i.abh = getelementptr inbounds nuw [2 x i8], ptr %i.abg, i64 %i.zd ; 2 uses
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.abh, i64 %i.zd ; 2 uses
  %i.abj = sub <4 x i32> %i.aaw, %i.abd
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.abi, i64 %i.zd ; 2 uses
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.zd ; 2 uses
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.abl, i64 %i.zd
  %i.abn = shufflevector <4 x i32> %i.abe, <4 x i32> %i.abj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abo = ashr <8 x i32> %i.abn, splat (i32 21)
  %i.abp = trunc nsw <8 x i32> %i.abo to <8 x i16>
  %i.abq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.abp, <8 x i16> zeroinitializer) ; 8 uses
  %i.abr = extractelement <8 x i16> %i.abq, i64 3
  store i16 %i.abr, ptr %i.ze, align 2, !tbaa !10
  %i.abs = extractelement <8 x i16> %i.abq, i64 2
  store i16 %i.abs, ptr %i.abf, align 2, !tbaa !10
  %i.abt = extractelement <8 x i16> %i.abq, i64 1
  store i16 %i.abt, ptr %i.abg, align 2, !tbaa !10
  %i.abu = extractelement <8 x i16> %i.abq, i64 0
  store i16 %i.abu, ptr %i.abh, align 2, !tbaa !10
  %i.abv = extractelement <8 x i16> %i.abq, i64 4
  store i16 %i.abv, ptr %i.abi, align 2, !tbaa !10
  %i.abw = extractelement <8 x i16> %i.abq, i64 5
  store i16 %i.abw, ptr %i.abk, align 2, !tbaa !10
  %i.abx = extractelement <8 x i16> %i.abq, i64 6
  store i16 %i.abx, ptr %i.abl, align 2, !tbaa !10
  %i.aby = extractelement <8 x i16> %i.abq, i64 7
  store i16 %i.aby, ptr %i.abm, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.q, label %.preheader, !llvm.loop !18

bb.q:                                             ; preds = %idctSparseColPut_int32_10bit.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_simple_idct248_put(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
.preheader94.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load <8 x i16>, ptr %2, align 2, !tbaa !10 ; 2 uses
  %i.c = load <8 x i16>, ptr %i.a, align 2, !tbaa !10 ; 2 uses
  %i.d = add <8 x i16> %i.c, %i.b
  store <8 x i16> %i.d, ptr %2, align 2, !tbaa !10
  %i.e = sub <8 x i16> %i.b, %i.c
  store <8 x i16> %i.e, ptr %i.a, align 2, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = load <8 x i16>, ptr %i.f, align 2, !tbaa !10 ; 2 uses
  %i.i = load <8 x i16>, ptr %i.g, align 2, !tbaa !10 ; 2 uses
  %i.j = add <8 x i16> %i.i, %i.h
  store <8 x i16> %i.j, ptr %i.f, align 2, !tbaa !10
  %i.k = sub <8 x i16> %i.h, %i.i
  store <8 x i16> %i.k, ptr %i.g, align 2, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.n = load <8 x i16>, ptr %i.l, align 2, !tbaa !10 ; 2 uses
  %i.o = load <8 x i16>, ptr %i.m, align 2, !tbaa !10 ; 2 uses
  %i.p = add <8 x i16> %i.o, %i.n
  store <8 x i16> %i.p, ptr %i.l, align 2, !tbaa !10
  %i.q = sub <8 x i16> %i.n, %i.o
  store <8 x i16> %i.q, ptr %i.m, align 2, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.t = load <8 x i16>, ptr %i.r, align 2, !tbaa !10 ; 2 uses
  %i.u = load <8 x i16>, ptr %i.s, align 2, !tbaa !10 ; 2 uses
  %i.v = add <8 x i16> %i.u, %i.t
  store <8 x i16> %i.v, ptr %i.r, align 2, !tbaa !10
  %i.w = sub <8 x i16> %i.t, %i.u
  store <8 x i16> %i.w, ptr %i.s, align 2, !tbaa !10
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %2)
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.a)
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.ab)
  %i.ac = shl nsw i64 %1, 1                       ; 6 uses
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %1
  br label %bb.a

bb.a:                                             ; preds = %.preheader94.preheader, %bb.a
  %indvars.iv = phi i64 [ 0, %.preheader94.preheader ], [ %indvars.iv.next, %bb.a ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !10
  %i.ah = sext i16 %i.ag to i32                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ak = sext i16 %i.aj to i32                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.am = load i16, ptr %i.al, align 2, !tbaa !10
  %i.an = sext i16 %i.am to i32                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = sext i16 %i.ap to i32                   ; 2 uses
  %i.ar = add nsw i32 %i.an, %i.ah
  %i.as = shl nsw i32 %i.ar, 11
  %i.at = add nsw i32 %i.as, 65536                ; 2 uses
  %i.au = sub nsw i32 %i.ah, %i.an
  %i.av = shl nsw i32 %i.au, 11
  %i.aw = add nsw i32 %i.av, 65536                ; 2 uses
  %i.ax = mul nsw i32 %i.ak, 2676
  %i.ay = mul nsw i32 %i.aq, 1108
  %i.az = add nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.ba = mul nsw i32 %i.ak, 1108
  %.neg.i = mul nsw i32 %i.aq, -2676
  %i.bb = add nsw i32 %.neg.i, %i.ba              ; 2 uses
  %i.bc = add nsw i32 %i.at, %i.az
  %i.bd = ashr i32 %i.bc, 17
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %.0.i3435.i = tail call i32 @llvm.umin.i32(i32 %i.be, i32 255)
  %.0.i34.i = trunc nuw i32 %.0.i3435.i to i8
  store i8 %.0.i34.i, ptr %i.ae, align 1, !tbaa !11
  %i.bf = getelementptr inbounds i8, ptr %i.ae, i64 %i.ac ; 2 uses
  %i.bg = add nsw i32 %i.aw, %i.bb
  %i.bh = ashr i32 %i.bg, 17
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %.0.i3236.i = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 255)
  %.0.i32.i = trunc nuw i32 %.0.i3236.i to i8
  store i8 %.0.i32.i, ptr %i.bf, align 1, !tbaa !11
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.ac ; 2 uses
  %i.bk = sub nsw i32 %i.aw, %i.bb
  %i.bl = ashr i32 %i.bk, 17
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %.0.i3037.i = tail call i32 @llvm.umin.i32(i32 %i.bm, i32 255)
  %.0.i30.i = trunc nuw i32 %.0.i3037.i to i8
  store i8 %.0.i30.i, ptr %i.bj, align 1, !tbaa !11
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.ac
  %i.bo = sub nsw i32 %i.at, %i.az
  %i.bp = ashr i32 %i.bo, 17
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %.0.i38.i = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i38.i to i8
  store i8 %.0.i.i, ptr %i.bn, align 1, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !10
  %i.bu = sext i16 %i.bt to i32                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !10
  %i.bx = sext i16 %i.bw to i32                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !10
  %i.ca = sext i16 %i.bz to i32                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !10
  %i.cd = sext i16 %i.cc to i32                   ; 2 uses
  %i.ce = add nsw i32 %i.ca, %i.bu
  %i.cf = shl nsw i32 %i.ce, 11
  %i.cg = add nsw i32 %i.cf, 65536                ; 2 uses
  %i.ch = sub nsw i32 %i.bu, %i.ca
  %i.ci = shl nsw i32 %i.ch, 11
  %i.cj = add nsw i32 %i.ci, 65536                ; 2 uses
  %i.ck = mul nsw i32 %i.bx, 2676
  %i.cl = mul nsw i32 %i.cd, 1108
  %i.cm = add nsw i32 %i.cl, %i.ck                ; 2 uses
  %i.cn = mul nsw i32 %i.bx, 1108
  %.neg.i85 = mul nsw i32 %i.cd, -2676
  %i.co = add nsw i32 %.neg.i85, %i.cn            ; 2 uses
  %i.cp = add nsw i32 %i.cg, %i.cm
  %i.cq = ashr i32 %i.cp, 17
  %i.cr = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %.0.i3435.i86 = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 255)
  %.0.i34.i87 = trunc nuw i32 %.0.i3435.i86 to i8
  store i8 %.0.i34.i87, ptr %i.br, align 1, !tbaa !11
  %i.cs = getelementptr inbounds i8, ptr %i.br, i64 %i.ac ; 2 uses
  %i.ct = add nsw i32 %i.cj, %i.co
  %i.cu = ashr i32 %i.ct, 17
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %.0.i3236.i88 = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 255)
  %.0.i32.i89 = trunc nuw i32 %.0.i3236.i88 to i8
  store i8 %.0.i32.i89, ptr %i.cs, align 1, !tbaa !11
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.ac ; 2 uses
  %i.cx = sub nsw i32 %i.cj, %i.co
  %i.cy = ashr i32 %i.cx, 17
  %i.cz = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 0)
  %.0.i3037.i90 = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 255)
  %.0.i30.i91 = trunc nuw i32 %.0.i3037.i90 to i8
  store i8 %.0.i30.i91, ptr %i.cw, align 1, !tbaa !11
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.ac
  %i.db = sub nsw i32 %i.cg, %i.cm
  %i.dc = ashr i32 %i.db, 17
  %i.dd = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %.0.i38.i92 = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 255)
  %.0.i.i93 = trunc nuw i32 %.0.i38.i92 to i8
  store i8 %.0.i.i93, ptr %i.da, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.a, !llvm.loop !20

bb.b:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_simple_idct84_add(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
.preheader.preheader:
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call fastcc void @idctRowCondDC_int16_8bit(ptr noundef nonnull %i.c)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !10
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10
  %i.j = sext i16 %i.i to i32                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load i16, ptr %i.k, align 2, !tbaa !10
  %i.m = sext i16 %i.l to i32                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = load i16, ptr %i.n, align 2, !tbaa !10
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = add nsw i32 %i.m, %i.g
  %i.r = mul nsw i32 %i.q, 2896
  %i.s = add nsw i32 %i.r, 65536                  ; 2 uses
  %i.t = sub nsw i32 %i.g, %i.m
  %i.u = mul nsw i32 %i.t, 2896
  %i.v = add nsw i32 %i.u, 65536                  ; 2 uses
  %i.w = mul nsw i32 %i.j, 3784
  %i.x = mul nsw i32 %i.p, 1567
  %i.y = add nsw i32 %i.x, %i.w                   ; 2 uses
  %i.z = mul nsw i32 %i.j, 1567
  %.neg.i = mul nsw i32 %i.p, -3784
  %i.aa = add nsw i32 %.neg.i, %i.z               ; 2 uses
  %i.ab = load i8, ptr %i.d, align 1, !tbaa !11
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.s, %i.y
  %i.ae = ashr i32 %i.ad, 17
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %.0.i3839.i = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 255)
  %.0.i38.i = trunc nuw i32 %.0.i3839.i to i8
  store i8 %.0.i38.i, ptr %i.d, align 1, !tbaa !11
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.v, %i.aa
  %i.al = ashr i32 %i.ak, 17
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %.0.i3640.i = tail call i32 @llvm.umin.i32(i32 %i.an, i32 255)
  %.0.i36.i = trunc nuw i32 %.0.i3640.i to i8
  store i8 %.0.i36.i, ptr %i.ah, align 1, !tbaa !11
  %i.ao = getelementptr inbounds i8, ptr %i.ah, i64 %1 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.v, %i.aa
  %i.as = ashr i32 %i.ar, 17
  %i.at = add nsw i32 %i.as, %i.aq
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %.0.i3441.i = tail call i32 @llvm.umin.i32(i32 %i.au, i32 255)
  %.0.i34.i = trunc nuw i32 %.0.i3441.i to i8
  store i8 %.0.i34.i, ptr %i.ao, align 1, !tbaa !11
  %i.av = getelementptr inbounds i8, ptr %i.ao, i64 %1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = zext i8 %i.aw to i32
  %i.ay = sub nsw i32 %i.s, %i.y
  %i.az = ashr i32 %i.ay, 17
  %i.ba = add nsw i32 %i.az, %i.ax
  %i.bb = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 0)
  %.0.i42.i = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i42.i to i8
  store i8 %.0.i.i, ptr %i.av, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !21

bb.a:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_simple_idct48_add(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
.preheader.preheader:
  %i.a = load i16, ptr %2, align 2, !tbaa !10
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !10
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 3 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !10
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = add nsw i32 %i.h, %i.b
  %i.m = mul nsw i32 %i.l, 23170
  %i.n = add nsw i32 %i.m, 1024                   ; 2 uses
  %i.o = sub nsw i32 %i.b, %i.h
  %i.p = mul nsw i32 %i.o, 23170
  %i.q = add nsw i32 %i.p, 1024                   ; 2 uses
  %i.r = mul nsw i32 %i.e, 30274
  %i.s = mul nsw i32 %i.k, 12540
  %i.t = add nsw i32 %i.s, %i.r                   ; 2 uses
  %i.u = mul nsw i32 %i.e, 12540
  %.neg.i = mul nsw i32 %i.k, -30274
  %i.v = add nsw i32 %.neg.i, %i.u                ; 2 uses
  %i.w = add i32 %i.n, %i.t
  %i.x = lshr i32 %i.w, 11
  %i.y = trunc i32 %i.x to i16
  store i16 %i.y, ptr %2, align 2, !tbaa !10
  %i.z = add i32 %i.q, %i.v
  %i.aa = lshr i32 %i.z, 11
  %i.ab = trunc i32 %i.aa to i16
  store i16 %i.ab, ptr %i.c, align 2, !tbaa !10
  %i.ac = sub i32 %i.q, %i.v
  %i.ad = lshr i32 %i.ac, 11
  %i.ae = trunc i32 %i.ad to i16
  store i16 %i.ae, ptr %i.f, align 2, !tbaa !10
  %i.af = sub i32 %i.n, %i.t
  %i.ag = lshr i32 %i.af, 11
  %i.ah = trunc i32 %i.ag to i16
  store i16 %i.ah, ptr %i.i, align 2, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ak = sext i16 %i.aj to i32                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !10
  %i.an = sext i16 %i.am to i32                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = sext i16 %i.ap to i32                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 22 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !10
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = add nsw i32 %i.aq, %i.ak
  %i.av = mul nsw i32 %i.au, 23170
  %i.aw = add nsw i32 %i.av, 1024                 ; 2 uses
  %i.ax = sub nsw i32 %i.ak, %i.aq
  %i.ay = mul nsw i32 %i.ax, 23170
  %i.az = add nsw i32 %i.ay, 1024                 ; 2 uses
  %i.ba = mul nsw i32 %i.an, 30274
  %i.bb = mul nsw i32 %i.at, 12540
  %i.bc = add nsw i32 %i.bb, %i.ba                ; 2 uses
  %i.bd = mul nsw i32 %i.an, 12540
  %.neg.i.1 = mul nsw i32 %i.at, -30274
  %i.be = add nsw i32 %.neg.i.1, %i.bd            ; 2 uses
  %i.bf = add i32 %i.aw, %i.bc
  %i.bg = lshr i32 %i.bf, 11
  %i.bh = trunc i32 %i.bg to i16
  store i16 %i.bh, ptr %i.ai, align 2, !tbaa !10
  %i.bi = add i32 %i.az, %i.be
  %i.bj = lshr i32 %i.bi, 11
  %i.bk = trunc i32 %i.bj to i16
  store i16 %i.bk, ptr %i.al, align 2, !tbaa !10
  %i.bl = sub i32 %i.az, %i.be
  %i.bm = lshr i32 %i.bl, 11
  %i.bn = trunc i32 %i.bm to i16
  store i16 %i.bn, ptr %i.ao, align 2, !tbaa !10
  %i.bo = sub i32 %i.aw, %i.bc
  %i.bp = lshr i32 %i.bo, 11
  %i.bq = trunc i32 %i.bp to i16
  store i16 %i.bq, ptr %i.ar, align 2, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !10
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !10
  %i.bw = sext i16 %i.bv to i32                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !10
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 38 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !10
  %i.cc = sext i16 %i.cb to i32                   ; 2 uses
  %i.cd = add nsw i32 %i.bz, %i.bt
  %i.ce = mul nsw i32 %i.cd, 23170
  %i.cf = add nsw i32 %i.ce, 1024                 ; 2 uses
  %i.cg = sub nsw i32 %i.bt, %i.bz
  %i.ch = mul nsw i32 %i.cg, 23170
  %i.ci = add nsw i32 %i.ch, 1024                 ; 2 uses
  %i.cj = mul nsw i32 %i.bw, 30274
  %i.ck = mul nsw i32 %i.cc, 12540
  %i.cl = add nsw i32 %i.ck, %i.cj                ; 2 uses
  %i.cm = mul nsw i32 %i.bw, 12540
  %.neg.i.2 = mul nsw i32 %i.cc, -30274
  %i.cn = add nsw i32 %.neg.i.2, %i.cm            ; 2 uses
  %i.co = add i32 %i.cf, %i.cl
  %i.cp = lshr i32 %i.co, 11
  %i.cq = trunc i32 %i.cp to i16
  store i16 %i.cq, ptr %i.br, align 2, !tbaa !10
  %i.cr = add i32 %i.ci, %i.cn
  %i.cs = lshr i32 %i.cr, 11
  %i.ct = trunc i32 %i.cs to i16
  store i16 %i.ct, ptr %i.bu, align 2, !tbaa !10
  %i.cu = sub i32 %i.ci, %i.cn
  %i.cv = lshr i32 %i.cu, 11
  %i.cw = trunc i32 %i.cv to i16
  store i16 %i.cw, ptr %i.bx, align 2, !tbaa !10
  %i.cx = sub i32 %i.cf, %i.cl
  %i.cy = lshr i32 %i.cx, 11
  %i.cz = trunc i32 %i.cy to i16
  store i16 %i.cz, ptr %i.ca, align 2, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !10
  %i.dc = sext i16 %i.db to i32                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 50 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !10
  %i.df = sext i16 %i.de to i32                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !10
  %i.di = sext i16 %i.dh to i32                   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 54 ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !10
  %i.dl = sext i16 %i.dk to i32                   ; 2 uses
  %i.dm = add nsw i32 %i.di, %i.dc
  %i.dn = mul nsw i32 %i.dm, 23170
  %i.do = add nsw i32 %i.dn, 1024                 ; 2 uses
  %i.dp = sub nsw i32 %i.dc, %i.di
  %i.dq = mul nsw i32 %i.dp, 23170
  %i.dr = add nsw i32 %i.dq, 1024                 ; 2 uses
  %i.ds = mul nsw i32 %i.df, 30274
  %i.dt = mul nsw i32 %i.dl, 12540
  %i.du = add nsw i32 %i.dt, %i.ds                ; 2 uses
  %i.dv = mul nsw i32 %i.df, 12540
  %.neg.i.3 = mul nsw i32 %i.dl, -30274
  %i.dw = add nsw i32 %.neg.i.3, %i.dv            ; 2 uses
  %i.dx = add i32 %i.do, %i.du
  %i.dy = lshr i32 %i.dx, 11
  %i.dz = trunc i32 %i.dy to i16
  store i16 %i.dz, ptr %i.da, align 2, !tbaa !10
  %i.ea = add i32 %i.dr, %i.dw
  %i.eb = lshr i32 %i.ea, 11
  %i.ec = trunc i32 %i.eb to i16
  store i16 %i.ec, ptr %i.dd, align 2, !tbaa !10
  %i.ed = sub i32 %i.dr, %i.dw
  %i.ee = lshr i32 %i.ed, 11
  %i.ef = trunc i32 %i.ee to i16
  store i16 %i.ef, ptr %i.dg, align 2, !tbaa !10
  %i.eg = sub i32 %i.do, %i.du
  %i.eh = lshr i32 %i.eg, 11
  %i.ei = trunc i32 %i.eh to i16
  store i16 %i.ei, ptr %i.dj, align 2, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !10
  %i.el = sext i16 %i.ek to i32                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 66 ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !10
  %i.eo = sext i16 %i.en to i32                   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !10
  %i.er = sext i16 %i.eq to i32                   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 70 ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !10
  %i.eu = sext i16 %i.et to i32                   ; 2 uses
  %i.ev = add nsw i32 %i.er, %i.el
  %i.ew = mul nsw i32 %i.ev, 23170
  %i.ex = add nsw i32 %i.ew, 1024                 ; 2 uses
  %i.ey = sub nsw i32 %i.el, %i.er
  %i.ez = mul nsw i32 %i.ey, 23170
  %i.fa = add nsw i32 %i.ez, 1024                 ; 2 uses
  %i.fb = mul nsw i32 %i.eo, 30274
  %i.fc = mul nsw i32 %i.eu, 12540
  %i.fd = add nsw i32 %i.fc, %i.fb                ; 2 uses
  %i.fe = mul nsw i32 %i.eo, 12540
  %.neg.i.4 = mul nsw i32 %i.eu, -30274
  %i.ff = add nsw i32 %.neg.i.4, %i.fe            ; 2 uses
  %i.fg = add i32 %i.ex, %i.fd
  %i.fh = lshr i32 %i.fg, 11
  %i.fi = trunc i32 %i.fh to i16
  store i16 %i.fi, ptr %i.ej, align 2, !tbaa !10
  %i.fj = add i32 %i.fa, %i.ff
  %i.fk = lshr i32 %i.fj, 11
  %i.fl = trunc i32 %i.fk to i16
  store i16 %i.fl, ptr %i.em, align 2, !tbaa !10
  %i.fm = sub i32 %i.fa, %i.ff
end_hunk_0
begin_hunk_1_@ff_simple_idct44_add:.preheader.preheader
  store i8 %.0.i.i, ptr %i.ft, align 1, !tbaa !11
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.gb = load i16, ptr %i.c, align 2, !tbaa !10
  %i.gc = sext i16 %i.gb to i32                   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !10
  %i.gf = sext i16 %i.ge to i32                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !10
  %i.gi = sext i16 %i.gh to i32                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !10
  %i.gl = sext i16 %i.gk to i32                   ; 2 uses
  %i.gm = add nsw i32 %i.gi, %i.gc
  %i.gn = mul nsw i32 %i.gm, 2896
  %i.go = add nsw i32 %i.gn, 65536                ; 2 uses
  %i.gp = sub nsw i32 %i.gc, %i.gi
  %i.gq = mul nsw i32 %i.gp, 2896
  %i.gr = add nsw i32 %i.gq, 65536                ; 2 uses
  %i.gs = mul nsw i32 %i.gf, 3784
  %i.gt = mul nsw i32 %i.gl, 1567
  %i.gu = add nsw i32 %i.gt, %i.gs                ; 2 uses
  %i.gv = mul nsw i32 %i.gf, 1567
  %.neg.i10.1 = mul nsw i32 %i.gl, -3784
  %i.gw = add nsw i32 %.neg.i10.1, %i.gv          ; 2 uses
  %i.gx = load i8, ptr %i.ga, align 1, !tbaa !11
  %i.gy = zext i8 %i.gx to i32
  %i.gz = add nsw i32 %i.go, %i.gu
  %i.ha = ashr i32 %i.gz, 17
  %i.hb = add nsw i32 %i.ha, %i.gy
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %.0.i3839.i.1 = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 255)
  %.0.i38.i.1 = trunc nuw i32 %.0.i3839.i.1 to i8
  store i8 %.0.i38.i.1, ptr %i.ga, align 1, !tbaa !11
  %i.hd = getelementptr inbounds i8, ptr %i.ga, i64 %1 ; 3 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !11
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nsw i32 %i.gr, %i.gw
  %i.hh = ashr i32 %i.hg, 17
  %i.hi = add nsw i32 %i.hh, %i.hf
  %i.hj = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %.0.i3640.i.1 = tail call i32 @llvm.umin.i32(i32 %i.hj, i32 255)
  %.0.i36.i.1 = trunc nuw i32 %.0.i3640.i.1 to i8
  store i8 %.0.i36.i.1, ptr %i.hd, align 1, !tbaa !11
  %i.hk = getelementptr inbounds i8, ptr %i.hd, i64 %1 ; 3 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !11
  %i.hm = zext i8 %i.hl to i32
  %i.hn = sub nsw i32 %i.gr, %i.gw
  %i.ho = ashr i32 %i.hn, 17
  %i.hp = add nsw i32 %i.ho, %i.hm
  %i.hq = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 0)
  %.0.i3441.i.1 = tail call i32 @llvm.umin.i32(i32 %i.hq, i32 255)
  %.0.i34.i.1 = trunc nuw i32 %.0.i3441.i.1 to i8
  store i8 %.0.i34.i.1, ptr %i.hk, align 1, !tbaa !11
  %i.hr = getelementptr inbounds i8, ptr %i.hk, i64 %1 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !11
  %i.ht = zext i8 %i.hs to i32
  %i.hu = sub nsw i32 %i.go, %i.gu
  %i.hv = ashr i32 %i.hu, 17
  %i.hw = add nsw i32 %i.hv, %i.ht
  %i.hx = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 0)
  %.0.i42.i.1 = tail call i32 @llvm.umin.i32(i32 %i.hx, i32 255)
  %.0.i.i.1 = trunc nuw i32 %.0.i42.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.hr, align 1, !tbaa !11
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.hz = load i16, ptr %i.f, align 2, !tbaa !10
  %i.ia = sext i16 %i.hz to i32                   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !10
  %i.id = sext i16 %i.ic to i32                   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !10
  %i.ig = sext i16 %i.if to i32                   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !10
  %i.ij = sext i16 %i.ii to i32                   ; 2 uses
  %i.ik = add nsw i32 %i.ig, %i.ia
  %i.il = mul nsw i32 %i.ik, 2896
  %i.im = add nsw i32 %i.il, 65536                ; 2 uses
  %i.in = sub nsw i32 %i.ia, %i.ig
  %i.io = mul nsw i32 %i.in, 2896
  %i.ip = add nsw i32 %i.io, 65536                ; 2 uses
  %i.iq = mul nsw i32 %i.id, 3784
  %i.ir = mul nsw i32 %i.ij, 1567
  %i.is = add nsw i32 %i.ir, %i.iq                ; 2 uses
  %i.it = mul nsw i32 %i.id, 1567
  %.neg.i10.2 = mul nsw i32 %i.ij, -3784
  %i.iu = add nsw i32 %.neg.i10.2, %i.it          ; 2 uses
  %i.iv = load i8, ptr %i.hy, align 1, !tbaa !11
  %i.iw = zext i8 %i.iv to i32
  %i.ix = add nsw i32 %i.im, %i.is
  %i.iy = ashr i32 %i.ix, 17
  %i.iz = add nsw i32 %i.iy, %i.iw
  %i.ja = tail call i32 @llvm.smax.i32(i32 %i.iz, i32 0)
  %.0.i3839.i.2 = tail call i32 @llvm.umin.i32(i32 %i.ja, i32 255)
  %.0.i38.i.2 = trunc nuw i32 %.0.i3839.i.2 to i8
  store i8 %.0.i38.i.2, ptr %i.hy, align 1, !tbaa !11
  %i.jb = getelementptr inbounds i8, ptr %i.hy, i64 %1 ; 3 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !11
  %i.jd = zext i8 %i.jc to i32
  %i.je = add nsw i32 %i.ip, %i.iu
  %i.jf = ashr i32 %i.je, 17
  %i.jg = add nsw i32 %i.jf, %i.jd
  %i.jh = tail call i32 @llvm.smax.i32(i32 %i.jg, i32 0)
  %.0.i3640.i.2 = tail call i32 @llvm.umin.i32(i32 %i.jh, i32 255)
  %.0.i36.i.2 = trunc nuw i32 %.0.i3640.i.2 to i8
  store i8 %.0.i36.i.2, ptr %i.jb, align 1, !tbaa !11
  %i.ji = getelementptr inbounds i8, ptr %i.jb, i64 %1 ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !11
  %i.jk = zext i8 %i.jj to i32
  %i.jl = sub nsw i32 %i.ip, %i.iu
  %i.jm = ashr i32 %i.jl, 17
  %i.jn = add nsw i32 %i.jm, %i.jk
  %i.jo = tail call i32 @llvm.smax.i32(i32 %i.jn, i32 0)
  %.0.i3441.i.2 = tail call i32 @llvm.umin.i32(i32 %i.jo, i32 255)
  %.0.i34.i.2 = trunc nuw i32 %.0.i3441.i.2 to i8
  store i8 %.0.i34.i.2, ptr %i.ji, align 1, !tbaa !11
  %i.jp = getelementptr inbounds i8, ptr %i.ji, i64 %1 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !11
  %i.jr = zext i8 %i.jq to i32
  %i.js = sub nsw i32 %i.im, %i.is
  %i.jt = ashr i32 %i.js, 17
  %i.ju = add nsw i32 %i.jt, %i.jr
  %i.jv = tail call i32 @llvm.smax.i32(i32 %i.ju, i32 0)
  %.0.i42.i.2 = tail call i32 @llvm.umin.i32(i32 %i.jv, i32 255)
  %.0.i.i.2 = trunc nuw i32 %.0.i42.i.2 to i8
  store i8 %.0.i.i.2, ptr %i.jp, align 1, !tbaa !11
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.jx = load i16, ptr %i.i, align 2, !tbaa !10
  %i.jy = sext i16 %i.jx to i32                   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !10
  %i.kb = sext i16 %i.ka to i32                   ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !10
  %i.ke = sext i16 %i.kd to i32                   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !10
  %i.kh = sext i16 %i.kg to i32                   ; 2 uses
  %i.ki = add nsw i32 %i.ke, %i.jy
  %i.kj = mul nsw i32 %i.ki, 2896
  %i.kk = add nsw i32 %i.kj, 65536                ; 2 uses
  %i.kl = sub nsw i32 %i.jy, %i.ke
  %i.km = mul nsw i32 %i.kl, 2896
  %i.kn = add nsw i32 %i.km, 65536                ; 2 uses
  %i.ko = mul nsw i32 %i.kb, 3784
  %i.kp = mul nsw i32 %i.kh, 1567
  %i.kq = add nsw i32 %i.kp, %i.ko                ; 2 uses
  %i.kr = mul nsw i32 %i.kb, 1567
  %.neg.i10.3 = mul nsw i32 %i.kh, -3784
  %i.ks = add nsw i32 %.neg.i10.3, %i.kr          ; 2 uses
  %i.kt = load i8, ptr %i.jw, align 1, !tbaa !11
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add nsw i32 %i.kk, %i.kq
  %i.kw = ashr i32 %i.kv, 17
  %i.kx = add nsw i32 %i.kw, %i.ku
  %i.ky = tail call i32 @llvm.smax.i32(i32 %i.kx, i32 0)
  %.0.i3839.i.3 = tail call i32 @llvm.umin.i32(i32 %i.ky, i32 255)
  %.0.i38.i.3 = trunc nuw i32 %.0.i3839.i.3 to i8
  store i8 %.0.i38.i.3, ptr %i.jw, align 1, !tbaa !11
  %i.kz = getelementptr inbounds i8, ptr %i.jw, i64 %1 ; 3 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !11
  %i.lb = zext i8 %i.la to i32
  %i.lc = add nsw i32 %i.kn, %i.ks
  %i.ld = ashr i32 %i.lc, 17
  %i.le = add nsw i32 %i.ld, %i.lb
  %i.lf = tail call i32 @llvm.smax.i32(i32 %i.le, i32 0)
  %.0.i3640.i.3 = tail call i32 @llvm.umin.i32(i32 %i.lf, i32 255)
  %.0.i36.i.3 = trunc nuw i32 %.0.i3640.i.3 to i8
  store i8 %.0.i36.i.3, ptr %i.kz, align 1, !tbaa !11
  %i.lg = getelementptr inbounds i8, ptr %i.kz, i64 %1 ; 3 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !11
  %i.li = zext i8 %i.lh to i32
  %i.lj = sub nsw i32 %i.kn, %i.ks
  %i.lk = ashr i32 %i.lj, 17
  %i.ll = add nsw i32 %i.lk, %i.li
  %i.lm = tail call i32 @llvm.smax.i32(i32 %i.ll, i32 0)
  %.0.i3441.i.3 = tail call i32 @llvm.umin.i32(i32 %i.lm, i32 255)
  %.0.i34.i.3 = trunc nuw i32 %.0.i3441.i.3 to i8
  store i8 %.0.i34.i.3, ptr %i.lg, align 1, !tbaa !11
  %i.ln = getelementptr inbounds i8, ptr %i.lg, i64 %1 ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !11
  %i.lp = zext i8 %i.lo to i32
  %i.lq = sub nsw i32 %i.kk, %i.kq
  %i.lr = ashr i32 %i.lq, 17
  %i.ls = add nsw i32 %i.lr, %i.lp
  %i.lt = tail call i32 @llvm.smax.i32(i32 %i.ls, i32 0)
  %.0.i42.i.3 = tail call i32 @llvm.umin.i32(i32 %i.lt, i32 255)
  %.0.i.i.3 = trunc nuw i32 %.0.i42.i.3 to i8
  store i8 %.0.i.i.3, ptr %i.ln, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
end_hunk_1
