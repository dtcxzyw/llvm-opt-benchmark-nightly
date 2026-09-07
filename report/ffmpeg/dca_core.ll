Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_core?download=true
inline.NumInlined: 210
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 45
begin_hunk_0_@ff_dca_core_parse:bb.a
bb.bb:                                            ; preds = %bb.ba
  %i.so = load i32, ptr %i.i, align 4, !tbaa !30
  %i.sp = icmp sgt i32 %.pre-phi, %i.so
  br i1 %i.sp, label %bb.bc, label %ff_dca_seek_bits.exit

ff_dca_seek_bits.exit:                            ; preds = %bb.bb
  %i.sq = load i32, ptr %i.k, align 8, !tbaa !31
  %i.sr = icmp slt i32 %i.sm, 0
  %i.ss = call i32 @llvm.smin.i32(i32 %.pre-phi, i32 %i.sq)
  %.0.i.i.v.i = select i1 %i.sr, i32 0, i32 %i.ss
  store i32 %.0.i.i.v.i, ptr %i.l, align 16, !tbaa !32
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sj, i32 noundef 16, ptr noundef nonnull @.str) #13
  %i.st = load ptr, ptr %0, align 16, !tbaa !36
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 528
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !73
  %i.sw = and i32 %i.sv, 8
  %.not32 = icmp eq i32 %i.sw, 0
  br i1 %.not32, label %bb.bd, label %alloc_sample_buffer.exit

bb.bd:                                            ; preds = %ff_dca_seek_bits.exit, %bb.bc
  br label %alloc_sample_buffer.exit

alloc_sample_buffer.exit:                         ; preds = %bb.ar, %bb.ay, %bb.an, %bb.ag, %bb.m, %parse_frame_header.exit.thread, %bb.bc, %bb.r, %bb.a, %bb.bd
  %.0 = phi i32 [ 0, %bb.bd ], [ -1094995529, %bb.a ], [ %.0.i.ph, %parse_frame_header.exit.thread ], [ -1094995529, %bb.bc ], [ %i.jo, %bb.r ], [ -12, %bb.m ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.an ], [ -1094995529, %bb.ay ], [ -1094995529, %bb.ar ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @parse_frame_data(ptr noundef %0, i32 noundef range(i32 0, 3) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 9 uses
  %i.b = alloca [32 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 36 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 110 uses
  %.val.i = load i32, ptr %i.d, align 8, !tbaa !32 ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 20         ; 5 uses
  %.val233.i = load i32, ptr %i.e, align 4, !tbaa !30 ; 2 uses
  %i.f = icmp slt i32 %.val233.i, %.val.i
  br i1 %i.f, label %parse_coding_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.j = lshr i32 %.val.i, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 1, !tbaa !45
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = and i32 %.val.i, 7
  %i.p = shl i32 %i.n, %i.o
  %i.q = lshr i32 %i.p, 28
  %i.r = add i32 %.val.i, 4
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.r) ; 4 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !32
  %i.t = add nuw nsw i32 %i.q, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.t, ptr %i.u, align 4, !tbaa !83
  %i.v = lshr i32 %i.s, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1, !tbaa !45
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = and i32 %i.s, 7
  %i.ab = shl i32 %i.z, %i.aa
  %i.ac = lshr i32 %i.ab, 29
  %i.ad = add i32 %i.s, 3
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.ad)
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !32
  %i.af = add nuw nsw i32 %i.ac, 1                ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !41 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr @ff_dca_channels, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !45
  %i.am = zext i8 %i.al to i32
  %.not225.i = icmp eq i32 %i.af, %i.am
  br i1 %.not225.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.an, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %i.af, i32 noundef %i.ai) #13
  br label %parse_coding_header.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds i8, ptr @audio_mode_ch_mask, i64 %i.aj
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !45
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !85
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load i32, ptr %i.as, align 8, !tbaa !71
  %.not226.i = icmp eq i32 %i.at, 0
  br i1 %.not226.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = or i32 %i.aq, 32
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !85
  br label %.loopexit.i

bb.g:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !41
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr @ff_dca_channels, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !45
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !85
  %i.bf = or i32 %i.be, 64
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !85
  br label %.loopexit.i

bb.h:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31 ; 32 uses
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !29  ; 24 uses
  %i.bj = lshr i32 %.val.i, 3
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !45
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = and i32 %.val.i, 7
  %i.bp = shl i32 %i.bn, %i.bo
  %i.bq = lshr i32 %i.bp, 25                      ; 2 uses
  %i.br = add i32 %.val.i, 7
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.br) ; 4 uses
  store i32 %i.bs, ptr %i.d, align 8, !tbaa !32
  %i.bt = add nuw nsw i32 %i.bq, 1                ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9632
  %i.bv = load i32, ptr %i.bu, align 16, !tbaa !86
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %ff_dca_check_crc.exit.thread245.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = load ptr, ptr %0, align 16, !tbaa !36   ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 32
  %.val234.i = load ptr, ptr %i.bx, align 8, !tbaa !68
  %i.by = getelementptr i8, ptr %i.bw, i64 528
  %.val235.i = load i32, ptr %i.by, align 8, !tbaa !73
  %i.bz = and i32 %.val235.i, 65537
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %ff_dca_check_crc.exit.thread245.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = shl nuw nsw i32 %i.bt, 3
  %i.cb = add nsw i32 %i.ca, %.val.i
  %i.cc = and i32 %.val.i, -2147483641
  %or.cond.i.i = icmp ne i32 %i.cc, 0
  %i.cd = icmp sgt i32 %i.cb, %.val233.i
  %or.cond250.i = select i1 %or.cond.i.i, i1 true, i1 %i.cd
  %i.ce = icmp eq i32 %i.bq, 0
  %or.cond251.i = select i1 %or.cond250.i, i1 true, i1 %i.ce
  br i1 %or.cond251.i, label %ff_dca_check_crc.exit.thread.i, label %ff_dca_check_crc.exit.i

ff_dca_check_crc.exit.i:                          ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %.val234.i, i64 77920
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !81
  %i.ch = zext nneg i32 %i.bt to i64
  %i.ci = tail call i32 @av_crc(ptr noundef %i.cg, i32 noundef 65535, ptr noundef nonnull %i.bl, i64 noundef %i.ch) #14
  %.not18.i.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not18.i.not.i, label %ff_dca_check_crc.exit.thread245.i, label %ff_dca_check_crc.exit.thread.i

ff_dca_check_crc.exit.thread.i:                   ; preds = %ff_dca_check_crc.exit.i, %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.bw, i32 noundef 16, ptr noundef nonnull @.str.12) #13
  br label %parse_coding_header.exit.thread

ff_dca_check_crc.exit.thread245.i:                ; preds = %ff_dca_check_crc.exit.i, %bb.i, %bb.h
  %i.cj = lshr i32 %i.bs, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !45
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = and i32 %i.bs, 7
  %i.cp = shl i32 %i.cn, %i.co                    ; 3 uses
  %i.cq = lshr i32 %i.cp, 29                      ; 2 uses
  %i.cr = add i32 %i.bs, 3
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.cr) ; 6 uses
  store i32 %i.cs, ptr %i.d, align 16, !tbaa !32
  %i.ct = add nuw nsw i32 %i.cq, 1                ; 5 uses
  %i.cu = icmp ugt i32 %i.cp, 1073741823
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ff_dca_check_crc.exit.thread245.i
  %i.cv = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.cv, ptr noundef nonnull @.str.13, i32 noundef %i.ct) #13
  br label %parse_coding_header.exit.thread

bb.l:                                             ; preds = %ff_dca_check_crc.exit.thread245.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !41
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr @ff_dca_channels, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !45
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %i.ct, %i.db            ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !84
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 9636 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !87 ; 21 uses
  %i.dg = add nsw i32 %i.df, -6                   ; 2 uses
  %.not.i236.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i236.i, label %get_bits_long.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = icmp slt i32 %i.df, 32
  %i.di = lshr i32 %i.cs, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !45
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = and i32 %i.cs, 7
  %i.do = shl i32 %i.dm, %i.dn                    ; 2 uses
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dp = sub nsw i32 38, %i.df
  %i.dq = lshr i32 %i.do, %i.dp
  %i.dr = add i32 %i.dg, %i.cs
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.dr) ; 2 uses
  store i32 %i.ds, ptr %i.d, align 16, !tbaa !32
  br label %get_bits_long.exit.i

bb.o:                                             ; preds = %bb.m
  %i.dt = lshr i32 %i.do, 16
  %i.du = add i32 %i.cs, 16
  %i.dv = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.du) ; 4 uses
  store i32 %i.dv, ptr %i.d, align 16, !tbaa !32
  %i.dw = add nsw i32 %i.df, -22                  ; 2 uses
  %i.dx = shl i32 %i.dt, %i.dw
  %i.dy = lshr i32 %i.dv, 3
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 1, !tbaa !45
  %i.ec = tail call i32 @llvm.bswap.i32(i32 %i.eb)
  %i.ed = and i32 %i.dv, 7
  %i.ee = shl i32 %i.ec, %i.ed
  %i.ef = sub nsw i32 54, %i.df
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = add i32 %i.dw, %i.dv
  %i.ei = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.eh) ; 2 uses
  store i32 %i.ei, ptr %i.d, align 16, !tbaa !32
  %i.ej = or i32 %i.eg, %i.dx
  br label %get_bits_long.exit.i

get_bits_long.exit.i:                             ; preds = %bb.o, %bb.n, %bb.l
  %i.ek = phi i32 [ %i.ds, %bb.n ], [ %i.ei, %bb.o ], [ %i.cs, %bb.l ] ; 4 uses
  %.0.i237.i = phi i32 [ %i.dq, %bb.n ], [ %i.ej, %bb.o ], [ 0, %bb.l ]
  %i.el = shl i32 %.0.i237.i, 6                   ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 9644
  store i32 %i.el, ptr %i.em, align 4, !tbaa !88
  %i.en = lshr exact i32 %i.el, 1
  %i.eo = and i32 %i.en, 1431655744
  %i.ep = sub i32 %i.el, %i.eo                    ; 2 uses
  %i.eq = and i32 %i.ep, 858993408
  %i.er = lshr exact i32 %i.ep, 2
  %i.es = and i32 %i.er, 858993456
  %i.et = add nuw nsw i32 %i.es, %i.eq            ; 2 uses
  %i.eu = lshr exact i32 %i.et, 4
  %i.ev = add nuw nsw i32 %i.eu, %i.et
  %i.ew = and i32 %i.ev, 252645123                ; 2 uses
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = add nuw nsw i32 %i.ex, %i.ew            ; 2 uses
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = add nuw nsw i32 %i.ez, %i.ey
  %i.fb = and i32 %i.fa, 63
  %.not219.i = icmp eq i32 %i.fb, %i.ct
  br i1 %.not219.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %get_bits_long.exit.i
  %i.fc = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fc, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %i.el) #13
  br label %parse_coding_header.exit.thread

bb.q:                                             ; preds = %get_bits_long.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 9640
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !89 ; 11 uses
  %i.ff = and i32 %i.fe, %i.el
  %.not220.i = icmp eq i32 %i.ff, 0
  br i1 %.not220.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fg = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fg, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %i.el, i32 noundef %i.fe) #13
  br label %parse_coding_header.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.fh = or i32 %i.fe, %i.el
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !85
  %i.fj = lshr i32 %i.ek, 3
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !45
  %i.fn = icmp slt i32 %i.ek, %i.bh
  %i.fo = zext i1 %i.fn to i32
  %spec.select.i.i = add i32 %i.ek, %i.fo         ; 5 uses
  %i.fp = zext i8 %i.fm to i32
  %i.fq = and i32 %i.ek, 7
  store i32 %spec.select.i.i, ptr %i.d, align 16, !tbaa !32
  %i.fr = lshr exact i32 128, %i.fq
  %i.fs = and i32 %i.fr, %i.fp
  %.not221.i = icmp eq i32 %i.fs, 0
  br i1 %.not221.i, label %bb.bc, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 9664
  %i.fu = lshr i32 %spec.select.i.i, 3
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !45
  %i.fy = icmp slt i32 %spec.select.i.i, %i.bh
  %i.fz = zext i1 %i.fy to i32
  %spec.select.i238.i = add i32 %spec.select.i.i, %i.fz ; 4 uses
  %i.ga = zext i8 %i.fx to i32
  %i.gb = and i32 %spec.select.i.i, 7
  %i.gc = shl nuw nsw i32 %i.ga, %i.gb
  %i.gd = lshr i32 %i.gc, 7
  store i32 %spec.select.i238.i, ptr %i.d, align 16, !tbaa !32
  %i.ge = and i32 %i.gd, 1
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 9648
  store i32 %i.ge, ptr %i.gf, align 16, !tbaa !90
  %i.gg = lshr i32 %spec.select.i238.i, 3
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 1, !tbaa !45
  %i.gk = tail call i32 @llvm.bswap.i32(i32 %i.gj)
  %i.gl = and i32 %spec.select.i238.i, 7
  %i.gm = shl i32 %i.gk, %i.gl
  %i.gn = add i32 %spec.select.i238.i, 6
  %i.go = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.gn) ; 5 uses
  store i32 %i.go, ptr %i.d, align 16, !tbaa !32
  %i.gp = lshr i32 %i.gm, 24
  %i.gq = and i32 %i.gp, 252
  %i.gr = add nsw i32 %i.gq, -44                  ; 3 uses
  %i.gs = icmp ugt i32 %i.gr, 200
  br i1 %i.gs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gt = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gt, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %i.gr) #13
  br label %parse_coding_header.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.gu = zext nneg i32 %i.gr to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_inv_dmixtable, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 16, !tbaa !34
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 9652
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !91
  %.not.i239.i = icmp eq i32 %i.df, 0
  %i.gy = icmp slt i32 %i.df, 26                  ; 8 uses
  %i.gz = add nsw i32 %i.df, -16                  ; 16 uses
  %i.ha = sub nsw i32 48, %i.df                   ; 8 uses
  %i.hb = sub nsw i32 32, %i.df                   ; 8 uses
  %i.hc = getelementptr i8, ptr %0, i64 9656      ; 3 uses
  br i1 %.not.i239.i, label %.preheader263.thread.i, label %.split.i

.preheader263.thread.i:                           ; preds = %bb.v
  %i.hd = lshr i32 %i.cp, 27
  %i.he = and i32 %i.hd, 4
  %narrow.i = add nuw nsw i32 %i.he, 4
  %i.hf = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hc, i8 0, i64 %i.hf, i1 false), !tbaa !34
  br label %.loopexit.i

.split.i:                                         ; preds = %bb.v
  %wide.trip.count.i = zext nneg i32 %i.ct to i64
  %i.hg = lshr i32 %i.go, 3
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 1, !tbaa !45
  %i.hk = tail call i32 @llvm.bswap.i32(i32 %i.hj)
  %i.hl = and i32 %i.go, 7
  %i.hm = shl i32 %i.hk, %i.hl                    ; 2 uses
  br i1 %i.gy, label %bb.w, label %bb.x

.preheader263.i:                                  ; preds = %bb.av, %bb.ac, %bb.y
  %i.hn = icmp sgt i32 %i.df, 0
  br i1 %i.hn, label %.preheader262.i, label %.loopexit.i

bb.w:                                             ; preds = %.split.i
  %i.ho = lshr i32 %i.hm, %i.hb
  %i.hp = add i32 %i.go, %i.df
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.hp)
  br label %get_bits_long.exit241.i

bb.x:                                             ; preds = %.split.i
  %i.hr = lshr i32 %i.hm, 16
  %i.hs = add i32 %i.go, 16
  %i.ht = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.hs) ; 4 uses
  store i32 %i.ht, ptr %i.d, align 16, !tbaa !32
  %i.hu = shl i32 %i.hr, %i.gz
  %i.hv = lshr i32 %i.ht, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !45
  %i.hz = tail call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = and i32 %i.ht, 7
  %i.ib = shl i32 %i.hz, %i.ia
  %i.ic = lshr i32 %i.ib, %i.ha
  %i.id = add i32 %i.ht, %i.gz
  %i.ie = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.id)
  %i.if = or i32 %i.ic, %i.hu
  br label %get_bits_long.exit241.i

get_bits_long.exit241.i:                          ; preds = %bb.x, %bb.w
  %.sink.i = phi i32 [ %i.hq, %bb.w ], [ %i.ie, %bb.x ] ; 5 uses
  %.0.i240.i = phi i32 [ %i.ho, %bb.w ], [ %i.if, %bb.x ] ; 4 uses
  store i32 %.sink.i, ptr %i.d, align 16, !tbaa !32
  %i.ig = and i32 %.0.i240.i, %i.fe
  %.not224.i = icmp eq i32 %i.ig, %.0.i240.i
  br i1 %.not224.i, label %bb.y, label %.split269.i

.split269.i:                                      ; preds = %get_bits_long.exit241.i.7, %get_bits_long.exit241.i.6, %get_bits_long.exit241.i.5, %get_bits_long.exit241.i.4, %get_bits_long.exit241.i.3, %get_bits_long.exit241.i.2, %get_bits_long.exit241.i.1, %get_bits_long.exit241.i
  %.0.i240.i.lcssa = phi i32 [ %.0.i240.i, %get_bits_long.exit241.i ], [ %.0.i240.i.1, %get_bits_long.exit241.i.1 ], [ %.0.i240.i.2, %get_bits_long.exit241.i.2 ], [ %.0.i240.i.3, %get_bits_long.exit241.i.3 ], [ %.0.i240.i.4, %get_bits_long.exit241.i.4 ], [ %.0.i240.i.5, %get_bits_long.exit241.i.5 ], [ %.0.i240.i.6, %get_bits_long.exit241.i.6 ], [ %.0.i240.i.7, %get_bits_long.exit241.i.7 ]
  %i.ih = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ih, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %.0.i240.i.lcssa) #13
  br label %parse_coding_header.exit.thread

bb.y:                                             ; preds = %get_bits_long.exit241.i
  store i32 %.0.i240.i, ptr %i.hc, align 8, !tbaa !34
  %exitcond.not.i = icmp eq i32 %i.cq, 0
  br i1 %exitcond.not.i, label %.preheader263.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ii = lshr i32 %.sink.i, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 1, !tbaa !45
  %i.im = tail call i32 @llvm.bswap.i32(i32 %i.il)
  %i.in = and i32 %.sink.i, 7
  %i.io = shl i32 %i.im, %i.in                    ; 2 uses
  br i1 %i.gy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ip = lshr i32 %i.io, 16
  %i.iq = add i32 %.sink.i, 16
  %i.ir = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.iq) ; 4 uses
  store i32 %i.ir, ptr %i.d, align 16, !tbaa !32
  %i.is = shl i32 %i.ip, %i.gz
  %i.it = lshr i32 %i.ir, 3
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 1, !tbaa !45
  %i.ix = tail call i32 @llvm.bswap.i32(i32 %i.iw)
  %i.iy = and i32 %i.ir, 7
  %i.iz = shl i32 %i.ix, %i.iy
  %i.ja = lshr i32 %i.iz, %i.ha
  %i.jb = add i32 %i.ir, %i.gz
  %i.jc = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.jb)
  %i.jd = or i32 %i.ja, %i.is
  br label %get_bits_long.exit241.i.1

bb.ab:                                            ; preds = %bb.z
  %i.je = lshr i32 %i.io, %i.hb
  %i.jf = add i32 %.sink.i, %i.df
  %i.jg = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.jf)
  br label %get_bits_long.exit241.i.1

get_bits_long.exit241.i.1:                        ; preds = %bb.ab, %bb.aa
  %.sink.i.1 = phi i32 [ %i.jg, %bb.ab ], [ %i.jc, %bb.aa ] ; 5 uses
  %.0.i240.i.1 = phi i32 [ %i.je, %bb.ab ], [ %i.jd, %bb.aa ] ; 4 uses
  store i32 %.sink.i.1, ptr %i.d, align 16, !tbaa !32
  %i.jh = and i32 %.0.i240.i.1, %i.fe
  %.not224.i.1 = icmp eq i32 %i.jh, %.0.i240.i.1
  br i1 %.not224.i.1, label %bb.ac, label %.split269.i

bb.ac:                                            ; preds = %get_bits_long.exit241.i.1
  %i.ji = getelementptr i8, ptr %0, i64 9660
  store i32 %.0.i240.i.1, ptr %i.ji, align 4, !tbaa !34
  %exitcond.not.i.1 = icmp eq i32 %i.ct, 2
  br i1 %exitcond.not.i.1, label %.preheader263.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jj = lshr i32 %.sink.i.1, 3
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 1, !tbaa !45
  %i.jn = tail call i32 @llvm.bswap.i32(i32 %i.jm)
  %i.jo = and i32 %.sink.i.1, 7
  %i.jp = shl i32 %i.jn, %i.jo                    ; 2 uses
  br i1 %i.gy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jq = lshr i32 %i.jp, 16
  %i.jr = add i32 %.sink.i.1, 16
  %i.js = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.jr) ; 4 uses
  store i32 %i.js, ptr %i.d, align 16, !tbaa !32
  %i.jt = shl i32 %i.jq, %i.gz
  %i.ju = lshr i32 %i.js, 3
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 1, !tbaa !45
  %i.jy = tail call i32 @llvm.bswap.i32(i32 %i.jx)
  %i.jz = and i32 %i.js, 7
  %i.ka = shl i32 %i.jy, %i.jz
  %i.kb = lshr i32 %i.ka, %i.ha
  %i.kc = add i32 %i.js, %i.gz
  %i.kd = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.kc)
  %i.ke = or i32 %i.kb, %i.jt
  br label %get_bits_long.exit241.i.2

bb.af:                                            ; preds = %bb.ad
  %i.kf = lshr i32 %i.jp, %i.hb
  %i.kg = add i32 %.sink.i.1, %i.df
  %i.kh = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.kg)
  br label %get_bits_long.exit241.i.2

get_bits_long.exit241.i.2:                        ; preds = %bb.af, %bb.ae
  %.sink.i.2 = phi i32 [ %i.kh, %bb.af ], [ %i.kd, %bb.ae ] ; 5 uses
  %.0.i240.i.2 = phi i32 [ %i.kf, %bb.af ], [ %i.ke, %bb.ae ] ; 4 uses
  store i32 %.sink.i.2, ptr %i.d, align 16, !tbaa !32
  %i.ki = and i32 %.0.i240.i.2, %i.fe
  %.not224.i.2 = icmp eq i32 %i.ki, %.0.i240.i.2
  br i1 %.not224.i.2, label %bb.ag, label %.split269.i

bb.ag:                                            ; preds = %get_bits_long.exit241.i.2
  %3 = getelementptr i8, ptr %0, i64 9664
  store i32 %.0.i240.i.2, ptr %3, align 16, !tbaa !34
  %i.kj = lshr i32 %.sink.i.2, 3
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 1, !tbaa !45
  %i.kn = tail call i32 @llvm.bswap.i32(i32 %i.km)
  %i.ko = and i32 %.sink.i.2, 7
  %i.kp = shl i32 %i.kn, %i.ko                    ; 2 uses
  br i1 %i.gy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kq = lshr i32 %i.kp, 16
  %i.kr = add i32 %.sink.i.2, 16
  %i.ks = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.kr) ; 4 uses
  store i32 %i.ks, ptr %i.d, align 16, !tbaa !32
  %i.kt = shl i32 %i.kq, %i.gz
  %i.ku = lshr i32 %i.ks, 3
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 1, !tbaa !45
  %i.ky = tail call i32 @llvm.bswap.i32(i32 %i.kx)
  %i.kz = and i32 %i.ks, 7
  %i.la = shl i32 %i.ky, %i.kz
  %i.lb = lshr i32 %i.la, %i.ha
  %i.lc = add i32 %i.ks, %i.gz
  %i.ld = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.lc)
  %i.le = or i32 %i.lb, %i.kt
  br label %get_bits_long.exit241.i.3

bb.ai:                                            ; preds = %bb.ag
  %i.lf = lshr i32 %i.kp, %i.hb
  %i.lg = add i32 %.sink.i.2, %i.df
  %i.lh = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.lg)
  br label %get_bits_long.exit241.i.3

get_bits_long.exit241.i.3:                        ; preds = %bb.ai, %bb.ah
  %.sink.i.3 = phi i32 [ %i.lh, %bb.ai ], [ %i.ld, %bb.ah ] ; 5 uses
  %.0.i240.i.3 = phi i32 [ %i.lf, %bb.ai ], [ %i.le, %bb.ah ] ; 4 uses
  store i32 %.sink.i.3, ptr %i.d, align 16, !tbaa !32
  %i.li = and i32 %.0.i240.i.3, %i.fe
  %.not224.i.3 = icmp eq i32 %i.li, %.0.i240.i.3
  br i1 %.not224.i.3, label %bb.aj, label %.split269.i

bb.aj:                                            ; preds = %get_bits_long.exit241.i.3
  %i.lj = getelementptr i8, ptr %0, i64 9668
  store i32 %.0.i240.i.3, ptr %i.lj, align 4, !tbaa !34
  %i.lk = lshr i32 %.sink.i.3, 3
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 1, !tbaa !45
  %i.lo = tail call i32 @llvm.bswap.i32(i32 %i.ln)
  %i.lp = and i32 %.sink.i.3, 7
  %i.lq = shl i32 %i.lo, %i.lp                    ; 2 uses
  br i1 %i.gy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lr = lshr i32 %i.lq, 16
  %i.ls = add i32 %.sink.i.3, 16
  %i.lt = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.ls) ; 4 uses
  store i32 %i.lt, ptr %i.d, align 16, !tbaa !32
  %i.lu = shl i32 %i.lr, %i.gz
  %i.lv = lshr i32 %i.lt, 3
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 1, !tbaa !45
  %i.lz = tail call i32 @llvm.bswap.i32(i32 %i.ly)
  %i.ma = and i32 %i.lt, 7
  %i.mb = shl i32 %i.lz, %i.ma
  %i.mc = lshr i32 %i.mb, %i.ha
  %i.md = add i32 %i.lt, %i.gz
  %i.me = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.md)
  %i.mf = or i32 %i.mc, %i.lu
  br label %get_bits_long.exit241.i.4

bb.al:                                            ; preds = %bb.aj
  %i.mg = lshr i32 %i.lq, %i.hb
  %i.mh = add i32 %.sink.i.3, %i.df
  %i.mi = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.mh)
  br label %get_bits_long.exit241.i.4

get_bits_long.exit241.i.4:                        ; preds = %bb.al, %bb.ak
  %.sink.i.4 = phi i32 [ %i.mi, %bb.al ], [ %i.me, %bb.ak ] ; 5 uses
  %.0.i240.i.4 = phi i32 [ %i.mg, %bb.al ], [ %i.mf, %bb.ak ] ; 4 uses
  store i32 %.sink.i.4, ptr %i.d, align 16, !tbaa !32
  %i.mj = and i32 %.0.i240.i.4, %i.fe
  %.not224.i.4 = icmp eq i32 %i.mj, %.0.i240.i.4
  br i1 %.not224.i.4, label %bb.am, label %.split269.i

bb.am:                                            ; preds = %get_bits_long.exit241.i.4
  %i.mk = getelementptr i8, ptr %0, i64 9672
  store i32 %.0.i240.i.4, ptr %i.mk, align 8, !tbaa !34
  %i.ml = lshr i32 %.sink.i.4, 3
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 1, !tbaa !45
  %i.mp = tail call i32 @llvm.bswap.i32(i32 %i.mo)
  %i.mq = and i32 %.sink.i.4, 7
  %i.mr = shl i32 %i.mp, %i.mq                    ; 2 uses
  br i1 %i.gy, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ms = lshr i32 %i.mr, 16
  %i.mt = add i32 %.sink.i.4, 16
  %i.mu = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.mt) ; 4 uses
  store i32 %i.mu, ptr %i.d, align 16, !tbaa !32
  %i.mv = shl i32 %i.ms, %i.gz
  %i.mw = lshr i32 %i.mu, 3
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 1, !tbaa !45
  %i.na = tail call i32 @llvm.bswap.i32(i32 %i.mz)
  %i.nb = and i32 %i.mu, 7
  %i.nc = shl i32 %i.na, %i.nb
  %i.nd = lshr i32 %i.nc, %i.ha
  %i.ne = add i32 %i.mu, %i.gz
  %i.nf = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.ne)
  %i.ng = or i32 %i.nd, %i.mv
  br label %get_bits_long.exit241.i.5

bb.ao:                                            ; preds = %bb.am
  %i.nh = lshr i32 %i.mr, %i.hb
  %i.ni = add i32 %.sink.i.4, %i.df
  %i.nj = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.ni)
  br label %get_bits_long.exit241.i.5

get_bits_long.exit241.i.5:                        ; preds = %bb.ao, %bb.an
  %.sink.i.5 = phi i32 [ %i.nj, %bb.ao ], [ %i.nf, %bb.an ] ; 5 uses
  %.0.i240.i.5 = phi i32 [ %i.nh, %bb.ao ], [ %i.ng, %bb.an ] ; 4 uses
  store i32 %.sink.i.5, ptr %i.d, align 16, !tbaa !32
  %i.nk = and i32 %.0.i240.i.5, %i.fe
  %.not224.i.5 = icmp eq i32 %i.nk, %.0.i240.i.5
  br i1 %.not224.i.5, label %bb.ap, label %.split269.i

bb.ap:                                            ; preds = %get_bits_long.exit241.i.5
  %i.nl = getelementptr i8, ptr %0, i64 9676
  store i32 %.0.i240.i.5, ptr %i.nl, align 4, !tbaa !34
  %i.nm = lshr i32 %.sink.i.5, 3
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 1, !tbaa !45
  %i.nq = tail call i32 @llvm.bswap.i32(i32 %i.np)
  %i.nr = and i32 %.sink.i.5, 7
  %i.ns = shl i32 %i.nq, %i.nr                    ; 2 uses
  br i1 %i.gy, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nt = lshr i32 %i.ns, 16
  %i.nu = add i32 %.sink.i.5, 16
  %i.nv = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.nu) ; 4 uses
  store i32 %i.nv, ptr %i.d, align 16, !tbaa !32
  %i.nw = shl i32 %i.nt, %i.gz
  %i.nx = lshr i32 %i.nv, 3
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 1, !tbaa !45
  %i.ob = tail call i32 @llvm.bswap.i32(i32 %i.oa)
  %i.oc = and i32 %i.nv, 7
  %i.od = shl i32 %i.ob, %i.oc
  %i.oe = lshr i32 %i.od, %i.ha
  %i.of = add i32 %i.nv, %i.gz
  %i.og = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.of)
  %i.oh = or i32 %i.oe, %i.nw
  br label %get_bits_long.exit241.i.6

bb.ar:                                            ; preds = %bb.ap
  %i.oi = lshr i32 %i.ns, %i.hb
  %i.oj = add i32 %.sink.i.5, %i.df
  %i.ok = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.oj)
  br label %get_bits_long.exit241.i.6

get_bits_long.exit241.i.6:                        ; preds = %bb.ar, %bb.aq
  %.sink.i.6 = phi i32 [ %i.ok, %bb.ar ], [ %i.og, %bb.aq ] ; 5 uses
  %.0.i240.i.6 = phi i32 [ %i.oi, %bb.ar ], [ %i.oh, %bb.aq ] ; 4 uses
  store i32 %.sink.i.6, ptr %i.d, align 16, !tbaa !32
  %i.ol = and i32 %.0.i240.i.6, %i.fe
  %.not224.i.6 = icmp eq i32 %i.ol, %.0.i240.i.6
  br i1 %.not224.i.6, label %bb.as, label %.split269.i

bb.as:                                            ; preds = %get_bits_long.exit241.i.6
  %i.om = getelementptr i8, ptr %0, i64 9680
  store i32 %.0.i240.i.6, ptr %i.om, align 16, !tbaa !34
  %i.on = lshr i32 %.sink.i.6, 3
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 1, !tbaa !45
  %i.or = tail call i32 @llvm.bswap.i32(i32 %i.oq)
  %i.os = and i32 %.sink.i.6, 7
  %i.ot = shl i32 %i.or, %i.os                    ; 2 uses
  br i1 %i.gy, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ou = lshr i32 %i.ot, 16
  %i.ov = add i32 %.sink.i.6, 16
  %i.ow = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.ov) ; 4 uses
  store i32 %i.ow, ptr %i.d, align 16, !tbaa !32
  %i.ox = shl i32 %i.ou, %i.gz
  %i.oy = lshr i32 %i.ow, 3
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 1, !tbaa !45
  %i.pc = tail call i32 @llvm.bswap.i32(i32 %i.pb)
end_hunk_0
