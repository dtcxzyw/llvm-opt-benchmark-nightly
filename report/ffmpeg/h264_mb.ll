Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_mb?download=true
inline.NumInlined: 27
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 48
begin_hunk_0_@ff_h264_hl_decode_mb:bb.a
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @hl_decode_mb_444_simple_8(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @hl_decode_mb_complex(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 30088
  %i.w = load i32, ptr %i.v, align 8, !tbaa !76
  %.not21 = icmp eq i32 %i.w, 0
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @hl_decode_mb_simple_16(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @hl_decode_mb_simple_8(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.g, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @hl_decode_mb_444_complex(ptr noundef %0, ptr noundef initializes((21008, 21024)) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %i.c = alloca [3 x ptr], align 16               ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 21024 ; 27 uses
  %i.e = load i32, ptr %i.d, align 16, !tbaa !77  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 21028 ; 12 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21032 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28504 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28608 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = sext i32 %i.i to i64                     ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !69
  %.fr318 = freeze i32 %i.o                       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30648
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34080
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !79
  %.not261 = icmp eq i32 %i.w, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not85.i = phi i1 [ true, %bb.a ], [ %.not261, %bb.b ] ; 17 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 30088 ; 29 uses
  %i.y = sext i32 %i.g to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20992 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !76  ; 2 uses
  %i.ae = shl i32 %i.e, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i64, ptr %i.z, align 16, !tbaa !82 ; 3 uses
  %i.ah = mul nsw i64 %i.ag, %i.y
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = shl nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 %i.aj ; 5 uses
  store ptr %i.ak, ptr %i.c, align 16, !tbaa !81
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.am = shl i32 %i.e, 2
  %i.an = and i32 %i.am, 12
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ag, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %i.ap
  %i.ar = shl i32 64, %i.ad
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  tail call void %i.al(ptr noundef %i.at, i64 noundef %i.ag, i32 noundef 4) #7
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81
  %i.ax = load i32, ptr %i.x, align 8, !tbaa !76  ; 2 uses
  %i.ay = shl i32 %i.e, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = load i64, ptr %i.z, align 16, !tbaa !82 ; 3 uses
  %i.bb = mul nsw i64 %i.ba, %i.y
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = shl nsw i64 %i.bc, 4
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 %i.bd ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !81
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.bh = load i32, ptr %i.d, align 16, !tbaa !77
  %i.bi = shl i32 %i.bh, 2
  %i.bj = and i32 %i.bi, 12
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = mul nsw i64 %i.ba, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.be, i64 %i.bl
  %i.bn = shl i32 64, %i.ax
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 %i.bo
  tail call void %i.bg(ptr noundef %i.bp, i64 noundef %i.ba, i32 noundef 4) #7
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !81
  %i.bt = load i32, ptr %i.x, align 8, !tbaa !76  ; 2 uses
  %i.bu = shl i32 %i.e, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = load i64, ptr %i.z, align 16, !tbaa !82 ; 3 uses
  %i.bx = mul nsw i64 %i.bw, %i.y
  %i.by = add nsw i64 %i.bx, %i.bv
  %i.bz = shl nsw i64 %i.by, 4
  %i.ca = getelementptr inbounds i8, ptr %i.bs, i64 %i.bz ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 16, !tbaa !81
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.cd = load i32, ptr %i.d, align 16, !tbaa !77
  %i.ce = shl i32 %i.cd, 2
  %i.cf = and i32 %i.ce, 12
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = mul nsw i64 %i.bw, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ca, i64 %i.ch
  %i.cj = shl i32 64, %i.bt
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %i.ck
  tail call void %i.cc(ptr noundef %i.cl, i64 noundef %i.bw, i32 noundef 4) #7
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 22648 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !84
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 31080
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !85
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.m
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !86
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 21064 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !87 ; 3 uses
  %.not = icmp eq i32 %i.ct, 0
  %i.cu = load i64, ptr %i.z, align 16, !tbaa !82 ; 5 uses
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cv = shl nsw i64 %i.cu, 1                    ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 21016
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !88
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 21008
  store i64 %i.cv, ptr %i.cx, align 16, !tbaa !89
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 30840 ; 4 uses
  %i.cz = and i32 %i.g, 1
  %.not139 = icmp eq i32 %i.cz, 0
  br i1 %.not139, label %.loopexit283, label %.preheader282

.preheader282:                                    ; preds = %bb.d
  %.neg = mul i64 %i.cu, -15                      ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %i.ak, i64 %.neg ; 2 uses
  store ptr %i.da, ptr %i.c, align 16, !tbaa !81
  %i.db = getelementptr inbounds i8, ptr %i.be, i64 %.neg ; 2 uses
  store ptr %i.db, ptr %i.bf, align 8, !tbaa !81
  %i.dc = getelementptr inbounds i8, ptr %i.ca, i64 %.neg ; 2 uses
  store ptr %i.dc, ptr %i.cb, align 16, !tbaa !81
  br label %.loopexit283

.loopexit283:                                     ; preds = %.preheader282, %bb.d
  %i.dd = phi ptr [ %i.dc, %.preheader282 ], [ %i.ca, %bb.d ] ; 4 uses
  %i.de = phi ptr [ %i.db, %.preheader282 ], [ %i.be, %bb.d ] ; 4 uses
  %i.df = phi ptr [ %i.da, %.preheader282 ], [ %i.ak, %bb.d ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 31064
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !90
  %.not140 = icmp eq i32 %i.dh, 0
  br i1 %.not140, label %.loopexit281, label %.preheader280

.preheader280:                                    ; preds = %.loopexit283
  %i.di = load i32, ptr %i.cm, align 8, !tbaa !84 ; 2 uses
  %.not317 = icmp eq i32 %i.di, 0
  br i1 %.not317, label %.loopexit281, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader280
  %i.dj = and i32 %.fr318, 8
  %.not147 = icmp eq i32 %i.dj, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %wide.trip.count337 = zext i32 %i.di to i64     ; 2 uses
  br i1 %.not147, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit279.us
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %.loopexit279.us ], [ 0, %.lr.ph ] ; 3 uses
  %indvars.iv334.tr = trunc nuw nsw i64 %indvars.iv334 to i32
  %i.dl = shl nuw nsw i32 %indvars.iv334.tr, 1
  %i.dm = shl i32 12288, %i.dl
  %i.dn = and i32 %i.dm, %.fr318
  %.not146.us = icmp eq i32 %i.dn, 0
  br i1 %.not146.us, label %.loopexit279.us, label %.preheader278.us

.preheader278.us:                                 ; preds = %.lr.ph.split.us
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %indvars.iv334 ; 8 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !86  ; 2 uses
  %i.dr = icmp sgt i8 %i.dq, -1
  br i1 %i.dr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader278.us
  %narrow.us = add nuw i8 %i.dq, 16
  %i.ds = zext i8 %narrow.us to i32
  %i.dt = load i32, ptr %i.f, align 4, !tbaa !78
  %i.du = and i32 %i.dt, 1
  %i.dv = xor i32 %i.du, %i.ds
  %i.dw = trunc nuw nsw i32 %i.dv to i16
  %i.dx = mul nuw i16 %i.dw, 257                  ; 2 uses
  store i16 %i.dx, ptr %i.dp, align 2, !tbaa !91
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader278.us
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 14 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !86  ; 2 uses
  %i.eb = icmp sgt i8 %i.ea, -1
  br i1 %i.eb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %narrow.us.1 = add nuw i8 %i.ea, 16
  %i.ec = zext i8 %narrow.us.1 to i32
  %i.ed = load i32, ptr %i.f, align 4, !tbaa !78
  %i.ee = and i32 %i.ed, 1
  %i.ef = xor i32 %i.ee, %i.ec
  %i.eg = trunc nuw nsw i32 %i.ef to i16
  %i.eh = mul nuw i16 %i.eg, 257                  ; 2 uses
  store i16 %i.eh, ptr %i.dz, align 2, !tbaa !91
  %i.ei = getelementptr inbounds nuw i8, ptr %i.do, i64 22
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !91
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 28 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !86  ; 2 uses
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %narrow.us.2 = add nuw i8 %i.ek, 16
  %i.em = zext i8 %narrow.us.2 to i32
  %i.en = load i32, ptr %i.f, align 4, !tbaa !78
  %i.eo = and i32 %i.en, 1
  %i.ep = xor i32 %i.eo, %i.em
  %i.eq = trunc nuw nsw i32 %i.ep to i16
  %i.er = mul nuw i16 %i.eq, 257                  ; 2 uses
  store i16 %i.er, ptr %i.ej, align 2, !tbaa !91
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  store i16 %i.er, ptr %i.es, align 2, !tbaa !91
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 30 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !86  ; 2 uses
  %i.ev = icmp sgt i8 %i.eu, -1
  br i1 %i.ev, label %bb.k, label %.loopexit279.us

bb.k:                                             ; preds = %bb.j
  %narrow.us.3 = add nuw i8 %i.eu, 16
  %i.ew = zext i8 %narrow.us.3 to i32
  %i.ex = load i32, ptr %i.f, align 4, !tbaa !78
  %i.ey = and i32 %i.ex, 1
  %i.ez = xor i32 %i.ey, %i.ew
  %i.fa = trunc nuw nsw i32 %i.ez to i16
  %i.fb = mul nuw i16 %i.fa, 257                  ; 2 uses
  store i16 %i.fb, ptr %i.et, align 2, !tbaa !91
  %i.fc = getelementptr inbounds nuw i8, ptr %i.do, i64 38
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !91
  br label %.loopexit279.us

.loopexit279.us:                                  ; preds = %bb.j, %bb.k, %.lr.ph.split.us
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count337
  br i1 %exitcond338.not, label %.loopexit281, label %.lr.ph.split.us, !llvm.loop !92

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.fd = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.fe = shl i32 12288, %i.fd
  %i.ff = and i32 %i.fe, %.fr318
  %.not146 = icmp eq i32 %i.ff, 0
  br i1 %.not146, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 29068 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !86
  %i.fj = sext i8 %i.fi to i32
  %i.fk = add nsw i32 %i.fj, 16
  %i.fl = load i32, ptr %i.f, align 4, !tbaa !78
  %i.fm = and i32 %i.fl, 1
  %i.fn = xor i32 %i.fk, %i.fm
  %i.fo = mul i32 %i.fn, 16843009                 ; 4 uses
  store i32 %i.fo, ptr %i.fh, align 4, !tbaa !69
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 29076
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !69
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 29084
  store i32 %i.fo, ptr %i.fq, align 4, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 29092
  store i32 %i.fo, ptr %i.fr, align 4, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count337
  br i1 %exitcond.not, label %.loopexit281, label %.lr.ph.split, !llvm.loop !92

bb.n:                                             ; preds = %bb.c
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 21016
  store i64 %i.cu, ptr %i.fs, align 8, !tbaa !88
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 21008
  store i64 %i.cu, ptr %i.ft, align 16, !tbaa !89
  br label %.loopexit281

.loopexit281:                                     ; preds = %bb.m, %.loopexit279.us, %.preheader280, %.loopexit283, %bb.n
  %i.fu = phi ptr [ %i.ca, %bb.n ], [ %i.dd, %.loopexit283 ], [ %i.dd, %.preheader280 ], [ %i.dd, %.loopexit279.us ], [ %i.dd, %bb.m ] ; 56 uses
  %i.fv = phi ptr [ %i.be, %bb.n ], [ %i.de, %.loopexit283 ], [ %i.de, %.preheader280 ], [ %i.de, %.loopexit279.us ], [ %i.de, %bb.m ] ; 55 uses
  %i.fw = phi ptr [ %i.ak, %bb.n ], [ %i.df, %.loopexit283 ], [ %i.df, %.preheader280 ], [ %i.df, %.loopexit279.us ], [ %i.df, %bb.m ] ; 70 uses
  %.0137.in = phi i64 [ %i.cu, %bb.n ], [ %i.cv, %.loopexit283 ], [ %i.cv, %.preheader280 ], [ %i.cv, %.loopexit279.us ], [ %i.cv, %bb.m ] ; 5 uses
  %.0131 = phi ptr [ %i.p, %bb.n ], [ %i.cy, %.loopexit283 ], [ %i.cy, %.preheader280 ], [ %i.cy, %.loopexit279.us ], [ %i.cy, %bb.m ] ; 80 uses
  %.0137 = trunc i64 %.0137.in to i32             ; 88 uses
  %i.fx = and i32 %.fr318, 4
  %.not141 = icmp eq i32 %i.fx, 0
  br i1 %.not141, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.loopexit281
  %i.fy = load i32, ptr %i.x, align 8, !tbaa !76
  %.not145 = icmp eq i32 %i.fy, 0
  br i1 %.not145, label %.preheader274, label %bb.p

.preheader274:                                    ; preds = %bb.o
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 28560 ; 48 uses
  %sext505 = shl i64 %.0137.in, 32                ; 4 uses
  %i.ga = ashr exact i64 %sext505, 32             ; 14 uses
  %i.gb = load ptr, ptr %i.fz, align 16, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fw, ptr noundef nonnull align 1 dereferenceable(16) %i.gb, i64 16, i1 false)
  %i.gc = getelementptr inbounds i8, ptr %i.fw, i64 %i.ga
  %i.gd = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gc, ptr noundef nonnull align 1 dereferenceable(16) %i.ge, i64 16, i1 false)
  %i.gf = ashr exact i64 %sext505, 31             ; 3 uses
  %i.gg = getelementptr inbounds i8, ptr %i.fw, i64 %i.gf
  %i.gh = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gg, ptr noundef nonnull align 1 dereferenceable(16) %i.gi, i64 16, i1 false)
  %i.gj = mul nsw i64 %i.ga, 3                    ; 3 uses
  %i.gk = getelementptr inbounds i8, ptr %i.fw, i64 %i.gj
  %i.gl = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gk, ptr noundef nonnull align 1 dereferenceable(16) %i.gm, i64 16, i1 false)
  %i.gn = ashr exact i64 %sext505, 30             ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %i.fw, i64 %i.gn
  %i.gp = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.go, ptr noundef nonnull align 1 dereferenceable(16) %i.gq, i64 16, i1 false)
  %i.gr = mul nsw i64 %i.ga, 5                    ; 3 uses
  %i.gs = getelementptr inbounds i8, ptr %i.fw, i64 %i.gr
  %i.gt = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gs, ptr noundef nonnull align 1 dereferenceable(16) %i.gu, i64 16, i1 false)
  %i.gv = mul nsw i64 %i.ga, 6                    ; 3 uses
  %i.gw = getelementptr inbounds i8, ptr %i.fw, i64 %i.gv
  %i.gx = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gw, ptr noundef nonnull align 1 dereferenceable(16) %i.gy, i64 16, i1 false)
  %i.gz = mul nsw i64 %i.ga, 7                    ; 3 uses
  %i.ha = getelementptr inbounds i8, ptr %i.fw, i64 %i.gz
  %i.hb = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ha, ptr noundef nonnull align 1 dereferenceable(16) %i.hc, i64 16, i1 false)
  %i.hd = ashr exact i64 %sext505, 29             ; 3 uses
  %i.he = getelementptr inbounds i8, ptr %i.fw, i64 %i.hd
  %i.hf = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.he, ptr noundef nonnull align 1 dereferenceable(16) %i.hg, i64 16, i1 false)
  %i.hh = mul nsw i64 %i.ga, 9                    ; 3 uses
  %i.hi = getelementptr inbounds i8, ptr %i.fw, i64 %i.hh
  %i.hj = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hi, ptr noundef nonnull align 1 dereferenceable(16) %i.hk, i64 16, i1 false)
  %i.hl = mul nsw i64 %i.ga, 10                   ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %i.fw, i64 %i.hl
  %i.hn = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hm, ptr noundef nonnull align 1 dereferenceable(16) %i.ho, i64 16, i1 false)
  %i.hp = mul nsw i64 %i.ga, 11                   ; 3 uses
  %i.hq = getelementptr inbounds i8, ptr %i.fw, i64 %i.hp
  %i.hr = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hq, ptr noundef nonnull align 1 dereferenceable(16) %i.hs, i64 16, i1 false)
  %i.ht = mul nsw i64 %i.ga, 12                   ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %i.fw, i64 %i.ht
  %i.hv = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hu, ptr noundef nonnull align 1 dereferenceable(16) %i.hw, i64 16, i1 false)
  %i.hx = mul nsw i64 %i.ga, 13                   ; 3 uses
  %i.hy = getelementptr inbounds i8, ptr %i.fw, i64 %i.hx
  %i.hz = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hy, ptr noundef nonnull align 1 dereferenceable(16) %i.ia, i64 16, i1 false)
  %i.ib = mul nsw i64 %i.ga, 14                   ; 3 uses
  %i.ic = getelementptr inbounds i8, ptr %i.fw, i64 %i.ib
  %i.id = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ic, ptr noundef nonnull align 1 dereferenceable(16) %i.ie, i64 16, i1 false)
  %i.if = mul nsw i64 %i.ga, 15                   ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %i.fw, i64 %i.if
  %i.ih = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ig, ptr noundef nonnull align 1 dereferenceable(16) %i.ii, i64 16, i1 false)
  %i.ij = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fv, ptr noundef nonnull align 1 dereferenceable(16) %i.ik, i64 16, i1 false)
  %i.il = getelementptr inbounds i8, ptr %i.fv, i64 %i.ga
  %i.im = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.il, ptr noundef nonnull align 1 dereferenceable(16) %i.in, i64 16, i1 false)
  %i.io = getelementptr inbounds i8, ptr %i.fv, i64 %i.gf
  %i.ip = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.io, ptr noundef nonnull align 1 dereferenceable(16) %i.iq, i64 16, i1 false)
  %i.ir = getelementptr inbounds i8, ptr %i.fv, i64 %i.gj
  %i.is = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ir, ptr noundef nonnull align 1 dereferenceable(16) %i.it, i64 16, i1 false)
  %i.iu = getelementptr inbounds i8, ptr %i.fv, i64 %i.gn
  %i.iv = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iu, ptr noundef nonnull align 1 dereferenceable(16) %i.iw, i64 16, i1 false)
  %i.ix = getelementptr inbounds i8, ptr %i.fv, i64 %i.gr
  %i.iy = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ix, ptr noundef nonnull align 1 dereferenceable(16) %i.iz, i64 16, i1 false)
  %i.ja = getelementptr inbounds i8, ptr %i.fv, i64 %i.gv
  %i.jb = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ja, ptr noundef nonnull align 1 dereferenceable(16) %i.jc, i64 16, i1 false)
  %i.jd = getelementptr inbounds i8, ptr %i.fv, i64 %i.gz
  %i.je = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jd, ptr noundef nonnull align 1 dereferenceable(16) %i.jf, i64 16, i1 false)
  %i.jg = getelementptr inbounds i8, ptr %i.fv, i64 %i.hd
  %i.jh = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jg, ptr noundef nonnull align 1 dereferenceable(16) %i.ji, i64 16, i1 false)
  %i.jj = getelementptr inbounds i8, ptr %i.fv, i64 %i.hh
  %i.jk = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jj, ptr noundef nonnull align 1 dereferenceable(16) %i.jl, i64 16, i1 false)
  %i.jm = getelementptr inbounds i8, ptr %i.fv, i64 %i.hl
  %i.jn = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jm, ptr noundef nonnull align 1 dereferenceable(16) %i.jo, i64 16, i1 false)
  %i.jp = getelementptr inbounds i8, ptr %i.fv, i64 %i.hp
  %i.jq = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 432
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jp, ptr noundef nonnull align 1 dereferenceable(16) %i.jr, i64 16, i1 false)
  %i.js = getelementptr inbounds i8, ptr %i.fv, i64 %i.ht
  %i.jt = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.js, ptr noundef nonnull align 1 dereferenceable(16) %i.ju, i64 16, i1 false)
  %i.jv = getelementptr inbounds i8, ptr %i.fv, i64 %i.hx
  %i.jw = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jv, ptr noundef nonnull align 1 dereferenceable(16) %i.jx, i64 16, i1 false)
  %i.jy = getelementptr inbounds i8, ptr %i.fv, i64 %i.ib
  %i.jz = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jy, ptr noundef nonnull align 1 dereferenceable(16) %i.ka, i64 16, i1 false)
  %i.kb = getelementptr inbounds i8, ptr %i.fv, i64 %i.if
  %i.kc = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kb, ptr noundef nonnull align 1 dereferenceable(16) %i.kd, i64 16, i1 false)
  %i.ke = load ptr, ptr %i.fz, align 16, !tbaa !94
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fu, ptr noundef nonnull align 1 dereferenceable(16) %i.kf, i64 16, i1 false)
  %i.kg = getelementptr inbounds i8, ptr %i.fu, i64 %i.ga
  %i.kh = load ptr, ptr %i.fz, align 16, !tbaa !94
end_hunk_0
begin_hunk_1_@hl_decode_mb_444_complex:bb.a
  br i1 %i.zv, label %bb.ag, label %xchg_mb_border.exit184

.thread224:                                       ; preds = %.thread514, %.thread213, %.thread214
  %i.zw = shl i32 16, %i.ub
  %i.zx = sext i32 %i.zw to i64                   ; 3 uses
  %i.zy = getelementptr inbounds i8, ptr %i.vu, i64 %i.zx ; 3 uses
  %.sroa.058.0.copyload.i = load i64, ptr %i.zy, align 8, !tbaa !86
  %i.zz = shl nuw i32 1, %i.ub
  %i.aaa = sext i32 %i.zz to i64                  ; 2 uses
  %i.aab = getelementptr inbounds i8, ptr %i.vo, i64 %i.aaa ; 3 uses
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !86
  store i64 %i.aac, ptr %i.zy, align 8, !tbaa !86
  store i64 %.sroa.058.0.copyload.i, ptr %i.aab, align 8, !tbaa !86
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zy, i64 8 ; 2 uses
  %.sroa.056.0.copyload.i = load i64, ptr %i.aad, align 8, !tbaa !86
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 8 ; 2 uses
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !86
  store i64 %i.aaf, ptr %i.aad, align 8, !tbaa !86
  store i64 %.sroa.056.0.copyload.i, ptr %i.aae, align 8, !tbaa !86
  %i.aag = shl i32 24, %i.ub
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds i8, ptr %i.vu, i64 %i.aah ; 3 uses
  %.sroa.052.0.copyload.i157 = load i64, ptr %i.aai, align 8, !tbaa !86
  %i.aaj = shl i32 9, %i.ub
  %i.aak = sext i32 %i.aaj to i64                 ; 2 uses
  %i.aal = getelementptr inbounds i8, ptr %i.vo, i64 %i.aak ; 3 uses
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !86
  store i64 %i.aam, ptr %i.aai, align 8, !tbaa !86
  store i64 %.sroa.052.0.copyload.i157, ptr %i.aal, align 8, !tbaa !86
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aai, i64 8 ; 2 uses
  %.sroa.050.0.copyload.i158 = load i64, ptr %i.aan, align 8, !tbaa !86
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 8 ; 2 uses
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !86
  store i64 %i.aap, ptr %i.aan, align 8, !tbaa !86
  store i64 %.sroa.050.0.copyload.i158, ptr %i.aao, align 8, !tbaa !86
  %i.aaq = shl i32 32, %i.ub
  %i.aar = sext i32 %i.aaq to i64                 ; 3 uses
  %i.aas = getelementptr inbounds i8, ptr %i.vu, i64 %i.aar ; 3 uses
  %.sroa.046.0.copyload.i = load i64, ptr %i.aas, align 8, !tbaa !86
  %i.aat = getelementptr inbounds i8, ptr %i.vp, i64 %i.aaa ; 3 uses
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !86
  store i64 %i.aau, ptr %i.aas, align 8, !tbaa !86
  store i64 %.sroa.046.0.copyload.i, ptr %i.aat, align 8, !tbaa !86
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 8 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aav, align 8, !tbaa !86
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 8 ; 2 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !86
  store i64 %i.aax, ptr %i.aav, align 8, !tbaa !86
  store i64 %.sroa.044.0.copyload.i, ptr %i.aaw, align 8, !tbaa !86
  %i.aay = shl i32 40, %i.ub
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = getelementptr inbounds i8, ptr %i.vu, i64 %i.aaz ; 3 uses
  %.sroa.040.0.copyload.i159 = load i64, ptr %i.aba, align 8, !tbaa !86
  %i.abb = getelementptr inbounds i8, ptr %i.vp, i64 %i.aak ; 3 uses
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !86
  store i64 %i.abc, ptr %i.aba, align 8, !tbaa !86
  store i64 %.sroa.040.0.copyload.i159, ptr %i.abb, align 8, !tbaa !86
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 8 ; 2 uses
  %.sroa.038.0.copyload.i160 = load i64, ptr %i.abd, align 8, !tbaa !86
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 8 ; 2 uses
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !86
  store i64 %i.abf, ptr %i.abd, align 8, !tbaa !86
  store i64 %.sroa.038.0.copyload.i160, ptr %i.abe, align 8, !tbaa !86
  %i.abg = load i32, ptr %i.d, align 16, !tbaa !77
  %i.abh = add nsw i32 %i.abg, 1                  ; 2 uses
  %i.abi = load i32, ptr %i.xl, align 8, !tbaa !104
  %i.abj = icmp slt i32 %i.abh, %i.abi
  br i1 %i.abj, label %.thread225, label %xchg_mb_border.exit184

.thread225:                                       ; preds = %.thread224
  %i.abk = load ptr, ptr %i.vr, align 8, !tbaa !81
  %i.abl = sext i32 %i.abh to i64
  %i.abm = getelementptr inbounds [96 x i8], ptr %i.abk, i64 %i.abl
  %i.abn = getelementptr inbounds i8, ptr %i.abm, i64 %i.zx ; 2 uses
  %.sroa.034.0.copyload.i161 = load i64, ptr %i.abn, align 8, !tbaa !86
  %i.abo = shl i32 17, %i.ub
  %i.abp = sext i32 %i.abo to i64                 ; 2 uses
  %i.abq = getelementptr inbounds i8, ptr %i.vo, i64 %i.abp ; 3 uses
  %i.abr = load i64, ptr %i.abq, align 8, !tbaa !86
  store i64 %i.abr, ptr %i.abn, align 8, !tbaa !86
  store i64 %.sroa.034.0.copyload.i161, ptr %i.abq, align 8, !tbaa !86
  %i.abs = load ptr, ptr %i.vr, align 8, !tbaa !81
  %i.abt = load i32, ptr %i.d, align 16, !tbaa !77
  %i.abu = sext i32 %i.abt to i64
  %i.abv = getelementptr [96 x i8], ptr %i.abs, i64 %i.abu
  %i.abw = getelementptr i8, ptr %i.abv, i64 %i.zx
  %i.abx = getelementptr i8, ptr %i.abw, i64 104  ; 2 uses
  %.sroa.032.0.copyload.i162 = load i64, ptr %i.abx, align 8, !tbaa !86
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abq, i64 8 ; 2 uses
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !86
  store i64 %i.abz, ptr %i.abx, align 8, !tbaa !86
  store i64 %.sroa.032.0.copyload.i162, ptr %i.aby, align 8, !tbaa !86
  %i.aca = load ptr, ptr %i.vr, align 8, !tbaa !81
  %i.acb = load i32, ptr %i.d, align 16, !tbaa !77
  %i.acc = sext i32 %i.acb to i64
  %i.acd = getelementptr [96 x i8], ptr %i.aca, i64 %i.acc
  %i.ace = getelementptr i8, ptr %i.acd, i64 96
  %i.acf = getelementptr inbounds i8, ptr %i.ace, i64 %i.aar ; 2 uses
  %.sroa.028.0.copyload.i163 = load i64, ptr %i.acf, align 8, !tbaa !86
  %i.acg = getelementptr inbounds i8, ptr %i.vp, i64 %i.abp ; 3 uses
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !86
  store i64 %i.ach, ptr %i.acf, align 8, !tbaa !86
  store i64 %.sroa.028.0.copyload.i163, ptr %i.acg, align 8, !tbaa !86
  %i.aci = load ptr, ptr %i.vr, align 8, !tbaa !81
  %i.acj = load i32, ptr %i.d, align 16, !tbaa !77
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr [96 x i8], ptr %i.aci, i64 %i.ack
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.aar
  %i.acn = getelementptr i8, ptr %i.acm, i64 104  ; 2 uses
  %.sroa.026.0.copyload.i164 = load i64, ptr %i.acn, align 8, !tbaa !86
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acg, i64 8 ; 2 uses
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !86
  store i64 %i.acp, ptr %i.acn, align 8, !tbaa !86
  store i64 %.sroa.026.0.copyload.i164, ptr %i.aco, align 8, !tbaa !86
  br label %xchg_mb_border.exit184

bb.ag:                                            ; preds = %.thread520
  %i.acq = load ptr, ptr %i.vr, align 8, !tbaa !81
  %i.acr = sext i32 %i.zt to i64
  %i.acs = getelementptr inbounds [96 x i8], ptr %i.acq, i64 %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 16 ; 2 uses
  %.sroa.030.0.copyload.i166 = load i64, ptr %i.act, align 8, !tbaa !86
  %i.acu = getelementptr inbounds nuw i8, ptr %i.vo, i64 17 ; 2 uses
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !86
  store i64 %i.acv, ptr %i.act, align 8, !tbaa !86
  store i64 %.sroa.030.0.copyload.i166, ptr %i.acu, align 8, !tbaa !86
  %i.acw = load ptr, ptr %i.vr, align 8, !tbaa !81
  %i.acx = load i32, ptr %i.d, align 16, !tbaa !77
  %i.acy = sext i32 %i.acx to i64
  %i.acz = getelementptr [96 x i8], ptr %i.acw, i64 %i.acy
  %i.ada = getelementptr i8, ptr %i.acz, i64 128  ; 2 uses
  %.sroa.024.0.copyload.i165 = load i64, ptr %i.ada, align 8, !tbaa !86
  %i.adb = getelementptr inbounds nuw i8, ptr %i.vp, i64 17 ; 2 uses
  %i.adc = load i64, ptr %i.adb, align 8, !tbaa !86
  store i64 %i.adc, ptr %i.ada, align 8, !tbaa !86
  store i64 %.sroa.024.0.copyload.i165, ptr %i.adb, align 8, !tbaa !86
  br label %xchg_mb_border.exit184

xchg_mb_border.exit184:                           ; preds = %bb.ag, %.thread225, %.thread520, %bb.ab, %bb.w, %.thread224, %bb.t
  %i.add = and i32 %.fr318, 1
  %.not.i = icmp eq i32 %i.add, 0
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 20872 ; 6 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 34080 ; 6 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 30124 ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 30576 ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 29 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 20972 ; 6 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 20980 ; 9 uses
  %sext = shl i64 %.0137.in, 32                   ; 2 uses
  %i.ado = ashr exact i64 %sext, 32               ; 17 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 30560 ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 7 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 30288 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 30544 ; 3 uses
  %i.adw = sub nsw i64 0, %i.ado                  ; 3 uses
  %.neg.i = sdiv i32 %.0137, -2
  %i.adx = sext i32 %.neg.i to i64                ; 3 uses
  %sext266 = sub i64 12884901888, %sext
  %i.ady = ashr exact i64 %sext266, 32            ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 30168 ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 30472
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 20868
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 32416 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 34072
  br i1 %.not.i, label %xchg_mb_border.exit184.split.us, label %xchg_mb_border.exit184.split

xchg_mb_border.exit184.split.us:                  ; preds = %xchg_mb_border.exit184, %hl_decode_mb_predict_luma.exit.us
  %indvars.iv382 = phi i64 [ %indvars.iv.next383, %hl_decode_mb_predict_luma.exit.us ], [ 0, %xchg_mb_border.exit184 ] ; 9 uses
  %i.aef = load i32, ptr %i.x, align 8, !tbaa !76 ; 3 uses
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv382
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !81
  %i.aei = getelementptr [4 x i8], ptr %1, i64 %indvars.iv382
  %.in.i.us = getelementptr i8, ptr %i.aei, i64 56
  %i.aej = load i32, ptr %.in.i.us, align 4, !tbaa !69
  %i.aek = load i32, ptr %i.aeb, align 4, !tbaa !105
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr inbounds [8 x i8], ptr %i.aea, i64 %i.ael
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !106
  tail call void %i.aen(ptr noundef %i.aeh, i64 noundef %i.ado) #7, !inline_history !107
  %i.aeo = getelementptr i8, ptr @scan8, i64 %indvars.iv382
  %i.aep = getelementptr i8, ptr %i.aeo, i64 48
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !86
  %i.aer = zext i8 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.aer
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !86
  %.not179.i.us = icmp eq i8 %i.aet, 0
  br i1 %.not179.i.us, label %hl_decode_mb_predict_luma.exit.us, label %bb.ah

bb.ah:                                            ; preds = %xchg_mb_border.exit184.split.us
  br i1 %.not85.i, label %bb.ai, label %.preheader.us

bb.ai:                                            ; preds = %bb.ah
  %i.aeu = load ptr, ptr %i.aed, align 8, !tbaa !108
  %indvars.iv382.tr506 = trunc nuw nsw i64 %indvars.iv382 to i32
  %i.aev = shl nuw nsw i32 %indvars.iv382.tr506, 8
  %i.aew = shl i32 %i.aev, %i.aef
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.aex
  %i.aez = getelementptr inbounds nuw [64 x i8], ptr %i.aec, i64 %indvars.iv382
  %i.afa = load ptr, ptr %i.aee, align 8, !tbaa !109
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 173808
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %indvars.iv382
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !110
  %i.afe = sext i32 %i.aej to i64
  %i.aff = getelementptr inbounds [64 x i8], ptr %i.afd, i64 %i.afe
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !69
  tail call void %i.aeu(ptr noundef nonnull %i.aey, ptr noundef nonnull %i.aez, i32 noundef %i.afg) #7, !inline_history !107
  br label %hl_decode_mb_predict_luma.exit.us

hl_decode_mb_predict_luma.exit.us:                ; preds = %dctcoef_set.exit.us301.preheader, %dctcoef_set.exit.us.us.preheader, %bb.ai, %xchg_mb_border.exit184.split.us
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next383, 3
  br i1 %exitcond385.not, label %.split306.us, label %xchg_mb_border.exit184.split.us, !llvm.loop !111

.preheader.us:                                    ; preds = %bb.ah
  %indvars.iv382.tr = trunc nuw nsw i64 %indvars.iv382 to i32
  %i.afh = shl nuw nsw i32 %indvars.iv382.tr, 8
  %i.afi = shl i32 %i.afh, %i.aef
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.afj ; 32 uses
  %i.afl = getelementptr inbounds nuw [64 x i8], ptr %i.aec, i64 %indvars.iv382 ; 32 uses
  %.not.i190.us = icmp eq i32 %i.aef, 0
  br i1 %.not.i190.us, label %dctcoef_set.exit.us.us.preheader, label %dctcoef_set.exit.us301.preheader

dctcoef_set.exit.us301.preheader:                 ; preds = %.preheader.us
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !86
  store i32 %i.afm, ptr %i.afk, align 4, !tbaa !86
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 4
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !86
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afk, i64 64
  store i32 %i.afo, ptr %i.afp, align 4, !tbaa !86
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !86
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afk, i64 256
  store i32 %i.afr, ptr %i.afs, align 4, !tbaa !86
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afl, i64 12
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !86
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afk, i64 320
  store i32 %i.afu, ptr %i.afv, align 4, !tbaa !86
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !86
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afk, i64 128
  store i32 %i.afx, ptr %i.afy, align 4, !tbaa !86
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afl, i64 20
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !86
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afk, i64 192
  store i32 %i.aga, ptr %i.agb, align 4, !tbaa !86
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afl, i64 24
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !86
  %i.age = getelementptr inbounds nuw i8, ptr %i.afk, i64 384
  store i32 %i.agd, ptr %i.age, align 4, !tbaa !86
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afl, i64 28
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !86
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afk, i64 448
  store i32 %i.agg, ptr %i.agh, align 4, !tbaa !86
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afl, i64 32
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !86
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afk, i64 512
  store i32 %i.agj, ptr %i.agk, align 4, !tbaa !86
  %i.agl = getelementptr inbounds nuw i8, ptr %i.afl, i64 36
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !86
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afk, i64 576
  store i32 %i.agm, ptr %i.agn, align 4, !tbaa !86
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afl, i64 40
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !86
  %i.agq = getelementptr inbounds nuw i8, ptr %i.afk, i64 768
  store i32 %i.agp, ptr %i.agq, align 4, !tbaa !86
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afl, i64 44
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !86
  %i.agt = getelementptr inbounds nuw i8, ptr %i.afk, i64 832
  store i32 %i.ags, ptr %i.agt, align 4, !tbaa !86
  %i.agu = getelementptr inbounds nuw i8, ptr %i.afl, i64 48
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !86
  %i.agw = getelementptr inbounds nuw i8, ptr %i.afk, i64 640
  store i32 %i.agv, ptr %i.agw, align 4, !tbaa !86
  %i.agx = getelementptr inbounds nuw i8, ptr %i.afl, i64 52
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !86
  %i.agz = getelementptr inbounds nuw i8, ptr %i.afk, i64 704
  store i32 %i.agy, ptr %i.agz, align 4, !tbaa !86
  %i.aha = getelementptr inbounds nuw i8, ptr %i.afl, i64 56
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !86
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.afk, i64 896
  store i32 %i.ahb, ptr %i.ahc, align 4, !tbaa !86
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.afl, i64 60
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !86
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.afk, i64 960
  store i32 %i.ahe, ptr %i.ahf, align 4, !tbaa !86
  br label %hl_decode_mb_predict_luma.exit.us

dctcoef_set.exit.us.us.preheader:                 ; preds = %.preheader.us
  %i.ahg = load i16, ptr %i.afl, align 2, !tbaa !86
  store i16 %i.ahg, ptr %i.afk, align 2, !tbaa !86
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.afl, i64 2
  %i.ahi = load i16, ptr %i.ahh, align 2, !tbaa !86
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.afk, i64 32
  store i16 %i.ahi, ptr %i.ahj, align 2, !tbaa !86
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.afl, i64 4
  %i.ahl = load i16, ptr %i.ahk, align 2, !tbaa !86
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.afk, i64 128
  store i16 %i.ahl, ptr %i.ahm, align 2, !tbaa !86
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.afl, i64 6
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !86
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.afk, i64 160
  store i16 %i.aho, ptr %i.ahp, align 2, !tbaa !86
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !86
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.afk, i64 64
  store i16 %i.ahr, ptr %i.ahs, align 2, !tbaa !86
  %i.aht = getelementptr inbounds nuw i8, ptr %i.afl, i64 10
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !86
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.afk, i64 96
  store i16 %i.ahu, ptr %i.ahv, align 2, !tbaa !86
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.afl, i64 12
  %i.ahx = load i16, ptr %i.ahw, align 2, !tbaa !86
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.afk, i64 192
  store i16 %i.ahx, ptr %i.ahy, align 2, !tbaa !86
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.afl, i64 14
  %i.aia = load i16, ptr %i.ahz, align 2, !tbaa !86
  %i.aib = getelementptr inbounds nuw i8, ptr %i.afk, i64 224
  store i16 %i.aia, ptr %i.aib, align 2, !tbaa !86
  %i.aic = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !86
  %i.aie = getelementptr inbounds nuw i8, ptr %i.afk, i64 256
  store i16 %i.aid, ptr %i.aie, align 2, !tbaa !86
  %i.aif = getelementptr inbounds nuw i8, ptr %i.afl, i64 18
  %i.aig = load i16, ptr %i.aif, align 2, !tbaa !86
  %i.aih = getelementptr inbounds nuw i8, ptr %i.afk, i64 288
  store i16 %i.aig, ptr %i.aih, align 2, !tbaa !86
  %i.aii = getelementptr inbounds nuw i8, ptr %i.afl, i64 20
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !86
  %i.aik = getelementptr inbounds nuw i8, ptr %i.afk, i64 384
  store i16 %i.aij, ptr %i.aik, align 2, !tbaa !86
  %i.ail = getelementptr inbounds nuw i8, ptr %i.afl, i64 22
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !86
  %i.ain = getelementptr inbounds nuw i8, ptr %i.afk, i64 416
  store i16 %i.aim, ptr %i.ain, align 2, !tbaa !86
  %i.aio = getelementptr inbounds nuw i8, ptr %i.afl, i64 24
  %i.aip = load i16, ptr %i.aio, align 2, !tbaa !86
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.afk, i64 320
  store i16 %i.aip, ptr %i.aiq, align 2, !tbaa !86
  %i.air = getelementptr inbounds nuw i8, ptr %i.afl, i64 26
  %i.ais = load i16, ptr %i.air, align 2, !tbaa !86
  %i.ait = getelementptr inbounds nuw i8, ptr %i.afk, i64 352
  store i16 %i.ais, ptr %i.ait, align 2, !tbaa !86
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.afl, i64 28
  %i.aiv = load i16, ptr %i.aiu, align 2, !tbaa !86
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.afk, i64 448
  store i16 %i.aiv, ptr %i.aiw, align 2, !tbaa !86
  %i.aix = getelementptr inbounds nuw i8, ptr %i.afl, i64 30
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !86
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.afk, i64 480
  store i16 %i.aiy, ptr %i.aiz, align 2, !tbaa !86
  br label %hl_decode_mb_predict_luma.exit.us

xchg_mb_border.exit184.split:                     ; preds = %xchg_mb_border.exit184
  %i.aja = and i32 %.fr318, 16777216
  %.not181.i = icmp eq i32 %i.aja, 0
  br i1 %.not181.i, label %xchg_mb_border.exit184.split.split.us.preheader, label %xchg_mb_border.exit184.split.split

xchg_mb_border.exit184.split.split.us.preheader:  ; preds = %xchg_mb_border.exit184.split
  %i.ajb = load i32, ptr %i.x, align 8, !tbaa !76 ; 4 uses
  br i1 %.not85.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %xchg_mb_border.exit184.split.split.us.preheader
  %i.ajc = load ptr, ptr %i.ads, align 8, !tbaa !112 ; 2 uses
  br label %bb.al

bb.ak:                                            ; preds = %xchg_mb_border.exit184.split.split.us.preheader
  %i.ajd = load ptr, ptr %i.adt, align 8, !tbaa !113
  %i.aje = load ptr, ptr %i.adu, align 8, !tbaa !114
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1173.i.us = phi ptr [ %i.ajc, %bb.aj ], [ %i.aje, %bb.ak ] ; 2 uses
  %.1171.i.us = phi ptr [ %i.ajc, %bb.aj ], [ %i.ajd, %bb.ak ]
  %i.ajf = shl i32 4, %i.ajb
  %i.ajg = sext i32 %i.ajf to i64
  %.not184.i.us = icmp eq i32 %i.ajb, 0           ; 2 uses
  br label %.backedge548

.backedge548:                                     ; preds = %.backedge548.backedge, %bb.al
  %indvars.iv366 = phi i64 [ 0, %bb.al ], [ %indvars.iv366.be, %.backedge548.backedge ] ; 8 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %.0131, i64 %indvars.iv366
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !69
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = getelementptr inbounds i8, ptr %i.fw, i64 %i.ajj ; 6 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv366
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !86
  %i.ajn = zext i8 %i.ajm to i64                  ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.ajn
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !86 ; 4 uses
  br i1 %.not85.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.backedge548
  %i.ajq = load ptr, ptr %i.adi, align 8, !tbaa !71
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !115
  %i.ajt = icmp eq i32 %i.ajs, 244
  %i.aju = icmp slt i8 %i.ajp, 2
  %or.cond3.i.us = select i1 %i.ajt, i1 %i.aju, i1 false
  br i1 %or.cond3.i.us, label %.thread522, label %bb.an

bb.an:                                            ; preds = %bb.am, %.backedge548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ajv = and i8 %i.ajp, -5
  %or.cond5.i.us = icmp eq i8 %i.ajv, 3
  br i1 %or.cond5.i.us, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.ajw = load i32, ptr %i.adn, align 4, !tbaa !116
  %i.ajx = trunc nuw nsw i64 %indvars.iv366 to i32
  %i.ajy = lshr exact i32 32768, %i.ajx
  %i.ajz = and i32 %i.ajw, %i.ajy
  %.not183.i.us = icmp eq i32 %i.ajz, 0
  br i1 %.not183.i.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.aka = getelementptr inbounds i8, ptr %i.ajk, i64 %i.ajg
  %i.akb = getelementptr inbounds i8, ptr %i.aka, i64 %i.adw
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  br i1 %.not184.i.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.akc = getelementptr [2 x i8], ptr %i.ajk, i64 %i.adx
  %i.akd = getelementptr i8, ptr %i.akc, i64 6
  %i.ake = load i16, ptr %i.akd, align 2, !tbaa !91
  %i.akf = zext i16 %i.ake to i64
  %i.akg = mul nuw i64 %i.akf, 281479271743489
  store i64 %i.akg, ptr %i.b, align 8, !tbaa !117
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.akh = getelementptr inbounds i8, ptr %i.ajk, i64 %i.ady
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !86
  %i.akj = zext i8 %i.aki to i32
  %i.akk = mul nuw i32 %i.akj, 16843009
  store i32 %i.akk, ptr %i.a, align 4, !tbaa !69
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap, %bb.an
  %.1.i.us = phi ptr [ %i.a, %bb.as ], [ %i.akb, %bb.ap ], [ %i.b, %bb.ar ], [ null, %bb.an ]
  %i.akl = sext i8 %i.ajp to i64
  %i.akm = getelementptr inbounds [8 x i8], ptr %i.adz, i64 %i.akl
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !106
  call void %i.akn(ptr noundef %i.ajk, ptr noundef %.1.i.us, i64 noundef %i.ado) #7, !inline_history !107
  %i.ako = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.ajn
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !86
  switch i8 %i.akp, label %._crit_edge430 [
    i8 0, label %bb.ax
    i8 1, label %bb.au
  ]

._crit_edge430:                                   ; preds = %bb.at
  %.pre457 = shl nuw nsw i64 %indvars.iv366, 4
  br label %.sink.split

bb.au:                                            ; preds = %bb.at
  %i.akq = shl nuw nsw i64 %indvars.iv366, 4      ; 3 uses
  br i1 %.not184.i.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %i.akq
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !86
  br label %dctcoef_get.exit195.us

bb.aw:                                            ; preds = %bb.au
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %i.adl, i64 %i.akq
  %i.aku = load i16, ptr %i.akt, align 2, !tbaa !86
  %i.akv = zext i16 %i.aku to i32
  br label %dctcoef_get.exit195.us

dctcoef_get.exit195.us:                           ; preds = %bb.aw, %bb.av
  %.0.i194.us = phi i32 [ %i.aks, %bb.av ], [ %i.akv, %bb.aw ]
  %.not186.i.us = icmp eq i32 %.0.i194.us, 0
  %spec.select = select i1 %.not186.i.us, ptr %.1173.i.us, ptr %.1171.i.us
  br label %.sink.split

.sink.split:                                      ; preds = %dctcoef_get.exit195.us, %._crit_edge430
  %.sink = phi i64 [ %i.akq, %dctcoef_get.exit195.us ], [ %.pre457, %._crit_edge430 ]
  %.1171.i.us.sink = phi ptr [ %spec.select, %dctcoef_get.exit195.us ], [ %.1173.i.us, %._crit_edge430 ]
  %i.akw = trunc nuw nsw i64 %.sink to i32
  %i.akx = shl i32 %i.akw, %i.ajb
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.aky
  call void %.1171.i.us.sink(ptr noundef %i.ajk, ptr noundef nonnull %i.akz, i32 noundef %.0137) #7
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next367, 16
  br i1 %exitcond369.not, label %hl_decode_mb_predict_luma.exit.loopexit271.us, label %.backedge548.backedge

.backedge548.backedge:                            ; preds = %bb.ax, %.thread522
  %indvars.iv366.be = phi i64 [ %indvars.iv.next367, %bb.ax ], [ %indvars.iv.next367523, %.thread522 ]
  br label %.backedge548, !llvm.loop !118

.thread522:                                       ; preds = %bb.am
  %i.ala = sext i8 %i.ajp to i64
  %i.alb = getelementptr inbounds [8 x i8], ptr %i.adv, i64 %i.ala
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !106
  %indvars.iv366.tr = trunc nuw nsw i64 %indvars.iv366 to i32
  %i.ald = shl nuw nsw i32 %indvars.iv366.tr, 4
  %i.ale = shl i32 %i.ald, %i.ajb
  %i.alf = sext i32 %i.ale to i64
  %i.alg = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.alf
  call void %i.alc(ptr noundef %i.ajk, ptr noundef nonnull %i.alg, i64 noundef %i.ado) #7, !inline_history !107
  %indvars.iv.next367523 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond369.not524 = icmp eq i64 %indvars.iv.next367523, 16
  br i1 %exitcond369.not524, label %hl_decode_mb_predict_luma.exit.loopexit271.us.thread, label %.backedge548.backedge

hl_decode_mb_predict_luma.exit.loopexit271.us.thread: ; preds = %.thread522
  %i.alh = load i32, ptr %i.x, align 8, !tbaa !76
  %i.ali = getelementptr inbounds nuw i8, ptr %.0131, i64 64
  br label %bb.ay

hl_decode_mb_predict_luma.exit.loopexit271.us:    ; preds = %bb.ax
  %i.alj = load i32, ptr %i.x, align 8, !tbaa !76 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.0131, i64 64 ; 2 uses
  br i1 %.not85.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %hl_decode_mb_predict_luma.exit.loopexit271.us.thread, %hl_decode_mb_predict_luma.exit.loopexit271.us
  %i.all = phi ptr [ %i.ali, %hl_decode_mb_predict_luma.exit.loopexit271.us.thread ], [ %i.alk, %hl_decode_mb_predict_luma.exit.loopexit271.us ]
  %i.alm = phi i32 [ %i.alh, %hl_decode_mb_predict_luma.exit.loopexit271.us.thread ], [ %i.alj, %hl_decode_mb_predict_luma.exit.loopexit271.us ]
  %i.aln = load ptr, ptr %i.ads, align 8, !tbaa !112 ; 2 uses
  br label %bb.ba

bb.az:                                            ; preds = %hl_decode_mb_predict_luma.exit.loopexit271.us
  %i.alo = load ptr, ptr %i.adt, align 8, !tbaa !113
  %i.alp = load ptr, ptr %i.adu, align 8, !tbaa !114
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.alq = phi ptr [ %i.all, %bb.ay ], [ %i.alk, %bb.az ]
  %i.alr = phi i32 [ %i.alm, %bb.ay ], [ %i.alj, %bb.az ] ; 4 uses
  %.1173.i.us.1 = phi ptr [ %i.aln, %bb.ay ], [ %i.alp, %bb.az ] ; 2 uses
  %.1171.i.us.1 = phi ptr [ %i.aln, %bb.ay ], [ %i.alo, %bb.az ]
  %i.als = shl i32 4, %i.alr
  %i.alt = sext i32 %i.als to i64
  %.not184.i.us.1 = icmp eq i32 %i.alr, 0         ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.ba
  %indvars.iv366.1 = phi i64 [ 0, %bb.ba ], [ %indvars.iv366.1.be, %.backedge.backedge ] ; 9 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.alq, i64 %indvars.iv366.1
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !69
  %i.alw = sext i32 %i.alv to i64
  %i.alx = getelementptr inbounds i8, ptr %i.fv, i64 %i.alw ; 6 uses
  %i.aly = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv366.1
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !86
  %i.ama = zext i8 %i.alz to i64
  %i.amb = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !86 ; 4 uses
  br i1 %.not85.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.backedge
  %i.amd = load ptr, ptr %i.adi, align 8, !tbaa !71
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 4
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !115
  %i.amg = icmp eq i32 %i.amf, 244
  %i.amh = icmp slt i8 %i.amc, 2
  %or.cond3.i.us.1 = select i1 %i.amg, i1 %i.amh, i1 false
  br i1 %or.cond3.i.us.1, label %.thread525, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ami = and i8 %i.amc, -5
  %or.cond5.i.us.1 = icmp eq i8 %i.ami, 3
  br i1 %or.cond5.i.us.1, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.amj = load i32, ptr %i.adn, align 4, !tbaa !116
  %i.amk = trunc nuw nsw i64 %indvars.iv366.1 to i32
  %i.aml = lshr exact i32 32768, %i.amk
  %i.amm = and i32 %i.amj, %i.aml
  %.not183.i.us.1 = icmp eq i32 %i.amm, 0
  br i1 %.not183.i.us.1, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.amn = getelementptr inbounds i8, ptr %i.alx, i64 %i.alt
  %i.amo = getelementptr inbounds i8, ptr %i.amn, i64 %i.adw
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  br i1 %.not184.i.us.1, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.amp = getelementptr [2 x i8], ptr %i.alx, i64 %i.adx
  %i.amq = getelementptr i8, ptr %i.amp, i64 6
  %i.amr = load i16, ptr %i.amq, align 2, !tbaa !91
  %i.ams = zext i16 %i.amr to i64
  %i.amt = mul nuw i64 %i.ams, 281479271743489
  store i64 %i.amt, ptr %i.b, align 8, !tbaa !117
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.amu = getelementptr inbounds i8, ptr %i.alx, i64 %i.ady
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !86
  %i.amw = zext i8 %i.amv to i32
  %i.amx = mul nuw i32 %i.amw, 16843009
  store i32 %i.amx, ptr %i.a, align 4, !tbaa !69
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bc
  %.1.i.us.1 = phi ptr [ %i.a, %bb.bh ], [ %i.amo, %bb.be ], [ %i.b, %bb.bg ], [ null, %bb.bc ]
  %i.amy = sext i8 %i.amc to i64
  %i.amz = getelementptr inbounds [8 x i8], ptr %i.adz, i64 %i.amy
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !106
  call void %i.ana(ptr noundef %i.alx, ptr noundef %.1.i.us.1, i64 noundef %i.ado) #7, !inline_history !107
  %i.anb = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv366.1
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 16
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !86
  %i.ane = zext i8 %i.and to i64
  %i.anf = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !86
  switch i8 %i.ang, label %._crit_edge429 [
    i8 0, label %bb.bm
    i8 1, label %bb.bj
  ]

._crit_edge429:                                   ; preds = %bb.bi
  %.pre459 = shl nuw nsw i64 %indvars.iv366.1, 4
  %.pre461 = add nuw nsw i64 %.pre459, 256
  br label %.sink.split556

bb.bj:                                            ; preds = %bb.bi
  %i.anh = shl nuw nsw i64 %indvars.iv366.1, 4
  %i.ani = add nuw nsw i64 %i.anh, 256            ; 3 uses
  br i1 %.not184.i.us.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %i.ani
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !86
  br label %dctcoef_get.exit195.us.1

bb.bl:                                            ; preds = %bb.bj
  %i.anl = getelementptr inbounds nuw [2 x i8], ptr %i.adl, i64 %i.ani
  %i.anm = load i16, ptr %i.anl, align 2, !tbaa !86
  %i.ann = zext i16 %i.anm to i32
  br label %dctcoef_get.exit195.us.1

dctcoef_get.exit195.us.1:                         ; preds = %bb.bl, %bb.bk
  %.0.i194.us.1 = phi i32 [ %i.ank, %bb.bk ], [ %i.ann, %bb.bl ]
  %.not186.i.us.1 = icmp eq i32 %.0.i194.us.1, 0
  %spec.select571 = select i1 %.not186.i.us.1, ptr %.1173.i.us.1, ptr %.1171.i.us.1
  br label %.sink.split556

.sink.split556:                                   ; preds = %dctcoef_get.exit195.us.1, %._crit_edge429
  %.sink561 = phi i64 [ %i.ani, %dctcoef_get.exit195.us.1 ], [ %.pre461, %._crit_edge429 ]
  %.1171.i.us.1.sink = phi ptr [ %spec.select571, %dctcoef_get.exit195.us.1 ], [ %.1173.i.us.1, %._crit_edge429 ]
  %i.ano = trunc nuw nsw i64 %.sink561 to i32
  %i.anp = shl i32 %i.ano, %i.alr
  %i.anq = sext i32 %i.anp to i64
  %i.anr = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.anq
  call void %.1171.i.us.1.sink(ptr noundef %i.alx, ptr noundef nonnull %i.anr, i32 noundef %.0137) #7
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split556, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next367.1 = add nuw nsw i64 %indvars.iv366.1, 1 ; 2 uses
  %exitcond369.1.not = icmp eq i64 %indvars.iv.next367.1, 16
  br i1 %exitcond369.1.not, label %hl_decode_mb_predict_luma.exit.loopexit271.us.1, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bm, %.thread525
  %indvars.iv366.1.be = phi i64 [ %indvars.iv.next367.1, %bb.bm ], [ %indvars.iv.next367.1526, %.thread525 ]
  br label %.backedge, !llvm.loop !118

.thread525:                                       ; preds = %bb.bb
  %i.ans = sext i8 %i.amc to i64
  %i.ant = getelementptr inbounds [8 x i8], ptr %i.adv, i64 %i.ans
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !106
  %indvars.iv366.1.tr = trunc i64 %indvars.iv366.1 to i32
  %i.anv = shl i32 %indvars.iv366.1.tr, 4
  %i.anw = add i32 %i.anv, 256
  %i.anx = shl i32 %i.anw, %i.alr
  %i.any = sext i32 %i.anx to i64
  %i.anz = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.any
  call void %i.anu(ptr noundef %i.alx, ptr noundef nonnull %i.anz, i64 noundef %i.ado) #7, !inline_history !107
  %indvars.iv.next367.1526 = add nuw nsw i64 %indvars.iv366.1, 1 ; 2 uses
  %exitcond369.1.not527 = icmp eq i64 %indvars.iv.next367.1526, 16
  br i1 %exitcond369.1.not527, label %hl_decode_mb_predict_luma.exit.loopexit271.us.1.thread, label %.backedge.backedge

hl_decode_mb_predict_luma.exit.loopexit271.us.1.thread: ; preds = %.thread525
  %i.aoa = load i32, ptr %i.x, align 8, !tbaa !76
  %i.aob = getelementptr inbounds nuw i8, ptr %.0131, i64 128
  br label %bb.bn

hl_decode_mb_predict_luma.exit.loopexit271.us.1:  ; preds = %bb.bm
  %i.aoc = load i32, ptr %i.x, align 8, !tbaa !76 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.0131, i64 128 ; 2 uses
  br i1 %.not85.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %hl_decode_mb_predict_luma.exit.loopexit271.us.1.thread, %hl_decode_mb_predict_luma.exit.loopexit271.us.1
  %i.aoe = phi ptr [ %i.aob, %hl_decode_mb_predict_luma.exit.loopexit271.us.1.thread ], [ %i.aod, %hl_decode_mb_predict_luma.exit.loopexit271.us.1 ]
  %i.aof = phi i32 [ %i.aoa, %hl_decode_mb_predict_luma.exit.loopexit271.us.1.thread ], [ %i.aoc, %hl_decode_mb_predict_luma.exit.loopexit271.us.1 ]
  %i.aog = load ptr, ptr %i.ads, align 8, !tbaa !112 ; 2 uses
  br label %bb.bp

bb.bo:                                            ; preds = %hl_decode_mb_predict_luma.exit.loopexit271.us.1
  %i.aoh = load ptr, ptr %i.adt, align 8, !tbaa !113
  %i.aoi = load ptr, ptr %i.adu, align 8, !tbaa !114
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.aoj = phi ptr [ %i.aoe, %bb.bn ], [ %i.aod, %bb.bo ]
  %i.aok = phi i32 [ %i.aof, %bb.bn ], [ %i.aoc, %bb.bo ] ; 4 uses
  %.1173.i.us.2 = phi ptr [ %i.aog, %bb.bn ], [ %i.aoi, %bb.bo ] ; 2 uses
  %.1171.i.us.2 = phi ptr [ %i.aog, %bb.bn ], [ %i.aoh, %bb.bo ]
  %i.aol = shl i32 4, %i.aok
  %i.aom = sext i32 %i.aol to i64
  %.not184.i.us.2 = icmp eq i32 %i.aok, 0         ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ce, %bb.bp
  %indvars.iv366.2 = phi i64 [ %indvars.iv.next367.2, %bb.ce ], [ 0, %bb.bp ] ; 8 uses
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.aoj, i64 %indvars.iv366.2
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !69
  %i.aop = sext i32 %i.aoo to i64
  %i.aoq = getelementptr inbounds i8, ptr %i.fu, i64 %i.aop ; 6 uses
  %i.aor = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv366.2
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !86
  %i.aot = zext i8 %i.aos to i64
  %i.aou = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.aot
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !86 ; 4 uses
  br i1 %.not85.i, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.aow = load ptr, ptr %i.adi, align 8, !tbaa !71
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 4
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !115
  %i.aoz = icmp eq i32 %i.aoy, 244
  %i.apa = icmp slt i8 %i.aov, 2
  %or.cond3.i.us.2 = select i1 %i.aoz, i1 %i.apa, i1 false
  br i1 %or.cond3.i.us.2, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.apb = sext i8 %i.aov to i64
  %i.apc = getelementptr inbounds [8 x i8], ptr %i.adv, i64 %i.apb
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !106
  %indvars.iv366.2.tr = trunc i64 %indvars.iv366.2 to i32
  %i.ape = shl i32 %indvars.iv366.2.tr, 4
  %i.apf = add i32 %i.ape, 512
  %i.apg = shl i32 %i.apf, %i.aok
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.aph
  call void %i.apd(ptr noundef %i.aoq, ptr noundef nonnull %i.api, i64 noundef %i.ado) #7, !inline_history !107
  br label %bb.ce

bb.bt:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.apj = and i8 %i.aov, -5
  %or.cond5.i.us.2 = icmp eq i8 %i.apj, 3
  br i1 %or.cond5.i.us.2, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.apk = load i32, ptr %i.adn, align 4, !tbaa !116
  %i.apl = trunc nuw nsw i64 %indvars.iv366.2 to i32
  %i.apm = lshr exact i32 32768, %i.apl
  %i.apn = and i32 %i.apk, %i.apm
  %.not183.i.us.2 = icmp eq i32 %i.apn, 0
  br i1 %.not183.i.us.2, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.apo = getelementptr inbounds i8, ptr %i.aoq, i64 %i.aom
  %i.app = getelementptr inbounds i8, ptr %i.apo, i64 %i.adw
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bu
  br i1 %.not184.i.us.2, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.apq = getelementptr [2 x i8], ptr %i.aoq, i64 %i.adx
  %i.apr = getelementptr i8, ptr %i.apq, i64 6
  %i.aps = load i16, ptr %i.apr, align 2, !tbaa !91
  %i.apt = zext i16 %i.aps to i64
  %i.apu = mul nuw i64 %i.apt, 281479271743489
  store i64 %i.apu, ptr %i.b, align 8, !tbaa !117
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.apv = getelementptr inbounds i8, ptr %i.aoq, i64 %i.ady
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !86
  %i.apx = zext i8 %i.apw to i32
  %i.apy = mul nuw i32 %i.apx, 16843009
  store i32 %i.apy, ptr %i.a, align 4, !tbaa !69
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bv, %bb.bt
  %.1.i.us.2 = phi ptr [ %i.a, %bb.by ], [ %i.app, %bb.bv ], [ %i.b, %bb.bx ], [ null, %bb.bt ]
  %i.apz = sext i8 %i.aov to i64
  %i.aqa = getelementptr inbounds [8 x i8], ptr %i.adz, i64 %i.apz
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !106
  call void %i.aqb(ptr noundef %i.aoq, ptr noundef %.1.i.us.2, i64 noundef %i.ado) #7, !inline_history !107
  %i.aqc = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv366.2
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 32
  %i.aqe = load i8, ptr %i.aqd, align 1, !tbaa !86
  %i.aqf = zext i8 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.aqf
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !86
  switch i8 %i.aqh, label %._crit_edge428 [
    i8 0, label %bb.cd
    i8 1, label %bb.ca
  ]

._crit_edge428:                                   ; preds = %bb.bz
  %.pre463 = shl nuw nsw i64 %indvars.iv366.2, 4
  %.pre465 = add nuw nsw i64 %.pre463, 512
  br label %.sink.split562

bb.ca:                                            ; preds = %bb.bz
  %i.aqi = shl nuw nsw i64 %indvars.iv366.2, 4
  %i.aqj = add nuw nsw i64 %i.aqi, 512            ; 3 uses
  br i1 %.not184.i.us.2, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %i.aqj
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !86
  br label %dctcoef_get.exit195.us.2

bb.cc:                                            ; preds = %bb.ca
  %i.aqm = getelementptr inbounds nuw [2 x i8], ptr %i.adl, i64 %i.aqj
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !86
  %i.aqo = zext i16 %i.aqn to i32
  br label %dctcoef_get.exit195.us.2

dctcoef_get.exit195.us.2:                         ; preds = %bb.cc, %bb.cb
  %.0.i194.us.2 = phi i32 [ %i.aql, %bb.cb ], [ %i.aqo, %bb.cc ]
  %.not186.i.us.2 = icmp eq i32 %.0.i194.us.2, 0
  %spec.select572 = select i1 %.not186.i.us.2, ptr %.1173.i.us.2, ptr %.1171.i.us.2
  br label %.sink.split562

.sink.split562:                                   ; preds = %dctcoef_get.exit195.us.2, %._crit_edge428
  %.pre-phi466.sink = phi i64 [ %i.aqj, %dctcoef_get.exit195.us.2 ], [ %.pre465, %._crit_edge428 ]
  %.1173.i.us.2.sink = phi ptr [ %spec.select572, %dctcoef_get.exit195.us.2 ], [ %.1173.i.us.2, %._crit_edge428 ]
  %i.aqp = trunc nuw nsw i64 %.pre-phi466.sink to i32
  %i.aqq = shl i32 %i.aqp, %i.aok
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.aqr
  call void %.1173.i.us.2.sink(ptr noundef %i.aoq, ptr noundef nonnull %i.aqs, i32 noundef %.0137) #7
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split562, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bs
  %indvars.iv.next367.2 = add nuw nsw i64 %indvars.iv366.2, 1 ; 2 uses
  %exitcond369.2.not = icmp eq i64 %indvars.iv.next367.2, 16
  br i1 %exitcond369.2.not, label %.split306.us, label %bb.bq, !llvm.loop !118

xchg_mb_border.exit184.split.split:               ; preds = %xchg_mb_border.exit184.split
  %i.aqt = load i32, ptr %i.x, align 8, !tbaa !76 ; 4 uses
  br i1 %.not85.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %xchg_mb_border.exit184.split.split
  %i.aqu = load ptr, ptr %i.ade, align 8, !tbaa !119 ; 2 uses
  br label %bb.ch

bb.cg:                                            ; preds = %xchg_mb_border.exit184.split.split
  %i.aqv = load ptr, ptr %i.adf, align 8, !tbaa !120
  %i.aqw = load ptr, ptr %i.adg, align 8, !tbaa !121
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.0172.i = phi ptr [ %i.aqu, %bb.cf ], [ %i.aqw, %bb.cg ]
  %.0170.i = phi ptr [ %i.aqu, %bb.cf ], [ %i.aqv, %bb.cg ]
  %.not.i196 = icmp eq i32 %i.aqt, 0
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ct
  %indvars.iv359 = phi i64 [ 0, %bb.ch ], [ %indvars.iv.next360, %bb.ct ] ; 10 uses
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %.0131, i64 %indvars.iv359
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !69
  %i.aqz = sext i32 %i.aqy to i64
  %i.ara = getelementptr inbounds i8, ptr %i.fw, i64 %i.aqz ; 5 uses
  %i.arb = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv359
  %i.arc = load i8, ptr %i.arb, align 4, !tbaa !86
  %i.ard = zext i8 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.ard
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !86 ; 3 uses
  br i1 %.not85.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.arg = load ptr, ptr %i.adi, align 8, !tbaa !71
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 4
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !115
  %i.arj = icmp eq i32 %i.ari, 244
  %i.ark = icmp slt i8 %i.arf, 2
  %or.cond.i = select i1 %i.arj, i1 %i.ark, i1 false
  br i1 %or.cond.i, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.arl = load i32, ptr %i.adj, align 4, !tbaa !122
  %i.arm = icmp ult i32 %i.arl, 151
  %i.arn = sext i8 %i.arf to i64                  ; 2 uses
  %indvars.iv359.tr = trunc nuw nsw i64 %indvars.iv359 to i32
  %i.aro = shl nuw nsw i32 %indvars.iv359.tr, 4
  %i.arp = shl i32 %i.aro, %i.aqt
  %i.arq = sext i32 %i.arp to i64
  %i.arr = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.arq ; 2 uses
  br i1 %i.arm, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ars = getelementptr inbounds [8 x i8], ptr %i.adp, i64 %i.arn
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !106
  tail call void %i.art(ptr noundef %i.ara, ptr noundef nonnull %i.arr, i64 noundef %i.ado) #7, !inline_history !107
  br label %bb.ct

bb.cm:                                            ; preds = %bb.ck
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.adk, i64 %i.arn
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !106
  %i.arw = load i32, ptr %i.adm, align 4, !tbaa !123
  %i.arx = trunc nuw nsw i64 %indvars.iv359 to i32 ; 2 uses
  %i.ary = shl i32 %i.arw, %i.arx
  %i.arz = and i32 %i.ary, 32768
  %i.asa = load i32, ptr %i.adn, align 4, !tbaa !116
  %i.asb = shl i32 %i.asa, %i.arx
  %i.asc = and i32 %i.asb, 16384
  tail call void %i.arv(ptr noundef %i.ara, ptr noundef nonnull %i.arr, i32 noundef %i.arz, i32 noundef %i.asc, i64 noundef %i.ado) #7, !inline_history !107
  br label %bb.ct

bb.cn:                                            ; preds = %bb.cj, %bb.ci
  %gep = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv359
  %i.asd = load i8, ptr %gep, align 4, !tbaa !86
  %i.ase = zext i8 %i.asd to i64
  %i.asf = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.ase
  %i.asg = load i8, ptr %i.asf, align 1, !tbaa !86
  %i.ash = sext i8 %i.arf to i64
  %i.asi = getelementptr inbounds [8 x i8], ptr %i.adr, i64 %i.ash
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !106
  %i.ask = load i32, ptr %i.adm, align 4, !tbaa !123
  %i.asl = trunc nuw nsw i64 %indvars.iv359 to i32 ; 2 uses
  %i.asm = shl i32 %i.ask, %i.asl
  %i.asn = and i32 %i.asm, 32768
  %i.aso = load i32, ptr %i.adn, align 4, !tbaa !116
  %i.asp = shl i32 %i.aso, %i.asl
  %i.asq = and i32 %i.asp, 16384
  tail call void %i.asj(ptr noundef %i.ara, i32 noundef %i.asn, i32 noundef %i.asq, i64 noundef %i.ado) #7, !inline_history !107
  switch i8 %i.asg, label %._crit_edge427 [
    i8 0, label %bb.ct
    i8 1, label %bb.co
  ]

._crit_edge427:                                   ; preds = %bb.cn
  %.pre467 = shl nuw nsw i64 %indvars.iv359, 4
  br label %bb.cs

bb.co:                                            ; preds = %bb.cn
  %i.asr = shl nuw nsw i64 %indvars.iv359, 4      ; 4 uses
  br i1 %.not.i196, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %i.asr
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !86
  br label %dctcoef_get.exit198

bb.cq:                                            ; preds = %bb.co
  %i.asu = getelementptr inbounds nuw [2 x i8], ptr %i.adl, i64 %i.asr
  %i.asv = load i16, ptr %i.asu, align 2, !tbaa !86
  %i.asw = zext i16 %i.asv to i32
  br label %dctcoef_get.exit198

dctcoef_get.exit198:                              ; preds = %bb.cp, %bb.cq
  %.0.i197 = phi i32 [ %i.ast, %bb.cp ], [ %i.asw, %bb.cq ]
  %.not189.i = icmp eq i32 %.0.i197, 0
  br i1 %.not189.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %dctcoef_get.exit198
  %i.asx = trunc nuw nsw i64 %i.asr to i32
  %i.asy = shl i32 %i.asx, %i.aqt
  %i.asz = sext i32 %i.asy to i64
  %i.ata = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.asz
  tail call void %.0170.i(ptr noundef %i.ara, ptr noundef nonnull %i.ata, i32 noundef %.0137) #7, !inline_history !107
  br label %bb.ct

bb.cs:                                            ; preds = %._crit_edge427, %dctcoef_get.exit198
  %.pre-phi470 = phi i64 [ %.pre467, %._crit_edge427 ], [ %i.asr, %dctcoef_get.exit198 ]
  %i.atb = trunc nuw nsw i64 %.pre-phi470 to i32
  %i.atc = shl i32 %i.atb, %i.aqt
  %i.atd = sext i32 %i.atc to i64
  %i.ate = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.atd
  tail call void %.0172.i(ptr noundef %i.ara, ptr noundef nonnull %i.ate, i32 noundef %.0137) #7, !inline_history !107
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cn, %bb.cm, %bb.cl
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 4
  %i.atf = icmp samesign ult i64 %indvars.iv359, 12
  br i1 %i.atf, label %bb.ci, label %hl_decode_mb_predict_luma.exit.loopexit272, !llvm.loop !124

hl_decode_mb_predict_luma.exit.loopexit272:       ; preds = %bb.ct
  %i.atg = load i32, ptr %i.x, align 8, !tbaa !76 ; 4 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %.0131, i64 64
  br i1 %.not85.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %hl_decode_mb_predict_luma.exit.loopexit272
  %i.ati = load ptr, ptr %i.ade, align 8, !tbaa !119 ; 2 uses
  br label %bb.cw

bb.cv:                                            ; preds = %hl_decode_mb_predict_luma.exit.loopexit272
  %i.atj = load ptr, ptr %i.adf, align 8, !tbaa !120
  %i.atk = load ptr, ptr %i.adg, align 8, !tbaa !121
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.0172.i.1 = phi ptr [ %i.ati, %bb.cu ], [ %i.atk, %bb.cv ]
  %.0170.i.1 = phi ptr [ %i.ati, %bb.cu ], [ %i.atj, %bb.cv ]
  %.not.i196.1 = icmp eq i32 %i.atg, 0
  br label %bb.cx

bb.cx:                                            ; preds = %bb.di, %bb.cw
  %indvars.iv359.1 = phi i64 [ 0, %bb.cw ], [ %indvars.iv.next360.1, %bb.di ] ; 10 uses
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %indvars.iv359.1
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !69
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr inbounds i8, ptr %i.fv, i64 %i.atn ; 5 uses
  %i.atp = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv359.1
  %i.atq = load i8, ptr %i.atp, align 4, !tbaa !86
  %i.atr = zext i8 %i.atq to i64
  %i.ats = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.atr
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !86 ; 3 uses
  br i1 %.not85.i, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.atu = load ptr, ptr %i.adi, align 8, !tbaa !71
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 4
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !115
  %i.atx = icmp eq i32 %i.atw, 244
  %i.aty = icmp slt i8 %i.att, 2
  %or.cond.i.1 = select i1 %i.atx, i1 %i.aty, i1 false
  br i1 %or.cond.i.1, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.atz = load i32, ptr %i.adj, align 4, !tbaa !122
  %i.aua = icmp ult i32 %i.atz, 151
  %i.aub = sext i8 %i.att to i64                  ; 2 uses
  %indvars.iv359.1.tr = trunc i64 %indvars.iv359.1 to i32
  %i.auc = shl i32 %indvars.iv359.1.tr, 4
  %i.aud = add i32 %i.auc, 256
  %i.aue = shl i32 %i.aud, %i.atg
  %i.auf = sext i32 %i.aue to i64
  %i.aug = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.auf ; 2 uses
  br i1 %i.aua, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.auh = getelementptr inbounds [8 x i8], ptr %i.adk, i64 %i.aub
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !106
  %i.auj = load i32, ptr %i.adm, align 4, !tbaa !123
  %i.auk = trunc nuw nsw i64 %indvars.iv359.1 to i32 ; 2 uses
  %i.aul = shl i32 %i.auj, %i.auk
  %i.aum = and i32 %i.aul, 32768
  %i.aun = load i32, ptr %i.adn, align 4, !tbaa !116
  %i.auo = shl i32 %i.aun, %i.auk
  %i.aup = and i32 %i.auo, 16384
  tail call void %i.aui(ptr noundef %i.ato, ptr noundef nonnull %i.aug, i32 noundef %i.aum, i32 noundef %i.aup, i64 noundef %i.ado) #7, !inline_history !107
  br label %bb.di

bb.db:                                            ; preds = %bb.cz
  %i.auq = getelementptr inbounds [8 x i8], ptr %i.adp, i64 %i.aub
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !106
  tail call void %i.aur(ptr noundef %i.ato, ptr noundef nonnull %i.aug, i64 noundef %i.ado) #7, !inline_history !107
  br label %bb.di

bb.dc:                                            ; preds = %bb.cy, %bb.cx
  %gep.1 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @scan8, i64 16), i64 %indvars.iv359.1
  %i.aus = load i8, ptr %gep.1, align 4, !tbaa !86
  %i.aut = zext i8 %i.aus to i64
  %i.auu = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.aut
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !86
  %i.auw = sext i8 %i.att to i64
  %i.aux = getelementptr inbounds [8 x i8], ptr %i.adr, i64 %i.auw
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !106
  %i.auz = load i32, ptr %i.adm, align 4, !tbaa !123
  %i.ava = trunc nuw nsw i64 %indvars.iv359.1 to i32 ; 2 uses
  %i.avb = shl i32 %i.auz, %i.ava
  %i.avc = and i32 %i.avb, 32768
  %i.avd = load i32, ptr %i.adn, align 4, !tbaa !116
  %i.ave = shl i32 %i.avd, %i.ava
  %i.avf = and i32 %i.ave, 16384
  tail call void %i.auy(ptr noundef %i.ato, i32 noundef %i.avc, i32 noundef %i.avf, i64 noundef %i.ado) #7, !inline_history !107
  switch i8 %i.auv, label %._crit_edge427.1 [
    i8 0, label %bb.di
    i8 1, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.avg = shl nuw nsw i64 %indvars.iv359.1, 4
  %i.avh = add nuw nsw i64 %i.avg, 256            ; 4 uses
  br i1 %.not.i196.1, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %i.avh
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !86
  br label %dctcoef_get.exit198.1

bb.df:                                            ; preds = %bb.dd
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.adl, i64 %i.avh
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !86
end_hunk_1
begin_hunk_2_@hl_decode_mb_444_complex:bb.a
  %i.bha = getelementptr inbounds i8, ptr %i.bgz, i64 %i.bfm ; 2 uses
  %.sroa.028.0.copyload.i = load i64, ptr %i.bha, align 8, !tbaa !86
  %i.bhb = getelementptr inbounds i8, ptr %i.bad, i64 %i.bgk ; 3 uses
  %i.bhc = load i64, ptr %i.bhb, align 8, !tbaa !86
  store i64 %i.bhc, ptr %i.bha, align 8, !tbaa !86
  store i64 %.sroa.028.0.copyload.i, ptr %i.bhb, align 8, !tbaa !86
  %i.bhd = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bhe = load i32, ptr %i.d, align 16, !tbaa !77
  %i.bhf = sext i32 %i.bhe to i64
  %i.bhg = getelementptr [96 x i8], ptr %i.bhd, i64 %i.bhf
  %i.bhh = getelementptr i8, ptr %i.bhg, i64 %i.bfm
  %i.bhi = getelementptr i8, ptr %i.bhh, i64 104  ; 2 uses
  %.sroa.026.0.copyload.i = load i64, ptr %i.bhi, align 8, !tbaa !86
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhb, i64 8 ; 2 uses
  %i.bhk = load i64, ptr %i.bhj, align 8, !tbaa !86
  store i64 %i.bhk, ptr %i.bhi, align 8, !tbaa !86
  store i64 %.sroa.026.0.copyload.i, ptr %i.bhj, align 8, !tbaa !86
  br label %xchg_mb_border.exit

bb.el:                                            ; preds = %.thread542
  %i.bhl = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bhm = sext i32 %i.beo to i64
  %i.bhn = getelementptr inbounds [96 x i8], ptr %i.bhl, i64 %i.bhm
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 16 ; 2 uses
  %.sroa.030.0.copyload.i = load i64, ptr %i.bho, align 8, !tbaa !86
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bac, i64 17 ; 2 uses
  %i.bhq = load i64, ptr %i.bhp, align 8, !tbaa !86
  store i64 %i.bhq, ptr %i.bho, align 8, !tbaa !86
  store i64 %.sroa.030.0.copyload.i, ptr %i.bhp, align 8, !tbaa !86
  %i.bhr = load ptr, ptr %i.baf, align 8, !tbaa !81
  %i.bhs = load i32, ptr %i.d, align 16, !tbaa !77
  %i.bht = sext i32 %i.bhs to i64
  %i.bhu = getelementptr [96 x i8], ptr %i.bhr, i64 %i.bht
  %i.bhv = getelementptr i8, ptr %i.bhu, i64 128  ; 2 uses
  %.sroa.024.0.copyload.i = load i64, ptr %i.bhv, align 8, !tbaa !86
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bad, i64 17 ; 2 uses
  %i.bhx = load i64, ptr %i.bhw, align 8, !tbaa !86
  store i64 %i.bhx, ptr %i.bhv, align 8, !tbaa !86
  store i64 %.sroa.024.0.copyload.i, ptr %i.bhw, align 8, !tbaa !86
  br label %xchg_mb_border.exit

bb.em:                                            ; preds = %bb.s
  %i.bhy = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bhz = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.bia = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bic = load i32, ptr %i.h, align 8, !tbaa !68
  %i.bid = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.bie = sext i32 %i.bic to i64
  %i.bif = getelementptr inbounds [4 x i8], ptr %i.bid, i64 %i.bie
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !69 ; 15 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !125
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bii, i64 664
  %i.bik = load i32, ptr %i.bij, align 8, !tbaa !126
  %i.bil = and i32 %i.bik, 1
  %.not.i203 = icmp eq i32 %i.bil, 0
  br i1 %.not.i203, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call fastcc void @await_references(ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.bim = and i32 %i.big, 12288
  %.not203.i = icmp eq i32 %i.bim, 0
  br i1 %.not203.i, label %prefetch_motion.exit214.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.bin = getelementptr inbounds nuw i8, ptr %1, i64 29068
  %i.bio = load i8, ptr %i.bin, align 4, !tbaa !86 ; 2 uses
  %i.bip = icmp sgt i8 %i.bio, -1
  br i1 %i.bip, label %bb.eq, label %prefetch_motion.exit214.i

bb.eq:                                            ; preds = %bb.ep
  %i.biq = load i32, ptr %i.x, align 8, !tbaa !76
  %i.bir = zext nneg i8 %i.bio to i64
  %i.bis = getelementptr inbounds nuw i8, ptr %1, i64 28784
  %i.bit = load i16, ptr %i.bis, align 16, !tbaa !91
  %i.biu = ashr i16 %i.bit, 2
  %i.biv = load i32, ptr %i.d, align 16, !tbaa !77 ; 2 uses
  %i.biw = shl nsw i32 %i.biv, 4
  %i.bix = getelementptr inbounds nuw i8, ptr %1, i64 28786
  %i.biy = load i16, ptr %i.bix, align 2, !tbaa !91
  %i.biz = ashr i16 %i.biy, 2
  %i.bja = sext i16 %i.biz to i32
  %i.bjb = load i32, ptr %i.f, align 4, !tbaa !78
  %i.bjc = shl nsw i32 %i.bjb, 4
  %i.bjd = getelementptr inbounds nuw i8, ptr %1, i64 22656
  %i.bje = getelementptr inbounds nuw [56 x i8], ptr %i.bjd, i64 %i.bir ; 3 uses
  %i.bjf = shl i32 %i.biv, 2
  %i.bjg = and i32 %i.bjf, 12
  %i.bjh = add nsw i32 %i.bjg, %i.bja
  %i.bji = add i32 %i.bjh, %i.bjc
  %i.bjj = getelementptr inbounds nuw i8, ptr %1, i64 21008
  %i.bjk = load i64, ptr %i.bjj, align 16, !tbaa !89
  %i.bjl = trunc i64 %i.bjk to i32
  %i.bjm = mul i32 %i.bji, %i.bjl
  %narrow.i = add nsw i16 %i.biu, 72
  %i.bjn = sext i16 %narrow.i to i32
  %i.bjo = add i32 %i.biw, %i.bjn
  %i.bjp = shl i32 %i.bjo, %i.biq
  %i.bjq = add i32 %i.bjm, %i.bjp
  %i.bjr = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.bjs = load ptr, ptr %i.bje, align 8, !tbaa !81
  %i.bjt = sext i32 %i.bjq to i64                 ; 3 uses
  %i.bju = getelementptr inbounds i8, ptr %i.bjs, i64 %i.bjt
  %i.bjv = load i64, ptr %i.z, align 16, !tbaa !82
  tail call void %i.bjr(ptr noundef %i.bju, i64 noundef %i.bjv, i32 noundef 4) #7, !inline_history !137
  %i.bjw = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bje, i64 8
  %i.bjy = load ptr, ptr %i.bjx, align 8, !tbaa !81
  %i.bjz = getelementptr inbounds i8, ptr %i.bjy, i64 %i.bjt
  %i.bka = load i64, ptr %i.z, align 16, !tbaa !82
  tail call void %i.bjw(ptr noundef %i.bjz, i64 noundef %i.bka, i32 noundef 4) #7, !inline_history !137
  %i.bkb = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bje, i64 16
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !81
  %i.bke = getelementptr inbounds i8, ptr %i.bkd, i64 %i.bjt
  %i.bkf = load i64, ptr %i.z, align 16, !tbaa !82
  tail call void %i.bkb(ptr noundef %i.bke, i64 noundef %i.bkf, i32 noundef 4) #7, !inline_history !137
  br label %prefetch_motion.exit214.i

prefetch_motion.exit214.i:                        ; preds = %bb.eq, %bb.ep, %bb.eo
  %i.bkg = and i32 %i.big, 8
  %.not204.i = icmp eq i32 %i.bkg, 0
  br i1 %.not204.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %prefetch_motion.exit214.i
  %i.bkh = and i32 %i.big, 4096
  %i.bki = and i32 %i.big, 16384
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.bhy, ptr noundef nonnull readonly %i.bhz, ptr noundef nonnull readonly %i.bia, ptr noundef nonnull readonly %i.bib, i32 noundef %i.bkh, i32 noundef %i.bki)
  br label %.loopexit216.i

bb.es:                                            ; preds = %prefetch_motion.exit214.i
  %i.bkj = and i32 %i.big, 16
  %.not205.i = icmp eq i32 %i.bkj, 0
  br i1 %.not205.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bkk = load i32, ptr %i.x, align 8, !tbaa !76
  %i.bkl = shl i32 8, %i.bkk
  %i.bkm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.bko = and i32 %i.big, 4096
  %i.bkp = and i32 %i.big, 16384
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef %i.bkl, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.bkm, ptr noundef nonnull readonly %i.bkn, ptr noundef nonnull readonly %i.bia, ptr noundef nonnull readonly %i.bib, i32 noundef %i.bko, i32 noundef %i.bkp)
  %i.bkq = load i32, ptr %i.x, align 8, !tbaa !76
  %i.bkr = shl i32 8, %i.bkq
  %i.bks = and i32 %i.big, 8192
  %i.bkt = and i32 %i.big, 32768
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, i32 noundef 8, i32 noundef %i.bkr, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef 0, i32 noundef 4, ptr noundef nonnull readonly %i.bkm, ptr noundef nonnull readonly %i.bkn, ptr noundef nonnull readonly %i.bia, ptr noundef nonnull readonly %i.bib, i32 noundef %i.bks, i32 noundef %i.bkt)
  br label %.loopexit216.i

bb.eu:                                            ; preds = %bb.es
  %i.bku = and i32 %i.big, 32
  %.not206.i = icmp eq i32 %i.bku, 0
  br i1 %.not206.i, label %.preheader215.i, label %bb.ev

.preheader215.i:                                  ; preds = %bb.eu
  %i.bkv = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.bkw = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bkx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bky = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 8 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %1, i64 21008 ; 2 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.blf = getelementptr inbounds nuw i8, ptr %1, i64 21008 ; 2 uses
  %i.blg = load i64, ptr %i.blf, align 16, !tbaa !89
  %.tr211.i = trunc i64 %i.blg to i32
  %i.blh = shl i32 %.tr211.i, 3
  %i.bli = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.blm = and i32 %i.big, 4096
  %i.bln = and i32 %i.big, 16384
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef %i.blh, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.bli, ptr noundef nonnull readonly %i.blj, ptr noundef nonnull readonly %i.blk, ptr noundef nonnull readonly %i.bll, i32 noundef %i.blm, i32 noundef %i.bln)
  %i.blo = load i64, ptr %i.blf, align 16, !tbaa !89
  %.tr212.i = trunc i64 %i.blo to i32
  %i.blp = shl i32 %.tr212.i, 3
  %i.blq = and i32 %i.big, 8192
  %i.blr = and i32 %i.big, 32768
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 0, i32 noundef 16, i32 noundef %i.blp, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef 4, i32 noundef 0, ptr noundef nonnull readonly %i.bli, ptr noundef nonnull readonly %i.blj, ptr noundef nonnull readonly %i.blk, ptr noundef nonnull readonly %i.bll, i32 noundef %i.blq, i32 noundef %i.blr)
  br label %.loopexit216.i

bb.ew:                                            ; preds = %.loopexit.i, %.preheader215.i
  %indvars.iv.i = phi i64 [ 0, %.preheader215.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.bls = getelementptr inbounds nuw [2 x i8], ptr %i.bkv, i64 %indvars.iv.i
  %i.blt = load i16, ptr %i.bls, align 2, !tbaa !91
  %i.blu = zext i16 %i.blt to i32                 ; 11 uses
  %indvars.iv.i.tr = trunc i64 %indvars.iv.i to i32 ; 2 uses
  %i.blv = shl i32 %indvars.iv.i.tr, 2            ; 10 uses
  %i.blw = and i32 %i.blv, 4                      ; 8 uses
  %i.blx = shl nuw nsw i32 %indvars.iv.i.tr, 1    ; 2 uses
  %i.bly = and i32 %i.blx, 4                      ; 7 uses
  %i.blz = and i32 %i.blu, 8
  %.not207.i = icmp eq i32 %i.blz, 0
  br i1 %.not207.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.bma = and i32 %i.blu, 4096
  %i.bmb = and i32 %i.blu, 16384
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.blv, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.blw, i32 noundef %i.bly, ptr noundef nonnull readonly %i.bkw, ptr noundef nonnull readonly %i.bkx, ptr noundef nonnull readonly %i.bky, ptr noundef nonnull readonly %i.bkz, i32 noundef %i.bma, i32 noundef %i.bmb)
  br label %.loopexit.i

bb.ey:                                            ; preds = %bb.ew
  %i.bmc = and i32 %i.blu, 16
  %.not208.i = icmp eq i32 %i.bmc, 0
  br i1 %.not208.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.bmd = load i32, ptr %i.x, align 8, !tbaa !76
  %i.bme = shl i32 4, %i.bmd
  %i.bmf = and i32 %i.blu, 4096                   ; 2 uses
  %i.bmg = and i32 %i.blu, 16384                  ; 2 uses
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.blv, i32 noundef 0, i32 noundef 4, i32 noundef %i.bme, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.blw, i32 noundef %i.bly, ptr noundef nonnull readonly %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef nonnull readonly %i.bky, ptr noundef nonnull readonly %i.bkz, i32 noundef %i.bmf, i32 noundef %i.bmg)
  %i.bmh = load i32, ptr %i.x, align 8, !tbaa !76
  %i.bmi = shl i32 4, %i.bmh
  %i.bmj = or i32 %i.blx, 2
  %i.bmk = or disjoint i32 %i.blv, 2
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bmk, i32 noundef 0, i32 noundef 4, i32 noundef %i.bmi, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.blw, i32 noundef %i.bmj, ptr noundef nonnull readonly %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef nonnull readonly %i.bky, ptr noundef nonnull readonly %i.bkz, i32 noundef %i.bmf, i32 noundef %i.bmg)
  br label %.loopexit.i

bb.fa:                                            ; preds = %bb.ey
  %i.bml = and i32 %i.blu, 32
  %.not209.i = icmp eq i32 %i.bml, 0
  br i1 %.not209.i, label %.preheader.i, label %bb.fb

.preheader.i:                                     ; preds = %bb.fa
  %i.bmm = and i32 %i.blu, 4096                   ; 4 uses
  %i.bmn = and i32 %i.blu, 16384                  ; 4 uses
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.blv, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.blw, i32 noundef %i.bly, ptr noundef nonnull readonly %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef nonnull readonly %i.bld, ptr noundef nonnull readonly %i.ble, i32 noundef %i.bmm, i32 noundef %i.bmn)
  %i.bmo = or disjoint i32 %i.blw, 2              ; 2 uses
  %i.bmp = or disjoint i32 %i.blv, 1
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bmp, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.bmo, i32 noundef %i.bly, ptr noundef nonnull readonly %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef nonnull readonly %i.bld, ptr noundef nonnull readonly %i.ble, i32 noundef %i.bmm, i32 noundef %i.bmn)
  %i.bmq = or disjoint i32 %i.bly, 2              ; 2 uses
  %i.bmr = or disjoint i32 %i.blv, 2
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bmr, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.blw, i32 noundef %i.bmq, ptr noundef nonnull readonly %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef nonnull readonly %i.bld, ptr noundef nonnull readonly %i.ble, i32 noundef %i.bmm, i32 noundef %i.bmn)
  %i.bms = or disjoint i32 %i.blv, 3
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bms, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.bmo, i32 noundef %i.bmq, ptr noundef nonnull readonly %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef nonnull readonly %i.bld, ptr noundef nonnull readonly %i.ble, i32 noundef %i.bmm, i32 noundef %i.bmn)
  br label %.loopexit.i

bb.fb:                                            ; preds = %bb.fa
  %i.bmt = load i64, ptr %i.blc, align 16, !tbaa !89
  %.tr.i = trunc i64 %i.bmt to i32
  %i.bmu = shl i32 %.tr.i, 2
  %i.bmv = and i32 %i.blu, 4096                   ; 2 uses
  %i.bmw = and i32 %i.blu, 16384                  ; 2 uses
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.blv, i32 noundef 0, i32 noundef 8, i32 noundef %i.bmu, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.blw, i32 noundef %i.bly, ptr noundef nonnull readonly %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef nonnull readonly %i.bld, ptr noundef nonnull readonly %i.ble, i32 noundef %i.bmv, i32 noundef %i.bmw)
  %i.bmx = load i64, ptr %i.blc, align 16, !tbaa !89
  %.tr210.i = trunc i64 %i.bmx to i32
  %i.bmy = shl i32 %.tr210.i, 2
  %i.bmz = or disjoint i32 %i.blw, 2
  %i.bna = or disjoint i32 %i.blv, 1
  tail call fastcc void @mc_part_444_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bna, i32 noundef 0, i32 noundef 8, i32 noundef %i.bmy, ptr noundef %i.fw, ptr noundef %i.fv, ptr noundef %i.fu, i32 noundef %i.bmz, i32 noundef %i.bly, ptr noundef nonnull readonly %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef nonnull readonly %i.bld, ptr noundef nonnull readonly %i.ble, i32 noundef %i.bmv, i32 noundef %i.bmw)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.fb, %.preheader.i, %bb.ez, %bb.ex
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %.loopexit216.i, label %bb.ew, !llvm.loop !138

.loopexit216.i:                                   ; preds = %.loopexit.i, %bb.ev, %bb.et, %bb.er
  %i.bnb = and i32 %i.big, 49152
  %.not213.i = icmp eq i32 %i.bnb, 0
  br i1 %.not213.i, label %xchg_mb_border.exit, label %bb.fc

bb.fc:                                            ; preds = %.loopexit216.i
  %i.bnc = getelementptr inbounds nuw i8, ptr %1, i64 29108
  %i.bnd = load i8, ptr %i.bnc, align 4, !tbaa !86 ; 2 uses
  %i.bne = icmp sgt i8 %i.bnd, -1
  br i1 %i.bne, label %bb.fd, label %xchg_mb_border.exit

bb.fd:                                            ; preds = %bb.fc
  %i.bnf = load i32, ptr %i.x, align 8, !tbaa !76
  %i.bng = zext nneg i8 %i.bnd to i64
  %i.bnh = getelementptr inbounds nuw i8, ptr %1, i64 28944
  %i.bni = load i16, ptr %i.bnh, align 16, !tbaa !91
  %i.bnj = ashr i16 %i.bni, 2
  %i.bnk = load i32, ptr %i.d, align 16, !tbaa !77 ; 2 uses
  %i.bnl = shl nsw i32 %i.bnk, 4
  %i.bnm = getelementptr inbounds nuw i8, ptr %1, i64 28946
  %i.bnn = load i16, ptr %i.bnm, align 2, !tbaa !91
  %i.bno = ashr i16 %i.bnn, 2
  %i.bnp = sext i16 %i.bno to i32
  %i.bnq = load i32, ptr %i.f, align 4, !tbaa !78
  %i.bnr = shl nsw i32 %i.bnq, 4
  %i.bns = getelementptr inbounds nuw i8, ptr %1, i64 25344
  %i.bnt = getelementptr inbounds nuw [56 x i8], ptr %i.bns, i64 %i.bng ; 3 uses
  %i.bnu = shl i32 %i.bnk, 2
  %i.bnv = and i32 %i.bnu, 12
  %i.bnw = add nsw i32 %i.bnv, %i.bnp
  %i.bnx = add i32 %i.bnw, %i.bnr
  %i.bny = getelementptr inbounds nuw i8, ptr %1, i64 21008
  %i.bnz = load i64, ptr %i.bny, align 16, !tbaa !89
  %i.boa = trunc i64 %i.bnz to i32
  %i.bob = mul i32 %i.bnx, %i.boa
  %narrow219.i = add nsw i16 %i.bnj, 72
  %i.boc = sext i16 %narrow219.i to i32
  %i.bod = add i32 %i.bnl, %i.boc
  %i.boe = shl i32 %i.bod, %i.bnf
  %i.bof = add i32 %i.bob, %i.boe
  %i.bog = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.boh = load ptr, ptr %i.bnt, align 8, !tbaa !81
  %i.boi = sext i32 %i.bof to i64                 ; 3 uses
  %i.boj = getelementptr inbounds i8, ptr %i.boh, i64 %i.boi
  %i.bok = load i64, ptr %i.z, align 16, !tbaa !82
  tail call void %i.bog(ptr noundef %i.boj, i64 noundef %i.bok, i32 noundef 4) #7, !inline_history !137
  %i.bol = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bnt, i64 8
  %i.bon = load ptr, ptr %i.bom, align 8, !tbaa !81
  %i.boo = getelementptr inbounds i8, ptr %i.bon, i64 %i.boi
  %i.bop = load i64, ptr %i.z, align 16, !tbaa !82
  tail call void %i.bol(ptr noundef %i.boo, i64 noundef %i.bop, i32 noundef 4) #7, !inline_history !137
  %i.boq = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bnt, i64 16
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !81
  %i.bot = getelementptr inbounds i8, ptr %i.bos, i64 %i.boi
  %i.bou = load i64, ptr %i.z, align 16, !tbaa !82
  tail call void %i.boq(ptr noundef %i.bot, i64 noundef %i.bou, i32 noundef 4) #7, !inline_history !137
  br label %xchg_mb_border.exit

xchg_mb_border.exit:                              ; preds = %bb.fd, %bb.fc, %.loopexit216.i, %bb.el, %.thread255, %.thread542, %bb.ef, %bb.ea, %.thread254, %.split306.us
  %i.bov = and i32 %.fr318, 1
  %.not.i185 = icmp eq i32 %i.bov, 0
  %i.bow = getelementptr inbounds nuw i8, ptr %0, i64 34080 ; 3 uses
  %i.box = getelementptr inbounds nuw i8, ptr %1, i64 20868 ; 3 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 7 uses
  %i.boz = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 35 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 66 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %0, i64 30616 ; 3 uses
  %sext269 = shl i64 %.0137.in, 32
  %i.bpc = ashr exact i64 %sext269, 32            ; 3 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bpe = getelementptr inbounds nuw i8, ptr %1, i64 21092 ; 3 uses
  %i.bpf = and i32 %.fr318, 16777216
  %.not87.i = icmp eq i32 %i.bpf, 0               ; 5 uses
  %i.bpg = select i1 %.not87.i, i64 1, i64 4      ; 3 uses
  %.in.i186.v = select i1 %.not87.i, i64 288, i64 280
  %.in.i186 = getelementptr inbounds nuw i8, ptr %0, i64 %.in.i186.v ; 3 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  br i1 %.not.i185, label %xchg_mb_border.exit.split, label %.loopexit.split

xchg_mb_border.exit.split:                        ; preds = %xchg_mb_border.exit
  %i.bpj = and i32 %.fr318, 2
  %.not83.i = icmp eq i32 %i.bpj, 0
  br i1 %.not83.i, label %xchg_mb_border.exit.split.split.us.preheader, label %xchg_mb_border.exit.split.split

xchg_mb_border.exit.split.split.us.preheader:     ; preds = %xchg_mb_border.exit.split
  %i.bpk = load i32, ptr %i.x, align 8, !tbaa !76
  %i.bpl = load i32, ptr %i.bpe, align 4, !tbaa !139
  %i.bpm = and i32 %i.bpl, 15
  %.not84.i.us = icmp eq i32 %i.bpm, 0
  br i1 %.not84.i.us, label %hl_decode_mb_idct_luma.exit.us, label %bb.fe

bb.fe:                                            ; preds = %xchg_mb_border.exit.split.split.us.preheader
  br i1 %.not85.i, label %hl_decode_mb_idct_luma.exit.us.sink.split, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.bpn = load ptr, ptr %.in.i186, align 8, !tbaa !106
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fi, %bb.ff
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %bb.fi ], [ 0, %bb.ff ] ; 4 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv416
  %i.bpp = load i8, ptr %i.bpo, align 1, !tbaa !86
  %i.bpq = zext i8 %i.bpp to i64
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.boy, i64 %i.bpq
  %i.bps = load i8, ptr %i.bpr, align 1, !tbaa !86
  %.not88.i.us = icmp eq i8 %i.bps, 0
  br i1 %.not88.i.us, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bpt = getelementptr inbounds nuw [4 x i8], ptr %.0131, i64 %indvars.iv416
  %i.bpu = load i32, ptr %i.bpt, align 4, !tbaa !69
  %i.bpv = sext i32 %i.bpu to i64
  %i.bpw = getelementptr inbounds i8, ptr %i.fw, i64 %i.bpv
  %indvars.iv416.tr = trunc nuw nsw i64 %indvars.iv416 to i32
  %i.bpx = shl nuw nsw i32 %indvars.iv416.tr, 4
  %i.bpy = shl i32 %i.bpx, %i.bpk
  %i.bpz = sext i32 %i.bpy to i64
  %i.bqa = getelementptr inbounds [2 x i8], ptr %i.boz, i64 %i.bpz
  call void %i.bpn(ptr noundef %i.bpw, ptr noundef nonnull %i.bqa, i32 noundef %.0137) #7, !inline_history !140
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, %i.bpg ; 2 uses
  %i.bqb = icmp samesign ult i64 %indvars.iv.next417, 16
  br i1 %i.bqb, label %bb.fg, label %hl_decode_mb_idct_luma.exit.us, !llvm.loop !141

hl_decode_mb_idct_luma.exit.us.sink.split:        ; preds = %bb.fe
  %. = select i1 %.not87.i, ptr %i.bpi, ptr %i.bph
  %.sink569 = load ptr, ptr %., align 8, !tbaa !106
end_hunk_2
begin_hunk_3_@hl_decode_mb_444_simple_8:bb.a

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.st = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.su = load i64, ptr %i.st, align 8, !tbaa !86
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rt, i64 1
  store i64 %i.su, ptr %i.sv, align 8, !tbaa !86
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rq, i64 24 ; 2 uses
  %.sroa.048.0.copyload.i = load i64, ptr %i.sw, align 8, !tbaa !86
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rt, i64 9 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !86
  store i64 %i.sy, ptr %i.sw, align 8, !tbaa !86
  store i64 %.sroa.048.0.copyload.i, ptr %i.sx, align 8, !tbaa !86
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !86
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  store i64 %i.ta, ptr %i.tb, align 8, !tbaa !86
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rq, i64 40 ; 2 uses
  %.sroa.036.0.copyload.i = load i64, ptr %i.tc, align 8, !tbaa !86
  %i.td = getelementptr inbounds nuw i8, ptr %i.ru, i64 9 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !86
  store i64 %i.te, ptr %i.tc, align 8, !tbaa !86
  store i64 %.sroa.036.0.copyload.i, ptr %i.td, align 8, !tbaa !86
  %i.tf = load i32, ptr %i.c, align 16, !tbaa !77
  %i.tg = add nsw i32 %i.tf, 1                    ; 2 uses
  %i.th = load i32, ptr %i.sf, align 8, !tbaa !104
  %i.ti = icmp slt i32 %i.tg, %i.th
  br i1 %i.ti, label %bb.bm, label %xchg_mb_border.exit

bb.bm:                                            ; preds = %bb.bl
  %i.tj = load ptr, ptr %i.rr, align 8, !tbaa !81
  %i.tk = sext i32 %i.tg to i64
  %i.tl = getelementptr inbounds [96 x i8], ptr %i.tj, i64 %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 16 ; 2 uses
  %.sroa.030.0.copyload.i = load i64, ptr %i.tm, align 8, !tbaa !86
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rt, i64 17 ; 2 uses
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !86
  store i64 %i.to, ptr %i.tm, align 8, !tbaa !86
  store i64 %.sroa.030.0.copyload.i, ptr %i.tn, align 8, !tbaa !86
  %i.tp = load ptr, ptr %i.rr, align 8, !tbaa !81
  %i.tq = load i32, ptr %i.c, align 16, !tbaa !77
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr [96 x i8], ptr %i.tp, i64 %i.tr
  %i.tt = getelementptr i8, ptr %i.ts, i64 128    ; 2 uses
  %.sroa.024.0.copyload.i = load i64, ptr %i.tt, align 8, !tbaa !86
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ru, i64 17 ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !86
  store i64 %i.tv, ptr %i.tt, align 8, !tbaa !86
  store i64 %.sroa.024.0.copyload.i, ptr %i.tu, align 8, !tbaa !86
  br label %xchg_mb_border.exit

bb.bn:                                            ; preds = %bb.a
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ua = load i32, ptr %i.g, align 8, !tbaa !68
  %i.ub = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.uc = sext i32 %i.ua to i64
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !69 ; 15 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !125
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 664
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !126
  %i.uj = and i32 %i.ui, 1
  %.not.i76 = icmp eq i32 %i.uj, 0
  br i1 %.not.i76, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call fastcc void @await_references(ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.uk = and i32 %i.ue, 12288
  %.not197.i = icmp eq i32 %i.uk, 0
  br i1 %.not197.i, label %prefetch_motion.exit208.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 29068
  %i.um = load i8, ptr %i.ul, align 4, !tbaa !86  ; 2 uses
  %i.un = icmp sgt i8 %i.um, -1
  br i1 %i.un, label %bb.br, label %prefetch_motion.exit208.i

bb.br:                                            ; preds = %bb.bq
  %i.uo = zext nneg i8 %i.um to i64
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 28784
  %i.uq = load i16, ptr %i.up, align 16, !tbaa !91
  %i.ur = ashr i16 %i.uq, 2
  %i.us = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.ut = shl nsw i32 %i.us, 4
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 28786
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !91
  %i.uw = ashr i16 %i.uv, 2
  %i.ux = sext i16 %i.uw to i32
  %i.uy = load i32, ptr %i.e, align 4, !tbaa !78
  %i.uz = shl nsw i32 %i.uy, 4
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 22656
  %i.vb = getelementptr inbounds nuw [56 x i8], ptr %i.va, i64 %i.uo ; 3 uses
  %i.vc = shl i32 %i.us, 2
  %i.vd = and i32 %i.vc, 12
  %i.ve = add nsw i32 %i.vd, %i.ux
  %i.vf = add i32 %i.ve, %i.uz
  %i.vg = load i64, ptr %i.bx, align 16, !tbaa !89
  %i.vh = trunc i64 %i.vg to i32
  %i.vi = mul i32 %i.vf, %i.vh
  %narrow.i = add nsw i16 %i.ur, 72
  %i.vj = sext i16 %narrow.i to i32
  %i.vk = add i32 %i.ut, %i.vj
  %i.vl = add i32 %i.vk, %i.vi
  %i.vm = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.vn = load ptr, ptr %i.vb, align 8, !tbaa !81
  %i.vo = sext i32 %i.vl to i64                   ; 3 uses
  %i.vp = getelementptr inbounds i8, ptr %i.vn, i64 %i.vo
  %i.vq = load i64, ptr %i.q, align 16, !tbaa !82
  tail call void %i.vm(ptr noundef %i.vp, i64 noundef %i.vq, i32 noundef 4) #7, !inline_history !147
  %i.vr = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !81
  %i.vu = getelementptr inbounds i8, ptr %i.vt, i64 %i.vo
  %i.vv = load i64, ptr %i.q, align 16, !tbaa !82
  tail call void %i.vr(ptr noundef %i.vu, i64 noundef %i.vv, i32 noundef 4) #7, !inline_history !147
  %i.vw = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !81
  %i.vz = getelementptr inbounds i8, ptr %i.vy, i64 %i.vo
  %i.wa = load i64, ptr %i.q, align 16, !tbaa !82
  tail call void %i.vw(ptr noundef %i.vz, i64 noundef %i.wa, i32 noundef 4) #7, !inline_history !147
  br label %prefetch_motion.exit208.i

prefetch_motion.exit208.i:                        ; preds = %bb.br, %bb.bq, %bb.bp
  %i.wb = and i32 %i.ue, 8
  %.not198.i = icmp eq i32 %i.wb, 0
  br i1 %.not198.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %prefetch_motion.exit208.i
  %i.wc = and i32 %i.ue, 4096
  %i.wd = and i32 %i.ue, 16384
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.an, ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.tw, ptr noundef nonnull readonly %i.tx, ptr noundef nonnull readonly %i.ty, ptr noundef nonnull readonly %i.tz, i32 noundef %i.wc, i32 noundef %i.wd)
  br label %.loopexit210.i

bb.bt:                                            ; preds = %prefetch_motion.exit208.i
  %i.we = and i32 %i.ue, 16
  %.not199.i = icmp eq i32 %i.we, 0
  br i1 %.not199.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.wh = and i32 %i.ue, 4096
  %i.wi = and i32 %i.ue, 16384
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.y, ptr noundef nonnull %i.an, ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.wf, ptr noundef nonnull readonly %i.wg, ptr noundef nonnull readonly %i.ty, ptr noundef nonnull readonly %i.tz, i32 noundef %i.wh, i32 noundef %i.wi)
  %i.wj = and i32 %i.ue, 8192
  %i.wk = and i32 %i.ue, 32768
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.y, ptr noundef nonnull %i.an, ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef 4, ptr noundef nonnull readonly %i.wf, ptr noundef nonnull readonly %i.wg, ptr noundef nonnull readonly %i.ty, ptr noundef nonnull readonly %i.tz, i32 noundef %i.wj, i32 noundef %i.wk)
  br label %.loopexit210.i

bb.bv:                                            ; preds = %bb.bt
  %i.wl = and i32 %i.ue, 32
  %.not200.i = icmp eq i32 %i.wl, 0
  br i1 %.not200.i, label %.preheader209.i, label %bb.bw

.preheader209.i:                                  ; preds = %bb.bv
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 8 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.wv = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr205.i = trunc i64 %i.wv to i32
  %i.ww = shl i32 %.tr205.i, 3
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.xb = and i32 %i.ue, 4096
  %i.xc = and i32 %i.ue, 16384
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef %i.ww, ptr noundef nonnull %i.y, ptr noundef nonnull %i.an, ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.wx, ptr noundef nonnull readonly %i.wy, ptr noundef nonnull readonly %i.wz, ptr noundef nonnull readonly %i.xa, i32 noundef %i.xb, i32 noundef %i.xc)
  %i.xd = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr206.i = trunc i64 %i.xd to i32
  %i.xe = shl i32 %.tr206.i, 3
  %i.xf = and i32 %i.ue, 8192
  %i.xg = and i32 %i.ue, 32768
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 0, i32 noundef 16, i32 noundef %i.xe, ptr noundef nonnull %i.y, ptr noundef nonnull %i.an, ptr noundef nonnull %i.be, i32 noundef 4, i32 noundef 0, ptr noundef nonnull readonly %i.wx, ptr noundef nonnull readonly %i.wy, ptr noundef nonnull readonly %i.wz, ptr noundef nonnull readonly %i.xa, i32 noundef %i.xf, i32 noundef %i.xg)
  br label %.loopexit210.i

bb.bx:                                            ; preds = %.loopexit.i, %.preheader209.i
  %indvars.iv.i = phi i64 [ 0, %.preheader209.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.wm, i64 %indvars.iv.i
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !91
  %i.xj = zext i16 %i.xi to i32                   ; 11 uses
  %indvars.iv.i.tr = trunc i64 %indvars.iv.i to i32 ; 2 uses
  %i.xk = shl i32 %indvars.iv.i.tr, 2             ; 10 uses
  %i.xl = and i32 %i.xk, 4                        ; 8 uses
  %i.xm = shl nuw nsw i32 %indvars.iv.i.tr, 1     ; 2 uses
  %i.xn = and i32 %i.xm, 4                        ; 7 uses
  %i.xo = and i32 %i.xj, 8
  %.not201.i = icmp eq i32 %i.xo, 0
  br i1 %.not201.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.xp = and i32 %i.xj, 4096
  %i.xq = and i32 %i.xj, 16384
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.xk, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.xl, i32 noundef %i.xn, ptr noundef nonnull readonly %i.wn, ptr noundef nonnull readonly %i.wo, ptr noundef nonnull readonly %i.wp, ptr noundef nonnull readonly %i.wq, i32 noundef %i.xp, i32 noundef %i.xq)
  br label %.loopexit.i

bb.bz:                                            ; preds = %bb.bx
  %i.xr = and i32 %i.xj, 16
  %.not202.i = icmp eq i32 %i.xr, 0
  br i1 %.not202.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.xs = and i32 %i.xj, 4096                     ; 2 uses
  %i.xt = and i32 %i.xj, 16384                    ; 2 uses
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.xk, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.xl, i32 noundef %i.xn, ptr noundef nonnull readonly %i.wr, ptr noundef nonnull readonly %i.ws, ptr noundef nonnull readonly %i.wp, ptr noundef nonnull readonly %i.wq, i32 noundef %i.xs, i32 noundef %i.xt)
  %i.xu = or i32 %i.xm, 2
  %i.xv = or disjoint i32 %i.xk, 2
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.xv, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.xl, i32 noundef %i.xu, ptr noundef nonnull readonly %i.wr, ptr noundef nonnull readonly %i.ws, ptr noundef nonnull readonly %i.wp, ptr noundef nonnull readonly %i.wq, i32 noundef %i.xs, i32 noundef %i.xt)
  br label %.loopexit.i

bb.cb:                                            ; preds = %bb.bz
  %i.xw = and i32 %i.xj, 32
  %.not203.i = icmp eq i32 %i.xw, 0
  br i1 %.not203.i, label %.preheader.i, label %bb.cc

.preheader.i:                                     ; preds = %bb.cb
  %i.xx = and i32 %i.xj, 4096                     ; 4 uses
  %i.xy = and i32 %i.xj, 16384                    ; 4 uses
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.xk, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.xl, i32 noundef %i.xn, ptr noundef nonnull readonly %i.wr, ptr noundef nonnull readonly %i.ws, ptr noundef nonnull readonly %i.wt, ptr noundef nonnull readonly %i.wu, i32 noundef %i.xx, i32 noundef %i.xy)
  %i.xz = or disjoint i32 %i.xl, 2                ; 2 uses
  %i.ya = or disjoint i32 %i.xk, 1
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.ya, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.xz, i32 noundef %i.xn, ptr noundef nonnull readonly %i.wr, ptr noundef nonnull readonly %i.ws, ptr noundef nonnull readonly %i.wt, ptr noundef nonnull readonly %i.wu, i32 noundef %i.xx, i32 noundef %i.xy)
  %i.yb = or disjoint i32 %i.xn, 2                ; 2 uses
  %i.yc = or disjoint i32 %i.xk, 2
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.yc, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.xl, i32 noundef %i.yb, ptr noundef nonnull readonly %i.wr, ptr noundef nonnull readonly %i.ws, ptr noundef nonnull readonly %i.wt, ptr noundef nonnull readonly %i.wu, i32 noundef %i.xx, i32 noundef %i.xy)
  %i.yd = or disjoint i32 %i.xk, 3
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.yd, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.xz, i32 noundef %i.yb, ptr noundef nonnull readonly %i.wr, ptr noundef nonnull readonly %i.ws, ptr noundef nonnull readonly %i.wt, ptr noundef nonnull readonly %i.wu, i32 noundef %i.xx, i32 noundef %i.xy)
  br label %.loopexit.i

bb.cc:                                            ; preds = %bb.cb
  %i.ye = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr.i = trunc i64 %i.ye to i32
  %i.yf = shl i32 %.tr.i, 2
  %i.yg = and i32 %i.xj, 4096                     ; 2 uses
  %i.yh = and i32 %i.xj, 16384                    ; 2 uses
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.xk, i32 noundef 0, i32 noundef 8, i32 noundef %i.yf, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.xl, i32 noundef %i.xn, ptr noundef nonnull readonly %i.wr, ptr noundef nonnull readonly %i.ws, ptr noundef nonnull readonly %i.wt, ptr noundef nonnull readonly %i.wu, i32 noundef %i.yg, i32 noundef %i.yh)
  %i.yi = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr204.i = trunc i64 %i.yi to i32
  %i.yj = shl i32 %.tr204.i, 2
  %i.yk = or disjoint i32 %i.xl, 2
  %i.yl = or disjoint i32 %i.xk, 1
  tail call fastcc void @mc_part_444_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.yl, i32 noundef 0, i32 noundef 8, i32 noundef %i.yj, ptr noundef %i.y, ptr noundef %i.an, ptr noundef %i.be, i32 noundef %i.yk, i32 noundef %i.xn, ptr noundef nonnull readonly %i.wr, ptr noundef nonnull readonly %i.ws, ptr noundef nonnull readonly %i.wt, ptr noundef nonnull readonly %i.wu, i32 noundef %i.yg, i32 noundef %i.yh)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.cc, %.preheader.i, %bb.ca, %bb.by
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %.loopexit210.i, label %bb.bx, !llvm.loop !148

.loopexit210.i:                                   ; preds = %.loopexit.i, %bb.bw, %bb.bu, %bb.bs
  %i.ym = and i32 %i.ue, 49152
  %.not207.i = icmp eq i32 %i.ym, 0
  br i1 %.not207.i, label %xchg_mb_border.exit, label %bb.cd

bb.cd:                                            ; preds = %.loopexit210.i
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 29108
  %i.yo = load i8, ptr %i.yn, align 4, !tbaa !86  ; 2 uses
  %i.yp = icmp sgt i8 %i.yo, -1
  br i1 %i.yp, label %bb.ce, label %xchg_mb_border.exit

bb.ce:                                            ; preds = %bb.cd
  %i.yq = zext nneg i8 %i.yo to i64
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 28944
  %i.ys = load i16, ptr %i.yr, align 16, !tbaa !91
  %i.yt = ashr i16 %i.ys, 2
  %i.yu = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.yv = shl nsw i32 %i.yu, 4
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 28946
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !91
  %i.yy = ashr i16 %i.yx, 2
  %i.yz = sext i16 %i.yy to i32
  %i.za = load i32, ptr %i.e, align 4, !tbaa !78
  %i.zb = shl nsw i32 %i.za, 4
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 25344
  %i.zd = getelementptr inbounds nuw [56 x i8], ptr %i.zc, i64 %i.yq ; 3 uses
  %i.ze = shl i32 %i.yu, 2
  %i.zf = and i32 %i.ze, 12
  %i.zg = add nsw i32 %i.zf, %i.yz
  %i.zh = add i32 %i.zg, %i.zb
  %i.zi = load i64, ptr %i.bx, align 16, !tbaa !89
  %i.zj = trunc i64 %i.zi to i32
  %i.zk = mul i32 %i.zh, %i.zj
  %narrow213.i = add nsw i16 %i.yt, 72
  %i.zl = sext i16 %narrow213.i to i32
  %i.zm = add i32 %i.yv, %i.zl
  %i.zn = add i32 %i.zm, %i.zk
  %i.zo = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.zp = load ptr, ptr %i.zd, align 8, !tbaa !81
  %i.zq = sext i32 %i.zn to i64                   ; 3 uses
  %i.zr = getelementptr inbounds i8, ptr %i.zp, i64 %i.zq
  %i.zs = load i64, ptr %i.q, align 16, !tbaa !82
  tail call void %i.zo(ptr noundef %i.zr, i64 noundef %i.zs, i32 noundef 4) #7, !inline_history !147
  %i.zt = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !81
  %i.zw = getelementptr inbounds i8, ptr %i.zv, i64 %i.zq
  %i.zx = load i64, ptr %i.q, align 16, !tbaa !82
  tail call void %i.zt(ptr noundef %i.zw, i64 noundef %i.zx, i32 noundef 4) #7, !inline_history !147
  %i.zy = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !81
  %i.aab = getelementptr inbounds i8, ptr %i.aaa, i64 %i.zq
  %i.aac = load i64, ptr %i.q, align 16, !tbaa !82
  tail call void %i.zy(ptr noundef %i.aab, i64 noundef %i.aac, i32 noundef 4) #7, !inline_history !147
  br label %xchg_mb_border.exit

xchg_mb_border.exit:                              ; preds = %.split101.us, %bb.ce, %bb.cd, %.loopexit210.i, %bb.bm, %bb.bl, %bb.be, %.split78
  %i.aad = and i32 %.fr108, 1
  %.not.i75 = icmp eq i32 %i.aad, 0
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 21092 ; 5 uses
  %i.aai = and i32 %.fr108, 16777216
  %.not86.i = icmp eq i32 %i.aai, 0
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  br i1 %.not.i75, label %xchg_mb_border.exit.split, label %.split105

xchg_mb_border.exit.split:                        ; preds = %xchg_mb_border.exit
  %i.aal = and i32 %.fr108, 2
  %.not83.i = icmp eq i32 %i.aal, 0
  br i1 %.not83.i, label %xchg_mb_border.exit.split.split.us, label %hl_decode_mb_idct_luma.exit.preheader

hl_decode_mb_idct_luma.exit.preheader:            ; preds = %xchg_mb_border.exit.split
  %i.aam = load ptr, ptr %i.aae, align 8, !tbaa !144
  call void %i.aam(ptr noundef %i.y, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.aaf, i32 noundef %i.by, ptr noundef nonnull %i.aag) #7, !inline_history !140
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 30712
  %i.aao = load ptr, ptr %i.aae, align 8, !tbaa !144
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 29856
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 28656
  call void %i.aao(ptr noundef %i.an, ptr noundef nonnull %i.aan, ptr noundef nonnull %i.aap, i32 noundef %i.by, ptr noundef nonnull %i.aaq) #7, !inline_history !140
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 30776
  %i.aas = load ptr, ptr %i.aae, align 8, !tbaa !144
  %i.aat = getelementptr inbounds nuw i8, ptr %1, i64 30368
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 28696
  call void %i.aas(ptr noundef %i.be, ptr noundef nonnull %i.aar, ptr noundef nonnull %i.aat, i32 noundef %i.by, ptr noundef nonnull %i.aau) #7, !inline_history !140
  br label %.split105

xchg_mb_border.exit.split.split.us:               ; preds = %xchg_mb_border.exit.split
  %i.aav = load i32, ptr %i.aah, align 4, !tbaa !139
  %i.aaw = and i32 %i.aav, 15
  %.not84.i.us.us = icmp eq i32 %i.aaw, 0         ; 2 uses
  br i1 %.not86.i, label %xchg_mb_border.exit.split.split.us.split.us.preheader, label %xchg_mb_border.exit.split.split.us.split.preheader

xchg_mb_border.exit.split.split.us.split.preheader: ; preds = %xchg_mb_border.exit.split.split.us
  br i1 %.not84.i.us.us, label %.split105, label %hl_decode_mb_idct_luma.exit.us

xchg_mb_border.exit.split.split.us.split.us.preheader: ; preds = %xchg_mb_border.exit.split.split.us
  br i1 %.not84.i.us.us, label %.split105, label %hl_decode_mb_idct_luma.exit.us.us

hl_decode_mb_idct_luma.exit.us.us:                ; preds = %xchg_mb_border.exit.split.split.us.split.us.preheader
  %i.aax = load ptr, ptr %i.aak, align 8, !tbaa !143
  call void %i.aax(ptr noundef %i.y, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.aaf, i32 noundef %i.by, ptr noundef nonnull %i.aag) #7, !inline_history !140
  %.pre141 = load i32, ptr %i.aah, align 4, !tbaa !139
  %.pre143 = and i32 %.pre141, 15
  %i.aay = icmp eq i32 %.pre143, 0
  br i1 %i.aay, label %.split105, label %hl_decode_mb_idct_luma.exit.us.us.1

hl_decode_mb_idct_luma.exit.us.us.1:              ; preds = %hl_decode_mb_idct_luma.exit.us.us
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 30712
  %i.aba = load ptr, ptr %i.aak, align 8, !tbaa !143
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 29856
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 28656
  call void %i.aba(ptr noundef %i.an, ptr noundef nonnull %i.aaz, ptr noundef nonnull %i.abb, i32 noundef %i.by, ptr noundef nonnull %i.abc) #7, !inline_history !140
  %.pre142 = load i32, ptr %i.aah, align 4, !tbaa !139
  %.pre144 = and i32 %.pre142, 15
  %i.abd = icmp eq i32 %.pre144, 0
  br i1 %i.abd, label %.split105, label %bb.cf

bb.cf:                                            ; preds = %hl_decode_mb_idct_luma.exit.us.us.1
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 30776
  %i.abf = load ptr, ptr %i.aak, align 8, !tbaa !143
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 30368
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 28696
  call void %i.abf(ptr noundef %i.be, ptr noundef nonnull %i.abe, ptr noundef nonnull %i.abg, i32 noundef %i.by, ptr noundef nonnull %i.abh) #7, !inline_history !140
  br label %.split105

hl_decode_mb_idct_luma.exit.us:                   ; preds = %xchg_mb_border.exit.split.split.us.split.preheader
  %i.abi = load ptr, ptr %i.aaj, align 8, !tbaa !142
  call void %i.abi(ptr noundef %i.y, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.aaf, i32 noundef %i.by, ptr noundef nonnull %i.aag) #7, !inline_history !140
  %.pre = load i32, ptr %i.aah, align 4, !tbaa !139
  %.pre146 = and i32 %.pre, 15
  %i.abj = icmp eq i32 %.pre146, 0
  br i1 %i.abj, label %.split105, label %hl_decode_mb_idct_luma.exit.us.1

hl_decode_mb_idct_luma.exit.us.1:                 ; preds = %hl_decode_mb_idct_luma.exit.us
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 30712
  %i.abl = load ptr, ptr %i.aaj, align 8, !tbaa !142
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 29856
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 28656
  call void %i.abl(ptr noundef %i.an, ptr noundef nonnull %i.abk, ptr noundef nonnull %i.abm, i32 noundef %i.by, ptr noundef nonnull %i.abn) #7, !inline_history !140
  %.pre140 = load i32, ptr %i.aah, align 4, !tbaa !139
  %.pre148 = and i32 %.pre140, 15
  %i.abo = icmp eq i32 %.pre148, 0
  br i1 %i.abo, label %.split105, label %bb.cg

bb.cg:                                            ; preds = %hl_decode_mb_idct_luma.exit.us.1
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 30776
  %i.abq = load ptr, ptr %i.aaj, align 8, !tbaa !142
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 30368
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 28696
  call void %i.abq(ptr noundef %i.be, ptr noundef nonnull %i.abp, ptr noundef nonnull %i.abr, i32 noundef %i.by, ptr noundef nonnull %i.abs) #7, !inline_history !140
  br label %.split105

.split105:                                        ; preds = %xchg_mb_border.exit.split.split.us.split.preheader, %hl_decode_mb_idct_luma.exit.us, %xchg_mb_border.exit.split.split.us.split.us.preheader, %hl_decode_mb_idct_luma.exit.us.us, %hl_decode_mb_idct_luma.exit.us.1, %bb.cg, %hl_decode_mb_idct_luma.exit.us.us.1, %bb.cf, %hl_decode_mb_idct_luma.exit.preheader, %xchg_mb_border.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @hl_decode_mb_complex(ptr noundef %0, ptr noundef initializes((21008, 21024)) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [2 x ptr], align 16               ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 21024 ; 20 uses
  %i.e = load i32, ptr %i.d, align 16, !tbaa !77  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 21028 ; 14 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21032 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28504
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28608 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = sext i32 %i.i to i64                     ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !69   ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30648
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70
  %i.s = icmp eq i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34080
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71   ; 2 uses
  br i1 %i.s, label %bb.b, label %._crit_edge665

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !79
  %i.x = icmp ne i32 %i.w, 0
  br label %._crit_edge665

._crit_edge665:                                   ; preds = %bb.a, %bb.b
  %i.y = phi i1 [ %i.x, %bb.b ], [ false, %bb.a ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !149 ; 4 uses
  %i.ab = lshr i32 16, %i.aa                      ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 34080 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !72
  %i.af = icmp eq i32 %i.ae, 2                    ; 3 uses
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !80  ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 30088 ; 31 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.ak = shl i32 %i.e, %i.aj                     ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = sext i32 %i.g to i64                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20992 ; 6 uses
  %i.ao = load i64, ptr %i.an, align 16, !tbaa !82 ; 3 uses
  %i.ap = mul nsw i64 %i.ao, %i.am
  %i.aq = add nsw i64 %i.ap, %i.al
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81
  %i.av = shl nsw i32 %i.ak, 3
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 21000 ; 8 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !150
  %i.ba = zext nneg i32 %i.ab to i64
  %i.bb = mul nsw i64 %i.ba, %i.am
  %i.bc = mul i64 %i.bb, %i.az                    ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.ax, i64 %i.bc ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.aw
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bc ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bk = shl i32 %i.e, 2
  %i.bl = and i32 %i.bk, 12
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.ao, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.as, i64 %i.bn
  %i.bp = shl i32 64, %i.aj
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.bq
  tail call void %i.bj(ptr noundef %i.br, i64 noundef %i.ao, i32 noundef 4) #7
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bt = load i32, ptr %i.d, align 16, !tbaa !77
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load i64, ptr %i.ay, align 8, !tbaa !150
  %i.bx = mul nsw i64 %i.bw, %i.bv
  %i.by = getelementptr inbounds i8, ptr %i.bd, i64 %i.bx
  %i.bz = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.ca = shl i32 64, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = ptrtoint ptr %i.bh to i64
  %i.ce = ptrtoint ptr %i.bd to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void %i.bs(ptr noundef %i.cc, i64 noundef %i.cf, i32 noundef 2) #7
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 22648 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !84
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 31080
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !85
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.m
  store i8 %i.ci, ptr %i.cl, align 1, !tbaa !86
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 21064 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !87 ; 3 uses
  %.not = icmp eq i32 %i.cn, 0
  %i.co = load i64, ptr %i.an, align 16, !tbaa !82 ; 4 uses
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %._crit_edge665
  %i.cp = shl nsw i64 %i.co, 1                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 21008
  store i64 %i.cp, ptr %i.cq, align 16, !tbaa !89
  %i.cr = load i64, ptr %i.ay, align 8, !tbaa !150 ; 2 uses
  %i.cs = shl nsw i64 %i.cr, 1                    ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 21016
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !88
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 30840 ; 3 uses
  %i.cv = and i32 %i.g, 1
  %.not338 = icmp eq i32 %i.cv, 0
  br i1 %.not338, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.neg = mul i64 %i.co, -15
  %i.cw = getelementptr inbounds i8, ptr %i.as, i64 %.neg
  %narrow551 = sub nsw i32 1, %i.ab
  %i.cx = sext i32 %narrow551 to i64
  %i.cy = mul i64 %i.cr, %i.cx                    ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.bd, i64 %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.bh, i64 %i.cy
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0332 = phi ptr [ %i.cw, %bb.d ], [ %i.as, %bb.c ] ; 3 uses
  %.0330 = phi ptr [ %i.cz, %bb.d ], [ %i.bd, %bb.c ] ; 3 uses
  %.0328 = phi ptr [ %i.da, %bb.d ], [ %i.bh, %bb.c ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 31064
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !90
  %.not339 = icmp eq i32 %i.dc, 0
  br i1 %.not339, label %.loopexit514, label %.preheader513

.preheader513:                                    ; preds = %bb.e
  %i.dd = load i32, ptr %i.cg, align 8, !tbaa !84 ; 2 uses
  %.not552 = icmp eq i32 %i.dd, 0
  br i1 %.not552, label %.loopexit514, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader513
  %i.de = and i32 %i.o, 8
  %.not356 = icmp eq i32 %i.de, 0
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %wide.trip.count = zext i32 %i.dd to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.loopexit512
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit512 ] ; 4 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.dg = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.dh = shl i32 12288, %i.dg
  %i.di = and i32 %i.dh, %i.o
  %.not355 = icmp eq i32 %i.di, 0
  br i1 %.not355, label %.loopexit512, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not356, label %.preheader511, label %bb.h

.preheader511:                                    ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %indvars.iv ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !86  ; 2 uses
  %i.dm = icmp sgt i8 %i.dl, -1
  br i1 %i.dm, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 29068 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !86
  %i.dq = sext i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, 16
  %i.ds = load i32, ptr %i.f, align 4, !tbaa !78
  %i.dt = and i32 %i.ds, 1
  %i.du = xor i32 %i.dr, %i.dt
  %i.dv = mul i32 %i.du, 16843009                 ; 4 uses
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !69
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 29076
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !69
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 29084
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !69
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 29092
  store i32 %i.dv, ptr %i.dy, align 4, !tbaa !69
  br label %.loopexit512

bb.i:                                             ; preds = %.preheader511
  %narrow = add nuw i8 %i.dl, 16
  %i.dz = zext i8 %narrow to i32
  %i.ea = load i32, ptr %i.f, align 4, !tbaa !78
  %i.eb = and i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, %i.dz
  %i.ed = trunc nuw nsw i32 %i.ec to i16
  %i.ee = mul nuw i16 %i.ed, 257                  ; 2 uses
  store i16 %i.ee, ptr %i.dk, align 2, !tbaa !91
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !91
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader511
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 14 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !86  ; 2 uses
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %narrow.1 = add nuw i8 %i.eh, 16
  %i.ej = zext i8 %narrow.1 to i32
  %i.ek = load i32, ptr %i.f, align 4, !tbaa !78
  %i.el = and i32 %i.ek, 1
  %i.em = xor i32 %i.el, %i.ej
  %i.en = trunc nuw nsw i32 %i.em to i16
  %i.eo = mul nuw i16 %i.en, 257                  ; 2 uses
  store i16 %i.eo, ptr %i.eg, align 2, !tbaa !91
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dj, i64 22
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !91
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 28 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !86  ; 2 uses
  %i.es = icmp sgt i8 %i.er, -1
  br i1 %i.es, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %narrow.2 = add nuw i8 %i.er, 16
  %i.et = zext i8 %narrow.2 to i32
  %i.eu = load i32, ptr %i.f, align 4, !tbaa !78
  %i.ev = and i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, %i.et
  %i.ex = trunc nuw nsw i32 %i.ew to i16
  %i.ey = mul nuw i16 %i.ex, 257                  ; 2 uses
  store i16 %i.ey, ptr %i.eq, align 2, !tbaa !91
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dj, i64 36
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !91
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dj, i64 30 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !86  ; 2 uses
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.o, label %.loopexit512

bb.o:                                             ; preds = %bb.n
  %narrow.3 = add nuw i8 %i.fb, 16
  %i.fd = zext i8 %narrow.3 to i32
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !78
  %i.ff = and i32 %i.fe, 1
  %i.fg = xor i32 %i.ff, %i.fd
  %i.fh = trunc nuw nsw i32 %i.fg to i16
  %i.fi = mul nuw i16 %i.fh, 257                  ; 2 uses
  store i16 %i.fi, ptr %i.fa, align 2, !tbaa !91
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dj, i64 38
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !91
  br label %.loopexit512

.loopexit512:                                     ; preds = %bb.n, %bb.o, %bb.h, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit514, label %bb.f, !llvm.loop !151

bb.p:                                             ; preds = %._crit_edge665
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 21008
  store i64 %i.co, ptr %i.fk, align 16, !tbaa !89
  %i.fl = load i64, ptr %i.ay, align 8, !tbaa !150 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 21016
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !88
  br label %.loopexit514

.loopexit514:                                     ; preds = %.loopexit512, %.preheader513, %bb.e, %bb.p
  %.1333 = phi ptr [ %i.as, %bb.p ], [ %.0332, %bb.e ], [ %.0332, %.preheader513 ], [ %.0332, %.loopexit512 ] ; 56 uses
  %.1331 = phi ptr [ %i.bd, %bb.p ], [ %.0330, %bb.e ], [ %.0330, %.preheader513 ], [ %.0330, %.loopexit512 ] ; 47 uses
  %.1329 = phi ptr [ %i.bh, %bb.p ], [ %.0328, %bb.e ], [ %.0328, %.preheader513 ], [ %.0328, %.loopexit512 ] ; 46 uses
  %.0327.in = phi i64 [ %i.co, %bb.p ], [ %i.cp, %bb.e ], [ %i.cp, %.preheader513 ], [ %i.cp, %.loopexit512 ] ; 7 uses
  %.0326.in = phi i64 [ %i.fl, %bb.p ], [ %i.cs, %bb.e ], [ %i.cs, %.preheader513 ], [ %i.cs, %.loopexit512 ] ; 8 uses
  %.0320 = phi ptr [ %i.p, %bb.p ], [ %i.cu, %bb.e ], [ %i.cu, %.preheader513 ], [ %i.cu, %.loopexit512 ] ; 19 uses
  %.0326 = trunc i64 %.0326.in to i32             ; 11 uses
  %.0327 = trunc i64 %.0327.in to i32             ; 11 uses
  %i.fn = and i32 %i.o, 4
  %.not340 = icmp eq i32 %i.fn, 0
  br i1 %.not340, label %bb.y, label %bb.q

bb.q:                                             ; preds = %.loopexit514
  %i.fo = load ptr, ptr %i.ac, align 8, !tbaa !71 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2004
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !95 ; 36 uses
  %i.fr = load i32, ptr %i.ai, align 8, !tbaa !76
  %.not352 = icmp eq i32 %i.fr, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 28560 ; 18 uses
  br i1 %.not352, label %.preheader505, label %bb.r

.preheader505:                                    ; preds = %bb.q
  %sext742 = shl i64 %.0327.in, 32                ; 4 uses
  %i.ft = ashr exact i64 %sext742, 32             ; 12 uses
  %i.fu = load ptr, ptr %i.fs, align 16, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1333, ptr noundef nonnull align 1 dereferenceable(16) %i.fu, i64 16, i1 false)
  %i.fv = getelementptr inbounds i8, ptr %.1333, i64 %i.ft
  %i.fw = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fv, ptr noundef nonnull align 1 dereferenceable(16) %i.fx, i64 16, i1 false)
  %i.fy = ashr exact i64 %sext742, 31
  %i.fz = getelementptr inbounds i8, ptr %.1333, i64 %i.fy
  %i.ga = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fz, ptr noundef nonnull align 1 dereferenceable(16) %i.gb, i64 16, i1 false)
  %i.gc = mul nsw i64 %i.ft, 3
  %i.gd = getelementptr inbounds i8, ptr %.1333, i64 %i.gc
  %i.ge = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gd, ptr noundef nonnull align 1 dereferenceable(16) %i.gf, i64 16, i1 false)
  %i.gg = ashr exact i64 %sext742, 30
  %i.gh = getelementptr inbounds i8, ptr %.1333, i64 %i.gg
  %i.gi = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gh, ptr noundef nonnull align 1 dereferenceable(16) %i.gj, i64 16, i1 false)
  %i.gk = mul nsw i64 %i.ft, 5
  %i.gl = getelementptr inbounds i8, ptr %.1333, i64 %i.gk
  %i.gm = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gl, ptr noundef nonnull align 1 dereferenceable(16) %i.gn, i64 16, i1 false)
  %i.go = mul nsw i64 %i.ft, 6
  %i.gp = getelementptr inbounds i8, ptr %.1333, i64 %i.go
  %i.gq = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gp, ptr noundef nonnull align 1 dereferenceable(16) %i.gr, i64 16, i1 false)
  %i.gs = mul nsw i64 %i.ft, 7
  %i.gt = getelementptr inbounds i8, ptr %.1333, i64 %i.gs
  %i.gu = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gt, ptr noundef nonnull align 1 dereferenceable(16) %i.gv, i64 16, i1 false)
  %i.gw = ashr exact i64 %sext742, 29
  %i.gx = getelementptr inbounds i8, ptr %.1333, i64 %i.gw
  %i.gy = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gx, ptr noundef nonnull align 1 dereferenceable(16) %i.gz, i64 16, i1 false)
  %i.ha = mul nsw i64 %i.ft, 9
  %i.hb = getelementptr inbounds i8, ptr %.1333, i64 %i.ha
  %i.hc = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hb, ptr noundef nonnull align 1 dereferenceable(16) %i.hd, i64 16, i1 false)
  %i.he = mul nsw i64 %i.ft, 10
  %i.hf = getelementptr inbounds i8, ptr %.1333, i64 %i.he
  %i.hg = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hf, ptr noundef nonnull align 1 dereferenceable(16) %i.hh, i64 16, i1 false)
  %i.hi = mul nsw i64 %i.ft, 11
  %i.hj = getelementptr inbounds i8, ptr %.1333, i64 %i.hi
  %i.hk = load ptr, ptr %i.fs, align 16, !tbaa !94
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hj, ptr noundef nonnull align 1 dereferenceable(16) %i.hl, i64 16, i1 false)
  %i.hm = mul nsw i64 %i.ft, 12
  %i.hn = getelementptr inbounds i8, ptr %.1333, i64 %i.hm
end_hunk_3
begin_hunk_4_@hl_decode_mb_complex:bb.a
  %i.ahl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !121
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0172.i = phi ptr [ %i.ahi, %bb.ao ], [ %i.ahm, %bb.ap ]
  %.0170.i = phi ptr [ %i.ahi, %bb.ao ], [ %i.ahk, %bb.ap ]
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 20872
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 28616
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 30288
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 20972 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 20980 ; 2 uses
  %sext490 = shl i64 %.0327.in, 32
  %i.ahs = ashr exact i64 %sext490, 32            ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 5 uses
  %.not.i399 = icmp eq i32 %i.ahd, 0
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 30124
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 30576
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 30560
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.bc
  %indvars.iv619 = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next620, %bb.bc ] ; 9 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %.0320, i64 %indvars.iv619
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !69
  %i.ahz = sext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds i8, ptr %.1333, i64 %i.ahz ; 5 uses
  %i.aib = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv619
  %i.aic = load i8, ptr %i.aib, align 4, !tbaa !86
  %i.aid = zext i8 %i.aic to i64                  ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahn, i64 %i.aid
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !86 ; 3 uses
  br i1 %i.y, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.aig = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 4
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !115
  %i.aij = icmp eq i32 %i.aii, 244
  %i.aik = icmp slt i8 %i.aif, 2
  %or.cond.i = select i1 %i.aij, i1 %i.aik, i1 false
  br i1 %or.cond.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ail = load i32, ptr %i.ahu, align 4, !tbaa !122
  %i.aim = icmp ult i32 %i.ail, 151
  %i.ain = sext i8 %i.aif to i64                  ; 2 uses
  %indvars.iv619.tr745 = trunc nuw nsw i64 %indvars.iv619 to i32
  %i.aio = shl nuw nsw i32 %indvars.iv619.tr745, 4
  %i.aip = shl i32 %i.aio, %i.ahd
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [2 x i8], ptr %i.aht, i64 %i.aiq ; 2 uses
  br i1 %i.aim, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ais = getelementptr inbounds [8 x i8], ptr %i.ahw, i64 %i.ain
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !106
  tail call void %i.ait(ptr noundef %i.aia, ptr noundef nonnull %i.air, i64 noundef %i.ahs) #7, !inline_history !107
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.aiu = getelementptr inbounds [8 x i8], ptr %i.ahv, i64 %i.ain
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !106
  %i.aiw = load i32, ptr %i.ahq, align 4, !tbaa !123
  %i.aix = trunc nuw nsw i64 %indvars.iv619 to i32 ; 2 uses
  %i.aiy = shl i32 %i.aiw, %i.aix
  %i.aiz = and i32 %i.aiy, 32768
  %i.aja = load i32, ptr %i.ahr, align 4, !tbaa !116
  %i.ajb = shl i32 %i.aja, %i.aix
  %i.ajc = and i32 %i.ajb, 16384
  tail call void %i.aiv(ptr noundef %i.aia, ptr noundef nonnull %i.air, i32 noundef %i.aiz, i32 noundef %i.ajc, i64 noundef %i.ahs) #7, !inline_history !107
  br label %bb.bc

bb.aw:                                            ; preds = %bb.as, %bb.ar
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.aid
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !86
  %i.ajf = sext i8 %i.aif to i64
  %i.ajg = getelementptr inbounds [8 x i8], ptr %i.ahp, i64 %i.ajf
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !106
  %i.aji = load i32, ptr %i.ahq, align 4, !tbaa !123
  %i.ajj = trunc nuw nsw i64 %indvars.iv619 to i32 ; 2 uses
  %i.ajk = shl i32 %i.aji, %i.ajj
  %i.ajl = and i32 %i.ajk, 32768
  %i.ajm = load i32, ptr %i.ahr, align 4, !tbaa !116
  %i.ajn = shl i32 %i.ajm, %i.ajj
  %i.ajo = and i32 %i.ajn, 16384
  tail call void %i.ajh(ptr noundef %i.aia, i32 noundef %i.ajl, i32 noundef %i.ajo, i64 noundef %i.ahs) #7, !inline_history !107
  switch i8 %i.aje, label %._crit_edge686 [
    i8 0, label %bb.bc
    i8 1, label %bb.ax
  ]

._crit_edge686:                                   ; preds = %bb.aw
  %.pre715 = shl nuw nsw i64 %indvars.iv619, 4
  br label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ajp = shl nuw nsw i64 %indvars.iv619, 4      ; 4 uses
  br i1 %.not.i399, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.ajp
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !86
  br label %dctcoef_get.exit401

bb.az:                                            ; preds = %bb.ax
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.aht, i64 %i.ajp
  %i.ajt = load i16, ptr %i.ajs, align 2, !tbaa !86
  %i.aju = zext i16 %i.ajt to i32
  br label %dctcoef_get.exit401

dctcoef_get.exit401:                              ; preds = %bb.ay, %bb.az
  %.0.i400 = phi i32 [ %i.ajr, %bb.ay ], [ %i.aju, %bb.az ]
  %.not189.i = icmp eq i32 %.0.i400, 0
  br i1 %.not189.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %dctcoef_get.exit401
  %i.ajv = trunc nuw nsw i64 %i.ajp to i32
  %i.ajw = shl i32 %i.ajv, %i.ahd
  %i.ajx = sext i32 %i.ajw to i64
  %i.ajy = getelementptr inbounds [2 x i8], ptr %i.aht, i64 %i.ajx
  tail call void %.0170.i(ptr noundef %i.aia, ptr noundef nonnull %i.ajy, i32 noundef %.0327) #7, !inline_history !107
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge686, %dctcoef_get.exit401
  %.pre-phi716 = phi i64 [ %.pre715, %._crit_edge686 ], [ %i.ajp, %dctcoef_get.exit401 ]
  %i.ajz = trunc nuw nsw i64 %.pre-phi716 to i32
  %i.aka = shl i32 %i.ajz, %i.ahd
  %i.akb = sext i32 %i.aka to i64
  %i.akc = getelementptr inbounds [2 x i8], ptr %i.aht, i64 %i.akb
  tail call void %.0172.i(ptr noundef %i.aia, ptr noundef nonnull %i.akc, i32 noundef %.0327) #7, !inline_history !107
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.aw, %bb.av, %bb.au
  %indvars.iv.next620 = add nuw nsw i64 %indvars.iv619, 4
  %i.akd = icmp samesign ult i64 %indvars.iv619, 12
  br i1 %i.akd, label %bb.ar, label %hl_decode_mb_predict_luma.exit, !llvm.loop !124

bb.bd:                                            ; preds = %bb.am
  br i1 %i.y, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ake = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !112 ; 2 uses
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !113
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !114
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.1173.i = phi ptr [ %i.akf, %bb.be ], [ %i.akj, %bb.bf ] ; 2 uses
  %.1171.i = phi ptr [ %i.akf, %bb.be ], [ %i.akh, %bb.bf ]
  %i.akk = getelementptr inbounds nuw i8, ptr %1, i64 20872
  %i.akl = getelementptr inbounds nuw i8, ptr %1, i64 20980
  %i.akm = shl i32 4, %i.ahd
  %i.akn = sext i32 %i.akm to i64
  %sext492 = shl i64 %.0327.in, 32                ; 2 uses
  %i.ako = ashr exact i64 %sext492, 32            ; 3 uses
  %i.akp = sub nsw i64 0, %i.ako
  %.not184.i = icmp eq i32 %i.ahd, 0              ; 2 uses
  %.neg.i = sdiv i32 %.0327, -2
  %i.akq = sext i32 %.neg.i to i64
  %sext493 = sub i64 12884901888, %sext492
  %i.akr = ashr exact i64 %sext493, 32
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 30168
  %i.akt = getelementptr inbounds nuw i8, ptr %1, i64 28616
  %i.aku = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 4 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %0, i64 30544
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bv
  %indvars.iv622 = phi i64 [ 0, %bb.bg ], [ %indvars.iv.next623, %bb.bv ] ; 7 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %.0320, i64 %indvars.iv622
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !69
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds i8, ptr %.1333, i64 %i.aky ; 6 uses
  %i.ala = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv622
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !86
  %i.alc = zext i8 %i.alb to i64                  ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.alc
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !86 ; 4 uses
  br i1 %i.y, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.alf = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 4
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !115
  %i.ali = icmp eq i32 %i.alh, 244
  %i.alj = icmp slt i8 %i.ale, 2
  %or.cond3.i = select i1 %i.ali, i1 %i.alj, i1 false
  br i1 %or.cond3.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.alk = sext i8 %i.ale to i64
  %i.all = getelementptr inbounds [8 x i8], ptr %i.akv, i64 %i.alk
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !106
  %indvars.iv622.tr = trunc nuw nsw i64 %indvars.iv622 to i32
  %i.aln = shl nuw nsw i32 %indvars.iv622.tr, 4
  %i.alo = shl i32 %i.aln, %i.ahd
  %i.alp = sext i32 %i.alo to i64
  %i.alq = getelementptr inbounds [2 x i8], ptr %i.aku, i64 %i.alp
  call void %i.alm(ptr noundef %i.akz, ptr noundef nonnull %i.alq, i64 noundef %i.ako) #7, !inline_history !107
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.alr = and i8 %i.ale, -5
  %or.cond5.i = icmp eq i8 %i.alr, 3
  br i1 %or.cond5.i, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.als = load i32, ptr %i.akl, align 4, !tbaa !116
  %i.alt = trunc nuw nsw i64 %indvars.iv622 to i32
  %i.alu = lshr exact i32 32768, %i.alt
  %i.alv = and i32 %i.als, %i.alu
  %.not183.i = icmp eq i32 %i.alv, 0
  br i1 %.not183.i, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  br i1 %.not184.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.alw = getelementptr [2 x i8], ptr %i.akz, i64 %i.akq
  %i.alx = getelementptr i8, ptr %i.alw, i64 6
  %i.aly = load i16, ptr %i.alx, align 2, !tbaa !91
  %i.alz = zext i16 %i.aly to i64
  %i.ama = mul nuw i64 %i.alz, 281479271743489
  store i64 %i.ama, ptr %i.b, align 8, !tbaa !117
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.amb = getelementptr inbounds i8, ptr %i.akz, i64 %i.akr
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !86
  %i.amd = zext i8 %i.amc to i32
  %i.ame = mul nuw i32 %i.amd, 16843009
  store i32 %i.ame, ptr %i.a, align 4, !tbaa !69
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.amf = getelementptr inbounds i8, ptr %i.akz, i64 %i.akn
  %i.amg = getelementptr inbounds i8, ptr %i.amf, i64 %i.akp
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bk
  %.1.i = phi ptr [ %i.a, %bb.bo ], [ %i.amg, %bb.bp ], [ %i.b, %bb.bn ], [ null, %bb.bk ]
  %i.amh = sext i8 %i.ale to i64
  %i.ami = getelementptr inbounds [8 x i8], ptr %i.aks, i64 %i.amh
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !106
  call void %i.amj(ptr noundef %i.akz, ptr noundef %.1.i, i64 noundef %i.ako) #7, !inline_history !107
  %i.amk = getelementptr inbounds nuw i8, ptr %i.akt, i64 %i.alc
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !86
  switch i8 %i.aml, label %._crit_edge687 [
    i8 0, label %bb.bu
    i8 1, label %bb.br
  ]

._crit_edge687:                                   ; preds = %bb.bq
  %.pre713 = shl nuw nsw i64 %indvars.iv622, 4
  br label %.sink.split

bb.br:                                            ; preds = %bb.bq
  %i.amm = shl nuw nsw i64 %indvars.iv622, 4      ; 3 uses
  br i1 %.not184.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.amm
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !86
  br label %dctcoef_get.exit398

bb.bt:                                            ; preds = %bb.br
  %i.amp = getelementptr inbounds nuw [2 x i8], ptr %i.aku, i64 %i.amm
  %i.amq = load i16, ptr %i.amp, align 2, !tbaa !86
  %i.amr = zext i16 %i.amq to i32
  br label %dctcoef_get.exit398

dctcoef_get.exit398:                              ; preds = %bb.bs, %bb.bt
  %.0.i397 = phi i32 [ %i.amo, %bb.bs ], [ %i.amr, %bb.bt ]
  %.not186.i = icmp eq i32 %.0.i397, 0
  %spec.select = select i1 %.not186.i, ptr %.1173.i, ptr %.1171.i
  br label %.sink.split

.sink.split:                                      ; preds = %dctcoef_get.exit398, %._crit_edge687
  %.pre-phi714.sink = phi i64 [ %i.amm, %dctcoef_get.exit398 ], [ %.pre713, %._crit_edge687 ]
  %.1173.i.sink = phi ptr [ %spec.select, %dctcoef_get.exit398 ], [ %.1173.i, %._crit_edge687 ]
  %i.ams = trunc nuw nsw i64 %.pre-phi714.sink to i32
  %i.amt = shl i32 %i.ams, %i.ahd
  %i.amu = sext i32 %i.amt to i64
  %i.amv = getelementptr inbounds [2 x i8], ptr %i.aku, i64 %i.amu
  call void %.1173.i.sink(ptr noundef %i.akz, ptr noundef nonnull %i.amv, i32 noundef %.0327) #7
  br label %bb.bu

bb.bu:                                            ; preds = %.sink.split, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bj
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %exitcond625.not = icmp eq i64 %indvars.iv.next623, 16
  br i1 %exitcond625.not, label %hl_decode_mb_predict_luma.exit, label %bb.bh, !llvm.loop !118

bb.bw:                                            ; preds = %xchg_mb_border.exit387
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 30472
  %i.amx = getelementptr inbounds nuw i8, ptr %1, i64 20868
  %i.amy = load i32, ptr %i.amx, align 4, !tbaa !105
  %i.amz = sext i32 %i.amy to i64
  %i.ana = getelementptr inbounds [8 x i8], ptr %i.amw, i64 %i.amz
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !106
  %sext495 = shl i64 %.0327.in, 32
  %i.anc = ashr exact i64 %sext495, 32
  tail call void %i.anb(ptr noundef %.1333, i64 noundef %i.anc) #7, !inline_history !107
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 28616
  %i.ane = load i8, ptr %i.and, align 8, !tbaa !86
  %.not179.i = icmp eq i8 %i.ane, 0
  br i1 %.not179.i, label %hl_decode_mb_predict_luma.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.y, label %.preheader499, label %bb.by

.preheader499:                                    ; preds = %bb.bx
  %i.anf = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %1, i64 32416 ; 2 uses
  %.not.i393 = icmp eq i32 %i.ahd, 0
  br i1 %.not.i393, label %dctcoef_set.exit.us.preheader, label %dctcoef_set.exit.preheader

dctcoef_set.exit.preheader:                       ; preds = %.preheader499
  %i.anh = load i32, ptr %i.ang, align 16, !tbaa !86
  store i32 %i.anh, ptr %i.anf, align 16, !tbaa !86
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 32420
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !86
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 29408
  store i32 %i.anj, ptr %i.ank, align 16, !tbaa !86
  %i.anl = getelementptr inbounds nuw i8, ptr %1, i64 32424
  %i.anm = load i32, ptr %i.anl, align 8, !tbaa !86
  %i.ann = getelementptr inbounds nuw i8, ptr %1, i64 29600
  store i32 %i.anm, ptr %i.ann, align 16, !tbaa !86
  %i.ano = getelementptr inbounds nuw i8, ptr %1, i64 32428
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !86
  %i.anq = getelementptr inbounds nuw i8, ptr %1, i64 29664
  store i32 %i.anp, ptr %i.anq, align 16, !tbaa !86
  %i.anr = getelementptr inbounds nuw i8, ptr %1, i64 32432
  %i.ans = load i32, ptr %i.anr, align 16, !tbaa !86
  %i.ant = getelementptr inbounds nuw i8, ptr %1, i64 29472
  store i32 %i.ans, ptr %i.ant, align 16, !tbaa !86
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 32436
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !86
  %i.anw = getelementptr inbounds nuw i8, ptr %1, i64 29536
  store i32 %i.anv, ptr %i.anw, align 16, !tbaa !86
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 32440
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !86
  %i.anz = getelementptr inbounds nuw i8, ptr %1, i64 29728
  store i32 %i.any, ptr %i.anz, align 16, !tbaa !86
  %i.aoa = getelementptr inbounds nuw i8, ptr %1, i64 32444
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !86
  %i.aoc = getelementptr inbounds nuw i8, ptr %1, i64 29792
  store i32 %i.aob, ptr %i.aoc, align 16, !tbaa !86
  %i.aod = getelementptr inbounds nuw i8, ptr %1, i64 32448
  %i.aoe = load i32, ptr %i.aod, align 16, !tbaa !86
  %i.aof = getelementptr inbounds nuw i8, ptr %1, i64 29856
  store i32 %i.aoe, ptr %i.aof, align 16, !tbaa !86
  %i.aog = getelementptr inbounds nuw i8, ptr %1, i64 32452
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !86
  %i.aoi = getelementptr inbounds nuw i8, ptr %1, i64 29920
  store i32 %i.aoh, ptr %i.aoi, align 16, !tbaa !86
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 32456
  %i.aok = load i32, ptr %i.aoj, align 8, !tbaa !86
  %i.aol = getelementptr inbounds nuw i8, ptr %1, i64 30112
  store i32 %i.aok, ptr %i.aol, align 16, !tbaa !86
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 32460
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !86
  %i.aoo = getelementptr inbounds nuw i8, ptr %1, i64 30176
  store i32 %i.aon, ptr %i.aoo, align 16, !tbaa !86
  %i.aop = getelementptr inbounds nuw i8, ptr %1, i64 32464
  %i.aoq = load i32, ptr %i.aop, align 16, !tbaa !86
  %i.aor = getelementptr inbounds nuw i8, ptr %1, i64 29984
  store i32 %i.aoq, ptr %i.aor, align 16, !tbaa !86
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 32468
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !86
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 30048
  store i32 %i.aot, ptr %i.aou, align 16, !tbaa !86
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 32472
  %i.aow = load i32, ptr %i.aov, align 8, !tbaa !86
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 30240
  store i32 %i.aow, ptr %i.aox, align 16, !tbaa !86
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 32476
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !86
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 30304
  store i32 %i.aoz, ptr %i.apa, align 16, !tbaa !86
  br label %hl_decode_mb_predict_luma.exit

dctcoef_set.exit.us.preheader:                    ; preds = %.preheader499
  %i.apb = load i16, ptr %i.ang, align 16, !tbaa !86
  store i16 %i.apb, ptr %i.anf, align 16, !tbaa !86
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 32418
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !86
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 29376
  store i16 %i.apd, ptr %i.ape, align 16, !tbaa !86
end_hunk_4
begin_hunk_5_@hl_decode_mb_complex:bb.a
  store i64 %.sroa.06.0.copyload.i, ptr %i.axt, align 8, !tbaa !86
  %i.axv = getelementptr inbounds nuw i8, ptr %i.atg, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.axv, align 8, !tbaa !86
  %i.axw = getelementptr inbounds nuw i8, ptr %i.atb, i64 1 ; 2 uses
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !86
  store i64 %i.axx, ptr %i.axv, align 8, !tbaa !86
  store i64 %.sroa.0.0.copyload.i, ptr %i.axw, align 8, !tbaa !86
  br label %xchg_mb_border.exit

bb.cm:                                            ; preds = %bb.y
  %i.axy = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.aye = load i32, ptr %i.h, align 8, !tbaa !68
  %i.ayf = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.ayg = sext i32 %i.aye to i64
  %i.ayh = getelementptr inbounds [4 x i8], ptr %i.ayf, i64 %i.ayg
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !69 ; 30 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !125
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 664
  %i.aym = load i32, ptr %i.ayl, align 8, !tbaa !126
  %i.ayn = and i32 %i.aym, 1
  %.not.i412 = icmp eq i32 %i.ayn, 0              ; 2 uses
  br i1 %i.af, label %bb.cn, label %bb.df

bb.cn:                                            ; preds = %bb.cm
  br i1 %.not.i412, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call fastcc void @await_references(ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ayo = and i32 %i.ayi, 12288
  %.not203.i = icmp eq i32 %i.ayo, 0
  br i1 %.not203.i, label %prefetch_motion.exit214.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ayp = getelementptr inbounds nuw i8, ptr %1, i64 29068
  %i.ayq = load i8, ptr %i.ayp, align 4, !tbaa !86 ; 2 uses
  %i.ayr = icmp sgt i8 %i.ayq, -1
  br i1 %i.ayr, label %bb.cr, label %prefetch_motion.exit214.i

bb.cr:                                            ; preds = %bb.cq
  %i.ays = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.ayt = zext nneg i8 %i.ayq to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr %1, i64 28784
  %i.ayv = load i16, ptr %i.ayu, align 16, !tbaa !91
  %i.ayw = ashr i16 %i.ayv, 2
  %i.ayx = sext i16 %i.ayw to i32
  %i.ayy = load i32, ptr %i.d, align 16, !tbaa !77 ; 2 uses
  %i.ayz = shl nsw i32 %i.ayy, 4
  %i.aza = add nsw i32 %i.ayz, %i.ayx             ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %1, i64 28786
  %i.azc = load i16, ptr %i.azb, align 2, !tbaa !91
  %i.azd = ashr i16 %i.azc, 2
  %i.aze = sext i16 %i.azd to i32
  %i.azf = load i32, ptr %i.f, align 4, !tbaa !78
  %i.azg = shl nsw i32 %i.azf, 4
  %i.azh = add nsw i32 %i.azg, %i.aze             ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %1, i64 22656
  %i.azj = getelementptr inbounds nuw [56 x i8], ptr %i.azi, i64 %i.ayt ; 3 uses
  %i.azk = shl i32 %i.ayy, 2
  %i.azl = and i32 %i.azk, 12
  %i.azm = add nsw i32 %i.azh, %i.azl
  %i.azn = getelementptr inbounds nuw i8, ptr %1, i64 21008
  %i.azo = load i64, ptr %i.azn, align 16, !tbaa !89
  %i.azp = trunc i64 %i.azo to i32
  %i.azq = mul i32 %i.azm, %i.azp
  %i.azr = add i32 %i.aza, 72
  %i.azs = shl i32 %i.azr, %i.ays
  %i.azt = add i32 %i.azq, %i.azs
  %i.azu = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.azv = load ptr, ptr %i.azj, align 8, !tbaa !81
  %i.azw = sext i32 %i.azt to i64
  %i.azx = getelementptr inbounds i8, ptr %i.azv, i64 %i.azw
  %i.azy = load i64, ptr %i.an, align 16, !tbaa !82
  tail call void %i.azu(ptr noundef %i.azx, i64 noundef %i.azy, i32 noundef 4) #7, !inline_history !158
  %i.azz = add nsw i32 %i.aza, 8
  %i.baa = ashr i32 %i.azz, 1
  %i.bab = add nsw i32 %i.baa, 64
  %i.bac = shl i32 %i.bab, %i.ays
  %i.bad = ashr i32 %i.azh, 1
  %i.bae = load i32, ptr %i.d, align 16, !tbaa !77
  %i.baf = and i32 %i.bae, 7
  %i.bag = add nsw i32 %i.baf, %i.bad
  %i.bah = load i64, ptr %i.ay, align 8, !tbaa !150
  %i.bai = trunc i64 %i.bah to i32
  %i.baj = mul i32 %i.bag, %i.bai
  %i.bak = add i32 %i.baj, %i.bac
  %i.bal = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bam = getelementptr inbounds nuw i8, ptr %i.azj, i64 8
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !81 ; 2 uses
  %i.bao = sext i32 %i.bak to i64
  %i.bap = getelementptr inbounds i8, ptr %i.ban, i64 %i.bao
  %i.baq = getelementptr inbounds nuw i8, ptr %i.azj, i64 16
  %i.bar = load ptr, ptr %i.baq, align 8, !tbaa !81
  %i.bas = ptrtoint ptr %i.bar to i64
  %i.bat = ptrtoint ptr %i.ban to i64
  %i.bau = sub i64 %i.bas, %i.bat
  tail call void %i.bal(ptr noundef %i.bap, i64 noundef %i.bau, i32 noundef 2) #7, !inline_history !158
  br label %prefetch_motion.exit214.i

prefetch_motion.exit214.i:                        ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.bav = and i32 %i.ayi, 8
  %.not204.i = icmp eq i32 %i.bav, 0
  br i1 %.not204.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %prefetch_motion.exit214.i
  %i.baw = load ptr, ptr %i.axz, align 8, !tbaa !106
  %i.bax = load ptr, ptr %i.ayb, align 8, !tbaa !106
  %i.bay = and i32 %i.ayi, 4096
  %i.baz = and i32 %i.ayi, 16384
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.axy, ptr noundef %i.baw, ptr noundef nonnull readonly %i.aya, ptr noundef %i.bax, ptr noundef nonnull readonly %i.ayc, ptr noundef nonnull readonly %i.ayd, i32 noundef %i.bay, i32 noundef %i.baz)
  br label %.loopexit216.i

bb.ct:                                            ; preds = %prefetch_motion.exit214.i
  %i.bba = and i32 %i.ayi, 16
  %.not205.i = icmp eq i32 %i.bba, 0
  br i1 %.not205.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.bbb = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.bbc = shl i32 8, %i.bbb
  %i.bbd = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bbe = load ptr, ptr %i.axz, align 8, !tbaa !106
  %i.bbf = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.bbg = load ptr, ptr %i.ayb, align 8, !tbaa !106
  %i.bbh = and i32 %i.ayi, 4096
  %i.bbi = and i32 %i.ayi, 16384
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef %i.bbc, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.bbd, ptr noundef %i.bbe, ptr noundef nonnull readonly %i.bbf, ptr noundef %i.bbg, ptr noundef nonnull readonly %i.ayc, ptr noundef nonnull readonly %i.ayd, i32 noundef %i.bbh, i32 noundef %i.bbi)
  %i.bbj = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.bbk = shl i32 8, %i.bbj
  %i.bbl = load ptr, ptr %i.axz, align 8, !tbaa !106
  %i.bbm = load ptr, ptr %i.ayb, align 8, !tbaa !106
  %i.bbn = and i32 %i.ayi, 8192
  %i.bbo = and i32 %i.ayi, 32768
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, i32 noundef 8, i32 noundef %i.bbk, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 0, i32 noundef 4, ptr noundef nonnull readonly %i.bbd, ptr noundef %i.bbl, ptr noundef nonnull readonly %i.bbf, ptr noundef %i.bbm, ptr noundef nonnull readonly %i.ayc, ptr noundef nonnull readonly %i.ayd, i32 noundef %i.bbn, i32 noundef %i.bbo)
  br label %.loopexit216.i

bb.cv:                                            ; preds = %bb.ct
  %i.bbp = and i32 %i.ayi, 32
  %.not206.i = icmp eq i32 %i.bbp, 0
  br i1 %.not206.i, label %.preheader215.i, label %bb.cw

.preheader215.i:                                  ; preds = %bb.cv
  %i.bbq = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.bbr = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bbs = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bbu = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 8 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %1, i64 21008 ; 2 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.bce = getelementptr inbounds nuw i8, ptr %1, i64 21008 ; 2 uses
  %i.bcf = load i64, ptr %i.bce, align 16, !tbaa !89
  %.tr211.i = trunc i64 %i.bcf to i32
  %i.bcg = shl i32 %.tr211.i, 3
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !106
  %i.bck = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !106
  %i.bcn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bcp = and i32 %i.ayi, 4096
  %i.bcq = and i32 %i.ayi, 16384
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef %i.bcg, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.bch, ptr noundef %i.bcj, ptr noundef nonnull readonly %i.bck, ptr noundef %i.bcm, ptr noundef nonnull readonly %i.bcn, ptr noundef nonnull readonly %i.bco, i32 noundef %i.bcp, i32 noundef %i.bcq)
  %i.bcr = load i64, ptr %i.bce, align 16, !tbaa !89
  %.tr212.i = trunc i64 %i.bcr to i32
  %i.bcs = shl i32 %.tr212.i, 3
  %i.bct = load ptr, ptr %i.bci, align 8, !tbaa !106
  %i.bcu = load ptr, ptr %i.bcl, align 8, !tbaa !106
  %i.bcv = and i32 %i.ayi, 8192
  %i.bcw = and i32 %i.ayi, 32768
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 0, i32 noundef 16, i32 noundef %i.bcs, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 4, i32 noundef 0, ptr noundef nonnull readonly %i.bch, ptr noundef %i.bct, ptr noundef nonnull readonly %i.bck, ptr noundef %i.bcu, ptr noundef nonnull readonly %i.bcn, ptr noundef nonnull readonly %i.bco, i32 noundef %i.bcv, i32 noundef %i.bcw)
  br label %.loopexit216.i

bb.cx:                                            ; preds = %.loopexit.i, %.preheader215.i
  %indvars.iv.i = phi i64 [ 0, %.preheader215.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.bcx = getelementptr inbounds nuw [2 x i8], ptr %i.bbq, i64 %indvars.iv.i
  %i.bcy = load i16, ptr %i.bcx, align 2, !tbaa !91
  %i.bcz = zext i16 %i.bcy to i32                 ; 11 uses
  %indvars.iv.i.tr = trunc i64 %indvars.iv.i to i32 ; 2 uses
  %i.bda = shl i32 %indvars.iv.i.tr, 2            ; 10 uses
  %i.bdb = and i32 %i.bda, 4                      ; 8 uses
  %i.bdc = shl nuw nsw i32 %indvars.iv.i.tr, 1    ; 2 uses
  %i.bdd = and i32 %i.bdc, 4                      ; 7 uses
  %i.bde = and i32 %i.bcz, 8
  %.not207.i = icmp eq i32 %i.bde, 0
  br i1 %.not207.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bdf = load ptr, ptr %i.bbs, align 8, !tbaa !106
  %i.bdg = load ptr, ptr %i.bbu, align 8, !tbaa !106
  %i.bdh = and i32 %i.bcz, 4096
  %i.bdi = and i32 %i.bcz, 16384
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bda, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bdb, i32 noundef %i.bdd, ptr noundef nonnull readonly %i.bbr, ptr noundef %i.bdf, ptr noundef nonnull readonly %i.bbt, ptr noundef %i.bdg, ptr noundef nonnull readonly %i.bbv, ptr noundef nonnull readonly %i.bbw, i32 noundef %i.bdh, i32 noundef %i.bdi)
  br label %.loopexit.i

bb.cz:                                            ; preds = %bb.cx
  %i.bdj = and i32 %i.bcz, 16
  %.not208.i = icmp eq i32 %i.bdj, 0
  br i1 %.not208.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.bdk = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.bdl = shl i32 4, %i.bdk
  %i.bdm = load ptr, ptr %i.bbs, align 8, !tbaa !106
  %i.bdn = load ptr, ptr %i.bbu, align 8, !tbaa !106
  %i.bdo = and i32 %i.bcz, 4096                   ; 2 uses
  %i.bdp = and i32 %i.bcz, 16384                  ; 2 uses
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bda, i32 noundef 0, i32 noundef 4, i32 noundef %i.bdl, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bdb, i32 noundef %i.bdd, ptr noundef nonnull readonly %i.bbx, ptr noundef %i.bdm, ptr noundef nonnull readonly %i.bby, ptr noundef %i.bdn, ptr noundef nonnull readonly %i.bbv, ptr noundef nonnull readonly %i.bbw, i32 noundef %i.bdo, i32 noundef %i.bdp)
  %i.bdq = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.bdr = shl i32 4, %i.bdq
  %i.bds = or i32 %i.bdc, 2
  %i.bdt = load ptr, ptr %i.bbs, align 8, !tbaa !106
  %i.bdu = load ptr, ptr %i.bbu, align 8, !tbaa !106
  %i.bdv = or disjoint i32 %i.bda, 2
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bdv, i32 noundef 0, i32 noundef 4, i32 noundef %i.bdr, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bdb, i32 noundef %i.bds, ptr noundef nonnull readonly %i.bbx, ptr noundef %i.bdt, ptr noundef nonnull readonly %i.bby, ptr noundef %i.bdu, ptr noundef nonnull readonly %i.bbv, ptr noundef nonnull readonly %i.bbw, i32 noundef %i.bdo, i32 noundef %i.bdp)
  br label %.loopexit.i

bb.db:                                            ; preds = %bb.cz
  %i.bdw = and i32 %i.bcz, 32
  %.not209.i = icmp eq i32 %i.bdw, 0
  br i1 %.not209.i, label %.preheader.i, label %bb.dc

.preheader.i:                                     ; preds = %bb.db
  %i.bdx = and i32 %i.bcz, 4096                   ; 4 uses
  %i.bdy = and i32 %i.bcz, 16384                  ; 4 uses
  %i.bdz = load ptr, ptr %i.bca, align 8, !tbaa !106
  %i.bea = load ptr, ptr %i.bcb, align 8, !tbaa !106
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bda, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bdb, i32 noundef %i.bdd, ptr noundef nonnull readonly %i.bbx, ptr noundef %i.bdz, ptr noundef nonnull readonly %i.bby, ptr noundef %i.bea, ptr noundef nonnull readonly %i.bcc, ptr noundef nonnull readonly %i.bcd, i32 noundef %i.bdx, i32 noundef %i.bdy)
  %i.beb = or disjoint i32 %i.bdb, 2              ; 2 uses
  %i.bec = load ptr, ptr %i.bca, align 8, !tbaa !106
  %i.bed = load ptr, ptr %i.bcb, align 8, !tbaa !106
  %i.bee = or disjoint i32 %i.bda, 1
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bee, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.beb, i32 noundef %i.bdd, ptr noundef nonnull readonly %i.bbx, ptr noundef %i.bec, ptr noundef nonnull readonly %i.bby, ptr noundef %i.bed, ptr noundef nonnull readonly %i.bcc, ptr noundef nonnull readonly %i.bcd, i32 noundef %i.bdx, i32 noundef %i.bdy)
  %i.bef = or disjoint i32 %i.bdd, 2              ; 2 uses
  %i.beg = load ptr, ptr %i.bca, align 8, !tbaa !106
  %i.beh = load ptr, ptr %i.bcb, align 8, !tbaa !106
  %i.bei = or disjoint i32 %i.bda, 2
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bei, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bdb, i32 noundef %i.bef, ptr noundef nonnull readonly %i.bbx, ptr noundef %i.beg, ptr noundef nonnull readonly %i.bby, ptr noundef %i.beh, ptr noundef nonnull readonly %i.bcc, ptr noundef nonnull readonly %i.bcd, i32 noundef %i.bdx, i32 noundef %i.bdy)
  %i.bej = load ptr, ptr %i.bca, align 8, !tbaa !106
  %i.bek = load ptr, ptr %i.bcb, align 8, !tbaa !106
  %i.bel = or disjoint i32 %i.bda, 3
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bel, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.beb, i32 noundef %i.bef, ptr noundef nonnull readonly %i.bbx, ptr noundef %i.bej, ptr noundef nonnull readonly %i.bby, ptr noundef %i.bek, ptr noundef nonnull readonly %i.bcc, ptr noundef nonnull readonly %i.bcd, i32 noundef %i.bdx, i32 noundef %i.bdy)
  br label %.loopexit.i

bb.dc:                                            ; preds = %bb.db
  %i.bem = load i64, ptr %i.bbz, align 16, !tbaa !89
  %.tr.i = trunc i64 %i.bem to i32
  %i.ben = shl i32 %.tr.i, 2
  %i.beo = load ptr, ptr %i.bca, align 8, !tbaa !106
  %i.bep = load ptr, ptr %i.bcb, align 8, !tbaa !106
  %i.beq = and i32 %i.bcz, 4096                   ; 2 uses
  %i.ber = and i32 %i.bcz, 16384                  ; 2 uses
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bda, i32 noundef 0, i32 noundef 8, i32 noundef %i.ben, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bdb, i32 noundef %i.bdd, ptr noundef nonnull readonly %i.bbx, ptr noundef %i.beo, ptr noundef nonnull readonly %i.bby, ptr noundef %i.bep, ptr noundef nonnull readonly %i.bcc, ptr noundef nonnull readonly %i.bcd, i32 noundef %i.beq, i32 noundef %i.ber)
  %i.bes = load i64, ptr %i.bbz, align 16, !tbaa !89
  %.tr210.i = trunc i64 %i.bes to i32
  %i.bet = shl i32 %.tr210.i, 2
  %i.beu = or disjoint i32 %i.bdb, 2
  %i.bev = load ptr, ptr %i.bca, align 8, !tbaa !106
  %i.bew = load ptr, ptr %i.bcb, align 8, !tbaa !106
  %i.bex = or disjoint i32 %i.bda, 1
  tail call fastcc void @mc_part_422_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bex, i32 noundef 0, i32 noundef 8, i32 noundef %i.bet, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.beu, i32 noundef %i.bdd, ptr noundef nonnull readonly %i.bbx, ptr noundef %i.bev, ptr noundef nonnull readonly %i.bby, ptr noundef %i.bew, ptr noundef nonnull readonly %i.bcc, ptr noundef nonnull readonly %i.bcd, i32 noundef %i.beq, i32 noundef %i.ber)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.dc, %.preheader.i, %bb.da, %bb.cy
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %.loopexit216.i, label %bb.cx, !llvm.loop !159

.loopexit216.i:                                   ; preds = %.loopexit.i, %bb.cw, %bb.cu, %bb.cs
  %i.bey = and i32 %i.ayi, 49152
  %.not213.i = icmp eq i32 %i.bey, 0
  br i1 %.not213.i, label %xchg_mb_border.exit, label %bb.dd

bb.dd:                                            ; preds = %.loopexit216.i
  %i.bez = getelementptr inbounds nuw i8, ptr %1, i64 29108
  %i.bfa = load i8, ptr %i.bez, align 4, !tbaa !86 ; 2 uses
  %i.bfb = icmp sgt i8 %i.bfa, -1
  br i1 %i.bfb, label %bb.de, label %xchg_mb_border.exit

bb.de:                                            ; preds = %bb.dd
  %i.bfc = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.bfd = zext nneg i8 %i.bfa to i64
  %i.bfe = getelementptr inbounds nuw i8, ptr %1, i64 28944
  %i.bff = load i16, ptr %i.bfe, align 16, !tbaa !91
  %i.bfg = ashr i16 %i.bff, 2
  %i.bfh = sext i16 %i.bfg to i32
  %i.bfi = load i32, ptr %i.d, align 16, !tbaa !77 ; 2 uses
  %i.bfj = shl nsw i32 %i.bfi, 4
  %i.bfk = add nsw i32 %i.bfj, %i.bfh             ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %1, i64 28946
  %i.bfm = load i16, ptr %i.bfl, align 2, !tbaa !91
  %i.bfn = ashr i16 %i.bfm, 2
  %i.bfo = sext i16 %i.bfn to i32
  %i.bfp = load i32, ptr %i.f, align 4, !tbaa !78
  %i.bfq = shl nsw i32 %i.bfp, 4
  %i.bfr = add nsw i32 %i.bfq, %i.bfo             ; 2 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %1, i64 25344
  %i.bft = getelementptr inbounds nuw [56 x i8], ptr %i.bfs, i64 %i.bfd ; 3 uses
  %i.bfu = shl i32 %i.bfi, 2
  %i.bfv = and i32 %i.bfu, 12
  %i.bfw = add nsw i32 %i.bfr, %i.bfv
  %i.bfx = getelementptr inbounds nuw i8, ptr %1, i64 21008
  %i.bfy = load i64, ptr %i.bfx, align 16, !tbaa !89
  %i.bfz = trunc i64 %i.bfy to i32
  %i.bga = mul i32 %i.bfw, %i.bfz
  %i.bgb = add i32 %i.bfk, 72
  %i.bgc = shl i32 %i.bgb, %i.bfc
  %i.bgd = add i32 %i.bga, %i.bgc
  %i.bge = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bgf = load ptr, ptr %i.bft, align 8, !tbaa !81
  %i.bgg = sext i32 %i.bgd to i64
  %i.bgh = getelementptr inbounds i8, ptr %i.bgf, i64 %i.bgg
  %i.bgi = load i64, ptr %i.an, align 16, !tbaa !82
  tail call void %i.bge(ptr noundef %i.bgh, i64 noundef %i.bgi, i32 noundef 4) #7, !inline_history !158
  %i.bgj = add nsw i32 %i.bfk, 8
  %i.bgk = ashr i32 %i.bgj, 1
  %i.bgl = add nsw i32 %i.bgk, 64
  %i.bgm = shl i32 %i.bgl, %i.bfc
  %i.bgn = ashr i32 %i.bfr, 1
  %i.bgo = load i32, ptr %i.d, align 16, !tbaa !77
  %i.bgp = and i32 %i.bgo, 7
  %i.bgq = add nsw i32 %i.bgp, %i.bgn
  %i.bgr = load i64, ptr %i.ay, align 8, !tbaa !150
  %i.bgs = trunc i64 %i.bgr to i32
  %i.bgt = mul i32 %i.bgq, %i.bgs
  %i.bgu = add i32 %i.bgt, %i.bgm
  %i.bgv = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bft, i64 8
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !81 ; 2 uses
  %i.bgy = sext i32 %i.bgu to i64
  %i.bgz = getelementptr inbounds i8, ptr %i.bgx, i64 %i.bgy
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bft, i64 16
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !81
  %i.bhc = ptrtoint ptr %i.bhb to i64
  %i.bhd = ptrtoint ptr %i.bgx to i64
  %i.bhe = sub i64 %i.bhc, %i.bhd
  tail call void %i.bgv(ptr noundef %i.bgz, i64 noundef %i.bhe, i32 noundef 2) #7, !inline_history !158
  br label %xchg_mb_border.exit

bb.df:                                            ; preds = %bb.cm
  br i1 %.not.i412, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call fastcc void @await_references(ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.bhf = and i32 %i.ayi, 12288
  %.not203.i414 = icmp eq i32 %i.bhf, 0
  br i1 %.not203.i414, label %prefetch_motion.exit214.i415, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.bhg = getelementptr inbounds nuw i8, ptr %1, i64 29068
  %i.bhh = load i8, ptr %i.bhg, align 4, !tbaa !86 ; 2 uses
  %i.bhi = icmp sgt i8 %i.bhh, -1
  br i1 %i.bhi, label %bb.dj, label %prefetch_motion.exit214.i415

bb.dj:                                            ; preds = %bb.di
  %i.bhj = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.bhk = zext nneg i8 %i.bhh to i64
  %i.bhl = getelementptr inbounds nuw i8, ptr %1, i64 28784
  %i.bhm = load i16, ptr %i.bhl, align 16, !tbaa !91
  %i.bhn = ashr i16 %i.bhm, 2
  %i.bho = sext i16 %i.bhn to i32
  %i.bhp = load i32, ptr %i.d, align 16, !tbaa !77 ; 2 uses
  %i.bhq = shl nsw i32 %i.bhp, 4
  %i.bhr = add nsw i32 %i.bhq, %i.bho             ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %1, i64 28786
  %i.bht = load i16, ptr %i.bhs, align 2, !tbaa !91
  %i.bhu = ashr i16 %i.bht, 2
  %i.bhv = sext i16 %i.bhu to i32
  %i.bhw = load i32, ptr %i.f, align 4, !tbaa !78
  %i.bhx = shl nsw i32 %i.bhw, 4
  %i.bhy = add nsw i32 %i.bhx, %i.bhv             ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %1, i64 22656
  %i.bia = getelementptr inbounds nuw [56 x i8], ptr %i.bhz, i64 %i.bhk ; 3 uses
  %i.bib = shl i32 %i.bhp, 2
  %i.bic = and i32 %i.bib, 12
  %i.bid = add nsw i32 %i.bhy, %i.bic
  %i.bie = getelementptr inbounds nuw i8, ptr %1, i64 21008
  %i.bif = load i64, ptr %i.bie, align 16, !tbaa !89
  %i.big = trunc i64 %i.bif to i32
  %i.bih = mul i32 %i.bid, %i.big
  %i.bii = add i32 %i.bhr, 72
  %i.bij = shl i32 %i.bii, %i.bhj
  %i.bik = add i32 %i.bih, %i.bij
  %i.bil = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bim = load ptr, ptr %i.bia, align 8, !tbaa !81
  %i.bin = sext i32 %i.bik to i64
  %i.bio = getelementptr inbounds i8, ptr %i.bim, i64 %i.bin
  %i.bip = load i64, ptr %i.an, align 16, !tbaa !82
  tail call void %i.bil(ptr noundef %i.bio, i64 noundef %i.bip, i32 noundef 4) #7, !inline_history !160
  %i.biq = add nsw i32 %i.bhr, 8
  %i.bir = ashr i32 %i.biq, 1
  %i.bis = add nsw i32 %i.bir, 64
  %i.bit = shl i32 %i.bis, %i.bhj
  %i.biu = ashr i32 %i.bhy, 1
  %i.biv = load i32, ptr %i.d, align 16, !tbaa !77
  %i.biw = and i32 %i.biv, 7
  %i.bix = add nsw i32 %i.biw, %i.biu
  %i.biy = load i64, ptr %i.ay, align 8, !tbaa !150
  %i.biz = trunc i64 %i.biy to i32
  %i.bja = mul i32 %i.bix, %i.biz
  %i.bjb = add i32 %i.bja, %i.bit
  %i.bjc = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bia, i64 8
  %i.bje = load ptr, ptr %i.bjd, align 8, !tbaa !81 ; 2 uses
  %i.bjf = sext i32 %i.bjb to i64
  %i.bjg = getelementptr inbounds i8, ptr %i.bje, i64 %i.bjf
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bia, i64 16
  %i.bji = load ptr, ptr %i.bjh, align 8, !tbaa !81
  %i.bjj = ptrtoint ptr %i.bji to i64
  %i.bjk = ptrtoint ptr %i.bje to i64
  %i.bjl = sub i64 %i.bjj, %i.bjk
  tail call void %i.bjc(ptr noundef %i.bjg, i64 noundef %i.bjl, i32 noundef 2) #7, !inline_history !160
  br label %prefetch_motion.exit214.i415

prefetch_motion.exit214.i415:                     ; preds = %bb.dj, %bb.di, %bb.dh
  %i.bjm = and i32 %i.ayi, 8
  %.not204.i416 = icmp eq i32 %i.bjm, 0
  br i1 %.not204.i416, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %prefetch_motion.exit214.i415
  %i.bjn = load ptr, ptr %i.axz, align 8, !tbaa !106
  %i.bjo = load ptr, ptr %i.ayb, align 8, !tbaa !106
  %i.bjp = and i32 %i.ayi, 4096
  %i.bjq = and i32 %i.ayi, 16384
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.axy, ptr noundef %i.bjn, ptr noundef nonnull readonly %i.aya, ptr noundef %i.bjo, ptr noundef nonnull readonly %i.ayc, ptr noundef nonnull readonly %i.ayd, i32 noundef %i.bjp, i32 noundef %i.bjq)
  br label %.loopexit216.i417

bb.dl:                                            ; preds = %prefetch_motion.exit214.i415
  %i.bjr = and i32 %i.ayi, 16
  %.not205.i419 = icmp eq i32 %i.bjr, 0
  br i1 %.not205.i419, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bjs = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.bjt = shl i32 8, %i.bjs
  %i.bju = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bjv = load ptr, ptr %i.axz, align 8, !tbaa !106
  %i.bjw = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.bjx = load ptr, ptr %i.ayb, align 8, !tbaa !106
  %i.bjy = and i32 %i.ayi, 4096
  %i.bjz = and i32 %i.ayi, 16384
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef %i.bjt, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.bju, ptr noundef %i.bjv, ptr noundef nonnull readonly %i.bjw, ptr noundef %i.bjx, ptr noundef nonnull readonly %i.ayc, ptr noundef nonnull readonly %i.ayd, i32 noundef %i.bjy, i32 noundef %i.bjz)
  %i.bka = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.bkb = shl i32 8, %i.bka
  %i.bkc = load ptr, ptr %i.axz, align 8, !tbaa !106
  %i.bkd = load ptr, ptr %i.ayb, align 8, !tbaa !106
  %i.bke = and i32 %i.ayi, 8192
  %i.bkf = and i32 %i.ayi, 32768
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, i32 noundef 8, i32 noundef %i.bkb, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 0, i32 noundef 4, ptr noundef nonnull readonly %i.bju, ptr noundef %i.bkc, ptr noundef nonnull readonly %i.bjw, ptr noundef %i.bkd, ptr noundef nonnull readonly %i.ayc, ptr noundef nonnull readonly %i.ayd, i32 noundef %i.bke, i32 noundef %i.bkf)
  br label %.loopexit216.i417

bb.dn:                                            ; preds = %bb.dl
  %i.bkg = and i32 %i.ayi, 32
  %.not206.i420 = icmp eq i32 %i.bkg, 0
  br i1 %.not206.i420, label %.preheader215.i423, label %bb.do

.preheader215.i423:                               ; preds = %bb.dn
  %i.bkh = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.bki = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bkj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bkl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 8 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %1, i64 21008 ; 2 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.bkv = getelementptr inbounds nuw i8, ptr %1, i64 21008 ; 2 uses
  %i.bkw = load i64, ptr %i.bkv, align 16, !tbaa !89
  %.tr211.i421 = trunc i64 %i.bkw to i32
  %i.bkx = shl i32 %.tr211.i421, 3
  %i.bky = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bla = load ptr, ptr %i.bkz, align 8, !tbaa !106
  %i.blb = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bld = load ptr, ptr %i.blc, align 8, !tbaa !106
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.blg = and i32 %i.ayi, 4096
  %i.blh = and i32 %i.ayi, 16384
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef %i.bkx, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.bky, ptr noundef %i.bla, ptr noundef nonnull readonly %i.blb, ptr noundef %i.bld, ptr noundef nonnull readonly %i.ble, ptr noundef nonnull readonly %i.blf, i32 noundef %i.blg, i32 noundef %i.blh)
  %i.bli = load i64, ptr %i.bkv, align 16, !tbaa !89
  %.tr212.i422 = trunc i64 %i.bli to i32
  %i.blj = shl i32 %.tr212.i422, 3
  %i.blk = load ptr, ptr %i.bkz, align 8, !tbaa !106
  %i.bll = load ptr, ptr %i.blc, align 8, !tbaa !106
  %i.blm = and i32 %i.ayi, 8192
  %i.bln = and i32 %i.ayi, 32768
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 0, i32 noundef 16, i32 noundef %i.blj, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef 4, i32 noundef 0, ptr noundef nonnull readonly %i.bky, ptr noundef %i.blk, ptr noundef nonnull readonly %i.blb, ptr noundef %i.bll, ptr noundef nonnull readonly %i.ble, ptr noundef nonnull readonly %i.blf, i32 noundef %i.blm, i32 noundef %i.bln)
  br label %.loopexit216.i417

bb.dp:                                            ; preds = %.loopexit.i427, %.preheader215.i423
  %indvars.iv.i424 = phi i64 [ 0, %.preheader215.i423 ], [ %indvars.iv.next.i428, %.loopexit.i427 ] ; 3 uses
  %i.blo = getelementptr inbounds nuw [2 x i8], ptr %i.bkh, i64 %indvars.iv.i424
  %i.blp = load i16, ptr %i.blo, align 2, !tbaa !91
  %i.blq = zext i16 %i.blp to i32                 ; 11 uses
  %indvars.iv.i424.tr = trunc i64 %indvars.iv.i424 to i32 ; 2 uses
  %i.blr = shl i32 %indvars.iv.i424.tr, 2         ; 10 uses
  %i.bls = and i32 %i.blr, 4                      ; 8 uses
  %i.blt = shl nuw nsw i32 %indvars.iv.i424.tr, 1 ; 2 uses
  %i.blu = and i32 %i.blt, 4                      ; 7 uses
  %i.blv = and i32 %i.blq, 8
  %.not207.i426 = icmp eq i32 %i.blv, 0
  br i1 %.not207.i426, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.blw = load ptr, ptr %i.bkj, align 8, !tbaa !106
  %i.blx = load ptr, ptr %i.bkl, align 8, !tbaa !106
  %i.bly = and i32 %i.blq, 4096
  %i.blz = and i32 %i.blq, 16384
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.blr, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bls, i32 noundef %i.blu, ptr noundef nonnull readonly %i.bki, ptr noundef %i.blw, ptr noundef nonnull readonly %i.bkk, ptr noundef %i.blx, ptr noundef nonnull readonly %i.bkm, ptr noundef nonnull readonly %i.bkn, i32 noundef %i.bly, i32 noundef %i.blz)
  br label %.loopexit.i427

bb.dr:                                            ; preds = %bb.dp
  %i.bma = and i32 %i.blq, 16
  %.not208.i430 = icmp eq i32 %i.bma, 0
  br i1 %.not208.i430, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bmb = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.bmc = shl i32 4, %i.bmb
  %i.bmd = load ptr, ptr %i.bkj, align 8, !tbaa !106
  %i.bme = load ptr, ptr %i.bkl, align 8, !tbaa !106
  %i.bmf = and i32 %i.blq, 4096                   ; 2 uses
  %i.bmg = and i32 %i.blq, 16384                  ; 2 uses
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.blr, i32 noundef 0, i32 noundef 4, i32 noundef %i.bmc, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bls, i32 noundef %i.blu, ptr noundef nonnull readonly %i.bko, ptr noundef %i.bmd, ptr noundef nonnull readonly %i.bkp, ptr noundef %i.bme, ptr noundef nonnull readonly %i.bkm, ptr noundef nonnull readonly %i.bkn, i32 noundef %i.bmf, i32 noundef %i.bmg)
  %i.bmh = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.bmi = shl i32 4, %i.bmh
  %i.bmj = or i32 %i.blt, 2
  %i.bmk = load ptr, ptr %i.bkj, align 8, !tbaa !106
  %i.bml = load ptr, ptr %i.bkl, align 8, !tbaa !106
  %i.bmm = or disjoint i32 %i.blr, 2
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bmm, i32 noundef 0, i32 noundef 4, i32 noundef %i.bmi, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bls, i32 noundef %i.bmj, ptr noundef nonnull readonly %i.bko, ptr noundef %i.bmk, ptr noundef nonnull readonly %i.bkp, ptr noundef %i.bml, ptr noundef nonnull readonly %i.bkm, ptr noundef nonnull readonly %i.bkn, i32 noundef %i.bmf, i32 noundef %i.bmg)
  br label %.loopexit.i427

bb.dt:                                            ; preds = %bb.dr
  %i.bmn = and i32 %i.blq, 32
  %.not209.i431 = icmp eq i32 %i.bmn, 0
  br i1 %.not209.i431, label %.preheader.i434, label %bb.du

.preheader.i434:                                  ; preds = %bb.dt
  %i.bmo = and i32 %i.blq, 4096                   ; 4 uses
  %i.bmp = and i32 %i.blq, 16384                  ; 4 uses
  %i.bmq = load ptr, ptr %i.bkr, align 8, !tbaa !106
  %i.bmr = load ptr, ptr %i.bks, align 8, !tbaa !106
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.blr, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bls, i32 noundef %i.blu, ptr noundef nonnull readonly %i.bko, ptr noundef %i.bmq, ptr noundef nonnull readonly %i.bkp, ptr noundef %i.bmr, ptr noundef nonnull readonly %i.bkt, ptr noundef nonnull readonly %i.bku, i32 noundef %i.bmo, i32 noundef %i.bmp)
  %i.bms = or disjoint i32 %i.bls, 2              ; 2 uses
  %i.bmt = load ptr, ptr %i.bkr, align 8, !tbaa !106
  %i.bmu = load ptr, ptr %i.bks, align 8, !tbaa !106
  %i.bmv = or disjoint i32 %i.blr, 1
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bmv, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bms, i32 noundef %i.blu, ptr noundef nonnull readonly %i.bko, ptr noundef %i.bmt, ptr noundef nonnull readonly %i.bkp, ptr noundef %i.bmu, ptr noundef nonnull readonly %i.bkt, ptr noundef nonnull readonly %i.bku, i32 noundef %i.bmo, i32 noundef %i.bmp)
  %i.bmw = or disjoint i32 %i.blu, 2              ; 2 uses
  %i.bmx = load ptr, ptr %i.bkr, align 8, !tbaa !106
  %i.bmy = load ptr, ptr %i.bks, align 8, !tbaa !106
  %i.bmz = or disjoint i32 %i.blr, 2
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bmz, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bls, i32 noundef %i.bmw, ptr noundef nonnull readonly %i.bko, ptr noundef %i.bmx, ptr noundef nonnull readonly %i.bkp, ptr noundef %i.bmy, ptr noundef nonnull readonly %i.bkt, ptr noundef nonnull readonly %i.bku, i32 noundef %i.bmo, i32 noundef %i.bmp)
  %i.bna = load ptr, ptr %i.bkr, align 8, !tbaa !106
  %i.bnb = load ptr, ptr %i.bks, align 8, !tbaa !106
  %i.bnc = or disjoint i32 %i.blr, 3
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bnc, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bms, i32 noundef %i.bmw, ptr noundef nonnull readonly %i.bko, ptr noundef %i.bna, ptr noundef nonnull readonly %i.bkp, ptr noundef %i.bnb, ptr noundef nonnull readonly %i.bkt, ptr noundef nonnull readonly %i.bku, i32 noundef %i.bmo, i32 noundef %i.bmp)
  br label %.loopexit.i427

bb.du:                                            ; preds = %bb.dt
  %i.bnd = load i64, ptr %i.bkq, align 16, !tbaa !89
  %.tr.i432 = trunc i64 %i.bnd to i32
  %i.bne = shl i32 %.tr.i432, 2
  %i.bnf = load ptr, ptr %i.bkr, align 8, !tbaa !106
  %i.bng = load ptr, ptr %i.bks, align 8, !tbaa !106
  %i.bnh = and i32 %i.blq, 4096                   ; 2 uses
  %i.bni = and i32 %i.blq, 16384                  ; 2 uses
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.blr, i32 noundef 0, i32 noundef 8, i32 noundef %i.bne, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bls, i32 noundef %i.blu, ptr noundef nonnull readonly %i.bko, ptr noundef %i.bnf, ptr noundef nonnull readonly %i.bkp, ptr noundef %i.bng, ptr noundef nonnull readonly %i.bkt, ptr noundef nonnull readonly %i.bku, i32 noundef %i.bnh, i32 noundef %i.bni)
  %i.bnj = load i64, ptr %i.bkq, align 16, !tbaa !89
  %.tr210.i433 = trunc i64 %i.bnj to i32
  %i.bnk = shl i32 %.tr210.i433, 2
  %i.bnl = or disjoint i32 %i.bls, 2
  %i.bnm = load ptr, ptr %i.bkr, align 8, !tbaa !106
  %i.bnn = load ptr, ptr %i.bks, align 8, !tbaa !106
  %i.bno = or disjoint i32 %i.blr, 1
  tail call fastcc void @mc_part_420_complex(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.bno, i32 noundef 0, i32 noundef 8, i32 noundef %i.bnk, ptr noundef %.1333, ptr noundef %.1331, ptr noundef %.1329, i32 noundef %i.bnl, i32 noundef %i.blu, ptr noundef nonnull readonly %i.bko, ptr noundef %i.bnm, ptr noundef nonnull readonly %i.bkp, ptr noundef %i.bnn, ptr noundef nonnull readonly %i.bkt, ptr noundef nonnull readonly %i.bku, i32 noundef %i.bnh, i32 noundef %i.bni)
  br label %.loopexit.i427

.loopexit.i427:                                   ; preds = %bb.du, %.preheader.i434, %bb.ds, %bb.dq
  %indvars.iv.next.i428 = add nuw nsw i64 %indvars.iv.i424, 1 ; 2 uses
  %exitcond.not.i429 = icmp eq i64 %indvars.iv.next.i428, 4
  br i1 %exitcond.not.i429, label %.loopexit216.i417, label %bb.dp, !llvm.loop !161

.loopexit216.i417:                                ; preds = %.loopexit.i427, %bb.do, %bb.dm, %bb.dk
  %i.bnp = and i32 %i.ayi, 49152
  %.not213.i418 = icmp eq i32 %i.bnp, 0
  br i1 %.not213.i418, label %xchg_mb_border.exit, label %bb.dv

bb.dv:                                            ; preds = %.loopexit216.i417
  %i.bnq = getelementptr inbounds nuw i8, ptr %1, i64 29108
  %i.bnr = load i8, ptr %i.bnq, align 4, !tbaa !86 ; 2 uses
  %i.bns = icmp sgt i8 %i.bnr, -1
  br i1 %i.bns, label %bb.dw, label %xchg_mb_border.exit

bb.dw:                                            ; preds = %bb.dv
  %i.bnt = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.bnu = zext nneg i8 %i.bnr to i64
  %i.bnv = getelementptr inbounds nuw i8, ptr %1, i64 28944
  %i.bnw = load i16, ptr %i.bnv, align 16, !tbaa !91
  %i.bnx = ashr i16 %i.bnw, 2
  %i.bny = sext i16 %i.bnx to i32
  %i.bnz = load i32, ptr %i.d, align 16, !tbaa !77 ; 2 uses
  %i.boa = shl nsw i32 %i.bnz, 4
  %i.bob = add nsw i32 %i.boa, %i.bny             ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %1, i64 28946
  %i.bod = load i16, ptr %i.boc, align 2, !tbaa !91
  %i.boe = ashr i16 %i.bod, 2
  %i.bof = sext i16 %i.boe to i32
  %i.bog = load i32, ptr %i.f, align 4, !tbaa !78
  %i.boh = shl nsw i32 %i.bog, 4
  %i.boi = add nsw i32 %i.boh, %i.bof             ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %1, i64 25344
  %i.bok = getelementptr inbounds nuw [56 x i8], ptr %i.boj, i64 %i.bnu ; 3 uses
  %i.bol = shl i32 %i.bnz, 2
  %i.bom = and i32 %i.bol, 12
  %i.bon = add nsw i32 %i.boi, %i.bom
  %i.boo = getelementptr inbounds nuw i8, ptr %1, i64 21008
  %i.bop = load i64, ptr %i.boo, align 16, !tbaa !89
  %i.boq = trunc i64 %i.bop to i32
  %i.bor = mul i32 %i.bon, %i.boq
  %i.bos = add i32 %i.bob, 72
  %i.bot = shl i32 %i.bos, %i.bnt
  %i.bou = add i32 %i.bor, %i.bot
  %i.bov = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bow = load ptr, ptr %i.bok, align 8, !tbaa !81
  %i.box = sext i32 %i.bou to i64
  %i.boy = getelementptr inbounds i8, ptr %i.bow, i64 %i.box
  %i.boz = load i64, ptr %i.an, align 16, !tbaa !82
  tail call void %i.bov(ptr noundef %i.boy, i64 noundef %i.boz, i32 noundef 4) #7, !inline_history !160
  %i.bpa = add nsw i32 %i.bob, 8
  %i.bpb = ashr i32 %i.bpa, 1
  %i.bpc = add nsw i32 %i.bpb, 64
  %i.bpd = shl i32 %i.bpc, %i.bnt
  %i.bpe = ashr i32 %i.boi, 1
  %i.bpf = load i32, ptr %i.d, align 16, !tbaa !77
  %i.bpg = and i32 %i.bpf, 7
  %i.bph = add nsw i32 %i.bpg, %i.bpe
  %i.bpi = load i64, ptr %i.ay, align 8, !tbaa !150
  %i.bpj = trunc i64 %i.bpi to i32
  %i.bpk = mul i32 %i.bph, %i.bpj
  %i.bpl = add i32 %i.bpk, %i.bpd
  %i.bpm = load ptr, ptr %i.bi, align 8, !tbaa !83
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bok, i64 8
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !81 ; 2 uses
  %i.bpp = sext i32 %i.bpl to i64
  %i.bpq = getelementptr inbounds i8, ptr %i.bpo, i64 %i.bpp
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bok, i64 16
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !81
  %i.bpt = ptrtoint ptr %i.bps to i64
  %i.bpu = ptrtoint ptr %i.bpo to i64
  %i.bpv = sub i64 %i.bpt, %i.bpu
  tail call void %i.bpm(ptr noundef %i.bpq, i64 noundef %i.bpv, i32 noundef 2) #7, !inline_history !160
  br label %xchg_mb_border.exit

xchg_mb_border.exit:                              ; preds = %bb.dw, %bb.dv, %.loopexit216.i417, %bb.de, %bb.dd, %.loopexit216.i, %.thread480, %.thread482, %bb.cg, %bb.cb, %hl_decode_mb_predict_luma.exit
  %i.bpw = load i32, ptr %i.ai, align 8, !tbaa !76 ; 3 uses
  %i.bpx = and i32 %i.o, 1
  %.not.i388 = icmp eq i32 %i.bpx, 0
  br i1 %.not.i388, label %bb.dx, label %hl_decode_mb_idct_luma.exit

bb.dx:                                            ; preds = %xchg_mb_border.exit
  %i.bpy = and i32 %i.o, 2
  %.not83.i = icmp eq i32 %i.bpy, 0
  br i1 %.not83.i, label %bb.ei, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.y, label %bb.dz, label %bb.eh

bb.dz:                                            ; preds = %bb.dy
  %i.bpz = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 4
  %i.bqb = load i32, ptr %i.bqa, align 4, !tbaa !115
  %i.bqc = icmp eq i32 %i.bqb, 244
  br i1 %i.bqc, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.bqd = getelementptr inbounds nuw i8, ptr %1, i64 20868
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !105 ; 2 uses
  %.off.i = add i32 %i.bqe, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %hl_decode_mb_idct_luma.exit.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.bqf = getelementptr inbounds nuw i8, ptr %1, i64 28616
  %i.bqg = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 3 uses
  %.not.i391 = icmp eq i32 %i.bpw, 0
  %i.bqh = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.eg
  %indvars.iv634 = phi i64 [ 0, %bb.eb ], [ %indvars.iv.next635, %bb.eg ] ; 4 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr @scan8, i64 %indvars.iv634
  %i.bqj = load i8, ptr %i.bqi, align 1, !tbaa !86
  %i.bqk = zext i8 %i.bqj to i64
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqf, i64 %i.bqk
  %i.bqm = load i8, ptr %i.bql, align 1, !tbaa !86
  %.not90.i = icmp eq i8 %i.bqm, 0
end_hunk_5
begin_hunk_6_@hl_decode_mb_simple_16:bb.a
  %.sroa.08.0.copyload.i = load i64, ptr %i.pr, align 8, !tbaa !86
  %i.ps = getelementptr inbounds nuw i8, ptr %i.no, i64 10 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !86
  store i64 %i.pt, ptr %i.pr, align 8, !tbaa !86
  store i64 %.sroa.08.0.copyload.i, ptr %i.ps, align 8, !tbaa !86
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nt, i64 48 ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.pu, align 8, !tbaa !86
  %i.pv = getelementptr inbounds nuw i8, ptr %i.np, i64 2 ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !86
  store i64 %i.pw, ptr %i.pu, align 8, !tbaa !86
  store i64 %.sroa.04.0.copyload.i, ptr %i.pv, align 8, !tbaa !86
  %i.px = getelementptr inbounds nuw i8, ptr %i.nt, i64 56 ; 2 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.px, align 8, !tbaa !86
  %i.py = getelementptr inbounds nuw i8, ptr %i.np, i64 10 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !86
  store i64 %i.pz, ptr %i.px, align 8, !tbaa !86
  store i64 %.sroa.02.0.copyload.i, ptr %i.py, align 8, !tbaa !86
  br label %xchg_mb_border.exit

bb.ax:                                            ; preds = %bb.a
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.qg = load i32, ptr %i.g, align 8, !tbaa !68
  %i.qh = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.qi = sext i32 %i.qg to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !69 ; 30 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !125
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 664
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !126
  %i.qp = and i32 %i.qo, 1
  %.not.i145 = icmp eq i32 %i.qp, 0               ; 2 uses
  br i1 %i.w, label %bb.ay, label %bb.bq

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not.i145, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @await_references(ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.qq = and i32 %i.qk, 12288
  %.not197.i = icmp eq i32 %i.qq, 0
  br i1 %.not197.i, label %prefetch_motion.exit208.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 29068
  %i.qs = load i8, ptr %i.qr, align 4, !tbaa !86  ; 2 uses
  %i.qt = icmp sgt i8 %i.qs, -1
  br i1 %i.qt, label %bb.bc, label %prefetch_motion.exit208.i

bb.bc:                                            ; preds = %bb.bb
  %i.qu = zext nneg i8 %i.qs to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 28784
  %i.qw = load i16, ptr %i.qv, align 16, !tbaa !91
  %i.qx = ashr i16 %i.qw, 2
  %i.qy = sext i16 %i.qx to i32
  %i.qz = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.ra = shl nsw i32 %i.qz, 4
  %i.rb = add nsw i32 %i.ra, %i.qy                ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 28786
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !91
  %i.re = ashr i16 %i.rd, 2
  %i.rf = sext i16 %i.re to i32
  %i.rg = load i32, ptr %i.e, align 4, !tbaa !78
  %i.rh = shl nsw i32 %i.rg, 4
  %i.ri = add nsw i32 %i.rh, %i.rf                ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 22656
  %i.rk = getelementptr inbounds nuw [56 x i8], ptr %i.rj, i64 %i.qu ; 3 uses
  %i.rl = shl i32 %i.qz, 2
  %i.rm = and i32 %i.rl, 12
  %i.rn = add nsw i32 %i.ri, %i.rm
  %i.ro = load i64, ptr %i.bx, align 16, !tbaa !89
  %i.rp = trunc i64 %i.ro to i32
  %i.rq = mul i32 %i.rn, %i.rp
  %i.rr = shl i32 %i.rb, 1
  %i.rs = add i32 %i.rr, 144
  %i.rt = add i32 %i.rs, %i.rq
  %i.ru = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.rv = load ptr, ptr %i.rk, align 8, !tbaa !81
  %i.rw = sext i32 %i.rt to i64
  %i.rx = getelementptr inbounds i8, ptr %i.rv, i64 %i.rw
  %i.ry = load i64, ptr %i.ac, align 16, !tbaa !82
  tail call void %i.ru(ptr noundef %i.rx, i64 noundef %i.ry, i32 noundef 4) #7, !inline_history !165
  %i.rz = and i32 %i.rb, -2
  %i.sa = add i32 %i.rz, 136
  %i.sb = ashr i32 %i.ri, 1
  %i.sc = load i32, ptr %i.c, align 16, !tbaa !77
  %i.sd = and i32 %i.sc, 7
  %i.se = add nsw i32 %i.sd, %i.sb
  %i.sf = load i64, ptr %i.an, align 8, !tbaa !150
  %i.sg = trunc i64 %i.sf to i32
  %i.sh = mul i32 %i.se, %i.sg
  %i.si = add i32 %i.sa, %i.sh
  %i.sj = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !81 ; 2 uses
  %i.sm = sext i32 %i.si to i64
  %i.sn = getelementptr inbounds i8, ptr %i.sl, i64 %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !81
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = ptrtoint ptr %i.sl to i64
  %i.ss = sub i64 %i.sq, %i.sr
  tail call void %i.sj(ptr noundef %i.sn, i64 noundef %i.ss, i32 noundef 2) #7, !inline_history !165
  br label %prefetch_motion.exit208.i

prefetch_motion.exit208.i:                        ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.st = and i32 %i.qk, 8
  %.not198.i = icmp eq i32 %i.st, 0
  br i1 %.not198.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %prefetch_motion.exit208.i
  %i.su = load ptr, ptr %i.qb, align 8, !tbaa !106
  %i.sv = load ptr, ptr %i.qd, align 8, !tbaa !106
  %i.sw = and i32 %i.qk, 4096
  %i.sx = and i32 %i.qk, 16384
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.qa, ptr noundef %i.su, ptr noundef nonnull readonly %i.qc, ptr noundef %i.sv, ptr noundef nonnull readonly %i.qe, ptr noundef nonnull readonly %i.qf, i32 noundef %i.sw, i32 noundef %i.sx)
  br label %.loopexit210.i

bb.be:                                            ; preds = %prefetch_motion.exit208.i
  %i.sy = and i32 %i.qk, 16
  %.not199.i = icmp eq i32 %i.sy, 0
  br i1 %.not199.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ta = load ptr, ptr %i.qb, align 8, !tbaa !106
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.tc = load ptr, ptr %i.qd, align 8, !tbaa !106
  %i.td = and i32 %i.qk, 4096
  %i.te = and i32 %i.qk, 16384
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 16, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.sz, ptr noundef %i.ta, ptr noundef nonnull readonly %i.tb, ptr noundef %i.tc, ptr noundef nonnull readonly %i.qe, ptr noundef nonnull readonly %i.qf, i32 noundef %i.td, i32 noundef %i.te)
  %i.tf = load ptr, ptr %i.qb, align 8, !tbaa !106
  %i.tg = load ptr, ptr %i.qd, align 8, !tbaa !106
  %i.th = and i32 %i.qk, 8192
  %i.ti = and i32 %i.qk, 32768
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, i32 noundef 8, i32 noundef 16, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 0, i32 noundef 4, ptr noundef nonnull readonly %i.sz, ptr noundef %i.tf, ptr noundef nonnull readonly %i.tb, ptr noundef %i.tg, ptr noundef nonnull readonly %i.qe, ptr noundef nonnull readonly %i.qf, i32 noundef %i.th, i32 noundef %i.ti)
  br label %.loopexit210.i

bb.bg:                                            ; preds = %bb.be
  %i.tj = and i32 %i.qk, 32
  %.not200.i = icmp eq i32 %i.tj, 0
  br i1 %.not200.i, label %.preheader209.i, label %bb.bh

.preheader209.i:                                  ; preds = %bb.bg
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 8 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.tx = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr205.i = trunc i64 %i.tx to i32
  %i.ty = shl i32 %.tr205.i, 3
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !106
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !106
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.uh = and i32 %i.qk, 4096
  %i.ui = and i32 %i.qk, 16384
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef %i.ty, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.tz, ptr noundef %i.ub, ptr noundef nonnull readonly %i.uc, ptr noundef %i.ue, ptr noundef nonnull readonly %i.uf, ptr noundef nonnull readonly %i.ug, i32 noundef %i.uh, i32 noundef %i.ui)
  %i.uj = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr206.i = trunc i64 %i.uj to i32
  %i.uk = shl i32 %.tr206.i, 3
  %i.ul = load ptr, ptr %i.ua, align 8, !tbaa !106
  %i.um = load ptr, ptr %i.ud, align 8, !tbaa !106
  %i.un = and i32 %i.qk, 8192
  %i.uo = and i32 %i.qk, 32768
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 0, i32 noundef 16, i32 noundef %i.uk, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 4, i32 noundef 0, ptr noundef nonnull readonly %i.tz, ptr noundef %i.ul, ptr noundef nonnull readonly %i.uc, ptr noundef %i.um, ptr noundef nonnull readonly %i.uf, ptr noundef nonnull readonly %i.ug, i32 noundef %i.un, i32 noundef %i.uo)
  br label %.loopexit210.i

bb.bi:                                            ; preds = %.loopexit.i, %.preheader209.i
  %indvars.iv.i = phi i64 [ 0, %.preheader209.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.tk, i64 %indvars.iv.i
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !91
  %i.ur = zext i16 %i.uq to i32                   ; 11 uses
  %indvars.iv.i.tr = trunc i64 %indvars.iv.i to i32 ; 2 uses
  %i.us = shl i32 %indvars.iv.i.tr, 2             ; 10 uses
  %i.ut = and i32 %i.us, 4                        ; 8 uses
  %i.uu = shl nuw nsw i32 %indvars.iv.i.tr, 1     ; 2 uses
  %i.uv = and i32 %i.uu, 4                        ; 7 uses
  %i.uw = and i32 %i.ur, 8
  %.not201.i = icmp eq i32 %i.uw, 0
  br i1 %.not201.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ux = load ptr, ptr %i.tm, align 8, !tbaa !106
  %i.uy = load ptr, ptr %i.to, align 8, !tbaa !106
  %i.uz = and i32 %i.ur, 4096
  %i.va = and i32 %i.ur, 16384
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.us, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.ut, i32 noundef %i.uv, ptr noundef nonnull readonly %i.tl, ptr noundef %i.ux, ptr noundef nonnull readonly %i.tn, ptr noundef %i.uy, ptr noundef nonnull readonly %i.tp, ptr noundef nonnull readonly %i.tq, i32 noundef %i.uz, i32 noundef %i.va)
  br label %.loopexit.i

bb.bk:                                            ; preds = %bb.bi
  %i.vb = and i32 %i.ur, 16
  %.not202.i = icmp eq i32 %i.vb, 0
  br i1 %.not202.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.vc = load ptr, ptr %i.tm, align 8, !tbaa !106
  %i.vd = load ptr, ptr %i.to, align 8, !tbaa !106
  %i.ve = and i32 %i.ur, 4096                     ; 2 uses
  %i.vf = and i32 %i.ur, 16384                    ; 2 uses
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.us, i32 noundef 0, i32 noundef 4, i32 noundef 8, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.ut, i32 noundef %i.uv, ptr noundef nonnull readonly %i.tr, ptr noundef %i.vc, ptr noundef nonnull readonly %i.ts, ptr noundef %i.vd, ptr noundef nonnull readonly %i.tp, ptr noundef nonnull readonly %i.tq, i32 noundef %i.ve, i32 noundef %i.vf)
  %i.vg = or i32 %i.uu, 2
  %i.vh = load ptr, ptr %i.tm, align 8, !tbaa !106
  %i.vi = load ptr, ptr %i.to, align 8, !tbaa !106
  %i.vj = or disjoint i32 %i.us, 2
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.vj, i32 noundef 0, i32 noundef 4, i32 noundef 8, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.ut, i32 noundef %i.vg, ptr noundef nonnull readonly %i.tr, ptr noundef %i.vh, ptr noundef nonnull readonly %i.ts, ptr noundef %i.vi, ptr noundef nonnull readonly %i.tp, ptr noundef nonnull readonly %i.tq, i32 noundef %i.ve, i32 noundef %i.vf)
  br label %.loopexit.i

bb.bm:                                            ; preds = %bb.bk
  %i.vk = and i32 %i.ur, 32
  %.not203.i = icmp eq i32 %i.vk, 0
  br i1 %.not203.i, label %.preheader.i, label %bb.bn

.preheader.i:                                     ; preds = %bb.bm
  %i.vl = and i32 %i.ur, 4096                     ; 4 uses
  %i.vm = and i32 %i.ur, 16384                    ; 4 uses
  %i.vn = load ptr, ptr %i.tt, align 8, !tbaa !106
  %i.vo = load ptr, ptr %i.tu, align 8, !tbaa !106
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.us, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.ut, i32 noundef %i.uv, ptr noundef nonnull readonly %i.tr, ptr noundef %i.vn, ptr noundef nonnull readonly %i.ts, ptr noundef %i.vo, ptr noundef nonnull readonly %i.tv, ptr noundef nonnull readonly %i.tw, i32 noundef %i.vl, i32 noundef %i.vm)
  %i.vp = or disjoint i32 %i.ut, 2                ; 2 uses
  %i.vq = load ptr, ptr %i.tt, align 8, !tbaa !106
  %i.vr = load ptr, ptr %i.tu, align 8, !tbaa !106
  %i.vs = or disjoint i32 %i.us, 1
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.vs, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.vp, i32 noundef %i.uv, ptr noundef nonnull readonly %i.tr, ptr noundef %i.vq, ptr noundef nonnull readonly %i.ts, ptr noundef %i.vr, ptr noundef nonnull readonly %i.tv, ptr noundef nonnull readonly %i.tw, i32 noundef %i.vl, i32 noundef %i.vm)
  %i.vt = or disjoint i32 %i.uv, 2                ; 2 uses
  %i.vu = load ptr, ptr %i.tt, align 8, !tbaa !106
  %i.vv = load ptr, ptr %i.tu, align 8, !tbaa !106
  %i.vw = or disjoint i32 %i.us, 2
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.vw, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.ut, i32 noundef %i.vt, ptr noundef nonnull readonly %i.tr, ptr noundef %i.vu, ptr noundef nonnull readonly %i.ts, ptr noundef %i.vv, ptr noundef nonnull readonly %i.tv, ptr noundef nonnull readonly %i.tw, i32 noundef %i.vl, i32 noundef %i.vm)
  %i.vx = load ptr, ptr %i.tt, align 8, !tbaa !106
  %i.vy = load ptr, ptr %i.tu, align 8, !tbaa !106
  %i.vz = or disjoint i32 %i.us, 3
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.vz, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.vp, i32 noundef %i.vt, ptr noundef nonnull readonly %i.tr, ptr noundef %i.vx, ptr noundef nonnull readonly %i.ts, ptr noundef %i.vy, ptr noundef nonnull readonly %i.tv, ptr noundef nonnull readonly %i.tw, i32 noundef %i.vl, i32 noundef %i.vm)
  br label %.loopexit.i

bb.bn:                                            ; preds = %bb.bm
  %i.wa = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr.i = trunc i64 %i.wa to i32
  %i.wb = shl i32 %.tr.i, 2
  %i.wc = load ptr, ptr %i.tt, align 8, !tbaa !106
  %i.wd = load ptr, ptr %i.tu, align 8, !tbaa !106
  %i.we = and i32 %i.ur, 4096                     ; 2 uses
  %i.wf = and i32 %i.ur, 16384                    ; 2 uses
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.us, i32 noundef 0, i32 noundef 8, i32 noundef %i.wb, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.ut, i32 noundef %i.uv, ptr noundef nonnull readonly %i.tr, ptr noundef %i.wc, ptr noundef nonnull readonly %i.ts, ptr noundef %i.wd, ptr noundef nonnull readonly %i.tv, ptr noundef nonnull readonly %i.tw, i32 noundef %i.we, i32 noundef %i.wf)
  %i.wg = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr204.i = trunc i64 %i.wg to i32
  %i.wh = shl i32 %.tr204.i, 2
  %i.wi = or disjoint i32 %i.ut, 2
  %i.wj = load ptr, ptr %i.tt, align 8, !tbaa !106
  %i.wk = load ptr, ptr %i.tu, align 8, !tbaa !106
  %i.wl = or disjoint i32 %i.us, 1
  tail call fastcc void @mc_part_422_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.wl, i32 noundef 0, i32 noundef 8, i32 noundef %i.wh, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.wi, i32 noundef %i.uv, ptr noundef nonnull readonly %i.tr, ptr noundef %i.wj, ptr noundef nonnull readonly %i.ts, ptr noundef %i.wk, ptr noundef nonnull readonly %i.tv, ptr noundef nonnull readonly %i.tw, i32 noundef %i.we, i32 noundef %i.wf)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bn, %.preheader.i, %bb.bl, %bb.bj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %.loopexit210.i, label %bb.bi, !llvm.loop !166

.loopexit210.i:                                   ; preds = %.loopexit.i, %bb.bh, %bb.bf, %bb.bd
  %i.wm = and i32 %i.qk, 49152
  %.not207.i = icmp eq i32 %i.wm, 0
  br i1 %.not207.i, label %xchg_mb_border.exit, label %bb.bo

bb.bo:                                            ; preds = %.loopexit210.i
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 29108
  %i.wo = load i8, ptr %i.wn, align 4, !tbaa !86  ; 2 uses
  %i.wp = icmp sgt i8 %i.wo, -1
  br i1 %i.wp, label %bb.bp, label %xchg_mb_border.exit

bb.bp:                                            ; preds = %bb.bo
  %i.wq = zext nneg i8 %i.wo to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 28944
  %i.ws = load i16, ptr %i.wr, align 16, !tbaa !91
  %i.wt = ashr i16 %i.ws, 2
  %i.wu = sext i16 %i.wt to i32
  %i.wv = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.ww = shl nsw i32 %i.wv, 4
  %i.wx = add nsw i32 %i.ww, %i.wu                ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 28946
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !91
  %i.xa = ashr i16 %i.wz, 2
  %i.xb = sext i16 %i.xa to i32
  %i.xc = load i32, ptr %i.e, align 4, !tbaa !78
  %i.xd = shl nsw i32 %i.xc, 4
  %i.xe = add nsw i32 %i.xd, %i.xb                ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 25344
  %i.xg = getelementptr inbounds nuw [56 x i8], ptr %i.xf, i64 %i.wq ; 3 uses
  %i.xh = shl i32 %i.wv, 2
  %i.xi = and i32 %i.xh, 12
  %i.xj = add nsw i32 %i.xe, %i.xi
  %i.xk = load i64, ptr %i.bx, align 16, !tbaa !89
  %i.xl = trunc i64 %i.xk to i32
  %i.xm = mul i32 %i.xj, %i.xl
  %i.xn = shl i32 %i.wx, 1
  %i.xo = add i32 %i.xn, 144
  %i.xp = add i32 %i.xo, %i.xm
  %i.xq = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.xr = load ptr, ptr %i.xg, align 8, !tbaa !81
  %i.xs = sext i32 %i.xp to i64
  %i.xt = getelementptr inbounds i8, ptr %i.xr, i64 %i.xs
  %i.xu = load i64, ptr %i.ac, align 16, !tbaa !82
  tail call void %i.xq(ptr noundef %i.xt, i64 noundef %i.xu, i32 noundef 4) #7, !inline_history !165
  %i.xv = and i32 %i.wx, -2
  %i.xw = add i32 %i.xv, 136
  %i.xx = ashr i32 %i.xe, 1
  %i.xy = load i32, ptr %i.c, align 16, !tbaa !77
  %i.xz = and i32 %i.xy, 7
  %i.ya = add nsw i32 %i.xz, %i.xx
  %i.yb = load i64, ptr %i.an, align 8, !tbaa !150
  %i.yc = trunc i64 %i.yb to i32
  %i.yd = mul i32 %i.ya, %i.yc
  %i.ye = add i32 %i.xw, %i.yd
  %i.yf = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !81 ; 2 uses
  %i.yi = sext i32 %i.ye to i64
  %i.yj = getelementptr inbounds i8, ptr %i.yh, i64 %i.yi
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !81
  %i.ym = ptrtoint ptr %i.yl to i64
  %i.yn = ptrtoint ptr %i.yh to i64
  %i.yo = sub i64 %i.ym, %i.yn
  tail call void %i.yf(ptr noundef %i.yj, i64 noundef %i.yo, i32 noundef 2) #7, !inline_history !165
  br label %xchg_mb_border.exit

bb.bq:                                            ; preds = %bb.ax
  br i1 %.not.i145, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call fastcc void @await_references(ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.yp = and i32 %i.qk, 12288
  %.not197.i147 = icmp eq i32 %i.yp, 0
  br i1 %.not197.i147, label %prefetch_motion.exit208.i148, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 29068
  %i.yr = load i8, ptr %i.yq, align 4, !tbaa !86  ; 2 uses
  %i.ys = icmp sgt i8 %i.yr, -1
  br i1 %i.ys, label %bb.bu, label %prefetch_motion.exit208.i148

bb.bu:                                            ; preds = %bb.bt
  %i.yt = zext nneg i8 %i.yr to i64
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 28784
  %i.yv = load i16, ptr %i.yu, align 16, !tbaa !91
  %i.yw = ashr i16 %i.yv, 2
  %i.yx = sext i16 %i.yw to i32
  %i.yy = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.yz = shl nsw i32 %i.yy, 4
  %i.za = add nsw i32 %i.yz, %i.yx                ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 28786
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !91
  %i.zd = ashr i16 %i.zc, 2
  %i.ze = sext i16 %i.zd to i32
  %i.zf = load i32, ptr %i.e, align 4, !tbaa !78
  %i.zg = shl nsw i32 %i.zf, 4
  %i.zh = add nsw i32 %i.zg, %i.ze                ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 22656
  %i.zj = getelementptr inbounds nuw [56 x i8], ptr %i.zi, i64 %i.yt ; 3 uses
  %i.zk = shl i32 %i.yy, 2
  %i.zl = and i32 %i.zk, 12
  %i.zm = add nsw i32 %i.zh, %i.zl
  %i.zn = load i64, ptr %i.bx, align 16, !tbaa !89
  %i.zo = trunc i64 %i.zn to i32
  %i.zp = mul i32 %i.zm, %i.zo
  %i.zq = shl i32 %i.za, 1
  %i.zr = add i32 %i.zq, 144
  %i.zs = add i32 %i.zr, %i.zp
  %i.zt = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.zu = load ptr, ptr %i.zj, align 8, !tbaa !81
  %i.zv = sext i32 %i.zs to i64
  %i.zw = getelementptr inbounds i8, ptr %i.zu, i64 %i.zv
  %i.zx = load i64, ptr %i.ac, align 16, !tbaa !82
  tail call void %i.zt(ptr noundef %i.zw, i64 noundef %i.zx, i32 noundef 4) #7, !inline_history !167
  %i.zy = and i32 %i.za, -2
  %i.zz = add i32 %i.zy, 136
  %i.aaa = ashr i32 %i.zh, 1
  %i.aab = load i32, ptr %i.c, align 16, !tbaa !77
  %i.aac = and i32 %i.aab, 7
  %i.aad = add nsw i32 %i.aac, %i.aaa
  %i.aae = load i64, ptr %i.an, align 8, !tbaa !150
  %i.aaf = trunc i64 %i.aae to i32
  %i.aag = mul i32 %i.aad, %i.aaf
  %i.aah = add i32 %i.zz, %i.aag
  %i.aai = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !81 ; 2 uses
  %i.aal = sext i32 %i.aah to i64
  %i.aam = getelementptr inbounds i8, ptr %i.aak, i64 %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !81
  %i.aap = ptrtoint ptr %i.aao to i64
  %i.aaq = ptrtoint ptr %i.aak to i64
  %i.aar = sub i64 %i.aap, %i.aaq
  tail call void %i.aai(ptr noundef %i.aam, i64 noundef %i.aar, i32 noundef 2) #7, !inline_history !167
  br label %prefetch_motion.exit208.i148

prefetch_motion.exit208.i148:                     ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.aas = and i32 %i.qk, 8
  %.not198.i149 = icmp eq i32 %i.aas, 0
  br i1 %.not198.i149, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %prefetch_motion.exit208.i148
  %i.aat = load ptr, ptr %i.qb, align 8, !tbaa !106
  %i.aau = load ptr, ptr %i.qd, align 8, !tbaa !106
  %i.aav = and i32 %i.qk, 4096
  %i.aaw = and i32 %i.qk, 16384
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.qa, ptr noundef %i.aat, ptr noundef nonnull readonly %i.qc, ptr noundef %i.aau, ptr noundef nonnull readonly %i.qe, ptr noundef nonnull readonly %i.qf, i32 noundef %i.aav, i32 noundef %i.aaw)
  br label %.loopexit210.i150

bb.bw:                                            ; preds = %prefetch_motion.exit208.i148
  %i.aax = and i32 %i.qk, 16
  %.not199.i152 = icmp eq i32 %i.aax, 0
  br i1 %.not199.i152, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.aaz = load ptr, ptr %i.qb, align 8, !tbaa !106
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.abb = load ptr, ptr %i.qd, align 8, !tbaa !106
  %i.abc = and i32 %i.qk, 4096
  %i.abd = and i32 %i.qk, 16384
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 16, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.aay, ptr noundef %i.aaz, ptr noundef nonnull readonly %i.aba, ptr noundef %i.abb, ptr noundef nonnull readonly %i.qe, ptr noundef nonnull readonly %i.qf, i32 noundef %i.abc, i32 noundef %i.abd)
  %i.abe = load ptr, ptr %i.qb, align 8, !tbaa !106
  %i.abf = load ptr, ptr %i.qd, align 8, !tbaa !106
  %i.abg = and i32 %i.qk, 8192
  %i.abh = and i32 %i.qk, 32768
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, i32 noundef 8, i32 noundef 16, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 0, i32 noundef 4, ptr noundef nonnull readonly %i.aay, ptr noundef %i.abe, ptr noundef nonnull readonly %i.aba, ptr noundef %i.abf, ptr noundef nonnull readonly %i.qe, ptr noundef nonnull readonly %i.qf, i32 noundef %i.abg, i32 noundef %i.abh)
  br label %.loopexit210.i150

bb.by:                                            ; preds = %bb.bw
  %i.abi = and i32 %i.qk, 32
  %.not200.i153 = icmp eq i32 %i.abi, 0
  br i1 %.not200.i153, label %.preheader209.i156, label %bb.bz

.preheader209.i156:                               ; preds = %bb.by
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 8 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.abw = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr205.i154 = trunc i64 %i.abw to i32
  %i.abx = shl i32 %.tr205.i154, 3
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !106
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !106
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.acg = and i32 %i.qk, 4096
  %i.ach = and i32 %i.qk, 16384
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef %i.abx, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.aby, ptr noundef %i.aca, ptr noundef nonnull readonly %i.acb, ptr noundef %i.acd, ptr noundef nonnull readonly %i.ace, ptr noundef nonnull readonly %i.acf, i32 noundef %i.acg, i32 noundef %i.ach)
  %i.aci = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr206.i155 = trunc i64 %i.aci to i32
  %i.acj = shl i32 %.tr206.i155, 3
  %i.ack = load ptr, ptr %i.abz, align 8, !tbaa !106
  %i.acl = load ptr, ptr %i.acc, align 8, !tbaa !106
  %i.acm = and i32 %i.qk, 8192
  %i.acn = and i32 %i.qk, 32768
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 0, i32 noundef 16, i32 noundef %i.acj, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.as, ptr noundef %i.aw, i32 noundef 4, i32 noundef 0, ptr noundef nonnull readonly %i.aby, ptr noundef %i.ack, ptr noundef nonnull readonly %i.acb, ptr noundef %i.acl, ptr noundef nonnull readonly %i.ace, ptr noundef nonnull readonly %i.acf, i32 noundef %i.acm, i32 noundef %i.acn)
  br label %.loopexit210.i150

bb.ca:                                            ; preds = %.loopexit.i160, %.preheader209.i156
  %indvars.iv.i157 = phi i64 [ 0, %.preheader209.i156 ], [ %indvars.iv.next.i161, %.loopexit.i160 ] ; 3 uses
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %i.abj, i64 %indvars.iv.i157
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !91
  %i.acq = zext i16 %i.acp to i32                 ; 11 uses
  %indvars.iv.i157.tr = trunc i64 %indvars.iv.i157 to i32 ; 2 uses
  %i.acr = shl i32 %indvars.iv.i157.tr, 2         ; 10 uses
  %i.acs = and i32 %i.acr, 4                      ; 8 uses
  %i.act = shl nuw nsw i32 %indvars.iv.i157.tr, 1 ; 2 uses
  %i.acu = and i32 %i.act, 4                      ; 7 uses
  %i.acv = and i32 %i.acq, 8
  %.not201.i159 = icmp eq i32 %i.acv, 0
  br i1 %.not201.i159, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.acw = load ptr, ptr %i.abl, align 8, !tbaa !106
  %i.acx = load ptr, ptr %i.abn, align 8, !tbaa !106
  %i.acy = and i32 %i.acq, 4096
  %i.acz = and i32 %i.acq, 16384
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.acr, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.acs, i32 noundef %i.acu, ptr noundef nonnull readonly %i.abk, ptr noundef %i.acw, ptr noundef nonnull readonly %i.abm, ptr noundef %i.acx, ptr noundef nonnull readonly %i.abo, ptr noundef nonnull readonly %i.abp, i32 noundef %i.acy, i32 noundef %i.acz)
  br label %.loopexit.i160

bb.cc:                                            ; preds = %bb.ca
  %i.ada = and i32 %i.acq, 16
  %.not202.i163 = icmp eq i32 %i.ada, 0
  br i1 %.not202.i163, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.adb = load ptr, ptr %i.abl, align 8, !tbaa !106
  %i.adc = load ptr, ptr %i.abn, align 8, !tbaa !106
  %i.add = and i32 %i.acq, 4096                   ; 2 uses
  %i.ade = and i32 %i.acq, 16384                  ; 2 uses
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.acr, i32 noundef 0, i32 noundef 4, i32 noundef 8, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.acs, i32 noundef %i.acu, ptr noundef nonnull readonly %i.abq, ptr noundef %i.adb, ptr noundef nonnull readonly %i.abr, ptr noundef %i.adc, ptr noundef nonnull readonly %i.abo, ptr noundef nonnull readonly %i.abp, i32 noundef %i.add, i32 noundef %i.ade)
  %i.adf = or i32 %i.act, 2
  %i.adg = load ptr, ptr %i.abl, align 8, !tbaa !106
  %i.adh = load ptr, ptr %i.abn, align 8, !tbaa !106
  %i.adi = or disjoint i32 %i.acr, 2
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.adi, i32 noundef 0, i32 noundef 4, i32 noundef 8, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.acs, i32 noundef %i.adf, ptr noundef nonnull readonly %i.abq, ptr noundef %i.adg, ptr noundef nonnull readonly %i.abr, ptr noundef %i.adh, ptr noundef nonnull readonly %i.abo, ptr noundef nonnull readonly %i.abp, i32 noundef %i.add, i32 noundef %i.ade)
  br label %.loopexit.i160

bb.ce:                                            ; preds = %bb.cc
  %i.adj = and i32 %i.acq, 32
  %.not203.i164 = icmp eq i32 %i.adj, 0
  br i1 %.not203.i164, label %.preheader.i167, label %bb.cf

.preheader.i167:                                  ; preds = %bb.ce
  %i.adk = and i32 %i.acq, 4096                   ; 4 uses
  %i.adl = and i32 %i.acq, 16384                  ; 4 uses
  %i.adm = load ptr, ptr %i.abs, align 8, !tbaa !106
  %i.adn = load ptr, ptr %i.abt, align 8, !tbaa !106
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.acr, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.acs, i32 noundef %i.acu, ptr noundef nonnull readonly %i.abq, ptr noundef %i.adm, ptr noundef nonnull readonly %i.abr, ptr noundef %i.adn, ptr noundef nonnull readonly %i.abu, ptr noundef nonnull readonly %i.abv, i32 noundef %i.adk, i32 noundef %i.adl)
  %i.ado = or disjoint i32 %i.acs, 2              ; 2 uses
  %i.adp = load ptr, ptr %i.abs, align 8, !tbaa !106
  %i.adq = load ptr, ptr %i.abt, align 8, !tbaa !106
  %i.adr = or disjoint i32 %i.acr, 1
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.adr, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.ado, i32 noundef %i.acu, ptr noundef nonnull readonly %i.abq, ptr noundef %i.adp, ptr noundef nonnull readonly %i.abr, ptr noundef %i.adq, ptr noundef nonnull readonly %i.abu, ptr noundef nonnull readonly %i.abv, i32 noundef %i.adk, i32 noundef %i.adl)
  %i.ads = or disjoint i32 %i.acu, 2              ; 2 uses
  %i.adt = load ptr, ptr %i.abs, align 8, !tbaa !106
  %i.adu = load ptr, ptr %i.abt, align 8, !tbaa !106
  %i.adv = or disjoint i32 %i.acr, 2
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.adv, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.acs, i32 noundef %i.ads, ptr noundef nonnull readonly %i.abq, ptr noundef %i.adt, ptr noundef nonnull readonly %i.abr, ptr noundef %i.adu, ptr noundef nonnull readonly %i.abu, ptr noundef nonnull readonly %i.abv, i32 noundef %i.adk, i32 noundef %i.adl)
  %i.adw = load ptr, ptr %i.abs, align 8, !tbaa !106
  %i.adx = load ptr, ptr %i.abt, align 8, !tbaa !106
  %i.ady = or disjoint i32 %i.acr, 3
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.ady, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.ado, i32 noundef %i.ads, ptr noundef nonnull readonly %i.abq, ptr noundef %i.adw, ptr noundef nonnull readonly %i.abr, ptr noundef %i.adx, ptr noundef nonnull readonly %i.abu, ptr noundef nonnull readonly %i.abv, i32 noundef %i.adk, i32 noundef %i.adl)
  br label %.loopexit.i160

bb.cf:                                            ; preds = %bb.ce
  %i.adz = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr.i165 = trunc i64 %i.adz to i32
  %i.aea = shl i32 %.tr.i165, 2
  %i.aeb = load ptr, ptr %i.abs, align 8, !tbaa !106
  %i.aec = load ptr, ptr %i.abt, align 8, !tbaa !106
  %i.aed = and i32 %i.acq, 4096                   ; 2 uses
  %i.aee = and i32 %i.acq, 16384                  ; 2 uses
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.acr, i32 noundef 0, i32 noundef 8, i32 noundef %i.aea, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.acs, i32 noundef %i.acu, ptr noundef nonnull readonly %i.abq, ptr noundef %i.aeb, ptr noundef nonnull readonly %i.abr, ptr noundef %i.aec, ptr noundef nonnull readonly %i.abu, ptr noundef nonnull readonly %i.abv, i32 noundef %i.aed, i32 noundef %i.aee)
  %i.aef = load i64, ptr %i.bx, align 16, !tbaa !89
  %.tr204.i166 = trunc i64 %i.aef to i32
  %i.aeg = shl i32 %.tr204.i166, 2
  %i.aeh = or disjoint i32 %i.acs, 2
  %i.aei = load ptr, ptr %i.abs, align 8, !tbaa !106
  %i.aej = load ptr, ptr %i.abt, align 8, !tbaa !106
  %i.aek = or disjoint i32 %i.acr, 1
  tail call fastcc void @mc_part_420_simple_16(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.aek, i32 noundef 0, i32 noundef 8, i32 noundef %i.aeg, ptr noundef %i.ah, ptr noundef %i.as, ptr noundef %i.aw, i32 noundef %i.aeh, i32 noundef %i.acu, ptr noundef nonnull readonly %i.abq, ptr noundef %i.aei, ptr noundef nonnull readonly %i.abr, ptr noundef %i.aej, ptr noundef nonnull readonly %i.abu, ptr noundef nonnull readonly %i.abv, i32 noundef %i.aed, i32 noundef %i.aee)
  br label %.loopexit.i160

.loopexit.i160:                                   ; preds = %bb.cf, %.preheader.i167, %bb.cd, %bb.cb
  %indvars.iv.next.i161 = add nuw nsw i64 %indvars.iv.i157, 1 ; 2 uses
  %exitcond.not.i162 = icmp eq i64 %indvars.iv.next.i161, 4
  br i1 %exitcond.not.i162, label %.loopexit210.i150, label %bb.ca, !llvm.loop !168

.loopexit210.i150:                                ; preds = %.loopexit.i160, %bb.bz, %bb.bx, %bb.bv
  %i.ael = and i32 %i.qk, 49152
  %.not207.i151 = icmp eq i32 %i.ael, 0
  br i1 %.not207.i151, label %xchg_mb_border.exit, label %bb.cg

bb.cg:                                            ; preds = %.loopexit210.i150
  %i.aem = getelementptr inbounds nuw i8, ptr %1, i64 29108
  %i.aen = load i8, ptr %i.aem, align 4, !tbaa !86 ; 2 uses
  %i.aeo = icmp sgt i8 %i.aen, -1
  br i1 %i.aeo, label %bb.ch, label %xchg_mb_border.exit

bb.ch:                                            ; preds = %bb.cg
  %i.aep = zext nneg i8 %i.aen to i64
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 28944
  %i.aer = load i16, ptr %i.aeq, align 16, !tbaa !91
  %i.aes = ashr i16 %i.aer, 2
  %i.aet = sext i16 %i.aes to i32
  %i.aeu = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.aev = shl nsw i32 %i.aeu, 4
  %i.aew = add nsw i32 %i.aev, %i.aet             ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 28946
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !91
  %i.aez = ashr i16 %i.aey, 2
  %i.afa = sext i16 %i.aez to i32
  %i.afb = load i32, ptr %i.e, align 4, !tbaa !78
  %i.afc = shl nsw i32 %i.afb, 4
  %i.afd = add nsw i32 %i.afc, %i.afa             ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 25344
  %i.aff = getelementptr inbounds nuw [56 x i8], ptr %i.afe, i64 %i.aep ; 3 uses
  %i.afg = shl i32 %i.aeu, 2
  %i.afh = and i32 %i.afg, 12
  %i.afi = add nsw i32 %i.afd, %i.afh
  %i.afj = load i64, ptr %i.bx, align 16, !tbaa !89
  %i.afk = trunc i64 %i.afj to i32
  %i.afl = mul i32 %i.afi, %i.afk
  %i.afm = shl i32 %i.aew, 1
  %i.afn = add i32 %i.afm, 144
  %i.afo = add i32 %i.afn, %i.afl
  %i.afp = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.afq = load ptr, ptr %i.aff, align 8, !tbaa !81
  %i.afr = sext i32 %i.afo to i64
  %i.afs = getelementptr inbounds i8, ptr %i.afq, i64 %i.afr
  %i.aft = load i64, ptr %i.ac, align 16, !tbaa !82
  tail call void %i.afp(ptr noundef %i.afs, i64 noundef %i.aft, i32 noundef 4) #7, !inline_history !167
  %i.afu = and i32 %i.aew, -2
  %i.afv = add i32 %i.afu, 136
  %i.afw = ashr i32 %i.afd, 1
  %i.afx = load i32, ptr %i.c, align 16, !tbaa !77
  %i.afy = and i32 %i.afx, 7
  %i.afz = add nsw i32 %i.afy, %i.afw
  %i.aga = load i64, ptr %i.an, align 8, !tbaa !150
  %i.agb = trunc i64 %i.aga to i32
  %i.agc = mul i32 %i.afz, %i.agb
  %i.agd = add i32 %i.afv, %i.agc
  %i.age = load ptr, ptr %i.ax, align 8, !tbaa !83
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !81 ; 2 uses
  %i.agh = sext i32 %i.agd to i64
  %i.agi = getelementptr inbounds i8, ptr %i.agg, i64 %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !81
  %i.agl = ptrtoint ptr %i.agk to i64
  %i.agm = ptrtoint ptr %i.agg to i64
  %i.agn = sub i64 %i.agl, %i.agm
  tail call void %i.age(ptr noundef %i.agi, i64 noundef %i.agn, i32 noundef 2) #7, !inline_history !167
  br label %xchg_mb_border.exit

xchg_mb_border.exit:                              ; preds = %hl_decode_mb_predict_luma.exit, %bb.ch, %bb.cg, %.loopexit210.i150, %bb.bp, %bb.bo, %.loopexit210.i, %bb.aw, %bb.ap
  %i.ago = and i32 %i.n, 1
  %.not.i144 = icmp eq i32 %i.ago, 0
  br i1 %.not.i144, label %bb.ci, label %hl_decode_mb_idct_luma.exit

bb.ci:                                            ; preds = %xchg_mb_border.exit
  %i.agp = and i32 %i.n, 2
  %.not83.i = icmp eq i32 %i.agp, 0
  br i1 %.not83.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.agq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !144
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 28616
  call void %i.agr(ptr noundef %i.ah, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ags, i32 noundef %i.by, ptr noundef nonnull %i.agt) #7, !inline_history !140
  br label %hl_decode_mb_idct_luma.exit

bb.ck:                                            ; preds = %bb.ci
  %i.agu = getelementptr inbounds nuw i8, ptr %1, i64 21092
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !139
  %i.agw = and i32 %i.agv, 15
  %.not84.i = icmp eq i32 %i.agw, 0
  br i1 %.not84.i, label %hl_decode_mb_idct_luma.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.agx = and i32 %i.n, 16777216
  %.not86.i = icmp eq i32 %i.agx, 0
  %i.agy = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 2 uses
  br i1 %.not86.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !142
  call void %i.ahb(ptr noundef %i.ah, ptr noundef nonnull %i.o, ptr noundef nonnull %i.agy, i32 noundef %i.by, ptr noundef nonnull %i.agz) #7, !inline_history !140
  br label %hl_decode_mb_idct_luma.exit

bb.cn:                                            ; preds = %bb.cl
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !143
  call void %i.ahd(ptr noundef %i.ah, ptr noundef nonnull %i.o, ptr noundef nonnull %i.agy, i32 noundef %i.by, ptr noundef nonnull %i.agz) #7, !inline_history !140
  br label %hl_decode_mb_idct_luma.exit

hl_decode_mb_idct_luma.exit:                      ; preds = %xchg_mb_border.exit, %bb.cj, %bb.ck, %bb.cm, %bb.cn
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 21092
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !139
  %i.ahg = and i32 %i.ahf, 48
  %.not124 = icmp eq i32 %i.ahg, 0
  br i1 %.not124, label %bb.cw, label %bb.co

end_hunk_6
begin_hunk_7_@hl_decode_mb_simple_8:bb.a
  store i64 %i.no, ptr %i.nm, align 8, !tbaa !86
  store i64 %.sroa.012.0.copyload.i, ptr %i.nn, align 8, !tbaa !86
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.np = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %.sroa.06.0.copyload.i = load i64, ptr %i.np, align 8, !tbaa !86
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ml, i64 1 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !86
  store i64 %i.nr, ptr %i.np, align 8, !tbaa !86
  store i64 %.sroa.06.0.copyload.i, ptr %i.nq, align 8, !tbaa !86
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mq, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ns, align 8, !tbaa !86
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mm, i64 1 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !86
  store i64 %i.nu, ptr %i.ns, align 8, !tbaa !86
  store i64 %.sroa.0.0.copyload.i, ptr %i.nt, align 8, !tbaa !86
  br label %xchg_mb_border.exit

bb.ay:                                            ; preds = %bb.a
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ob = load i32, ptr %i.g, align 8, !tbaa !68
  %i.oc = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.od = sext i32 %i.ob to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !69 ; 30 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !125
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 664
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !126
  %i.ok = and i32 %i.oj, 1
  %.not.i138 = icmp eq i32 %i.ok, 0               ; 2 uses
  br i1 %i.w, label %bb.az, label %bb.br

bb.az:                                            ; preds = %bb.ay
  br i1 %.not.i138, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call fastcc void @await_references(ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ol = and i32 %i.of, 12288
  %.not197.i = icmp eq i32 %i.ol, 0
  br i1 %.not197.i, label %prefetch_motion.exit208.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 29068
  %i.on = load i8, ptr %i.om, align 4, !tbaa !86  ; 2 uses
  %i.oo = icmp sgt i8 %i.on, -1
  br i1 %i.oo, label %bb.bd, label %prefetch_motion.exit208.i

bb.bd:                                            ; preds = %bb.bc
  %i.op = zext nneg i8 %i.on to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 28784
  %i.or = load i16, ptr %i.oq, align 16, !tbaa !91
  %i.os = ashr i16 %i.or, 2
  %i.ot = sext i16 %i.os to i32
  %i.ou = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.ov = shl nsw i32 %i.ou, 4
  %i.ow = add nsw i32 %i.ov, %i.ot                ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 28786
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !91
  %i.oz = ashr i16 %i.oy, 2
  %i.pa = sext i16 %i.oz to i32
  %i.pb = load i32, ptr %i.e, align 4, !tbaa !78
  %i.pc = shl nsw i32 %i.pb, 4
  %i.pd = add nsw i32 %i.pc, %i.pa                ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 22656
  %i.pf = getelementptr inbounds nuw [56 x i8], ptr %i.pe, i64 %i.op ; 3 uses
  %i.pg = shl i32 %i.ou, 2
  %i.ph = and i32 %i.pg, 12
  %i.pi = add nsw i32 %i.pd, %i.ph
  %i.pj = load i64, ptr %i.bw, align 16, !tbaa !89
  %i.pk = trunc i64 %i.pj to i32
  %i.pl = mul i32 %i.pi, %i.pk
  %i.pm = add i32 %i.ow, 72
  %i.pn = add i32 %i.pm, %i.pl
  %i.po = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.pp = load ptr, ptr %i.pf, align 8, !tbaa !81
  %i.pq = sext i32 %i.pn to i64
  %i.pr = getelementptr inbounds i8, ptr %i.pp, i64 %i.pq
  %i.ps = load i64, ptr %i.ab, align 16, !tbaa !82
  tail call void %i.po(ptr noundef %i.pr, i64 noundef %i.ps, i32 noundef 4) #7, !inline_history !169
  %i.pt = add nsw i32 %i.ow, 8
  %i.pu = ashr i32 %i.pt, 1
  %i.pv = add nsw i32 %i.pu, 64
  %i.pw = ashr i32 %i.pd, 1
  %i.px = load i32, ptr %i.c, align 16, !tbaa !77
  %i.py = and i32 %i.px, 7
  %i.pz = add nsw i32 %i.py, %i.pw
  %i.qa = load i64, ptr %i.am, align 8, !tbaa !150
  %i.qb = trunc i64 %i.qa to i32
  %i.qc = mul i32 %i.pz, %i.qb
  %i.qd = add i32 %i.pv, %i.qc
  %i.qe = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !81 ; 2 uses
  %i.qh = sext i32 %i.qd to i64
  %i.qi = getelementptr inbounds i8, ptr %i.qg, i64 %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !81
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qg to i64
  %i.qn = sub i64 %i.ql, %i.qm
  tail call void %i.qe(ptr noundef %i.qi, i64 noundef %i.qn, i32 noundef 2) #7, !inline_history !169
  br label %prefetch_motion.exit208.i

prefetch_motion.exit208.i:                        ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.qo = and i32 %i.of, 8
  %.not198.i = icmp eq i32 %i.qo, 0
  br i1 %.not198.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %prefetch_motion.exit208.i
  %i.qp = load ptr, ptr %i.nw, align 8, !tbaa !106
  %i.qq = load ptr, ptr %i.ny, align 8, !tbaa !106
  %i.qr = and i32 %i.of, 4096
  %i.qs = and i32 %i.of, 16384
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.nv, ptr noundef %i.qp, ptr noundef nonnull readonly %i.nx, ptr noundef %i.qq, ptr noundef nonnull readonly %i.nz, ptr noundef nonnull readonly %i.oa, i32 noundef %i.qr, i32 noundef %i.qs)
  br label %.loopexit210.i

bb.bf:                                            ; preds = %prefetch_motion.exit208.i
  %i.qt = and i32 %i.of, 16
  %.not199.i = icmp eq i32 %i.qt, 0
  br i1 %.not199.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.qv = load ptr, ptr %i.nw, align 8, !tbaa !106
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.qx = load ptr, ptr %i.ny, align 8, !tbaa !106
  %i.qy = and i32 %i.of, 4096
  %i.qz = and i32 %i.of, 16384
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.qu, ptr noundef %i.qv, ptr noundef nonnull readonly %i.qw, ptr noundef %i.qx, ptr noundef nonnull readonly %i.nz, ptr noundef nonnull readonly %i.oa, i32 noundef %i.qy, i32 noundef %i.qz)
  %i.ra = load ptr, ptr %i.nw, align 8, !tbaa !106
  %i.rb = load ptr, ptr %i.ny, align 8, !tbaa !106
  %i.rc = and i32 %i.of, 8192
  %i.rd = and i32 %i.of, 32768
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 4, ptr noundef nonnull readonly %i.qu, ptr noundef %i.ra, ptr noundef nonnull readonly %i.qw, ptr noundef %i.rb, ptr noundef nonnull readonly %i.nz, ptr noundef nonnull readonly %i.oa, i32 noundef %i.rc, i32 noundef %i.rd)
  br label %.loopexit210.i

bb.bh:                                            ; preds = %bb.bf
  %i.re = and i32 %i.of, 32
  %.not200.i = icmp eq i32 %i.re, 0
  br i1 %.not200.i, label %.preheader209.i, label %bb.bi

.preheader209.i:                                  ; preds = %bb.bh
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 8 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.rs = load i64, ptr %i.bw, align 16, !tbaa !89
  %.tr205.i = trunc i64 %i.rs to i32
  %i.rt = shl i32 %.tr205.i, 3
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !106
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !106
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.sc = and i32 %i.of, 4096
  %i.sd = and i32 %i.of, 16384
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef %i.rt, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.ru, ptr noundef %i.rw, ptr noundef nonnull readonly %i.rx, ptr noundef %i.rz, ptr noundef nonnull readonly %i.sa, ptr noundef nonnull readonly %i.sb, i32 noundef %i.sc, i32 noundef %i.sd)
  %i.se = load i64, ptr %i.bw, align 16, !tbaa !89
  %.tr206.i = trunc i64 %i.se to i32
  %i.sf = shl i32 %.tr206.i, 3
  %i.sg = load ptr, ptr %i.rv, align 8, !tbaa !106
  %i.sh = load ptr, ptr %i.ry, align 8, !tbaa !106
  %i.si = and i32 %i.of, 8192
  %i.sj = and i32 %i.of, 32768
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 0, i32 noundef 16, i32 noundef %i.sf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 4, i32 noundef 0, ptr noundef nonnull readonly %i.ru, ptr noundef %i.sg, ptr noundef nonnull readonly %i.rx, ptr noundef %i.sh, ptr noundef nonnull readonly %i.sa, ptr noundef nonnull readonly %i.sb, i32 noundef %i.si, i32 noundef %i.sj)
  br label %.loopexit210.i

bb.bj:                                            ; preds = %.loopexit.i, %.preheader209.i
  %indvars.iv.i = phi i64 [ 0, %.preheader209.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.rf, i64 %indvars.iv.i
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !91
  %i.sm = zext i16 %i.sl to i32                   ; 11 uses
  %indvars.iv.i.tr = trunc i64 %indvars.iv.i to i32 ; 2 uses
  %i.sn = shl i32 %indvars.iv.i.tr, 2             ; 10 uses
  %i.so = and i32 %i.sn, 4                        ; 8 uses
  %i.sp = shl nuw nsw i32 %indvars.iv.i.tr, 1     ; 2 uses
  %i.sq = and i32 %i.sp, 4                        ; 7 uses
  %i.sr = and i32 %i.sm, 8
  %.not201.i = icmp eq i32 %i.sr, 0
  br i1 %.not201.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ss = load ptr, ptr %i.rh, align 8, !tbaa !106
  %i.st = load ptr, ptr %i.rj, align 8, !tbaa !106
  %i.su = and i32 %i.sm, 4096
  %i.sv = and i32 %i.sm, 16384
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.sn, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.so, i32 noundef %i.sq, ptr noundef nonnull readonly %i.rg, ptr noundef %i.ss, ptr noundef nonnull readonly %i.ri, ptr noundef %i.st, ptr noundef nonnull readonly %i.rk, ptr noundef nonnull readonly %i.rl, i32 noundef %i.su, i32 noundef %i.sv)
  br label %.loopexit.i

bb.bl:                                            ; preds = %bb.bj
  %i.sw = and i32 %i.sm, 16
  %.not202.i = icmp eq i32 %i.sw, 0
  br i1 %.not202.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sx = load ptr, ptr %i.rh, align 8, !tbaa !106
  %i.sy = load ptr, ptr %i.rj, align 8, !tbaa !106
  %i.sz = and i32 %i.sm, 4096                     ; 2 uses
  %i.ta = and i32 %i.sm, 16384                    ; 2 uses
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.sn, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.so, i32 noundef %i.sq, ptr noundef nonnull readonly %i.rm, ptr noundef %i.sx, ptr noundef nonnull readonly %i.rn, ptr noundef %i.sy, ptr noundef nonnull readonly %i.rk, ptr noundef nonnull readonly %i.rl, i32 noundef %i.sz, i32 noundef %i.ta)
  %i.tb = or i32 %i.sp, 2
  %i.tc = load ptr, ptr %i.rh, align 8, !tbaa !106
  %i.td = load ptr, ptr %i.rj, align 8, !tbaa !106
  %i.te = or disjoint i32 %i.sn, 2
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.te, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.so, i32 noundef %i.tb, ptr noundef nonnull readonly %i.rm, ptr noundef %i.tc, ptr noundef nonnull readonly %i.rn, ptr noundef %i.td, ptr noundef nonnull readonly %i.rk, ptr noundef nonnull readonly %i.rl, i32 noundef %i.sz, i32 noundef %i.ta)
  br label %.loopexit.i

bb.bn:                                            ; preds = %bb.bl
  %i.tf = and i32 %i.sm, 32
  %.not203.i = icmp eq i32 %i.tf, 0
  br i1 %.not203.i, label %.preheader.i, label %bb.bo

.preheader.i:                                     ; preds = %bb.bn
  %i.tg = and i32 %i.sm, 4096                     ; 4 uses
  %i.th = and i32 %i.sm, 16384                    ; 4 uses
  %i.ti = load ptr, ptr %i.ro, align 8, !tbaa !106
  %i.tj = load ptr, ptr %i.rp, align 8, !tbaa !106
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.sn, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.so, i32 noundef %i.sq, ptr noundef nonnull readonly %i.rm, ptr noundef %i.ti, ptr noundef nonnull readonly %i.rn, ptr noundef %i.tj, ptr noundef nonnull readonly %i.rq, ptr noundef nonnull readonly %i.rr, i32 noundef %i.tg, i32 noundef %i.th)
  %i.tk = or disjoint i32 %i.so, 2                ; 2 uses
  %i.tl = load ptr, ptr %i.ro, align 8, !tbaa !106
  %i.tm = load ptr, ptr %i.rp, align 8, !tbaa !106
  %i.tn = or disjoint i32 %i.sn, 1
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.tn, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.tk, i32 noundef %i.sq, ptr noundef nonnull readonly %i.rm, ptr noundef %i.tl, ptr noundef nonnull readonly %i.rn, ptr noundef %i.tm, ptr noundef nonnull readonly %i.rq, ptr noundef nonnull readonly %i.rr, i32 noundef %i.tg, i32 noundef %i.th)
  %i.to = or disjoint i32 %i.sq, 2                ; 2 uses
  %i.tp = load ptr, ptr %i.ro, align 8, !tbaa !106
  %i.tq = load ptr, ptr %i.rp, align 8, !tbaa !106
  %i.tr = or disjoint i32 %i.sn, 2
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.tr, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.so, i32 noundef %i.to, ptr noundef nonnull readonly %i.rm, ptr noundef %i.tp, ptr noundef nonnull readonly %i.rn, ptr noundef %i.tq, ptr noundef nonnull readonly %i.rq, ptr noundef nonnull readonly %i.rr, i32 noundef %i.tg, i32 noundef %i.th)
  %i.ts = load ptr, ptr %i.ro, align 8, !tbaa !106
  %i.tt = load ptr, ptr %i.rp, align 8, !tbaa !106
  %i.tu = or disjoint i32 %i.sn, 3
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.tu, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.tk, i32 noundef %i.to, ptr noundef nonnull readonly %i.rm, ptr noundef %i.ts, ptr noundef nonnull readonly %i.rn, ptr noundef %i.tt, ptr noundef nonnull readonly %i.rq, ptr noundef nonnull readonly %i.rr, i32 noundef %i.tg, i32 noundef %i.th)
  br label %.loopexit.i

bb.bo:                                            ; preds = %bb.bn
  %i.tv = load i64, ptr %i.bw, align 16, !tbaa !89
  %.tr.i = trunc i64 %i.tv to i32
  %i.tw = shl i32 %.tr.i, 2
  %i.tx = load ptr, ptr %i.ro, align 8, !tbaa !106
  %i.ty = load ptr, ptr %i.rp, align 8, !tbaa !106
  %i.tz = and i32 %i.sm, 4096                     ; 2 uses
  %i.ua = and i32 %i.sm, 16384                    ; 2 uses
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.sn, i32 noundef 0, i32 noundef 8, i32 noundef %i.tw, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.so, i32 noundef %i.sq, ptr noundef nonnull readonly %i.rm, ptr noundef %i.tx, ptr noundef nonnull readonly %i.rn, ptr noundef %i.ty, ptr noundef nonnull readonly %i.rq, ptr noundef nonnull readonly %i.rr, i32 noundef %i.tz, i32 noundef %i.ua)
  %i.ub = load i64, ptr %i.bw, align 16, !tbaa !89
  %.tr204.i = trunc i64 %i.ub to i32
  %i.uc = shl i32 %.tr204.i, 2
  %i.ud = or disjoint i32 %i.so, 2
  %i.ue = load ptr, ptr %i.ro, align 8, !tbaa !106
  %i.uf = load ptr, ptr %i.rp, align 8, !tbaa !106
  %i.ug = or disjoint i32 %i.sn, 1
  tail call fastcc void @mc_part_422_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.ug, i32 noundef 0, i32 noundef 8, i32 noundef %i.uc, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.ud, i32 noundef %i.sq, ptr noundef nonnull readonly %i.rm, ptr noundef %i.ue, ptr noundef nonnull readonly %i.rn, ptr noundef %i.uf, ptr noundef nonnull readonly %i.rq, ptr noundef nonnull readonly %i.rr, i32 noundef %i.tz, i32 noundef %i.ua)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bo, %.preheader.i, %bb.bm, %bb.bk
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %.loopexit210.i, label %bb.bj, !llvm.loop !170

.loopexit210.i:                                   ; preds = %.loopexit.i, %bb.bi, %bb.bg, %bb.be
  %i.uh = and i32 %i.of, 49152
  %.not207.i = icmp eq i32 %i.uh, 0
  br i1 %.not207.i, label %xchg_mb_border.exit, label %bb.bp

bb.bp:                                            ; preds = %.loopexit210.i
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 29108
  %i.uj = load i8, ptr %i.ui, align 4, !tbaa !86  ; 2 uses
  %i.uk = icmp sgt i8 %i.uj, -1
  br i1 %i.uk, label %bb.bq, label %xchg_mb_border.exit

bb.bq:                                            ; preds = %bb.bp
  %i.ul = zext nneg i8 %i.uj to i64
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 28944
  %i.un = load i16, ptr %i.um, align 16, !tbaa !91
  %i.uo = ashr i16 %i.un, 2
  %i.up = sext i16 %i.uo to i32
  %i.uq = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.ur = shl nsw i32 %i.uq, 4
  %i.us = add nsw i32 %i.ur, %i.up                ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 28946
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !91
  %i.uv = ashr i16 %i.uu, 2
  %i.uw = sext i16 %i.uv to i32
  %i.ux = load i32, ptr %i.e, align 4, !tbaa !78
  %i.uy = shl nsw i32 %i.ux, 4
  %i.uz = add nsw i32 %i.uy, %i.uw                ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 25344
  %i.vb = getelementptr inbounds nuw [56 x i8], ptr %i.va, i64 %i.ul ; 3 uses
  %i.vc = shl i32 %i.uq, 2
  %i.vd = and i32 %i.vc, 12
  %i.ve = add nsw i32 %i.uz, %i.vd
  %i.vf = load i64, ptr %i.bw, align 16, !tbaa !89
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = mul i32 %i.ve, %i.vg
  %i.vi = add i32 %i.us, 72
  %i.vj = add i32 %i.vi, %i.vh
  %i.vk = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.vl = load ptr, ptr %i.vb, align 8, !tbaa !81
  %i.vm = sext i32 %i.vj to i64
  %i.vn = getelementptr inbounds i8, ptr %i.vl, i64 %i.vm
  %i.vo = load i64, ptr %i.ab, align 16, !tbaa !82
  tail call void %i.vk(ptr noundef %i.vn, i64 noundef %i.vo, i32 noundef 4) #7, !inline_history !169
  %i.vp = add nsw i32 %i.us, 8
  %i.vq = ashr i32 %i.vp, 1
  %i.vr = add nsw i32 %i.vq, 64
  %i.vs = ashr i32 %i.uz, 1
  %i.vt = load i32, ptr %i.c, align 16, !tbaa !77
  %i.vu = and i32 %i.vt, 7
  %i.vv = add nsw i32 %i.vu, %i.vs
  %i.vw = load i64, ptr %i.am, align 8, !tbaa !150
  %i.vx = trunc i64 %i.vw to i32
  %i.vy = mul i32 %i.vv, %i.vx
  %i.vz = add i32 %i.vr, %i.vy
  %i.wa = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !81 ; 2 uses
  %i.wd = sext i32 %i.vz to i64
  %i.we = getelementptr inbounds i8, ptr %i.wc, i64 %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !81
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = ptrtoint ptr %i.wc to i64
  %i.wj = sub i64 %i.wh, %i.wi
  tail call void %i.wa(ptr noundef %i.we, i64 noundef %i.wj, i32 noundef 2) #7, !inline_history !169
  br label %xchg_mb_border.exit

bb.br:                                            ; preds = %bb.ay
  br i1 %.not.i138, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call fastcc void @await_references(ptr noundef nonnull readonly %0, ptr noundef nonnull %1)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.wk = and i32 %i.of, 12288
  %.not197.i140 = icmp eq i32 %i.wk, 0
  br i1 %.not197.i140, label %prefetch_motion.exit208.i141, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 29068
  %i.wm = load i8, ptr %i.wl, align 4, !tbaa !86  ; 2 uses
  %i.wn = icmp sgt i8 %i.wm, -1
  br i1 %i.wn, label %bb.bv, label %prefetch_motion.exit208.i141

bb.bv:                                            ; preds = %bb.bu
  %i.wo = zext nneg i8 %i.wm to i64
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 28784
  %i.wq = load i16, ptr %i.wp, align 16, !tbaa !91
  %i.wr = ashr i16 %i.wq, 2
  %i.ws = sext i16 %i.wr to i32
  %i.wt = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.wu = shl nsw i32 %i.wt, 4
  %i.wv = add nsw i32 %i.wu, %i.ws                ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 28786
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !91
  %i.wy = ashr i16 %i.wx, 2
  %i.wz = sext i16 %i.wy to i32
  %i.xa = load i32, ptr %i.e, align 4, !tbaa !78
  %i.xb = shl nsw i32 %i.xa, 4
  %i.xc = add nsw i32 %i.xb, %i.wz                ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 22656
  %i.xe = getelementptr inbounds nuw [56 x i8], ptr %i.xd, i64 %i.wo ; 3 uses
  %i.xf = shl i32 %i.wt, 2
  %i.xg = and i32 %i.xf, 12
  %i.xh = add nsw i32 %i.xc, %i.xg
  %i.xi = load i64, ptr %i.bw, align 16, !tbaa !89
  %i.xj = trunc i64 %i.xi to i32
  %i.xk = mul i32 %i.xh, %i.xj
  %i.xl = add i32 %i.wv, 72
  %i.xm = add i32 %i.xl, %i.xk
  %i.xn = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.xo = load ptr, ptr %i.xe, align 8, !tbaa !81
  %i.xp = sext i32 %i.xm to i64
  %i.xq = getelementptr inbounds i8, ptr %i.xo, i64 %i.xp
  %i.xr = load i64, ptr %i.ab, align 16, !tbaa !82
  tail call void %i.xn(ptr noundef %i.xq, i64 noundef %i.xr, i32 noundef 4) #7, !inline_history !171
  %i.xs = add nsw i32 %i.wv, 8
  %i.xt = ashr i32 %i.xs, 1
  %i.xu = add nsw i32 %i.xt, 64
  %i.xv = ashr i32 %i.xc, 1
  %i.xw = load i32, ptr %i.c, align 16, !tbaa !77
  %i.xx = and i32 %i.xw, 7
  %i.xy = add nsw i32 %i.xx, %i.xv
  %i.xz = load i64, ptr %i.am, align 8, !tbaa !150
  %i.ya = trunc i64 %i.xz to i32
  %i.yb = mul i32 %i.xy, %i.ya
  %i.yc = add i32 %i.xu, %i.yb
  %i.yd = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !81 ; 2 uses
  %i.yg = sext i32 %i.yc to i64
  %i.yh = getelementptr inbounds i8, ptr %i.yf, i64 %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !81
  %i.yk = ptrtoint ptr %i.yj to i64
  %i.yl = ptrtoint ptr %i.yf to i64
  %i.ym = sub i64 %i.yk, %i.yl
  tail call void %i.yd(ptr noundef %i.yh, i64 noundef %i.ym, i32 noundef 2) #7, !inline_history !171
  br label %prefetch_motion.exit208.i141

prefetch_motion.exit208.i141:                     ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.yn = and i32 %i.of, 8
  %.not198.i142 = icmp eq i32 %i.yn, 0
  br i1 %.not198.i142, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %prefetch_motion.exit208.i141
  %i.yo = load ptr, ptr %i.nw, align 8, !tbaa !106
  %i.yp = load ptr, ptr %i.ny, align 8, !tbaa !106
  %i.yq = and i32 %i.of, 4096
  %i.yr = and i32 %i.of, 16384
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.nv, ptr noundef %i.yo, ptr noundef nonnull readonly %i.nx, ptr noundef %i.yp, ptr noundef nonnull readonly %i.nz, ptr noundef nonnull readonly %i.oa, i32 noundef %i.yq, i32 noundef %i.yr)
  br label %.loopexit210.i143

bb.bx:                                            ; preds = %prefetch_motion.exit208.i141
  %i.ys = and i32 %i.of, 16
  %.not199.i145 = icmp eq i32 %i.ys, 0
  br i1 %.not199.i145, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.yu = load ptr, ptr %i.nw, align 8, !tbaa !106
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.yw = load ptr, ptr %i.ny, align 8, !tbaa !106
  %i.yx = and i32 %i.of, 4096
  %i.yy = and i32 %i.of, 16384
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.yt, ptr noundef %i.yu, ptr noundef nonnull readonly %i.yv, ptr noundef %i.yw, ptr noundef nonnull readonly %i.nz, ptr noundef nonnull readonly %i.oa, i32 noundef %i.yx, i32 noundef %i.yy)
  %i.yz = load ptr, ptr %i.nw, align 8, !tbaa !106
  %i.za = load ptr, ptr %i.ny, align 8, !tbaa !106
  %i.zb = and i32 %i.of, 8192
  %i.zc = and i32 %i.of, 32768
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 4, ptr noundef nonnull readonly %i.yt, ptr noundef %i.yz, ptr noundef nonnull readonly %i.yv, ptr noundef %i.za, ptr noundef nonnull readonly %i.nz, ptr noundef nonnull readonly %i.oa, i32 noundef %i.zb, i32 noundef %i.zc)
  br label %.loopexit210.i143

bb.bz:                                            ; preds = %bb.bx
  %i.zd = and i32 %i.of, 32
  %.not200.i146 = icmp eq i32 %i.zd, 0
  br i1 %.not200.i146, label %.preheader209.i149, label %bb.ca

.preheader209.i149:                               ; preds = %bb.bz
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 29336
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 8 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.zr = load i64, ptr %i.bw, align 16, !tbaa !89
  %.tr205.i147 = trunc i64 %i.zr to i32
  %i.zs = shl i32 %.tr205.i147, 3
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !106
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !106
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aab = and i32 %i.of, 4096
  %i.aac = and i32 %i.of, 16384
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef %i.zs, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 0, ptr noundef nonnull readonly %i.zt, ptr noundef %i.zv, ptr noundef nonnull readonly %i.zw, ptr noundef %i.zy, ptr noundef nonnull readonly %i.zz, ptr noundef nonnull readonly %i.aaa, i32 noundef %i.aab, i32 noundef %i.aac)
  %i.aad = load i64, ptr %i.bw, align 16, !tbaa !89
  %.tr206.i148 = trunc i64 %i.aad to i32
  %i.aae = shl i32 %.tr206.i148, 3
  %i.aaf = load ptr, ptr %i.zu, align 8, !tbaa !106
  %i.aag = load ptr, ptr %i.zx, align 8, !tbaa !106
  %i.aah = and i32 %i.of, 8192
  %i.aai = and i32 %i.of, 32768
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef 4, i32 noundef 0, i32 noundef 16, i32 noundef %i.aae, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ar, ptr noundef %i.av, i32 noundef 4, i32 noundef 0, ptr noundef nonnull readonly %i.zt, ptr noundef %i.aaf, ptr noundef nonnull readonly %i.zw, ptr noundef %i.aag, ptr noundef nonnull readonly %i.zz, ptr noundef nonnull readonly %i.aaa, i32 noundef %i.aah, i32 noundef %i.aai)
  br label %.loopexit210.i143

bb.cb:                                            ; preds = %.loopexit.i153, %.preheader209.i149
  %indvars.iv.i150 = phi i64 [ 0, %.preheader209.i149 ], [ %indvars.iv.next.i154, %.loopexit.i153 ] ; 3 uses
  %i.aaj = getelementptr inbounds nuw [2 x i8], ptr %i.ze, i64 %indvars.iv.i150
  %i.aak = load i16, ptr %i.aaj, align 2, !tbaa !91
  %i.aal = zext i16 %i.aak to i32                 ; 11 uses
  %indvars.iv.i150.tr = trunc i64 %indvars.iv.i150 to i32 ; 2 uses
  %i.aam = shl i32 %indvars.iv.i150.tr, 2         ; 10 uses
  %i.aan = and i32 %i.aam, 4                      ; 8 uses
  %i.aao = shl nuw nsw i32 %indvars.iv.i150.tr, 1 ; 2 uses
  %i.aap = and i32 %i.aao, 4                      ; 7 uses
  %i.aaq = and i32 %i.aal, 8
  %.not201.i152 = icmp eq i32 %i.aaq, 0
  br i1 %.not201.i152, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aar = load ptr, ptr %i.zg, align 8, !tbaa !106
  %i.aas = load ptr, ptr %i.zi, align 8, !tbaa !106
  %i.aat = and i32 %i.aal, 4096
  %i.aau = and i32 %i.aal, 16384
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.aam, i32 noundef 1, i32 noundef 8, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.aan, i32 noundef %i.aap, ptr noundef nonnull readonly %i.zf, ptr noundef %i.aar, ptr noundef nonnull readonly %i.zh, ptr noundef %i.aas, ptr noundef nonnull readonly %i.zj, ptr noundef nonnull readonly %i.zk, i32 noundef %i.aat, i32 noundef %i.aau)
  br label %.loopexit.i153

bb.cd:                                            ; preds = %bb.cb
  %i.aav = and i32 %i.aal, 16
  %.not202.i156 = icmp eq i32 %i.aav, 0
  br i1 %.not202.i156, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aaw = load ptr, ptr %i.zg, align 8, !tbaa !106
  %i.aax = load ptr, ptr %i.zi, align 8, !tbaa !106
  %i.aay = and i32 %i.aal, 4096                   ; 2 uses
  %i.aaz = and i32 %i.aal, 16384                  ; 2 uses
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.aam, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.aan, i32 noundef %i.aap, ptr noundef nonnull readonly %i.zl, ptr noundef %i.aaw, ptr noundef nonnull readonly %i.zm, ptr noundef %i.aax, ptr noundef nonnull readonly %i.zj, ptr noundef nonnull readonly %i.zk, i32 noundef %i.aay, i32 noundef %i.aaz)
  %i.aba = or i32 %i.aao, 2
  %i.abb = load ptr, ptr %i.zg, align 8, !tbaa !106
  %i.abc = load ptr, ptr %i.zi, align 8, !tbaa !106
  %i.abd = or disjoint i32 %i.aam, 2
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.abd, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.aan, i32 noundef %i.aba, ptr noundef nonnull readonly %i.zl, ptr noundef %i.abb, ptr noundef nonnull readonly %i.zm, ptr noundef %i.abc, ptr noundef nonnull readonly %i.zj, ptr noundef nonnull readonly %i.zk, i32 noundef %i.aay, i32 noundef %i.aaz)
  br label %.loopexit.i153

bb.cf:                                            ; preds = %bb.cd
  %i.abe = and i32 %i.aal, 32
  %.not203.i157 = icmp eq i32 %i.abe, 0
  br i1 %.not203.i157, label %.preheader.i160, label %bb.cg

.preheader.i160:                                  ; preds = %bb.cf
  %i.abf = and i32 %i.aal, 4096                   ; 4 uses
  %i.abg = and i32 %i.aal, 16384                  ; 4 uses
  %i.abh = load ptr, ptr %i.zn, align 8, !tbaa !106
  %i.abi = load ptr, ptr %i.zo, align 8, !tbaa !106
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.aam, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.aan, i32 noundef %i.aap, ptr noundef nonnull readonly %i.zl, ptr noundef %i.abh, ptr noundef nonnull readonly %i.zm, ptr noundef %i.abi, ptr noundef nonnull readonly %i.zp, ptr noundef nonnull readonly %i.zq, i32 noundef %i.abf, i32 noundef %i.abg)
  %i.abj = or disjoint i32 %i.aan, 2              ; 2 uses
  %i.abk = load ptr, ptr %i.zn, align 8, !tbaa !106
  %i.abl = load ptr, ptr %i.zo, align 8, !tbaa !106
  %i.abm = or disjoint i32 %i.aam, 1
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.abm, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.abj, i32 noundef %i.aap, ptr noundef nonnull readonly %i.zl, ptr noundef %i.abk, ptr noundef nonnull readonly %i.zm, ptr noundef %i.abl, ptr noundef nonnull readonly %i.zp, ptr noundef nonnull readonly %i.zq, i32 noundef %i.abf, i32 noundef %i.abg)
  %i.abn = or disjoint i32 %i.aap, 2              ; 2 uses
  %i.abo = load ptr, ptr %i.zn, align 8, !tbaa !106
  %i.abp = load ptr, ptr %i.zo, align 8, !tbaa !106
  %i.abq = or disjoint i32 %i.aam, 2
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.abq, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.aan, i32 noundef %i.abn, ptr noundef nonnull readonly %i.zl, ptr noundef %i.abo, ptr noundef nonnull readonly %i.zm, ptr noundef %i.abp, ptr noundef nonnull readonly %i.zp, ptr noundef nonnull readonly %i.zq, i32 noundef %i.abf, i32 noundef %i.abg)
  %i.abr = load ptr, ptr %i.zn, align 8, !tbaa !106
  %i.abs = load ptr, ptr %i.zo, align 8, !tbaa !106
  %i.abt = or disjoint i32 %i.aam, 3
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.abt, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.abj, i32 noundef %i.abn, ptr noundef nonnull readonly %i.zl, ptr noundef %i.abr, ptr noundef nonnull readonly %i.zm, ptr noundef %i.abs, ptr noundef nonnull readonly %i.zp, ptr noundef nonnull readonly %i.zq, i32 noundef %i.abf, i32 noundef %i.abg)
  br label %.loopexit.i153

bb.cg:                                            ; preds = %bb.cf
  %i.abu = load i64, ptr %i.bw, align 16, !tbaa !89
  %.tr.i158 = trunc i64 %i.abu to i32
  %i.abv = shl i32 %.tr.i158, 2
  %i.abw = load ptr, ptr %i.zn, align 8, !tbaa !106
  %i.abx = load ptr, ptr %i.zo, align 8, !tbaa !106
  %i.aby = and i32 %i.aal, 4096                   ; 2 uses
  %i.abz = and i32 %i.aal, 16384                  ; 2 uses
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.aam, i32 noundef 0, i32 noundef 8, i32 noundef %i.abv, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.aan, i32 noundef %i.aap, ptr noundef nonnull readonly %i.zl, ptr noundef %i.abw, ptr noundef nonnull readonly %i.zm, ptr noundef %i.abx, ptr noundef nonnull readonly %i.zp, ptr noundef nonnull readonly %i.zq, i32 noundef %i.aby, i32 noundef %i.abz)
  %i.aca = load i64, ptr %i.bw, align 16, !tbaa !89
  %.tr204.i159 = trunc i64 %i.aca to i32
  %i.acb = shl i32 %.tr204.i159, 2
  %i.acc = or disjoint i32 %i.aan, 2
  %i.acd = load ptr, ptr %i.zn, align 8, !tbaa !106
  %i.ace = load ptr, ptr %i.zo, align 8, !tbaa !106
  %i.acf = or disjoint i32 %i.aam, 1
  tail call fastcc void @mc_part_420_simple_8(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %i.acf, i32 noundef 0, i32 noundef 8, i32 noundef %i.acb, ptr noundef %i.ag, ptr noundef %i.ar, ptr noundef %i.av, i32 noundef %i.acc, i32 noundef %i.aap, ptr noundef nonnull readonly %i.zl, ptr noundef %i.acd, ptr noundef nonnull readonly %i.zm, ptr noundef %i.ace, ptr noundef nonnull readonly %i.zp, ptr noundef nonnull readonly %i.zq, i32 noundef %i.aby, i32 noundef %i.abz)
  br label %.loopexit.i153

.loopexit.i153:                                   ; preds = %bb.cg, %.preheader.i160, %bb.ce, %bb.cc
  %indvars.iv.next.i154 = add nuw nsw i64 %indvars.iv.i150, 1 ; 2 uses
  %exitcond.not.i155 = icmp eq i64 %indvars.iv.next.i154, 4
  br i1 %exitcond.not.i155, label %.loopexit210.i143, label %bb.cb, !llvm.loop !172

.loopexit210.i143:                                ; preds = %.loopexit.i153, %bb.ca, %bb.by, %bb.bw
  %i.acg = and i32 %i.of, 49152
  %.not207.i144 = icmp eq i32 %i.acg, 0
  br i1 %.not207.i144, label %xchg_mb_border.exit, label %bb.ch

bb.ch:                                            ; preds = %.loopexit210.i143
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 29108
  %i.aci = load i8, ptr %i.ach, align 4, !tbaa !86 ; 2 uses
  %i.acj = icmp sgt i8 %i.aci, -1
  br i1 %i.acj, label %bb.ci, label %xchg_mb_border.exit

bb.ci:                                            ; preds = %bb.ch
  %i.ack = zext nneg i8 %i.aci to i64
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 28944
  %i.acm = load i16, ptr %i.acl, align 16, !tbaa !91
  %i.acn = ashr i16 %i.acm, 2
  %i.aco = sext i16 %i.acn to i32
  %i.acp = load i32, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.acq = shl nsw i32 %i.acp, 4
  %i.acr = add nsw i32 %i.acq, %i.aco             ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 28946
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !91
  %i.acu = ashr i16 %i.act, 2
  %i.acv = sext i16 %i.acu to i32
  %i.acw = load i32, ptr %i.e, align 4, !tbaa !78
  %i.acx = shl nsw i32 %i.acw, 4
  %i.acy = add nsw i32 %i.acx, %i.acv             ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 25344
  %i.ada = getelementptr inbounds nuw [56 x i8], ptr %i.acz, i64 %i.ack ; 3 uses
  %i.adb = shl i32 %i.acp, 2
  %i.adc = and i32 %i.adb, 12
  %i.add = add nsw i32 %i.acy, %i.adc
  %i.ade = load i64, ptr %i.bw, align 16, !tbaa !89
  %i.adf = trunc i64 %i.ade to i32
  %i.adg = mul i32 %i.add, %i.adf
  %i.adh = add i32 %i.acr, 72
  %i.adi = add i32 %i.adh, %i.adg
  %i.adj = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.adk = load ptr, ptr %i.ada, align 8, !tbaa !81
  %i.adl = sext i32 %i.adi to i64
  %i.adm = getelementptr inbounds i8, ptr %i.adk, i64 %i.adl
  %i.adn = load i64, ptr %i.ab, align 16, !tbaa !82
  tail call void %i.adj(ptr noundef %i.adm, i64 noundef %i.adn, i32 noundef 4) #7, !inline_history !171
  %i.ado = add nsw i32 %i.acr, 8
  %i.adp = ashr i32 %i.ado, 1
  %i.adq = add nsw i32 %i.adp, 64
  %i.adr = ashr i32 %i.acy, 1
  %i.ads = load i32, ptr %i.c, align 16, !tbaa !77
  %i.adt = and i32 %i.ads, 7
  %i.adu = add nsw i32 %i.adt, %i.adr
  %i.adv = load i64, ptr %i.am, align 8, !tbaa !150
  %i.adw = trunc i64 %i.adv to i32
  %i.adx = mul i32 %i.adu, %i.adw
  %i.ady = add i32 %i.adq, %i.adx
  %i.adz = load ptr, ptr %i.aw, align 8, !tbaa !83
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !81 ; 2 uses
  %i.aec = sext i32 %i.ady to i64
  %i.aed = getelementptr inbounds i8, ptr %i.aeb, i64 %i.aec
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !81
  %i.aeg = ptrtoint ptr %i.aef to i64
  %i.aeh = ptrtoint ptr %i.aeb to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  tail call void %i.adz(ptr noundef %i.aed, i64 noundef %i.aei, i32 noundef 2) #7, !inline_history !171
  br label %xchg_mb_border.exit

xchg_mb_border.exit:                              ; preds = %hl_decode_mb_predict_luma.exit, %bb.ci, %bb.ch, %.loopexit210.i143, %bb.bq, %bb.bp, %.loopexit210.i, %bb.ax, %bb.aq
  %i.aej = and i32 %i.n, 1
  %.not.i137 = icmp eq i32 %i.aej, 0
  br i1 %.not.i137, label %bb.cj, label %hl_decode_mb_idct_luma.exit

bb.cj:                                            ; preds = %xchg_mb_border.exit
  %i.aek = and i32 %i.n, 2
  %.not83.i = icmp eq i32 %i.aek, 0
  br i1 %.not83.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !144
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 29344
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 28616
  call void %i.aem(ptr noundef %i.ag, ptr noundef nonnull %i.o, ptr noundef nonnull %i.aen, i32 noundef %i.bx, ptr noundef nonnull %i.aeo) #7, !inline_history !140
  br label %hl_decode_mb_idct_luma.exit

bb.cl:                                            ; preds = %bb.cj
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 21092
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !139
  %i.aer = and i32 %i.aeq, 15
  %.not84.i = icmp eq i32 %i.aer, 0
  br i1 %.not84.i, label %hl_decode_mb_idct_luma.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aes = and i32 %i.n, 16777216
  %.not86.i = icmp eq i32 %i.aes, 0
  %i.aet = getelementptr inbounds nuw i8, ptr %1, i64 29344 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %1, i64 28616 ; 2 uses
  br i1 %.not86.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !142
  call void %i.aew(ptr noundef %i.ag, ptr noundef nonnull %i.o, ptr noundef nonnull %i.aet, i32 noundef %i.bx, ptr noundef nonnull %i.aeu) #7, !inline_history !140
  br label %hl_decode_mb_idct_luma.exit

bb.co:                                            ; preds = %bb.cm
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !143
  call void %i.aey(ptr noundef %i.ag, ptr noundef nonnull %i.o, ptr noundef nonnull %i.aet, i32 noundef %i.bx, ptr noundef nonnull %i.aeu) #7, !inline_history !140
  br label %hl_decode_mb_idct_luma.exit

hl_decode_mb_idct_luma.exit:                      ; preds = %xchg_mb_border.exit, %bb.ck, %bb.cl, %bb.cn, %bb.co
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 21092
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !139
  %i.afb = and i32 %i.afa, 48
  %.not124 = icmp eq i32 %i.afb, 0
  br i1 %.not124, label %bb.cx, label %bb.cp

end_hunk_7
