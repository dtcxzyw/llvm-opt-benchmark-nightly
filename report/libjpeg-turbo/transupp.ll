Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/transupp?download=true
inline.NumInlined: 33
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 54
begin_hunk_0_@do_reflect:bb.a
  %i.dr = load i16, ptr %i.dm, align 2, !tbaa !23
  %i.ds = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -78
  store i16 %i.dr, ptr %i.dp, align 2, !tbaa !23
  %i.dt = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 52
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !23
  %i.dv = sub i16 0, %i.du
  %i.dw = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -76
  store i16 %i.dv, ptr %i.ds, align 2, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 54
  %i.dy = load i16, ptr %i.dt, align 2, !tbaa !23
  %i.dz = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -74
  store i16 %i.dy, ptr %i.dw, align 2, !tbaa !23
  %i.ea = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 56
  %i.eb = load i16, ptr %i.dx, align 2, !tbaa !23
  %i.ec = sub i16 0, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -72
  store i16 %i.ec, ptr %i.dz, align 2, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 58
  %i.ef = load i16, ptr %i.ea, align 2, !tbaa !23
  %i.eg = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -70
  store i16 %i.ef, ptr %i.ed, align 2, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 60
  %i.ei = load i16, ptr %i.ee, align 2, !tbaa !23
  %i.ej = sub i16 0, %i.ei
  %i.ek = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -68
  store i16 %i.ej, ptr %i.eg, align 2, !tbaa !23
  %i.el = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 62
  %i.em = load i16, ptr %i.eh, align 2, !tbaa !23
  %i.en = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -66
  store i16 %i.em, ptr %i.ek, align 2, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 64
  %i.ep = load i16, ptr %i.el, align 2, !tbaa !23
  %i.eq = sub i16 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -64
  store i16 %i.eq, ptr %i.en, align 2, !tbaa !23
  %i.es = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 66
  %i.et = load i16, ptr %i.eo, align 2, !tbaa !23
  %i.eu = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -62
  store i16 %i.et, ptr %i.er, align 2, !tbaa !23
  %i.ev = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 68
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !23
  %i.ex = sub i16 0, %i.ew
  %i.ey = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -60
  store i16 %i.ex, ptr %i.eu, align 2, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 70
  %i.fa = load i16, ptr %i.ev, align 2, !tbaa !23
  %i.fb = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -58
  store i16 %i.fa, ptr %i.ey, align 2, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 72
  %i.fd = load i16, ptr %i.ez, align 2, !tbaa !23
  %i.fe = sub i16 0, %i.fd
  %i.ff = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -56
  store i16 %i.fe, ptr %i.fb, align 2, !tbaa !23
  %i.fg = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 74
  %i.fh = load i16, ptr %i.fc, align 2, !tbaa !23
  %i.fi = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -54
  store i16 %i.fh, ptr %i.ff, align 2, !tbaa !23
  %i.fj = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 76
  %i.fk = load i16, ptr %i.fg, align 2, !tbaa !23
  %i.fl = sub i16 0, %i.fk
  %i.fm = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -52
  store i16 %i.fl, ptr %i.fi, align 2, !tbaa !23
  %i.fn = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 78
  %i.fo = load i16, ptr %i.fj, align 2, !tbaa !23
  %i.fp = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -50
  store i16 %i.fo, ptr %i.fm, align 2, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 80
  %i.fr = load i16, ptr %i.fn, align 2, !tbaa !23
  %i.fs = sub i16 0, %i.fr
  %i.ft = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -48
  store i16 %i.fs, ptr %i.fp, align 2, !tbaa !23
  %i.fu = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 82
  %i.fv = load i16, ptr %i.fq, align 2, !tbaa !23
  %i.fw = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -46
  store i16 %i.fv, ptr %i.ft, align 2, !tbaa !23
  %i.fx = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 84
  %i.fy = load i16, ptr %i.fu, align 2, !tbaa !23
  %i.fz = sub i16 0, %i.fy
  %i.ga = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -44
  store i16 %i.fz, ptr %i.fw, align 2, !tbaa !23
  %i.gb = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 86
  %i.gc = load i16, ptr %i.fx, align 2, !tbaa !23
  %i.gd = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -42
  store i16 %i.gc, ptr %i.ga, align 2, !tbaa !23
  %i.ge = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 88
  %i.gf = load i16, ptr %i.gb, align 2, !tbaa !23
  %i.gg = sub i16 0, %i.gf
  %i.gh = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -40
  store i16 %i.gg, ptr %i.gd, align 2, !tbaa !23
  %i.gi = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 90
  %i.gj = load i16, ptr %i.ge, align 2, !tbaa !23
  %i.gk = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -38
  store i16 %i.gj, ptr %i.gh, align 2, !tbaa !23
  %i.gl = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 92
  %i.gm = load i16, ptr %i.gi, align 2, !tbaa !23
  %i.gn = sub i16 0, %i.gm
  %i.go = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -36
  store i16 %i.gn, ptr %i.gk, align 2, !tbaa !23
  %i.gp = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 94
  %i.gq = load i16, ptr %i.gl, align 2, !tbaa !23
  %i.gr = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -34
  store i16 %i.gq, ptr %i.go, align 2, !tbaa !23
  %i.gs = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 96
  %i.gt = load i16, ptr %i.gp, align 2, !tbaa !23
  %i.gu = sub i16 0, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -32
  store i16 %i.gu, ptr %i.gr, align 2, !tbaa !23
  %i.gw = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 98
  %i.gx = load i16, ptr %i.gs, align 2, !tbaa !23
  %i.gy = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -30
  store i16 %i.gx, ptr %i.gv, align 2, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 100
  %i.ha = load i16, ptr %i.gw, align 2, !tbaa !23
  %i.hb = sub i16 0, %i.ha
  %i.hc = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -28
  store i16 %i.hb, ptr %i.gy, align 2, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 102
  %i.he = load i16, ptr %i.gz, align 2, !tbaa !23
  %i.hf = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -26
  store i16 %i.he, ptr %i.hc, align 2, !tbaa !23
  %i.hg = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 104
  %i.hh = load i16, ptr %i.hd, align 2, !tbaa !23
  %i.hi = sub i16 0, %i.hh
  %i.hj = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -24
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !23
  %i.hk = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 106
  %i.hl = load i16, ptr %i.hg, align 2, !tbaa !23
  %i.hm = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -22
  store i16 %i.hl, ptr %i.hj, align 2, !tbaa !23
  %i.hn = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 108
  %i.ho = load i16, ptr %i.hk, align 2, !tbaa !23
  %i.hp = sub i16 0, %i.ho
  %i.hq = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -20
  store i16 %i.hp, ptr %i.hm, align 2, !tbaa !23
  %i.hr = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 110
  %i.hs = load i16, ptr %i.hn, align 2, !tbaa !23
  %i.ht = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -18
  store i16 %i.hs, ptr %i.hq, align 2, !tbaa !23
  %i.hu = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 112
  %i.hv = load i16, ptr %i.hr, align 2, !tbaa !23
  %i.hw = sub i16 0, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -16
  store i16 %i.hw, ptr %i.ht, align 2, !tbaa !23
  %i.hy = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 114
  %i.hz = load i16, ptr %i.hu, align 2, !tbaa !23
  %i.ia = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -14
  store i16 %i.hz, ptr %i.hx, align 2, !tbaa !23
  %i.ib = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 116
  %i.ic = load i16, ptr %i.hy, align 2, !tbaa !23
  %i.id = sub i16 0, %i.ic
  %i.ie = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -12
  store i16 %i.id, ptr %i.ia, align 2, !tbaa !23
  %i.if = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 118
  %i.ig = load i16, ptr %i.ib, align 2, !tbaa !23
  %i.ih = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -10
  store i16 %i.ig, ptr %i.ie, align 2, !tbaa !23
  %i.ii = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 120
  %i.ij = load i16, ptr %i.if, align 2, !tbaa !23
  %i.ik = sub i16 0, %i.ij
  %i.il = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -8
  store i16 %i.ik, ptr %i.ih, align 2, !tbaa !23
  %i.im = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 122
  %i.in = load i16, ptr %i.ii, align 2, !tbaa !23
  %i.io = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -6
  store i16 %i.in, ptr %i.il, align 2, !tbaa !23
  %i.ip = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 124
  %i.iq = load i16, ptr %i.im, align 2, !tbaa !23
  %i.ir = sub i16 0, %i.iq
  %i.is = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -4
  store i16 %i.ir, ptr %i.io, align 2, !tbaa !23
  %i.it = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 126
  %i.iu = load i16, ptr %i.ip, align 2, !tbaa !23
  %i.iv = getelementptr inbounds i8, ptr %.3113.us.us.us, i64 -2
  store i16 %i.iu, ptr %i.is, align 2, !tbaa !23
  %i.iw = load i16, ptr %i.it, align 2, !tbaa !23
  %i.ix = sub i16 0, %i.iw
  store i16 %i.ix, ptr %i.iv, align 2, !tbaa !23
  %i.iy = getelementptr inbounds nuw i8, ptr %.177112.us.us.us, i64 128
  %i.iz = add i32 %.187110.us.us.us, -1           ; 2 uses
  %i.ja = add i32 %.385111.us.us.us, -1           ; 2 uses
  %i.jb = icmp ne i32 %i.iz, 0
  %i.jc = icmp ne i32 %i.ja, 0                    ; 2 uses
  %i.jd = select i1 %i.jb, i1 %i.jc, i1 false     ; 3 uses
  %brmerge = select i1 %i.jd, i1 true, i1 %i.jc
  %.mux = select i1 %i.jd, ptr %i.iy, ptr %i.aj
  %.mux203 = select i1 %i.jd, i32 %i.iz, i32 %i.af
  br i1 %brmerge, label %.lr.ph.us.us.us, label %..loopexit95_crit_edge.us.us, !llvm.loop !243

..loopexit95_crit_edge.us.us:                     ; preds = %.lr.ph.us.us.us, %bb.c
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.je = load i32, ptr %i.l, align 4, !tbaa !75  ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = icmp slt i64 %indvars.iv.next157, %i.jf
  br i1 %i.jg, label %.lr.ph.split.us.split.us129, label %._crit_edge.split.us.us, !llvm.loop !244

.lr.ph.split.us.split.us.us:                      ; preds = %.lr.ph.us
  %i.jh = load i32, ptr %i.q, align 4, !tbaa !102
  %.not176 = icmp eq i32 %i.jh, 0
  br i1 %.not176, label %.lr.ph.split.us.split.us.split.us133, label %._crit_edge.split.us.us

.lr.ph.split.us.split.us.split.us133thread-pre-split: ; preds = %.loopexit95.us.us.us135
  %.pr = load i32, ptr %i.q, align 4, !tbaa !102
  br label %.lr.ph.split.us.split.us.split.us133

.lr.ph.split.us.split.us.split.us133:             ; preds = %.lr.ph.split.us.split.us.us, %.lr.ph.split.us.split.us.split.us133thread-pre-split
  %i.ji = phi i32 [ %.pr, %.lr.ph.split.us.split.us.split.us133thread-pre-split ], [ 0, %.lr.ph.split.us.split.us.us ]
  %i.jj = phi i32 [ %i.jm, %.lr.ph.split.us.split.us.split.us133thread-pre-split ], [ %i.z, %.lr.ph.split.us.split.us.us ]
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.lr.ph.split.us.split.us.split.us133thread-pre-split ], [ 0, %.lr.ph.split.us.split.us.us ] ; 2 uses
  %.not177 = icmp eq i32 %i.ji, 0
  br i1 %.not177, label %bb.d, label %.loopexit95.us.us.us135

bb.d:                                             ; preds = %.lr.ph.split.us.split.us.split.us133
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv159
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.jl, i8 0, i64 %i.s, i1 false)
  %.pre.a = load i32, ptr %i.l, align 4, !tbaa !75
  br label %.loopexit95.us.us.us135

.loopexit95.us.us.us135:                          ; preds = %.lr.ph.split.us.split.us.split.us133, %bb.d
  %i.jm = phi i32 [ %i.jj, %.lr.ph.split.us.split.us.split.us133 ], [ %.pre.a, %bb.d ] ; 3 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next160, %i.jn
  br i1 %i.jo, label %.lr.ph.split.us.split.us.split.us133thread-pre-split, label %._crit_edge.split.us.us, !llvm.loop !245

._crit_edge.split.us.us:                          ; preds = %..loopexit95_crit_edge.us.us, %.loopexit95.us.us.us135, %.lr.ph.split.us.split.us.us, %.lr.ph127.split.us
  %i.jp = phi i32 [ %i.z, %.lr.ph127.split.us ], [ %i.z, %.lr.ph.split.us.split.us.us ], [ %i.jm, %.loopexit95.us.us.us135 ], [ %i.je, %..loopexit95_crit_edge.us.us ] ; 2 uses
  %i.jq = add i32 %i.jp, %.088125.us              ; 2 uses
  %i.jr = icmp ult i32 %i.jq, %i.n
  br i1 %i.jr, label %.lr.ph127.split.us, label %._crit_edge128, !llvm.loop !246

.lr.ph127.split:                                  ; preds = %.lr.ph127
  br i1 %.not92115, label %.lr.ph127.split.split.us, label %.lr.ph127.split.split

.lr.ph127.split.split.us:                         ; preds = %.lr.ph127.split, %.lr.ph127.split.split.us
  %i.js = phi i32 [ %i.jy, %.lr.ph127.split.split.us ], [ %i.m, %.lr.ph127.split ]
  %.088125.us137 = phi i32 [ %i.jz, %.lr.ph127.split.split.us ], [ 0, %.lr.ph127.split ] ; 2 uses
  %i.jt = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !101
  %i.jw = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.jx = tail call ptr %i.jv(ptr noundef %0, ptr noundef %i.jw, i32 noundef %.088125.us137, i32 noundef %i.js, i32 noundef 1) #10 ; 0 uses
  %i.jy = load i32, ptr %i.l, align 4, !tbaa !75  ; 2 uses
  %i.jz = add i32 %i.jy, %.088125.us137           ; 2 uses
  %i.ka = icmp ult i32 %i.jz, %i.n
  br i1 %i.ka, label %.lr.ph127.split.split.us, label %._crit_edge128, !llvm.loop !246

.lr.ph127.split.split:                            ; preds = %.lr.ph127.split, %._crit_edge.split
  %.088125 = phi i32 [ %i.th, %._crit_edge.split ], [ 0, %.lr.ph127.split ] ; 2 uses
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !101
  %i.ke = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.kf = load i32, ptr %i.l, align 4, !tbaa !75
  %i.kg = tail call ptr %i.kd(ptr noundef %0, ptr noundef %i.ke, i32 noundef %.088125, i32 noundef %i.kf, i32 noundef 1) #10
  %i.kh = load i32, ptr %i.l, align 4, !tbaa !75  ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, 0
  br i1 %i.ki, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %.lr.ph127.split.split
  %wide.trip.count = zext nneg i32 %i.kh to i64
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.lr.ph, %..loopexit96_crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %..loopexit96_crit_edge ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !20
  %i.kl = getelementptr inbounds nuw [128 x i8], ptr %i.kk, i64 %i.p ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph
  %.175103 = phi ptr [ %i.kl, %.preheader.lr.ph ], [ %i.tb, %.preheader ] ; 65 uses
  %.076102 = phi ptr [ %i.kl, %.preheader.lr.ph ], [ %.mux205, %.preheader ] ; 64 uses
  %.183101 = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.td, %.preheader ]
  %.086100 = phi i32 [ %i.j, %.preheader.lr.ph ], [ %.mux206, %.preheader ]
  %i.km = getelementptr inbounds i8, ptr %.076102, i64 -128 ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %.076102, i64 -126
  %i.ko = load i16, ptr %i.km, align 2, !tbaa !23
  %i.kp = getelementptr inbounds nuw i8, ptr %.175103, i64 2
  store i16 %i.ko, ptr %.175103, align 2, !tbaa !23
  %i.kq = getelementptr inbounds i8, ptr %.076102, i64 -124
  %i.kr = load i16, ptr %i.kn, align 2, !tbaa !23
  %i.ks = sub i16 0, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %.175103, i64 4
  store i16 %i.ks, ptr %i.kp, align 2, !tbaa !23
  %i.ku = getelementptr inbounds i8, ptr %.076102, i64 -122
  %i.kv = load i16, ptr %i.kq, align 2, !tbaa !23
  %i.kw = getelementptr inbounds nuw i8, ptr %.175103, i64 6
  store i16 %i.kv, ptr %i.kt, align 2, !tbaa !23
  %i.kx = getelementptr inbounds i8, ptr %.076102, i64 -120
  %i.ky = load i16, ptr %i.ku, align 2, !tbaa !23
  %i.kz = sub i16 0, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %.175103, i64 8
  store i16 %i.kz, ptr %i.kw, align 2, !tbaa !23
  %i.lb = getelementptr inbounds i8, ptr %.076102, i64 -118
  %i.lc = load i16, ptr %i.kx, align 2, !tbaa !23
  %i.ld = getelementptr inbounds nuw i8, ptr %.175103, i64 10
  store i16 %i.lc, ptr %i.la, align 2, !tbaa !23
  %i.le = getelementptr inbounds i8, ptr %.076102, i64 -116
  %i.lf = load i16, ptr %i.lb, align 2, !tbaa !23
  %i.lg = sub i16 0, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %.175103, i64 12
  store i16 %i.lg, ptr %i.ld, align 2, !tbaa !23
  %i.li = getelementptr inbounds i8, ptr %.076102, i64 -114
  %i.lj = load i16, ptr %i.le, align 2, !tbaa !23
  %i.lk = getelementptr inbounds nuw i8, ptr %.175103, i64 14
  store i16 %i.lj, ptr %i.lh, align 2, !tbaa !23
  %i.ll = getelementptr inbounds i8, ptr %.076102, i64 -112
  %i.lm = load i16, ptr %i.li, align 2, !tbaa !23
  %i.ln = sub i16 0, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %.175103, i64 16
  store i16 %i.ln, ptr %i.lk, align 2, !tbaa !23
  %i.lp = getelementptr inbounds i8, ptr %.076102, i64 -110
  %i.lq = load i16, ptr %i.ll, align 2, !tbaa !23
  %i.lr = getelementptr inbounds nuw i8, ptr %.175103, i64 18
  store i16 %i.lq, ptr %i.lo, align 2, !tbaa !23
  %i.ls = getelementptr inbounds i8, ptr %.076102, i64 -108
  %i.lt = load i16, ptr %i.lp, align 2, !tbaa !23
  %i.lu = sub i16 0, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %.175103, i64 20
  store i16 %i.lu, ptr %i.lr, align 2, !tbaa !23
  %i.lw = getelementptr inbounds i8, ptr %.076102, i64 -106
  %i.lx = load i16, ptr %i.ls, align 2, !tbaa !23
  %i.ly = getelementptr inbounds nuw i8, ptr %.175103, i64 22
  store i16 %i.lx, ptr %i.lv, align 2, !tbaa !23
  %i.lz = getelementptr inbounds i8, ptr %.076102, i64 -104
  %i.ma = load i16, ptr %i.lw, align 2, !tbaa !23
  %i.mb = sub i16 0, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %.175103, i64 24
  store i16 %i.mb, ptr %i.ly, align 2, !tbaa !23
  %i.md = getelementptr inbounds i8, ptr %.076102, i64 -102
  %i.me = load i16, ptr %i.lz, align 2, !tbaa !23
  %i.mf = getelementptr inbounds nuw i8, ptr %.175103, i64 26
  store i16 %i.me, ptr %i.mc, align 2, !tbaa !23
  %i.mg = getelementptr inbounds i8, ptr %.076102, i64 -100
  %i.mh = load i16, ptr %i.md, align 2, !tbaa !23
  %i.mi = sub i16 0, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %.175103, i64 28
  store i16 %i.mi, ptr %i.mf, align 2, !tbaa !23
  %i.mk = getelementptr inbounds i8, ptr %.076102, i64 -98
  %i.ml = load i16, ptr %i.mg, align 2, !tbaa !23
  %i.mm = getelementptr inbounds nuw i8, ptr %.175103, i64 30
  store i16 %i.ml, ptr %i.mj, align 2, !tbaa !23
  %i.mn = getelementptr inbounds i8, ptr %.076102, i64 -96
  %i.mo = load i16, ptr %i.mk, align 2, !tbaa !23
  %i.mp = sub i16 0, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %.175103, i64 32
  store i16 %i.mp, ptr %i.mm, align 2, !tbaa !23
  %i.mr = getelementptr inbounds i8, ptr %.076102, i64 -94
  %i.ms = load i16, ptr %i.mn, align 2, !tbaa !23
  %i.mt = getelementptr inbounds nuw i8, ptr %.175103, i64 34
  store i16 %i.ms, ptr %i.mq, align 2, !tbaa !23
  %i.mu = getelementptr inbounds i8, ptr %.076102, i64 -92
  %i.mv = load i16, ptr %i.mr, align 2, !tbaa !23
  %i.mw = sub i16 0, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %.175103, i64 36
  store i16 %i.mw, ptr %i.mt, align 2, !tbaa !23
  %i.my = getelementptr inbounds i8, ptr %.076102, i64 -90
  %i.mz = load i16, ptr %i.mu, align 2, !tbaa !23
  %i.na = getelementptr inbounds nuw i8, ptr %.175103, i64 38
  store i16 %i.mz, ptr %i.mx, align 2, !tbaa !23
  %i.nb = getelementptr inbounds i8, ptr %.076102, i64 -88
  %i.nc = load i16, ptr %i.my, align 2, !tbaa !23
  %i.nd = sub i16 0, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %.175103, i64 40
  store i16 %i.nd, ptr %i.na, align 2, !tbaa !23
  %i.nf = getelementptr inbounds i8, ptr %.076102, i64 -86
  %i.ng = load i16, ptr %i.nb, align 2, !tbaa !23
  %i.nh = getelementptr inbounds nuw i8, ptr %.175103, i64 42
  store i16 %i.ng, ptr %i.ne, align 2, !tbaa !23
  %i.ni = getelementptr inbounds i8, ptr %.076102, i64 -84
  %i.nj = load i16, ptr %i.nf, align 2, !tbaa !23
  %i.nk = sub i16 0, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %.175103, i64 44
  store i16 %i.nk, ptr %i.nh, align 2, !tbaa !23
  %i.nm = getelementptr inbounds i8, ptr %.076102, i64 -82
  %i.nn = load i16, ptr %i.ni, align 2, !tbaa !23
  %i.no = getelementptr inbounds nuw i8, ptr %.175103, i64 46
  store i16 %i.nn, ptr %i.nl, align 2, !tbaa !23
  %i.np = getelementptr inbounds i8, ptr %.076102, i64 -80
  %i.nq = load i16, ptr %i.nm, align 2, !tbaa !23
  %i.nr = sub i16 0, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %.175103, i64 48
  store i16 %i.nr, ptr %i.no, align 2, !tbaa !23
  %i.nt = getelementptr inbounds i8, ptr %.076102, i64 -78
  %i.nu = load i16, ptr %i.np, align 2, !tbaa !23
  %i.nv = getelementptr inbounds nuw i8, ptr %.175103, i64 50
  store i16 %i.nu, ptr %i.ns, align 2, !tbaa !23
  %i.nw = getelementptr inbounds i8, ptr %.076102, i64 -76
  %i.nx = load i16, ptr %i.nt, align 2, !tbaa !23
  %i.ny = sub i16 0, %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %.175103, i64 52
  store i16 %i.ny, ptr %i.nv, align 2, !tbaa !23
  %i.oa = getelementptr inbounds i8, ptr %.076102, i64 -74
  %i.ob = load i16, ptr %i.nw, align 2, !tbaa !23
  %i.oc = getelementptr inbounds nuw i8, ptr %.175103, i64 54
  store i16 %i.ob, ptr %i.nz, align 2, !tbaa !23
  %i.od = getelementptr inbounds i8, ptr %.076102, i64 -72
  %i.oe = load i16, ptr %i.oa, align 2, !tbaa !23
  %i.of = sub i16 0, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %.175103, i64 56
  store i16 %i.of, ptr %i.oc, align 2, !tbaa !23
  %i.oh = getelementptr inbounds i8, ptr %.076102, i64 -70
  %i.oi = load i16, ptr %i.od, align 2, !tbaa !23
  %i.oj = getelementptr inbounds nuw i8, ptr %.175103, i64 58
  store i16 %i.oi, ptr %i.og, align 2, !tbaa !23
  %i.ok = getelementptr inbounds i8, ptr %.076102, i64 -68
  %i.ol = load i16, ptr %i.oh, align 2, !tbaa !23
  %i.om = sub i16 0, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %.175103, i64 60
  store i16 %i.om, ptr %i.oj, align 2, !tbaa !23
  %i.oo = getelementptr inbounds i8, ptr %.076102, i64 -66
  %i.op = load i16, ptr %i.ok, align 2, !tbaa !23
  %i.oq = getelementptr inbounds nuw i8, ptr %.175103, i64 62
  store i16 %i.op, ptr %i.on, align 2, !tbaa !23
  %i.or = getelementptr inbounds i8, ptr %.076102, i64 -64
  %i.os = load i16, ptr %i.oo, align 2, !tbaa !23
  %i.ot = sub i16 0, %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %.175103, i64 64
  store i16 %i.ot, ptr %i.oq, align 2, !tbaa !23
  %i.ov = getelementptr inbounds i8, ptr %.076102, i64 -62
  %i.ow = load i16, ptr %i.or, align 2, !tbaa !23
  %i.ox = getelementptr inbounds nuw i8, ptr %.175103, i64 66
  store i16 %i.ow, ptr %i.ou, align 2, !tbaa !23
  %i.oy = getelementptr inbounds i8, ptr %.076102, i64 -60
  %i.oz = load i16, ptr %i.ov, align 2, !tbaa !23
  %i.pa = sub i16 0, %i.oz
end_hunk_0
