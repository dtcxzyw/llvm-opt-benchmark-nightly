Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/refs?download=true
inline.NumInlined: 22
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ff_vvc_set_new_ref:bb.a
  %i.dg = load i16, ptr %i.df, align 8, !tbaa !87
  %i.dh = load i16, ptr %i.f, align 8, !tbaa !97
  %i.di = icmp eq i16 %i.dg, %i.dh
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 1156
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !98
  %i.dl = icmp eq i32 %i.dk, %i.d
  br i1 %i.dl, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !24
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 184
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !26
  %.not.10 = icmp eq ptr %i.dp, null
  br i1 %.not.10, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !87
  %i.ds = load i16, ptr %i.f, align 8, !tbaa !97
  %i.dt = icmp eq i16 %i.dr, %i.ds
  br i1 %i.dt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1276
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !98
  %i.dw = icmp eq i32 %i.dv, %i.d
  br i1 %i.dw, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 184
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !26
  %.not.11 = icmp eq ptr %i.ea, null
  br i1 %.not.11, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1432
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !87
  %i.ed = load i16, ptr %i.f, align 8, !tbaa !97
  %i.ee = icmp eq i16 %i.ec, %i.ed
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 1396
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !98
  %i.eh = icmp eq i32 %i.eg, %i.d
  br i1 %i.eh, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 1448
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 184
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !26
  %.not.12 = icmp eq ptr %i.el, null
  br i1 %.not.12, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 1552
  %i.en = load i16, ptr %i.em, align 8, !tbaa !87
  %i.eo = load i16, ptr %i.f, align 8, !tbaa !97
  %i.ep = icmp eq i16 %i.en, %i.eo
  br i1 %i.ep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 1516
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !98
  %i.es = icmp eq i32 %i.er, %i.d
  br i1 %i.es, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 184
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !26
  %.not.13 = icmp eq ptr %i.ew, null
  br i1 %.not.13, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 1672
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !87
  %i.ez = load i16, ptr %i.f, align 8, !tbaa !97
  %i.fa = icmp eq i16 %i.ey, %i.ez
  br i1 %i.fa, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1636
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !98
  %i.fd = icmp eq i32 %i.fc, %i.d
  br i1 %i.fd, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 1688
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 184
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !26
  %.not.14 = icmp eq ptr %i.fh, null
  br i1 %.not.14, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %i.fj = load i16, ptr %i.fi, align 8, !tbaa !87
  %i.fk = load i16, ptr %i.f, align 8, !tbaa !97
  %i.fl = icmp eq i16 %i.fj, %i.fk
  br i1 %i.fl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 1756
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !98
  %i.fo = icmp eq i32 %i.fn, %i.d
  br i1 %i.fo, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !24
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 184
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !26
  %.not.15 = icmp eq ptr %i.fs, null
  br i1 %.not.15, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 1912
  %i.fu = load i16, ptr %i.ft, align 8, !tbaa !87
  %i.fv = load i16, ptr %i.f, align 8, !tbaa !97
  %i.fw = icmp eq i16 %i.fu, %i.fv
  br i1 %i.fw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 1876
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !98
  %i.fz = icmp eq i32 %i.fy, %i.d
  br i1 %i.fz, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 1928
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !24
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 184
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !26
  %.not.16 = icmp eq ptr %i.gd, null
  br i1 %.not.16, label %.critedge61, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 2032
  %i.gf = load i16, ptr %i.ge, align 8, !tbaa !87
  %i.gg = load i16, ptr %i.f, align 8, !tbaa !97
  %i.gh = icmp eq i16 %i.gf, %i.gg
  br i1 %i.gh, label %bb.ay, label %.critedge61

bb.ay:                                            ; preds = %bb.ax
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 1996
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !98
  %i.gk = icmp eq i32 %i.gj, %i.d
  br i1 %i.gk, label %.critedge, label %.critedge61

.critedge61:                                      ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.gl = tail call fastcc ptr @alloc_frame(ptr noundef %0, ptr noundef nonnull %1) ; 8 uses
  %.not56 = icmp eq ptr %i.gl, null
  br i1 %.not56, label %bb.bp, label %bb.az

bb.az:                                            ; preds = %.critedge61
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !24 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !100 ; 2 uses
  %.off.i = add i32 %i.go, -7
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  store i32 1, ptr %i.gp, align 8, !tbaa !162
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 276 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !107
  %i.gs = or i32 %i.gr, 2
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !107
  br label %set_pict_type.exit

bb.bb:                                            ; preds = %bb.az
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !164
  %.not.i = icmp eq i8 %i.gv, 0
  br i1 %.not.i, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bb
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !165 ; 2 uses
  %i.gy = icmp slt i32 %i.gx, 1
  br i1 %i.gy, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !166
  %i.hb = zext nneg i32 %i.gx to i64
  br label %bb.bc

._crit_edge.i:                                    ; preds = %bb.bf
  br i1 %.126.i, label %bb.bg, label %.critedge.i

bb.bc:                                            ; preds = %bb.bf, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bf ] ; 2 uses
  %.02533.i = phi i1 [ false, %.lr.ph.i ], [ %.126.i, %bb.bf ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [56 x i8], ptr %i.ha, i64 %indvars.iv.i ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !168 ; 2 uses
  %.not32.i = icmp eq ptr %i.he, null
  br i1 %.not32.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hf = load i32, ptr %i.hc, align 8, !tbaa !169
  %i.hg = icmp ult i32 %i.hf, 12
  br i1 %i.hg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 1345
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !170 ; 2 uses
  %i.hj = icmp ne i8 %i.hi, 2
  %3 = or i1 %.02533.i, %i.hj
  %i.hk = icmp eq i8 %i.hi, 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.126.i = phi i1 [ %3, %bb.be ], [ %.02533.i, %bb.bd ], [ %.02533.i, %bb.bc ] ; 2 uses
  %.1.i = phi i1 [ %i.hk, %bb.be ], [ false, %bb.bd ], [ false, %bb.bc ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hl = icmp samesign uge i64 %indvars.iv.next.i, %i.hb
  %.not31.i = select i1 %i.hl, i1 true, i1 %.1.i
  br i1 %.not31.i, label %._crit_edge.i, label %bb.bc, !llvm.loop !161

.critedge.i:                                      ; preds = %._crit_edge.i, %.preheader.i, %bb.bb
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  store i32 1, ptr %i.hm, align 8, !tbaa !162
  br label %set_pict_type.exit

bb.bg:                                            ; preds = %._crit_edge.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gm, i64 120 ; 2 uses
  br i1 %.1.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 3, ptr %i.hn, align 8, !tbaa !162
  br label %set_pict_type.exit

bb.bi:                                            ; preds = %bb.bg
  store i32 2, ptr %i.hn, align 8, !tbaa !162
  br label %set_pict_type.exit

set_pict_type.exit:                               ; preds = %bb.ba, %.critedge.i, %bb.bh, %bb.bi
  store ptr %i.gm, ptr %2, align 8, !tbaa !114
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 19416
  store ptr %i.gl, ptr %i.ho, align 8, !tbaa !115
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !116
  %.not57 = icmp eq i32 %i.hq, 0
  br i1 %.not57, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %set_pict_type.exit
  %i.hr = icmp eq i32 %i.go, 3
  br i1 %i.hr, label %.sink.split, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !117
  %i.hu = icmp eq i32 %i.ht, -2147483648
  br i1 %i.hu, label %bb.bl, label %.sink.split

bb.bl:                                            ; preds = %bb.bk, %set_pict_type.exit
  %i.hv = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 66
  %i.hx = load i8, ptr %i.hw, align 2, !tbaa !171
  %.not58 = icmp eq i8 %i.hx, 0
  br i1 %.not58, label %bb.bm, label %.sink.split

.sink.split:                                      ; preds = %bb.bl, %bb.bj, %bb.bk
  %.sink = phi i8 [ 2, %bb.bj ], [ 2, %bb.bk ], [ 3, %bb.bl ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gl, i64 106
  store i8 %.sink, ptr %i.hy, align 2, !tbaa !27
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split, %bb.bl
  %i.hz = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !172
  %.not59 = icmp eq i8 %i.ib, 0
  br i1 %.not59, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gl, i64 106 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !27
  %i.ie = or i8 %i.id, 2
  store i8 %i.ie, ptr %i.ic, align 2, !tbaa !27
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.if = getelementptr inbounds nuw i8, ptr %i.gl, i64 68
  store i32 %i.d, ptr %i.if, align 4, !tbaa !98
  %i.ig = load i16, ptr %i.f, align 8, !tbaa !97
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gl, i64 104
  store i16 %i.ig, ptr %i.ih, align 8, !tbaa !87
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 2072
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !80
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !119 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 14
  %i.im = load i16, ptr %i.il, align 2, !tbaa !173
  %i.in = zext i16 %i.im to i32
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 9 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !122
  %i.ir = zext nneg i8 %i.iq to i32
  %i.is = shl i32 %i.in, %i.ir
  %i.it = sext i32 %i.is to i64
  %i.iu = load ptr, ptr %i.gl, align 8, !tbaa !24 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 360
  store i64 %i.it, ptr %i.iv, align 8, !tbaa !174
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.ix = load i16, ptr %i.iw, align 8, !tbaa !175
  %i.iy = zext i16 %i.ix to i32
  %i.iz = load i8, ptr %i.ip, align 1, !tbaa !122
  %i.ja = zext nneg i8 %i.iz to i32
  %i.jb = shl i32 %i.iy, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iu, i64 368
  store i64 %i.jc, ptr %i.jd, align 8, !tbaa !176
  %i.je = getelementptr inbounds nuw i8, ptr %i.ik, i64 18
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !177
  %i.jg = zext i16 %i.jf to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.io, i64 12 ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !122
  %i.jj = zext nneg i8 %i.ji to i32
  %i.jk = shl i32 %i.jg, %i.jj
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iu, i64 344
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !178
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ik, i64 20
  %i.jo = load i16, ptr %i.jn, align 4, !tbaa !179
  %i.jp = zext i16 %i.jo to i32
  %i.jq = load i8, ptr %i.jh, align 1, !tbaa !122
  %i.jr = zext nneg i8 %i.jq to i32
  %i.js = shl i32 %i.jp, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iu, i64 352
  store i64 %i.jt, ptr %i.ju, align 8, !tbaa !180
  br label %bb.bp

bb.bp:                                            ; preds = %.critedge, %.critedge61, %bb.bo
  %.3 = phi i32 [ 0, %bb.bo ], [ -1094995529, %.critedge ], [ -12, %.critedge61 ]
  ret i32 %.3
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @alloc_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
.thread97:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2064
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2072 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %.not.not = icmp eq ptr %i.i, null
  br i1 %.not.not, label %bb.a, label %.thread97.1

.thread97.1:                                      ; preds = %.thread97
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %.not.not.1 = icmp eq ptr %i.m, null
  br i1 %.not.not.1, label %bb.a, label %.thread97.2

.thread97.2:                                      ; preds = %.thread97.1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %.not.not.2 = icmp eq ptr %i.q, null
  br i1 %.not.not.2, label %bb.a, label %.thread97.3

.thread97.3:                                      ; preds = %.thread97.2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %.not.not.3 = icmp eq ptr %i.u, null
  br i1 %.not.not.3, label %bb.a, label %.thread97.4

.thread97.4:                                      ; preds = %.thread97.3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %.not.not.4 = icmp eq ptr %i.y, null
  br i1 %.not.not.4, label %bb.a, label %.thread97.5

.thread97.5:                                      ; preds = %.thread97.4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %.not.not.5 = icmp eq ptr %i.ac, null
  br i1 %.not.not.5, label %bb.a, label %.thread97.6

.thread97.6:                                      ; preds = %.thread97.5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  %.not.not.6 = icmp eq ptr %i.ag, null
  br i1 %.not.not.6, label %bb.a, label %.thread97.7

.thread97.7:                                      ; preds = %.thread97.6
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %.not.not.7 = icmp eq ptr %i.ak, null
  br i1 %.not.not.7, label %bb.a, label %.thread97.8

.thread97.8:                                      ; preds = %.thread97.7
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 2 uses
end_hunk_0
