Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hqx?download=true
inline.NumInlined: 40
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@hqx_decode_444a:bb.a

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bw = shl nuw nsw i32 1, %i.bu
  %i.bx = and i32 %i.bw, %i.br
  %.not86 = icmp eq i32 %i.bx, 0
  br i1 %.not86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !44
  %i.bz = load i32, ptr %i.bt, align 4, !tbaa !45
  %i.ca = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %indvars.iv
  call fastcc void @decode_block(ptr noundef nonnull %i.d, ptr noundef %i.by, ptr noundef nonnull %i.bp, i32 noundef %i.bz, ptr noundef nonnull %i.ca, ptr noundef %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !76

.loopexit:                                        ; preds = %bb.i, %bb.a
  %.179 = phi i32 [ 0, %bb.a ], [ %.078, %bb.i ]  ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.not.not.i = icmp eq i32 %.179, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 33296 ; 8 uses
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !38 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 76
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !42 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.ci = shl i32 %2, 1                           ; 2 uses
  %i.cj = sext i32 %i.ci to i64                   ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 %i.cj ; 2 uses
  %i.cl = load ptr, ptr %0, align 16, !tbaa !58
  %i.cm = mul nsw i32 %i.cf, %3
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  %i.cp = shl i32 %i.cf, %.179
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  tail call void %i.cl(ptr noundef %i.co, i64 noundef %i.cq, ptr noundef nonnull %i.e, ptr noundef nonnull @hqx_quant_luma) #7, !inline_history !0
  %i.cr = load ptr, ptr %0, align 16, !tbaa !58
  %spec.select = select i1 %.not.not.i, i32 8, i32 1
  %i.cs = add nsw i32 %spec.select, %3            ; 8 uses
  %i.ct = mul nsw i32 %i.cs, %i.cf
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.ck, i64 %i.cu
  tail call void %i.cr(ptr noundef %i.cv, i64 noundef %i.cq, ptr noundef nonnull %i.cb, ptr noundef nonnull @hqx_quant_luma) #7, !inline_history !0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.cy = load ptr, ptr %i.cc, align 16, !tbaa !38 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 76
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !42 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !57
  %i.dd = add i32 %i.ci, 16
  %i.de = sext i32 %i.dd to i64                   ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %0, align 16, !tbaa !58
  %i.dh = mul nsw i32 %i.da, %3
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 %i.di
  %i.dk = shl i32 %i.da, %.179
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  tail call void %i.dg(ptr noundef %i.dj, i64 noundef %i.dl, ptr noundef nonnull %i.cw, ptr noundef nonnull @hqx_quant_luma) #7, !inline_history !0
  %i.dm = load ptr, ptr %0, align 16, !tbaa !58
  %i.dn = mul nsw i32 %i.da, %i.cs
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.df, i64 %i.do
  tail call void %i.dm(ptr noundef %i.dp, i64 noundef %i.dl, ptr noundef nonnull %i.cx, ptr noundef nonnull @hqx_quant_luma) #7, !inline_history !0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  %i.ds = load ptr, ptr %i.cc, align 16, !tbaa !38 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !42 ; 3 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !57
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.cj ; 2 uses
  %i.dx = load ptr, ptr %0, align 16, !tbaa !58
  %i.dy = mul nsw i32 %i.du, %3
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dw, i64 %i.dz
  %i.eb = shl i32 %i.du, %.179
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  tail call void %i.dx(ptr noundef %i.ea, i64 noundef %i.ec, ptr noundef nonnull %i.dq, ptr noundef nonnull @hqx_quant_luma) #7, !inline_history !0
  %i.ed = load ptr, ptr %0, align 16, !tbaa !58
  %i.ee = mul nsw i32 %i.du, %i.cs
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.dw, i64 %i.ef
  tail call void %i.ed(ptr noundef %i.eg, i64 noundef %i.ec, ptr noundef nonnull %i.dr, ptr noundef nonnull @hqx_quant_luma) #7, !inline_history !0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 928
  %i.ej = load ptr, ptr %i.cc, align 16, !tbaa !38 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !42 ; 3 uses
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !57
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.de ; 2 uses
  %i.eo = load ptr, ptr %0, align 16, !tbaa !58
  %i.ep = mul nsw i32 %i.el, %3
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  %i.es = shl i32 %i.el, %.179
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  tail call void %i.eo(ptr noundef %i.er, i64 noundef %i.et, ptr noundef nonnull %i.eh, ptr noundef nonnull @hqx_quant_luma) #7, !inline_history !0
  %i.eu = load ptr, ptr %0, align 16, !tbaa !58
  %i.ev = mul nsw i32 %i.el, %i.cs
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %i.en, i64 %i.ew
  tail call void %i.eu(ptr noundef %i.ex, i64 noundef %i.et, ptr noundef nonnull %i.ei, ptr noundef nonnull @hqx_quant_luma) #7, !inline_history !0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 1056
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 1312
  %i.fa = load ptr, ptr %i.cc, align 16, !tbaa !38 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !42 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !57
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.cj ; 2 uses
  %i.fg = load ptr, ptr %0, align 16, !tbaa !58
  %i.fh = mul nsw i32 %i.fc, %3
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %i.fi
  %i.fk = shl i32 %i.fc, %.179
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  tail call void %i.fg(ptr noundef %i.fj, i64 noundef %i.fl, ptr noundef nonnull %i.ey, ptr noundef nonnull @hqx_quant_chroma) #7, !inline_history !0
  %i.fm = load ptr, ptr %0, align 16, !tbaa !58
  %i.fn = mul nsw i32 %i.fc, %i.cs
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.ff, i64 %i.fo
  tail call void %i.fm(ptr noundef %i.fp, i64 noundef %i.fl, ptr noundef nonnull %i.ez, ptr noundef nonnull @hqx_quant_chroma) #7, !inline_history !0
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 1184
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 1440
  %i.fs = load ptr, ptr %i.cc, align 16, !tbaa !38 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !42 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !57
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.de ; 2 uses
  %i.fy = load ptr, ptr %0, align 16, !tbaa !58
  %i.fz = mul nsw i32 %i.fu, %3
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %i.fx, i64 %i.ga
  %i.gc = shl i32 %i.fu, %.179
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  tail call void %i.fy(ptr noundef %i.gb, i64 noundef %i.gd, ptr noundef nonnull %i.fq, ptr noundef nonnull @hqx_quant_chroma) #7, !inline_history !0
  %i.ge = load ptr, ptr %0, align 16, !tbaa !58
  %i.gf = mul nsw i32 %i.fu, %i.cs
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.fx, i64 %i.gg
  tail call void %i.ge(ptr noundef %i.gh, i64 noundef %i.gd, ptr noundef nonnull %i.fr, ptr noundef nonnull @hqx_quant_chroma) #7, !inline_history !0
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 1824
  %i.gk = load ptr, ptr %i.cc, align 16, !tbaa !38 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 68
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !42 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !57
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 %i.cj ; 2 uses
  %i.gq = load ptr, ptr %0, align 16, !tbaa !58
  %i.gr = mul nsw i32 %i.gm, %3
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %i.gp, i64 %i.gs
  %i.gu = shl i32 %i.gm, %.179
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  tail call void %i.gq(ptr noundef %i.gt, i64 noundef %i.gv, ptr noundef nonnull %i.gi, ptr noundef nonnull @hqx_quant_chroma) #7, !inline_history !0
  %i.gw = load ptr, ptr %0, align 16, !tbaa !58
  %i.gx = mul nsw i32 %i.gm, %i.cs
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds i8, ptr %i.gp, i64 %i.gy
  tail call void %i.gw(ptr noundef %i.gz, i64 noundef %i.gv, ptr noundef nonnull %i.gj, ptr noundef nonnull @hqx_quant_chroma) #7, !inline_history !0
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 1696
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 1952
  %i.hc = load ptr, ptr %i.cc, align 16, !tbaa !38 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 68
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !42 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !57
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.de ; 2 uses
  %i.hi = load ptr, ptr %0, align 16, !tbaa !58
  %i.hj = mul nsw i32 %i.he, %3
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr %i.hh, i64 %i.hk
  %i.hm = shl i32 %i.he, %.179
  %i.hn = sext i32 %i.hm to i64                   ; 2 uses
  tail call void %i.hi(ptr noundef %i.hl, i64 noundef %i.hn, ptr noundef nonnull %i.ha, ptr noundef nonnull @hqx_quant_chroma) #7, !inline_history !0
  %i.ho = load ptr, ptr %0, align 16, !tbaa !58
  %i.hp = mul nsw i32 %i.he, %i.cs
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %i.hh, i64 %i.hq
  tail call void %i.ho(ptr noundef %i.hr, i64 noundef %i.hn, ptr noundef nonnull %i.hb, ptr noundef nonnull @hqx_quant_chroma) #7, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @decode_slice_thread(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 33348
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42   ; 4 uses
  %i.g = icmp ult i32 %i.f, 59
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !42   ; 3 uses
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 33344
  %i.k = load i32, ptr %i.j, align 16, !tbaa !36
  %i.l = icmp ugt i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 33344
  %i.n = load i32, ptr %i.m, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %i.n) #7
  br label %decode_slice.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds [2080 x i8], ptr %i.o, i64 %i.d ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 33336
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.s = zext i32 %i.f to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = sub nuw i32 %i.i, %i.f                   ; 2 uses
  %or.cond.i = icmp ugt i32 %i.u, 268435455
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = select i1 %or.cond.i, i32 -8, i32 %i.v   ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.w, 2147483134    ; 3 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr null, ptr %i.t
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.w ; 2 uses
  store ptr %.014.i.i, ptr %i.p, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %.013.i.i, ptr %i.x, align 4, !tbaa !80
  %i.y = add nuw nsw i32 %.013.i.i, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.y, ptr %i.z, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !54
  br i1 %or.cond.i.i, label %decode_slice.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 33320
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.ad = add nsw i32 %i.ac, 15
  %i.ae = ashr i32 %i.ad, 4                       ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 33324
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41
  %i.ah = add nsw i32 %i.ag, 15
  %i.ai = ashr i32 %i.ah, 4                       ; 4 uses
  %i.aj = add nsw i32 %i.ae, 4
  %i.ak = sdiv i32 %i.aj, 5                       ; 9 uses
  %i.al = add nsw i32 %i.ai, 4
  %i.am = sdiv i32 %i.al, 5                       ; 8 uses
  %i.an = sdiv i32 %i.ae, %i.ak
  %i.ao = mul nsw i32 %i.ak, %i.an                ; 2 uses
  %i.ap = sdiv i32 %i.ai, %i.am
  %i.aq = mul nsw i32 %i.am, %i.ap                ; 2 uses
  %.recomposed = srem i32 %i.ae, %i.ak            ; 2 uses
  %.recomposed34 = srem i32 %i.ai, %i.am          ; 2 uses
  %i.ar = mul nsw i32 %i.ai, %i.ae                ; 4 uses
  %i.as = add nsw i32 %i.ar, 479
  %i.at = sdiv i32 %i.as, 480                     ; 6 uses
  %i.au = shl nsw i32 %i.at, 4                    ; 4 uses
  %i.av = sdiv i32 %i.ar, %i.au                   ; 4 uses
  %i.aw = icmp sgt i32 %i.ar, 0
  br i1 %i.aw, label %.lr.ph110.i, label %decode_slice.exit

.lr.ph110.i:                                      ; preds = %bb.f
  %i.ax = mul nsw i32 %i.at, %2
  %factor.op.mul.i = shl nuw nsw i32 %i.av, 4
  %.reass.i = mul i32 %factor.op.mul.i, %i.at
  %i.ay = sub nsw i32 %i.ar, %.reass.i
  %i.az = mul nsw i32 %i.am, %i.ae                ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 33304 ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 1)
  %i.bb = mul nuw nsw i32 %i.au, %i.av
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %.lr.ph110.i
  %.0108.i = phi i32 [ 0, %.lr.ph110.i ], [ %i.bx, %._crit_edge.i ] ; 3 uses
  %.095107.i = phi i32 [ %i.ax, %.lr.ph110.i ], [ %i.by, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp slt i32 %.095107.i, %i.ay
  %.fr.i = freeze i1 %i.bc                        ; 2 uses
  %i.bd = zext i1 %.fr.i to i32
  %spec.select.i = add nuw nsw i32 %i.av, %i.bd   ; 3 uses
  %i.be = icmp sgt i32 %spec.select.i, 0
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g
  br i1 %.fr.i, label %.lr.ph.preheader.i, label %.lr.ph.i.a

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i
  %i.bf = add nsw i32 %.095107.i, %i.bb
  br label %.lr.ph.split.i

.lr.ph.i.a:                                       ; preds = %.lr.ph.i, %.lr.ph.i.a
  %.090106.i.a = phi i32 [ %20, %.lr.ph.i.a ], [ 0, %.lr.ph.i ] ; 3 uses
  %4 = mul nuw nsw i32 %.090106.i.a, %i.au
  %5 = add nuw nsw i32 %4, %.0108.i
  %6 = add nsw i32 %.090106.i.a, %2
  %7 = and i32 %6, 15
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @shuffle_16, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !42
  %11 = mul nsw i32 %10, %i.at
  %12 = add nsw i32 %5, %11                       ; 2 uses
  %13 = sdiv i32 %12, %i.az
  %14 = mul nsw i32 %13, %i.am                    ; 2 uses
  %15 = srem i32 %12, %i.az                       ; 2 uses
  %.not.us.i = icmp slt i32 %14, %i.aq
  %..us.i = select i1 %.not.us.i, i32 %i.am, i32 %.recomposed34
  %.pn97.us.i = mul nsw i32 %..us.i, %i.ak        ; 2 uses
  %.091.us.i = srem i32 %15, %.pn97.us.i          ; 2 uses
  %.pn.us.i = sdiv i32 %15, %.pn97.us.i
  %.093.us.i = mul nsw i32 %.pn.us.i, %i.ak       ; 2 uses
  %.not100.us.i = icmp slt i32 %.093.us.i, %i.ao
  %.pn102.us.i = select i1 %.not100.us.i, i32 %i.ak, i32 %.recomposed ; 2 uses
  %.pn103.us.i = sdiv i32 %.091.us.i, %.pn102.us.i
  %.092.us.i = add nsw i32 %.pn103.us.i, %14
  %.pn101.us.i = srem i32 %.091.us.i, %.pn102.us.i
  %.1.us.i = add nsw i32 %.pn101.us.i, %.093.us.i
  %16 = load ptr, ptr %i.ba, align 8, !tbaa !46
  %17 = shl nsw i32 %.1.us.i, 4
  %18 = shl nsw i32 %.092.us.i, 4
  %19 = tail call i32 %16(ptr noundef %i.b, i32 noundef %2, i32 noundef %17, i32 noundef %18) #7, !inline_history !77 ; 0 uses
  %20 = add nuw nsw i32 %.090106.i.a, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %20, %spec.select.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i.a, !llvm.loop !78

.lr.ph.split.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i
  %.090106.i = phi i32 [ %i.bw, %bb.i ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %21 = icmp eq i32 %i.av, %.090106.i
  br i1 %21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.bg = mul nuw nsw i32 %.090106.i, %i.au
  %i.bh = add nuw nsw i32 %i.bg, %.0108.i
  %i.bi = add nsw i32 %.090106.i, %2
  %i.bj = and i32 %i.bi, 15
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @shuffle_16, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42
  %i.bn = mul nsw i32 %i.bm, %i.at
  %i.bo = add nsw i32 %i.bh, %i.bn
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.i
  %.094.i = phi i32 [ %i.bo, %bb.h ], [ %i.bf, %.lr.ph.split.i ] ; 2 uses
  %i.bp = sdiv i32 %.094.i, %i.az
  %i.bq = mul nsw i32 %i.bp, %i.am                ; 2 uses
  %i.br = srem i32 %.094.i, %i.az                 ; 2 uses
  %.not.i = icmp slt i32 %i.bq, %i.aq
  %..i = select i1 %.not.i, i32 %i.am, i32 %.recomposed34
  %.pn97.i = mul nsw i32 %..i, %i.ak              ; 2 uses
  %.091.i = srem i32 %i.br, %.pn97.i              ; 2 uses
  %.pn.i = sdiv i32 %i.br, %.pn97.i
  %.093.i = mul nsw i32 %.pn.i, %i.ak             ; 2 uses
  %.not100.i = icmp slt i32 %.093.i, %i.ao
  %.pn102.i = select i1 %.not100.i, i32 %i.ak, i32 %.recomposed ; 2 uses
  %.pn103.i = sdiv i32 %.091.i, %.pn102.i
  %.092.i = add nsw i32 %.pn103.i, %i.bq
  %.pn101.i = srem i32 %.091.i, %.pn102.i
  %.1.i = add nsw i32 %.pn101.i, %.093.i
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !46
  %i.bt = shl nsw i32 %.1.i, 4
  %i.bu = shl nsw i32 %.092.i, 4
  %i.bv = tail call i32 %i.bs(ptr noundef %i.b, i32 noundef %2, i32 noundef %i.bt, i32 noundef %i.bu) #7, !inline_history !77 ; 0 uses
  %i.bw = add nuw nsw i32 %.090106.i, 1           ; 2 uses
  %exitcond.not.i.a = icmp eq i32 %i.bw, %spec.select.i
  br i1 %exitcond.not.i.a, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !78

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.i, %bb.g
  %i.bx = add nuw nsw i32 %.0108.i, 1             ; 2 uses
  %i.by = add nsw i32 %.095107.i, 1
  %exitcond112.not.i = icmp eq i32 %i.bx, %smax.i
  br i1 %exitcond112.not.i, label %decode_slice.exit, label %bb.g, !llvm.loop !79

decode_slice.exit:                                ; preds = %._crit_edge.i, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ -1094995529, %bb.d ], [ -1094995529, %bb.e ], [ 0, %bb.f ], [ 0, %._crit_edge.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !56     ; 4 uses
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !30
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = and i32 %i.b, 7
  %i.l = shl i32 %i.j, %i.k
  %i.m = lshr i32 %i.l, 23
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !30
  %i.q = sext i16 %i.p to i32                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !30   ; 2 uses
  %i.t = sext i16 %i.s to i32                     ; 2 uses
  %i.u = icmp slt i16 %i.s, 0
  br i1 %i.u, label %bb.b, label %get_vlc2.exit

bb.b:                                             ; preds = %bb.a
  %i.v = add i32 %i.b, 9
  %i.w = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.v) ; 3 uses
  %i.x = lshr i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !30
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = and i32 %i.w, 7
  %i.ad = shl i32 %i.ab, %i.ac
  %i.ae = add nsw i32 %i.t, 32
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = add i32 %i.af, %i.q
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30
  %i.al = sext i16 %i.ak to i32
  %i.am = load i16, ptr %i.ai, align 2, !tbaa !30
  %i.an = sext i16 %i.am to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.a, %bb.b
  %.167.i = phi i32 [ %i.an, %bb.b ], [ %i.q, %bb.a ]
  %.165.i = phi i32 [ %i.w, %bb.b ], [ %i.b, %bb.a ]
  %.1.i = phi i32 [ %i.al, %bb.b ], [ %i.t, %bb.a ]
  %i.ao = add i32 %.1.i, %.165.i
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ao)
  store i32 %i.ap, ptr %i.a, align 8, !tbaa !54
  %i.aq = load i32, ptr %5, align 4, !tbaa !42
  %i.ar = add nsw i32 %i.aq, %.167.i              ; 2 uses
  store i32 %i.ar, ptr %5, align 4, !tbaa !42
  %i.as = sub nsw i32 12, %3
  %i.at = shl i32 %i.ar, %i.as
  %i.au = shl i32 %i.at, 20
  %i.av = ashr exact i32 %i.au, 20
  %i.aw = trunc nsw i32 %i.av to i16
  store i16 %i.aw, ptr %4, align 2, !tbaa !50
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %i.ay = load i32, ptr %i.c, align 8, !tbaa !55  ; 3 uses
  %i.az = lshr i32 %i.ax, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !30
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = and i32 %i.ax, 7
  %i.bf = shl i32 %i.bd, %i.be
  %i.bg = lshr i32 %i.bf, 30
  %i.bh = add i32 %i.ax, 2
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.bh) ; 2 uses
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !54
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !42 ; 2 uses
  %i.bm = lshr i32 %i.bl, 29
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr @hqx_ac, i64 %i.bn ; 2 uses
  %.val = load i32, ptr %i.bo, align 16, !tbaa !48 ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val18 = load ptr, ptr %i.bp, align 8, !tbaa !51 ; 3 uses
  %i.bq = sub nsw i32 32, %.val
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %get_vlc2.exit
  %i.br = phi i32 [ %i.bi, %get_vlc2.exit ], [ %i.cz, %bb.e ] ; 4 uses
  %.0 = phi i32 [ 0, %get_vlc2.exit ], [ %i.da, %bb.e ]
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !30
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %i.br, 7
  %i.by = shl i32 %i.bw, %i.bx                    ; 2 uses
  %i.bz = lshr i32 %i.by, %i.bq
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val18, i64 %i.ca ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !30
  %i.cd = sext i16 %i.cc to i32                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !30  ; 2 uses
  %i.cg = sext i8 %i.cf to i32                    ; 2 uses
  %i.ch = icmp slt i8 %i.cf, 0
  br i1 %i.ch, label %bb.d, label %hqx_get_ac.exit

bb.d:                                             ; preds = %bb.c
  %i.ci = shl i32 %i.by, %.val
  %i.cj = add i32 %i.br, %.val
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.cj)
  %i.ck = add nsw i32 %i.cg, 32
  %i.cl = lshr i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %i.cd
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val18, i64 %i.cn ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !30
  %i.cq = zext i16 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !30
  %i.ct = sext i8 %i.cs to i32
  br label %hqx_get_ac.exit

hqx_get_ac.exit:                                  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.cn, %bb.d ], [ %i.ca, %bb.c ]
  %.046.i = phi i32 [ %..i, %bb.d ], [ %i.br, %bb.c ]
  %.043.i = phi i32 [ %i.ct, %bb.d ], [ %i.cg, %bb.c ]
  %.0.i = phi i32 [ %i.cq, %bb.d ], [ %i.cd, %bb.c ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val18, i64 %.pre-phi.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add i32 %.043.i, %.046.i
  %i.cz = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.cy) ; 2 uses
  store i32 %i.cz, ptr %i.a, align 8, !tbaa !54
  %i.da = add nuw nsw i32 %.0, %i.cx              ; 4 uses
  %i.db = icmp samesign ugt i32 %i.da, 63
  br i1 %i.db, label %bb.f, label %bb.e

bb.e:                                             ; preds = %hqx_get_ac.exit
  %i.dc = mul i32 %.0.i, %i.bl
  %i.dd = trunc i32 %i.dc to i16
  %i.de = zext nneg i32 %i.da to i64
  %i.df = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !30
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dh
  store i16 %i.dd, ptr %i.di, align 2, !tbaa !50
  %.not = icmp eq i32 %i.da, 63
  br i1 %.not, label %bb.f, label %bb.c, !llvm.loop !81

bb.f:                                             ; preds = %hqx_get_ac.exit, %bb.e
  ret void
}

declare void @ff_vlc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
