Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_flac_read_pcm_frames_f32:bb.a
  %wide.load419 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !118
  %i.cu = shl <4 x i32> %wide.load419, %broadcast.splat414 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cs
  %wide.load420 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !118
  %i.cw = shl <4 x i32> %wide.load420, %broadcast.splat416
  %i.cx = sub <4 x i32> %i.cu, %i.cw
  %i.cy = shl nuw nsw i64 %i.cs, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.cy
  %i.da = shufflevector <4 x i32> %i.cu, <4 x i32> %i.cx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.db = sitofp <8 x i32> %i.da to <8 x float>
  %interleaved.vec421 = fmul nnan <8 x float> %i.db, splat (float f0x34000000)
  store <8 x float> %interleaved.vec421, ptr %i.cz, align 4, !tbaa !349
  %index.next422 = add nuw i64 %index418, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next422, %n.vec412
  br i1 %i.dc, label %middle.block423, label %vector.body417, !llvm.loop !2265

middle.block423:                                  ; preds = %vector.body417
  %cmp.n424 = icmp eq i64 %i.cq, 0
  br i1 %cmp.n424, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph196.preheader606

.lr.ph196.preheader606:                           ; preds = %.lr.ph196.preheader, %middle.block423
  %.1.i194.ph = phi i64 [ %i.cm, %.lr.ph196.preheader ], [ %i.cr, %middle.block423 ]
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader606, %.lr.ph196
  %.1.i194 = phi i64 [ %i.dp, %.lr.ph196 ], [ %.1.i194.ph, %.lr.ph196.preheader606 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i194
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !118
  %i.df = shl i32 %i.de, %.reass343.reass         ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i194
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !118
  %i.di = shl i32 %i.dh, %.reass345.reass
  %i.dj = sub i32 %i.df, %i.di
  %.idx127 = shl nuw nsw i64 %.1.i194, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx127
  %i.dl = insertelement <2 x i32> poison, i32 %i.df, i64 0
  %i.dm = insertelement <2 x i32> %i.dl, i32 %i.dj, i64 1
  %i.dn = sitofp <2 x i32> %i.dm to <2 x float>
  %i.do = fmul nnan <2 x float> %i.dn, splat (float f0x34000000)
  store <2 x float> %i.do, ptr %i.dk, align 4, !tbaa !349
  %i.dp = add nuw nsw i64 %.1.i194, 1             ; 2 uses
  %i.dq = icmp samesign ult i64 %i.dp, %spec.select
  br i1 %i.dq, label %.lr.ph196, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !2266

bb.n:                                             ; preds = %._crit_edge285, %bb.l
  %i.dr = phi i8 [ %.pre288, %._crit_edge285 ], [ %.pre289, %bb.l ]
  %i.ds = phi i8 [ %.pre286, %._crit_edge285 ], [ %.pre287, %bb.l ]
  %i.dt = lshr i64 %spec.select, 2                ; 4 uses
  %i.du = zext i8 %i.ds to i32
  %i.dv = add nsw i32 %i.z, %i.du                 ; 4 uses
  %i.dw = zext i8 %i.dr to i32
  %i.dx = add nsw i32 %i.z, %i.dw                 ; 4 uses
  %.not235 = icmp eq i64 %i.dt, 0
  br i1 %.not235, label %._crit_edge186, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %bb.n
  %min.iters.check444 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check444, label %.lr.ph185.preheader610, label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph185.preheader
  %n.vec446 = and i64 %i.dt, 1073741820           ; 3 uses
  %broadcast.splatinsert447 = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat448 = shufflevector <4 x i32> %broadcast.splatinsert447, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert449 = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat450 = shufflevector <4 x i32> %broadcast.splatinsert449, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph445
  %index452 = phi i64 [ 0, %vector.ph445 ], [ %index.next454, %vector.body451 ] ; 6 uses
  %i.dy = shl nuw nsw i64 %index452, 2            ; 5 uses
  %i.dz = shl i64 %index452, 2                    ; 4 uses
  %i.ea = or disjoint i64 %i.dz, 4                ; 2 uses
  %i.eb = shl i64 %index452, 2                    ; 4 uses
  %i.ec = or disjoint i64 %i.eb, 8                ; 2 uses
  %i.ed = shl i64 %index452, 2                    ; 4 uses
  %i.ee = or disjoint i64 %i.ed, 12               ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dy
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ea
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ec
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ee
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !118
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !118
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !118
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !118
  %i.en = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %i.eo = insertelement <4 x i32> %i.en, i32 %i.ek, i64 1
  %i.ep = insertelement <4 x i32> %i.eo, i32 %i.el, i64 2
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.em, i64 3
  %i.er = shl <4 x i32> %i.eq, %broadcast.splat448 ; 2 uses
  %i.es = or disjoint i64 %i.dy, 1                ; 2 uses
  %i.et = or disjoint i64 %i.dz, 5                ; 2 uses
  %i.eu = or disjoint i64 %i.eb, 9                ; 2 uses
  %i.ev = or disjoint i64 %i.ed, 13               ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.es
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.et
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.eu
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ev
  %i.fa = load i32, ptr %i.ew, align 4, !tbaa !118
  %i.fb = load i32, ptr %i.ex, align 4, !tbaa !118
  %i.fc = load i32, ptr %i.ey, align 4, !tbaa !118
  %i.fd = load i32, ptr %i.ez, align 4, !tbaa !118
  %i.fe = insertelement <4 x i32> poison, i32 %i.fa, i64 0
  %i.ff = insertelement <4 x i32> %i.fe, i32 %i.fb, i64 1
  %i.fg = insertelement <4 x i32> %i.ff, i32 %i.fc, i64 2
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.fd, i64 3
  %i.fi = shl <4 x i32> %i.fh, %broadcast.splat448 ; 2 uses
  %i.fj = or disjoint i64 %i.dy, 2                ; 2 uses
  %i.fk = or disjoint i64 %i.dz, 6                ; 2 uses
  %i.fl = or disjoint i64 %i.eb, 10               ; 2 uses
  %i.fm = or disjoint i64 %i.ed, 14               ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fj
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fk
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fl
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fm
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !118
  %i.fs = load i32, ptr %i.fo, align 4, !tbaa !118
  %i.ft = load i32, ptr %i.fp, align 4, !tbaa !118
  %i.fu = load i32, ptr %i.fq, align 4, !tbaa !118
  %i.fv = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 1
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.ft, i64 2
  %i.fy = insertelement <4 x i32> %i.fx, i32 %i.fu, i64 3
  %i.fz = shl <4 x i32> %i.fy, %broadcast.splat448 ; 2 uses
  %i.ga = or disjoint i64 %i.dy, 3                ; 2 uses
  %i.gb = or disjoint i64 %i.dz, 7                ; 2 uses
  %i.gc = or disjoint i64 %i.eb, 11               ; 2 uses
  %i.gd = or disjoint i64 %i.ed, 15               ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ga
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gb
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gc
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gd
  %i.gi = load i32, ptr %i.ge, align 4, !tbaa !118
  %i.gj = load i32, ptr %i.gf, align 4, !tbaa !118
  %i.gk = load i32, ptr %i.gg, align 4, !tbaa !118
  %i.gl = load i32, ptr %i.gh, align 4, !tbaa !118
  %i.gm = insertelement <4 x i32> poison, i32 %i.gi, i64 0
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gj, i64 1
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gk, i64 2
  %i.gp = insertelement <4 x i32> %i.go, i32 %i.gl, i64 3
  %i.gq = shl <4 x i32> %i.gp, %broadcast.splat448 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dy
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ea
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ec
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ee
  %i.gv = load i32, ptr %i.gr, align 4, !tbaa !118
  %i.gw = load i32, ptr %i.gs, align 4, !tbaa !118
  %i.gx = load i32, ptr %i.gt, align 4, !tbaa !118
  %i.gy = load i32, ptr %i.gu, align 4, !tbaa !118
  %i.gz = insertelement <4 x i32> poison, i32 %i.gv, i64 0
  %i.ha = insertelement <4 x i32> %i.gz, i32 %i.gw, i64 1
  %i.hb = insertelement <4 x i32> %i.ha, i32 %i.gx, i64 2
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gy, i64 3
  %i.hd = shl <4 x i32> %i.hc, %broadcast.splat450
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.es
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.et
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.eu
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ev
  %i.hi = load i32, ptr %i.he, align 4, !tbaa !118
  %i.hj = load i32, ptr %i.hf, align 4, !tbaa !118
  %i.hk = load i32, ptr %i.hg, align 4, !tbaa !118
  %i.hl = load i32, ptr %i.hh, align 4, !tbaa !118
  %i.hm = insertelement <4 x i32> poison, i32 %i.hi, i64 0
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.hj, i64 1
  %i.ho = insertelement <4 x i32> %i.hn, i32 %i.hk, i64 2
  %i.hp = insertelement <4 x i32> %i.ho, i32 %i.hl, i64 3
  %i.hq = shl <4 x i32> %i.hp, %broadcast.splat450
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fj
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fk
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fl
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fm
  %i.hv = load i32, ptr %i.hr, align 4, !tbaa !118
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !118
  %i.hx = load i32, ptr %i.ht, align 4, !tbaa !118
  %i.hy = load i32, ptr %i.hu, align 4, !tbaa !118
  %i.hz = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %i.ia = insertelement <4 x i32> %i.hz, i32 %i.hw, i64 1
  %i.ib = insertelement <4 x i32> %i.ia, i32 %i.hx, i64 2
  %i.ic = insertelement <4 x i32> %i.ib, i32 %i.hy, i64 3
  %i.id = shl <4 x i32> %i.ic, %broadcast.splat450
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ga
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.gb
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.gc
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.gd
  %i.ii = load i32, ptr %i.ie, align 4, !tbaa !118
  %i.ij = load i32, ptr %i.if, align 4, !tbaa !118
  %i.ik = load i32, ptr %i.ig, align 4, !tbaa !118
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !118
  %i.im = insertelement <4 x i32> poison, i32 %i.ii, i64 0
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ij, i64 1
  %i.io = insertelement <4 x i32> %i.in, i32 %i.ik, i64 2
  %i.ip = insertelement <4 x i32> %i.io, i32 %i.il, i64 3
  %i.iq = shl <4 x i32> %i.ip, %broadcast.splat450
  %i.ir = sub <4 x i32> %i.er, %i.hd
  %i.is = sub <4 x i32> %i.fi, %i.hq
  %i.it = sub <4 x i32> %i.fz, %i.id
  %i.iu = sub <4 x i32> %i.gq, %i.iq
  %i.iv = shl nuw nsw i64 %index452, 5
  %i.iw = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.iv
  %i.ix = shufflevector <4 x i32> %i.er, <4 x i32> %i.ir, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iy = shufflevector <4 x i32> %i.fi, <4 x i32> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = shufflevector <4 x i32> %i.fz, <4 x i32> %i.it, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iz = shufflevector <4 x i32> %i.gq, <4 x i32> %i.iu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <8 x i32> %i.ix, <8 x i32> %i.iy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ja = shufflevector <8 x i32> %3, <8 x i32> %i.iz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jb = shufflevector <16 x i32> %4, <16 x i32> %i.ja, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.jc = sitofp <32 x i32> %i.jb to <32 x float>
  %interleaved.vec453 = fmul nnan <32 x float> %i.jc, splat (float f0x30000000)
  store <32 x float> %interleaved.vec453, ptr %i.iw, align 4, !tbaa !349
  %index.next454 = add nuw i64 %index452, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next454, %n.vec446
  br i1 %i.jd, label %middle.block455, label %vector.body451, !llvm.loop !2267

middle.block455:                                  ; preds = %vector.body451
  %cmp.n456 = icmp eq i64 %i.dt, %n.vec446
  br i1 %cmp.n456, label %._crit_edge186, label %.lr.ph185.preheader610

.lr.ph185.preheader610:                           ; preds = %.lr.ph185.preheader, %middle.block455
  %.0.i94183.ph = phi i64 [ 0, %.lr.ph185.preheader ], [ %n.vec446, %middle.block455 ]
  %i.je = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %i.jf = shufflevector <4 x i32> %i.je, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jg = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %i.jh = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader610, %.lr.ph185
  %.0.i94183 = phi i64 [ %i.jy, %.lr.ph185 ], [ %.0.i94183.ph, %.lr.ph185.preheader610 ] ; 3 uses
  %i.ji = shl nuw nsw i64 %.0.i94183, 2           ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ji
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ji
  %i.jl = load <4 x i32>, ptr %i.jj, align 4, !tbaa !118
  %i.jm = shl <4 x i32> %i.jl, %i.jf              ; 3 uses
  %i.jn = load <4 x i32>, ptr %i.jk, align 4, !tbaa !118
  %i.jo = shl <4 x i32> %i.jn, %i.jh
  %i.jp = sub <4 x i32> %i.jm, %i.jo              ; 2 uses
  %.idx126 = shl nuw nsw i64 %.0.i94183, 5
  %i.jq = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx126 ; 2 uses
  %i.jr = shufflevector <4 x i32> %i.jp, <4 x i32> %i.jm, <4 x i32> <i32 4, i32 0, i32 5, i32 1>
  %i.js = sitofp <4 x i32> %i.jr to <4 x float>
  %i.jt = fmul nnan <4 x float> %i.js, splat (float f0x30000000)
  store <4 x float> %i.jt, ptr %i.jq, align 4, !tbaa !349
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jv = shufflevector <4 x i32> %i.jp, <4 x i32> %i.jm, <4 x i32> <i32 6, i32 2, i32 7, i32 3>
  %i.jw = sitofp <4 x i32> %i.jv to <4 x float>
  %i.jx = fmul nnan <4 x float> %i.jw, splat (float f0x30000000)
  store <4 x float> %i.jx, ptr %i.ju, align 4, !tbaa !349
  %i.jy = add nuw nsw i64 %.0.i94183, 1           ; 2 uses
  %exitcond273.not = icmp eq i64 %i.jy, %i.dt
  br i1 %exitcond273.not, label %._crit_edge186, label %.lr.ph185, !llvm.loop !2268

._crit_edge186:                                   ; preds = %.lr.ph185, %middle.block455, %bb.n
  %i.jz = and i64 %spec.select, 4294967292        ; 6 uses
  %.not236 = icmp eq i64 %i.jz, %spec.select
  br i1 %.not236, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %._crit_edge186
  %i.ka = or disjoint i64 %i.jz, 1
  %i.kb = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ka) ; 2 uses
  %i.kc = sub nsw i64 %i.kb, %i.jz                ; 2 uses
  %min.iters.check427 = icmp ult i64 %i.kc, 4
  br i1 %min.iters.check427, label %.lr.ph189.preheader608, label %vector.ph428

vector.ph428:                                     ; preds = %.lr.ph189.preheader
  %i.kd = and i64 %i.kb, 3                        ; 2 uses
  %n.vec429 = sub nuw nsw i64 %i.kc, %i.kd        ; 2 uses
  %i.ke = add nsw i64 %i.jz, %n.vec429
  %broadcast.splatinsert430 = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat431 = shufflevector <4 x i32> %broadcast.splatinsert430, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert432 = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat433 = shufflevector <4 x i32> %broadcast.splatinsert432, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph428
  %index435 = phi i64 [ 0, %vector.ph428 ], [ %index.next439, %vector.body434 ] ; 2 uses
  %i.kf = add nuw i64 %i.jz, %index435            ; 3 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.kf
  %wide.load436 = load <4 x i32>, ptr %i.kg, align 4, !tbaa !118
  %i.kh = shl <4 x i32> %wide.load436, %broadcast.splat431 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.kf
  %wide.load437 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !118
  %i.kj = shl <4 x i32> %wide.load437, %broadcast.splat433
  %i.kk = sub <4 x i32> %i.kh, %i.kj
  %i.kl = shl nuw nsw i64 %i.kf, 3
  %i.km = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.kl
  %i.kn = shufflevector <4 x i32> %i.kh, <4 x i32> %i.kk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ko = sitofp <8 x i32> %i.kn to <8 x float>
  %interleaved.vec438 = fmul nnan <8 x float> %i.ko, splat (float f0x30000000)
  store <8 x float> %interleaved.vec438, ptr %i.km, align 4, !tbaa !349
  %index.next439 = add nuw i64 %index435, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next439, %n.vec429
  br i1 %i.kp, label %middle.block440, label %vector.body434, !llvm.loop !2269

middle.block440:                                  ; preds = %vector.body434
  %cmp.n441 = icmp eq i64 %i.kd, 0
  br i1 %cmp.n441, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph189.preheader608

.lr.ph189.preheader608:                           ; preds = %.lr.ph189.preheader, %middle.block440
  %.1.i95187.ph = phi i64 [ %i.jz, %.lr.ph189.preheader ], [ %i.ke, %middle.block440 ]
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader608, %.lr.ph189
  %.1.i95187 = phi i64 [ %i.lc, %.lr.ph189 ], [ %.1.i95187.ph, %.lr.ph189.preheader608 ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i95187
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !118
  %i.ks = shl i32 %i.kr, %i.dv                    ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i95187
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !118
  %i.kv = shl i32 %i.ku, %i.dx
  %i.kw = sub i32 %i.ks, %i.kv
  %.idx125 = shl nuw nsw i64 %.1.i95187, 3
  %i.kx = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx125
  %i.ky = insertelement <2 x i32> poison, i32 %i.ks, i64 0
  %i.kz = insertelement <2 x i32> %i.ky, i32 %i.kw, i64 1
  %i.la = sitofp <2 x i32> %i.kz to <2 x float>
  %i.lb = fmul nnan <2 x float> %i.la, splat (float f0x30000000)
  store <2 x float> %i.lb, ptr %i.kx, align 4, !tbaa !349
  %i.lc = add nuw nsw i64 %.1.i95187, 1           ; 2 uses
  %i.ld = icmp samesign ult i64 %i.lc, %spec.select
  br i1 %i.ld, label %.lr.ph189, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !2270

bb.o:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.p, label %._crit_edge281

._crit_edge281:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.ag, align 1, !tbaa !734
  %.pre283 = load i8, ptr %i.ah, align 1, !tbaa !734
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.le = load i8, ptr %i.w, align 1, !tbaa !728
  %i.lf = icmp ult i8 %i.le, 25
  %.pre282 = load i8, ptr %i.ag, align 1, !tbaa !734 ; 2 uses
  %.pre284 = load i8, ptr %i.ah, align 1, !tbaa !734 ; 2 uses
  br i1 %i.lf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lg = lshr i64 %spec.select, 2                ; 2 uses
  %i.lh = zext i8 %.pre282 to i32
  %.reass.reass = add i32 %i.lh, %invariant.op    ; 3 uses
  %i.li = zext i8 %.pre284 to i32
  %.reass341.reass = add i32 %i.li, %invariant.op630 ; 3 uses
  %.not233 = icmp eq i64 %i.lg, 0
  br i1 %.not233, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.q, %.lr.ph178
  %.0.i96176 = phi i64 [ %i.ly, %.lr.ph178 ], [ 0, %bb.q ] ; 4 uses
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i96176
  %i.lk = load <4 x i32>, ptr %i.lj, align 1, !tbaa !119
  %i.ll = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.lk, i32 range(i32 -232, 288) %.reass.reass)
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0.i96176
  %i.ln = load <4 x i32>, ptr %i.lm, align 1, !tbaa !119
  %i.lo = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ln, i32 range(i32 -232, 288) %.reass341.reass) ; 2 uses
  %i.lp = add <4 x i32> %i.lo, %i.ll
  %i.lq = sitofp <4 x i32> %i.lp to <4 x float>
  %i.lr = fmul nnan <4 x float> %i.lq, splat (float f0x34000000) ; 2 uses
  %i.ls = sitofp <4 x i32> %i.lo to <4 x float>
  %i.lt = fmul nnan <4 x float> %i.ls, splat (float f0x34000000) ; 2 uses
  %.idx.i98 = shl nuw nsw i64 %.0.i96176, 5
  %i.lu = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i98 ; 2 uses
  %i.lv = shufflevector <4 x float> %i.lr, <4 x float> %i.lt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.lv, ptr %i.lu, align 1, !tbaa !119
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lx = shufflevector <4 x float> %i.lr, <4 x float> %i.lt, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.lx, ptr %i.lw, align 1, !tbaa !119
  %i.ly = add nuw nsw i64 %.0.i96176, 1           ; 2 uses
  %exitcond272.not = icmp eq i64 %i.ly, %i.lg
  br i1 %exitcond272.not, label %._crit_edge179, label %.lr.ph178, !llvm.loop !2271

._crit_edge179:                                   ; preds = %.lr.ph178, %bb.q
  %i.lz = and i64 %spec.select, 4294967292        ; 6 uses
  %.not234 = icmp eq i64 %i.lz, %spec.select
  br i1 %.not234, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %._crit_edge179
  %i.ma = or disjoint i64 %i.lz, 1
  %i.mb = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ma) ; 2 uses
  %i.mc = sub nsw i64 %i.mb, %i.lz                ; 2 uses
  %min.iters.check459 = icmp ult i64 %i.mc, 4
  br i1 %min.iters.check459, label %.lr.ph182.preheader611, label %vector.ph460

vector.ph460:                                     ; preds = %.lr.ph182.preheader
  %i.md = and i64 %i.mb, 3                        ; 2 uses
  %n.vec461 = sub nuw nsw i64 %i.mc, %i.md        ; 2 uses
  %i.me = add nsw i64 %i.lz, %n.vec461
  %broadcast.splatinsert462 = insertelement <4 x i32> poison, i32 %.reass.reass, i64 0
  %broadcast.splat463 = shufflevector <4 x i32> %broadcast.splatinsert462, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert464 = insertelement <4 x i32> poison, i32 %.reass341.reass, i64 0
  %broadcast.splat465 = shufflevector <4 x i32> %broadcast.splatinsert464, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body466

vector.body466:                                   ; preds = %vector.body466, %vector.ph460
  %index467 = phi i64 [ 0, %vector.ph460 ], [ %index.next471, %vector.body466 ] ; 2 uses
  %i.mf = add nuw i64 %i.lz, %index467            ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.mf
  %wide.load468 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !118
  %i.mh = shl <4 x i32> %wide.load468, %broadcast.splat463
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.mf
  %wide.load469 = load <4 x i32>, ptr %i.mi, align 4, !tbaa !118
  %i.mj = shl <4 x i32> %wide.load469, %broadcast.splat465 ; 2 uses
  %i.mk = add <4 x i32> %i.mj, %i.mh
  %i.ml = shl nuw nsw i64 %i.mf, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.ml
  %i.mn = shufflevector <4 x i32> %i.mk, <4 x i32> %i.mj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.mo = sitofp <8 x i32> %i.mn to <8 x float>
  %interleaved.vec470 = fmul nnan <8 x float> %i.mo, splat (float f0x34000000)
  store <8 x float> %interleaved.vec470, ptr %i.mm, align 4, !tbaa !349
  %index.next471 = add nuw i64 %index467, 4       ; 2 uses
  %i.mp = icmp eq i64 %index.next471, %n.vec461
  br i1 %i.mp, label %middle.block472, label %vector.body466, !llvm.loop !2272

middle.block472:                                  ; preds = %vector.body466
  %cmp.n473 = icmp eq i64 %i.md, 0
  br i1 %cmp.n473, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph182.preheader611

.lr.ph182.preheader611:                           ; preds = %.lr.ph182.preheader, %middle.block472
  %.1.i97180.ph = phi i64 [ %i.lz, %.lr.ph182.preheader ], [ %i.me, %middle.block472 ]
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader611, %.lr.ph182
  %.1.i97180 = phi i64 [ %i.nc, %.lr.ph182 ], [ %.1.i97180.ph, %.lr.ph182.preheader611 ] ; 4 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i97180
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !118
  %i.ms = shl i32 %i.mr, %.reass.reass
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i97180
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !118
  %i.mv = shl i32 %i.mu, %.reass341.reass         ; 2 uses
  %i.mw = add i32 %i.mv, %i.ms
  %.idx124 = shl nuw nsw i64 %.1.i97180, 3
  %i.mx = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx124
  %i.my = insertelement <2 x i32> poison, i32 %i.mw, i64 0
  %i.mz = insertelement <2 x i32> %i.my, i32 %i.mv, i64 1
  %i.na = sitofp <2 x i32> %i.mz to <2 x float>
  %i.nb = fmul nnan <2 x float> %i.na, splat (float f0x34000000)
  store <2 x float> %i.nb, ptr %i.mx, align 4, !tbaa !349
  %i.nc = add nuw nsw i64 %.1.i97180, 1           ; 2 uses
  %i.nd = icmp samesign ult i64 %i.nc, %spec.select
  br i1 %i.nd, label %.lr.ph182, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !2273

bb.r:                                             ; preds = %._crit_edge281, %bb.p
  %i.ne = phi i8 [ %.pre283, %._crit_edge281 ], [ %.pre284, %bb.p ]
  %i.nf = phi i8 [ %.pre, %._crit_edge281 ], [ %.pre282, %bb.p ]
  %i.ng = lshr i64 %spec.select, 2                ; 4 uses
  %i.nh = zext i8 %i.nf to i32
  %i.ni = add nsw i32 %i.z, %i.nh                 ; 4 uses
  %i.nj = zext i8 %i.ne to i32
  %i.nk = add nsw i32 %i.z, %i.nj                 ; 4 uses
  %.not230 = icmp eq i64 %i.ng, 0
  br i1 %.not230, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.r
  %min.iters.check493 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check493, label %.lr.ph171.preheader615, label %vector.ph494

vector.ph494:                                     ; preds = %.lr.ph171.preheader
  %n.vec495 = and i64 %i.ng, 1073741820           ; 3 uses
  %broadcast.splatinsert496 = insertelement <4 x i32> poison, i32 %i.ni, i64 0
  %broadcast.splat497 = shufflevector <4 x i32> %broadcast.splatinsert496, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert498 = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %broadcast.splat499 = shufflevector <4 x i32> %broadcast.splatinsert498, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body500

vector.body500:                                   ; preds = %vector.body500, %vector.ph494
  %index501 = phi i64 [ 0, %vector.ph494 ], [ %index.next503, %vector.body500 ] ; 6 uses
  %i.nl = shl nuw nsw i64 %index501, 2            ; 5 uses
  %i.nm = shl i64 %index501, 2                    ; 4 uses
  %i.nn = or disjoint i64 %i.nm, 4                ; 2 uses
  %i.no = shl i64 %index501, 2                    ; 4 uses
  %i.np = or disjoint i64 %i.no, 8                ; 2 uses
  %i.nq = shl i64 %index501, 2                    ; 4 uses
  %i.nr = or disjoint i64 %i.nq, 12               ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.nl
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.nn
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.np
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.nr
  %i.nw = load i32, ptr %i.ns, align 4, !tbaa !118
  %i.nx = load i32, ptr %i.nt, align 4, !tbaa !118
  %i.ny = load i32, ptr %i.nu, align 4, !tbaa !118
  %i.nz = load i32, ptr %i.nv, align 4, !tbaa !118
  %i.oa = insertelement <4 x i32> poison, i32 %i.nw, i64 0
  %i.ob = insertelement <4 x i32> %i.oa, i32 %i.nx, i64 1
  %i.oc = insertelement <4 x i32> %i.ob, i32 %i.ny, i64 2
  %i.od = insertelement <4 x i32> %i.oc, i32 %i.nz, i64 3
  %i.oe = shl <4 x i32> %i.od, %broadcast.splat497
  %i.of = or disjoint i64 %i.nl, 1                ; 2 uses
  %i.og = or disjoint i64 %i.nm, 5                ; 2 uses
  %i.oh = or disjoint i64 %i.no, 9                ; 2 uses
  %i.oi = or disjoint i64 %i.nq, 13               ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.of
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.og
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oh
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oi
  %i.on = load i32, ptr %i.oj, align 4, !tbaa !118
  %i.oo = load i32, ptr %i.ok, align 4, !tbaa !118
  %i.op = load i32, ptr %i.ol, align 4, !tbaa !118
  %i.oq = load i32, ptr %i.om, align 4, !tbaa !118
  %i.or = insertelement <4 x i32> poison, i32 %i.on, i64 0
  %i.os = insertelement <4 x i32> %i.or, i32 %i.oo, i64 1
  %i.ot = insertelement <4 x i32> %i.os, i32 %i.op, i64 2
  %i.ou = insertelement <4 x i32> %i.ot, i32 %i.oq, i64 3
  %i.ov = shl <4 x i32> %i.ou, %broadcast.splat497
  %i.ow = or disjoint i64 %i.nl, 2                ; 2 uses
  %i.ox = or disjoint i64 %i.nm, 6                ; 2 uses
  %i.oy = or disjoint i64 %i.no, 10               ; 2 uses
  %i.oz = or disjoint i64 %i.nq, 14               ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ow
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ox
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oy
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oz
  %i.pe = load i32, ptr %i.pa, align 4, !tbaa !118
  %i.pf = load i32, ptr %i.pb, align 4, !tbaa !118
  %i.pg = load i32, ptr %i.pc, align 4, !tbaa !118
  %i.ph = load i32, ptr %i.pd, align 4, !tbaa !118
  %i.pi = insertelement <4 x i32> poison, i32 %i.pe, i64 0
  %i.pj = insertelement <4 x i32> %i.pi, i32 %i.pf, i64 1
  %i.pk = insertelement <4 x i32> %i.pj, i32 %i.pg, i64 2
  %i.pl = insertelement <4 x i32> %i.pk, i32 %i.ph, i64 3
  %i.pm = shl <4 x i32> %i.pl, %broadcast.splat497
  %i.pn = or disjoint i64 %i.nl, 3                ; 2 uses
  %i.po = or disjoint i64 %i.nm, 7                ; 2 uses
  %i.pp = or disjoint i64 %i.no, 11               ; 2 uses
  %i.pq = or disjoint i64 %i.nq, 15               ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.pn
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.po
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.pp
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.pq
  %i.pv = load i32, ptr %i.pr, align 4, !tbaa !118
  %i.pw = load i32, ptr %i.ps, align 4, !tbaa !118
  %i.px = load i32, ptr %i.pt, align 4, !tbaa !118
  %i.py = load i32, ptr %i.pu, align 4, !tbaa !118
  %i.pz = insertelement <4 x i32> poison, i32 %i.pv, i64 0
  %i.qa = insertelement <4 x i32> %i.pz, i32 %i.pw, i64 1
  %i.qb = insertelement <4 x i32> %i.qa, i32 %i.px, i64 2
  %i.qc = insertelement <4 x i32> %i.qb, i32 %i.py, i64 3
  %i.qd = shl <4 x i32> %i.qc, %broadcast.splat497
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.nl
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.nn
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.np
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.nr
  %i.qi = load i32, ptr %i.qe, align 4, !tbaa !118
  %i.qj = load i32, ptr %i.qf, align 4, !tbaa !118
  %i.qk = load i32, ptr %i.qg, align 4, !tbaa !118
  %i.ql = load i32, ptr %i.qh, align 4, !tbaa !118
  %i.qm = insertelement <4 x i32> poison, i32 %i.qi, i64 0
  %i.qn = insertelement <4 x i32> %i.qm, i32 %i.qj, i64 1
  %i.qo = insertelement <4 x i32> %i.qn, i32 %i.qk, i64 2
  %i.qp = insertelement <4 x i32> %i.qo, i32 %i.ql, i64 3
  %i.qq = shl <4 x i32> %i.qp, %broadcast.splat499 ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.of
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.og
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oh
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oi
  %i.qv = load i32, ptr %i.qr, align 4, !tbaa !118
  %i.qw = load i32, ptr %i.qs, align 4, !tbaa !118
  %i.qx = load i32, ptr %i.qt, align 4, !tbaa !118
  %i.qy = load i32, ptr %i.qu, align 4, !tbaa !118
  %i.qz = insertelement <4 x i32> poison, i32 %i.qv, i64 0
  %i.ra = insertelement <4 x i32> %i.qz, i32 %i.qw, i64 1
  %i.rb = insertelement <4 x i32> %i.ra, i32 %i.qx, i64 2
  %i.rc = insertelement <4 x i32> %i.rb, i32 %i.qy, i64 3
  %i.rd = shl <4 x i32> %i.rc, %broadcast.splat499 ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ow
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ox
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oy
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oz
  %i.ri = load i32, ptr %i.re, align 4, !tbaa !118
  %i.rj = load i32, ptr %i.rf, align 4, !tbaa !118
  %i.rk = load i32, ptr %i.rg, align 4, !tbaa !118
  %i.rl = load i32, ptr %i.rh, align 4, !tbaa !118
  %i.rm = insertelement <4 x i32> poison, i32 %i.ri, i64 0
  %i.rn = insertelement <4 x i32> %i.rm, i32 %i.rj, i64 1
  %i.ro = insertelement <4 x i32> %i.rn, i32 %i.rk, i64 2
  %i.rp = insertelement <4 x i32> %i.ro, i32 %i.rl, i64 3
  %i.rq = shl <4 x i32> %i.rp, %broadcast.splat499 ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.pn
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.po
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.pp
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.pq
  %i.rv = load i32, ptr %i.rr, align 4, !tbaa !118
  %i.rw = load i32, ptr %i.rs, align 4, !tbaa !118
  %i.rx = load i32, ptr %i.rt, align 4, !tbaa !118
  %i.ry = load i32, ptr %i.ru, align 4, !tbaa !118
  %i.rz = insertelement <4 x i32> poison, i32 %i.rv, i64 0
  %i.sa = insertelement <4 x i32> %i.rz, i32 %i.rw, i64 1
  %i.sb = insertelement <4 x i32> %i.sa, i32 %i.rx, i64 2
  %i.sc = insertelement <4 x i32> %i.sb, i32 %i.ry, i64 3
  %i.sd = shl <4 x i32> %i.sc, %broadcast.splat499 ; 2 uses
  %i.se = add <4 x i32> %i.qq, %i.oe
  %i.sf = add <4 x i32> %i.rd, %i.ov
  %i.sg = add <4 x i32> %i.rq, %i.pm
  %i.sh = add <4 x i32> %i.sd, %i.qd
  %i.si = shl nuw nsw i64 %index501, 5
  %i.sj = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.si
  %i.sk = shufflevector <4 x i32> %i.se, <4 x i32> %i.qq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sl = shufflevector <4 x i32> %i.sf, <4 x i32> %i.rd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x i32> %i.sg, <4 x i32> %i.rq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sm = shufflevector <4 x i32> %i.sh, <4 x i32> %i.sd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <8 x i32> %i.sk, <8 x i32> %i.sl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sn = shufflevector <8 x i32> %5, <8 x i32> %i.sm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.so = shufflevector <16 x i32> %6, <16 x i32> %i.sn, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.sp = sitofp <32 x i32> %i.so to <32 x float>
  %interleaved.vec502 = fmul nnan <32 x float> %i.sp, splat (float f0x30000000)
  store <32 x float> %interleaved.vec502, ptr %i.sj, align 4, !tbaa !349
  %index.next503 = add nuw i64 %index501, 4       ; 2 uses
  %i.sq = icmp eq i64 %index.next503, %n.vec495
  br i1 %i.sq, label %middle.block504, label %vector.body500, !llvm.loop !2274

middle.block504:                                  ; preds = %vector.body500
  %cmp.n505 = icmp eq i64 %i.ng, %n.vec495
  br i1 %cmp.n505, label %._crit_edge172, label %.lr.ph171.preheader615

.lr.ph171.preheader615:                           ; preds = %.lr.ph171.preheader, %middle.block504
  %.0.i99169.ph = phi i64 [ 0, %.lr.ph171.preheader ], [ %n.vec495, %middle.block504 ]
  %i.sr = insertelement <4 x i32> poison, i32 %i.ni, i64 0
  %i.ss = shufflevector <4 x i32> %i.sr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.st = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %i.su = shufflevector <4 x i32> %i.st, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader615, %.lr.ph171
  %.0.i99169 = phi i64 [ %i.tl, %.lr.ph171 ], [ %.0.i99169.ph, %.lr.ph171.preheader615 ] ; 3 uses
  %i.sv = shl nuw nsw i64 %.0.i99169, 2           ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.sv
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.sv
  %i.sy = load <4 x i32>, ptr %i.sw, align 4, !tbaa !118
  %i.sz = shl <4 x i32> %i.sy, %i.ss
  %i.ta = load <4 x i32>, ptr %i.sx, align 4, !tbaa !118
  %i.tb = shl <4 x i32> %i.ta, %i.su              ; 3 uses
  %i.tc = add <4 x i32> %i.tb, %i.sz              ; 2 uses
  %.idx123 = shl nuw nsw i64 %.0.i99169, 5
  %i.td = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx123 ; 2 uses
  %i.te = shufflevector <4 x i32> %i.tc, <4 x i32> %i.tb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.tf = sitofp <4 x i32> %i.te to <4 x float>
  %i.tg = fmul nnan <4 x float> %i.tf, splat (float f0x30000000)
  store <4 x float> %i.tg, ptr %i.td, align 4, !tbaa !349
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.ti = shufflevector <4 x i32> %i.tc, <4 x i32> %i.tb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.tj = sitofp <4 x i32> %i.ti to <4 x float>
  %i.tk = fmul nnan <4 x float> %i.tj, splat (float f0x30000000)
  store <4 x float> %i.tk, ptr %i.th, align 4, !tbaa !349
  %i.tl = add nuw nsw i64 %.0.i99169, 1           ; 2 uses
  %exitcond271.not = icmp eq i64 %i.tl, %i.ng
  br i1 %exitcond271.not, label %._crit_edge172, label %.lr.ph171, !llvm.loop !2275

._crit_edge172:                                   ; preds = %.lr.ph171, %middle.block504, %bb.r
  %i.tm = and i64 %spec.select, 4294967292        ; 6 uses
  %.not231 = icmp eq i64 %i.tm, %spec.select
  br i1 %.not231, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %._crit_edge172
  %i.tn = or disjoint i64 %i.tm, 1
  %i.to = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.tn) ; 2 uses
  %i.tp = sub nsw i64 %i.to, %i.tm                ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.tp, 4
  br i1 %min.iters.check476, label %.lr.ph175.preheader613, label %vector.ph477

vector.ph477:                                     ; preds = %.lr.ph175.preheader
  %i.tq = and i64 %i.to, 3                        ; 2 uses
  %n.vec478 = sub nuw nsw i64 %i.tp, %i.tq        ; 2 uses
  %i.tr = add nsw i64 %i.tm, %n.vec478
  %broadcast.splatinsert479 = insertelement <4 x i32> poison, i32 %i.ni, i64 0
  %broadcast.splat480 = shufflevector <4 x i32> %broadcast.splatinsert479, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert481 = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %broadcast.splat482 = shufflevector <4 x i32> %broadcast.splatinsert481, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph477
  %index484 = phi i64 [ 0, %vector.ph477 ], [ %index.next488, %vector.body483 ] ; 2 uses
  %i.ts = add nuw i64 %i.tm, %index484            ; 3 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ts
  %wide.load485 = load <4 x i32>, ptr %i.tt, align 4, !tbaa !118
  %i.tu = shl <4 x i32> %wide.load485, %broadcast.splat480
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ts
  %wide.load486 = load <4 x i32>, ptr %i.tv, align 4, !tbaa !118
  %i.tw = shl <4 x i32> %wide.load486, %broadcast.splat482 ; 2 uses
  %i.tx = add <4 x i32> %i.tw, %i.tu
  %i.ty = shl nuw nsw i64 %i.ts, 3
  %i.tz = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.ty
  %i.ua = shufflevector <4 x i32> %i.tx, <4 x i32> %i.tw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ub = sitofp <8 x i32> %i.ua to <8 x float>
  %interleaved.vec487 = fmul nnan <8 x float> %i.ub, splat (float f0x30000000)
  store <8 x float> %interleaved.vec487, ptr %i.tz, align 4, !tbaa !349
  %index.next488 = add nuw i64 %index484, 4       ; 2 uses
  %i.uc = icmp eq i64 %index.next488, %n.vec478
  br i1 %i.uc, label %middle.block489, label %vector.body483, !llvm.loop !2276

middle.block489:                                  ; preds = %vector.body483
  %cmp.n490 = icmp eq i64 %i.tq, 0
  br i1 %cmp.n490, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph175.preheader613

.lr.ph175.preheader613:                           ; preds = %.lr.ph175.preheader, %middle.block489
  %.1.i100173.ph = phi i64 [ %i.tm, %.lr.ph175.preheader ], [ %i.tr, %middle.block489 ]
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader613, %.lr.ph175
  %.1.i100173 = phi i64 [ %i.up, %.lr.ph175 ], [ %.1.i100173.ph, %.lr.ph175.preheader613 ] ; 4 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i100173
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !118
  %i.uf = shl i32 %i.ue, %i.ni
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i100173
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !118
  %i.ui = shl i32 %i.uh, %i.nk                    ; 2 uses
  %i.uj = add i32 %i.ui, %i.uf
  %.idx122 = shl nuw nsw i64 %.1.i100173, 3
  %i.uk = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx122
  %i.ul = insertelement <2 x i32> poison, i32 %i.uj, i64 0
  %i.um = insertelement <2 x i32> %i.ul, i32 %i.ui, i64 1
  %i.un = sitofp <2 x i32> %i.um to <2 x float>
  %i.uo = fmul nnan <2 x float> %i.un, splat (float f0x30000000)
  store <2 x float> %i.uo, ptr %i.uk, align 4, !tbaa !349
  %i.up = add nuw nsw i64 %.1.i100173, 1          ; 2 uses
  %i.uq = icmp samesign ult i64 %i.up, %spec.select
  br i1 %i.uq, label %.lr.ph175, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !2277

bb.s:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ur = load i8, ptr %i.w, align 1, !tbaa !728
  %i.us = icmp ult i8 %i.ur, 25
  br i1 %i.us, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ut = lshr i64 %spec.select, 2                ; 3 uses
  %.not228 = icmp eq i64 %i.ut, 0                 ; 2 uses
  br i1 %i.ai, label %.preheader140, label %bb.v

.preheader140:                                    ; preds = %bb.u
  br i1 %.not228, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader140, %.lr.ph164
  %.0.i102163 = phi i64 [ %i.vt, %.lr.ph164 ], [ 0, %.preheader140 ] ; 4 uses
  %i.uu = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i102163
  %i.uv = load <4 x i32>, ptr %i.uu, align 1, !tbaa !119
  %i.uw = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.ux = zext i8 %i.uw to i32
  %i.uy = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.uv, i32 range(i32 -232, 288) %i.ux)
  %i.uz = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0.i102163
  %i.va = load <4 x i32>, ptr %i.uz, align 1, !tbaa !119
  %i.vb = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.vc = zext i8 %i.vb to i32
  %i.vd = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.va, i32 range(i32 -232, 288) %i.vc) ; 3 uses
  %i.ve = shl <4 x i32> %i.uy, splat (i32 1)
  %i.vf = and <4 x i32> %i.vd, splat (i32 1)
  %i.vg = or disjoint <4 x i32> %i.vf, %i.ve      ; 2 uses
  %i.vh = add <4 x i32> %i.vg, %i.vd
  %i.vi = ashr <4 x i32> %i.vh, splat (i32 1)
  %i.vj = sub <4 x i32> %i.vg, %i.vd
  %i.vk = ashr <4 x i32> %i.vj, splat (i32 1)
  %i.vl = sitofp <4 x i32> %i.vi to <4 x float>
  %i.vm = fmul nnan <4 x float> %i.vl, splat (float f0x34000000) ; 2 uses
  %i.vn = sitofp <4 x i32> %i.vk to <4 x float>
  %i.vo = fmul nnan <4 x float> %i.vn, splat (float f0x34000000) ; 2 uses
  %.idx111.i = shl nuw nsw i64 %.0.i102163, 5
  %i.vp = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx111.i ; 2 uses
  %i.vq = shufflevector <4 x float> %i.vm, <4 x float> %i.vo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.vq, ptr %i.vp, align 1, !tbaa !119
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vs = shufflevector <4 x float> %i.vm, <4 x float> %i.vo, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.vs, ptr %i.vr, align 1, !tbaa !119
  %i.vt = add nuw nsw i64 %.0.i102163, 1          ; 2 uses
  %exitcond270.not = icmp eq i64 %i.vt, %i.ut
  br i1 %exitcond270.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !2278

._crit_edge165:                                   ; preds = %.lr.ph164, %.preheader140
  %i.vu = and i64 %spec.select, 4294967292        ; 6 uses
  %.not229 = icmp eq i64 %i.vu, %spec.select
  br i1 %.not229, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %._crit_edge165
  %i.vv = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.vw = zext nneg i8 %i.vv to i32               ; 2 uses
  %i.vx = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.vy = zext nneg i8 %i.vx to i32               ; 2 uses
  %i.vz = or disjoint i64 %i.vu, 1
  %i.wa = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.vz) ; 2 uses
  %i.wb = sub nsw i64 %i.wa, %i.vu                ; 2 uses
  %min.iters.check508 = icmp ult i64 %i.wb, 4
  br i1 %min.iters.check508, label %scalar.ph507.preheader, label %vector.ph509

vector.ph509:                                     ; preds = %.lr.ph168
  %i.wc = and i64 %i.wa, 3                        ; 2 uses
  %n.vec510 = sub nuw nsw i64 %i.wb, %i.wc        ; 2 uses
  %i.wd = add nsw i64 %i.vu, %n.vec510
  %broadcast.splatinsert511 = insertelement <4 x i32> poison, i32 %i.vw, i64 0
  %broadcast.splat512 = shufflevector <4 x i32> %broadcast.splatinsert511, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert513 = insertelement <4 x i32> poison, i32 %i.vy, i64 0
  %broadcast.splat514 = shufflevector <4 x i32> %broadcast.splatinsert513, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph509
  %index516 = phi i64 [ 0, %vector.ph509 ], [ %index.next520, %vector.body515 ] ; 2 uses
  %i.we = add nuw i64 %i.vu, %index516            ; 3 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.we
  %wide.load517 = load <4 x i32>, ptr %i.wf, align 4, !tbaa !118
  %i.wg = shl <4 x i32> %wide.load517, %broadcast.splat512
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.we
  %wide.load518 = load <4 x i32>, ptr %i.wh, align 4, !tbaa !118
  %i.wi = shl <4 x i32> %wide.load518, %broadcast.splat514 ; 3 uses
  %i.wj = shl <4 x i32> %i.wg, splat (i32 1)
end_hunk_0
begin_hunk_1_@ma_dr_flac_read_pcm_frames_f32:bb.a

scalar.ph524:                                     ; preds = %scalar.ph524.preheader, %scalar.ph524
  %.3.i160 = phi i64 [ %i.aag, %scalar.ph524 ], [ %.3.i160.ph, %scalar.ph524.preheader ] ; 4 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.3.i160
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !118
  %i.zq = shl i32 %i.zp, %i.yp
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.3.i160
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !118
  %i.zt = shl i32 %i.zq, 1
  %.idx120 = shl nuw nsw i64 %.3.i160, 3
  %i.zu = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx120
  %i.zv = shl i32 %i.zs, %i.yr                    ; 3 uses
  %i.zw = and i32 %i.zv, 1
  %i.zx = or disjoint i32 %i.zw, %i.zt            ; 2 uses
  %i.zy = add i32 %i.zx, %i.zv
  %i.zz = shl i32 %i.zy, %i.aj
  %i.aaa = sub i32 %i.zx, %i.zv
  %i.aab = shl i32 %i.aaa, %i.aj
  %i.aac = insertelement <2 x i32> poison, i32 %i.zz, i64 0
  %i.aad = insertelement <2 x i32> %i.aac, i32 %i.aab, i64 1
  %i.aae = sitofp <2 x i32> %i.aad to <2 x float>
  %i.aaf = fmul nnan <2 x float> %i.aae, splat (float f0x34000000)
  store <2 x float> %i.aaf, ptr %i.zu, align 4, !tbaa !349
  %i.aag = add nuw nsw i64 %.3.i160, 1            ; 2 uses
  %i.aah = icmp samesign ult i64 %i.aag, %spec.select
  br i1 %i.aah, label %scalar.ph524, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !2283

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.aai = lshr i64 %spec.select, 2               ; 7 uses
  %.not224 = icmp eq i64 %i.aai, 0                ; 2 uses
  br i1 %.not.i, label %.preheader143, label %bb.x

.preheader143:                                    ; preds = %bb.w
  br i1 %.not224, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader143
  %i.aaj = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.aak = zext i8 %i.aaj to i32                  ; 2 uses
  %i.aal = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.aam = zext i8 %i.aal to i32                  ; 2 uses
  %min.iters.check563 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check563, label %scalar.ph562.preheader, label %vector.ph564

vector.ph564:                                     ; preds = %.lr.ph155
  %n.vec565 = and i64 %i.aai, 1073741820          ; 3 uses
  %broadcast.splatinsert566 = insertelement <4 x i32> poison, i32 %i.aak, i64 0
  %broadcast.splat567 = shufflevector <4 x i32> %broadcast.splatinsert566, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert568 = insertelement <4 x i32> poison, i32 %i.aam, i64 0
  %broadcast.splat569 = shufflevector <4 x i32> %broadcast.splatinsert568, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body570

vector.body570:                                   ; preds = %vector.body570, %vector.ph564
  %index571 = phi i64 [ 0, %vector.ph564 ], [ %index.next573, %vector.body570 ] ; 6 uses
  %i.aan = shl nuw nsw i64 %index571, 2           ; 5 uses
  %i.aao = shl i64 %index571, 2                   ; 4 uses
  %i.aap = or disjoint i64 %i.aao, 4              ; 2 uses
  %i.aaq = shl i64 %index571, 2                   ; 4 uses
  %i.aar = or disjoint i64 %i.aaq, 8              ; 2 uses
  %i.aas = shl i64 %index571, 2                   ; 4 uses
  %i.aat = or disjoint i64 %i.aas, 12             ; 2 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aan
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aap
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aar
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aat
  %i.aay = load i32, ptr %i.aau, align 4, !tbaa !118
  %i.aaz = load i32, ptr %i.aav, align 4, !tbaa !118
  %i.aba = load i32, ptr %i.aaw, align 4, !tbaa !118
  %i.abb = load i32, ptr %i.aax, align 4, !tbaa !118
  %i.abc = insertelement <4 x i32> poison, i32 %i.aay, i64 0
  %i.abd = insertelement <4 x i32> %i.abc, i32 %i.aaz, i64 1
  %i.abe = insertelement <4 x i32> %i.abd, i32 %i.aba, i64 2
  %i.abf = insertelement <4 x i32> %i.abe, i32 %i.abb, i64 3
  %i.abg = shl <4 x i32> %i.abf, %broadcast.splat567
  %i.abh = or disjoint i64 %i.aan, 1              ; 2 uses
  %i.abi = or disjoint i64 %i.aao, 5              ; 2 uses
  %i.abj = or disjoint i64 %i.aaq, 9              ; 2 uses
  %i.abk = or disjoint i64 %i.aas, 13             ; 2 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abh
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abi
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abj
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abk
  %i.abp = load i32, ptr %i.abl, align 4, !tbaa !118
  %i.abq = load i32, ptr %i.abm, align 4, !tbaa !118
  %i.abr = load i32, ptr %i.abn, align 4, !tbaa !118
  %i.abs = load i32, ptr %i.abo, align 4, !tbaa !118
  %i.abt = insertelement <4 x i32> poison, i32 %i.abp, i64 0
  %i.abu = insertelement <4 x i32> %i.abt, i32 %i.abq, i64 1
  %i.abv = insertelement <4 x i32> %i.abu, i32 %i.abr, i64 2
  %i.abw = insertelement <4 x i32> %i.abv, i32 %i.abs, i64 3
  %i.abx = shl <4 x i32> %i.abw, %broadcast.splat567
  %i.aby = or disjoint i64 %i.aan, 2              ; 2 uses
  %i.abz = or disjoint i64 %i.aao, 6              ; 2 uses
  %i.aca = or disjoint i64 %i.aaq, 10             ; 2 uses
  %i.acb = or disjoint i64 %i.aas, 14             ; 2 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aby
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abz
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aca
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acb
  %i.acg = load i32, ptr %i.acc, align 4, !tbaa !118
  %i.ach = load i32, ptr %i.acd, align 4, !tbaa !118
  %i.aci = load i32, ptr %i.ace, align 4, !tbaa !118
  %i.acj = load i32, ptr %i.acf, align 4, !tbaa !118
  %i.ack = insertelement <4 x i32> poison, i32 %i.acg, i64 0
  %i.acl = insertelement <4 x i32> %i.ack, i32 %i.ach, i64 1
  %i.acm = insertelement <4 x i32> %i.acl, i32 %i.aci, i64 2
  %i.acn = insertelement <4 x i32> %i.acm, i32 %i.acj, i64 3
  %i.aco = shl <4 x i32> %i.acn, %broadcast.splat567
  %i.acp = or disjoint i64 %i.aan, 3              ; 2 uses
  %i.acq = or disjoint i64 %i.aao, 7              ; 2 uses
  %i.acr = or disjoint i64 %i.aaq, 11             ; 2 uses
  %i.acs = or disjoint i64 %i.aas, 15             ; 2 uses
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acp
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acq
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acr
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acs
  %i.acx = load i32, ptr %i.act, align 4, !tbaa !118
  %i.acy = load i32, ptr %i.acu, align 4, !tbaa !118
  %i.acz = load i32, ptr %i.acv, align 4, !tbaa !118
  %i.ada = load i32, ptr %i.acw, align 4, !tbaa !118
  %i.adb = insertelement <4 x i32> poison, i32 %i.acx, i64 0
  %i.adc = insertelement <4 x i32> %i.adb, i32 %i.acy, i64 1
  %i.add = insertelement <4 x i32> %i.adc, i32 %i.acz, i64 2
  %i.ade = insertelement <4 x i32> %i.add, i32 %i.ada, i64 3
  %i.adf = shl <4 x i32> %i.ade, %broadcast.splat567
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aan
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aap
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aar
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aat
  %i.adk = load i32, ptr %i.adg, align 4, !tbaa !118
  %i.adl = load i32, ptr %i.adh, align 4, !tbaa !118
  %i.adm = load i32, ptr %i.adi, align 4, !tbaa !118
  %i.adn = load i32, ptr %i.adj, align 4, !tbaa !118
  %i.ado = insertelement <4 x i32> poison, i32 %i.adk, i64 0
  %i.adp = insertelement <4 x i32> %i.ado, i32 %i.adl, i64 1
  %i.adq = insertelement <4 x i32> %i.adp, i32 %i.adm, i64 2
  %i.adr = insertelement <4 x i32> %i.adq, i32 %i.adn, i64 3
  %i.ads = shl <4 x i32> %i.adr, %broadcast.splat569 ; 3 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abh
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abi
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abj
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abk
  %i.adx = load i32, ptr %i.adt, align 4, !tbaa !118
  %i.ady = load i32, ptr %i.adu, align 4, !tbaa !118
  %i.adz = load i32, ptr %i.adv, align 4, !tbaa !118
  %i.aea = load i32, ptr %i.adw, align 4, !tbaa !118
  %i.aeb = insertelement <4 x i32> poison, i32 %i.adx, i64 0
  %i.aec = insertelement <4 x i32> %i.aeb, i32 %i.ady, i64 1
  %i.aed = insertelement <4 x i32> %i.aec, i32 %i.adz, i64 2
  %i.aee = insertelement <4 x i32> %i.aed, i32 %i.aea, i64 3
  %i.aef = shl <4 x i32> %i.aee, %broadcast.splat569 ; 3 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aby
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abz
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aca
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acb
  %i.aek = load i32, ptr %i.aeg, align 4, !tbaa !118
  %i.ael = load i32, ptr %i.aeh, align 4, !tbaa !118
  %i.aem = load i32, ptr %i.aei, align 4, !tbaa !118
  %i.aen = load i32, ptr %i.aej, align 4, !tbaa !118
  %i.aeo = insertelement <4 x i32> poison, i32 %i.aek, i64 0
  %i.aep = insertelement <4 x i32> %i.aeo, i32 %i.ael, i64 1
  %i.aeq = insertelement <4 x i32> %i.aep, i32 %i.aem, i64 2
  %i.aer = insertelement <4 x i32> %i.aeq, i32 %i.aen, i64 3
  %i.aes = shl <4 x i32> %i.aer, %broadcast.splat569 ; 3 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acp
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acq
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acr
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acs
  %i.aex = load i32, ptr %i.aet, align 4, !tbaa !118
  %i.aey = load i32, ptr %i.aeu, align 4, !tbaa !118
  %i.aez = load i32, ptr %i.aev, align 4, !tbaa !118
  %i.afa = load i32, ptr %i.aew, align 4, !tbaa !118
  %i.afb = insertelement <4 x i32> poison, i32 %i.aex, i64 0
  %i.afc = insertelement <4 x i32> %i.afb, i32 %i.aey, i64 1
  %i.afd = insertelement <4 x i32> %i.afc, i32 %i.aez, i64 2
  %i.afe = insertelement <4 x i32> %i.afd, i32 %i.afa, i64 3
  %i.aff = shl <4 x i32> %i.afe, %broadcast.splat569 ; 3 uses
  %i.afg = shl <4 x i32> %i.abg, splat (i32 1)
  %i.afh = and <4 x i32> %i.ads, splat (i32 1)
  %i.afi = or disjoint <4 x i32> %i.afh, %i.afg   ; 2 uses
  %i.afj = shl <4 x i32> %i.abx, splat (i32 1)
  %i.afk = and <4 x i32> %i.aef, splat (i32 1)
  %i.afl = or disjoint <4 x i32> %i.afk, %i.afj   ; 2 uses
  %i.afm = shl <4 x i32> %i.aco, splat (i32 1)
  %i.afn = and <4 x i32> %i.aes, splat (i32 1)
  %i.afo = or disjoint <4 x i32> %i.afn, %i.afm   ; 2 uses
  %i.afp = shl <4 x i32> %i.adf, splat (i32 1)
  %i.afq = and <4 x i32> %i.aff, splat (i32 1)
  %i.afr = or disjoint <4 x i32> %i.afq, %i.afp   ; 2 uses
  %i.afs = add <4 x i32> %i.afi, %i.ads
  %i.aft = add <4 x i32> %i.afl, %i.aef
  %i.afu = add <4 x i32> %i.afo, %i.aes
  %i.afv = add <4 x i32> %i.afr, %i.aff
  %i.afw = sub <4 x i32> %i.afi, %i.ads
  %i.afx = sub <4 x i32> %i.afl, %i.aef
  %i.afy = sub <4 x i32> %i.afo, %i.aes
  %i.afz = sub <4 x i32> %i.afr, %i.aff
  %i.aga = shl nuw nsw i64 %index571, 5
  %i.agb = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.aga
  %i.agc = shufflevector <4 x i32> %i.afs, <4 x i32> %i.afw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agd = shufflevector <4 x i32> %i.aft, <4 x i32> %i.afx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x i32> %i.afu, <4 x i32> %i.afy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.age = shufflevector <4 x i32> %i.afv, <4 x i32> %i.afz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <8 x i32> %i.agc, <8 x i32> %i.agd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agf = shufflevector <8 x i32> %7, <8 x i32> %i.age, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agg = shufflevector <16 x i32> %8, <16 x i32> %i.agf, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.agh = ashr <32 x i32> %i.agg, splat (i32 1)
  %i.agi = sitofp <32 x i32> %i.agh to <32 x float>
  %interleaved.vec572 = fmul nnan <32 x float> %i.agi, splat (float f0x30000000)
  store <32 x float> %interleaved.vec572, ptr %i.agb, align 4, !tbaa !349
  %index.next573 = add nuw i64 %index571, 4       ; 2 uses
  %i.agj = icmp eq i64 %index.next573, %n.vec565
  br i1 %i.agj, label %middle.block574, label %vector.body570, !llvm.loop !2284

middle.block574:                                  ; preds = %vector.body570
  %cmp.n575 = icmp eq i64 %i.aai, %n.vec565
  br i1 %cmp.n575, label %.loopexit, label %scalar.ph562.preheader

scalar.ph562.preheader:                           ; preds = %.lr.ph155, %middle.block574
  %.1.i106154.ph = phi i64 [ 0, %.lr.ph155 ], [ %n.vec565, %middle.block574 ]
  %i.agk = insertelement <2 x i32> poison, i32 %i.aak, i64 0
  %i.agl = shufflevector <2 x i32> %i.agk, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agm = insertelement <2 x i32> poison, i32 %i.aam, i64 0
  %i.agn = shufflevector <2 x i32> %i.agm, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph562

bb.x:                                             ; preds = %bb.w
  br i1 %.not224, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.ago = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.agp = zext i8 %i.ago to i32                  ; 2 uses
  %i.agq = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.agr = zext i8 %i.agq to i32                  ; 2 uses
  %min.iters.check578 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check578, label %scalar.ph577.preheader, label %vector.ph579

vector.ph579:                                     ; preds = %.lr.ph
  %n.vec580 = and i64 %i.aai, 1073741820          ; 3 uses
  %broadcast.splatinsert581 = insertelement <4 x i32> poison, i32 %i.agp, i64 0
  %broadcast.splat582 = shufflevector <4 x i32> %broadcast.splatinsert581, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert583 = insertelement <4 x i32> poison, i32 %i.agr, i64 0
  %broadcast.splat584 = shufflevector <4 x i32> %broadcast.splatinsert583, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body587

vector.body587:                                   ; preds = %vector.body587, %vector.ph579
  %index588 = phi i64 [ 0, %vector.ph579 ], [ %index.next590, %vector.body587 ] ; 6 uses
  %i.ags = shl nuw nsw i64 %index588, 2           ; 5 uses
  %i.agt = shl i64 %index588, 2                   ; 4 uses
  %i.agu = or disjoint i64 %i.agt, 4              ; 2 uses
  %i.agv = shl i64 %index588, 2                   ; 4 uses
  %i.agw = or disjoint i64 %i.agv, 8              ; 2 uses
  %i.agx = shl i64 %index588, 2                   ; 4 uses
  %i.agy = or disjoint i64 %i.agx, 12             ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ags
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.agu
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.agw
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.agy
  %i.ahd = load i32, ptr %i.agz, align 4, !tbaa !118
  %i.ahe = load i32, ptr %i.aha, align 4, !tbaa !118
  %i.ahf = load i32, ptr %i.ahb, align 4, !tbaa !118
  %i.ahg = load i32, ptr %i.ahc, align 4, !tbaa !118
  %i.ahh = insertelement <4 x i32> poison, i32 %i.ahd, i64 0
  %i.ahi = insertelement <4 x i32> %i.ahh, i32 %i.ahe, i64 1
  %i.ahj = insertelement <4 x i32> %i.ahi, i32 %i.ahf, i64 2
  %i.ahk = insertelement <4 x i32> %i.ahj, i32 %i.ahg, i64 3
  %i.ahl = shl <4 x i32> %i.ahk, %broadcast.splat582
  %i.ahm = or disjoint i64 %i.ags, 1              ; 2 uses
  %i.ahn = or disjoint i64 %i.agt, 5              ; 2 uses
  %i.aho = or disjoint i64 %i.agv, 9              ; 2 uses
  %i.ahp = or disjoint i64 %i.agx, 13             ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ahm
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ahn
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aho
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ahp
  %i.ahu = load i32, ptr %i.ahq, align 4, !tbaa !118
  %i.ahv = load i32, ptr %i.ahr, align 4, !tbaa !118
  %i.ahw = load i32, ptr %i.ahs, align 4, !tbaa !118
  %i.ahx = load i32, ptr %i.aht, align 4, !tbaa !118
  %i.ahy = insertelement <4 x i32> poison, i32 %i.ahu, i64 0
  %i.ahz = insertelement <4 x i32> %i.ahy, i32 %i.ahv, i64 1
  %i.aia = insertelement <4 x i32> %i.ahz, i32 %i.ahw, i64 2
  %i.aib = insertelement <4 x i32> %i.aia, i32 %i.ahx, i64 3
  %i.aic = shl <4 x i32> %i.aib, %broadcast.splat582
  %i.aid = or disjoint i64 %i.ags, 2              ; 2 uses
  %i.aie = or disjoint i64 %i.agt, 6              ; 2 uses
  %i.aif = or disjoint i64 %i.agv, 10             ; 2 uses
  %i.aig = or disjoint i64 %i.agx, 14             ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aid
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aie
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aif
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aig
  %i.ail = load i32, ptr %i.aih, align 4, !tbaa !118
  %i.aim = load i32, ptr %i.aii, align 4, !tbaa !118
  %i.ain = load i32, ptr %i.aij, align 4, !tbaa !118
  %i.aio = load i32, ptr %i.aik, align 4, !tbaa !118
  %i.aip = insertelement <4 x i32> poison, i32 %i.ail, i64 0
  %i.aiq = insertelement <4 x i32> %i.aip, i32 %i.aim, i64 1
  %i.air = insertelement <4 x i32> %i.aiq, i32 %i.ain, i64 2
  %i.ais = insertelement <4 x i32> %i.air, i32 %i.aio, i64 3
  %i.ait = shl <4 x i32> %i.ais, %broadcast.splat582
  %i.aiu = or disjoint i64 %i.ags, 3              ; 2 uses
  %i.aiv = or disjoint i64 %i.agt, 7              ; 2 uses
  %i.aiw = or disjoint i64 %i.agv, 11             ; 2 uses
  %i.aix = or disjoint i64 %i.agx, 15             ; 2 uses
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aiu
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aiv
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aiw
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aix
  %i.ajc = load i32, ptr %i.aiy, align 4, !tbaa !118
  %i.ajd = load i32, ptr %i.aiz, align 4, !tbaa !118
  %i.aje = load i32, ptr %i.aja, align 4, !tbaa !118
  %i.ajf = load i32, ptr %i.ajb, align 4, !tbaa !118
  %i.ajg = insertelement <4 x i32> poison, i32 %i.ajc, i64 0
  %i.ajh = insertelement <4 x i32> %i.ajg, i32 %i.ajd, i64 1
  %i.aji = insertelement <4 x i32> %i.ajh, i32 %i.aje, i64 2
  %i.ajj = insertelement <4 x i32> %i.aji, i32 %i.ajf, i64 3
  %i.ajk = shl <4 x i32> %i.ajj, %broadcast.splat582
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ags
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.agu
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.agw
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.agy
  %i.ajp = load i32, ptr %i.ajl, align 4, !tbaa !118
  %i.ajq = load i32, ptr %i.ajm, align 4, !tbaa !118
  %i.ajr = load i32, ptr %i.ajn, align 4, !tbaa !118
  %i.ajs = load i32, ptr %i.ajo, align 4, !tbaa !118
  %i.ajt = insertelement <4 x i32> poison, i32 %i.ajp, i64 0
  %i.aju = insertelement <4 x i32> %i.ajt, i32 %i.ajq, i64 1
  %i.ajv = insertelement <4 x i32> %i.aju, i32 %i.ajr, i64 2
  %i.ajw = insertelement <4 x i32> %i.ajv, i32 %i.ajs, i64 3
  %i.ajx = shl <4 x i32> %i.ajw, %broadcast.splat584 ; 3 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ahm
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ahn
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aho
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ahp
  %i.akc = load i32, ptr %i.ajy, align 4, !tbaa !118
  %i.akd = load i32, ptr %i.ajz, align 4, !tbaa !118
  %i.ake = load i32, ptr %i.aka, align 4, !tbaa !118
  %i.akf = load i32, ptr %i.akb, align 4, !tbaa !118
  %i.akg = insertelement <4 x i32> poison, i32 %i.akc, i64 0
  %i.akh = insertelement <4 x i32> %i.akg, i32 %i.akd, i64 1
  %i.aki = insertelement <4 x i32> %i.akh, i32 %i.ake, i64 2
  %i.akj = insertelement <4 x i32> %i.aki, i32 %i.akf, i64 3
  %i.akk = shl <4 x i32> %i.akj, %broadcast.splat584 ; 3 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aid
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aie
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aif
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aig
  %i.akp = load i32, ptr %i.akl, align 4, !tbaa !118
  %i.akq = load i32, ptr %i.akm, align 4, !tbaa !118
  %i.akr = load i32, ptr %i.akn, align 4, !tbaa !118
  %i.aks = load i32, ptr %i.ako, align 4, !tbaa !118
  %i.akt = insertelement <4 x i32> poison, i32 %i.akp, i64 0
  %i.aku = insertelement <4 x i32> %i.akt, i32 %i.akq, i64 1
  %i.akv = insertelement <4 x i32> %i.aku, i32 %i.akr, i64 2
  %i.akw = insertelement <4 x i32> %i.akv, i32 %i.aks, i64 3
  %i.akx = shl <4 x i32> %i.akw, %broadcast.splat584 ; 3 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aiu
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aiv
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aiw
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aix
  %i.alc = load i32, ptr %i.aky, align 4, !tbaa !118
  %i.ald = load i32, ptr %i.akz, align 4, !tbaa !118
  %i.ale = load i32, ptr %i.ala, align 4, !tbaa !118
  %i.alf = load i32, ptr %i.alb, align 4, !tbaa !118
  %i.alg = insertelement <4 x i32> poison, i32 %i.alc, i64 0
  %i.alh = insertelement <4 x i32> %i.alg, i32 %i.ald, i64 1
  %i.ali = insertelement <4 x i32> %i.alh, i32 %i.ale, i64 2
  %i.alj = insertelement <4 x i32> %i.ali, i32 %i.alf, i64 3
  %i.alk = shl <4 x i32> %i.alj, %broadcast.splat584 ; 3 uses
  %i.all = shl <4 x i32> %i.ahl, splat (i32 1)
  %i.alm = and <4 x i32> %i.ajx, splat (i32 1)
  %i.aln = or disjoint <4 x i32> %i.alm, %i.all   ; 2 uses
  %i.alo = shl <4 x i32> %i.aic, splat (i32 1)
  %i.alp = and <4 x i32> %i.akk, splat (i32 1)
  %i.alq = or disjoint <4 x i32> %i.alp, %i.alo   ; 2 uses
  %i.alr = shl <4 x i32> %i.ait, splat (i32 1)
  %i.als = and <4 x i32> %i.akx, splat (i32 1)
  %i.alt = or disjoint <4 x i32> %i.als, %i.alr   ; 2 uses
  %i.alu = shl <4 x i32> %i.ajk, splat (i32 1)
  %i.alv = and <4 x i32> %i.alk, splat (i32 1)
  %i.alw = or disjoint <4 x i32> %i.alv, %i.alu   ; 2 uses
  %i.alx = add <4 x i32> %i.aln, %i.ajx
  %i.aly = add <4 x i32> %i.alq, %i.akk
  %i.alz = add <4 x i32> %i.alt, %i.akx
  %i.ama = add <4 x i32> %i.alw, %i.alk
  %i.amb = sub <4 x i32> %i.aln, %i.ajx
  %i.amc = sub <4 x i32> %i.alq, %i.akk
  %i.amd = sub <4 x i32> %i.alt, %i.akx
  %i.ame = sub <4 x i32> %i.alw, %i.alk
  %i.amf = shl nuw nsw i64 %index588, 5
  %i.amg = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.amf
  %i.amh = shufflevector <4 x i32> %i.alx, <4 x i32> %i.amb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ami = shufflevector <4 x i32> %i.aly, <4 x i32> %i.amc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amj = shufflevector <8 x i32> %i.amh, <8 x i32> %i.ami, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amk = shl <16 x i32> %i.amj, %i.ao
  %i.aml = shufflevector <4 x i32> %i.alz, <4 x i32> %i.amd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amm = shufflevector <4 x i32> %i.ama, <4 x i32> %i.ame, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amn = shufflevector <8 x i32> %i.aml, <8 x i32> %i.amm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amo = shl <16 x i32> %i.amn, %i.ap
  %i.amp = shufflevector <16 x i32> %i.amk, <16 x i32> %i.amo, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.amq = sitofp <32 x i32> %i.amp to <32 x float>
  %interleaved.vec589 = fmul nnan <32 x float> %i.amq, splat (float f0x30000000)
  store <32 x float> %interleaved.vec589, ptr %i.amg, align 4, !tbaa !349
  %index.next590 = add nuw i64 %index588, 4       ; 2 uses
  %i.amr = icmp eq i64 %index.next590, %n.vec580
end_hunk_1
begin_hunk_2_@ma_dr_flac_read_pcm_frames_s16:bb.a
  %.3.i160 = phi i64 [ %i.pq, %scalar.ph459 ], [ %.3.i160.ph, %scalar.ph459.preheader ] ; 4 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.3.i160
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !118
  %i.oz = shl i32 %i.oy, %i.ny
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.3.i160
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !118
  %i.pc = shl i32 %i.pb, %i.oa                    ; 3 uses
  %i.pd = shl i32 %i.oz, 1
  %i.pe = and i32 %i.pc, 1
  %i.pf = or disjoint i32 %i.pe, %i.pd            ; 2 uses
  %i.pg = add i32 %i.pf, %i.pc
  %i.ph = shl i32 %i.pg, %i.af
  %i.pi = lshr i32 %i.ph, 16
  %i.pj = trunc nuw i32 %i.pi to i16
  %.idx120 = shl nuw nsw i64 %.3.i160, 2
  %i.pk = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx120 ; 2 uses
  store i16 %i.pj, ptr %i.pk, align 2, !tbaa !122
  %i.pl = sub i32 %i.pf, %i.pc
  %i.pm = shl i32 %i.pl, %i.af
  %i.pn = lshr i32 %i.pm, 16
  %i.po = trunc nuw i32 %i.pn to i16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  store i16 %i.po, ptr %i.pp, align 2, !tbaa !122
  %i.pq = add nuw nsw i64 %.3.i160, 1             ; 2 uses
  %i.pr = icmp samesign ult i64 %i.pq, %spec.select
  br i1 %i.pr, label %scalar.ph459, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !2317

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.ps = lshr i64 %spec.select, 2                ; 7 uses
  %.not224 = icmp eq i64 %i.ps, 0                 ; 2 uses
  br i1 %.not.i, label %.preheader143, label %bb.x

.preheader143:                                    ; preds = %bb.w
  br i1 %.not224, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader143
  %i.pt = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.pu = zext i8 %i.pt to i32                    ; 2 uses
  %i.pv = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.pw = zext i8 %i.pv to i32                    ; 2 uses
  %min.iters.check498 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check498, label %scalar.ph497.preheader, label %vector.ph499

vector.ph499:                                     ; preds = %.lr.ph155
  %n.vec500 = and i64 %i.ps, 1073741820           ; 3 uses
  %broadcast.splatinsert501 = insertelement <4 x i32> poison, i32 %i.pu, i64 0
  %broadcast.splat502 = shufflevector <4 x i32> %broadcast.splatinsert501, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert503 = insertelement <4 x i32> poison, i32 %i.pw, i64 0
  %broadcast.splat504 = shufflevector <4 x i32> %broadcast.splatinsert503, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph499
  %index506 = phi i64 [ 0, %vector.ph499 ], [ %index.next508, %vector.body505 ] ; 6 uses
  %i.px = shl nuw nsw i64 %index506, 2            ; 5 uses
  %i.py = shl i64 %index506, 2                    ; 4 uses
  %i.pz = or disjoint i64 %i.py, 4                ; 2 uses
  %i.qa = shl i64 %index506, 2                    ; 4 uses
  %i.qb = or disjoint i64 %i.qa, 8                ; 2 uses
  %i.qc = shl i64 %index506, 2                    ; 4 uses
  %i.qd = or disjoint i64 %i.qc, 12               ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.px
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.pz
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qb
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qd
  %i.qi = load i32, ptr %i.qe, align 4, !tbaa !118
  %i.qj = load i32, ptr %i.qf, align 4, !tbaa !118
  %i.qk = load i32, ptr %i.qg, align 4, !tbaa !118
  %i.ql = load i32, ptr %i.qh, align 4, !tbaa !118
  %i.qm = insertelement <4 x i32> poison, i32 %i.qi, i64 0
  %i.qn = insertelement <4 x i32> %i.qm, i32 %i.qj, i64 1
  %i.qo = insertelement <4 x i32> %i.qn, i32 %i.qk, i64 2
  %i.qp = insertelement <4 x i32> %i.qo, i32 %i.ql, i64 3
  %i.qq = shl <4 x i32> %i.qp, %broadcast.splat502
  %i.qr = or disjoint i64 %i.px, 1                ; 2 uses
  %i.qs = or disjoint i64 %i.py, 5                ; 2 uses
  %i.qt = or disjoint i64 %i.qa, 9                ; 2 uses
  %i.qu = or disjoint i64 %i.qc, 13               ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qr
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qs
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qt
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qu
  %i.qz = load i32, ptr %i.qv, align 4, !tbaa !118
  %i.ra = load i32, ptr %i.qw, align 4, !tbaa !118
  %i.rb = load i32, ptr %i.qx, align 4, !tbaa !118
  %i.rc = load i32, ptr %i.qy, align 4, !tbaa !118
  %i.rd = insertelement <4 x i32> poison, i32 %i.qz, i64 0
  %i.re = insertelement <4 x i32> %i.rd, i32 %i.ra, i64 1
  %i.rf = insertelement <4 x i32> %i.re, i32 %i.rb, i64 2
  %i.rg = insertelement <4 x i32> %i.rf, i32 %i.rc, i64 3
  %i.rh = shl <4 x i32> %i.rg, %broadcast.splat502
  %i.ri = or disjoint i64 %i.px, 2                ; 2 uses
  %i.rj = or disjoint i64 %i.py, 6                ; 2 uses
  %i.rk = or disjoint i64 %i.qa, 10               ; 2 uses
  %i.rl = or disjoint i64 %i.qc, 14               ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ri
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rj
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rk
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rl
  %i.rq = load i32, ptr %i.rm, align 4, !tbaa !118
  %i.rr = load i32, ptr %i.rn, align 4, !tbaa !118
  %i.rs = load i32, ptr %i.ro, align 4, !tbaa !118
  %i.rt = load i32, ptr %i.rp, align 4, !tbaa !118
  %i.ru = insertelement <4 x i32> poison, i32 %i.rq, i64 0
  %i.rv = insertelement <4 x i32> %i.ru, i32 %i.rr, i64 1
  %i.rw = insertelement <4 x i32> %i.rv, i32 %i.rs, i64 2
  %i.rx = insertelement <4 x i32> %i.rw, i32 %i.rt, i64 3
  %i.ry = shl <4 x i32> %i.rx, %broadcast.splat502
  %i.rz = or disjoint i64 %i.px, 3                ; 2 uses
  %i.sa = or disjoint i64 %i.py, 7                ; 2 uses
  %i.sb = or disjoint i64 %i.qa, 11               ; 2 uses
  %i.sc = or disjoint i64 %i.qc, 15               ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rz
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.sa
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.sb
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.sc
  %i.sh = load i32, ptr %i.sd, align 4, !tbaa !118
  %i.si = load i32, ptr %i.se, align 4, !tbaa !118
  %i.sj = load i32, ptr %i.sf, align 4, !tbaa !118
  %i.sk = load i32, ptr %i.sg, align 4, !tbaa !118
  %i.sl = insertelement <4 x i32> poison, i32 %i.sh, i64 0
  %i.sm = insertelement <4 x i32> %i.sl, i32 %i.si, i64 1
  %i.sn = insertelement <4 x i32> %i.sm, i32 %i.sj, i64 2
  %i.so = insertelement <4 x i32> %i.sn, i32 %i.sk, i64 3
  %i.sp = shl <4 x i32> %i.so, %broadcast.splat502
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.px
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.pz
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qb
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qd
  %i.su = load i32, ptr %i.sq, align 4, !tbaa !118
  %i.sv = load i32, ptr %i.sr, align 4, !tbaa !118
  %i.sw = load i32, ptr %i.ss, align 4, !tbaa !118
  %i.sx = load i32, ptr %i.st, align 4, !tbaa !118
  %i.sy = insertelement <4 x i32> poison, i32 %i.su, i64 0
  %i.sz = insertelement <4 x i32> %i.sy, i32 %i.sv, i64 1
  %i.ta = insertelement <4 x i32> %i.sz, i32 %i.sw, i64 2
  %i.tb = insertelement <4 x i32> %i.ta, i32 %i.sx, i64 3
  %i.tc = shl <4 x i32> %i.tb, %broadcast.splat504 ; 3 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qr
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qs
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qt
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qu
  %i.th = load i32, ptr %i.td, align 4, !tbaa !118
  %i.ti = load i32, ptr %i.te, align 4, !tbaa !118
  %i.tj = load i32, ptr %i.tf, align 4, !tbaa !118
  %i.tk = load i32, ptr %i.tg, align 4, !tbaa !118
  %i.tl = insertelement <4 x i32> poison, i32 %i.th, i64 0
  %i.tm = insertelement <4 x i32> %i.tl, i32 %i.ti, i64 1
  %i.tn = insertelement <4 x i32> %i.tm, i32 %i.tj, i64 2
  %i.to = insertelement <4 x i32> %i.tn, i32 %i.tk, i64 3
  %i.tp = shl <4 x i32> %i.to, %broadcast.splat504 ; 3 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ri
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.rj
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.rk
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.rl
  %i.tu = load i32, ptr %i.tq, align 4, !tbaa !118
  %i.tv = load i32, ptr %i.tr, align 4, !tbaa !118
  %i.tw = load i32, ptr %i.ts, align 4, !tbaa !118
  %i.tx = load i32, ptr %i.tt, align 4, !tbaa !118
  %i.ty = insertelement <4 x i32> poison, i32 %i.tu, i64 0
  %i.tz = insertelement <4 x i32> %i.ty, i32 %i.tv, i64 1
  %i.ua = insertelement <4 x i32> %i.tz, i32 %i.tw, i64 2
  %i.ub = insertelement <4 x i32> %i.ua, i32 %i.tx, i64 3
  %i.uc = shl <4 x i32> %i.ub, %broadcast.splat504 ; 3 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.rz
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.sa
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.sb
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.sc
  %i.uh = load i32, ptr %i.ud, align 4, !tbaa !118
  %i.ui = load i32, ptr %i.ue, align 4, !tbaa !118
  %i.uj = load i32, ptr %i.uf, align 4, !tbaa !118
  %i.uk = load i32, ptr %i.ug, align 4, !tbaa !118
  %i.ul = insertelement <4 x i32> poison, i32 %i.uh, i64 0
  %i.um = insertelement <4 x i32> %i.ul, i32 %i.ui, i64 1
  %i.un = insertelement <4 x i32> %i.um, i32 %i.uj, i64 2
  %i.uo = insertelement <4 x i32> %i.un, i32 %i.uk, i64 3
  %i.up = shl <4 x i32> %i.uo, %broadcast.splat504 ; 3 uses
  %i.uq = shl <4 x i32> %i.qq, splat (i32 1)
  %i.ur = and <4 x i32> %i.tc, splat (i32 1)
  %i.us = or disjoint <4 x i32> %i.ur, %i.uq      ; 2 uses
  %i.ut = shl <4 x i32> %i.rh, splat (i32 1)
  %i.uu = and <4 x i32> %i.tp, splat (i32 1)
  %i.uv = or disjoint <4 x i32> %i.uu, %i.ut      ; 2 uses
  %i.uw = shl <4 x i32> %i.ry, splat (i32 1)
  %i.ux = and <4 x i32> %i.uc, splat (i32 1)
  %i.uy = or disjoint <4 x i32> %i.ux, %i.uw      ; 2 uses
  %i.uz = shl <4 x i32> %i.sp, splat (i32 1)
  %i.va = and <4 x i32> %i.up, splat (i32 1)
  %i.vb = or disjoint <4 x i32> %i.va, %i.uz      ; 2 uses
  %i.vc = add <4 x i32> %i.us, %i.tc
  %i.vd = add <4 x i32> %i.uv, %i.tp
  %i.ve = add <4 x i32> %i.uy, %i.uc
  %i.vf = add <4 x i32> %i.vb, %i.up
  %i.vg = sub <4 x i32> %i.us, %i.tc
  %i.vh = sub <4 x i32> %i.uv, %i.tp
  %i.vi = sub <4 x i32> %i.uy, %i.uc
  %i.vj = sub <4 x i32> %i.vb, %i.up
  %i.vk = shl nuw nsw i64 %index506, 4
  %i.vl = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.vk
  %i.vm = shufflevector <4 x i32> %i.vc, <4 x i32> %i.vg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vn = shufflevector <4 x i32> %i.vd, <4 x i32> %i.vh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = shufflevector <4 x i32> %i.ve, <4 x i32> %i.vi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vo = shufflevector <4 x i32> %i.vf, <4 x i32> %i.vj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <8 x i32> %i.vm, <8 x i32> %i.vn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vp = shufflevector <8 x i32> %3, <8 x i32> %i.vo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vq = shufflevector <16 x i32> %4, <16 x i32> %i.vp, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.vr = ashr <32 x i32> %i.vq, splat (i32 1)
  %i.vs = lshr <32 x i32> %i.vr, splat (i32 16)
  %interleaved.vec507 = trunc nuw <32 x i32> %i.vs to <32 x i16>
  store <32 x i16> %interleaved.vec507, ptr %i.vl, align 2, !tbaa !122
  %index.next508 = add nuw i64 %index506, 4       ; 2 uses
  %i.vt = icmp eq i64 %index.next508, %n.vec500
  br i1 %i.vt, label %middle.block509, label %vector.body505, !llvm.loop !2318

middle.block509:                                  ; preds = %vector.body505
  %cmp.n510 = icmp eq i64 %i.ps, %n.vec500
  br i1 %cmp.n510, label %.loopexit, label %scalar.ph497.preheader

scalar.ph497.preheader:                           ; preds = %.lr.ph155, %middle.block509
  %.1.i106154.ph = phi i64 [ 0, %.lr.ph155 ], [ %n.vec500, %middle.block509 ]
  %i.vu = insertelement <4 x i32> poison, i32 %i.pu, i64 0
  %i.vv = shufflevector <4 x i32> %i.vu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vw = insertelement <4 x i32> poison, i32 %i.pw, i64 0
  %i.vx = shufflevector <4 x i32> %i.vw, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %scalar.ph497

bb.x:                                             ; preds = %bb.w
  br i1 %.not224, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.vy = load i8, ptr %i.ag, align 1, !tbaa !734
  %i.vz = zext i8 %i.vy to i32                    ; 2 uses
  %i.wa = load i8, ptr %i.ah, align 1, !tbaa !734
  %i.wb = zext i8 %i.wa to i32                    ; 2 uses
  %min.iters.check513 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check513, label %scalar.ph512.preheader, label %vector.ph514

vector.ph514:                                     ; preds = %.lr.ph
  %n.vec515 = and i64 %i.ps, 1073741820           ; 3 uses
  %broadcast.splatinsert516 = insertelement <4 x i32> poison, i32 %i.vz, i64 0
  %broadcast.splat517 = shufflevector <4 x i32> %broadcast.splatinsert516, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert518 = insertelement <4 x i32> poison, i32 %i.wb, i64 0
  %broadcast.splat519 = shufflevector <4 x i32> %broadcast.splatinsert518, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body522

vector.body522:                                   ; preds = %vector.body522, %vector.ph514
  %index523 = phi i64 [ 0, %vector.ph514 ], [ %index.next525, %vector.body522 ] ; 6 uses
  %i.wc = shl nuw nsw i64 %index523, 2            ; 5 uses
  %i.wd = shl i64 %index523, 2                    ; 4 uses
  %i.we = or disjoint i64 %i.wd, 4                ; 2 uses
  %i.wf = shl i64 %index523, 2                    ; 4 uses
  %i.wg = or disjoint i64 %i.wf, 8                ; 2 uses
  %i.wh = shl i64 %index523, 2                    ; 4 uses
  %i.wi = or disjoint i64 %i.wh, 12               ; 2 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.wc
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.we
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.wg
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.wi
  %i.wn = load i32, ptr %i.wj, align 4, !tbaa !118
  %i.wo = load i32, ptr %i.wk, align 4, !tbaa !118
  %i.wp = load i32, ptr %i.wl, align 4, !tbaa !118
  %i.wq = load i32, ptr %i.wm, align 4, !tbaa !118
  %i.wr = insertelement <4 x i32> poison, i32 %i.wn, i64 0
  %i.ws = insertelement <4 x i32> %i.wr, i32 %i.wo, i64 1
  %i.wt = insertelement <4 x i32> %i.ws, i32 %i.wp, i64 2
  %i.wu = insertelement <4 x i32> %i.wt, i32 %i.wq, i64 3
  %i.wv = shl <4 x i32> %i.wu, %broadcast.splat517
  %i.ww = or disjoint i64 %i.wc, 1                ; 2 uses
  %i.wx = or disjoint i64 %i.wd, 5                ; 2 uses
  %i.wy = or disjoint i64 %i.wf, 9                ; 2 uses
  %i.wz = or disjoint i64 %i.wh, 13               ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ww
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.wx
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.wy
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.wz
  %i.xe = load i32, ptr %i.xa, align 4, !tbaa !118
  %i.xf = load i32, ptr %i.xb, align 4, !tbaa !118
  %i.xg = load i32, ptr %i.xc, align 4, !tbaa !118
  %i.xh = load i32, ptr %i.xd, align 4, !tbaa !118
  %i.xi = insertelement <4 x i32> poison, i32 %i.xe, i64 0
  %i.xj = insertelement <4 x i32> %i.xi, i32 %i.xf, i64 1
  %i.xk = insertelement <4 x i32> %i.xj, i32 %i.xg, i64 2
  %i.xl = insertelement <4 x i32> %i.xk, i32 %i.xh, i64 3
  %i.xm = shl <4 x i32> %i.xl, %broadcast.splat517
  %i.xn = or disjoint i64 %i.wc, 2                ; 2 uses
  %i.xo = or disjoint i64 %i.wd, 6                ; 2 uses
  %i.xp = or disjoint i64 %i.wf, 10               ; 2 uses
  %i.xq = or disjoint i64 %i.wh, 14               ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xn
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xo
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xp
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xq
  %i.xv = load i32, ptr %i.xr, align 4, !tbaa !118
  %i.xw = load i32, ptr %i.xs, align 4, !tbaa !118
  %i.xx = load i32, ptr %i.xt, align 4, !tbaa !118
  %i.xy = load i32, ptr %i.xu, align 4, !tbaa !118
  %i.xz = insertelement <4 x i32> poison, i32 %i.xv, i64 0
  %i.ya = insertelement <4 x i32> %i.xz, i32 %i.xw, i64 1
  %i.yb = insertelement <4 x i32> %i.ya, i32 %i.xx, i64 2
  %i.yc = insertelement <4 x i32> %i.yb, i32 %i.xy, i64 3
  %i.yd = shl <4 x i32> %i.yc, %broadcast.splat517
  %i.ye = or disjoint i64 %i.wc, 3                ; 2 uses
  %i.yf = or disjoint i64 %i.wd, 7                ; 2 uses
  %i.yg = or disjoint i64 %i.wf, 11               ; 2 uses
  %i.yh = or disjoint i64 %i.wh, 15               ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ye
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.yf
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.yg
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.yh
  %i.ym = load i32, ptr %i.yi, align 4, !tbaa !118
  %i.yn = load i32, ptr %i.yj, align 4, !tbaa !118
  %i.yo = load i32, ptr %i.yk, align 4, !tbaa !118
  %i.yp = load i32, ptr %i.yl, align 4, !tbaa !118
  %i.yq = insertelement <4 x i32> poison, i32 %i.ym, i64 0
  %i.yr = insertelement <4 x i32> %i.yq, i32 %i.yn, i64 1
  %i.ys = insertelement <4 x i32> %i.yr, i32 %i.yo, i64 2
  %i.yt = insertelement <4 x i32> %i.ys, i32 %i.yp, i64 3
  %i.yu = shl <4 x i32> %i.yt, %broadcast.splat517
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wc
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.we
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wg
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wi
  %i.yz = load i32, ptr %i.yv, align 4, !tbaa !118
  %i.za = load i32, ptr %i.yw, align 4, !tbaa !118
  %i.zb = load i32, ptr %i.yx, align 4, !tbaa !118
  %i.zc = load i32, ptr %i.yy, align 4, !tbaa !118
  %i.zd = insertelement <4 x i32> poison, i32 %i.yz, i64 0
  %i.ze = insertelement <4 x i32> %i.zd, i32 %i.za, i64 1
  %i.zf = insertelement <4 x i32> %i.ze, i32 %i.zb, i64 2
  %i.zg = insertelement <4 x i32> %i.zf, i32 %i.zc, i64 3
  %i.zh = shl <4 x i32> %i.zg, %broadcast.splat519 ; 3 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ww
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wx
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wy
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wz
  %i.zm = load i32, ptr %i.zi, align 4, !tbaa !118
  %i.zn = load i32, ptr %i.zj, align 4, !tbaa !118
  %i.zo = load i32, ptr %i.zk, align 4, !tbaa !118
  %i.zp = load i32, ptr %i.zl, align 4, !tbaa !118
  %i.zq = insertelement <4 x i32> poison, i32 %i.zm, i64 0
  %i.zr = insertelement <4 x i32> %i.zq, i32 %i.zn, i64 1
  %i.zs = insertelement <4 x i32> %i.zr, i32 %i.zo, i64 2
  %i.zt = insertelement <4 x i32> %i.zs, i32 %i.zp, i64 3
  %i.zu = shl <4 x i32> %i.zt, %broadcast.splat519 ; 3 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xn
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xo
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xp
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xq
  %i.zz = load i32, ptr %i.zv, align 4, !tbaa !118
  %i.aaa = load i32, ptr %i.zw, align 4, !tbaa !118
  %i.aab = load i32, ptr %i.zx, align 4, !tbaa !118
  %i.aac = load i32, ptr %i.zy, align 4, !tbaa !118
  %i.aad = insertelement <4 x i32> poison, i32 %i.zz, i64 0
  %i.aae = insertelement <4 x i32> %i.aad, i32 %i.aaa, i64 1
  %i.aaf = insertelement <4 x i32> %i.aae, i32 %i.aab, i64 2
  %i.aag = insertelement <4 x i32> %i.aaf, i32 %i.aac, i64 3
  %i.aah = shl <4 x i32> %i.aag, %broadcast.splat519 ; 3 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ye
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.yf
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.yg
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.yh
  %i.aam = load i32, ptr %i.aai, align 4, !tbaa !118
  %i.aan = load i32, ptr %i.aaj, align 4, !tbaa !118
  %i.aao = load i32, ptr %i.aak, align 4, !tbaa !118
  %i.aap = load i32, ptr %i.aal, align 4, !tbaa !118
  %i.aaq = insertelement <4 x i32> poison, i32 %i.aam, i64 0
  %i.aar = insertelement <4 x i32> %i.aaq, i32 %i.aan, i64 1
  %i.aas = insertelement <4 x i32> %i.aar, i32 %i.aao, i64 2
  %i.aat = insertelement <4 x i32> %i.aas, i32 %i.aap, i64 3
  %i.aau = shl <4 x i32> %i.aat, %broadcast.splat519 ; 3 uses
  %i.aav = shl <4 x i32> %i.wv, splat (i32 1)
  %i.aaw = and <4 x i32> %i.zh, splat (i32 1)
  %i.aax = or disjoint <4 x i32> %i.aaw, %i.aav   ; 2 uses
  %i.aay = shl <4 x i32> %i.xm, splat (i32 1)
  %i.aaz = and <4 x i32> %i.zu, splat (i32 1)
  %i.aba = or disjoint <4 x i32> %i.aaz, %i.aay   ; 2 uses
  %i.abb = shl <4 x i32> %i.yd, splat (i32 1)
  %i.abc = and <4 x i32> %i.aah, splat (i32 1)
  %i.abd = or disjoint <4 x i32> %i.abc, %i.abb   ; 2 uses
  %i.abe = shl <4 x i32> %i.yu, splat (i32 1)
  %i.abf = and <4 x i32> %i.aau, splat (i32 1)
  %i.abg = or disjoint <4 x i32> %i.abf, %i.abe   ; 2 uses
  %i.abh = add <4 x i32> %i.aax, %i.zh
  %i.abi = add <4 x i32> %i.aba, %i.zu
  %i.abj = add <4 x i32> %i.abd, %i.aah
  %i.abk = add <4 x i32> %i.abg, %i.aau
  %i.abl = sub <4 x i32> %i.aax, %i.zh
  %i.abm = sub <4 x i32> %i.aba, %i.zu
  %i.abn = sub <4 x i32> %i.abd, %i.aah
  %i.abo = sub <4 x i32> %i.abg, %i.aau
  %i.abp = shl nuw nsw i64 %index523, 4
  %i.abq = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.abp
  %i.abr = shufflevector <4 x i32> %i.abh, <4 x i32> %i.abl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abs = shufflevector <4 x i32> %i.abi, <4 x i32> %i.abm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abt = shufflevector <8 x i32> %i.abr, <8 x i32> %i.abs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abu = shl <16 x i32> %i.abt, %i.am
  %i.abv = shufflevector <4 x i32> %i.abj, <4 x i32> %i.abn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abw = shufflevector <4 x i32> %i.abk, <4 x i32> %i.abo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abx = shufflevector <8 x i32> %i.abv, <8 x i32> %i.abw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aby = shl <16 x i32> %i.abx, %i.an
  %i.abz = shufflevector <16 x i32> %i.abu, <16 x i32> %i.aby, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.aca = lshr <32 x i32> %i.abz, splat (i32 16)
  %interleaved.vec524 = trunc nuw <32 x i32> %i.aca to <32 x i16>
  store <32 x i16> %interleaved.vec524, ptr %i.abq, align 2, !tbaa !122
  %index.next525 = add nuw i64 %index523, 4       ; 2 uses
  %i.acb = icmp eq i64 %index.next525, %n.vec515
end_hunk_2
