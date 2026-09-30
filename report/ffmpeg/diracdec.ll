Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/diracdec?download=true
inline.NumInlined: 153
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 34
begin_hunk_0_@dirac_decode_frame:bb.a
  br i1 %i.dz, label %get_delayed_pic.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 1, ptr %2, align 4, !tbaa !55
  br label %get_delayed_pic.exit

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.backedge
  %.097198 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.097.be, %.backedge ]
  %i.ea = sext i32 %.097198 to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %bb.ay
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph ], [ %indvars.iv.next, %bb.ay ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv ; 8 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !65
  %i.ed = icmp eq i8 %i.ec, 66
  br i1 %i.ed, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ee = getelementptr i8, ptr %i.eb, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !65
  %i.eg = icmp eq i8 %i.ef, 66
  br i1 %i.eg, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.eh = getelementptr i8, ptr %i.eb, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !65
  %i.ej = icmp eq i8 %i.ei, 67
  br i1 %i.ej, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ek = getelementptr i8, ptr %i.eb, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !65
  %i.em = icmp eq i8 %i.el, 68
  br i1 %i.em, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.en = icmp slt i64 %indvars.iv, %invariant.op
  br i1 %i.en, label %bb.au, label %._crit_edge.loopexit, !llvm.loop !158

bb.az:                                            ; preds = %bb.ax
  %i.eo = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 5
  %i.eq = load i32, ptr %i.ep, align 1, !tbaa !65
  %i.er = call i32 @llvm.bswap.i32(i32 %i.eq)     ; 7 uses
  %i.es = sub nsw i32 %i.j, %i.eo                 ; 2 uses
  %i.et = add i32 %i.er, -1
  %or.cond = icmp ult i32 %i.et, %i.es
  br i1 %or.cond, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eu = icmp ugt i32 %i.er, %i.es
  br i1 %i.eu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ev = load ptr, ptr %i.f, align 16, !tbaa !52
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ev, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.er) #14
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ew = add nsw i32 %i.eo, 4
  br label %.backedge

.backedge:                                        ; preds = %bb.bc, %bb.co
  %.097.be = phi i32 [ %i.ew, %bb.bc ], [ %i.su, %bb.co ] ; 3 uses
  %i.ex = add nsw i32 %.097.be, 13
  %i.ey = icmp slt i32 %i.ex, %i.j
  br i1 %i.ey, label %.lr.ph, label %._crit_edge

bb.bd:                                            ; preds = %bb.az
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !39  ; 58 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.fa = icmp slt i32 %i.er, 13
  br i1 %i.fa, label %alloc_sequence_buffers.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !65  ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 456
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 13 ; 3 uses
  %i.ff = add nsw i32 %i.er, -13                  ; 2 uses
  %i.fg = shl nuw nsw i32 %i.ff, 3
  %or.cond.i.i = icmp samesign ult i32 %i.er, 268435405 ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.fe, ptr null
  %.013.i.i = select i1 %or.cond.i.i, i32 %i.fg, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.fd, align 8, !tbaa !66
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 468
  store i32 %.013.i.i, ptr %i.fh, align 4, !tbaa !67
  %i.fi = add nuw nsw i32 %.013.i.i, 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 472
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !68
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 464
  store i32 0, ptr %i.fk, align 8, !tbaa !69
  %i.fl = zext i8 %i.fc to i32                    ; 5 uses
  switch i8 %i.fc, label %bb.bt [
    i8 0, label %bb.bf
    i8 16, label %bb.bn
    i8 32, label %bb.bo
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 560 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 16, !tbaa !70
  %.not189.i = icmp eq i32 %i.fn, 0
  br i1 %.not189.i, label %bb.bg, label %bb.co

bb.bg:                                            ; preds = %bb.bf
  %i.fo = zext nneg i32 %i.ff to i64
  %i.fp = call i32 @av_dirac_parse_sequence_header(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fe, i64 noundef %i.fo, ptr noundef nonnull %0) #14 ; 3 uses
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #14
  br label %alloc_sequence_buffers.exit.thread

bb.bi:                                            ; preds = %bb.bg
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !164 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !165 ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = add nuw nsw i64 %i.ft, 31
  %i.fv = and i64 %i.fu, 8589934560
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !166 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add nuw nsw i64 %i.fy, 31
  %i.ga = and i64 %i.fz, 8589934560
  %i.gb = mul nuw nsw i64 %i.fv, 5
  %i.gc = mul i64 %i.gb, %i.ga
  %i.gd = load i64, ptr %i.cv, align 8, !tbaa !167
  %i.ge = icmp sgt i64 %i.gc, %i.gd
  %spec.select.i121 = select i1 %i.ge, i32 -34, i32 %i.fp ; 2 uses
  %i.gf = icmp sgt i32 %spec.select.i121, -1
  br i1 %i.gf, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.gg = call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.fs, i32 noundef %i.fx) #14 ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %.thread.i, label %bb.bk

.thread.i:                                        ; preds = %bb.bj, %bb.bi
  %.1197.i = phi i32 [ %i.gg, %bb.bj ], [ %spec.select.i121, %bb.bi ]
  call void @av_freep(ptr noundef nonnull %i.c) #14
  br label %alloc_sequence_buffers.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.gi = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load i64, ptr %i.gj, align 4
  %i.gl = call i32 @ff_set_sar(ptr noundef nonnull %0, i64 %i.gk) #14 ; 0 uses
  %i.gm = load ptr, ptr %i.c, align 8, !tbaa !164 ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !168
  store i32 %i.go, ptr %i.cw, align 8, !tbaa !71
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 52
  %i.gq = load <4 x i32>, ptr %i.gp, align 4, !tbaa !55
  %i.gr = shufflevector <4 x i32> %i.gq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %i.gr, ptr %i.cx, align 8, !tbaa !55
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gt = load <2 x i32>, ptr %i.gs, align 4, !tbaa !55
  store <2 x i32> %i.gt, ptr %i.cy, align 8, !tbaa !55
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gv = load i64, ptr %i.gu, align 4, !tbaa !55
  store i64 %i.gv, ptr %i.cz, align 4, !tbaa !55
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 76
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !169
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ez, i64 4616 ; 2 uses
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !72
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 68
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ez, i64 448
  %i.hb = load <2 x i32>, ptr %i.gz, align 4, !tbaa !55
  store <2 x i32> %i.hb, ptr %i.ha, align 16, !tbaa !55
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ez, i64 480 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.hc, ptr noundef nonnull align 4 dereferenceable(80) %i.gm, i64 80, i1 false), !tbaa.struct !170
  call void @av_freep(ptr noundef nonnull %i.c) #14
  %i.hd = load i32, ptr %i.gy, align 8, !tbaa !72
  %i.he = icmp sgt i32 %i.hd, 8
  %i.hf = zext i1 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ez, i64 4620 ; 8 uses
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !74
  %i.hh = load i32, ptr %i.cw, align 8, !tbaa !71
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ez, i64 4608 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ez, i64 4612 ; 3 uses
  %i.hk = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 noundef %i.hh, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hj) #14 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %alloc_sequence_buffers.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = load i32, ptr %i.hc, align 16, !tbaa !75 ; 2 uses
  %i.hn = add i32 %i.hm, 3
  %i.ho = lshr i32 %i.hn, 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ez, i64 484 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !76 ; 2 uses
  %i.hr = add i32 %i.hq, 3
  %i.hs = lshr i32 %i.hr, 2                       ; 2 uses
  %i.ht = add nsw i32 %i.hm, 31
  %i.hu = and i32 %i.ht, -32                      ; 3 uses
  %i.hv = add nsw i32 %i.hq, 31
  %i.hw = and i32 %i.hv, -32
  %i.hx = add nsw i32 %i.hw, 48
  %i.hy = add nsw i32 %i.hu, 32
  %i.hz = sext i32 %i.hy to i64
  %i.ia = load i32, ptr %i.hg, align 4, !tbaa !74
  %i.ib = shl i32 2, %i.ia
  %i.ic = mul nsw i32 %i.hx, %i.ib
  %i.id = sext i32 %i.ic to i64
  %i.ie = call noalias ptr @av_calloc(i64 noundef %i.hz, i64 noundef %i.id) #14
  %i.if = getelementptr inbounds nuw i8, ptr %i.ez, i64 600 ; 2 uses
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !171
  %i.ig = or disjoint i32 %i.hu, 16
  %i.ih = sext i32 %i.ig to i64
  %i.ii = load i32, ptr %i.hg, align 4, !tbaa !74
  %i.ij = shl i32 2, %i.ii
  %i.ik = sext i32 %i.ij to i64
  %i.il = call ptr @av_malloc_array(i64 noundef %i.ih, i64 noundef %i.ik) #14 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ez, i64 608
  store ptr %i.il, ptr %i.im, align 16, !tbaa !172
  %i.in = load ptr, ptr %i.if, align 8, !tbaa !171 ; 2 uses
  %i.io = shl nsw i32 %i.hu, 5
  %i.ip = load i32, ptr %i.hg, align 4, !tbaa !74
  %i.iq = shl i32 2, %i.ip                        ; 2 uses
  %i.ir = mul nsw i32 %i.io, %i.iq
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %i.in, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ez, i64 592
  store ptr %i.it, ptr %i.iu, align 16, !tbaa !79
  %.not55.i = icmp eq ptr %i.in, null
  %.not56.i = icmp eq ptr %i.il, null
  %or.cond59.i = select i1 %.not55.i, i1 true, i1 %.not56.i
  br i1 %or.cond59.i, label %alloc_sequence_buffers.exit.thread, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.bl
  %i.iv = load i32, ptr %i.hc, align 16, !tbaa !75
  %i.iw = load i32, ptr %i.hi, align 16, !tbaa !80 ; 2 uses
  %i.ix = lshr i32 %i.iv, %i.iw
  %i.iy = load i32, ptr %i.hj, align 4, !tbaa !81 ; 2 uses
  %i.iz = lshr i32 32, %i.iw
  %i.ja = load i32, ptr %i.hp, align 4, !tbaa !76
  %i.jb = lshr i32 16, %i.iy
  %i.jc = lshr i32 %i.ja, %i.iy
  %i.jd = add nsw i32 %i.ix, 31
  %i.je = and i32 %i.jd, -32                      ; 3 uses
  %i.jf = add nsw i32 %i.jc, 31
  %i.jg = and i32 %i.jf, -32
  %i.jh = add nsw i32 %i.jg, 32
  %i.ji = or disjoint i32 %i.jh, %i.jb
  %i.jj = add nsw i32 %i.je, %i.iz
  %i.jk = sext i32 %i.jj to i64
  %i.jl = mul nsw i32 %i.ji, %i.iq
  %i.jm = sext i32 %i.jl to i64
  %i.jn = call noalias ptr @av_calloc(i64 noundef %i.jk, i64 noundef %i.jm) #14
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ez, i64 1944 ; 2 uses
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !171
  %i.jp = or disjoint i32 %i.je, 16
  %i.jq = sext i32 %i.jp to i64
  %i.jr = load i32, ptr %i.hg, align 4, !tbaa !74
  %i.js = shl i32 2, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = call ptr @av_malloc_array(i64 noundef %i.jq, i64 noundef %i.jt) #14 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ez, i64 1952
  store ptr %i.ju, ptr %i.jv, align 16, !tbaa !172
  %i.jw = load ptr, ptr %i.jo, align 8, !tbaa !171 ; 2 uses
  %i.jx = shl nsw i32 %i.je, 5
  %i.jy = load i32, ptr %i.hg, align 4, !tbaa !74
  %i.jz = shl i32 2, %i.jy                        ; 2 uses
  %i.ka = mul nsw i32 %i.jx, %i.jz
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds i8, ptr %i.jw, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1936
  store ptr %i.kc, ptr %i.kd, align 16, !tbaa !79
  %.not55.1.i = icmp eq ptr %i.jw, null
  %.not56.1.i = icmp eq ptr %i.ju, null
  %or.cond59.1.i = select i1 %.not55.1.i, i1 true, i1 %.not56.1.i
  br i1 %or.cond59.1.i, label %alloc_sequence_buffers.exit.thread, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.critedge.1.i
  %i.ke = load i32, ptr %i.hc, align 16, !tbaa !75
  %i.kf = load i32, ptr %i.hi, align 16, !tbaa !80 ; 2 uses
  %i.kg = lshr i32 %i.ke, %i.kf
  %i.kh = load i32, ptr %i.hj, align 4, !tbaa !81 ; 2 uses
  %i.ki = lshr i32 32, %i.kf
  %i.kj = load i32, ptr %i.hp, align 4, !tbaa !76
  %i.kk = lshr i32 16, %i.kh
  %i.kl = lshr i32 %i.kj, %i.kh
  %i.km = add nsw i32 %i.kg, 31
  %i.kn = and i32 %i.km, -32                      ; 3 uses
  %i.ko = add nsw i32 %i.kl, 31
  %i.kp = and i32 %i.ko, -32
  %i.kq = add nsw i32 %i.kp, 32
  %i.kr = or disjoint i32 %i.kq, %i.kk
  %i.ks = add nsw i32 %i.kn, %i.ki
  %i.kt = sext i32 %i.ks to i64
  %i.ku = mul nsw i32 %i.kr, %i.jz
  %i.kv = sext i32 %i.ku to i64
  %i.kw = call noalias ptr @av_calloc(i64 noundef %i.kt, i64 noundef %i.kv) #14
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ez, i64 3288 ; 2 uses
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !171
  %i.ky = or disjoint i32 %i.kn, 16
  %i.kz = sext i32 %i.ky to i64
  %i.la = load i32, ptr %i.hg, align 4, !tbaa !74
  %i.lb = shl i32 2, %i.la
  %i.lc = sext i32 %i.lb to i64
  %i.ld = call ptr @av_malloc_array(i64 noundef %i.kz, i64 noundef %i.lc) #14 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ez, i64 3296
  store ptr %i.ld, ptr %i.le, align 16, !tbaa !172
  %i.lf = load ptr, ptr %i.kx, align 8, !tbaa !171 ; 2 uses
  %i.lg = shl nsw i32 %i.kn, 5
  %i.lh = load i32, ptr %i.hg, align 4, !tbaa !74
  %i.li = shl i32 2, %i.lh
  %i.lj = mul nsw i32 %i.lg, %i.li
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.lf, i64 %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ez, i64 3280
  store ptr %i.ll, ptr %i.lm, align 16, !tbaa !79
  %.not55.2.i = icmp eq ptr %i.lf, null
  %.not56.2.i = icmp eq ptr %i.ld, null
  %or.cond59.2.i = select i1 %.not55.2.i, i1 true, i1 %.not56.2.i
  br i1 %or.cond59.2.i, label %alloc_sequence_buffers.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %.critedge.2.i
  %i.ln = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.lo = zext nneg i32 %i.hs to i64
  %i.lp = call ptr @av_malloc_array(i64 noundef %i.ln, i64 noundef %i.lo) #14
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ez, i64 4920 ; 2 uses
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !82
  %i.lr = shl nuw nsw i32 %i.hs, 4
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = mul nuw nsw i64 %i.ls, 10
  %i.lu = call ptr @av_malloc_array(i64 noundef %i.ln, i64 noundef %i.lt) #14 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ez, i64 4928
  store ptr %i.lu, ptr %i.lv, align 16, !tbaa !83
  %i.lw = load ptr, ptr %i.lq, align 8, !tbaa !82
  %.not.i171 = icmp eq ptr %i.lw, null
  %.not53.i = icmp eq ptr %i.lu, null
  %or.cond.i172 = select i1 %.not.i171, i1 true, i1 %.not53.i
  br i1 %or.cond.i172, label %alloc_sequence_buffers.exit.thread, label %alloc_sequence_buffers.exit

alloc_sequence_buffers.exit:                      ; preds = %bb.bm
  store i32 1, ptr %i.fm, align 16, !tbaa !70
  br label %bb.co

bb.bn:                                            ; preds = %bb.be
  call fastcc void @free_sequence_buffers(ptr noundef nonnull %i.ez) #15
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ez, i64 560
  store i32 0, ptr %i.lx, align 16, !tbaa !70
  br label %bb.co

bb.bo:                                            ; preds = %bb.be
  %i.ly = load i8, ptr %i.fe, align 1, !tbaa !65
  %i.lz = icmp eq i8 %i.ly, 1
  br i1 %i.lz, label %bb.bp, label %bb.co

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.ma = getelementptr inbounds nuw i8, ptr %i.eb, i64 14
  %i.mb = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ma, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu) #14
  %i.mc = icmp eq i32 %i.mb, 3
  br i1 %i.mc, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.md = load i32, ptr %i.d, align 4, !tbaa !55
  %i.me = icmp eq i32 %i.md, 1
  %i.mf = load i32, ptr %i.ct, align 4
  %i.mg = icmp eq i32 %i.mf, 0
  %or.cond.i = select i1 %i.me, i1 %i.mg, i1 false
  %i.mh = load i32, ptr %i.cu, align 4
  %i.mi = icmp slt i32 %i.mh, 8
  %or.cond5.i = select i1 %or.cond.i, i1 %i.mi, i1 false
  br i1 %or.cond5.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ez, i64 4668
  store i32 1, ptr %i.mj, align 4, !tbaa !84
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.co

bb.bt:                                            ; preds = %bb.be
  %i.mk = and i32 %i.fl, 8
  %.not.i122 = icmp eq i32 %i.mk, 0
  br i1 %.not.i122, label %bb.co, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ez, i64 560
  %i.mm = load i32, ptr %i.ml, align 16, !tbaa !70
  %.not184.i = icmp eq i32 %i.mm, 0
  br i1 %.not184.i, label %bb.bv, label %.preheader.i123

.preheader.i123:                                  ; preds = %bb.bu
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ez, i64 8312 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !59
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !60
  %i.mq = icmp eq ptr %i.mp, null
  %spec.select190.i = select i1 %i.mq, ptr %i.mn, ptr null
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ez, i64 8536 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !59
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !60
  %i.mu = icmp eq ptr %i.mt, null
end_hunk_0
