Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbir__perform_resize:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fr = phi ptr [ %i.fk, %bb.u ], [ %i.fj, %bb.v ]
  %i.fs = phi i32 [ %i.fp, %bb.u ], [ %i.fq, %bb.v ]
  %i.ft = load i32, ptr %i.ak, align 4
  %i.fu = mul nsw i32 %i.ft, %i.fs
  %reass.sub = sub i32 %i.bj, %i.bh
  %i.fv = add i32 %reass.sub, 1
  %i.fw = sext i32 %i.fu to i64                   ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.loopexit.i.i, %bb.w
  %.049.i.i = phi i32 [ 0, %bb.w ], [ %i.hq, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.048.i.i = phi i32 [ %i.fv, %bb.w ], [ %i.hr, %._crit_edge.loopexit.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.fx = call i32 @llvm.umin.i32(i32 %.048.i.i, i32 8) ; 3 uses
  %i.fy = icmp ne i32 %.048.i.i, 0
  call void @llvm.assume(i1 %i.fy)
  %.val.i51.i = load i32, ptr %i.ah, align 8      ; 8 uses
  %.val52.i.i = load i32, ptr %i.af, align 4      ; 8 uses
  %i.fz = load i32, ptr %i.w, align 8
  %i.ga = load i32, ptr %i.y, align 8
  %i.gb = add i32 %.049.i.i, %i.bh
  %invariant.op.i.i = add i32 %i.gb, %i.fz
  %invariant.op56.i.i = sub i32 %invariant.op.i.i, %i.ga ; 8 uses
  %.val6.i.i.i = load ptr, ptr %i.ai, align 8     ; 8 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fx to i64
  %i.gc = srem i32 %invariant.op56.i.i, %.val52.i.i
  %i.gd = mul nsw i32 %i.gc, %.val.i51.i
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr %.val6.i.i.i, i64 %i.ge
  store ptr %i.gf, ptr %i.b, align 16
  %exitcond.not.i.i = icmp eq i32 %.048.i.i, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %.reass57.i.i.1 = add i32 %invariant.op56.i.i, 1
  %i.gg = srem i32 %.reass57.i.i.1, %.val52.i.i
  %i.gh = mul nsw i32 %i.gg, %.val.i51.i
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %.val6.i.i.i, i64 %i.gi
  store ptr %i.gj, ptr %i.ba, align 8
  %exitcond.not.i.i.1 = icmp eq i32 %.048.i.i, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.reass57.i.i.2 = add i32 %invariant.op56.i.i, 2
  %i.gk = srem i32 %.reass57.i.i.2, %.val52.i.i
  %i.gl = mul nsw i32 %i.gk, %.val.i51.i
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %.val6.i.i.i, i64 %i.gm
  store ptr %i.gn, ptr %i.bb, align 16
  %exitcond.not.i.i.2 = icmp eq i32 %.048.i.i, 3
  br i1 %exitcond.not.i.i.2, label %._crit_edge.loopexit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.reass57.i.i.3 = add i32 %invariant.op56.i.i, 3
  %i.go = srem i32 %.reass57.i.i.3, %.val52.i.i
  %i.gp = mul nsw i32 %i.go, %.val.i51.i
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr %.val6.i.i.i, i64 %i.gq
  store ptr %i.gr, ptr %i.bc, align 8
  %exitcond.not.i.i.3 = icmp eq i32 %.048.i.i, 4
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.reass57.i.i.4 = add i32 %invariant.op56.i.i, 4
  %i.gs = srem i32 %.reass57.i.i.4, %.val52.i.i
  %i.gt = mul nsw i32 %i.gs, %.val.i51.i
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %.val6.i.i.i, i64 %i.gu
  store ptr %i.gv, ptr %i.bd, align 16
  %exitcond.not.i.i.4 = icmp eq i32 %.048.i.i, 5
  br i1 %exitcond.not.i.i.4, label %._crit_edge.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.reass57.i.i.5 = add i32 %invariant.op56.i.i, 5
  %i.gw = srem i32 %.reass57.i.i.5, %.val52.i.i
  %i.gx = mul nsw i32 %i.gw, %.val.i51.i
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds i8, ptr %.val6.i.i.i, i64 %i.gy
  store ptr %i.gz, ptr %i.be, align 8
  %exitcond.not.i.i.5 = icmp eq i32 %.048.i.i, 6
  br i1 %exitcond.not.i.i.5, label %._crit_edge.loopexit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.reass57.i.i.6 = add i32 %invariant.op56.i.i, 6
  %i.ha = srem i32 %.reass57.i.i.6, %.val52.i.i
  %i.hb = mul nsw i32 %i.ha, %.val.i51.i
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %.val6.i.i.i, i64 %i.hc
  store ptr %i.hd, ptr %i.bf, align 16
  %exitcond.not.i.i.6 = icmp eq i32 %.048.i.i, 7
  br i1 %exitcond.not.i.i.6, label %._crit_edge.loopexit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.reass57.i.i.7 = add i32 %invariant.op56.i.i, 7
  %i.he = srem i32 %.reass57.i.i.7, %.val52.i.i
  %i.hf = mul nsw i32 %i.he, %.val.i51.i
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds i8, ptr %.val6.i.i.i, i64 %i.hg
  store ptr %i.hh, ptr %i.bg, align 8
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 16
  %i.hi = icmp eq i32 %.049.i.i, 0
  %i.hj = select i1 %i.hi, ptr @stbir__vertical_gathers, ptr @stbir__vertical_gathers_continues
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %wide.trip.count.i.i
  %i.hl = getelementptr i8, ptr %i.hk, i64 -8
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = zext nneg i32 %.049.i.i to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.04661.i, i64 %i.hn
  %i.hp = getelementptr inbounds [4 x i8], ptr %.pre.i.i, i64 %i.fw
  call void %i.hm(ptr noundef %i.fr, ptr noundef %i.ho, ptr noundef nonnull %i.b, ptr noundef %i.hp) #52, !inline_history !89
  %i.hq = add nuw nsw i32 %i.fx, %.049.i.i
  %i.hr = sub nuw nsw i32 %.048.i.i, %i.fx        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  %.not51.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not51.i.i, label %bb.ae, label %.lr.ph.i.i

bb.ae:                                            ; preds = %._crit_edge.loopexit.i.i
  br i1 %.not.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fw
  store <2 x float> zeroinitializer, ptr %i.hs, align 4
  call fastcc void @stbir__resample_horizontal_gather(ptr noundef nonnull readonly %0, ptr noundef %i.fj, ptr noundef %i.fk)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ht = load ptr, ptr %i.at, align 8
  %i.hu = load i32, ptr %i.au, align 4
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul nsw i64 %indvars.iv.i, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hw
  %i.hy = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.hz = load i32, ptr %i.av, align 8
  %i.ia = mul nsw i32 %i.hz, %i.hy                ; 2 uses
  %i.ib = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void %i.ib(ptr noundef %i.fj, i32 noundef %i.ia) #52, !inline_history !90
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ic = load ptr, ptr %i.ax, align 8
  %.not22.i.i.i = icmp eq ptr %i.ic, null
  %spec.select.i.i.i = select i1 %.not22.i.i.i, ptr %i.hx, ptr %i.fj ; 2 uses
  %i.id = load ptr, ptr %i.ay, align 8
  call void %i.id(ptr noundef %spec.select.i.i.i, i32 noundef %i.ia, ptr noundef %i.fj) #52, !inline_history !90
  %i.ie = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not23.i.i.i, label %stbir__resample_vertical_gather.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = load ptr, ptr %i.az, align 8
  %i.ig = trunc nsw i64 %indvars.iv.i to i32
  call void %i.ie(ptr noundef %spec.select.i.i.i, i32 noundef %i.hy, i32 noundef %i.ig, ptr noundef %i.if) #52, !inline_history !90
  br label %stbir__resample_vertical_gather.exit.i

stbir__resample_vertical_gather.exit.i:           ; preds = %bb.aj, %bb.ai
  %i.ih = getelementptr inbounds nuw i8, ptr %.04760.i, i64 8
  %i.ii = load i32, ptr %i.u, align 4
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %.04661.i, i64 %i.ij
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.r, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %stbir__vertical_gather_loop.exit, label %bb.c

bb.ak:                                            ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4
  %.not.i8 = icmp eq i32 %i.im, 0                 ; 2 uses
  br i1 %.not.i8, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = load i32, ptr %i.in, align 8
  %i.ir = add i32 %i.ip, 1
  %i.is = sub i32 %i.ir, %i.iq
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.iu = load i32, ptr %i.it, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.iv = phi i32 [ %i.is, %bb.al ], [ %i.iu, %bb.am ]
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.ix = load i32, ptr %i.iw, align 4            ; 2 uses
  %i.iy = mul nsw i32 %i.ix, %i.iv
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ja = load i32, ptr %i.iz, align 4            ; 7 uses
  %i.jb = sext i32 %2 to i64
  %i.jc = getelementptr [120 x i8], ptr %i.f, i64 %i.jb ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 -96
  %i.je = load i32, ptr %i.jd, align 8            ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4            ; 6 uses
  %i.jh = getelementptr i8, ptr %i.jc, i64 -88
  %i.ji = load i32, ptr %i.jh, align 8            ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = add nsw i32 %i.jk, %i.jg                ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = mul nsw i32 %i.jp, %i.jl
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.jr
  br i1 %.not.i8, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = load i32, ptr %i.jt, align 8
  %i.jx = add i32 %i.jv, 1
  %i.jy = sub i32 %i.jx, %i.jw
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.kb = load i32, ptr %i.ka, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink184.i = phi i32 [ %i.kb, %bb.ap ], [ %i.jy, %bb.ao ]
  %.sink.in.i = phi ptr [ %i.jz, %bb.ap ], [ %i.f, %bb.ao ]
  %.0135.i = phi ptr [ @stbir__encode_first_scanline_from_scatter, %bb.ap ], [ @stbir__horizontal_resample_and_encode_first_scanline_from_scatter, %bb.ao ] ; 2 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8   ; 2 uses
  %.sink182.in.i = sext i32 %i.ix to i64
  %.sink182.i = shl nsw i64 %.sink182.in.i, 2
  %i.kc = sext i32 %.sink184.i to i64
  %i.kd = mul i64 %.sink182.i, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store i32 %i.ja, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 4 uses
  store i32 -1, ptr %i.kg, align 4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i32 -1, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 4 uses
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph.i21, label %.preheader157.i

.lr.ph.i21:                                       ; preds = %bb.aq
  %i.kl = getelementptr i8, ptr %0, i64 328
  %i.km = getelementptr i8, ptr %i.f, i64 40
  %i.kn = sext i32 %i.iy to i64
  br label %bb.ar

.preheader157.i:                                  ; preds = %bb.ar, %bb.aq
  %i.ko = icmp slt i32 %i.jg, %i.ji
  br i1 %i.ko, label %.lr.ph164.i, label %.preheader.i

.lr.ph164.i:                                      ; preds = %.preheader157.i
  %i.kp = add nsw i32 %i.je, -1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.kr = getelementptr i8, ptr %0, i64 328
  %i.ks = getelementptr i8, ptr %i.f, i64 40
  br label %bb.as

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i21
  %.0128158.i = phi i32 [ 0, %.lr.ph.i21 ], [ %i.kx, %bb.ar ] ; 2 uses
  %.val.i22 = load i32, ptr %i.kl, align 8
  %.val153.i = load ptr, ptr %i.km, align 8
  %i.kt = mul nsw i32 %.val.i22, %.0128158.i
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %.val153.i, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.kn
  store <2 x float> zeroinitializer, ptr %i.kw, align 4
  store float 3.000000e+38, ptr %i.kv, align 4
  %i.kx = add nuw nsw i32 %.0128158.i, 1          ; 2 uses
  %i.ky = load i32, ptr %i.ki, align 4
  %i.kz = icmp slt i32 %i.kx, %i.ky
  br i1 %i.kz, label %bb.ar, label %.preheader157.i

.preheader.i:                                     ; preds = %bb.bh, %.preheader157.i
  %.0129.lcssa.i = phi i32 [ %i.jg, %.preheader157.i ], [ %.1130.i, %bb.bh ]
  %i.la = load i32, ptr %i.kf, align 8
  %i.lb = icmp slt i32 %i.la, %i.je
  br i1 %i.lb, label %.lr.ph165.i, label %._crit_edge.i9

bb.as:                                            ; preds = %bb.bh, %.lr.ph164.i
  %.1163.i = phi i32 [ %i.jg, %.lr.ph164.i ], [ %i.ni, %bb.bh ] ; 6 uses
  %.0129162.i = phi i32 [ %i.jg, %.lr.ph164.i ], [ %.1130.i, %bb.bh ] ; 2 uses
  %.0131161.i = phi i32 [ 1, %.lr.ph164.i ], [ %.1132.i, %bb.bh ] ; 3 uses
  %.0136160.i = phi ptr [ %i.js, %.lr.ph164.i ], [ %i.nh, %bb.bh ] ; 2 uses
  %.0137159.i = phi ptr [ %i.jn, %.lr.ph164.i ], [ %i.ne, %bb.bh ] ; 3 uses
  %i.lc = load i32, ptr %.0137159.i, align 4      ; 6 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0137159.i, i64 4
  %i.le = load i32, ptr %i.ld, align 4            ; 4 uses
  %.not144.i = icmp slt i32 %i.le, %i.lc
  br i1 %.not144.i, label %bb.bh, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not145.i = icmp sge i32 %i.lc, %i.ja
  %i.lf = icmp slt i32 %i.lc, %i.je
  %or.cond.i = select i1 %.not145.i, i1 %i.lf, i1 false
  br i1 %or.cond.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not146.i = icmp sge i32 %i.le, %i.ja
  %i.lg = icmp slt i32 %i.le, %i.je
  %or.cond150.i = select i1 %.not146.i, i1 %i.lg, i1 false
  br i1 %or.cond150.i, label %bb.av, label %bb.bh

bb.av:                                            ; preds = %bb.au, %bb.at
  %.not147.i = icmp ne i32 %.0131161.i, 0
  %i.lh = icmp sgt i32 %.1163.i, %i.jg
  %or.cond151.i = select i1 %.not147.i, i1 %i.lh, i1 false
  br i1 %or.cond151.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 %.1163.i, ptr %i.jf, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %3 = icmp slt i32 %i.lc, %i.ja
  %i.li = sub nsw i32 %i.ja, %i.lc
  %.0127.i = call i32 @llvm.smax.i32(i32 %i.lc, i32 %i.ja) ; 3 uses
  %narrow.i = select i1 %3, i32 %i.li, i32 0
  %.0.idx.i = zext i32 %narrow.i to i64
  %.0.i = getelementptr inbounds nuw [4 x i8], ptr %.0136160.i, i64 %.0.idx.i
  %.0126.i = call i32 @llvm.smin.i32(i32 %i.le, i32 %i.kp) ; 4 uses
  %i.lj = load i32, ptr %i.kh, align 8
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ll = sub nsw i32 %.0127.i, %i.ja
  store i32 %i.ll, ptr %i.kh, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.lm = load ptr, ptr %i.f, align 8
  call fastcc void @stbir__decode_scanline(ptr noundef nonnull %0, i32 noundef %.1163.i, ptr noundef %i.lm)
  %i.ln = load i32, ptr %i.il, align 4
  %.not149.i = icmp eq i32 %i.ln, 0
  br i1 %.not149.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lo = load ptr, ptr %i.kq, align 8
  %i.lp = load ptr, ptr %i.f, align 8
  call fastcc void @stbir__resample_horizontal_gather(ptr noundef nonnull %0, ptr noundef %i.lo, ptr noundef %i.lp)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.lq = load i32, ptr %i.kg, align 4            ; 2 uses
  %i.lr = load i32, ptr %i.kf, align 8
  %i.ls = add i32 %i.lq, 1
  %i.lt = sub i32 %i.ls, %i.lr
  %i.lu = load i32, ptr %i.ki, align 4
  %i.lv = icmp eq i32 %i.lt, %i.lu
  %i.lw = icmp sgt i32 %.0126.i, %i.lq
  %or.cond152.i = select i1 %i.lv, i1 %i.lw, i1 false
  br i1 %or.cond152.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void %.0135.i(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #52, !callees !94, !inline_history !91
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %reass.sub35 = sub i32 %.0126.i, %.0127.i
  %i.lx = add i32 %reass.sub35, 1
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge.i.i, %bb.bd
  %.027.i.i = phi i32 [ 0, %bb.bd ], [ %i.na, %._crit_edge.i.i ] ; 3 uses
  %.026.i.i = phi i32 [ %i.lx, %bb.bd ], [ %i.nb, %._crit_edge.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.ly = call i32 @llvm.umin.i32(i32 %.026.i.i, i32 8) ; 3 uses
  %i.lz = icmp ne i32 %.026.i.i, 0
  call void @llvm.assume(i1 %i.lz)
  %.val.i.i14 = load i32, ptr %i.kr, align 8      ; 2 uses
  %.val31.i.i = load i32, ptr %i.ki, align 4      ; 2 uses
  %i.ma = load i32, ptr %i.kh, align 8
  %i.mb = load i32, ptr %i.kf, align 8
  %i.mc = add i32 %.027.i.i, %.0127.i
  %invariant.op.i.i15 = add i32 %i.mc, %i.ma
  %invariant.op36.i.i = sub i32 %invariant.op.i.i15, %i.mb ; 2 uses
  %.val6.i.i.i16 = load ptr, ptr %i.ks, align 8   ; 2 uses
  %wide.trip.count.i.i17 = zext nneg i32 %i.ly to i64
  %i.md = srem i32 %invariant.op36.i.i, %.val31.i.i
  %i.me = mul nsw i32 %i.md, %.val.i.i14
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds i8, ptr %.val6.i.i.i16, i64 %i.mf ; 3 uses
  store ptr %i.mg, ptr %i.a, align 16
  %exitcond.peel.not.i.i = icmp eq i32 %.026.i.i, 1
  br i1 %exitcond.peel.not.i.i, label %.._crit_edge.i_crit_edge.i, label %.peel.next.i.i

.._crit_edge.i_crit_edge.i:                       ; preds = %bb.be
  %.pre.i = load float, ptr %i.mg, align 4
  br label %._crit_edge.i.i

.peel.next.i.i:                                   ; preds = %bb.be, %bb.bf
  %indvars.iv.i.i18 = phi i64 [ %indvars.iv.next.i.i19, %bb.bf ], [ 1, %bb.be ] ; 3 uses
  %i.mh = trunc nuw nsw i64 %indvars.iv.i.i18 to i32 ; 2 uses
  %.reass37.i.i = add i32 %invariant.op36.i.i, %i.mh
  %i.mi = srem i32 %.reass37.i.i, %.val31.i.i
  %i.mj = mul nsw i32 %i.mi, %.val.i.i14
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds i8, ptr %.val6.i.i.i16, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i18
  store ptr %i.ml, ptr %i.mm, align 8
  %i.mn = load float, ptr %i.ml, align 4
  %i.mo = fcmp oeq float %i.mn, 3.000000e+38
  %i.mp = load float, ptr %i.mg, align 4          ; 3 uses
  %i.mq = fcmp une float %i.mp, 3.000000e+38
  %.not29.i.i = xor i1 %i.mo, %i.mq
  br i1 %.not29.i.i, label %bb.bf, label %._crit_edge.i.i

bb.bf:                                            ; preds = %.peel.next.i.i
  %indvars.iv.next.i.i19 = add nuw nsw i64 %indvars.iv.i.i18, 1 ; 2 uses
  %exitcond.not.i.i20 = icmp eq i64 %indvars.iv.next.i.i19, %wide.trip.count.i.i17
  br i1 %exitcond.not.i.i20, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !92

._crit_edge.i.i:                                  ; preds = %bb.bf, %.peel.next.i.i, %.._crit_edge.i_crit_edge.i
  %i.mr = phi float [ %.pre.i, %.._crit_edge.i_crit_edge.i ], [ %i.mp, %.peel.next.i.i ], [ %i.mp, %bb.bf ]
  %.0.i.i = phi i32 [ %i.ly, %.._crit_edge.i_crit_edge.i ], [ %i.ly, %bb.bf ], [ %i.mh, %.peel.next.i.i ] ; 3 uses
  %i.ms = fcmp oeq float %i.mr, 3.000000e+38
  %i.mt = select i1 %i.ms, ptr @stbir__vertical_scatter_sets, ptr @stbir__vertical_scatter_blends
  %i.mu = sext i32 %.0.i.i to i64
  %i.mv = getelementptr [8 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 -8
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = sext i32 %.027.i.i to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.my
  call void %i.mx(ptr noundef nonnull %i.a, ptr noundef %i.mz, ptr noundef %.sink.i, ptr noundef %i.ke) #52, !inline_history !93
  %i.na = add nsw i32 %.0.i.i, %.027.i.i
  %i.nb = sub nsw i32 %.026.i.i, %.0.i.i          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  %.not30.i.i = icmp eq i32 %i.nb, 0
  br i1 %.not30.i.i, label %stbir__resample_vertical_scatter.exit.i, label %bb.be

stbir__resample_vertical_scatter.exit.i:          ; preds = %._crit_edge.i.i
  %i.nc = load i32, ptr %i.kg, align 4
  %i.nd = icmp sgt i32 %.0126.i, %i.nc
  br i1 %i.nd, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %stbir__resample_vertical_scatter.exit.i
  store i32 %.0126.i, ptr %i.kg, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %stbir__resample_vertical_scatter.exit.i, %bb.au, %bb.as
  %.1132.i = phi i32 [ %.0131161.i, %bb.au ], [ %.0131161.i, %bb.as ], [ 0, %bb.bg ], [ 0, %stbir__resample_vertical_scatter.exit.i ]
  %.1130.i = phi i32 [ %.0129162.i, %bb.au ], [ %.0129162.i, %bb.as ], [ %.1163.i, %bb.bg ], [ %.1163.i, %stbir__resample_vertical_scatter.exit.i ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.0137159.i, i64 8
  %i.nf = load i32, ptr %i.jo, align 4
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr %.0136160.i, i64 %i.ng
  %i.ni = add i32 %.1163.i, 1                     ; 2 uses
  %exitcond.not.i12 = icmp eq i32 %i.ni, %i.ji
  br i1 %exitcond.not.i12, label %.preheader.i, label %bb.as

.lr.ph165.i:                                      ; preds = %.preheader.i, %.lr.ph165.i
  call void %.0135.i(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #52, !callees !94, !inline_history !91
  %i.nj = load i32, ptr %i.kf, align 8
  %i.nk = icmp slt i32 %i.nj, %i.je
  br i1 %i.nk, label %.lr.ph165.i, label %._crit_edge.i9

._crit_edge.i9:                                   ; preds = %.lr.ph165.i, %.preheader.i
  %i.nl = add nsw i32 %.0129.lcssa.i, 1           ; 6 uses
  %i.nm = icmp sgt i32 %2, 0
  br i1 %i.nm, label %.lr.ph168.preheader.i, label %stbir__vertical_gather_loop.exit

.lr.ph168.preheader.i:                            ; preds = %._crit_edge.i9
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.nn = icmp eq i32 %2, 1
  br i1 %i.nn, label %.lr.ph168.i.epil.preheader, label %.lr.ph168.preheader.i.new

.lr.ph168.preheader.i.new:                        ; preds = %.lr.ph168.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph168.i

.lr.ph168.i:                                      ; preds = %bb.bk, %.lr.ph168.preheader.i.new
  %indvars.iv.i10 = phi i64 [ 0, %.lr.ph168.preheader.i.new ], [ %indvars.iv.next.i11.1, %bb.bk ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph168.preheader.i.new ], [ %niter.next.1, %bb.bk ]
  %i.no = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv.i10
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 8
  %i.nr = icmp sgt i32 %i.nq, %i.nl
  br i1 %i.nr, label %bb.bi, label %.lr.ph168.i.1

bb.bi:                                            ; preds = %.lr.ph168.i
  store i32 %i.nl, ptr %i.np, align 8
  br label %.lr.ph168.i.1

.lr.ph168.i.1:                                    ; preds = %bb.bi, %.lr.ph168.i
  %i.ns = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv.i10
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 152 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 8
  %i.nv = icmp sgt i32 %i.nu, %i.nl
  br i1 %i.nv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph168.i.1
  store i32 %i.nl, ptr %i.nt, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph168.i.1
  %indvars.iv.next.i11.1 = add nuw nsw i64 %indvars.iv.i10, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbir__vertical_gather_loop.exit.loopexit.unr-lcssa, label %.lr.ph168.i

stbir__vertical_gather_loop.exit.loopexit.unr-lcssa: ; preds = %bb.bk
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbir__vertical_gather_loop.exit, label %.lr.ph168.i.epil.preheader

.lr.ph168.i.epil.preheader:                       ; preds = %stbir__vertical_gather_loop.exit.loopexit.unr-lcssa, %.lr.ph168.preheader.i
  %indvars.iv.i10.epil.init = phi i64 [ 0, %.lr.ph168.preheader.i ], [ %indvars.iv.next.i11.1, %stbir__vertical_gather_loop.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod7)
  %i.nw = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv.i10.epil.init
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = icmp sgt i32 %i.ny, %i.nl
  br i1 %i.nz, label %bb.bl, label %stbir__vertical_gather_loop.exit

bb.bl:                                            ; preds = %.lr.ph168.i.epil.preheader
  store i32 %i.nl, ptr %i.nx, align 8
end_hunk_0
begin_hunk_1_@stbi__parse_png_file:bb.a
  store ptr %.sink.i.i.i.5, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %stbi__get8.exit.i.5

bb.ae:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.du, ptr %i.h, align 8
  %i.dv = load i8, ptr %i.db, align 1
  br label %stbi__get8.exit.i.5

stbi__get8.exit.i.5:                              ; preds = %bb.ae, %stbi__refill_buffer.exit.i.i.5
  %i.dw = phi ptr [ %i.da, %bb.ae ], [ %.sink.i.i.i.5, %stbi__refill_buffer.exit.i.i.5 ] ; 2 uses
  %i.dx = phi ptr [ %i.du, %bb.ae ], [ %i.q, %stbi__refill_buffer.exit.i.i.5 ] ; 3 uses
  %.0.i.i.5 = phi i8 [ %i.dv, %bb.ae ], [ %i.dt, %stbi__refill_buffer.exit.i.i.5 ]
  %.not.i.5 = icmp eq i8 %.0.i.i.5, 10
  br i1 %.not.i.5, label %bb.af, label %stbi__check_png_header.exit.thread

bb.af:                                            ; preds = %stbi__get8.exit.i.5
  %i.dy = icmp ult ptr %i.dx, %i.dw
  br i1 %i.dy, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i32, ptr %i.j, align 8
  %.not.i.i.6 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.6, label %stbi__check_png_header.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.k, align 8
  %i.eb = load ptr, ptr %i.l, align 8
  %i.ec = load i32, ptr %i.n, align 4
  %i.ed = tail call i32 %i.ea(ptr noundef %i.eb, ptr noundef nonnull %i.m, i32 noundef %i.ec) #52, !inline_history !174 ; 2 uses
  %i.ee = load ptr, ptr %i.h, align 8
  %i.ef = load ptr, ptr %i.o, align 8
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = load i32, ptr %i.p, align 8
  %i.el = add nsw i32 %i.ek, %i.ej
  store i32 %i.el, ptr %i.p, align 8
  %i.em = icmp eq i32 %i.ed, 0
  br i1 %i.em, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = sext i32 %i.ed to i64
  %i.eo = getelementptr inbounds i8, ptr %i.m, i64 %i.en
  %.pre.i.i.6 = load i8, ptr %i.m, align 8
  br label %stbi__refill_buffer.exit.i.i.6

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %stbi__refill_buffer.exit.i.i.6

stbi__refill_buffer.exit.i.i.6:                   ; preds = %bb.aj, %bb.ai
  %i.ep = phi i8 [ 0, %bb.aj ], [ %.pre.i.i.6, %bb.ai ]
  %.sink.i.i.i.6 = phi ptr [ %i.q, %bb.aj ], [ %i.eo, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.i.6, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %stbi__get8.exit.i.6

bb.ak:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  store ptr %i.eq, ptr %i.h, align 8
  %i.er = load i8, ptr %i.dx, align 1
  br label %stbi__get8.exit.i.6

stbi__get8.exit.i.6:                              ; preds = %bb.ak, %stbi__refill_buffer.exit.i.i.6
  %i.es = phi ptr [ %i.dw, %bb.ak ], [ %.sink.i.i.i.6, %stbi__refill_buffer.exit.i.i.6 ]
  %i.et = phi ptr [ %i.eq, %bb.ak ], [ %i.q, %stbi__refill_buffer.exit.i.i.6 ] ; 3 uses
  %.0.i.i.6 = phi i8 [ %i.er, %bb.ak ], [ %i.ep, %stbi__refill_buffer.exit.i.i.6 ]
  %.not.i.6 = icmp eq i8 %.0.i.i.6, 26
  br i1 %.not.i.6, label %bb.al, label %stbi__check_png_header.exit.thread

bb.al:                                            ; preds = %stbi__get8.exit.i.6
  %i.eu = icmp ult ptr %i.et, %i.es
  br i1 %i.eu, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load i32, ptr %i.j, align 8
  %.not.i.i.7 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.7, label %stbi__check_png_header.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = load ptr, ptr %i.k, align 8
  %i.ex = load ptr, ptr %i.l, align 8
  %i.ey = load i32, ptr %i.n, align 4
  %i.ez = tail call i32 %i.ew(ptr noundef %i.ex, ptr noundef nonnull %i.m, i32 noundef %i.ey) #52, !inline_history !174 ; 2 uses
  %i.fa = load ptr, ptr %i.h, align 8
  %i.fb = load ptr, ptr %i.o, align 8
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load i32, ptr %i.p, align 8
  %i.fh = add nsw i32 %i.fg, %i.ff
  store i32 %i.fh, ptr %i.p, align 8
  %i.fi = icmp eq i32 %i.ez, 0
  br i1 %i.fi, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = sext i32 %i.ez to i64
  %i.fk = getelementptr inbounds i8, ptr %i.m, i64 %i.fj
  %.pre.i.i.7 = load i8, ptr %i.m, align 8
  br label %stbi__refill_buffer.exit.i.i.7

bb.ap:                                            ; preds = %bb.an
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %stbi__refill_buffer.exit.i.i.7

stbi__refill_buffer.exit.i.i.7:                   ; preds = %bb.ap, %bb.ao
  %i.fl = phi i8 [ 0, %bb.ap ], [ %.pre.i.i.7, %bb.ao ]
  %.sink.i.i.i.7 = phi ptr [ %i.q, %bb.ap ], [ %i.fk, %bb.ao ]
  store ptr %.sink.i.i.i.7, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %stbi__get8.exit.i.7

bb.aq:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.fm, ptr %i.h, align 8
  %i.fn = load i8, ptr %i.et, align 1
  br label %stbi__get8.exit.i.7

stbi__get8.exit.i.7:                              ; preds = %bb.aq, %stbi__refill_buffer.exit.i.i.7
  %.0.i.i.7 = phi i8 [ %i.fn, %bb.aq ], [ %i.fl, %stbi__refill_buffer.exit.i.i.7 ]
  %.not.i.7 = icmp eq i8 %.0.i.i.7, 10
  br i1 %.not.i.7, label %stbi__check_png_header.exit, label %stbi__check_png_header.exit.thread

stbi__check_png_header.exit:                      ; preds = %stbi__get8.exit.i.7
  %i.fo = icmp eq i32 %1, 1
  br i1 %i.fo, label %.thread400, label %.preheader419

bb.ar:                                            ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1 ; 2 uses
  store ptr %i.fp, ptr %i.h, align 8
  %i.fq = load i8, ptr %.pre.i, align 1
  br label %stbi__get8.exit.i

bb.as:                                            ; preds = %bb.a
  %i.fr = load i32, ptr %i.j, align 8
  %.not.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i, label %stbi__check_png_header.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = load ptr, ptr %i.k, align 8
  %i.ft = load ptr, ptr %i.l, align 8
  %i.fu = load i32, ptr %i.n, align 4
  %i.fv = tail call i32 %i.fs(ptr noundef %i.ft, ptr noundef nonnull %i.m, i32 noundef %i.fu) #52, !inline_history !174 ; 2 uses
  %i.fw = load ptr, ptr %i.h, align 8
  %i.fx = load ptr, ptr %i.o, align 8
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = load i32, ptr %i.p, align 8
  %i.gd = add nsw i32 %i.gc, %i.gb
  store i32 %i.gd, ptr %i.p, align 8
  %i.ge = icmp eq i32 %i.fv, 0
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %stbi__refill_buffer.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.gf = sext i32 %i.fv to i64
  %i.gg = getelementptr inbounds i8, ptr %i.m, i64 %i.gf
  %.pre.i.i = load i8, ptr %i.m, align 8
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.av, %bb.au
  %i.gh = phi i8 [ 0, %bb.au ], [ %.pre.i.i, %bb.av ]
  %.sink.i.i.i = phi ptr [ %i.q, %bb.au ], [ %i.gg, %bb.av ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__refill_buffer.exit.i.i, %bb.ar
  %i.gi = phi ptr [ %.pre7.i, %bb.ar ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ] ; 2 uses
  %i.gj = phi ptr [ %i.fp, %bb.ar ], [ %i.q, %stbi__refill_buffer.exit.i.i ] ; 3 uses
  %.0.i.i = phi i8 [ %i.fq, %bb.ar ], [ %i.gh, %stbi__refill_buffer.exit.i.i ]
  %.not.i = icmp eq i8 %.0.i.i, -119
  br i1 %.not.i, label %bb.b, label %stbi__check_png_header.exit.thread

stbi__check_png_header.exit.thread:               ; preds = %bb.as, %bb.am, %bb.ag, %bb.aa, %bb.u, %bb.o, %bb.i, %bb.c, %stbi__get8.exit.i.7, %stbi__get8.exit.i.6, %stbi__get8.exit.i.5, %stbi__get8.exit.i.4, %stbi__get8.exit.i.3, %stbi__get8.exit.i.2, %stbi__get8.exit.i.1, %stbi__get8.exit.i
  store ptr @.str.84, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

.preheader419:                                    ; preds = %stbi__check_png_header.exit
  %i.gk = icmp eq i32 %1, 2                       ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 13 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader419, %.loopexit
  %.0239 = phi i8 [ %.3242, %.loopexit ], [ 0, %.preheader419 ] ; 19 uses
  %.0236 = phi i8 [ %.1237, %.loopexit ], [ 0, %.preheader419 ] ; 18 uses
  %.0233 = phi i32 [ %.1234, %.loopexit ], [ 0, %.preheader419 ] ; 22 uses
  %.0229 = phi i32 [ %.4, %.loopexit ], [ 0, %.preheader419 ] ; 22 uses
  %.0224 = phi i32 [ %.1225, %.loopexit ], [ 0, %.preheader419 ] ; 21 uses
  %.0220 = phi i32 [ %.2222, %.loopexit ], [ 1, %.preheader419 ] ; 10 uses
  %.0214 = phi i32 [ %.2216, %.loopexit ], [ 0, %.preheader419 ] ; 19 uses
  %.0210 = phi i32 [ %.2212, %.loopexit ], [ 0, %.preheader419 ] ; 20 uses
  %.0207 = phi i32 [ %.1208, %.loopexit ], [ 0, %.preheader419 ] ; 17 uses
  %i.gp = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d)
  %i.gq = shl nuw i32 %i.gp, 16                   ; 4 uses
  %i.gr = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 4 uses
  %i.gs = or disjoint i32 %i.gq, %i.gr            ; 20 uses
  %i.gt = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 4 uses
  %i.gu = shl nuw i32 %i.gt, 16
  %i.gv = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 3 uses
  %i.gw = or disjoint i32 %i.gu, %i.gv
  switch i32 %i.gw, label %bb.gb [
    i32 1130840649, label %bb.ax
    i32 1229472850, label %bb.bd
    i32 1347179589, label %bb.cq
    i32 1951551059, label %bb.dl
    i32 1229209940, label %bb.ei
    i32 1229278788, label %bb.ez
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.gx = icmp eq i32 %i.gs, 0
  br i1 %i.gx, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gy = icmp slt i32 %i.gq, 0
  br i1 %i.gy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gz = load ptr, ptr %i.i, align 8
  store ptr %i.gz, ptr %i.h, align 8
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  %i.ha = load ptr, ptr %i.k, align 8
  %.not.i307 = icmp eq ptr %i.ha, null
  br i1 %.not.i307, label %..thread_crit_edge.i, label %bb.bb

..thread_crit_edge.i:                             ; preds = %bb.ba
  %.pre.i308 = load ptr, ptr %i.h, align 8
  br label %.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.hb = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.hc = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = trunc i64 %i.hf to i32                  ; 2 uses
  %i.hh = icmp sgt i32 %i.gs, %i.hg
  br i1 %i.hh, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.hb, ptr %i.h, align 8
  %i.hi = load ptr, ptr %i.go, align 8
  %i.hj = load ptr, ptr %i.l, align 8
  %i.hk = sub nsw i32 %i.gs, %i.hg
  tail call void %i.hi(ptr noundef %i.hj, i32 noundef %i.hk) #52, !inline_history !23
  br label %.loopexit

.thread.i:                                        ; preds = %bb.bb, %..thread_crit_edge.i
  %i.hl = phi ptr [ %.pre.i308, %..thread_crit_edge.i ], [ %i.hc, %bb.bb ]
  %i.hm = zext nneg i32 %i.gs to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm
  store ptr %i.hn, ptr %i.h, align 8
  br label %.loopexit

bb.bd:                                            ; preds = %bb.aw
  %.not283 = icmp eq i32 %.0220, 0
  br i1 %.not283, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr @.str.87, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.bf:                                            ; preds = %bb.bd
  %.not284 = icmp eq i32 %i.gs, 13
  br i1 %.not284, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr @.str.88, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.bh:                                            ; preds = %bb.bf
  %i.ho = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d)
  %i.hp = shl nuw i32 %i.ho, 16
  %i.hq = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d)
  %i.hr = or disjoint i32 %i.hp, %i.hq
  store i32 %i.hr, ptr %i.d, align 8
  %i.hs = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.d)
  %i.ht = shl nuw i32 %i.hs, 16
  %i.hu = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.d)
  %i.hv = or disjoint i32 %i.ht, %i.hu            ; 2 uses
  store i32 %i.hv, ptr %i.gn, align 4
  %i.hw = icmp ugt i32 %i.hv, 16777216
  br i1 %i.hw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.bj:                                            ; preds = %bb.bh
  %i.hx = load i32, ptr %i.d, align 8
  %i.hy = icmp ugt i32 %i.hx, 16777216
  br i1 %i.hy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.bl:                                            ; preds = %bb.bj
  %i.hz = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ia = load ptr, ptr %i.i, align 8
  %i.ib = icmp ult ptr %i.hz, %i.ia
  br i1 %i.ib, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  store ptr %i.ic, ptr %i.h, align 8
  %i.id = load i8, ptr %i.hz, align 1
  br label %stbi__get8.exit

bb.bn:                                            ; preds = %bb.bl
  %i.ie = load i32, ptr %i.j, align 8
  %.not.i309 = icmp eq i32 %i.ie, 0
  br i1 %.not.i309, label %stbi__get8.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.if = load ptr, ptr %i.k, align 8
  %i.ig = load ptr, ptr %i.l, align 8
  %i.ih = load i32, ptr %i.n, align 4
  %i.ii = tail call i32 %i.if(ptr noundef %i.ig, ptr noundef nonnull %i.m, i32 noundef %i.ih) #52, !inline_history !6 ; 2 uses
  %i.ij = load ptr, ptr %i.h, align 8
  %i.ik = load ptr, ptr %i.o, align 8
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = trunc i64 %i.in to i32
  %i.ip = load i32, ptr %i.p, align 8
  %i.iq = add nsw i32 %i.ip, %i.io
  store i32 %i.iq, ptr %i.p, align 8
  %i.ir = icmp eq i32 %i.ii, 0
  br i1 %i.ir, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %stbi__refill_buffer.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.is = sext i32 %i.ii to i64
  %i.it = getelementptr inbounds i8, ptr %i.m, i64 %i.is
  %.pre.i310 = load i8, ptr %i.m, align 8
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.bq, %bb.bp
  %i.iu = phi i8 [ 0, %bb.bp ], [ %.pre.i310, %bb.bq ]
  %.sink.i.i = phi ptr [ %i.q, %bb.bp ], [ %i.it, %bb.bq ]
  store ptr %.sink.i.i, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.bm, %bb.bn, %stbi__refill_buffer.exit.i
  %.0.i = phi i8 [ %i.id, %bb.bm ], [ %i.iu, %stbi__refill_buffer.exit.i ], [ 0, %bb.bn ] ; 3 uses
  %i.iv = zext i8 %.0.i to i32
  store i32 %i.iv, ptr %i.gm, align 8
  %i.iw = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.0.i)
  %i.ix = icmp eq i8 %i.iw, 1
  %i.iy = and i8 %.0.i, 31
  %switch = icmp ne i8 %i.iy, 0
  %or.cond299 = and i1 %i.ix, %switch
  br i1 %or.cond299, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %stbi__get8.exit
  store ptr @.str.90, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.bs:                                            ; preds = %stbi__get8.exit
  %i.iz = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ja = load ptr, ptr %i.i, align 8
  %i.jb = icmp ult ptr %i.iz, %i.ja
  br i1 %i.jb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  store ptr %i.jc, ptr %i.h, align 8
  %i.jd = load i8, ptr %i.iz, align 1
  br label %stbi__get8.exit316

bb.bu:                                            ; preds = %bb.bs
  %i.je = load i32, ptr %i.j, align 8
  %.not.i311 = icmp eq i32 %i.je, 0
  br i1 %.not.i311, label %.critedge.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jf = load ptr, ptr %i.k, align 8
end_hunk_1
begin_hunk_2_@stbi__parse_png_file:bb.a
bb.en:                                            ; preds = %bb.em
  br i1 %i.py, label %.thread400, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.qa = zext nneg i8 %.0239 to i32
  store i32 %i.qa, ptr %i.gl, align 8
  br label %.thread400

bb.ep:                                            ; preds = %bb.em
  %i.qb = icmp ugt i32 %i.gs, 1073741824
  br i1 %i.qb, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store ptr @.str.103, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.er:                                            ; preds = %bb.ep
  %i.qc = add i32 %i.gs, %.0233                   ; 5 uses
  %i.qd = icmp slt i32 %i.qc, %.0233
  br i1 %i.qd, label %.thread400, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qe = icmp ugt i32 %i.qc, %.0229
  br i1 %i.qe, label %bb.et, label %._crit_edge

._crit_edge:                                      ; preds = %bb.es
  %.pre = load ptr, ptr %i.f, align 8
  br label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.qf = icmp eq i32 %.0229, 0
  %i.qg = tail call i32 @llvm.umax.i32(i32 %i.gs, i32 4096)
  %.1230 = select i1 %i.qf, i32 %i.qg, i32 %.0229
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %bb.et
  %.2231 = phi i32 [ %.1230, %bb.et ], [ %i.qi, %bb.eu ] ; 4 uses
  %i.qh = icmp ugt i32 %i.qc, %.2231
  %i.qi = shl i32 %.2231, 1
  br i1 %i.qh, label %bb.eu, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qj = load ptr, ptr %i.f, align 8
  %i.qk = zext i32 %.2231 to i64
  %i.ql = tail call ptr @realloc(ptr noundef %i.qj, i64 noundef %i.qk) #54 ; 3 uses
  %.not273 = icmp eq ptr %i.ql, null
  br i1 %.not273, label %.thread383, label %bb.ew

.thread383:                                       ; preds = %bb.ev
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.ql, ptr %i.f, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.qm = phi ptr [ %i.ql, %bb.ew ], [ %.pre, %._crit_edge ]
  %.3232 = phi i32 [ %.2231, %bb.ew ], [ %.0229, %._crit_edge ] ; 2 uses
  %i.qn = zext i32 %.0233 to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qn ; 3 uses
  %i.qp = load ptr, ptr %i.k, align 8
  %.not.i341 = icmp eq ptr %i.qp, null
  br i1 %.not.i341, label %..thread_crit_edge.i343, label %bb.ey

..thread_crit_edge.i343:                          ; preds = %bb.ex
  %.pre.i345 = load ptr, ptr %i.h, align 8
  %.pre35.i = load ptr, ptr %i.i, align 8
  br label %.thread.i342

bb.ey:                                            ; preds = %bb.ex
  %i.qq = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.qr = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt                    ; 2 uses
  %i.qv = trunc i64 %i.qu to i32                  ; 2 uses
  %i.qw = icmp sgt i32 %i.gs, %i.qv
  br i1 %i.qw, label %stbi__getn.exit, label %.thread.i342

.thread.i342:                                     ; preds = %bb.ey, %..thread_crit_edge.i343
  %i.qx = phi ptr [ %.pre35.i, %..thread_crit_edge.i343 ], [ %i.qq, %bb.ey ]
  %i.qy = phi ptr [ %.pre.i345, %..thread_crit_edge.i343 ], [ %i.qr, %bb.ey ] ; 2 uses
  %i.qz = zext nneg i32 %i.gs to i64              ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qz
  %.not32.i = icmp ugt ptr %i.ra, %i.qx
  br i1 %.not32.i, label %stbi__getn.exit.thread, label %stbi__getn.exit.thread387

stbi__getn.exit.thread387:                        ; preds = %.thread.i342
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qo, ptr align 1 %i.qy, i64 %i.qz, i1 false)
  %i.rb = load ptr, ptr %i.h, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.qz
  store ptr %i.rc, ptr %i.h, align 8
  br label %.loopexit

stbi__getn.exit:                                  ; preds = %bb.ey
  %sext.i = shl i64 %i.qu, 32
  %i.rd = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qo, ptr align 1 %i.qr, i64 %i.rd, i1 false)
  %i.re = load ptr, ptr %i.k, align 8
  %i.rf = load ptr, ptr %i.l, align 8
  %i.rg = getelementptr inbounds i8, ptr %i.qo, i64 %i.rd
  %i.rh = sub nsw i32 %i.gs, %i.qv                ; 2 uses
  %i.ri = tail call i32 %i.re(ptr noundef %i.rf, ptr noundef %i.rg, i32 noundef %i.rh) #52, !inline_history !175
  %.not = icmp eq i32 %i.ri, %i.rh
  %i.rj = load ptr, ptr %i.i, align 8
  store ptr %i.rj, ptr %i.h, align 8
  br i1 %.not, label %.loopexit, label %stbi__getn.exit.thread

stbi__getn.exit.thread:                           ; preds = %.thread.i342, %stbi__getn.exit
  store ptr @.str.105, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.ez:                                            ; preds = %bb.aw
  %.not259 = icmp eq i32 %.0220, 0
  br i1 %.not259, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store ptr @.str.96, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fb:                                            ; preds = %bb.ez
  %.not260 = icmp eq i32 %1, 0
  br i1 %.not260, label %bb.fc, label %.thread400

bb.fc:                                            ; preds = %bb.fb
  %i.rk = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.rl = icmp eq ptr %i.rk, null
  br i1 %i.rl, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store ptr @.str.106, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fe:                                            ; preds = %bb.fc
  %i.rm = load i32, ptr %i.d, align 8
  %i.rn = load i32, ptr %i.gm, align 8
  %i.ro = mul i32 %i.rn, %i.rm
  %i.rp = add i32 %i.ro, 7
  %i.rq = lshr i32 %i.rp, 3
  %i.rr = load i32, ptr %i.gn, align 4            ; 2 uses
  %i.rs = load i32, ptr %i.gl, align 8
  %i.rt = mul i32 %i.rs, %i.rr
  %i.ru = mul i32 %i.rt, %i.rq
  %i.rv = add i32 %i.ru, %i.rr                    ; 2 uses
  %i.rw = icmp ne i32 %.0207, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.rx = sext i32 %i.rv to i64
  %i.ry = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.rx) #53 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.sa = xor i1 %i.rw, true
  %i.sb = zext i1 %i.sa to i32
  store ptr %i.rk, ptr %3, align 8
  %i.sc = sext i32 %.0233 to i64
  %i.sd = getelementptr inbounds i8, ptr %i.rk, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.sd, ptr %i.se, align 8
  %i.sf = call fastcc i32 @stbi__do_zlib(ptr noundef %3, ptr noundef nonnull %i.ry, i32 noundef %i.rv, i32 noundef 1, i32 noundef %i.sb)
  %.not.i346 = icmp eq i32 %i.sf, 0
  br i1 %.not.i346, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sh = load ptr, ptr %i.sg, align 8
  call void @free(ptr noundef %i.sh) #52
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  store ptr null, ptr %i.e, align 8
  br label %.thread400

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sl = load ptr, ptr %i.sk, align 8            ; 3 uses
  %i.sm = ptrtoint ptr %i.sj to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn
  %i.sp = trunc i64 %i.so to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  store ptr %i.sl, ptr %i.e, align 8
  %i.sq = icmp eq ptr %i.sl, null
  br i1 %i.sq, label %.thread400, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.sr = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.sr) #52
  store ptr null, ptr %i.f, align 8
  %i.ss = load i32, ptr %i.gl, align 8            ; 2 uses
  %i.st = add nsw i32 %i.ss, 1                    ; 2 uses
  %i.su = icmp eq i32 %2, %i.st
  %i.sv = icmp ne i32 %2, 3
  %or.cond5.not263.not268 = and i1 %i.sv, %i.su
  %i.sw = icmp eq i8 %.0239, 0                    ; 2 uses
  %or.cond7.not265 = select i1 %or.cond5.not263.not268, i1 %i.sw, i1 false
  %i.sx = icmp ne i8 %.0236, 0
  %or.cond10 = select i1 %or.cond7.not265, i1 true, i1 %i.sx
  %spec.select1503 = select i1 %or.cond10, i32 %i.st, i32 %i.ss ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1503, ptr %i.sy, align 4
  %i.sz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ta = load i32, ptr %i.gm, align 8            ; 4 uses
  %i.tb = icmp eq i32 %i.ta, 16
  %i.tc = zext i1 %i.tb to i32
  %i.td = shl i32 %spec.select1503, %i.tc         ; 6 uses
  %.not.i350 = icmp eq i32 %.0214, 0
  %i.te = load ptr, ptr %0, align 8               ; 2 uses
  %i.tf = load i32, ptr %i.te, align 8            ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.th = load i32, ptr %i.tg, align 4            ; 5 uses
  br i1 %.not.i350, label %stbi__create_png_image.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ti = or i32 %i.th, %i.tf
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.ti, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.fj, label %stbi__malloc_mad3.exit.thread.i

bb.fj:                                            ; preds = %bb.fi
  %i.tj = icmp eq i32 %i.th, 0
  br i1 %i.tj, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %bb.fj
  %i.tk = udiv i32 2147483647, %i.th
  %.not23.i.i.i = icmp sgt i32 %i.tf, %i.tk
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %bb.fj
  %i.tl = mul nuw nsw i32 %i.th, %i.tf            ; 3 uses
  %i.tm = or i32 %i.tl, %i.td
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.tm, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.fk, label %stbi__malloc_mad3.exit.thread.i

bb.fk:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.tn = icmp eq i32 %i.td, 0
  br i1 %i.tn, label %stbi__malloc_mad3.exit.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %bb.fk
  %i.to = udiv i32 2147483647, %i.td
  %.not.i.i.i = icmp sgt i32 %i.tl, %i.to
  br i1 %.not.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %bb.fk
  %i.tp = mul nuw nsw i32 %i.tl, %i.td
  %i.tq = sext i32 %i.tp to i64
  %i.tr = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.tq) #53 ; 4 uses
  %.not92.i = icmp eq ptr %i.tr, null
  br i1 %.not92.i, label %stbi__malloc_mad3.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %stbi__malloc_mad3.exit.i
  %i.ts = sext i32 %i.td to i64                   ; 9 uses
  br label %bb.fl

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %bb.fi
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.sz, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.sp, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.tt = load ptr, ptr %0, align 8               ; 3 uses
  %i.tu = load i32, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112.i
  %i.tw = load i32, ptr %i.tv, align 4            ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112.i
  %i.ty = load i32, ptr %i.tx, align 4            ; 4 uses
  %i.tz = xor i32 %i.tw, -1
  %i.ua = add i32 %i.tu, %i.tz
  %i.ub = add i32 %i.ua, %i.ty                    ; 2 uses
  %i.uc = udiv i32 %i.ub, %i.ty                   ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.ue = load i32, ptr %i.ud, align 4
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112.i
  %i.ug = load i32, ptr %i.uf, align 4            ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112.i
  %i.ui = load i32, ptr %i.uh, align 4            ; 4 uses
  %i.uj = xor i32 %i.ug, -1
  %i.uk = add i32 %i.ue, %i.uj
  %i.ul = add i32 %i.uk, %i.ui                    ; 2 uses
  %i.um = udiv i32 %i.ul, %i.ui                   ; 4 uses
  %i.un = icmp ule i32 %i.ty, %i.ub
  %i.uo = icmp ule i32 %i.ui, %i.ul
  %or.cond.i = select i1 %i.un, i1 %i.uo, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.up = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.uq = load i32, ptr %i.up, align 8
  %i.ur = mul i32 %i.uc, %i.ta
  %i.us = mul i32 %i.ur, %i.uq
  %i.ut = add nsw i32 %i.us, 7
  %i.uu = ashr i32 %i.ut, 3
  %i.uv = add nsw i32 %i.uu, 1
  %i.uw = mul nsw i32 %i.uv, %i.um                ; 2 uses
  %i.ux = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1503, i32 noundef %i.uc, i32 noundef %i.um, i32 noundef %i.ta, i32 noundef range(i32 0, 256) %.0210)
  %.not93.not.i = icmp eq i32 %i.ux, 0
  br i1 %.not93.not.i, label %.thread.i354, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.uy = icmp sgt i32 %i.um, 0
  %i.uz = icmp sgt i32 %i.uc, 0
  %or.cond107.i = and i1 %i.uz, %i.uy
  %.pre115.i = load ptr, ptr %i.g, align 8        ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.va = load ptr, ptr %0, align 8
  %i.vb = sext i32 %i.ty to i64                   ; 3 uses
  %i.vc = sext i32 %i.tw to i64                   ; 3 uses
  %i.vd = zext nneg i32 %i.uc to i64              ; 3 uses
  %i.ve = zext nneg i32 %i.um to i64
  %.pre.pre.i = load i32, ptr %i.va, align 8
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.td
  %xtraiter = and i64 %i.vd, 1
  %i.vf = icmp eq i32 %i.uc, 1
  %unroll_iter = and i64 %i.vd, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2144 = trunc i32 %i.uc to i1
  br label %.preheader.i

.thread.i354:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.tr) #52
  br label %.thread400

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.vg = trunc i64 %indvars.iv109.i to i32
  %i.vh = mul i32 %i.ui, %i.vg
  %i.vi = add i32 %i.vh, %i.ug
  %.reass.i = mul i32 %factor.op.mul.i, %i.vi
  %i.vj = mul nuw nsw i64 %indvars.iv109.i, %i.vd ; 3 uses
  %i.vk = zext i32 %.reass.i to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.vk ; 3 uses
  br i1 %i.vf, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i352 = phi i64 [ %indvars.iv.next.i353.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.vm = mul nsw i64 %indvars.iv.i352, %i.vb
  %i.vn = add nsw i64 %i.vm, %i.vc
  %i.vo = mul nsw i64 %i.vn, %i.ts
  %i.vp = getelementptr inbounds i8, ptr %i.vl, i64 %i.vo
  %i.vq = add nuw nsw i64 %indvars.iv.i352, %i.vj
  %i.vr = mul nsw i64 %i.vq, %i.ts
  %i.vs = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vp, ptr align 1 %i.vs, i64 %i.ts, i1 false)
  %indvars.iv.next.i353 = or disjoint i64 %indvars.iv.i352, 1 ; 2 uses
  %i.vt = mul nsw i64 %indvars.iv.next.i353, %i.vb
  %i.vu = add nsw i64 %i.vt, %i.vc
  %i.vv = mul nsw i64 %i.vu, %i.ts
  %i.vw = getelementptr inbounds i8, ptr %i.vl, i64 %i.vv
  %i.vx = add nuw nsw i64 %indvars.iv.next.i353, %i.vj
  %i.vy = mul nsw i64 %i.vx, %i.ts
  %i.vz = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vw, ptr align 1 %i.vz, i64 %i.ts, i1 false)
  %indvars.iv.next.i353.1 = add nuw nsw i64 %indvars.iv.i352, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i352.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i353.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2144)
  %i.wa = mul nsw i64 %indvars.iv.i352.epil.init, %i.vb
  %i.wb = add nsw i64 %i.wa, %i.vc
  %i.wc = mul nsw i64 %i.wb, %i.ts
  %i.wd = getelementptr inbounds i8, ptr %i.vl, i64 %i.wc
  %i.we = add nuw nsw i64 %indvars.iv.i352.epil.init, %i.vj
  %i.wf = mul nsw i64 %i.we, %i.ts
  %i.wg = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.wf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wd, ptr align 1 %i.wg, i64 %i.ts, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.wh = icmp samesign ult i64 %indvars.iv.next110.i, %i.ve
  br i1 %i.wh, label %.preheader.i, label %._crit_edge103.split.i

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #52
  %i.wi = zext i32 %i.uw to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.wi
  %i.wk = sub i32 %.085104.i, %i.uw
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.wk, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.wj, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i351 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i351, label %stbi__create_png_image.exit.thread394, label %bb.fl

stbi__create_png_image.exit.thread394:            ; preds = %bb.fn
  store ptr %i.tr, ptr %i.g, align 8
  br label %bb.fo

stbi__create_png_image.exit:                      ; preds = %bb.fh
  %i.wl = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef readonly %i.sz, i32 noundef %i.sp, i32 noundef %spec.select1503, i32 noundef %i.tf, i32 noundef %i.th, i32 noundef %i.ta, i32 noundef range(i32 0, 256) %.0210)
  %.not269 = icmp eq i32 %i.wl, 0
  br i1 %.not269, label %.thread400, label %bb.fo

bb.fo:                                            ; preds = %stbi__create_png_image.exit.thread394, %stbi__create_png_image.exit
  %.not270 = icmp eq i8 %.0236, 0                 ; 2 uses
  br i1 %.not270, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.wm = load i32, ptr %i.gm, align 8
  %i.wn = icmp eq i32 %i.wm, 16
  %i.wo = load i32, ptr %i.sy, align 4            ; 2 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val300 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.val.val = load i32, ptr %.val, align 8        ; 2 uses
  %i.wp = getelementptr i8, ptr %.val, i64 4
  %.val.val301 = load i32, ptr %i.wp, align 4     ; 2 uses
  br i1 %i.wn, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @stbi__compute_transparency16(i32 %.val.val, i32 %.val.val301, ptr %.val300, ptr noundef %i.c, i32 noundef %i.wo)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @stbi__compute_transparency(i32 %.val.val, i32 %.val.val301, ptr %.val300, ptr noundef %i.b, i32 noundef %i.wo)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  %i.wq = load i32, ptr @stbi__de_iphone_flag_global, align 4
  %i.wr = icmp ne i32 %i.wq, 0
  %or.cond12 = select i1 %i.rw, i1 %i.wr, i1 false
  br i1 %or.cond12, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.ws = load i32, ptr %i.sy, align 4
  %i.wt = icmp sgt i32 %i.ws, 2
  br i1 %i.wt, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.val305 = load ptr, ptr %0, align 8
  %.val306 = load ptr, ptr %i.g, align 8
  call fastcc void @stbi__de_iphone(ptr %.val305, ptr %.val306)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs
  br i1 %i.sw, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.wu = zext nneg i8 %.0239 to i32              ; 2 uses
  store i32 %i.wu, ptr %i.gl, align 8
  %i.wv = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.wv, i32 %2, i32 %i.wu ; 4 uses
  store i32 %spec.select, ptr %i.sy, align 4
  %i.ww = load ptr, ptr %0, align 8               ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wz = load i32, ptr %i.wy, align 4
  %i.xa = mul i32 %i.wz, %i.wx                    ; 9 uses
  %i.xb = load ptr, ptr %i.g, align 8             ; 9 uses
  %or.cond.not.i.i.i.i355 = icmp sgt i32 %i.xa, -1
  br i1 %or.cond.not.i.i.i.i355, label %stbi__mul2sizes_valid.exit.i.i.i357, label %stbi__expand_png_palette.exit.thread

stbi__mul2sizes_valid.exit.i.i.i357:              ; preds = %bb.fw
  %i.xc = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.xa, %i.xc
  br i1 %.not10.i.i.i, label %stbi__expand_png_palette.exit.thread, label %stbi__malloc_mad2.exit.i

stbi__malloc_mad2.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit.i.i.i357
  %i.xd = mul nuw nsw i32 %i.xa, %spec.select
  %i.xe = zext nneg i32 %i.xd to i64
  %i.xf = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.xe) #53 ; 6 uses
  %i.xg = icmp eq ptr %i.xf, null
  br i1 %i.xg, label %stbi__expand_png_palette.exit.thread, label %bb.fx

stbi__expand_png_palette.exit.thread:             ; preds = %bb.fw, %stbi__mul2sizes_valid.exit.i.i.i357, %stbi__malloc_mad2.exit.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fx:                                            ; preds = %stbi__malloc_mad2.exit.i
  %i.xh = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.xa, 0                ; 2 uses
  br i1 %i.xh, label %.preheader.i361, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fx
  br i1 %.not56.i, label %stbi__expand_png_palette.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.xa to i64 ; 2 uses
  %xtraiter2145 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.xi = icmp ult i32 %i.xa, 4
  br i1 %i.xi, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2148 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i361:                                  ; preds = %bb.fx
  br i1 %.not56.i, label %stbi__expand_png_palette.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i361
  %wide.trip.count62.i = zext nneg i32 %i.xa to i64 ; 2 uses
  %xtraiter2150 = and i64 %wide.trip.count62.i, 1
  %i.xj = icmp eq i32 %i.xa, 1
  br i1 %i.xj, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2154 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.xf, %.lr.ph55.preheader.i.new ], [ %i.yk, %.lr.ph55.i ] ; 7 uses
  %niter2155 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2155.next.1, %.lr.ph55.i ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv59.i
  %i.xl = load i8, ptr %i.xk, align 1
  %i.xm = zext i8 %i.xl to i64
  %i.xn = shl nuw nsw i64 %i.xm, 2
  %i.xo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xn ; 3 uses
  %i.xp = load i8, ptr %i.xo, align 4
  store i8 %i.xp, ptr %.04553.i, align 1
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 1
  %i.xr = load i8, ptr %i.xq, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.xr, ptr %i.xs, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 2
  %i.xu = load i8, ptr %i.xt, align 2
  %i.xv = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.xu, ptr %i.xv, align 1
  %i.xw = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv59.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = zext i8 %i.xz to i64
  %i.yb = shl nuw nsw i64 %i.ya, 2
  %i.yc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yb ; 3 uses
  %i.yd = load i8, ptr %i.yc, align 4
  store i8 %i.yd, ptr %i.xw, align 1
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.yf, ptr %i.yg, align 1
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 2
  %i.yi = load i8, ptr %i.yh, align 2
  %i.yj = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.yi, ptr %i.yj, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2155.next.1 = add i64 %niter2155, 2       ; 2 uses
  %niter2155.ncmp.1 = icmp eq i64 %niter2155.next.1, %unroll_iter2154
  br i1 %niter2155.ncmp.1, label %stbi__expand_png_palette.exit.loopexit.unr-lcssa, label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i359.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.xf, %.lr.ph.preheader.i.new ], [ %i.zp, %.lr.ph.i ] ; 5 uses
  %niter2149 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2149.next.3, %.lr.ph.i ]
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.ym = load i8, ptr %i.yl, align 1
  %i.yn = zext i8 %i.ym to i64
  %i.yo = shl nuw nsw i64 %i.yn, 2
  %i.yp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yo
  %i.yq = load <4 x i8>, ptr %i.yp, align 4
  store <4 x i8> %i.yq, ptr %.14651.i, align 1
  %i.yr = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 1
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = zext i8 %i.yu to i64
  %i.yw = shl nuw nsw i64 %i.yv, 2
  %i.yx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yw
  %i.yy = load <4 x i8>, ptr %i.yx, align 4
  store <4 x i8> %i.yy, ptr %i.yr, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %.14651.i, i64 8
  %i.za = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 2
  %i.zc = load i8, ptr %i.zb, align 1
  %i.zd = zext i8 %i.zc to i64
  %i.ze = shl nuw nsw i64 %i.zd, 2
  %i.zf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ze
  %i.zg = load <4 x i8>, ptr %i.zf, align 4
  store <4 x i8> %i.zg, ptr %i.yz, align 1
  %i.zh = getelementptr inbounds nuw i8, ptr %.14651.i, i64 12
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 3
  %i.zk = load i8, ptr %i.zj, align 1
  %i.zl = zext i8 %i.zk to i64
  %i.zm = shl nuw nsw i64 %i.zl, 2
  %i.zn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zm
  %i.zo = load <4 x i8>, ptr %i.zn, align 4
  store <4 x i8> %i.zo, ptr %i.zh, align 1
  %i.zp = getelementptr inbounds nuw i8, ptr %.14651.i, i64 16 ; 2 uses
  %indvars.iv.next.i359.3 = add nuw nsw i64 %indvars.iv.i358, 4 ; 2 uses
  %niter2149.next.3 = add i64 %niter2149, 4       ; 2 uses
  %niter2149.ncmp.3 = icmp eq i64 %niter2149.next.3, %unroll_iter2148
  br i1 %niter2149.ncmp.3, label %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa, label %.lr.ph.i

stbi__expand_png_palette.exit.loopexit.unr-lcssa: ; preds = %.lr.ph55.i
  %lcmp.mod2152.not = icmp eq i64 %xtraiter2150, 0
  br i1 %lcmp.mod2152.not, label %stbi__expand_png_palette.exit, label %.lr.ph55.i.epil.preheader

.lr.ph55.i.epil.preheader:                        ; preds = %stbi__expand_png_palette.exit.loopexit.unr-lcssa, %.lr.ph55.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next60.i.1, %stbi__expand_png_palette.exit.loopexit.unr-lcssa ]
  %.04553.i.epil.init = phi ptr [ %i.xf, %.lr.ph55.preheader.i ], [ %i.yk, %stbi__expand_png_palette.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2153 = trunc i32 %i.xa to i1
  call void @llvm.assume(i1 %lcmp.mod2153)
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv59.i.epil.init
  %i.zr = load i8, ptr %i.zq, align 1
  %i.zs = zext i8 %i.zr to i64
  %i.zt = shl nuw nsw i64 %i.zs, 2
  %i.zu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zt ; 3 uses
  %i.zv = load i8, ptr %i.zu, align 4
  store i8 %i.zv, ptr %.04553.i.epil.init, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 1
  %i.zx = load i8, ptr %i.zw, align 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 1
  store i8 %i.zx, ptr %i.zy, align 1
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 2
  %i.aaa = load i8, ptr %i.zz, align 2
  %i.aab = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 2
  store i8 %i.aaa, ptr %i.aab, align 1
  br label %stbi__expand_png_palette.exit

stbi__expand_png_palette.exit.loopexit1824.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod2146.not = icmp eq i64 %xtraiter2145, 0
  br i1 %lcmp.mod2146.not, label %stbi__expand_png_palette.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i358.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i359.3, %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.xf, %.lr.ph.preheader.i ], [ %i.zp, %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa ]
  %lcmp.mod2147 = icmp ne i64 %xtraiter2145, 0
  call void @llvm.assume(i1 %lcmp.mod2147)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i358.epil = phi i64 [ %indvars.iv.i358.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i359.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aai, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.aac = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358.epil
  %i.aad = load i8, ptr %i.aac, align 1
  %i.aae = zext i8 %i.aad to i64
  %i.aaf = shl nuw nsw i64 %i.aae, 2
  %i.aag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aaf
  %i.aah = load <4 x i8>, ptr %i.aag, align 4
  store <4 x i8> %i.aah, ptr %.14651.i.epil, align 1
  %i.aai = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i359.epil = add nuw nsw i64 %indvars.iv.i358.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2145
  br i1 %epil.iter.cmp.not, label %stbi__expand_png_palette.exit, label %.lr.ph.i.epil, !llvm.loop !176

stbi__expand_png_palette.exit:                    ; preds = %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %stbi__expand_png_palette.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i361
  call void @free(ptr noundef %i.xb) #52
  store ptr %i.xf, ptr %i.g, align 8
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fv
  br i1 %.not270, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aaj = load i32, ptr %i.gl, align 8
  %i.aak = add nsw i32 %i.aaj, 1
  store i32 %i.aak, ptr %i.gl, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %stbi__expand_png_palette.exit, %bb.fy, %bb.fz
  %i.aal = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.aal) #52
  store ptr null, ptr %i.e, align 8
  %i.aam = call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.d) ; 0 uses
  %i.aan = call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.d) ; 0 uses
  br label %.thread400

bb.gb:                                            ; preds = %bb.aw
  %.not298 = icmp eq i32 %.0220, 0
  br i1 %.not298, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store ptr @.str.96, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.gd:                                            ; preds = %bb.gb
  %i.aao = and i32 %i.gt, 8192
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aaq = lshr i32 %i.gt, 8
  %i.aar = trunc nuw i32 %i.aaq to i8
  store i8 %i.aar, ptr @stbi__parse_png_file.invalid_chunk, align 16
  %i.aas = trunc i32 %i.gt to i8
  store i8 %i.aas, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 1), align 1
  %i.aat = lshr i32 %i.gv, 8
  %i.aau = trunc nuw i32 %i.aat to i8
  store i8 %i.aau, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 2), align 2
  %i.aav = trunc i32 %i.gv to i8
  store i8 %i.aav, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 3), align 1
  store ptr @stbi__parse_png_file.invalid_chunk, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.gf:                                            ; preds = %bb.gd
  %i.aaw = icmp eq i32 %i.gs, 0
  br i1 %i.aaw, label %.loopexit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aax = icmp slt i32 %i.gq, 0
  br i1 %i.aax, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aay = load ptr, ptr %i.i, align 8
  store ptr %i.aay, ptr %i.h, align 8
  br label %.loopexit

bb.gi:                                            ; preds = %bb.gg
  %i.aaz = load ptr, ptr %i.k, align 8
  %.not.i362 = icmp eq ptr %i.aaz, null
  br i1 %.not.i362, label %..thread_crit_edge.i364, label %bb.gj

..thread_crit_edge.i364:                          ; preds = %bb.gi
  %.pre.i366 = load ptr, ptr %i.h, align 8
  br label %.thread.i363

bb.gj:                                            ; preds = %bb.gi
  %i.aba = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.abb = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = sub i64 %i.abc, %i.abd
  %i.abf = trunc i64 %i.abe to i32                ; 2 uses
  %i.abg = icmp sgt i32 %i.gs, %i.abf
  br i1 %i.abg, label %bb.gk, label %.thread.i363

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.aba, ptr %i.h, align 8
  %i.abh = load ptr, ptr %i.go, align 8
  %i.abi = load ptr, ptr %i.l, align 8
  %i.abj = sub nsw i32 %i.gs, %i.abf
  tail call void %i.abh(ptr noundef %i.abi, i32 noundef %i.abj) #52, !inline_history !23
  br label %.loopexit

.thread.i363:                                     ; preds = %bb.gj, %..thread_crit_edge.i364
  %i.abk = phi ptr [ %.pre.i366, %..thread_crit_edge.i364 ], [ %i.abb, %bb.gj ]
  %i.abl = zext nneg i32 %i.gs to i64
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abl
  store ptr %i.abm, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %stbi__get8.exit340, %.lr.ph747, %.lr.ph749, %stbi__get8.exit334, %.preheader417, %.preheader415, %.preheader413, %.preheader, %stbi__getn.exit, %bb.ax, %bb.az, %bb.bc, %.thread.i, %bb.cm, %bb.co, %stbi__getn.exit.thread387, %bb.gf, %bb.gh, %bb.gk, %.thread.i363
  %.3242 = phi i8 [ %.0239, %stbi__getn.exit.thread387 ], [ %.0239, %stbi__getn.exit ], [ %.0239, %.thread.i ], [ %.0239, %.thread.i363 ], [ 0, %.preheader413 ], [ 0, %.preheader415 ], [ %.0239, %.preheader ], [ %.0239, %bb.ax ], [ %.0239, %bb.az ], [ %.0239, %bb.bc ], [ %.1240, %bb.co ], [ 0, %bb.cm ], [ %.0239, %bb.gf ], [ %.0239, %bb.gh ], [ %.0239, %bb.gk ], [ 4, %.preheader417 ], [ 0, %.lr.ph747 ], [ %.0239, %stbi__get8.exit334 ], [ 0, %.lr.ph749 ], [ 4, %stbi__get8.exit340 ]
  %.1237 = phi i8 [ %.0236, %stbi__getn.exit.thread387 ], [ %.0236, %stbi__getn.exit ], [ %.0236, %.thread.i ], [ %.0236, %.thread.i363 ], [ 1, %.preheader413 ], [ 1, %.preheader415 ], [ %.0236, %.preheader ], [ %.0236, %bb.ax ], [ %.0236, %bb.az ], [ %.0236, %bb.bc ], [ %.0236, %bb.co ], [ %.0236, %bb.cm ], [ %.0236, %bb.gf ], [ %.0236, %bb.gh ], [ %.0236, %bb.gk ], [ %.0236, %.preheader417 ], [ 1, %.lr.ph747 ], [ %.0236, %stbi__get8.exit334 ], [ 1, %.lr.ph749 ], [ %.0236, %stbi__get8.exit340 ]
  %.1234 = phi i32 [ %i.qc, %stbi__getn.exit.thread387 ], [ %i.qc, %stbi__getn.exit ], [ %.0233, %.thread.i ], [ %.0233, %.thread.i363 ], [ %.0233, %.preheader413 ], [ %.0233, %.preheader415 ], [ %.0233, %.preheader ], [ %.0233, %bb.ax ], [ %.0233, %bb.az ], [ %.0233, %bb.bc ], [ %.0233, %bb.co ], [ %.0233, %bb.cm ], [ %.0233, %bb.gf ], [ %.0233, %bb.gh ], [ %.0233, %bb.gk ], [ %.0233, %.preheader417 ], [ %.0233, %.lr.ph747 ], [ %.0233, %stbi__get8.exit334 ], [ %.0233, %.lr.ph749 ], [ %.0233, %stbi__get8.exit340 ]
  %.4 = phi i32 [ %.3232, %stbi__getn.exit.thread387 ], [ %.3232, %stbi__getn.exit ], [ %.0229, %.thread.i ], [ %.0229, %.thread.i363 ], [ %.0229, %.preheader413 ], [ %.0229, %.preheader415 ], [ %.0229, %.preheader ], [ %.0229, %bb.ax ], [ %.0229, %bb.az ], [ %.0229, %bb.bc ], [ %.0229, %bb.co ], [ %.0229, %bb.cm ], [ %.0229, %bb.gf ], [ %.0229, %bb.gh ], [ %.0229, %bb.gk ], [ %.0229, %.preheader417 ], [ %.0229, %.lr.ph747 ], [ %.0229, %stbi__get8.exit334 ], [ %.0229, %.lr.ph749 ], [ %.0229, %stbi__get8.exit340 ]
  %.1225 = phi i32 [ %.0224, %stbi__getn.exit.thread387 ], [ %.0224, %stbi__getn.exit ], [ %.0224, %.thread.i ], [ %.0224, %.thread.i363 ], [ %.0224, %.preheader413 ], [ %.0224, %.preheader415 ], [ %.zext, %.preheader ], [ %.0224, %bb.ax ], [ %.0224, %bb.az ], [ %.0224, %bb.bc ], [ %.0224, %bb.co ], [ %.0224, %bb.cm ], [ %.0224, %bb.gf ], [ %.0224, %bb.gh ], [ %.0224, %bb.gk ], [ %.0224, %.preheader417 ], [ %.0224, %.lr.ph747 ], [ %.zext, %stbi__get8.exit334 ], [ %.0224, %.lr.ph749 ], [ %.0224, %stbi__get8.exit340 ]
  %.2222 = phi i32 [ 0, %stbi__getn.exit.thread387 ], [ 0, %stbi__getn.exit ], [ %.0220, %.thread.i ], [ 0, %.thread.i363 ], [ 0, %.preheader413 ], [ 0, %.preheader415 ], [ 0, %.preheader ], [ %.0220, %bb.ax ], [ %.0220, %bb.az ], [ %.0220, %bb.bc ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.gf ], [ 0, %bb.gh ], [ 0, %bb.gk ], [ 0, %.preheader417 ], [ 0, %.lr.ph747 ], [ 0, %stbi__get8.exit334 ], [ 0, %.lr.ph749 ], [ 0, %stbi__get8.exit340 ]
  %.2216 = phi i32 [ %.0214, %stbi__getn.exit.thread387 ], [ %.0214, %stbi__getn.exit ], [ %.0214, %.thread.i ], [ %.0214, %.thread.i363 ], [ %.0214, %.preheader413 ], [ %.0214, %.preheader415 ], [ %.0214, %.preheader ], [ %.0214, %bb.ax ], [ %.0214, %bb.az ], [ %.0214, %bb.bc ], [ %i.kf, %bb.co ], [ %i.kf, %bb.cm ], [ %.0214, %bb.gf ], [ %.0214, %bb.gh ], [ %.0214, %bb.gk ], [ %.0214, %.preheader417 ], [ %.0214, %.lr.ph747 ], [ %.0214, %stbi__get8.exit334 ], [ %.0214, %.lr.ph749 ], [ %.0214, %stbi__get8.exit340 ]
  %.2212 = phi i32 [ %.0210, %stbi__getn.exit.thread387 ], [ %.0210, %stbi__getn.exit ], [ %.0210, %.thread.i ], [ %.0210, %.thread.i363 ], [ %.0210, %.preheader413 ], [ %.0210, %.preheader415 ], [ %.0210, %.preheader ], [ %.0210, %bb.ax ], [ %.0210, %bb.az ], [ %.0210, %bb.bc ], [ %i.kb, %bb.co ], [ %i.kb, %bb.cm ], [ %.0210, %bb.gf ], [ %.0210, %bb.gh ], [ %.0210, %bb.gk ], [ %.0210, %.preheader417 ], [ %.0210, %.lr.ph747 ], [ %.0210, %stbi__get8.exit334 ], [ %.0210, %.lr.ph749 ], [ %.0210, %stbi__get8.exit340 ]
  %.1208 = phi i32 [ %.0207, %stbi__getn.exit.thread387 ], [ %.0207, %stbi__getn.exit ], [ 1, %.thread.i ], [ %.0207, %.thread.i363 ], [ %.0207, %.preheader413 ], [ %.0207, %.preheader415 ], [ %.0207, %.preheader ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bc ], [ %.0207, %bb.co ], [ %.0207, %bb.cm ], [ %.0207, %bb.gf ], [ %.0207, %bb.gh ], [ %.0207, %bb.gk ], [ %.0207, %.preheader417 ], [ %.0207, %.lr.ph747 ], [ %.0207, %stbi__get8.exit334 ], [ %.0207, %.lr.ph749 ], [ %.0207, %stbi__get8.exit340 ]
  %i.abn = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 0 uses
  %i.abo = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 0 uses
  br label %bb.aw

.thread400:                                       ; preds = %bb.er, %.thread.i354, %stbi__malloc_mad3.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.ga, %bb.fb, %stbi_zlib_decode_malloc_guesssize_headerflag.exit, %stbi__create_png_image.exit, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %stbi__expand_png_palette.exit.thread, %bb.eo, %bb.el, %.thread383, %stbi__getn.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.ge, %bb.gc, %stbi__check_png_header.exit.thread, %stbi__check_png_header.exit
  %.7 = phi i32 [ 0, %stbi__check_png_header.exit.thread ], [ 1, %stbi__check_png_header.exit ], [ 0, %bb.cc ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %stbi__expand_png_palette.exit.thread ], [ 0, %stbi__create_png_image.exit ], [ 1, %bb.ga ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread383 ], [ 0, %stbi__getn.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread.i354 ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gc ], [ 0, %bb.ge ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %stbi__malloc_mad3.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret i32 %.7
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @stbi__convert_format(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %3, %2
  %or.cond.not.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.d = udiv i32 2147483647, %3
  %.not23.i.i = icmp sgt i32 %2, %i.d
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.d
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp sgt i32 %i.e, %i.h
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit12.i.i
  %i.i = mul nuw nsw i32 %i.e, %4
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.j) #53 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad3.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad3.exit
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.n = shl nsw i32 %1, 3
  %i.o = add nsw i32 %i.n, %2                     ; 2 uses
  %.11167198 = add i32 %3, -1                     ; 32 uses
  %i.p = icmp sgt i32 %.11167198, -1              ; 12 uses
  switch i32 %i.o, label %.critedge [
    i32 10, label %.lr.ph258.split
    i32 11, label %.lr.ph258.split
    i32 12, label %.lr.ph258.split
    i32 17, label %.lr.ph258.split
    i32 19, label %.lr.ph258.split
    i32 20, label %.lr.ph258.split
    i32 28, label %.lr.ph258.split
    i32 25, label %.lr.ph258.split
    i32 26, label %.lr.ph258.split
    i32 33, label %.lr.ph258.split
    i32 34, label %.lr.ph258.split
    i32 35, label %.lr.ph258.split
  ]

.lr.ph258.split:                                  ; preds = %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.q = zext i32 %3 to i64                       ; 22 uses
  %min.iters.check504 = icmp ult i32 %3, 8
  %n.vec506 = and i64 %i.q, 4294967288            ; 5 uses
  %i.r = trunc nuw i64 %n.vec506 to i32
  %i.s = sub i32 %.11167198, %i.r
  %i.t = shl nuw nsw i64 %n.vec506, 1
  %i.u = shl nuw nsw i64 %n.vec506, 2
  %cmp.n521 = icmp eq i64 %n.vec506, %i.q
  %min.iters.check451 = icmp ult i32 %3, 9
  %min.iters.check453 = icmp ult i32 %3, 17
  %i.v = and i64 %i.q, 15                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 16, i64 %i.v         ; 2 uses
  %n.vec455 = sub nsw i64 %i.q, %i.x              ; 5 uses
  %i.y = trunc i64 %n.vec455 to i32
  %i.z = sub i32 %.11167198, %i.y
  %i.aa = shl nsw i64 %n.vec455, 2
  %min.epilog.iters.check484 = icmp samesign ult i64 %i.x, 9
  %i.ab = and i64 %i.q, 7                         ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
end_hunk_2
