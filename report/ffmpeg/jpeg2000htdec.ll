Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000htdec?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_jpeg2000_decode_htj2k:bb.a
  %i.aj = urem i8 %i.ai, 3
  %i.ak = udiv i8 %i.ai, 3
  %i.al = icmp eq i8 %i.aj, 0
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 1242) #11
  tail call void @abort() #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = zext i8 %i.ai to i32
  %i.an = zext i8 %i.ae to i32
  %i.ao = sub nsw i32 %i.an, %i.am                ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %bb.hg, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12 ; 15 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !12 ; 3 uses
  %i.au = icmp ult i32 %i.ar, 2
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aw, i32 noundef 16, ptr noundef nonnull @.str.6) #11
  br label %bb.hg

bb.m:                                             ; preds = %bb.k
  %i.ax = add i32 %i.at, %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !57 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %.not159 = icmp eq i32 %i.ax, %i.ba
  br i1 %.not159, label %bb.n, label %bb.hg

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !58 ; 38 uses
  %i.bd = zext i32 %i.ar to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = zext i16 %i.az to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  store i8 -1, ptr %i.bg, align 1, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !59
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = add i8 %i.ak, %i.bj                     ; 4 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bh, align 8, !tbaa !59
  %i.bn = sub i8 30, %i.bk                        ; 5 uses
  %i.bo = icmp ult i8 %i.bn, 2
  %i.bp = icmp ugt i8 %i.bk, 30
  %or.cond5 = or i1 %i.bp, %i.bo
  br i1 %or.cond5, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = zext i8 %i.bn to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.bs, ptr noundef nonnull @.str.7, i32 noundef %i.bq) #11
  br label %bb.hg

bb.p:                                             ; preds = %bb.n
  %i.bt = add i32 %i.ar, -1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13  ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 4
  %i.bz = add i32 %i.ar, -2
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13  ; 2 uses
  %i.cd = and i8 %i.cc, 15
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.by, %i.ce            ; 4 uses
  %i.cg = icmp samesign ult i32 %i.cf, 2
  br i1 %i.cg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = icmp ugt i32 %i.cf, %i.ar
  %i.ci = icmp eq i8 %i.bw, -1
  %or.cond7 = or i1 %i.ci, %i.ch
  br i1 %or.cond7, label %bb.r, label %.lr.ph.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !56
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ck, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.cf) #11
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.q
  %i.cl = sub nuw i32 %i.ar, %i.cf                ; 32 uses
  store i8 -1, ptr %i.bv, align 1, !tbaa !13
  %i.cm = or i8 %i.cc, 15
  store i8 %i.cm, ptr %i.cb, align 1, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.lr.ph.i
  %.sroa.0320.23 = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0320.24, %bb.u ]
  %.sroa.38.23 = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.38.24, %bb.u ]
  %i.cn = phi i64 [ 0, %.lr.ph.i ], [ %i.de, %bb.u ]
  %i.co = phi i32 [ 0, %.lr.ph.i ], [ %i.cz, %bb.u ] ; 4 uses
  %i.cp = phi i32 [ 0, %.lr.ph.i ], [ %i.da, %bb.u ] ; 2 uses
  %i.cq = phi i8 [ 0, %.lr.ph.i ], [ %i.dg, %bb.u ] ; 2 uses
  %i.cr = icmp eq i32 %i.cp, 255
  %i.cs = icmp ult i32 %i.co, %i.cl
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = sext i32 %i.co to i64
  %i.cu = getelementptr inbounds i8, ptr %i.bc, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13  ; 2 uses
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = add nuw nsw i32 %i.co, 1                ; 2 uses
  %i.cy = zext i8 %i.cv to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.0320.24 = phi i32 [ %i.cx, %bb.t ], [ %.sroa.0320.23, %bb.s ] ; 3 uses
  %.sroa.38.24 = phi i32 [ %i.cw, %bb.t ], [ %.sroa.38.23, %bb.s ] ; 3 uses
  %i.cz = phi i32 [ %i.cx, %bb.t ], [ %i.co, %bb.s ]
  %i.da = phi i32 [ %i.cw, %bb.t ], [ %i.cp, %bb.s ]
  %i.db = phi i64 [ %i.cy, %bb.t ], [ 255, %bb.s ]
  %i.dc = zext nneg i8 %i.cq to i64
  %i.dd = shl nuw nsw i64 %i.db, %i.dc
  %i.de = or i64 %i.dd, %i.cn                     ; 3 uses
  %i.df = select i1 %i.cr, i8 7, i8 8
  %i.dg = add nuw nsw i8 %i.df, %i.cq             ; 4 uses
  %i.dh = icmp samesign ult i8 %i.dg, 32
  br i1 %i.dh, label %bb.s, label %jpeg2000_bitbuf_refill_forward.exit, !llvm.loop !27

jpeg2000_bitbuf_refill_forward.exit:              ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 0, ptr %i.di, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  store i32 %i.cl, ptr %8, align 8, !tbaa !17
  call fastcc void @jpeg2000_init_vlc(ptr noundef %9, i32 noundef %i.ar, i32 noundef %i.cl, ptr noundef %i.bc)
  store i8 0, ptr %10, align 1, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 1
  store i8 0, ptr %i.dj, align 1, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 0, ptr %i.dk, align 1, !tbaa !21
  %i.dl = mul nuw nsw i32 %i.o, %i.n
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = tail call noalias ptr @av_calloc(i64 noundef %i.dm, i64 noundef 4) #11 ; 6 uses
  store ptr %i.dn, ptr %i.h, align 8, !tbaa !37
  %i.do = tail call noalias ptr @av_calloc(i64 noundef %i.dm, i64 noundef 1) #11 ; 6 uses
  store ptr %i.do, ptr %i.i, align 8, !tbaa !39
  %i.dp = icmp ne ptr %i.dn, null
  %i.dq = icmp ne ptr %i.do, null
  %or.cond9 = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond9, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %jpeg2000_bitbuf_refill_forward.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i16 0, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i16 0, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i16 0, ptr %i.d, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.dr = zext i32 %i.cl to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dr ; 37 uses
  %i.dt = load i32, ptr %i.bh, align 8, !tbaa !59 ; 2 uses
  %i.du = add nsw i32 %i.dt, 2                    ; 6 uses
  %i.dv = and i32 %4, 1
  %i.dw = and i32 %5, 1
  %i.dx = sub nsw i32 0, %4
  %i.dy = ashr i32 %i.dx, 1                       ; 10 uses
  %i.dz = sub nsw i32 0, %i.dy                    ; 2 uses
  %i.ea = sub nsw i32 0, %5
  %i.eb = ashr i32 %i.ea, 1                       ; 5 uses
  %i.ec = sub nsw i32 0, %i.eb                    ; 3 uses
  %i.ed = icmp sgt i32 %i.dt, 29
  br i1 %i.ed, label %jpeg2000_decode_ht_cleanup_segment.exit.thread, label %bb.w

jpeg2000_decode_ht_cleanup_segment.exit.thread:   ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.gy

bb.w:                                             ; preds = %bb.v
  %.neg = shl nsw i32 %i.dy, 2
  %i.ee = mul nsw i32 %.neg, %i.eb
  %i.ef = zext nneg i32 %i.ee to i64              ; 3 uses
  %i.eg = tail call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef 1) #11 ; 21 uses
  store ptr %i.eg, ptr %i.e, align 8, !tbaa !39
  %i.eh = tail call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef 1) #11 ; 14 uses
  store ptr %i.eh, ptr %i.f, align 8, !tbaa !39
  %i.ei = tail call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef 4) #11 ; 15 uses
  store ptr %i.ei, ptr %i.g, align 8, !tbaa !37
  %i.ej = icmp ne ptr %i.eg, null
  %i.ek = icmp ne ptr %i.eh, null
  %or.cond.i = select i1 %i.ej, i1 %i.ek, i1 false
  %i.el = icmp ne ptr %i.ei, null
  %or.cond3.i = select i1 %or.cond.i, i1 %i.el, i1 false
  br i1 %or.cond3.i, label %.preheader532, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader532:                                    ; preds = %bb.w
  %i.em = xor i32 %i.dy, -1                       ; 4 uses
  %i.en = icmp slt i32 %i.dy, -1
  br i1 %i.en, label %.lr.ph, label %bb.cp

.lr.ph:                                           ; preds = %.preheader532
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 36 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 38 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.eu = zext i8 %i.bn to i32                    ; 9 uses
  %i.ev = add nsw i32 %i.eu, -1
  %i.ew = shl nuw i32 1, %i.ev                    ; 8 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %recover_mag_sgn.exit
  %i.ex = phi i32 [ 0, %.lr.ph ], [ %i.aig, %recover_mag_sgn.exit ]
  %.0659.i631 = phi i16 [ 0, %.lr.ph ], [ %i.aif, %recover_mag_sgn.exit ] ; 2 uses
  %.0677.i630 = phi i16 [ 0, %.lr.ph ], [ %i.je, %recover_mag_sgn.exit ] ; 3 uses
  %.sroa.52.0629 = phi i8 [ %i.dg, %.lr.ph ], [ %.sroa.52.16.3, %recover_mag_sgn.exit ] ; 5 uses
  %.sroa.84339.0627 = phi i64 [ %i.de, %.lr.ph ], [ %.sroa.84339.16.3, %recover_mag_sgn.exit ] ; 3 uses
  %.sroa.38.0626 = phi i32 [ %.sroa.38.24, %.lr.ph ], [ %.sroa.38.16.3, %recover_mag_sgn.exit ] ; 4 uses
  %.sroa.0320.0625 = phi i32 [ %.sroa.0320.24, %.lr.ph ], [ %.sroa.0320.16.3, %recover_mag_sgn.exit ] ; 4 uses
  %i.ey = or disjoint i16 %.0659.i631, 1
  %i.ez = icmp eq i16 %.0677.i630, 0
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fa = call fastcc i32 @jpeg2000_decode_mel_sym(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef readonly %i.bc, i32 noundef range(i32 2, 0) %i.ar)
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %jpeg2000_decode_sig_emb.exit, label %.thread1.i

.thread1.i:                                       ; preds = %bb.y
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef readonly %i.ds)
  br label %jpeg2000_decode_ctx_vlc.exit.i

bb.z:                                             ; preds = %bb.x
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef readonly %i.ds)
  %i.fc = icmp samesign ult i16 %.0677.i630, 8
  br i1 %i.fc, label %jpeg2000_decode_ctx_vlc.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 318) #11
  tail call void @abort() #12
  unreachable

jpeg2000_decode_ctx_vlc.exit.i:                   ; preds = %bb.z, %.thread1.i
  %i.fd = load i64, ptr %i.eo, align 8, !tbaa !16 ; 2 uses
  %i.fe = and i64 %i.fd, 127
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr @dec_cxt_vlc_table0, i64 %i.fe
  %i.fg = shl nuw nsw i16 %.0677.i630, 8
  %.idx.i.i = zext nneg i16 %i.fg to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i.i
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !22 ; 3 uses
  %i.fj = trunc i16 %i.fi to i8                   ; 3 uses
  %i.fk = lshr i8 %i.fj, 1
  %i.fl = and i8 %i.fk, 7                         ; 2 uses
  %i.fm = and i8 %i.fj, 1
  %i.fn = lshr i8 %i.fj, 4
  %i.fo = lshr i16 %i.fi, 8
  %i.fp = trunc nuw i16 %i.fo to i8
  %i.fq = and i8 %i.fp, 15
  %i.fr = lshr i16 %i.fi, 12
  %i.fs = trunc nuw nsw i16 %i.fr to i8
  %i.ft = zext nneg i8 %i.fl to i64
  %i.fu = lshr i64 %i.fd, %i.ft
  store i64 %i.fu, ptr %i.eo, align 8, !tbaa !16
  %i.fv = load i8, ptr %i.ep, align 8, !tbaa !23
  %i.fw = sub i8 %i.fv, %i.fl
  store i8 %i.fw, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_decode_sig_emb.exit

jpeg2000_decode_sig_emb.exit:                     ; preds = %bb.y, %jpeg2000_decode_ctx_vlc.exit.i
  %i.fx = phi i8 [ %i.fs, %jpeg2000_decode_ctx_vlc.exit.i ], [ 0, %bb.y ] ; 2 uses
  %i.fy = phi i8 [ %i.fq, %jpeg2000_decode_ctx_vlc.exit.i ], [ 0, %bb.y ] ; 2 uses
  %i.fz = phi i8 [ %i.fn, %jpeg2000_decode_ctx_vlc.exit.i ], [ 0, %bb.y ] ; 5 uses
  %i.ga = phi i8 [ %i.fm, %jpeg2000_decode_ctx_vlc.exit.i ], [ 0, %bb.y ] ; 2 uses
  %i.gb = shl nuw nsw i32 %i.ex, 2
  %i.gc = zext nneg i32 %i.gb to i64              ; 9 uses
  %i.gd = and i8 %i.fz, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gc ; 6 uses
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !13
  %i.gf = lshr i8 %i.fz, 1
  %i.gg = and i8 %i.gf, 1
  %11 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gc
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !13
  %i.gi = lshr i8 %i.fz, 2
  %i.gj = and i8 %i.gi, 1
  %12 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gc
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 2
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !13
  %i.gl = lshr i8 %i.fz, 3
  %13 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.gc
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 3
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !13
  %i.gn = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !13
  %i.gq = or i8 %i.gp, %i.gn
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !13
  %i.gt = zext i8 %i.gs to i16
  %i.gu = shl nuw nsw i16 %i.gt, 1
  %i.gv = zext i8 %i.gq to i16
  %i.gw = add nuw nsw i16 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !13
  %i.gz = zext i8 %i.gy to i16
  %i.ha = shl nuw nsw i16 %i.gz, 2
  %i.hb = add nuw nsw i16 %i.gw, %i.ha            ; 3 uses
  %i.hc = icmp eq i16 %i.hb, 0
  br i1 %i.hc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %jpeg2000_decode_sig_emb.exit
  %i.hd = call fastcc i32 @jpeg2000_decode_mel_sym(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef readonly %i.bc, i32 noundef range(i32 2, 0) %i.ar)
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %jpeg2000_decode_sig_emb.exit283, label %.thread1.i282

.thread1.i282:                                    ; preds = %bb.ab
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef readonly %i.ds)
  br label %jpeg2000_decode_ctx_vlc.exit.i280

bb.ac:                                            ; preds = %jpeg2000_decode_sig_emb.exit
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef readonly %i.ds)
  %i.hf = icmp samesign ult i16 %i.hb, 8
  br i1 %i.hf, label %jpeg2000_decode_ctx_vlc.exit.i280, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 318) #11
  tail call void @abort() #12
  unreachable

jpeg2000_decode_ctx_vlc.exit.i280:                ; preds = %bb.ac, %.thread1.i282
  %i.hg = load i64, ptr %i.eo, align 8, !tbaa !16 ; 2 uses
  %i.hh = and i64 %i.hg, 127
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr @dec_cxt_vlc_table0, i64 %i.hh
  %i.hj = shl nuw nsw i16 %i.hb, 8
  %.idx.i.i281 = zext nneg i16 %i.hj to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx.i.i281
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !22 ; 3 uses
  %i.hm = trunc i16 %i.hl to i8                   ; 3 uses
  %i.hn = lshr i8 %i.hm, 1
  %i.ho = and i8 %i.hn, 7                         ; 2 uses
  %i.hp = and i8 %i.hm, 1
  %i.hq = lshr i8 %i.hm, 4
  %i.hr = lshr i16 %i.hl, 8
  %i.hs = trunc nuw i16 %i.hr to i8
  %i.ht = and i8 %i.hs, 15
  %i.hu = lshr i16 %i.hl, 12
  %i.hv = trunc nuw nsw i16 %i.hu to i8
  %i.hw = zext nneg i8 %i.ho to i64
  %i.hx = lshr i64 %i.hg, %i.hw
  store i64 %i.hx, ptr %i.eo, align 8, !tbaa !16
  %i.hy = load i8, ptr %i.ep, align 8, !tbaa !23
  %i.hz = sub i8 %i.hy, %i.ho
  store i8 %i.hz, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_decode_sig_emb.exit283

jpeg2000_decode_sig_emb.exit283:                  ; preds = %bb.ab, %jpeg2000_decode_ctx_vlc.exit.i280
  %i.ia = phi i8 [ %i.hv, %jpeg2000_decode_ctx_vlc.exit.i280 ], [ 0, %bb.ab ] ; 2 uses
  %i.ib = phi i8 [ %i.ht, %jpeg2000_decode_ctx_vlc.exit.i280 ], [ 0, %bb.ab ] ; 2 uses
  %i.ic = phi i8 [ %i.hq, %jpeg2000_decode_ctx_vlc.exit.i280 ], [ 0, %bb.ab ] ; 5 uses
  %i.id = phi i8 [ %i.hp, %jpeg2000_decode_ctx_vlc.exit.i280 ], [ 0, %bb.ab ] ; 2 uses
  %i.ie = zext i16 %i.ey to i64
  %i.if = shl nuw nsw i64 %i.ie, 2                ; 9 uses
  %i.ig = and i8 %i.ic, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.if ; 5 uses
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !13
  %i.ii = lshr i8 %i.ic, 1
  %i.ij = and i8 %i.ii, 1
  %14 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.if
  %i.ik = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !13
  %i.il = lshr i8 %i.ic, 2
  %i.im = and i8 %i.il, 1
  %15 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.if
  %i.in = getelementptr inbounds nuw i8, ptr %15, i64 2
  store i8 %i.im, ptr %i.in, align 1, !tbaa !13
  %i.io = lshr i8 %i.ic, 3
  %16 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.if
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 3
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !13
  %i.iq = load i8, ptr %i.ih, align 1, !tbaa !13  ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !13
  %i.it = or i8 %i.is, %i.iq
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !13
  %i.iw = zext i8 %i.iv to i16
  %i.ix = shl nuw nsw i16 %i.iw, 1
  %i.iy = zext i8 %i.it to i16
  %i.iz = add nuw nsw i16 %i.ix, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 3
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !13
  %i.jc = zext i8 %i.jb to i16
  %i.jd = shl nuw nsw i16 %i.jc, 2
  %i.je = add nuw nsw i16 %i.iz, %i.jd            ; 2 uses
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %i.jf = icmp ne i8 %i.ga, 0                     ; 4 uses
  %i.jg = icmp ne i8 %i.id, 0                     ; 2 uses
  %or.cond7.i = select i1 %i.jf, i1 %i.jg, i1 false
  br i1 %or.cond7.i, label %bb.ae, label %bb.be

bb.ae:                                            ; preds = %jpeg2000_decode_sig_emb.exit283
  %i.jh = call fastcc i32 @jpeg2000_decode_mel_sym(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef %i.bc, i32 noundef range(i32 2, 0) %i.ar)
  %.not748.i = icmp eq i32 %i.jh, 0
  %i.ji = load i8, ptr %i.ep, align 8, !tbaa !23  ; 3 uses
  %i.jj = icmp ult i8 %i.ji, 3                    ; 2 uses
  br i1 %.not748.i, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.jj, label %bb.ag, label %vlc_decode_u_prefix.exit166

bb.ag:                                            ; preds = %bb.af
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre898 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit166

vlc_decode_u_prefix.exit166:                      ; preds = %bb.af, %bb.ag
  %i.jk = phi i8 [ %i.ji, %bb.af ], [ %.pre898, %bb.ag ]
  %i.jl = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.jm = and i64 %i.jl, 7                        ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !13  ; 2 uses
  %i.jp = zext nneg i8 %i.jo to i64
  %i.jq = lshr i64 %i.jl, %i.jp                   ; 2 uses
  store i64 %i.jq, ptr %i.eo, align 8, !tbaa !16
  %i.jr = sub i8 %i.jk, %i.jo                     ; 3 uses
  store i8 %i.jr, ptr %i.ep, align 8, !tbaa !23
  %i.js = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.jm
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !13
  %i.ju = icmp ult i8 %i.jr, 3
  br i1 %i.ju, label %bb.ah, label %vlc_decode_u_prefix.exit165

bb.ah:                                            ; preds = %vlc_decode_u_prefix.exit166
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre899 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre900 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit165

vlc_decode_u_prefix.exit165:                      ; preds = %vlc_decode_u_prefix.exit166, %bb.ah
  %i.jv = phi i8 [ %i.jr, %vlc_decode_u_prefix.exit166 ], [ %.pre900, %bb.ah ]
  %i.jw = phi i64 [ %i.jq, %vlc_decode_u_prefix.exit166 ], [ %.pre899, %bb.ah ] ; 3 uses
  %i.jx = and i64 %i.jw, 7                        ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !13  ; 2 uses
  %i.ka = zext nneg i8 %i.jz to i64
  %i.kb = lshr i64 %i.jw, %i.ka                   ; 3 uses
  store i64 %i.kb, ptr %i.eo, align 8, !tbaa !16
  %i.kc = sub i8 %i.jv, %i.jz                     ; 4 uses
  store i8 %i.kc, ptr %i.ep, align 8, !tbaa !23
  %i.kd = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.jx
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !13
  %i.kf = icmp ne i64 %i.jm, 4
  %i.kg = and i64 %i.jl, 3
  %.not514 = icmp eq i64 %i.kg, 0
  br i1 %.not514, label %bb.ai, label %vlc_decode_u_suffix.exit181

bb.ai:                                            ; preds = %vlc_decode_u_prefix.exit165
  %i.kh = icmp ult i8 %i.kc, 5
  br i1 %i.kh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre901 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre902 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ki = phi i8 [ %.pre902, %bb.aj ], [ %i.kc, %bb.ai ]
  %i.kj = phi i64 [ %.pre901, %bb.aj ], [ %i.kb, %bb.ai ] ; 2 uses
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = and i32 %i.kk, 31
  %i.km = zext i1 %i.kf to i64                    ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !12 ; 2 uses
  %i.kp = trunc i32 %i.ko to i8
  %.mask515 = and i32 %i.ko, 255
  %i.kq = zext nneg i32 %.mask515 to i64
  %i.kr = lshr i64 %i.kj, %i.kq                   ; 2 uses
  store i64 %i.kr, ptr %i.eo, align 8, !tbaa !16
  %i.ks = sub i8 %i.ki, %i.kp                     ; 2 uses
  store i8 %i.ks, ptr %i.ep, align 8, !tbaa !23
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.km
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !12
  %i.kv = and i32 %i.kl, %i.ku
  %i.kw = trunc nuw nsw i32 %i.kv to i8
  br label %vlc_decode_u_suffix.exit181

vlc_decode_u_suffix.exit181:                      ; preds = %vlc_decode_u_prefix.exit165, %bb.ak
  %i.kx = phi i64 [ %i.kr, %bb.ak ], [ %i.kb, %vlc_decode_u_prefix.exit165 ] ; 2 uses
  %i.ky = phi i8 [ %i.ks, %bb.ak ], [ %i.kc, %vlc_decode_u_prefix.exit165 ] ; 3 uses
  %.0.i180 = phi i8 [ %i.kw, %bb.ak ], [ 0, %vlc_decode_u_prefix.exit165 ] ; 2 uses
  %i.kz = icmp ne i64 %i.jx, 4
  %i.la = and i64 %i.jw, 3
  %.not516 = icmp eq i64 %i.la, 0
  br i1 %.not516, label %bb.al, label %vlc_decode_u_suffix.exit179

bb.al:                                            ; preds = %vlc_decode_u_suffix.exit181
  %i.lb = icmp ult i8 %i.ky, 5
  br i1 %i.lb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre903 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre904 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.lc = phi i8 [ %.pre904, %bb.am ], [ %i.ky, %bb.al ]
  %i.ld = phi i64 [ %.pre903, %bb.am ], [ %i.kx, %bb.al ] ; 2 uses
  %i.le = trunc i64 %i.ld to i32
  %i.lf = and i32 %i.le, 31
  %i.lg = zext i1 %i.kz to i64                    ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !12 ; 2 uses
  %i.lj = trunc i32 %i.li to i8
  %.mask517 = and i32 %i.li, 255
  %i.lk = zext nneg i32 %.mask517 to i64
  %i.ll = lshr i64 %i.ld, %i.lk                   ; 2 uses
  store i64 %i.ll, ptr %i.eo, align 8, !tbaa !16
  %i.lm = sub i8 %i.lc, %i.lj                     ; 2 uses
  store i8 %i.lm, ptr %i.ep, align 8, !tbaa !23
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.lg
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !12
  %i.lp = and i32 %i.lf, %i.lo
  %i.lq = trunc nuw nsw i32 %i.lp to i8
  br label %vlc_decode_u_suffix.exit179

vlc_decode_u_suffix.exit179:                      ; preds = %vlc_decode_u_suffix.exit181, %bb.an
  %i.lr = phi i64 [ %i.ll, %bb.an ], [ %i.kx, %vlc_decode_u_suffix.exit181 ]
  %i.ls = phi i8 [ %i.lm, %bb.an ], [ %i.ky, %vlc_decode_u_suffix.exit181 ] ; 2 uses
  %.0.i178 = phi i8 [ %i.lq, %bb.an ], [ 0, %vlc_decode_u_suffix.exit181 ] ; 2 uses
  %i.lt = icmp samesign ugt i8 %.0.i180, 27
  %i.lu = select i1 %i.lt, i8 4, i8 0             ; 3 uses
  %i.lv = icmp ult i8 %i.ls, %i.lu
  br i1 %i.lv, label %bb.ao, label %jpeg2000_bitbuf_get_bits_lsb.exit205

bb.ao:                                            ; preds = %vlc_decode_u_suffix.exit179
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre905 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre906 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit205

jpeg2000_bitbuf_get_bits_lsb.exit205:             ; preds = %vlc_decode_u_suffix.exit179, %bb.ao
  %i.lw = phi i8 [ %i.ls, %vlc_decode_u_suffix.exit179 ], [ %.pre906, %bb.ao ]
  %i.lx = phi i64 [ %i.lr, %vlc_decode_u_suffix.exit179 ], [ %.pre905, %bb.ao ] ; 2 uses
  %i.ly = zext nneg i8 %i.lu to i64               ; 2 uses
  %notmask.i204 = shl nsw i64 -1, %i.ly
  %i.lz = xor i64 %notmask.i204, -1
  %i.ma = and i64 %i.lx, %i.lz
  %i.mb = lshr i64 %i.lx, %i.ly                   ; 2 uses
  store i64 %i.mb, ptr %i.eo, align 8, !tbaa !16
  %i.mc = sub i8 %i.lw, %i.lu                     ; 3 uses
  store i8 %i.mc, ptr %i.ep, align 8, !tbaa !23
  %i.md = trunc nuw nsw i64 %i.ma to i32
  %i.me = icmp samesign ugt i8 %.0.i178, 27
  %i.mf = select i1 %i.me, i8 4, i8 0             ; 3 uses
  %i.mg = icmp ult i8 %i.mc, %i.mf
  br i1 %i.mg, label %bb.ap, label %jpeg2000_bitbuf_get_bits_lsb.exit207

bb.ap:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit205
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre907 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre908 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit207

jpeg2000_bitbuf_get_bits_lsb.exit207:             ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit205, %bb.ap
  %i.mh = phi i8 [ %i.mc, %jpeg2000_bitbuf_get_bits_lsb.exit205 ], [ %.pre908, %bb.ap ]
  %i.mi = phi i64 [ %i.mb, %jpeg2000_bitbuf_get_bits_lsb.exit205 ], [ %.pre907, %bb.ap ] ; 2 uses
  %i.mj = zext nneg i8 %i.mf to i64               ; 2 uses
  %notmask.i206 = shl nsw i64 -1, %i.mj
  %i.mk = xor i64 %notmask.i206, -1
  %i.ml = and i64 %i.mi, %i.mk
  %i.mm = lshr i64 %i.mi, %i.mj
  store i64 %i.mm, ptr %i.eo, align 8, !tbaa !16
  %i.mn = sub i8 %i.mh, %i.mf
  store i8 %i.mn, ptr %i.ep, align 8, !tbaa !23
  %i.mo = trunc nuw nsw i64 %i.ml to i32
  %i.mp = zext i8 %i.jt to i32
  %i.mq = add nuw nsw i32 %i.mp, 2
end_hunk_0
begin_hunk_1_@ff_jpeg2000_decode_htj2k:bb.a
  %i.pf = sub i8 %i.oy, %i.pc                     ; 4 uses
  store i8 %i.pf, ptr %i.ep, align 8, !tbaa !23
  %i.pg = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.pa
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !13
  %i.pi = icmp ne i64 %i.pa, 4
  %i.pj = and i64 %i.oz, 3
  %.not518 = icmp eq i64 %i.pj, 0
  br i1 %.not518, label %bb.az, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.az:                                            ; preds = %vlc_decode_u_suffix.exit177
  %i.pk = icmp ult i8 %i.pf, 5
  br i1 %i.pk, label %bb.ba, label %jpeg2000_bitbuf_get_bits_lsb.exit209

bb.ba:                                            ; preds = %bb.az
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre912 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre913 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit209

jpeg2000_bitbuf_get_bits_lsb.exit209:             ; preds = %bb.az, %bb.ba
  %i.pl = phi i8 [ %.pre913, %bb.ba ], [ %i.pf, %bb.az ]
  %i.pm = phi i64 [ %.pre912, %bb.ba ], [ %i.pe, %bb.az ] ; 2 uses
  %i.pn = trunc i64 %i.pm to i32
  %i.po = and i32 %i.pn, 31
  %i.pp = zext i1 %i.pi to i64                    ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !12 ; 2 uses
  %i.ps = trunc i32 %i.pr to i8
  %.mask519 = and i32 %i.pr, 255
  %i.pt = zext nneg i32 %.mask519 to i64
  %i.pu = lshr i64 %i.pm, %i.pt                   ; 3 uses
  store i64 %i.pu, ptr %i.eo, align 8, !tbaa !16
  %i.pv = sub i8 %i.pl, %i.ps                     ; 4 uses
  store i8 %i.pv, ptr %i.ep, align 8, !tbaa !23
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.pp
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !12
  %i.py = and i32 %i.po, %i.px
  %.fr1250 = freeze i32 %i.py                     ; 4 uses
  %i.pz = icmp ugt i32 %.fr1250, 27
  br i1 %i.pz, label %bb.bb, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bb:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit209
  %i.qa = icmp ult i8 %i.pv, 4
  br i1 %i.qa, label %bb.bc, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre914 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre915 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit211

jpeg2000_bitbuf_get_bits_lsb.exit211:             ; preds = %vlc_decode_u_suffix.exit177, %jpeg2000_bitbuf_get_bits_lsb.exit209, %bb.bb, %bb.bc
  %i.qb = phi i8 [ 4, %bb.bb ], [ 4, %bb.bc ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %.0.i17411311134 = phi i32 [ %.fr1250, %bb.bb ], [ %.fr1250, %bb.bc ], [ %.fr1250, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ]
  %i.qc = phi i8 [ %i.pv, %bb.bb ], [ %.pre915, %bb.bc ], [ %i.pv, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pf, %vlc_decode_u_suffix.exit177 ]
  %i.qd = phi i64 [ %i.pu, %bb.bb ], [ %.pre914, %bb.bc ], [ %i.pu, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pe, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %i.qe = zext nneg i8 %i.qb to i64               ; 2 uses
  %notmask.i210 = shl nsw i64 -1, %i.qe
  %i.qf = xor i64 %notmask.i210, -1
  %i.qg = and i64 %i.qd, %i.qf
  %i.qh = lshr i64 %i.qd, %i.qe
  store i64 %i.qh, ptr %i.eo, align 8, !tbaa !16
  %i.qi = sub i8 %i.qc, %i.qb
  store i8 %i.qi, ptr %i.ep, align 8, !tbaa !23
  %i.qj = trunc nuw nsw i64 %i.qg to i32
  %i.qk = zext i8 %i.ph to i32
  %i.ql = add nuw nsw i32 %.0.i17411311134, %i.qk
  %i.qm = shl nuw nsw i32 %i.qj, 2
  %i.qn = and i32 %i.qm, 252
  %i.qo = add nuw nsw i32 %i.ql, %i.qn
  br label %bb.bd

bb.bd:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit211, %jpeg2000_bitbuf_get_bits_lsb.exit213
  %.sroa.0416.0 = phi i32 [ %i.ok, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.0399.0 = phi i32 [ %i.ow, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.18.2 = phi i32 [ %i.nu, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ %i.qo, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %i.qp = zext i8 %i.nk to i32
  %i.qq = add nuw nsw i32 %.sroa.0416.0, %i.qp
  %i.qr = add nuw nsw i32 %i.qq, %.sroa.0399.0
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.be:                                            ; preds = %jpeg2000_decode_sig_emb.exit283
  %or.cond11.i = select i1 %i.jf, i1 true, i1 %i.jg
  br i1 %or.cond11.i, label %bb.bf, label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.bf:                                            ; preds = %bb.be
  %i.qs = load i8, ptr %i.ep, align 8, !tbaa !23  ; 2 uses
  %i.qt = icmp ult i8 %i.qs, 3
  br i1 %i.qt, label %bb.bg, label %vlc_decode_u_prefix.exit167

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit167

vlc_decode_u_prefix.exit167:                      ; preds = %bb.bf, %bb.bg
  %i.qu = phi i8 [ %i.qs, %bb.bf ], [ %.pre, %bb.bg ]
  %i.qv = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.qw = and i64 %i.qv, 7                        ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !13  ; 2 uses
  %i.qz = zext nneg i8 %i.qy to i64
  %i.ra = lshr i64 %i.qv, %i.qz                   ; 3 uses
  store i64 %i.ra, ptr %i.eo, align 8, !tbaa !16
  %i.rb = sub i8 %i.qu, %i.qy                     ; 4 uses
  store i8 %i.rb, ptr %i.ep, align 8, !tbaa !23
  %i.rc = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.qw
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !13
  %i.re = icmp ne i64 %i.qw, 4
  %i.rf = and i64 %i.qv, 3
  %.not512 = icmp eq i64 %i.rf, 0
  br i1 %.not512, label %bb.bh, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bh:                                            ; preds = %vlc_decode_u_prefix.exit167
  %i.rg = icmp ult i8 %i.rb, 5
  br i1 %i.rg, label %bb.bi, label %vlc_decode_u_suffix.exit183.cont

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre894 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre895 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit183.cont

vlc_decode_u_suffix.exit183.cont:                 ; preds = %bb.bh, %bb.bi
  %i.rh = phi i8 [ %.pre895, %bb.bi ], [ %i.rb, %bb.bh ]
  %i.ri = phi i64 [ %.pre894, %bb.bi ], [ %i.ra, %bb.bh ] ; 2 uses
  %i.rj = trunc i64 %i.ri to i32
  %i.rk = and i32 %i.rj, 31
  %i.rl = zext i1 %i.re to i64                    ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !12 ; 2 uses
  %i.ro = trunc i32 %i.rn to i8
  %.mask513 = and i32 %i.rn, 255
  %i.rp = zext nneg i32 %.mask513 to i64
  %i.rq = lshr i64 %i.ri, %i.rp                   ; 3 uses
  store i64 %i.rq, ptr %i.eo, align 8, !tbaa !16
  %i.rr = sub i8 %i.rh, %i.ro                     ; 4 uses
  store i8 %i.rr, ptr %i.ep, align 8, !tbaa !23
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.rl
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !12
  %i.ru = and i32 %i.rk, %i.rt
  %.fr1249 = freeze i32 %i.ru                     ; 4 uses
  %i.rv = icmp ugt i32 %.fr1249, 27
  br i1 %i.rv, label %bb.bj, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bj:                                            ; preds = %vlc_decode_u_suffix.exit183.cont
  %i.rw = icmp ult i8 %i.rr, 4
  br i1 %i.rw, label %bb.bk, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre896 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre897 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203

jpeg2000_bitbuf_get_bits_lsb.exit203:             ; preds = %vlc_decode_u_prefix.exit167, %vlc_decode_u_suffix.exit183.cont, %bb.bj, %bb.bk
  %i.rx = phi i8 [ 4, %bb.bj ], [ 4, %bb.bk ], [ 0, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %.0.i18211381144 = phi i32 [ %.fr1249, %bb.bj ], [ %.fr1249, %bb.bk ], [ %.fr1249, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ]
  %i.ry = phi i8 [ %i.rr, %bb.bj ], [ %.pre897, %bb.bk ], [ %i.rr, %vlc_decode_u_suffix.exit183.cont ], [ %i.rb, %vlc_decode_u_prefix.exit167 ]
  %i.rz = phi i64 [ %i.rq, %bb.bj ], [ %.pre896, %bb.bk ], [ %i.rq, %vlc_decode_u_suffix.exit183.cont ], [ %i.ra, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %i.sa = zext nneg i8 %i.rx to i64               ; 2 uses
  %notmask.i202 = shl nsw i64 -1, %i.sa
  %i.sb = xor i64 %notmask.i202, -1
  %i.sc = and i64 %i.rz, %i.sb
  %i.sd = lshr i64 %i.rz, %i.sa
  store i64 %i.sd, ptr %i.eo, align 8, !tbaa !16
  %i.se = sub i8 %i.ry, %i.rx
  store i8 %i.se, ptr %i.ep, align 8, !tbaa !23
  %i.sf = trunc nuw nsw i64 %i.sc to i32
  %i.sg = zext i8 %i.rd to i32
  %i.sh = add nuw nsw i32 %.0.i18211381144, %i.sg
  %i.si = shl nuw nsw i32 %i.sf, 2
  %i.sj = and i32 %i.si, 252
  %i.sk = add nuw nsw i32 %i.sh, %i.sj            ; 2 uses
  %spec.select490 = select i1 %i.jf, i32 %i.sk, i32 0
  %spec.select491 = select i1 %i.jf, i32 0, i32 %i.sk
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

jpeg2000_bitbuf_get_bits_lsb.exit203.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203, %bb.be, %bb.bd, %jpeg2000_bitbuf_get_bits_lsb.exit207
  %.sroa.0386.3 = phi i32 [ %i.qr, %bb.bd ], [ %i.mu, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select490, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.2, %bb.bd ], [ %i.na, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select491, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.not749.i = icmp slt i32 %.sroa.0386.3, %i.du
  %.not750.i = icmp slt i32 %.sroa.18.1, %i.du
  %or.cond751.i = select i1 %.not749.i, i1 %.not750.i, i1 false
  br i1 %or.cond751.i, label %.preheader531, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader531:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203.cont
  %i.sl = add nuw nsw i32 %.sroa.18.1, 1          ; 4 uses
  %i.sm = add nuw nsw i32 %.sroa.0386.3, 1        ; 4 uses
  %i.sn = zext nneg i8 %i.fy to i32               ; 4 uses
  %i.so = zext nneg i8 %i.ib to i32               ; 4 uses
  %i.sp = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.sq = zext i8 %i.sp to i32
  %i.sr = mul nuw nsw i32 %i.sm, %i.sq            ; 2 uses
  %i.ss = and i32 %i.sn, 1                        ; 2 uses
  %i.st = sub nsw i32 %i.sr, %i.ss                ; 4 uses
  %i.su = zext i8 %i.iq to i32
  %i.sv = mul nuw nsw i32 %i.sl, %i.su            ; 2 uses
  %i.sw = and i32 %i.so, 1                        ; 2 uses
  %i.sx = sub nsw i32 %i.sv, %i.sw                ; 4 uses
  %17 = or disjoint i64 %i.gc, 1                  ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %17
  %i.sy = load i8, ptr %18, align 1, !tbaa !13
  %i.sz = zext i8 %i.sy to i32
  %i.ta = mul nuw nsw i32 %i.sm, %i.sz            ; 2 uses
  %i.tb = lshr i32 %i.sn, 1
  %i.tc = and i32 %i.tb, 1                        ; 2 uses
  %i.td = sub nsw i32 %i.ta, %i.tc                ; 4 uses
  %19 = or disjoint i64 %i.if, 1                  ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %i.te = zext i8 %21 to i32
  %i.tf = mul nuw nsw i32 %i.sl, %i.te            ; 2 uses
  %i.tg = lshr i32 %i.so, 1
  %i.th = and i32 %i.tg, 1                        ; 2 uses
  %i.ti = sub nsw i32 %i.tf, %i.th                ; 4 uses
  %22 = or disjoint i64 %i.gc, 2                  ; 3 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %22
  %i.tj = load i8, ptr %23, align 1, !tbaa !13
  %i.tk = zext i8 %i.tj to i32
  %i.tl = mul nuw nsw i32 %i.sm, %i.tk            ; 2 uses
  %i.tm = lshr i32 %i.sn, 2
  %i.tn = and i32 %i.tm, 1                        ; 2 uses
  %i.to = sub nsw i32 %i.tl, %i.tn                ; 4 uses
  %24 = or disjoint i64 %i.if, 2                  ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %i.tp = zext i8 %26 to i32
  %i.tq = mul nuw nsw i32 %i.sl, %i.tp            ; 2 uses
  %i.tr = lshr i32 %i.so, 2
  %i.ts = and i32 %i.tr, 1                        ; 2 uses
  %i.tt = sub nsw i32 %i.tq, %i.ts                ; 4 uses
  %27 = or disjoint i64 %i.gc, 3                  ; 3 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %27
  %i.tu = load i8, ptr %28, align 1, !tbaa !13
  %i.tv = zext i8 %i.tu to i32
  %i.tw = mul nuw nsw i32 %i.sm, %i.tv            ; 2 uses
  %i.tx = lshr i32 %i.sn, 3                       ; 2 uses
  %i.ty = sub nsw i32 %i.tw, %i.tx                ; 4 uses
  %29 = or disjoint i64 %i.if, 3                  ; 3 uses
  %30 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %i.tz = zext i8 %31 to i32
  %i.ua = mul nuw nsw i32 %i.sl, %i.tz            ; 2 uses
  %i.ub = lshr i32 %i.so, 3                       ; 2 uses
  %i.uc = sub nsw i32 %i.ua, %i.ub                ; 4 uses
  %i.ud = zext nneg i8 %i.fx to i32               ; 4 uses
  %i.ue = and i32 %i.ud, 1
  %i.uf = icmp sgt i32 %i.st, 0
  br i1 %i.uf, label %bb.bl, label %jpeg2000_decode_mag_sgn.exit260

bb.bl:                                            ; preds = %.preheader531
  %i.ug = trunc i32 %i.st to i8                   ; 2 uses
  %.not.i265 = icmp ule i8 %.sroa.52.0629, %i.ug
  %i.uh = icmp ult i8 %.sroa.52.0629, 32
  %or.cond482 = and i1 %i.uh, %.not.i265
  br i1 %or.cond482, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267

.lr.ph.i285:                                      ; preds = %bb.bl, %bb.bn
  %.sroa.0320.26 = phi i32 [ %.sroa.0320.27, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ]
  %.sroa.38.26 = phi i32 [ %.sroa.38.27, %bb.bn ], [ %.sroa.38.0626, %bb.bl ]
  %i.ui = phi i64 [ %i.uz, %bb.bn ], [ %.sroa.84339.0627, %bb.bl ]
  %i.uj = phi i32 [ %i.uu, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ] ; 4 uses
  %i.uk = phi i32 [ %i.uv, %bb.bn ], [ %.sroa.38.0626, %bb.bl ] ; 2 uses
  %i.ul = phi i8 [ %i.vb, %bb.bn ], [ %.sroa.52.0629, %bb.bl ] ; 2 uses
  %i.um = icmp eq i32 %i.uk, 255
  %i.un = icmp ult i32 %i.uj, %i.cl
  br i1 %i.un, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i285
  %i.uo = sext i32 %i.uj to i64
  %i.up = getelementptr inbounds i8, ptr %i.bc, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !13  ; 2 uses
  %i.ur = zext i8 %i.uq to i32                    ; 2 uses
  %i.us = add nuw nsw i32 %i.uj, 1                ; 2 uses
  %i.ut = zext i8 %i.uq to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i285
  %.sroa.0320.27 = phi i32 [ %i.us, %bb.bm ], [ %.sroa.0320.26, %.lr.ph.i285 ] ; 2 uses
  %.sroa.38.27 = phi i32 [ %i.ur, %bb.bm ], [ %.sroa.38.26, %.lr.ph.i285 ] ; 2 uses
  %i.uu = phi i32 [ %i.us, %bb.bm ], [ %i.uj, %.lr.ph.i285 ]
  %i.uv = phi i32 [ %i.ur, %bb.bm ], [ %i.uk, %.lr.ph.i285 ]
  %i.uw = phi i64 [ %i.ut, %bb.bm ], [ 255, %.lr.ph.i285 ]
  %i.ux = zext nneg i8 %i.ul to i64
  %i.uy = shl nuw nsw i64 %i.uw, %i.ux
  %i.uz = or i64 %i.uy, %i.ui                     ; 2 uses
  %i.va = select i1 %i.um, i8 7, i8 8
  %i.vb = add nuw nsw i8 %i.va, %i.ul             ; 3 uses
  %i.vc = icmp samesign ult i8 %i.vb, 32
  br i1 %i.vc, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267:     ; preds = %bb.bn, %bb.bl
  %.sroa.0320.18 = phi i32 [ %.sroa.0320.0625, %bb.bl ], [ %.sroa.0320.27, %bb.bn ]
  %.sroa.38.18 = phi i32 [ %.sroa.38.0626, %bb.bl ], [ %.sroa.38.27, %bb.bn ]
  %.sroa.84339.18 = phi i64 [ %.sroa.84339.0627, %bb.bl ], [ %i.uz, %bb.bn ] ; 2 uses
  %.sroa.52.18 = phi i8 [ %.sroa.52.0629, %bb.bl ], [ %i.vb, %bb.bn ]
  %.mask522 = and i32 %i.st, 255
  %i.vd = zext nneg i32 %.mask522 to i64          ; 2 uses
  %notmask.i266 = shl nsw i64 -1, %i.vd
  %i.ve = xor i64 %notmask.i266, -1
  %i.vf = and i64 %.sroa.84339.18, %i.ve
  %i.vg = lshr i64 %.sroa.84339.18, %i.vd
  %i.vh = sub i8 %.sroa.52.18, %i.ug
  %i.vi = trunc i64 %i.vf to i32
  %i.vj = shl nuw i32 %i.ue, %i.st
  %i.vk = add nsw i32 %i.vj, %i.vi
  br label %jpeg2000_decode_mag_sgn.exit260

jpeg2000_decode_mag_sgn.exit260:                  ; preds = %.preheader531, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267
  %.sroa.0320.15 = phi i32 [ %.sroa.0320.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.0320.0625, %.preheader531 ] ; 4 uses
  %.sroa.38.15 = phi i32 [ %.sroa.38.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.38.0626, %.preheader531 ] ; 4 uses
  %.sroa.84339.15 = phi i64 [ %i.vg, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.84339.0627, %.preheader531 ] ; 3 uses
  %.sroa.52.15 = phi i8 [ %i.vh, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.52.0629, %.preheader531 ] ; 5 uses
  %.0.i259 = phi i32 [ %i.vk, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ 0, %.preheader531 ] ; 3 uses
  %.not.i218 = icmp eq i32 %i.sr, %i.ss
  br i1 %.not.i218, label %bb.bo, label %ff_clz_c.exit.i222

ff_clz_c.exit.i222:                               ; preds = %jpeg2000_decode_mag_sgn.exit260
  %i.vl = lshr i32 %.0.i259, 1
  %i.vm = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.vl, i1 false)
  %i.vn = trunc nuw nsw i32 %i.vm to i8
  %i.vo = sub nuw nsw i8 33, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.gc
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !13
  %i.vq = ashr i32 %.0.i259, 1
  %i.vr = add nsw i32 %i.vq, 1
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gc
  %i.vt = shl i32 %i.vr, %i.eu
  %i.vu = shl i32 %.0.i259, 31
  %i.vv = or i32 %i.vu, %i.vt
  %i.vw = or i32 %i.vv, %i.ew
  store i32 %i.vw, ptr %i.vs, align 4, !tbaa !12
  br label %bb.bo

bb.bo:                                            ; preds = %ff_clz_c.exit.i222, %jpeg2000_decode_mag_sgn.exit260
  %i.vx = lshr i32 %i.ud, 1
  %i.vy = and i32 %i.vx, 1
  %i.vz = icmp sgt i32 %i.td, 0
  br i1 %i.vz, label %bb.bp, label %jpeg2000_decode_mag_sgn.exit260.1

bb.bp:                                            ; preds = %bb.bo
  %i.wa = trunc i32 %i.td to i8                   ; 2 uses
  %.not.i265.1 = icmp ule i8 %.sroa.52.15, %i.wa
  %i.wb = icmp ult i8 %.sroa.52.15, 32
  %or.cond482.1 = and i1 %i.wb, %.not.i265.1
  br i1 %or.cond482.1, label %.lr.ph.i285.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1

.lr.ph.i285.1:                                    ; preds = %bb.bp, %bb.br
  %.sroa.0320.26.1 = phi i32 [ %.sroa.0320.27.1, %bb.br ], [ %.sroa.0320.15, %bb.bp ]
  %.sroa.38.26.1 = phi i32 [ %.sroa.38.27.1, %bb.br ], [ %.sroa.38.15, %bb.bp ]
  %i.wc = phi i64 [ %i.wt, %bb.br ], [ %.sroa.84339.15, %bb.bp ]
  %i.wd = phi i32 [ %i.wo, %bb.br ], [ %.sroa.0320.15, %bb.bp ] ; 4 uses
  %i.we = phi i32 [ %i.wp, %bb.br ], [ %.sroa.38.15, %bb.bp ] ; 2 uses
  %i.wf = phi i8 [ %i.wv, %bb.br ], [ %.sroa.52.15, %bb.bp ] ; 2 uses
  %i.wg = icmp eq i32 %i.we, 255
  %i.wh = icmp ult i32 %i.wd, %i.cl
  br i1 %i.wh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i285.1
  %i.wi = sext i32 %i.wd to i64
  %i.wj = getelementptr inbounds i8, ptr %i.bc, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !13  ; 2 uses
  %i.wl = zext i8 %i.wk to i32                    ; 2 uses
  %i.wm = add nuw nsw i32 %i.wd, 1                ; 2 uses
  %i.wn = zext i8 %i.wk to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i285.1
  %.sroa.0320.27.1 = phi i32 [ %i.wm, %bb.bq ], [ %.sroa.0320.26.1, %.lr.ph.i285.1 ] ; 2 uses
  %.sroa.38.27.1 = phi i32 [ %i.wl, %bb.bq ], [ %.sroa.38.26.1, %.lr.ph.i285.1 ] ; 2 uses
  %i.wo = phi i32 [ %i.wm, %bb.bq ], [ %i.wd, %.lr.ph.i285.1 ]
  %i.wp = phi i32 [ %i.wl, %bb.bq ], [ %i.we, %.lr.ph.i285.1 ]
  %i.wq = phi i64 [ %i.wn, %bb.bq ], [ 255, %.lr.ph.i285.1 ]
  %i.wr = zext nneg i8 %i.wf to i64
  %i.ws = shl nuw nsw i64 %i.wq, %i.wr
  %i.wt = or i64 %i.ws, %i.wc                     ; 2 uses
  %i.wu = select i1 %i.wg, i8 7, i8 8
  %i.wv = add nuw nsw i8 %i.wu, %i.wf             ; 3 uses
  %i.ww = icmp samesign ult i8 %i.wv, 32
  br i1 %i.ww, label %.lr.ph.i285.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1:   ; preds = %bb.br, %bb.bp
  %.sroa.0320.18.1 = phi i32 [ %.sroa.0320.15, %bb.bp ], [ %.sroa.0320.27.1, %bb.br ]
  %.sroa.38.18.1 = phi i32 [ %.sroa.38.15, %bb.bp ], [ %.sroa.38.27.1, %bb.br ]
  %.sroa.84339.18.1 = phi i64 [ %.sroa.84339.15, %bb.bp ], [ %i.wt, %bb.br ] ; 2 uses
  %.sroa.52.18.1 = phi i8 [ %.sroa.52.15, %bb.bp ], [ %i.wv, %bb.br ]
  %.mask522.1 = and i32 %i.td, 255
  %i.wx = zext nneg i32 %.mask522.1 to i64        ; 2 uses
  %notmask.i266.1 = shl nsw i64 -1, %i.wx
  %i.wy = xor i64 %notmask.i266.1, -1
  %i.wz = and i64 %.sroa.84339.18.1, %i.wy
  %i.xa = lshr i64 %.sroa.84339.18.1, %i.wx
  %i.xb = sub i8 %.sroa.52.18.1, %i.wa
  %i.xc = trunc i64 %i.wz to i32
  %i.xd = shl nuw i32 %i.vy, %i.td
  %i.xe = add nsw i32 %i.xd, %i.xc
  br label %jpeg2000_decode_mag_sgn.exit260.1

jpeg2000_decode_mag_sgn.exit260.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1, %bb.bo
  %.sroa.0320.15.1 = phi i32 [ %.sroa.0320.18.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.0320.15, %bb.bo ] ; 4 uses
  %.sroa.38.15.1 = phi i32 [ %.sroa.38.18.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.38.15, %bb.bo ] ; 4 uses
  %.sroa.84339.15.1 = phi i64 [ %i.xa, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.84339.15, %bb.bo ] ; 3 uses
  %.sroa.52.15.1 = phi i8 [ %i.xb, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.52.15, %bb.bo ] ; 5 uses
  %.0.i259.1 = phi i32 [ %i.xe, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ 0, %bb.bo ] ; 3 uses
  %.not.i218.1 = icmp eq i32 %i.ta, %i.tc
  br i1 %.not.i218.1, label %bb.bs, label %ff_clz_c.exit.i222.1

ff_clz_c.exit.i222.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit260.1
  %i.xf = lshr i32 %.0.i259.1, 1
  %i.xg = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.xf, i1 false)
  %i.xh = trunc nuw nsw i32 %i.xg to i8
  %i.xi = sub nuw nsw i8 33, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %i.eh, i64 %17
  store i8 %i.xi, ptr %i.xj, align 1, !tbaa !13
  %i.xk = ashr i32 %.0.i259.1, 1
  %i.xl = add nsw i32 %i.xk, 1
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %17
  %i.xn = shl i32 %i.xl, %i.eu
  %i.xo = shl i32 %.0.i259.1, 31
  %i.xp = or i32 %i.xo, %i.xn
  %i.xq = or i32 %i.xp, %i.ew
  store i32 %i.xq, ptr %i.xm, align 4, !tbaa !12
  br label %bb.bs

bb.bs:                                            ; preds = %ff_clz_c.exit.i222.1, %jpeg2000_decode_mag_sgn.exit260.1
  %i.xr = lshr i32 %i.ud, 2
  %i.xs = and i32 %i.xr, 1
  %i.xt = icmp sgt i32 %i.to, 0
  br i1 %i.xt, label %bb.bt, label %jpeg2000_decode_mag_sgn.exit260.2

bb.bt:                                            ; preds = %bb.bs
  %i.xu = trunc i32 %i.to to i8                   ; 2 uses
  %.not.i265.2 = icmp ule i8 %.sroa.52.15.1, %i.xu
  %i.xv = icmp ult i8 %.sroa.52.15.1, 32
  %or.cond482.2 = and i1 %i.xv, %.not.i265.2
  br i1 %or.cond482.2, label %.lr.ph.i285.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2

.lr.ph.i285.2:                                    ; preds = %bb.bt, %bb.bv
  %.sroa.0320.26.2 = phi i32 [ %.sroa.0320.27.2, %bb.bv ], [ %.sroa.0320.15.1, %bb.bt ]
  %.sroa.38.26.2 = phi i32 [ %.sroa.38.27.2, %bb.bv ], [ %.sroa.38.15.1, %bb.bt ]
  %i.xw = phi i64 [ %i.yn, %bb.bv ], [ %.sroa.84339.15.1, %bb.bt ]
  %i.xx = phi i32 [ %i.yi, %bb.bv ], [ %.sroa.0320.15.1, %bb.bt ] ; 4 uses
  %i.xy = phi i32 [ %i.yj, %bb.bv ], [ %.sroa.38.15.1, %bb.bt ] ; 2 uses
  %i.xz = phi i8 [ %i.yp, %bb.bv ], [ %.sroa.52.15.1, %bb.bt ] ; 2 uses
  %i.ya = icmp eq i32 %i.xy, 255
  %i.yb = icmp ult i32 %i.xx, %i.cl
  br i1 %i.yb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i285.2
  %i.yc = sext i32 %i.xx to i64
  %i.yd = getelementptr inbounds i8, ptr %i.bc, i64 %i.yc
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !13  ; 2 uses
  %i.yf = zext i8 %i.ye to i32                    ; 2 uses
  %i.yg = add nuw nsw i32 %i.xx, 1                ; 2 uses
  %i.yh = zext i8 %i.ye to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph.i285.2
  %.sroa.0320.27.2 = phi i32 [ %i.yg, %bb.bu ], [ %.sroa.0320.26.2, %.lr.ph.i285.2 ] ; 2 uses
  %.sroa.38.27.2 = phi i32 [ %i.yf, %bb.bu ], [ %.sroa.38.26.2, %.lr.ph.i285.2 ] ; 2 uses
  %i.yi = phi i32 [ %i.yg, %bb.bu ], [ %i.xx, %.lr.ph.i285.2 ]
  %i.yj = phi i32 [ %i.yf, %bb.bu ], [ %i.xy, %.lr.ph.i285.2 ]
  %i.yk = phi i64 [ %i.yh, %bb.bu ], [ 255, %.lr.ph.i285.2 ]
  %i.yl = zext nneg i8 %i.xz to i64
  %i.ym = shl nuw nsw i64 %i.yk, %i.yl
  %i.yn = or i64 %i.ym, %i.xw                     ; 2 uses
  %i.yo = select i1 %i.ya, i8 7, i8 8
  %i.yp = add nuw nsw i8 %i.yo, %i.xz             ; 3 uses
  %i.yq = icmp samesign ult i8 %i.yp, 32
  br i1 %i.yq, label %.lr.ph.i285.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2:   ; preds = %bb.bv, %bb.bt
  %.sroa.0320.18.2 = phi i32 [ %.sroa.0320.15.1, %bb.bt ], [ %.sroa.0320.27.2, %bb.bv ]
  %.sroa.38.18.2 = phi i32 [ %.sroa.38.15.1, %bb.bt ], [ %.sroa.38.27.2, %bb.bv ]
  %.sroa.84339.18.2 = phi i64 [ %.sroa.84339.15.1, %bb.bt ], [ %i.yn, %bb.bv ] ; 2 uses
  %.sroa.52.18.2 = phi i8 [ %.sroa.52.15.1, %bb.bt ], [ %i.yp, %bb.bv ]
  %.mask522.2 = and i32 %i.to, 255
  %i.yr = zext nneg i32 %.mask522.2 to i64        ; 2 uses
  %notmask.i266.2 = shl nsw i64 -1, %i.yr
  %i.ys = xor i64 %notmask.i266.2, -1
  %i.yt = and i64 %.sroa.84339.18.2, %i.ys
  %i.yu = lshr i64 %.sroa.84339.18.2, %i.yr
  %i.yv = sub i8 %.sroa.52.18.2, %i.xu
  %i.yw = trunc i64 %i.yt to i32
  %i.yx = shl nuw i32 %i.xs, %i.to
  %i.yy = add nsw i32 %i.yx, %i.yw
  br label %jpeg2000_decode_mag_sgn.exit260.2

jpeg2000_decode_mag_sgn.exit260.2:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2, %bb.bs
  %.sroa.0320.15.2 = phi i32 [ %.sroa.0320.18.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ %.sroa.0320.15.1, %bb.bs ] ; 4 uses
  %.sroa.38.15.2 = phi i32 [ %.sroa.38.18.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ %.sroa.38.15.1, %bb.bs ] ; 4 uses
  %.sroa.84339.15.2 = phi i64 [ %i.yu, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ %.sroa.84339.15.1, %bb.bs ] ; 3 uses
  %.sroa.52.15.2 = phi i8 [ %i.yv, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ %.sroa.52.15.1, %bb.bs ] ; 5 uses
  %.0.i259.2 = phi i32 [ %i.yy, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ 0, %bb.bs ] ; 3 uses
  %.not.i218.2 = icmp eq i32 %i.tl, %i.tn
  br i1 %.not.i218.2, label %bb.bw, label %ff_clz_c.exit.i222.2

ff_clz_c.exit.i222.2:                             ; preds = %jpeg2000_decode_mag_sgn.exit260.2
  %i.yz = lshr i32 %.0.i259.2, 1
  %i.za = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.yz, i1 false)
  %i.zb = trunc nuw nsw i32 %i.za to i8
  %i.zc = sub nuw nsw i8 33, %i.zb
  %i.zd = getelementptr inbounds nuw i8, ptr %i.eh, i64 %22
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !13
  %i.ze = ashr i32 %.0.i259.2, 1
  %i.zf = add nsw i32 %i.ze, 1
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %22
  %i.zh = shl i32 %i.zf, %i.eu
  %i.zi = shl i32 %.0.i259.2, 31
  %i.zj = or i32 %i.zi, %i.zh
  %i.zk = or i32 %i.zj, %i.ew
  store i32 %i.zk, ptr %i.zg, align 4, !tbaa !12
  br label %bb.bw

bb.bw:                                            ; preds = %ff_clz_c.exit.i222.2, %jpeg2000_decode_mag_sgn.exit260.2
  %i.zl = lshr i32 %i.ud, 3
  %i.zm = icmp sgt i32 %i.ty, 0
  br i1 %i.zm, label %bb.bx, label %jpeg2000_decode_mag_sgn.exit260.3

bb.bx:                                            ; preds = %bb.bw
  %i.zn = trunc i32 %i.ty to i8                   ; 2 uses
  %.not.i265.3 = icmp ule i8 %.sroa.52.15.2, %i.zn
  %i.zo = icmp ult i8 %.sroa.52.15.2, 32
  %or.cond482.3 = and i1 %i.zo, %.not.i265.3
  br i1 %or.cond482.3, label %.lr.ph.i285.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3

.lr.ph.i285.3:                                    ; preds = %bb.bx, %bb.bz
  %.sroa.0320.26.3 = phi i32 [ %.sroa.0320.27.3, %bb.bz ], [ %.sroa.0320.15.2, %bb.bx ]
  %.sroa.38.26.3 = phi i32 [ %.sroa.38.27.3, %bb.bz ], [ %.sroa.38.15.2, %bb.bx ]
  %i.zp = phi i64 [ %i.aag, %bb.bz ], [ %.sroa.84339.15.2, %bb.bx ]
  %i.zq = phi i32 [ %i.aab, %bb.bz ], [ %.sroa.0320.15.2, %bb.bx ] ; 4 uses
  %i.zr = phi i32 [ %i.aac, %bb.bz ], [ %.sroa.38.15.2, %bb.bx ] ; 2 uses
  %i.zs = phi i8 [ %i.aai, %bb.bz ], [ %.sroa.52.15.2, %bb.bx ] ; 2 uses
  %i.zt = icmp eq i32 %i.zr, 255
  %i.zu = icmp ult i32 %i.zq, %i.cl
  br i1 %i.zu, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph.i285.3
  %i.zv = sext i32 %i.zq to i64
  %i.zw = getelementptr inbounds i8, ptr %i.bc, i64 %i.zv
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !13  ; 2 uses
  %i.zy = zext i8 %i.zx to i32                    ; 2 uses
  %i.zz = add nuw nsw i32 %i.zq, 1                ; 2 uses
  %i.aaa = zext i8 %i.zx to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph.i285.3
  %.sroa.0320.27.3 = phi i32 [ %i.zz, %bb.by ], [ %.sroa.0320.26.3, %.lr.ph.i285.3 ] ; 2 uses
  %.sroa.38.27.3 = phi i32 [ %i.zy, %bb.by ], [ %.sroa.38.26.3, %.lr.ph.i285.3 ] ; 2 uses
  %i.aab = phi i32 [ %i.zz, %bb.by ], [ %i.zq, %.lr.ph.i285.3 ]
  %i.aac = phi i32 [ %i.zy, %bb.by ], [ %i.zr, %.lr.ph.i285.3 ]
  %i.aad = phi i64 [ %i.aaa, %bb.by ], [ 255, %.lr.ph.i285.3 ]
  %i.aae = zext nneg i8 %i.zs to i64
  %i.aaf = shl nuw nsw i64 %i.aad, %i.aae
  %i.aag = or i64 %i.aaf, %i.zp                   ; 2 uses
  %i.aah = select i1 %i.zt, i8 7, i8 8
  %i.aai = add nuw nsw i8 %i.aah, %i.zs           ; 3 uses
  %i.aaj = icmp samesign ult i8 %i.aai, 32
  br i1 %i.aaj, label %.lr.ph.i285.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3:   ; preds = %bb.bz, %bb.bx
  %.sroa.0320.18.3 = phi i32 [ %.sroa.0320.15.2, %bb.bx ], [ %.sroa.0320.27.3, %bb.bz ]
  %.sroa.38.18.3 = phi i32 [ %.sroa.38.15.2, %bb.bx ], [ %.sroa.38.27.3, %bb.bz ]
  %.sroa.84339.18.3 = phi i64 [ %.sroa.84339.15.2, %bb.bx ], [ %i.aag, %bb.bz ] ; 2 uses
  %.sroa.52.18.3 = phi i8 [ %.sroa.52.15.2, %bb.bx ], [ %i.aai, %bb.bz ]
  %.mask522.3 = and i32 %i.ty, 255
  %i.aak = zext nneg i32 %.mask522.3 to i64       ; 2 uses
  %notmask.i266.3 = shl nsw i64 -1, %i.aak
  %i.aal = xor i64 %notmask.i266.3, -1
  %i.aam = and i64 %.sroa.84339.18.3, %i.aal
  %i.aan = lshr i64 %.sroa.84339.18.3, %i.aak
  %i.aao = sub i8 %.sroa.52.18.3, %i.zn
  %i.aap = trunc i64 %i.aam to i32
  %i.aaq = shl nuw i32 %i.zl, %i.ty
  %i.aar = add nsw i32 %i.aaq, %i.aap
  br label %jpeg2000_decode_mag_sgn.exit260.3

jpeg2000_decode_mag_sgn.exit260.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3, %bb.bw
  %.sroa.0320.15.3 = phi i32 [ %.sroa.0320.18.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ %.sroa.0320.15.2, %bb.bw ] ; 4 uses
  %.sroa.38.15.3 = phi i32 [ %.sroa.38.18.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ %.sroa.38.15.2, %bb.bw ] ; 4 uses
  %.sroa.84339.15.3 = phi i64 [ %i.aan, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ %.sroa.84339.15.2, %bb.bw ] ; 3 uses
  %.sroa.52.15.3 = phi i8 [ %i.aao, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ %.sroa.52.15.2, %bb.bw ] ; 5 uses
  %.0.i259.3 = phi i32 [ %i.aar, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ 0, %bb.bw ] ; 3 uses
  %.not.i218.3 = icmp eq i32 %i.tw, %i.tx
  br i1 %.not.i218.3, label %recover_mag_sgn.exit223, label %ff_clz_c.exit.i222.3

ff_clz_c.exit.i222.3:                             ; preds = %jpeg2000_decode_mag_sgn.exit260.3
  %i.aas = lshr i32 %.0.i259.3, 1
  %i.aat = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aas, i1 false)
  %i.aau = trunc nuw nsw i32 %i.aat to i8
  %i.aav = sub nuw nsw i8 33, %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.eh, i64 %27
  store i8 %i.aav, ptr %i.aaw, align 1, !tbaa !13
  %i.aax = ashr i32 %.0.i259.3, 1
  %i.aay = add nsw i32 %i.aax, 1
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %27
  %i.aba = shl i32 %i.aay, %i.eu
  %i.abb = shl i32 %.0.i259.3, 31
  %i.abc = or i32 %i.abb, %i.aba
  %i.abd = or i32 %i.abc, %i.ew
  store i32 %i.abd, ptr %i.aaz, align 4, !tbaa !12
  br label %recover_mag_sgn.exit223

recover_mag_sgn.exit223:                          ; preds = %ff_clz_c.exit.i222.3, %jpeg2000_decode_mag_sgn.exit260.3
  %i.abe = zext nneg i8 %i.ia to i32              ; 4 uses
  %i.abf = and i32 %i.abe, 1
  %i.abg = icmp sgt i32 %i.sx, 0
  br i1 %i.abg, label %bb.ca, label %jpeg2000_decode_mag_sgn.exit262

bb.ca:                                            ; preds = %recover_mag_sgn.exit223
  %i.abh = trunc i32 %i.sx to i8                  ; 2 uses
  %.not.i263 = icmp ule i8 %.sroa.52.15.3, %i.abh
  %i.abi = icmp ult i8 %.sroa.52.15.3, 32
  %or.cond483 = and i1 %i.abi, %.not.i263
  br i1 %or.cond483, label %.lr.ph.i291, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit

.lr.ph.i291:                                      ; preds = %bb.ca, %bb.cc
  %.sroa.0320.29 = phi i32 [ %.sroa.0320.30, %bb.cc ], [ %.sroa.0320.15.3, %bb.ca ]
  %.sroa.38.29 = phi i32 [ %.sroa.38.30, %bb.cc ], [ %.sroa.38.15.3, %bb.ca ]
  %i.abj = phi i64 [ %i.aca, %bb.cc ], [ %.sroa.84339.15.3, %bb.ca ]
  %i.abk = phi i32 [ %i.abv, %bb.cc ], [ %.sroa.0320.15.3, %bb.ca ] ; 4 uses
  %i.abl = phi i32 [ %i.abw, %bb.cc ], [ %.sroa.38.15.3, %bb.ca ] ; 2 uses
  %i.abm = phi i8 [ %i.acc, %bb.cc ], [ %.sroa.52.15.3, %bb.ca ] ; 2 uses
  %i.abn = icmp eq i32 %i.abl, 255
  %i.abo = icmp ult i32 %i.abk, %i.cl
  br i1 %i.abo, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i291
  %i.abp = sext i32 %i.abk to i64
  %i.abq = getelementptr inbounds i8, ptr %i.bc, i64 %i.abp
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !13 ; 2 uses
  %i.abs = zext i8 %i.abr to i32                  ; 2 uses
  %i.abt = add nuw nsw i32 %i.abk, 1              ; 2 uses
  %i.abu = zext i8 %i.abr to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i291
  %.sroa.0320.30 = phi i32 [ %i.abt, %bb.cb ], [ %.sroa.0320.29, %.lr.ph.i291 ] ; 2 uses
  %.sroa.38.30 = phi i32 [ %i.abs, %bb.cb ], [ %.sroa.38.29, %.lr.ph.i291 ] ; 2 uses
  %i.abv = phi i32 [ %i.abt, %bb.cb ], [ %i.abk, %.lr.ph.i291 ]
  %i.abw = phi i32 [ %i.abs, %bb.cb ], [ %i.abl, %.lr.ph.i291 ]
  %i.abx = phi i64 [ %i.abu, %bb.cb ], [ 255, %.lr.ph.i291 ]
  %i.aby = zext nneg i8 %i.abm to i64
  %i.abz = shl nuw nsw i64 %i.abx, %i.aby
  %i.aca = or i64 %i.abz, %i.abj                  ; 2 uses
  %i.acb = select i1 %i.abn, i8 7, i8 8
  %i.acc = add nuw nsw i8 %i.acb, %i.abm          ; 3 uses
  %i.acd = icmp samesign ult i8 %i.acc, 32
  br i1 %i.acd, label %.lr.ph.i291, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit:        ; preds = %bb.cc, %bb.ca
  %.sroa.0320.17 = phi i32 [ %.sroa.0320.15.3, %bb.ca ], [ %.sroa.0320.30, %bb.cc ]
  %.sroa.38.17 = phi i32 [ %.sroa.38.15.3, %bb.ca ], [ %.sroa.38.30, %bb.cc ]
  %.sroa.84339.17 = phi i64 [ %.sroa.84339.15.3, %bb.ca ], [ %i.aca, %bb.cc ] ; 2 uses
  %.sroa.52.17 = phi i8 [ %.sroa.52.15.3, %bb.ca ], [ %i.acc, %bb.cc ]
  %.mask521 = and i32 %i.sx, 255
  %i.ace = zext nneg i32 %.mask521 to i64         ; 2 uses
  %notmask.i264 = shl nsw i64 -1, %i.ace
  %i.acf = xor i64 %notmask.i264, -1
  %i.acg = and i64 %.sroa.84339.17, %i.acf
  %i.ach = lshr i64 %.sroa.84339.17, %i.ace
  %i.aci = sub i8 %.sroa.52.17, %i.abh
  %i.acj = trunc i64 %i.acg to i32
  %i.ack = shl nuw i32 %i.abf, %i.sx
  %i.acl = add nsw i32 %i.ack, %i.acj
  br label %jpeg2000_decode_mag_sgn.exit262

jpeg2000_decode_mag_sgn.exit262:                  ; preds = %recover_mag_sgn.exit223, %jpeg2000_bitbuf_get_bits_lsb_forward.exit
  %.sroa.0320.16 = phi i32 [ %.sroa.0320.17, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ %.sroa.0320.15.3, %recover_mag_sgn.exit223 ] ; 4 uses
  %.sroa.38.16 = phi i32 [ %.sroa.38.17, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ %.sroa.38.15.3, %recover_mag_sgn.exit223 ] ; 4 uses
  %.sroa.84339.16 = phi i64 [ %i.ach, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ %.sroa.84339.15.3, %recover_mag_sgn.exit223 ] ; 3 uses
  %.sroa.52.16 = phi i8 [ %i.aci, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ %.sroa.52.15.3, %recover_mag_sgn.exit223 ] ; 5 uses
  %.0.i261 = phi i32 [ %i.acl, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ 0, %recover_mag_sgn.exit223 ] ; 3 uses
  %.not.i216 = icmp eq i32 %i.sv, %i.sw
  br i1 %.not.i216, label %bb.cd, label %ff_clz_c.exit.i

ff_clz_c.exit.i:                                  ; preds = %jpeg2000_decode_mag_sgn.exit262
  %i.acm = lshr i32 %.0.i261, 1
  %i.acn = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.acm, i1 false)
  %i.aco = trunc nuw nsw i32 %i.acn to i8
  %i.acp = sub nuw nsw i8 33, %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.if
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !13
  %i.acr = ashr i32 %.0.i261, 1
  %i.acs = add nsw i32 %i.acr, 1
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.if
  %i.acu = shl i32 %i.acs, %i.eu
  %i.acv = shl i32 %.0.i261, 31
  %i.acw = or i32 %i.acv, %i.acu
  %i.acx = or i32 %i.acw, %i.ew
  store i32 %i.acx, ptr %i.act, align 4, !tbaa !12
  br label %bb.cd

bb.cd:                                            ; preds = %ff_clz_c.exit.i, %jpeg2000_decode_mag_sgn.exit262
  %i.acy = lshr i32 %i.abe, 1
  %i.acz = and i32 %i.acy, 1
  %i.ada = icmp sgt i32 %i.ti, 0
  br i1 %i.ada, label %bb.ce, label %jpeg2000_decode_mag_sgn.exit262.1

bb.ce:                                            ; preds = %bb.cd
  %i.adb = trunc i32 %i.ti to i8                  ; 2 uses
  %.not.i263.1 = icmp ule i8 %.sroa.52.16, %i.adb
  %i.adc = icmp ult i8 %.sroa.52.16, 32
  %or.cond483.1 = and i1 %i.adc, %.not.i263.1
  br i1 %or.cond483.1, label %.lr.ph.i291.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1

.lr.ph.i291.1:                                    ; preds = %bb.ce, %bb.cg
  %.sroa.0320.29.1 = phi i32 [ %.sroa.0320.30.1, %bb.cg ], [ %.sroa.0320.16, %bb.ce ]
  %.sroa.38.29.1 = phi i32 [ %.sroa.38.30.1, %bb.cg ], [ %.sroa.38.16, %bb.ce ]
  %i.add = phi i64 [ %i.adu, %bb.cg ], [ %.sroa.84339.16, %bb.ce ]
  %i.ade = phi i32 [ %i.adp, %bb.cg ], [ %.sroa.0320.16, %bb.ce ] ; 4 uses
  %i.adf = phi i32 [ %i.adq, %bb.cg ], [ %.sroa.38.16, %bb.ce ] ; 2 uses
  %i.adg = phi i8 [ %i.adw, %bb.cg ], [ %.sroa.52.16, %bb.ce ] ; 2 uses
  %i.adh = icmp eq i32 %i.adf, 255
  %i.adi = icmp ult i32 %i.ade, %i.cl
  br i1 %i.adi, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.i291.1
  %i.adj = sext i32 %i.ade to i64
  %i.adk = getelementptr inbounds i8, ptr %i.bc, i64 %i.adj
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !13 ; 2 uses
  %i.adm = zext i8 %i.adl to i32                  ; 2 uses
  %i.adn = add nuw nsw i32 %i.ade, 1              ; 2 uses
  %i.ado = zext i8 %i.adl to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i291.1
  %.sroa.0320.30.1 = phi i32 [ %i.adn, %bb.cf ], [ %.sroa.0320.29.1, %.lr.ph.i291.1 ] ; 2 uses
  %.sroa.38.30.1 = phi i32 [ %i.adm, %bb.cf ], [ %.sroa.38.29.1, %.lr.ph.i291.1 ] ; 2 uses
  %i.adp = phi i32 [ %i.adn, %bb.cf ], [ %i.ade, %.lr.ph.i291.1 ]
  %i.adq = phi i32 [ %i.adm, %bb.cf ], [ %i.adf, %.lr.ph.i291.1 ]
  %i.adr = phi i64 [ %i.ado, %bb.cf ], [ 255, %.lr.ph.i291.1 ]
  %i.ads = zext nneg i8 %i.adg to i64
  %i.adt = shl nuw nsw i64 %i.adr, %i.ads
  %i.adu = or i64 %i.adt, %i.add                  ; 2 uses
  %i.adv = select i1 %i.adh, i8 7, i8 8
  %i.adw = add nuw nsw i8 %i.adv, %i.adg          ; 3 uses
  %i.adx = icmp samesign ult i8 %i.adw, 32
  br i1 %i.adx, label %.lr.ph.i291.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.1:      ; preds = %bb.cg, %bb.ce
  %.sroa.0320.17.1 = phi i32 [ %.sroa.0320.16, %bb.ce ], [ %.sroa.0320.30.1, %bb.cg ]
  %.sroa.38.17.1 = phi i32 [ %.sroa.38.16, %bb.ce ], [ %.sroa.38.30.1, %bb.cg ]
  %.sroa.84339.17.1 = phi i64 [ %.sroa.84339.16, %bb.ce ], [ %i.adu, %bb.cg ] ; 2 uses
  %.sroa.52.17.1 = phi i8 [ %.sroa.52.16, %bb.ce ], [ %i.adw, %bb.cg ]
  %.mask521.1 = and i32 %i.ti, 255
  %i.ady = zext nneg i32 %.mask521.1 to i64       ; 2 uses
  %notmask.i264.1 = shl nsw i64 -1, %i.ady
  %i.adz = xor i64 %notmask.i264.1, -1
  %i.aea = and i64 %.sroa.84339.17.1, %i.adz
  %i.aeb = lshr i64 %.sroa.84339.17.1, %i.ady
  %i.aec = sub i8 %.sroa.52.17.1, %i.adb
  %i.aed = trunc i64 %i.aea to i32
  %i.aee = shl nuw i32 %i.acz, %i.ti
  %i.aef = add nsw i32 %i.aee, %i.aed
  br label %jpeg2000_decode_mag_sgn.exit262.1

jpeg2000_decode_mag_sgn.exit262.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1, %bb.cd
  %.sroa.0320.16.1 = phi i32 [ %.sroa.0320.17.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ %.sroa.0320.16, %bb.cd ] ; 4 uses
  %.sroa.38.16.1 = phi i32 [ %.sroa.38.17.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ %.sroa.38.16, %bb.cd ] ; 4 uses
  %.sroa.84339.16.1 = phi i64 [ %i.aeb, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ %.sroa.84339.16, %bb.cd ] ; 3 uses
  %.sroa.52.16.1 = phi i8 [ %i.aec, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ %.sroa.52.16, %bb.cd ] ; 5 uses
  %.0.i261.1 = phi i32 [ %i.aef, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ 0, %bb.cd ] ; 3 uses
  %.not.i216.1 = icmp eq i32 %i.tf, %i.th
  br i1 %.not.i216.1, label %bb.ch, label %ff_clz_c.exit.i.1

ff_clz_c.exit.i.1:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.1
  %i.aeg = lshr i32 %.0.i261.1, 1
  %i.aeh = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aeg, i1 false)
  %i.aei = trunc nuw nsw i32 %i.aeh to i8
  %i.aej = sub nuw nsw i8 33, %i.aei
  %i.aek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %19
  store i8 %i.aej, ptr %i.aek, align 1, !tbaa !13
  %i.ael = ashr i32 %.0.i261.1, 1
  %i.aem = add nsw i32 %i.ael, 1
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %19
  %i.aeo = shl i32 %i.aem, %i.eu
  %i.aep = shl i32 %.0.i261.1, 31
  %i.aeq = or i32 %i.aep, %i.aeo
  %i.aer = or i32 %i.aeq, %i.ew
  store i32 %i.aer, ptr %i.aen, align 4, !tbaa !12
  br label %bb.ch

bb.ch:                                            ; preds = %ff_clz_c.exit.i.1, %jpeg2000_decode_mag_sgn.exit262.1
  %i.aes = lshr i32 %i.abe, 2
  %i.aet = and i32 %i.aes, 1
  %i.aeu = icmp sgt i32 %i.tt, 0
  br i1 %i.aeu, label %bb.ci, label %jpeg2000_decode_mag_sgn.exit262.2

bb.ci:                                            ; preds = %bb.ch
  %i.aev = trunc i32 %i.tt to i8                  ; 2 uses
  %.not.i263.2 = icmp ule i8 %.sroa.52.16.1, %i.aev
  %i.aew = icmp ult i8 %.sroa.52.16.1, 32
  %or.cond483.2 = and i1 %i.aew, %.not.i263.2
  br i1 %or.cond483.2, label %.lr.ph.i291.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2

.lr.ph.i291.2:                                    ; preds = %bb.ci, %bb.ck
  %.sroa.0320.29.2 = phi i32 [ %.sroa.0320.30.2, %bb.ck ], [ %.sroa.0320.16.1, %bb.ci ]
  %.sroa.38.29.2 = phi i32 [ %.sroa.38.30.2, %bb.ck ], [ %.sroa.38.16.1, %bb.ci ]
  %i.aex = phi i64 [ %i.afo, %bb.ck ], [ %.sroa.84339.16.1, %bb.ci ]
  %i.aey = phi i32 [ %i.afj, %bb.ck ], [ %.sroa.0320.16.1, %bb.ci ] ; 4 uses
  %i.aez = phi i32 [ %i.afk, %bb.ck ], [ %.sroa.38.16.1, %bb.ci ] ; 2 uses
  %i.afa = phi i8 [ %i.afq, %bb.ck ], [ %.sroa.52.16.1, %bb.ci ] ; 2 uses
  %i.afb = icmp eq i32 %i.aez, 255
  %i.afc = icmp ult i32 %i.aey, %i.cl
  br i1 %i.afc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph.i291.2
  %i.afd = sext i32 %i.aey to i64
  %i.afe = getelementptr inbounds i8, ptr %i.bc, i64 %i.afd
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !13 ; 2 uses
  %i.afg = zext i8 %i.aff to i32                  ; 2 uses
  %i.afh = add nuw nsw i32 %i.aey, 1              ; 2 uses
  %i.afi = zext i8 %i.aff to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.lr.ph.i291.2
  %.sroa.0320.30.2 = phi i32 [ %i.afh, %bb.cj ], [ %.sroa.0320.29.2, %.lr.ph.i291.2 ] ; 2 uses
  %.sroa.38.30.2 = phi i32 [ %i.afg, %bb.cj ], [ %.sroa.38.29.2, %.lr.ph.i291.2 ] ; 2 uses
  %i.afj = phi i32 [ %i.afh, %bb.cj ], [ %i.aey, %.lr.ph.i291.2 ]
  %i.afk = phi i32 [ %i.afg, %bb.cj ], [ %i.aez, %.lr.ph.i291.2 ]
  %i.afl = phi i64 [ %i.afi, %bb.cj ], [ 255, %.lr.ph.i291.2 ]
  %i.afm = zext nneg i8 %i.afa to i64
  %i.afn = shl nuw nsw i64 %i.afl, %i.afm
  %i.afo = or i64 %i.afn, %i.aex                  ; 2 uses
  %i.afp = select i1 %i.afb, i8 7, i8 8
  %i.afq = add nuw nsw i8 %i.afp, %i.afa          ; 3 uses
  %i.afr = icmp samesign ult i8 %i.afq, 32
  br i1 %i.afr, label %.lr.ph.i291.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.2:      ; preds = %bb.ck, %bb.ci
  %.sroa.0320.17.2 = phi i32 [ %.sroa.0320.16.1, %bb.ci ], [ %.sroa.0320.30.2, %bb.ck ]
  %.sroa.38.17.2 = phi i32 [ %.sroa.38.16.1, %bb.ci ], [ %.sroa.38.30.2, %bb.ck ]
  %.sroa.84339.17.2 = phi i64 [ %.sroa.84339.16.1, %bb.ci ], [ %i.afo, %bb.ck ] ; 2 uses
  %.sroa.52.17.2 = phi i8 [ %.sroa.52.16.1, %bb.ci ], [ %i.afq, %bb.ck ]
  %.mask521.2 = and i32 %i.tt, 255
  %i.afs = zext nneg i32 %.mask521.2 to i64       ; 2 uses
  %notmask.i264.2 = shl nsw i64 -1, %i.afs
  %i.aft = xor i64 %notmask.i264.2, -1
  %i.afu = and i64 %.sroa.84339.17.2, %i.aft
  %i.afv = lshr i64 %.sroa.84339.17.2, %i.afs
  %i.afw = sub i8 %.sroa.52.17.2, %i.aev
  %i.afx = trunc i64 %i.afu to i32
  %i.afy = shl nuw i32 %i.aet, %i.tt
  %i.afz = add nsw i32 %i.afy, %i.afx
  br label %jpeg2000_decode_mag_sgn.exit262.2

jpeg2000_decode_mag_sgn.exit262.2:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2, %bb.ch
  %.sroa.0320.16.2 = phi i32 [ %.sroa.0320.17.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.0320.16.1, %bb.ch ] ; 4 uses
  %.sroa.38.16.2 = phi i32 [ %.sroa.38.17.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.38.16.1, %bb.ch ] ; 4 uses
  %.sroa.84339.16.2 = phi i64 [ %i.afv, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.84339.16.1, %bb.ch ] ; 3 uses
  %.sroa.52.16.2 = phi i8 [ %i.afw, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.52.16.1, %bb.ch ] ; 5 uses
  %.0.i261.2 = phi i32 [ %i.afz, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ 0, %bb.ch ] ; 3 uses
  %.not.i216.2 = icmp eq i32 %i.tq, %i.ts
  br i1 %.not.i216.2, label %bb.cl, label %ff_clz_c.exit.i.2

ff_clz_c.exit.i.2:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.2
  %i.aga = lshr i32 %.0.i261.2, 1
  %i.agb = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aga, i1 false)
  %i.agc = trunc nuw nsw i32 %i.agb to i8
  %i.agd = sub nuw nsw i8 33, %i.agc
  %i.age = getelementptr inbounds nuw i8, ptr %i.eh, i64 %24
  store i8 %i.agd, ptr %i.age, align 1, !tbaa !13
  %i.agf = ashr i32 %.0.i261.2, 1
  %i.agg = add nsw i32 %i.agf, 1
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %24
  %i.agi = shl i32 %i.agg, %i.eu
  %i.agj = shl i32 %.0.i261.2, 31
  %i.agk = or i32 %i.agj, %i.agi
  %i.agl = or i32 %i.agk, %i.ew
  store i32 %i.agl, ptr %i.agh, align 4, !tbaa !12
  br label %bb.cl

bb.cl:                                            ; preds = %ff_clz_c.exit.i.2, %jpeg2000_decode_mag_sgn.exit262.2
  %i.agm = lshr i32 %i.abe, 3
  %i.agn = icmp sgt i32 %i.uc, 0
  br i1 %i.agn, label %bb.cm, label %jpeg2000_decode_mag_sgn.exit262.3

bb.cm:                                            ; preds = %bb.cl
  %i.ago = trunc i32 %i.uc to i8                  ; 2 uses
  %.not.i263.3 = icmp ule i8 %.sroa.52.16.2, %i.ago
  %i.agp = icmp ult i8 %.sroa.52.16.2, 32
  %or.cond483.3 = and i1 %i.agp, %.not.i263.3
  br i1 %or.cond483.3, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3

.lr.ph.i291.3:                                    ; preds = %bb.cm, %bb.co
  %.sroa.0320.29.3 = phi i32 [ %.sroa.0320.30.3, %bb.co ], [ %.sroa.0320.16.2, %bb.cm ]
  %.sroa.38.29.3 = phi i32 [ %.sroa.38.30.3, %bb.co ], [ %.sroa.38.16.2, %bb.cm ]
  %i.agq = phi i64 [ %i.ahh, %bb.co ], [ %.sroa.84339.16.2, %bb.cm ]
  %i.agr = phi i32 [ %i.ahc, %bb.co ], [ %.sroa.0320.16.2, %bb.cm ] ; 4 uses
  %i.ags = phi i32 [ %i.ahd, %bb.co ], [ %.sroa.38.16.2, %bb.cm ] ; 2 uses
  %i.agt = phi i8 [ %i.ahj, %bb.co ], [ %.sroa.52.16.2, %bb.cm ] ; 2 uses
  %i.agu = icmp eq i32 %i.ags, 255
  %i.agv = icmp ult i32 %i.agr, %i.cl
  br i1 %i.agv, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i291.3
  %i.agw = sext i32 %i.agr to i64
  %i.agx = getelementptr inbounds i8, ptr %i.bc, i64 %i.agw
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !13 ; 2 uses
  %i.agz = zext i8 %i.agy to i32                  ; 2 uses
  %i.aha = add nuw nsw i32 %i.agr, 1              ; 2 uses
  %i.ahb = zext i8 %i.agy to i64
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph.i291.3
  %.sroa.0320.30.3 = phi i32 [ %i.aha, %bb.cn ], [ %.sroa.0320.29.3, %.lr.ph.i291.3 ] ; 2 uses
  %.sroa.38.30.3 = phi i32 [ %i.agz, %bb.cn ], [ %.sroa.38.29.3, %.lr.ph.i291.3 ] ; 2 uses
  %i.ahc = phi i32 [ %i.aha, %bb.cn ], [ %i.agr, %.lr.ph.i291.3 ]
  %i.ahd = phi i32 [ %i.agz, %bb.cn ], [ %i.ags, %.lr.ph.i291.3 ]
  %i.ahe = phi i64 [ %i.ahb, %bb.cn ], [ 255, %.lr.ph.i291.3 ]
  %i.ahf = zext nneg i8 %i.agt to i64
  %i.ahg = shl nuw nsw i64 %i.ahe, %i.ahf
  %i.ahh = or i64 %i.ahg, %i.agq                  ; 2 uses
  %i.ahi = select i1 %i.agu, i8 7, i8 8
  %i.ahj = add nuw nsw i8 %i.ahi, %i.agt          ; 3 uses
  %i.ahk = icmp samesign ult i8 %i.ahj, 32
  br i1 %i.ahk, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.3:      ; preds = %bb.co, %bb.cm
  %.sroa.0320.17.3 = phi i32 [ %.sroa.0320.16.2, %bb.cm ], [ %.sroa.0320.30.3, %bb.co ]
  %.sroa.38.17.3 = phi i32 [ %.sroa.38.16.2, %bb.cm ], [ %.sroa.38.30.3, %bb.co ]
  %.sroa.84339.17.3 = phi i64 [ %.sroa.84339.16.2, %bb.cm ], [ %i.ahh, %bb.co ] ; 2 uses
  %.sroa.52.17.3 = phi i8 [ %.sroa.52.16.2, %bb.cm ], [ %i.ahj, %bb.co ]
  %.mask521.3 = and i32 %i.uc, 255
  %i.ahl = zext nneg i32 %.mask521.3 to i64       ; 2 uses
  %notmask.i264.3 = shl nsw i64 -1, %i.ahl
  %i.ahm = xor i64 %notmask.i264.3, -1
  %i.ahn = and i64 %.sroa.84339.17.3, %i.ahm
  %i.aho = lshr i64 %.sroa.84339.17.3, %i.ahl
  %i.ahp = sub i8 %.sroa.52.17.3, %i.ago
  %i.ahq = trunc i64 %i.ahn to i32
  %i.ahr = shl nuw i32 %i.agm, %i.uc
  %i.ahs = add nsw i32 %i.ahr, %i.ahq
  br label %jpeg2000_decode_mag_sgn.exit262.3

jpeg2000_decode_mag_sgn.exit262.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, %bb.cl
  %.sroa.0320.16.3 = phi i32 [ %.sroa.0320.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.0320.16.2, %bb.cl ] ; 2 uses
  %.sroa.38.16.3 = phi i32 [ %.sroa.38.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.38.16.2, %bb.cl ] ; 2 uses
  %.sroa.84339.16.3 = phi i64 [ %i.aho, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.84339.16.2, %bb.cl ] ; 2 uses
  %.sroa.52.16.3 = phi i8 [ %i.ahp, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.52.16.2, %bb.cl ] ; 2 uses
  %.0.i261.3 = phi i32 [ %i.ahs, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ 0, %bb.cl ] ; 3 uses
  %.not.i216.3 = icmp eq i32 %i.ua, %i.ub
  br i1 %.not.i216.3, label %recover_mag_sgn.exit, label %ff_clz_c.exit.i.3

ff_clz_c.exit.i.3:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.3
  %i.aht = lshr i32 %.0.i261.3, 1
  %i.ahu = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aht, i1 false)
  %i.ahv = trunc nuw nsw i32 %i.ahu to i8
  %i.ahw = sub nuw nsw i8 33, %i.ahv
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.eh, i64 %29
  store i8 %i.ahw, ptr %i.ahx, align 1, !tbaa !13
  %i.ahy = ashr i32 %.0.i261.3, 1
  %i.ahz = add nsw i32 %i.ahy, 1
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %29
  %i.aib = shl i32 %i.ahz, %i.eu
  %i.aic = shl i32 %.0.i261.3, 31
  %i.aid = or i32 %i.aic, %i.aib
  %i.aie = or i32 %i.aid, %i.ew
  store i32 %i.aie, ptr %i.aia, align 4, !tbaa !12
  br label %recover_mag_sgn.exit

recover_mag_sgn.exit:                             ; preds = %ff_clz_c.exit.i.3, %jpeg2000_decode_mag_sgn.exit262.3
  %i.aif = add i16 %.0659.i631, 2                 ; 3 uses
  %i.aig = zext i16 %i.aif to i32                 ; 3 uses
  %i.aih = icmp sgt i32 %i.em, %i.aig
  br i1 %i.aih, label %bb.x, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %recover_mag_sgn.exit
  store i8 %i.id, ptr %i.eq, align 1
  store i8 %i.ic, ptr %i.er, align 1
  store i8 %i.ib, ptr %i.es, align 1
  store i8 %i.ia, ptr %i.et, align 1
  %i.aii = shl nuw nsw i32 %i.aig, 2
  %i.aij = zext nneg i32 %i.aii to i64
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge, %.preheader532
  %.lcssa620 = phi i8 [ %i.fx, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa615 = phi i8 [ %i.fy, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa610 = phi i8 [ %i.fz, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa605 = phi i8 [ %i.ga, %._crit_edge ], [ 0, %.preheader532 ]
  %.sroa.0320.0.lcssa = phi i32 [ %.sroa.0320.16.3, %._crit_edge ], [ %.sroa.0320.24, %.preheader532 ] ; 5 uses
  %.sroa.38.0.lcssa = phi i32 [ %.sroa.38.16.3, %._crit_edge ], [ %.sroa.38.24, %.preheader532 ] ; 5 uses
  %.sroa.84339.0.lcssa = phi i64 [ %.sroa.84339.16.3, %._crit_edge ], [ %i.de, %.preheader532 ] ; 4 uses
  %.sroa.52.0.lcssa = phi i8 [ %.sroa.52.16.3, %._crit_edge ], [ %i.dg, %.preheader532 ] ; 6 uses
  %.0677.i.lcssa = phi i16 [ %i.je, %._crit_edge ], [ 0, %.preheader532 ]
  %.0659.i.lcssa = phi i16 [ %i.aif, %._crit_edge ], [ 0, %.preheader532 ] ; 2 uses
  %.lcssa558 = phi i64 [ %i.aij, %._crit_edge ], [ 0, %.preheader532 ] ; 6 uses
  store i8 %.lcssa605, ptr %i.b, align 2
  store i8 %.lcssa610, ptr %i.a, align 2
  store i8 %.lcssa615, ptr %i.c, align 2
  store i8 %.lcssa620, ptr %i.d, align 2
  %i.aik = and i32 %i.dz, 1
  %.not.i = icmp eq i32 %i.aik, 0                 ; 2 uses
  br i1 %.not.i, label %bb.dn, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table0, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.0677.i.lcssa, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.ail = load i8, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.aim = and i8 %i.ail, 1
  %i.ain = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.lcssa558 ; 2 uses
  store i8 %i.aim, ptr %i.ain, align 1, !tbaa !13
  %i.aio = lshr i8 %i.ail, 1
  %i.aip = and i8 %i.aio, 1                       ; 2 uses
  %i.aiq = add nuw nsw i64 %.lcssa558, 1          ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.aiq
  store i8 %i.aip, ptr %i.air, align 1, !tbaa !13
  %i.ais = lshr i8 %i.ail, 2
  %i.ait = and i8 %i.ais, 1                       ; 2 uses
  %i.aiu = add nuw nsw i64 %.lcssa558, 2          ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.aiu
  store i8 %i.ait, ptr %i.aiv, align 1, !tbaa !13
  %i.aiw = lshr i8 %i.ail, 3
  %i.aix = and i8 %i.aiw, 1                       ; 2 uses
  %i.aiy = add nuw nsw i64 %.lcssa558, 3          ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.aiy
  store i8 %i.aix, ptr %i.aiz, align 1, !tbaa !13
  %i.aja = load i8, ptr %i.b, align 2, !tbaa !13
  %i.ajb = icmp eq i8 %i.aja, 1
  br i1 %i.ajb, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  %i.ajc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ajd = load i8, ptr %i.ajc, align 8, !tbaa !23 ; 2 uses
  %i.aje = icmp ult i8 %i.ajd, 3
  br i1 %i.aje, label %bb.cs, label %vlc_decode_u_prefix.exit168

bb.cs:                                            ; preds = %bb.cr
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre922 = load i8, ptr %i.ajc, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit168

vlc_decode_u_prefix.exit168:                      ; preds = %bb.cr, %bb.cs
  %i.ajf = phi i8 [ %i.ajd, %bb.cr ], [ %.pre922, %bb.cs ]
  %i.ajg = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !16 ; 3 uses
  %i.aji = and i64 %i.ajh, 7                      ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.aji
  %i.ajk = load i8, ptr %i.ajj, align 1, !tbaa !13 ; 2 uses
  %i.ajl = zext nneg i8 %i.ajk to i64
  %i.ajm = lshr i64 %i.ajh, %i.ajl                ; 3 uses
  store i64 %i.ajm, ptr %i.ajg, align 8, !tbaa !16
  %i.ajn = sub i8 %i.ajf, %i.ajk                  ; 4 uses
  store i8 %i.ajn, ptr %i.ajc, align 8, !tbaa !23
  %i.ajo = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.aji
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !13
  %i.ajq = icmp ne i64 %i.aji, 4
  %i.ajr = and i64 %i.ajh, 3
  %.not495 = icmp eq i64 %i.ajr, 0
  br i1 %.not495, label %bb.ct, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.ct:                                            ; preds = %vlc_decode_u_prefix.exit168
  %i.ajs = icmp ult i8 %i.ajn, 5
  br i1 %i.ajs, label %bb.cu, label %vlc_decode_u_suffix.exit185

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre923 = load i64, ptr %i.ajg, align 8, !tbaa !16
  %.pre924 = load i8, ptr %i.ajc, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit185

vlc_decode_u_suffix.exit185:                      ; preds = %bb.ct, %bb.cu
  %i.ajt = phi i8 [ %i.ajn, %bb.ct ], [ %.pre924, %bb.cu ]
  %i.aju = phi i64 [ %i.ajm, %bb.ct ], [ %.pre923, %bb.cu ] ; 2 uses
  %i.ajv = trunc i64 %i.aju to i32
  %i.ajw = and i32 %i.ajv, 31
  %i.ajx = zext i1 %i.ajq to i64                  ; 2 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.ajx
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !12 ; 2 uses
  %i.aka = trunc i32 %i.ajz to i8
  %.mask = and i32 %i.ajz, 255
  %i.akb = zext nneg i32 %.mask to i64
  %i.akc = lshr i64 %i.aju, %i.akb                ; 3 uses
  store i64 %i.akc, ptr %i.ajg, align 8, !tbaa !16
  %i.akd = sub i8 %i.ajt, %i.aka                  ; 4 uses
  store i8 %i.akd, ptr %i.ajc, align 8, !tbaa !23
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.ajx
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !12
  %i.akg = and i32 %i.ajw, %i.akf
  %.fr = freeze i32 %i.akg                        ; 4 uses
  %i.akh = icmp ugt i32 %.fr, 27
  br i1 %i.akh, label %bb.cv, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cv:                                            ; preds = %vlc_decode_u_suffix.exit185
  %i.aki = icmp ult i8 %i.akd, 4
  br i1 %i.aki, label %bb.cw, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre925 = load i64, ptr %i.ajg, align 8, !tbaa !16
  %.pre926 = load i8, ptr %i.ajc, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit201

jpeg2000_bitbuf_get_bits_lsb.exit201:             ; preds = %vlc_decode_u_prefix.exit168, %vlc_decode_u_suffix.exit185, %bb.cv, %bb.cw
  %i.akj = phi i8 [ %.pre926, %bb.cw ], [ %i.akd, %bb.cv ], [ %i.akd, %vlc_decode_u_suffix.exit185 ], [ %i.ajn, %vlc_decode_u_prefix.exit168 ]
  %i.akk = phi i64 [ %.pre925, %bb.cw ], [ %i.akc, %bb.cv ], [ %i.akc, %vlc_decode_u_suffix.exit185 ], [ %i.ajm, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %i.akl = phi i8 [ 4, %bb.cw ], [ 4, %bb.cv ], [ 0, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %.0.i184453455 = phi i32 [ %.fr, %bb.cw ], [ %.fr, %bb.cv ], [ %.fr, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ]
  %i.akm = zext nneg i8 %i.akl to i64             ; 2 uses
  %notmask.i200 = shl nsw i64 -1, %i.akm
  %i.akn = xor i64 %notmask.i200, -1
  %i.ako = and i64 %i.akk, %i.akn
  %i.akp = lshr i64 %i.akk, %i.akm
  store i64 %i.akp, ptr %i.ajg, align 8, !tbaa !16
  %i.akq = sub i8 %i.akj, %i.akl
  store i8 %i.akq, ptr %i.ajc, align 8, !tbaa !23
  %i.akr = trunc nuw nsw i64 %i.ako to i32
  %i.aks = zext i8 %i.ajp to i32
  %i.akt = add nuw nsw i32 %.0.i184453455, %i.aks
  %i.aku = shl nuw nsw i32 %i.akr, 2
  %i.akv = and i32 %i.aku, 252
  %i.akw = add nuw nsw i32 %i.akt, %i.akv
  br label %bb.cx

bb.cx:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit201, %bb.cq
  %.sroa.0386.0 = phi i32 [ %i.akw, %jpeg2000_bitbuf_get_bits_lsb.exit201 ], [ 0, %bb.cq ] ; 2 uses
  %.not732.i = icmp slt i32 %.sroa.0386.0, %i.du
  br i1 %.not732.i, label %.preheader530, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader530:                                    ; preds = %bb.cx
  %i.akx = add nuw nsw i32 %.sroa.0386.0, 1       ; 4 uses
  %i.aky = load i8, ptr %i.c, align 2, !tbaa !13
  %i.akz = zext i8 %i.aky to i32                  ; 4 uses
  %i.ala = load i8, ptr %i.ain, align 1, !tbaa !13
  %i.alb = zext i8 %i.ala to i32
  %i.alc = mul nsw i32 %i.akx, %i.alb             ; 2 uses
  %i.ald = and i32 %i.akz, 1                      ; 2 uses
  %i.ale = sub nsw i32 %i.alc, %i.ald             ; 4 uses
  %i.alf = zext nneg i8 %i.aip to i32
  %i.alg = mul nuw nsw i32 %i.akx, %i.alf         ; 2 uses
  %i.alh = lshr i32 %i.akz, 1
  %i.ali = and i32 %i.alh, 1                      ; 2 uses
  %i.alj = sub nsw i32 %i.alg, %i.ali             ; 4 uses
  %i.alk = zext nneg i8 %i.ait to i32
  %i.all = mul nuw nsw i32 %i.akx, %i.alk         ; 2 uses
  %i.alm = lshr i32 %i.akz, 2
  %i.aln = and i32 %i.alm, 1                      ; 2 uses
  %i.alo = sub nsw i32 %i.all, %i.aln             ; 4 uses
  %i.alp = zext nneg i8 %i.aix to i32
  %i.alq = mul nuw nsw i32 %i.akx, %i.alp         ; 2 uses
  %i.alr = lshr i32 %i.akz, 3
  %i.als = and i32 %i.alr, 1                      ; 2 uses
  %i.alt = sub nsw i32 %i.alq, %i.als             ; 4 uses
  %i.alu = zext i8 %i.bn to i32                   ; 5 uses
  %i.alv = load i8, ptr %i.d, align 2, !tbaa !13
  %i.alw = zext i8 %i.alv to i32                  ; 4 uses
  %i.alx = add nsw i32 %i.alu, -1
  %i.aly = shl nuw i32 1, %i.alx                  ; 4 uses
  %i.alz = and i32 %i.alw, 1
  %i.ama = icmp sgt i32 %i.ale, 0
  br i1 %i.ama, label %bb.cy, label %jpeg2000_decode_mag_sgn.exit

bb.cy:                                            ; preds = %.preheader530
  %i.amb = trunc i32 %i.ale to i8                 ; 2 uses
end_hunk_1
