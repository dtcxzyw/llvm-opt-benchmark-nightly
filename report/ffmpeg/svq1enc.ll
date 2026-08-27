Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/svq1enc?download=true
inline.NumInlined: 34
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 47
begin_hunk_0_@svq1_encode_frame:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 1272
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 4420
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 32400
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 6064 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 32408
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 6088
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 6080
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 1088
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 32416
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 1072
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 32440
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 5904 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 9856 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 4740
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 3780 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 3112 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 3108 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 3120 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 3124 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 3128 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 3132 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 10680 ; 12 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 10840 ; 14 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 10844 ; 12 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 10856 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 1344 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 10848 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 1384 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 9920
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 32464 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 10688 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 10704 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 10696 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 10684 ; 10 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 10712 ; 12 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 10720 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 10736 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 10728 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 10716 ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 10744 ; 12 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 10752 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 672 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 10768 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 10760 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 10748 ; 10 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 10776 ; 12 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 10784 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 896 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 10800 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 10792 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 10780 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 10808 ; 12 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 10816 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 1120 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 10832 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 10824 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 10812 ; 10 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 10864 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 1568 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 1792 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 2016 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 2240 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 2464 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 2688
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.fo = insertelement <2 x ptr> poison, ptr %i.do, i64 0
  %i.fp = shufflevector <2 x ptr> %i.fo, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.fq = insertelement <2 x ptr> poison, ptr %i.fd, i64 0
  %i.fr = shufflevector <2 x ptr> %i.fq, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.fs = insertelement <2 x ptr> poison, ptr %i.fe, i64 0
  %i.ft = shufflevector <2 x ptr> %i.fs, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.fu = insertelement <2 x ptr> poison, ptr %i.ff, i64 0
  %i.fv = shufflevector <2 x ptr> %i.fu, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.fw = insertelement <2 x ptr> poison, ptr %i.fg, i64 0
  %i.fx = shufflevector <2 x ptr> %i.fw, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.fy = insertelement <2 x ptr> poison, ptr %i.fh, i64 0
  %i.fz = shufflevector <2 x ptr> %i.fy, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ga = insertelement <2 x ptr> poison, ptr %i.a, i64 0
  %i.gb = shufflevector <2 x ptr> %i.ga, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gc = insertelement <2 x ptr> poison, ptr %i.dv, i64 0
  %i.gd = shufflevector <2 x ptr> %i.gc, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ge = insertelement <2 x ptr> poison, ptr %i.eb, i64 0
  %i.gf = shufflevector <2 x ptr> %i.ge, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gg = insertelement <2 x ptr> poison, ptr %i.eh, i64 0
  %i.gh = shufflevector <2 x ptr> %i.gg, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gi = insertelement <2 x ptr> poison, ptr %i.en, i64 0
  %i.gj = shufflevector <2 x ptr> %i.gi, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.gk = insertelement <2 x ptr> poison, ptr %i.et, i64 0
  %i.gl = shufflevector <2 x ptr> %i.gk, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %svq1_write_header.exit, %.loopexit
  %indvars.iv.a = phi i64 [ 0, %svq1_write_header.exit ], [ %indvars.iv.next.a, %.loopexit ] ; 9 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.a
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !104 ; 64 uses
  %i.go = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.a
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !104 ; 2 uses
  %i.gr = load ptr, ptr %i.r, align 16, !tbaa !32 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.a
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !104
  %i.gu = load i32, ptr %i.bw, align 8, !tbaa !68
  %.not58 = icmp eq i64 %indvars.iv.a, 0
  %i.gv = select i1 %.not58, i32 1, i32 4         ; 2 uses
  %i.gw = sdiv i32 %i.gu, %i.gv                   ; 6 uses
  %i.gx = load i32, ptr %i.bx, align 4, !tbaa !69
  %i.gy = sdiv i32 %i.gx, %i.gv                   ; 6 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.a
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !66 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.a
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !66 ; 8 uses
  %i.he = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 17 uses
  %i.hf = load i32, ptr %i.ad, align 4, !tbaa !94 ; 2 uses
  %i.hg = shl i32 %i.hd, 5
  %i.hh = sext i32 %i.hg to i64                   ; 33 uses
  %i.hi = getelementptr inbounds i8, ptr %i.he, i64 %i.hh ; 69 uses
  %i.hj = mul nsw i32 %i.hf, %i.hf
  %i.hk = lshr i32 %i.hj, 14                      ; 5 uses
  %i.hl = add i32 %i.gw, 15                       ; 3 uses
  %i.hm = sdiv i32 %i.hl, 16                      ; 7 uses
  %i.hn = add nsw i32 %i.gy, 15
  %i.ho = sdiv i32 %i.hn, 16                      ; 4 uses
  %i.hp = load i32, ptr %i.ae, align 16, !tbaa !88
  %i.hq = icmp eq i32 %i.hp, 2
  br i1 %i.hq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  store ptr %i.gq, ptr %i.ca, align 16, !tbaa !104
  %i.hr = sext i32 %i.hd to i64                   ; 25 uses
  store i64 %i.hr, ptr %i.cb, align 8, !tbaa !105
  %i.hs = load ptr, ptr %i.cc, align 16, !tbaa !82
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  store i32 %i.hd, ptr %i.ht, align 8, !tbaa !66
  store i64 %i.hr, ptr %i.cd, align 8, !tbaa !105
  store i64 %i.hr, ptr %i.ce, align 16, !tbaa !106
  store i32 %i.gw, ptr %i.cf, align 16, !tbaa !107
  store i32 %i.gy, ptr %i.cg, align 4, !tbaa !108
  store i32 %i.hm, ptr %i.ch, align 4, !tbaa !109
  store i32 %i.ho, ptr %i.ci, align 8, !tbaa !110
  %i.hu = add nsw i32 %i.hm, 1                    ; 2 uses
  store i32 %i.hu, ptr %i.cj, align 4, !tbaa !111
  %i.hv = shl nsw i32 %i.hm, 1
  %i.hw = or disjoint i32 %i.hv, 1
  store i32 %i.hw, ptr %i.ck, align 16, !tbaa !112
  store i32 1, ptr %i.cl, align 8, !tbaa !113
  %i.hx = load i32, ptr %i.ae, align 16, !tbaa !88
  store i32 %i.hx, ptr %i.cm, align 16, !tbaa !114
  store i32 0, ptr %i.cn, align 16, !tbaa !115
  %i.hy = load i32, ptr %i.ad, align 4, !tbaa !94 ; 4 uses
  store i32 %i.hy, ptr %i.co, align 16, !tbaa !116
  %i.hz = mul i32 %i.hy, 139
  %i.ia = add i32 %i.hz, 8192
  %i.ib = lshr i32 %i.ia, 14
  store i32 %i.ib, ptr %i.cp, align 8, !tbaa !117
  %i.ic = mul i32 %i.hy, %i.hy
  %i.id = add i32 %i.ic, 64
  %i.ie = lshr i32 %i.id, 7
  store i32 %i.ie, ptr %i.cq, align 4, !tbaa !118
  %i.if = load ptr, ptr %i.ct, align 8, !tbaa !81 ; 3 uses
  %i.ig = load <2 x ptr>, ptr %i.cr, align 16, !tbaa !119
  store ptr %i.if, ptr %i.cu, align 8, !tbaa !120
  store <2 x ptr> %i.ig, ptr %i.cs, align 16, !tbaa !74
  store ptr %i.if, ptr %i.cv, align 16, !tbaa !121
  store ptr %i.if, ptr %i.cw, align 16, !tbaa !122
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.a
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !74
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %i.ij, ptr %i.cy, align 16, !tbaa !74
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.a
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !74
  %i.im = sext i32 %i.hu to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store ptr %i.io, ptr %i.da, align 16, !tbaa !123
  call void @ff_me_init_pic(ptr noundef nonnull %i.f) #8
  %i.ip = load ptr, ptr %i.db, align 16, !tbaa !70
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 260
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !124
  store i32 %i.ir, ptr %i.dc, align 4, !tbaa !125
  store i32 1, ptr %i.dd, align 4, !tbaa !126
  %i.is = icmp sgt i32 %i.gy, 0
  br i1 %i.is, label %.lr.ph369.i, label %._crit_edge370.i

.lr.ph369.i:                                      ; preds = %bb.l
  %i.it = sext i32 %i.gw to i64                   ; 82 uses
  %i.iu = shl nsw i32 %i.hm, 4                    ; 2 uses
  %i.iv = icmp slt i32 %i.gw, %i.iu
  %5 = shl nuw nsw i32 %i.ho, 4
  %i.iw = sext i32 %i.iu to i64                   ; 19 uses
  %i.ix = icmp sgt i32 %i.hl, 15
  %i.iy = sext i32 %i.ha to i64                   ; 32 uses
  %i.iz = zext nneg i32 %i.gy to i64              ; 31 uses
  %6 = zext nneg i32 %5 to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ho, i32 1)
  %wide.trip.count418.i = zext nneg i32 %smax.i to i64
  %i.ja = getelementptr i8, ptr %i.hi, i64 %i.hr  ; 11 uses
  %i.jb = shl nsw i64 %i.hr, 1
  %i.jc = getelementptr inbounds i8, ptr %i.hi, i64 %i.jb
  %i.jd = mul nsw i64 %i.hr, 3                    ; 2 uses
  %i.je = getelementptr i8, ptr %i.hi, i64 %i.jd  ; 11 uses
  %i.jf = shl nsw i64 %i.hr, 2
  %i.jg = getelementptr inbounds i8, ptr %i.hi, i64 %i.jf
  %i.jh = mul nsw i64 %i.hr, 5                    ; 2 uses
  %i.ji = getelementptr i8, ptr %i.hi, i64 %i.jh  ; 11 uses
  %i.jj = mul nsw i64 %i.hr, 6                    ; 2 uses
  %i.jk = getelementptr i8, ptr %i.hi, i64 %i.jj  ; 11 uses
  %i.jl = mul nsw i64 %i.hr, 7                    ; 2 uses
  %i.jm = getelementptr i8, ptr %i.hi, i64 %i.jl  ; 11 uses
  %i.jn = shl nsw i64 %i.hr, 3
  %i.jo = getelementptr inbounds i8, ptr %i.hi, i64 %i.jn
  %i.jp = mul nsw i64 %i.hr, 9                    ; 2 uses
  %i.jq = getelementptr i8, ptr %i.hi, i64 %i.jp  ; 11 uses
  %i.jr = mul nsw i64 %i.hr, 10                   ; 2 uses
  %i.js = getelementptr i8, ptr %i.hi, i64 %i.jr  ; 11 uses
  %i.jt = mul nsw i64 %i.hr, 11                   ; 2 uses
  %i.ju = getelementptr i8, ptr %i.hi, i64 %i.jt  ; 11 uses
  %i.jv = mul nsw i64 %i.hr, 12                   ; 2 uses
  %i.jw = getelementptr i8, ptr %i.hi, i64 %i.jv  ; 11 uses
  %i.jx = mul nsw i64 %i.hr, 13                   ; 2 uses
  %i.jy = getelementptr i8, ptr %i.hi, i64 %i.jx  ; 11 uses
  %i.jz = mul nsw i64 %i.hr, 14                   ; 2 uses
  %i.ka = getelementptr i8, ptr %i.hi, i64 %i.jz  ; 11 uses
  %i.kb = mul nsw i64 %i.hr, 15                   ; 2 uses
  %i.kc = getelementptr i8, ptr %i.hi, i64 %i.kb  ; 11 uses
  %i.kd = shl nsw i64 %i.hr, 1                    ; 2 uses
  %i.ke = getelementptr i8, ptr %i.hi, i64 %i.kd  ; 10 uses
  %i.kf = shl nsw i64 %i.hr, 2                    ; 2 uses
  %i.kg = getelementptr i8, ptr %i.hi, i64 %i.kf  ; 10 uses
  %i.kh = shl nsw i64 %i.hr, 3                    ; 2 uses
  %i.ki = getelementptr i8, ptr %i.hi, i64 %i.kh  ; 10 uses
  %scevgep = getelementptr i8, ptr %i.he, i64 -1  ; 3 uses
  %i.kj = getelementptr i8, ptr %scevgep, i64 %i.it
  %scevgep337 = getelementptr i8, ptr %i.kj, i64 %i.hh
  %i.kk = getelementptr i8, ptr %scevgep, i64 %i.hr
  %i.kl = getelementptr i8, ptr %i.kk, i64 %i.it
  %scevgep338 = getelementptr i8, ptr %i.kl, i64 %i.hh
  %i.km = getelementptr i8, ptr %scevgep, i64 %i.kd
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.it
  %scevgep341 = getelementptr i8, ptr %i.kn, i64 %i.hh
  %scevgep344 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.ko = getelementptr i8, ptr %scevgep344, i64 %i.jd
  %i.kp = getelementptr i8, ptr %i.ko, i64 %i.it
  %scevgep345 = getelementptr i8, ptr %i.kp, i64 %i.hh
  %i.kq = getelementptr i8, ptr %scevgep344, i64 %i.kf
  %i.kr = getelementptr i8, ptr %i.kq, i64 %i.it
  %scevgep348 = getelementptr i8, ptr %i.kr, i64 %i.hh
  %scevgep351 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.ks = getelementptr i8, ptr %scevgep351, i64 %i.jh
  %i.kt = getelementptr i8, ptr %i.ks, i64 %i.it
  %scevgep352 = getelementptr i8, ptr %i.kt, i64 %i.hh
  %i.ku = getelementptr i8, ptr %scevgep351, i64 %i.jj
  %i.kv = getelementptr i8, ptr %i.ku, i64 %i.it
  %scevgep355 = getelementptr i8, ptr %i.kv, i64 %i.hh
  %scevgep358 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.kw = getelementptr i8, ptr %scevgep358, i64 %i.jl
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.it
  %scevgep359 = getelementptr i8, ptr %i.kx, i64 %i.hh
  %i.ky = getelementptr i8, ptr %scevgep358, i64 %i.kh
  %i.kz = getelementptr i8, ptr %i.ky, i64 %i.it
  %scevgep362 = getelementptr i8, ptr %i.kz, i64 %i.hh
  %scevgep365 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.la = getelementptr i8, ptr %scevgep365, i64 %i.jp
  %i.lb = getelementptr i8, ptr %i.la, i64 %i.it
  %scevgep366 = getelementptr i8, ptr %i.lb, i64 %i.hh
  %i.lc = getelementptr i8, ptr %scevgep365, i64 %i.jr
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.it
  %scevgep369 = getelementptr i8, ptr %i.ld, i64 %i.hh
  %scevgep372 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.le = getelementptr i8, ptr %scevgep372, i64 %i.jt
  %i.lf = getelementptr i8, ptr %i.le, i64 %i.it
  %scevgep373 = getelementptr i8, ptr %i.lf, i64 %i.hh
  %i.lg = getelementptr i8, ptr %scevgep372, i64 %i.jv
  %i.lh = getelementptr i8, ptr %i.lg, i64 %i.it
  %scevgep376 = getelementptr i8, ptr %i.lh, i64 %i.hh
  %scevgep379 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.li = getelementptr i8, ptr %scevgep379, i64 %i.jx
  %i.lj = getelementptr i8, ptr %i.li, i64 %i.it
  %scevgep380 = getelementptr i8, ptr %i.lj, i64 %i.hh
  %i.lk = getelementptr i8, ptr %scevgep379, i64 %i.jz
  %i.ll = getelementptr i8, ptr %i.lk, i64 %i.it
  %scevgep383 = getelementptr i8, ptr %i.ll, i64 %i.hh
  %scevgep386 = getelementptr i8, ptr %i.he, i64 -1
  %i.lm = getelementptr i8, ptr %scevgep386, i64 %i.kb
  %i.ln = getelementptr i8, ptr %i.lm, i64 %i.it
  %scevgep387 = getelementptr i8, ptr %i.ln, i64 %i.hh
  %i.lo = sub nsw i64 %i.iw, %i.it                ; 16 uses
  %i.lp = xor i64 %i.it, -1
  %i.lq = add nsw i64 %i.lp, %i.iw                ; 16 uses
  %xtraiter = and i64 %i.lo, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.lr = icmp ult i64 %i.lq, 7
  %xtraiter490 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  %i.ls = icmp ult i64 %i.lq, 7
  %xtraiter495 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  %i.lt = icmp ult i64 %i.lq, 7
  %xtraiter500 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  %i.lu = icmp ult i64 %i.lq, 7
  %xtraiter505 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod506.not = icmp eq i64 %xtraiter505, 0
  %i.lv = icmp ult i64 %i.lq, 7
  %xtraiter510 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod511.not = icmp eq i64 %xtraiter510, 0
  %i.lw = icmp ult i64 %i.lq, 7
  %xtraiter515 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod516.not = icmp eq i64 %xtraiter515, 0
  %i.lx = icmp ult i64 %i.lq, 7
  %xtraiter520 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod521.not = icmp eq i64 %xtraiter520, 0
  %i.ly = icmp ult i64 %i.lq, 7
  %xtraiter525 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  %i.lz = icmp ult i64 %i.lq, 7
  %xtraiter530 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  %i.ma = icmp ult i64 %i.lq, 7
  %xtraiter535 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod536.not = icmp eq i64 %xtraiter535, 0
  %i.mb = icmp ult i64 %i.lq, 7
  %xtraiter540 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod541.not = icmp eq i64 %xtraiter540, 0
  %i.mc = icmp ult i64 %i.lq, 7
  %xtraiter545 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  %i.md = icmp ult i64 %i.lq, 7
  %xtraiter550 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod551.not = icmp eq i64 %xtraiter550, 0
  %i.me = icmp ult i64 %i.lq, 7
  %xtraiter555 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  %i.mf = icmp ult i64 %i.lq, 7
  %xtraiter560 = and i64 %i.lo, 7                 ; 2 uses
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  %i.mg = icmp ult i64 %i.lq, 7
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph369.i
  %indvars.iv414.i = phi i64 [ 0, %.lr.ph369.i ], [ %indvars.iv.next415.i, %._crit_edge.i ] ; 3 uses
  %i.mh = shl nuw nsw i64 %indvars.iv414.i, 4     ; 35 uses
  %i.mi = mul i64 %i.mh, %i.hr
  %i.mj = sub i64 0, %i.mi
  %i.mk = getelementptr inbounds i8, ptr %i.hi, i64 %i.mj
  %i.ml = load ptr, ptr %i.cc, align 16, !tbaa !82
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !104
  %i.mm = trunc nuw nsw i64 %indvars.iv414.i to i32 ; 2 uses
  store i32 %i.mm, ptr %i.de, align 8, !tbaa !127
  %i.mn = icmp samesign ult i64 %i.mh, %i.iz      ; 2 uses
  br i1 %i.iv, label %.split.us.i.preheader, label %.split.preheader.i

.split.us.i.preheader:                            ; preds = %bb.m
  br i1 %i.mn, label %.lr.ph.us.i, label %.lr.ph.i.preheader

.split.preheader.i:                               ; preds = %bb.m
  br i1 %i.mn, label %.split.1.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split.us.i.preheader, %._crit_edge.us.i, %._crit_edge.us.i.1, %._crit_edge.us.i.2, %._crit_edge.us.i.3, %._crit_edge.us.i.4, %._crit_edge.us.i.5, %._crit_edge.us.i.6, %._crit_edge.us.i.7, %._crit_edge.us.i.8, %._crit_edge.us.i.9, %._crit_edge.us.i.10, %._crit_edge.us.i.11, %._crit_edge.us.i.12, %._crit_edge.us.i.13, %._crit_edge.us.i.14, %.split.15.i, %.split.14.i, %.split.13.i, %.split.12.i, %.split.11.i, %.split.10.i, %.split.9.i, %.split.8.i, %.split.7.i, %.split.6.i, %.split.5.i, %.split.4.i, %.split.3.i, %.split.2.i, %.split.1.i, %.split.preheader.i
  %indvars.iv408.i.ph = phi i64 [ 15, %._crit_edge.us.i.14 ], [ 14, %._crit_edge.us.i.13 ], [ 13, %._crit_edge.us.i.12 ], [ 12, %._crit_edge.us.i.11 ], [ 11, %._crit_edge.us.i.10 ], [ 10, %._crit_edge.us.i.9 ], [ 9, %._crit_edge.us.i.8 ], [ 8, %._crit_edge.us.i.7 ], [ 7, %._crit_edge.us.i.6 ], [ 6, %._crit_edge.us.i.5 ], [ 5, %._crit_edge.us.i.4 ], [ 4, %._crit_edge.us.i.3 ], [ 3, %._crit_edge.us.i.2 ], [ 2, %._crit_edge.us.i.1 ], [ 1, %._crit_edge.us.i ], [ 0, %.split.us.i.preheader ], [ 1, %.split.1.i ], [ 15, %.split.15.i ], [ 2, %.split.2.i ], [ 10, %.split.10.i ], [ 3, %.split.3.i ], [ 14, %.split.14.i ], [ 4, %.split.4.i ], [ 9, %.split.9.i ], [ 5, %.split.5.i ], [ 13, %.split.13.i ], [ 6, %.split.6.i ], [ 11, %.split.11.i ], [ 7, %.split.7.i ], [ 12, %.split.12.i ], [ 8, %.split.8.i ], [ 0, %.split.preheader.i ]
  br label %.lr.ph.i.a

.lr.ph.us.i:                                      ; preds = %.split.us.i.preheader
  %i.mo = mul nsw i64 %i.mh, %i.iy
  %i.mp = getelementptr inbounds i8, ptr %i.gn, i64 %i.mo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hi, ptr readonly align 1 %i.mp, i64 %i.it, i1 false)
  %load_initial = load i8, ptr %scevgep337, align 1 ; 9 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.us.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.it, %.lr.ph.us.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.us.i ]
  %gep.i.prol = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i.prol
  store i8 %load_initial, ptr %gep.i.prol, align 1, !tbaa !102
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !128

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.us.i
  %indvars.iv.i.unr = phi i64 [ %i.it, %.lr.ph.us.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  br i1 %i.lr, label %._crit_edge.us.i, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7486, %.lr.ph.us.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 9 uses
  %gep.i = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i
  store i8 %load_initial, ptr %gep.i, align 1, !tbaa !102
  %i.mq = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i
  %gep.i.1461 = getelementptr i8, ptr %i.mq, i64 1
  store i8 %load_initial, ptr %gep.i.1461, align 1, !tbaa !102
  %i.mr = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i
  %gep.i.2465 = getelementptr i8, ptr %i.mr, i64 2
  store i8 %load_initial, ptr %gep.i.2465, align 1, !tbaa !102
  %i.ms = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i
  %gep.i.3469 = getelementptr i8, ptr %i.ms, i64 3
  store i8 %load_initial, ptr %gep.i.3469, align 1, !tbaa !102
  %i.mt = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i
  %gep.i.4473 = getelementptr i8, ptr %i.mt, i64 4
  store i8 %load_initial, ptr %gep.i.4473, align 1, !tbaa !102
  %i.mu = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i
  %gep.i.5477 = getelementptr i8, ptr %i.mu, i64 5
  store i8 %load_initial, ptr %gep.i.5477, align 1, !tbaa !102
  %i.mv = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i
  %gep.i.6481 = getelementptr i8, ptr %i.mv, i64 6
  store i8 %load_initial, ptr %gep.i.6481, align 1, !tbaa !102
  %i.mw = getelementptr i8, ptr %i.hi, i64 %indvars.iv.i
  %gep.i.7485 = getelementptr i8, ptr %i.mw, i64 7
  store i8 %load_initial, ptr %gep.i.7485, align 1, !tbaa !102
  %indvars.iv.next.i.7486 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7487 = icmp eq i64 %indvars.iv.next.i.7486, %i.iw
  br i1 %exitcond.not.i.7487, label %._crit_edge.us.i, label %.lr.ph.us.i.new, !llvm.loop !130

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i.new, %.prol.loopexit
  %i.mx = or disjoint i64 %i.mh, 1                ; 2 uses
  %i.my = icmp samesign ult i64 %i.mx, %i.iz
  br i1 %i.my, label %.lr.ph.us.i.1, label %.lr.ph.i.preheader

.lr.ph.us.i.1:                                    ; preds = %._crit_edge.us.i
  %i.mz = mul nsw i64 %i.mx, %i.iy
  %i.na = getelementptr inbounds i8, ptr %i.gn, i64 %i.mz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr readonly align 1 %i.na, i64 %i.it, i1 false)
  %load_initial339 = load i8, ptr %scevgep338, align 1 ; 9 uses
  br i1 %lcmp.mod491.not, label %.prol.loopexit489, label %.prol.preheader488

.prol.preheader488:                               ; preds = %.lr.ph.us.i.1, %.prol.preheader488
  %indvars.iv.i.1.prol = phi i64 [ %indvars.iv.next.i.1.prol, %.prol.preheader488 ], [ %i.it, %.lr.ph.us.i.1 ] ; 2 uses
  %prol.iter492 = phi i64 [ %prol.iter492.next, %.prol.preheader488 ], [ 0, %.lr.ph.us.i.1 ]
  %gep.i.1.prol = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1.prol
  store i8 %load_initial339, ptr %gep.i.1.prol, align 1, !tbaa !102
  %indvars.iv.next.i.1.prol = add nsw i64 %indvars.iv.i.1.prol, 1 ; 2 uses
  %prol.iter492.next = add i64 %prol.iter492, 1   ; 2 uses
  %prol.iter492.cmp.not = icmp eq i64 %prol.iter492.next, %xtraiter490
  br i1 %prol.iter492.cmp.not, label %.prol.loopexit489, label %.prol.preheader488, !llvm.loop !131

.prol.loopexit489:                                ; preds = %.prol.preheader488, %.lr.ph.us.i.1
  %indvars.iv.i.1.unr = phi i64 [ %i.it, %.lr.ph.us.i.1 ], [ %indvars.iv.next.i.1.prol, %.prol.preheader488 ]
  br i1 %i.ls, label %._crit_edge.us.i.1, label %.lr.ph.us.i.1.new

.lr.ph.us.i.1.new:                                ; preds = %.prol.loopexit489, %.lr.ph.us.i.1.new
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1.7, %.lr.ph.us.i.1.new ], [ %indvars.iv.i.1.unr, %.prol.loopexit489 ] ; 9 uses
  %gep.i.1 = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1
  store i8 %load_initial339, ptr %gep.i.1, align 1, !tbaa !102
  %i.nb = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1
  %gep.i.1.1 = getelementptr i8, ptr %i.nb, i64 1
  store i8 %load_initial339, ptr %gep.i.1.1, align 1, !tbaa !102
  %i.nc = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1
  %gep.i.1.2 = getelementptr i8, ptr %i.nc, i64 2
  store i8 %load_initial339, ptr %gep.i.1.2, align 1, !tbaa !102
  %i.nd = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1
  %gep.i.1.3 = getelementptr i8, ptr %i.nd, i64 3
  store i8 %load_initial339, ptr %gep.i.1.3, align 1, !tbaa !102
  %i.ne = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1
  %gep.i.1.4 = getelementptr i8, ptr %i.ne, i64 4
  store i8 %load_initial339, ptr %gep.i.1.4, align 1, !tbaa !102
  %i.nf = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1
  %gep.i.1.5 = getelementptr i8, ptr %i.nf, i64 5
  store i8 %load_initial339, ptr %gep.i.1.5, align 1, !tbaa !102
  %i.ng = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1
  %gep.i.1.6 = getelementptr i8, ptr %i.ng, i64 6
  store i8 %load_initial339, ptr %gep.i.1.6, align 1, !tbaa !102
  %i.nh = getelementptr i8, ptr %i.ja, i64 %indvars.iv.i.1
  %gep.i.1.7 = getelementptr i8, ptr %i.nh, i64 7
  store i8 %load_initial339, ptr %gep.i.1.7, align 1, !tbaa !102
  %indvars.iv.next.i.1.7 = add nsw i64 %indvars.iv.i.1, 8 ; 2 uses
  %exitcond.not.i.1.7 = icmp eq i64 %indvars.iv.next.i.1.7, %i.iw
  br i1 %exitcond.not.i.1.7, label %._crit_edge.us.i.1, label %.lr.ph.us.i.1.new, !llvm.loop !130

._crit_edge.us.i.1:                               ; preds = %.lr.ph.us.i.1.new, %.prol.loopexit489
  %i.ni = or disjoint i64 %i.mh, 2                ; 2 uses
  %i.nj = icmp samesign ult i64 %i.ni, %i.iz
  br i1 %i.nj, label %.lr.ph.us.i.2, label %.lr.ph.i.preheader

.lr.ph.us.i.2:                                    ; preds = %._crit_edge.us.i.1
  %i.nk = mul nsw i64 %i.ni, %i.iy
  %i.nl = getelementptr inbounds i8, ptr %i.gn, i64 %i.nk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr readonly align 1 %i.nl, i64 %i.it, i1 false)
  %load_initial342 = load i8, ptr %scevgep341, align 1 ; 9 uses
  br i1 %lcmp.mod496.not, label %.prol.loopexit494, label %.prol.preheader493

.prol.preheader493:                               ; preds = %.lr.ph.us.i.2, %.prol.preheader493
  %indvars.iv.i.2.prol = phi i64 [ %indvars.iv.next.i.2.prol, %.prol.preheader493 ], [ %i.it, %.lr.ph.us.i.2 ] ; 2 uses
  %prol.iter497 = phi i64 [ %prol.iter497.next, %.prol.preheader493 ], [ 0, %.lr.ph.us.i.2 ]
  %gep.i.2.prol = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2.prol
  store i8 %load_initial342, ptr %gep.i.2.prol, align 1, !tbaa !102
  %indvars.iv.next.i.2.prol = add nsw i64 %indvars.iv.i.2.prol, 1 ; 2 uses
  %prol.iter497.next = add i64 %prol.iter497, 1   ; 2 uses
  %prol.iter497.cmp.not = icmp eq i64 %prol.iter497.next, %xtraiter495
  br i1 %prol.iter497.cmp.not, label %.prol.loopexit494, label %.prol.preheader493, !llvm.loop !132

.prol.loopexit494:                                ; preds = %.prol.preheader493, %.lr.ph.us.i.2
  %indvars.iv.i.2.unr = phi i64 [ %i.it, %.lr.ph.us.i.2 ], [ %indvars.iv.next.i.2.prol, %.prol.preheader493 ]
  br i1 %i.lt, label %._crit_edge.us.i.2, label %.lr.ph.us.i.2.new

.lr.ph.us.i.2.new:                                ; preds = %.prol.loopexit494, %.lr.ph.us.i.2.new
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2.7, %.lr.ph.us.i.2.new ], [ %indvars.iv.i.2.unr, %.prol.loopexit494 ] ; 9 uses
  %gep.i.2 = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2
  store i8 %load_initial342, ptr %gep.i.2, align 1, !tbaa !102
  %i.nm = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2
  %gep.i.2.1 = getelementptr i8, ptr %i.nm, i64 1
  store i8 %load_initial342, ptr %gep.i.2.1, align 1, !tbaa !102
  %i.nn = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2
  %gep.i.2.2 = getelementptr i8, ptr %i.nn, i64 2
  store i8 %load_initial342, ptr %gep.i.2.2, align 1, !tbaa !102
  %i.no = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2
  %gep.i.2.3 = getelementptr i8, ptr %i.no, i64 3
  store i8 %load_initial342, ptr %gep.i.2.3, align 1, !tbaa !102
  %i.np = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2
  %gep.i.2.4 = getelementptr i8, ptr %i.np, i64 4
  store i8 %load_initial342, ptr %gep.i.2.4, align 1, !tbaa !102
  %i.nq = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2
  %gep.i.2.5 = getelementptr i8, ptr %i.nq, i64 5
  store i8 %load_initial342, ptr %gep.i.2.5, align 1, !tbaa !102
  %i.nr = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2
  %gep.i.2.6 = getelementptr i8, ptr %i.nr, i64 6
  store i8 %load_initial342, ptr %gep.i.2.6, align 1, !tbaa !102
  %i.ns = getelementptr i8, ptr %i.ke, i64 %indvars.iv.i.2
  %gep.i.2.7 = getelementptr i8, ptr %i.ns, i64 7
  store i8 %load_initial342, ptr %gep.i.2.7, align 1, !tbaa !102
  %indvars.iv.next.i.2.7 = add nsw i64 %indvars.iv.i.2, 8 ; 2 uses
  %exitcond.not.i.2.7 = icmp eq i64 %indvars.iv.next.i.2.7, %i.iw
  br i1 %exitcond.not.i.2.7, label %._crit_edge.us.i.2, label %.lr.ph.us.i.2.new, !llvm.loop !130

._crit_edge.us.i.2:                               ; preds = %.lr.ph.us.i.2.new, %.prol.loopexit494
  %i.nt = or disjoint i64 %i.mh, 3                ; 2 uses
  %i.nu = icmp samesign ult i64 %i.nt, %i.iz
  br i1 %i.nu, label %.lr.ph.us.i.3, label %.lr.ph.i.preheader

.lr.ph.us.i.3:                                    ; preds = %._crit_edge.us.i.2
  %i.nv = mul nsw i64 %i.nt, %i.iy
  %i.nw = getelementptr inbounds i8, ptr %i.gn, i64 %i.nv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.je, ptr readonly align 1 %i.nw, i64 %i.it, i1 false)
  %load_initial346 = load i8, ptr %scevgep345, align 1 ; 9 uses
  br i1 %lcmp.mod501.not, label %.prol.loopexit499, label %.prol.preheader498

.prol.preheader498:                               ; preds = %.lr.ph.us.i.3, %.prol.preheader498
  %indvars.iv.i.3.prol = phi i64 [ %indvars.iv.next.i.3.prol, %.prol.preheader498 ], [ %i.it, %.lr.ph.us.i.3 ] ; 2 uses
  %prol.iter502 = phi i64 [ %prol.iter502.next, %.prol.preheader498 ], [ 0, %.lr.ph.us.i.3 ]
  %gep.i.3.prol = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3.prol
  store i8 %load_initial346, ptr %gep.i.3.prol, align 1, !tbaa !102
  %indvars.iv.next.i.3.prol = add nsw i64 %indvars.iv.i.3.prol, 1 ; 2 uses
  %prol.iter502.next = add i64 %prol.iter502, 1   ; 2 uses
  %prol.iter502.cmp.not = icmp eq i64 %prol.iter502.next, %xtraiter500
  br i1 %prol.iter502.cmp.not, label %.prol.loopexit499, label %.prol.preheader498, !llvm.loop !133

.prol.loopexit499:                                ; preds = %.prol.preheader498, %.lr.ph.us.i.3
  %indvars.iv.i.3.unr = phi i64 [ %i.it, %.lr.ph.us.i.3 ], [ %indvars.iv.next.i.3.prol, %.prol.preheader498 ]
  br i1 %i.lu, label %._crit_edge.us.i.3, label %.lr.ph.us.i.3.new

.lr.ph.us.i.3.new:                                ; preds = %.prol.loopexit499, %.lr.ph.us.i.3.new
  %indvars.iv.i.3 = phi i64 [ %indvars.iv.next.i.3.7, %.lr.ph.us.i.3.new ], [ %indvars.iv.i.3.unr, %.prol.loopexit499 ] ; 9 uses
  %gep.i.3 = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3
  store i8 %load_initial346, ptr %gep.i.3, align 1, !tbaa !102
  %i.nx = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3
  %gep.i.3.1 = getelementptr i8, ptr %i.nx, i64 1
  store i8 %load_initial346, ptr %gep.i.3.1, align 1, !tbaa !102
  %i.ny = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3
  %gep.i.3.2 = getelementptr i8, ptr %i.ny, i64 2
  store i8 %load_initial346, ptr %gep.i.3.2, align 1, !tbaa !102
  %i.nz = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3
  %gep.i.3.3 = getelementptr i8, ptr %i.nz, i64 3
  store i8 %load_initial346, ptr %gep.i.3.3, align 1, !tbaa !102
  %i.oa = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3
  %gep.i.3.4 = getelementptr i8, ptr %i.oa, i64 4
  store i8 %load_initial346, ptr %gep.i.3.4, align 1, !tbaa !102
  %i.ob = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3
  %gep.i.3.5 = getelementptr i8, ptr %i.ob, i64 5
  store i8 %load_initial346, ptr %gep.i.3.5, align 1, !tbaa !102
  %i.oc = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3
  %gep.i.3.6 = getelementptr i8, ptr %i.oc, i64 6
  store i8 %load_initial346, ptr %gep.i.3.6, align 1, !tbaa !102
  %i.od = getelementptr i8, ptr %i.je, i64 %indvars.iv.i.3
  %gep.i.3.7 = getelementptr i8, ptr %i.od, i64 7
  store i8 %load_initial346, ptr %gep.i.3.7, align 1, !tbaa !102
  %indvars.iv.next.i.3.7 = add nsw i64 %indvars.iv.i.3, 8 ; 2 uses
  %exitcond.not.i.3.7 = icmp eq i64 %indvars.iv.next.i.3.7, %i.iw
  br i1 %exitcond.not.i.3.7, label %._crit_edge.us.i.3, label %.lr.ph.us.i.3.new, !llvm.loop !130

._crit_edge.us.i.3:                               ; preds = %.lr.ph.us.i.3.new, %.prol.loopexit499
  %i.oe = or disjoint i64 %i.mh, 4                ; 2 uses
  %i.of = icmp samesign ult i64 %i.oe, %i.iz
  br i1 %i.of, label %.lr.ph.us.i.4, label %.lr.ph.i.preheader

.lr.ph.us.i.4:                                    ; preds = %._crit_edge.us.i.3
  %i.og = mul nsw i64 %i.oe, %i.iy
  %i.oh = getelementptr inbounds i8, ptr %i.gn, i64 %i.og
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kg, ptr readonly align 1 %i.oh, i64 %i.it, i1 false)
  %load_initial349 = load i8, ptr %scevgep348, align 1 ; 9 uses
  br i1 %lcmp.mod506.not, label %.prol.loopexit504, label %.prol.preheader503

.prol.preheader503:                               ; preds = %.lr.ph.us.i.4, %.prol.preheader503
  %indvars.iv.i.4.prol = phi i64 [ %indvars.iv.next.i.4.prol, %.prol.preheader503 ], [ %i.it, %.lr.ph.us.i.4 ] ; 2 uses
  %prol.iter507 = phi i64 [ %prol.iter507.next, %.prol.preheader503 ], [ 0, %.lr.ph.us.i.4 ]
  %gep.i.4.prol = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4.prol
  store i8 %load_initial349, ptr %gep.i.4.prol, align 1, !tbaa !102
  %indvars.iv.next.i.4.prol = add nsw i64 %indvars.iv.i.4.prol, 1 ; 2 uses
  %prol.iter507.next = add i64 %prol.iter507, 1   ; 2 uses
  %prol.iter507.cmp.not = icmp eq i64 %prol.iter507.next, %xtraiter505
  br i1 %prol.iter507.cmp.not, label %.prol.loopexit504, label %.prol.preheader503, !llvm.loop !134

.prol.loopexit504:                                ; preds = %.prol.preheader503, %.lr.ph.us.i.4
  %indvars.iv.i.4.unr = phi i64 [ %i.it, %.lr.ph.us.i.4 ], [ %indvars.iv.next.i.4.prol, %.prol.preheader503 ]
  br i1 %i.lv, label %._crit_edge.us.i.4, label %.lr.ph.us.i.4.new

.lr.ph.us.i.4.new:                                ; preds = %.prol.loopexit504, %.lr.ph.us.i.4.new
  %indvars.iv.i.4 = phi i64 [ %indvars.iv.next.i.4.7, %.lr.ph.us.i.4.new ], [ %indvars.iv.i.4.unr, %.prol.loopexit504 ] ; 9 uses
  %gep.i.4 = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4
  store i8 %load_initial349, ptr %gep.i.4, align 1, !tbaa !102
  %i.oi = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4
  %gep.i.4.1 = getelementptr i8, ptr %i.oi, i64 1
  store i8 %load_initial349, ptr %gep.i.4.1, align 1, !tbaa !102
  %i.oj = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4
  %gep.i.4.2 = getelementptr i8, ptr %i.oj, i64 2
  store i8 %load_initial349, ptr %gep.i.4.2, align 1, !tbaa !102
  %i.ok = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4
  %gep.i.4.3 = getelementptr i8, ptr %i.ok, i64 3
  store i8 %load_initial349, ptr %gep.i.4.3, align 1, !tbaa !102
  %i.ol = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4
  %gep.i.4.4 = getelementptr i8, ptr %i.ol, i64 4
  store i8 %load_initial349, ptr %gep.i.4.4, align 1, !tbaa !102
  %i.om = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4
  %gep.i.4.5 = getelementptr i8, ptr %i.om, i64 5
  store i8 %load_initial349, ptr %gep.i.4.5, align 1, !tbaa !102
  %i.on = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4
  %gep.i.4.6 = getelementptr i8, ptr %i.on, i64 6
  store i8 %load_initial349, ptr %gep.i.4.6, align 1, !tbaa !102
  %i.oo = getelementptr i8, ptr %i.kg, i64 %indvars.iv.i.4
  %gep.i.4.7 = getelementptr i8, ptr %i.oo, i64 7
  store i8 %load_initial349, ptr %gep.i.4.7, align 1, !tbaa !102
  %indvars.iv.next.i.4.7 = add nsw i64 %indvars.iv.i.4, 8 ; 2 uses
  %exitcond.not.i.4.7 = icmp eq i64 %indvars.iv.next.i.4.7, %i.iw
  br i1 %exitcond.not.i.4.7, label %._crit_edge.us.i.4, label %.lr.ph.us.i.4.new, !llvm.loop !130

._crit_edge.us.i.4:                               ; preds = %.lr.ph.us.i.4.new, %.prol.loopexit504
  %i.op = or disjoint i64 %i.mh, 5                ; 2 uses
  %i.oq = icmp samesign ult i64 %i.op, %i.iz
  br i1 %i.oq, label %.lr.ph.us.i.5, label %.lr.ph.i.preheader

.lr.ph.us.i.5:                                    ; preds = %._crit_edge.us.i.4
  %i.or = mul nsw i64 %i.op, %i.iy
  %i.os = getelementptr inbounds i8, ptr %i.gn, i64 %i.or
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr readonly align 1 %i.os, i64 %i.it, i1 false)
  %load_initial353 = load i8, ptr %scevgep352, align 1 ; 9 uses
  br i1 %lcmp.mod511.not, label %.prol.loopexit509, label %.prol.preheader508

.prol.preheader508:                               ; preds = %.lr.ph.us.i.5, %.prol.preheader508
  %indvars.iv.i.5.prol = phi i64 [ %indvars.iv.next.i.5.prol, %.prol.preheader508 ], [ %i.it, %.lr.ph.us.i.5 ] ; 2 uses
  %prol.iter512 = phi i64 [ %prol.iter512.next, %.prol.preheader508 ], [ 0, %.lr.ph.us.i.5 ]
  %gep.i.5.prol = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5.prol
  store i8 %load_initial353, ptr %gep.i.5.prol, align 1, !tbaa !102
  %indvars.iv.next.i.5.prol = add nsw i64 %indvars.iv.i.5.prol, 1 ; 2 uses
  %prol.iter512.next = add i64 %prol.iter512, 1   ; 2 uses
  %prol.iter512.cmp.not = icmp eq i64 %prol.iter512.next, %xtraiter510
  br i1 %prol.iter512.cmp.not, label %.prol.loopexit509, label %.prol.preheader508, !llvm.loop !135

.prol.loopexit509:                                ; preds = %.prol.preheader508, %.lr.ph.us.i.5
  %indvars.iv.i.5.unr = phi i64 [ %i.it, %.lr.ph.us.i.5 ], [ %indvars.iv.next.i.5.prol, %.prol.preheader508 ]
  br i1 %i.lw, label %._crit_edge.us.i.5, label %.lr.ph.us.i.5.new

.lr.ph.us.i.5.new:                                ; preds = %.prol.loopexit509, %.lr.ph.us.i.5.new
  %indvars.iv.i.5 = phi i64 [ %indvars.iv.next.i.5.7, %.lr.ph.us.i.5.new ], [ %indvars.iv.i.5.unr, %.prol.loopexit509 ] ; 9 uses
  %gep.i.5 = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5
  store i8 %load_initial353, ptr %gep.i.5, align 1, !tbaa !102
  %i.ot = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5
  %gep.i.5.1 = getelementptr i8, ptr %i.ot, i64 1
  store i8 %load_initial353, ptr %gep.i.5.1, align 1, !tbaa !102
  %i.ou = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5
  %gep.i.5.2 = getelementptr i8, ptr %i.ou, i64 2
  store i8 %load_initial353, ptr %gep.i.5.2, align 1, !tbaa !102
  %i.ov = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5
  %gep.i.5.3 = getelementptr i8, ptr %i.ov, i64 3
  store i8 %load_initial353, ptr %gep.i.5.3, align 1, !tbaa !102
  %i.ow = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5
  %gep.i.5.4 = getelementptr i8, ptr %i.ow, i64 4
  store i8 %load_initial353, ptr %gep.i.5.4, align 1, !tbaa !102
  %i.ox = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5
  %gep.i.5.5 = getelementptr i8, ptr %i.ox, i64 5
  store i8 %load_initial353, ptr %gep.i.5.5, align 1, !tbaa !102
  %i.oy = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5
  %gep.i.5.6 = getelementptr i8, ptr %i.oy, i64 6
  store i8 %load_initial353, ptr %gep.i.5.6, align 1, !tbaa !102
  %i.oz = getelementptr i8, ptr %i.ji, i64 %indvars.iv.i.5
  %gep.i.5.7 = getelementptr i8, ptr %i.oz, i64 7
  store i8 %load_initial353, ptr %gep.i.5.7, align 1, !tbaa !102
  %indvars.iv.next.i.5.7 = add nsw i64 %indvars.iv.i.5, 8 ; 2 uses
  %exitcond.not.i.5.7 = icmp eq i64 %indvars.iv.next.i.5.7, %i.iw
  br i1 %exitcond.not.i.5.7, label %._crit_edge.us.i.5, label %.lr.ph.us.i.5.new, !llvm.loop !130

._crit_edge.us.i.5:                               ; preds = %.lr.ph.us.i.5.new, %.prol.loopexit509
  %i.pa = or disjoint i64 %i.mh, 6                ; 2 uses
  %i.pb = icmp samesign ult i64 %i.pa, %i.iz
  br i1 %i.pb, label %.lr.ph.us.i.6, label %.lr.ph.i.preheader

.lr.ph.us.i.6:                                    ; preds = %._crit_edge.us.i.5
  %i.pc = mul nsw i64 %i.pa, %i.iy
  %i.pd = getelementptr inbounds i8, ptr %i.gn, i64 %i.pc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr readonly align 1 %i.pd, i64 %i.it, i1 false)
  %load_initial356 = load i8, ptr %scevgep355, align 1 ; 9 uses
  br i1 %lcmp.mod516.not, label %.prol.loopexit514, label %.prol.preheader513

.prol.preheader513:                               ; preds = %.lr.ph.us.i.6, %.prol.preheader513
  %indvars.iv.i.6.prol = phi i64 [ %indvars.iv.next.i.6.prol, %.prol.preheader513 ], [ %i.it, %.lr.ph.us.i.6 ] ; 2 uses
  %prol.iter517 = phi i64 [ %prol.iter517.next, %.prol.preheader513 ], [ 0, %.lr.ph.us.i.6 ]
  %gep.i.6.prol = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6.prol
  store i8 %load_initial356, ptr %gep.i.6.prol, align 1, !tbaa !102
  %indvars.iv.next.i.6.prol = add nsw i64 %indvars.iv.i.6.prol, 1 ; 2 uses
  %prol.iter517.next = add i64 %prol.iter517, 1   ; 2 uses
  %prol.iter517.cmp.not = icmp eq i64 %prol.iter517.next, %xtraiter515
  br i1 %prol.iter517.cmp.not, label %.prol.loopexit514, label %.prol.preheader513, !llvm.loop !136

.prol.loopexit514:                                ; preds = %.prol.preheader513, %.lr.ph.us.i.6
  %indvars.iv.i.6.unr = phi i64 [ %i.it, %.lr.ph.us.i.6 ], [ %indvars.iv.next.i.6.prol, %.prol.preheader513 ]
  br i1 %i.lx, label %._crit_edge.us.i.6, label %.lr.ph.us.i.6.new

.lr.ph.us.i.6.new:                                ; preds = %.prol.loopexit514, %.lr.ph.us.i.6.new
  %indvars.iv.i.6 = phi i64 [ %indvars.iv.next.i.6.7, %.lr.ph.us.i.6.new ], [ %indvars.iv.i.6.unr, %.prol.loopexit514 ] ; 9 uses
  %gep.i.6 = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6
  store i8 %load_initial356, ptr %gep.i.6, align 1, !tbaa !102
  %i.pe = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6
  %gep.i.6.1 = getelementptr i8, ptr %i.pe, i64 1
  store i8 %load_initial356, ptr %gep.i.6.1, align 1, !tbaa !102
  %i.pf = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6
  %gep.i.6.2 = getelementptr i8, ptr %i.pf, i64 2
  store i8 %load_initial356, ptr %gep.i.6.2, align 1, !tbaa !102
  %i.pg = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6
  %gep.i.6.3 = getelementptr i8, ptr %i.pg, i64 3
  store i8 %load_initial356, ptr %gep.i.6.3, align 1, !tbaa !102
  %i.ph = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6
  %gep.i.6.4 = getelementptr i8, ptr %i.ph, i64 4
  store i8 %load_initial356, ptr %gep.i.6.4, align 1, !tbaa !102
  %i.pi = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6
  %gep.i.6.5 = getelementptr i8, ptr %i.pi, i64 5
  store i8 %load_initial356, ptr %gep.i.6.5, align 1, !tbaa !102
  %i.pj = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6
  %gep.i.6.6 = getelementptr i8, ptr %i.pj, i64 6
  store i8 %load_initial356, ptr %gep.i.6.6, align 1, !tbaa !102
  %i.pk = getelementptr i8, ptr %i.jk, i64 %indvars.iv.i.6
  %gep.i.6.7 = getelementptr i8, ptr %i.pk, i64 7
  store i8 %load_initial356, ptr %gep.i.6.7, align 1, !tbaa !102
  %indvars.iv.next.i.6.7 = add nsw i64 %indvars.iv.i.6, 8 ; 2 uses
  %exitcond.not.i.6.7 = icmp eq i64 %indvars.iv.next.i.6.7, %i.iw
  br i1 %exitcond.not.i.6.7, label %._crit_edge.us.i.6, label %.lr.ph.us.i.6.new, !llvm.loop !130

._crit_edge.us.i.6:                               ; preds = %.lr.ph.us.i.6.new, %.prol.loopexit514
  %i.pl = or disjoint i64 %i.mh, 7                ; 2 uses
  %i.pm = icmp samesign ult i64 %i.pl, %i.iz
  br i1 %i.pm, label %.lr.ph.us.i.7, label %.lr.ph.i.preheader

.lr.ph.us.i.7:                                    ; preds = %._crit_edge.us.i.6
  %i.pn = mul nsw i64 %i.pl, %i.iy
  %i.po = getelementptr inbounds i8, ptr %i.gn, i64 %i.pn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr readonly align 1 %i.po, i64 %i.it, i1 false)
  %load_initial360 = load i8, ptr %scevgep359, align 1 ; 9 uses
  br i1 %lcmp.mod521.not, label %.prol.loopexit519, label %.prol.preheader518

.prol.preheader518:                               ; preds = %.lr.ph.us.i.7, %.prol.preheader518
  %indvars.iv.i.7.prol = phi i64 [ %indvars.iv.next.i.7.prol, %.prol.preheader518 ], [ %i.it, %.lr.ph.us.i.7 ] ; 2 uses
  %prol.iter522 = phi i64 [ %prol.iter522.next, %.prol.preheader518 ], [ 0, %.lr.ph.us.i.7 ]
  %gep.i.7.prol = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7.prol
  store i8 %load_initial360, ptr %gep.i.7.prol, align 1, !tbaa !102
  %indvars.iv.next.i.7.prol = add nsw i64 %indvars.iv.i.7.prol, 1 ; 2 uses
  %prol.iter522.next = add i64 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i64 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %.prol.loopexit519, label %.prol.preheader518, !llvm.loop !137

.prol.loopexit519:                                ; preds = %.prol.preheader518, %.lr.ph.us.i.7
  %indvars.iv.i.7.unr = phi i64 [ %i.it, %.lr.ph.us.i.7 ], [ %indvars.iv.next.i.7.prol, %.prol.preheader518 ]
  br i1 %i.ly, label %._crit_edge.us.i.7, label %.lr.ph.us.i.7.new

.lr.ph.us.i.7.new:                                ; preds = %.prol.loopexit519, %.lr.ph.us.i.7.new
  %indvars.iv.i.7 = phi i64 [ %indvars.iv.next.i.7.7, %.lr.ph.us.i.7.new ], [ %indvars.iv.i.7.unr, %.prol.loopexit519 ] ; 9 uses
  %gep.i.7 = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7
  store i8 %load_initial360, ptr %gep.i.7, align 1, !tbaa !102
  %i.pp = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7
  %gep.i.7.1 = getelementptr i8, ptr %i.pp, i64 1
  store i8 %load_initial360, ptr %gep.i.7.1, align 1, !tbaa !102
  %i.pq = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7
  %gep.i.7.2 = getelementptr i8, ptr %i.pq, i64 2
  store i8 %load_initial360, ptr %gep.i.7.2, align 1, !tbaa !102
  %i.pr = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7
  %gep.i.7.3 = getelementptr i8, ptr %i.pr, i64 3
  store i8 %load_initial360, ptr %gep.i.7.3, align 1, !tbaa !102
  %i.ps = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7
  %gep.i.7.4 = getelementptr i8, ptr %i.ps, i64 4
  store i8 %load_initial360, ptr %gep.i.7.4, align 1, !tbaa !102
  %i.pt = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7
  %gep.i.7.5 = getelementptr i8, ptr %i.pt, i64 5
  store i8 %load_initial360, ptr %gep.i.7.5, align 1, !tbaa !102
  %i.pu = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7
  %gep.i.7.6 = getelementptr i8, ptr %i.pu, i64 6
  store i8 %load_initial360, ptr %gep.i.7.6, align 1, !tbaa !102
  %i.pv = getelementptr i8, ptr %i.jm, i64 %indvars.iv.i.7
  %gep.i.7.7 = getelementptr i8, ptr %i.pv, i64 7
  store i8 %load_initial360, ptr %gep.i.7.7, align 1, !tbaa !102
  %indvars.iv.next.i.7.7 = add nsw i64 %indvars.iv.i.7, 8 ; 2 uses
  %exitcond.not.i.7.7 = icmp eq i64 %indvars.iv.next.i.7.7, %i.iw
  br i1 %exitcond.not.i.7.7, label %._crit_edge.us.i.7, label %.lr.ph.us.i.7.new, !llvm.loop !130

._crit_edge.us.i.7:                               ; preds = %.lr.ph.us.i.7.new, %.prol.loopexit519
  %i.pw = or disjoint i64 %i.mh, 8                ; 2 uses
  %i.px = icmp samesign ult i64 %i.pw, %i.iz
  br i1 %i.px, label %.lr.ph.us.i.8, label %.lr.ph.i.preheader

.lr.ph.us.i.8:                                    ; preds = %._crit_edge.us.i.7
  %i.py = mul nsw i64 %i.pw, %i.iy
  %i.pz = getelementptr inbounds i8, ptr %i.gn, i64 %i.py
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ki, ptr readonly align 1 %i.pz, i64 %i.it, i1 false)
  %load_initial363 = load i8, ptr %scevgep362, align 1 ; 9 uses
  br i1 %lcmp.mod526.not, label %.prol.loopexit524, label %.prol.preheader523

.prol.preheader523:                               ; preds = %.lr.ph.us.i.8, %.prol.preheader523
  %indvars.iv.i.8.prol = phi i64 [ %indvars.iv.next.i.8.prol, %.prol.preheader523 ], [ %i.it, %.lr.ph.us.i.8 ] ; 2 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.prol.preheader523 ], [ 0, %.lr.ph.us.i.8 ]
  %gep.i.8.prol = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8.prol
  store i8 %load_initial363, ptr %gep.i.8.prol, align 1, !tbaa !102
  %indvars.iv.next.i.8.prol = add nsw i64 %indvars.iv.i.8.prol, 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.prol.loopexit524, label %.prol.preheader523, !llvm.loop !138

.prol.loopexit524:                                ; preds = %.prol.preheader523, %.lr.ph.us.i.8
  %indvars.iv.i.8.unr = phi i64 [ %i.it, %.lr.ph.us.i.8 ], [ %indvars.iv.next.i.8.prol, %.prol.preheader523 ]
  br i1 %i.lz, label %._crit_edge.us.i.8, label %.lr.ph.us.i.8.new

.lr.ph.us.i.8.new:                                ; preds = %.prol.loopexit524, %.lr.ph.us.i.8.new
  %indvars.iv.i.8 = phi i64 [ %indvars.iv.next.i.8.7, %.lr.ph.us.i.8.new ], [ %indvars.iv.i.8.unr, %.prol.loopexit524 ] ; 9 uses
  %gep.i.8 = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8
  store i8 %load_initial363, ptr %gep.i.8, align 1, !tbaa !102
  %i.qa = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8
  %gep.i.8.1 = getelementptr i8, ptr %i.qa, i64 1
  store i8 %load_initial363, ptr %gep.i.8.1, align 1, !tbaa !102
  %i.qb = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8
  %gep.i.8.2 = getelementptr i8, ptr %i.qb, i64 2
  store i8 %load_initial363, ptr %gep.i.8.2, align 1, !tbaa !102
  %i.qc = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8
  %gep.i.8.3 = getelementptr i8, ptr %i.qc, i64 3
  store i8 %load_initial363, ptr %gep.i.8.3, align 1, !tbaa !102
  %i.qd = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8
  %gep.i.8.4 = getelementptr i8, ptr %i.qd, i64 4
  store i8 %load_initial363, ptr %gep.i.8.4, align 1, !tbaa !102
  %i.qe = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8
  %gep.i.8.5 = getelementptr i8, ptr %i.qe, i64 5
  store i8 %load_initial363, ptr %gep.i.8.5, align 1, !tbaa !102
  %i.qf = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8
  %gep.i.8.6 = getelementptr i8, ptr %i.qf, i64 6
  store i8 %load_initial363, ptr %gep.i.8.6, align 1, !tbaa !102
  %i.qg = getelementptr i8, ptr %i.ki, i64 %indvars.iv.i.8
  %gep.i.8.7 = getelementptr i8, ptr %i.qg, i64 7
  store i8 %load_initial363, ptr %gep.i.8.7, align 1, !tbaa !102
  %indvars.iv.next.i.8.7 = add nsw i64 %indvars.iv.i.8, 8 ; 2 uses
  %exitcond.not.i.8.7 = icmp eq i64 %indvars.iv.next.i.8.7, %i.iw
  br i1 %exitcond.not.i.8.7, label %._crit_edge.us.i.8, label %.lr.ph.us.i.8.new, !llvm.loop !130

._crit_edge.us.i.8:                               ; preds = %.lr.ph.us.i.8.new, %.prol.loopexit524
  %i.qh = or disjoint i64 %i.mh, 9                ; 2 uses
  %i.qi = icmp samesign ult i64 %i.qh, %i.iz
  br i1 %i.qi, label %.lr.ph.us.i.9, label %.lr.ph.i.preheader

.lr.ph.us.i.9:                                    ; preds = %._crit_edge.us.i.8
  %i.qj = mul nsw i64 %i.qh, %i.iy
  %i.qk = getelementptr inbounds i8, ptr %i.gn, i64 %i.qj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jq, ptr readonly align 1 %i.qk, i64 %i.it, i1 false)
  %load_initial367 = load i8, ptr %scevgep366, align 1 ; 9 uses
  br i1 %lcmp.mod531.not, label %.prol.loopexit529, label %.prol.preheader528

.prol.preheader528:                               ; preds = %.lr.ph.us.i.9, %.prol.preheader528
  %indvars.iv.i.9.prol = phi i64 [ %indvars.iv.next.i.9.prol, %.prol.preheader528 ], [ %i.it, %.lr.ph.us.i.9 ] ; 2 uses
  %prol.iter532 = phi i64 [ %prol.iter532.next, %.prol.preheader528 ], [ 0, %.lr.ph.us.i.9 ]
  %gep.i.9.prol = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9.prol
  store i8 %load_initial367, ptr %gep.i.9.prol, align 1, !tbaa !102
  %indvars.iv.next.i.9.prol = add nsw i64 %indvars.iv.i.9.prol, 1 ; 2 uses
  %prol.iter532.next = add i64 %prol.iter532, 1   ; 2 uses
  %prol.iter532.cmp.not = icmp eq i64 %prol.iter532.next, %xtraiter530
  br i1 %prol.iter532.cmp.not, label %.prol.loopexit529, label %.prol.preheader528, !llvm.loop !139

.prol.loopexit529:                                ; preds = %.prol.preheader528, %.lr.ph.us.i.9
  %indvars.iv.i.9.unr = phi i64 [ %i.it, %.lr.ph.us.i.9 ], [ %indvars.iv.next.i.9.prol, %.prol.preheader528 ]
  br i1 %i.ma, label %._crit_edge.us.i.9, label %.lr.ph.us.i.9.new

.lr.ph.us.i.9.new:                                ; preds = %.prol.loopexit529, %.lr.ph.us.i.9.new
  %indvars.iv.i.9 = phi i64 [ %indvars.iv.next.i.9.7, %.lr.ph.us.i.9.new ], [ %indvars.iv.i.9.unr, %.prol.loopexit529 ] ; 9 uses
  %gep.i.9 = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9
  store i8 %load_initial367, ptr %gep.i.9, align 1, !tbaa !102
  %i.ql = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9
  %gep.i.9.1 = getelementptr i8, ptr %i.ql, i64 1
  store i8 %load_initial367, ptr %gep.i.9.1, align 1, !tbaa !102
  %i.qm = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9
  %gep.i.9.2 = getelementptr i8, ptr %i.qm, i64 2
  store i8 %load_initial367, ptr %gep.i.9.2, align 1, !tbaa !102
  %i.qn = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9
  %gep.i.9.3 = getelementptr i8, ptr %i.qn, i64 3
  store i8 %load_initial367, ptr %gep.i.9.3, align 1, !tbaa !102
  %i.qo = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9
  %gep.i.9.4 = getelementptr i8, ptr %i.qo, i64 4
  store i8 %load_initial367, ptr %gep.i.9.4, align 1, !tbaa !102
  %i.qp = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9
  %gep.i.9.5 = getelementptr i8, ptr %i.qp, i64 5
  store i8 %load_initial367, ptr %gep.i.9.5, align 1, !tbaa !102
  %i.qq = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9
  %gep.i.9.6 = getelementptr i8, ptr %i.qq, i64 6
  store i8 %load_initial367, ptr %gep.i.9.6, align 1, !tbaa !102
  %i.qr = getelementptr i8, ptr %i.jq, i64 %indvars.iv.i.9
  %gep.i.9.7 = getelementptr i8, ptr %i.qr, i64 7
  store i8 %load_initial367, ptr %gep.i.9.7, align 1, !tbaa !102
  %indvars.iv.next.i.9.7 = add nsw i64 %indvars.iv.i.9, 8 ; 2 uses
  %exitcond.not.i.9.7 = icmp eq i64 %indvars.iv.next.i.9.7, %i.iw
  br i1 %exitcond.not.i.9.7, label %._crit_edge.us.i.9, label %.lr.ph.us.i.9.new, !llvm.loop !130

._crit_edge.us.i.9:                               ; preds = %.lr.ph.us.i.9.new, %.prol.loopexit529
  %i.qs = or disjoint i64 %i.mh, 10               ; 2 uses
  %i.qt = icmp samesign ult i64 %i.qs, %i.iz
  br i1 %i.qt, label %.lr.ph.us.i.10, label %.lr.ph.i.preheader

.lr.ph.us.i.10:                                   ; preds = %._crit_edge.us.i.9
  %i.qu = mul nsw i64 %i.qs, %i.iy
  %i.qv = getelementptr inbounds i8, ptr %i.gn, i64 %i.qu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.js, ptr readonly align 1 %i.qv, i64 %i.it, i1 false)
  %load_initial370 = load i8, ptr %scevgep369, align 1 ; 9 uses
  br i1 %lcmp.mod536.not, label %.prol.loopexit534, label %.prol.preheader533

.prol.preheader533:                               ; preds = %.lr.ph.us.i.10, %.prol.preheader533
  %indvars.iv.i.10.prol = phi i64 [ %indvars.iv.next.i.10.prol, %.prol.preheader533 ], [ %i.it, %.lr.ph.us.i.10 ] ; 2 uses
  %prol.iter537 = phi i64 [ %prol.iter537.next, %.prol.preheader533 ], [ 0, %.lr.ph.us.i.10 ]
  %gep.i.10.prol = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10.prol
  store i8 %load_initial370, ptr %gep.i.10.prol, align 1, !tbaa !102
  %indvars.iv.next.i.10.prol = add nsw i64 %indvars.iv.i.10.prol, 1 ; 2 uses
  %prol.iter537.next = add i64 %prol.iter537, 1   ; 2 uses
  %prol.iter537.cmp.not = icmp eq i64 %prol.iter537.next, %xtraiter535
  br i1 %prol.iter537.cmp.not, label %.prol.loopexit534, label %.prol.preheader533, !llvm.loop !140

.prol.loopexit534:                                ; preds = %.prol.preheader533, %.lr.ph.us.i.10
  %indvars.iv.i.10.unr = phi i64 [ %i.it, %.lr.ph.us.i.10 ], [ %indvars.iv.next.i.10.prol, %.prol.preheader533 ]
  br i1 %i.mb, label %._crit_edge.us.i.10, label %.lr.ph.us.i.10.new

.lr.ph.us.i.10.new:                               ; preds = %.prol.loopexit534, %.lr.ph.us.i.10.new
  %indvars.iv.i.10 = phi i64 [ %indvars.iv.next.i.10.7, %.lr.ph.us.i.10.new ], [ %indvars.iv.i.10.unr, %.prol.loopexit534 ] ; 9 uses
  %gep.i.10 = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10
  store i8 %load_initial370, ptr %gep.i.10, align 1, !tbaa !102
  %i.qw = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10
  %gep.i.10.1 = getelementptr i8, ptr %i.qw, i64 1
  store i8 %load_initial370, ptr %gep.i.10.1, align 1, !tbaa !102
  %i.qx = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10
  %gep.i.10.2 = getelementptr i8, ptr %i.qx, i64 2
  store i8 %load_initial370, ptr %gep.i.10.2, align 1, !tbaa !102
  %i.qy = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10
  %gep.i.10.3 = getelementptr i8, ptr %i.qy, i64 3
  store i8 %load_initial370, ptr %gep.i.10.3, align 1, !tbaa !102
  %i.qz = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10
  %gep.i.10.4 = getelementptr i8, ptr %i.qz, i64 4
  store i8 %load_initial370, ptr %gep.i.10.4, align 1, !tbaa !102
  %i.ra = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10
  %gep.i.10.5 = getelementptr i8, ptr %i.ra, i64 5
  store i8 %load_initial370, ptr %gep.i.10.5, align 1, !tbaa !102
  %i.rb = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10
  %gep.i.10.6 = getelementptr i8, ptr %i.rb, i64 6
  store i8 %load_initial370, ptr %gep.i.10.6, align 1, !tbaa !102
  %i.rc = getelementptr i8, ptr %i.js, i64 %indvars.iv.i.10
  %gep.i.10.7 = getelementptr i8, ptr %i.rc, i64 7
  store i8 %load_initial370, ptr %gep.i.10.7, align 1, !tbaa !102
  %indvars.iv.next.i.10.7 = add nsw i64 %indvars.iv.i.10, 8 ; 2 uses
  %exitcond.not.i.10.7 = icmp eq i64 %indvars.iv.next.i.10.7, %i.iw
  br i1 %exitcond.not.i.10.7, label %._crit_edge.us.i.10, label %.lr.ph.us.i.10.new, !llvm.loop !130

._crit_edge.us.i.10:                              ; preds = %.lr.ph.us.i.10.new, %.prol.loopexit534
  %i.rd = or disjoint i64 %i.mh, 11               ; 2 uses
  %i.re = icmp samesign ult i64 %i.rd, %i.iz
  br i1 %i.re, label %.lr.ph.us.i.11, label %.lr.ph.i.preheader

.lr.ph.us.i.11:                                   ; preds = %._crit_edge.us.i.10
  %i.rf = mul nsw i64 %i.rd, %i.iy
  %i.rg = getelementptr inbounds i8, ptr %i.gn, i64 %i.rf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr readonly align 1 %i.rg, i64 %i.it, i1 false)
  %load_initial374 = load i8, ptr %scevgep373, align 1 ; 9 uses
  br i1 %lcmp.mod541.not, label %.prol.loopexit539, label %.prol.preheader538

.prol.preheader538:                               ; preds = %.lr.ph.us.i.11, %.prol.preheader538
  %indvars.iv.i.11.prol = phi i64 [ %indvars.iv.next.i.11.prol, %.prol.preheader538 ], [ %i.it, %.lr.ph.us.i.11 ] ; 2 uses
  %prol.iter542 = phi i64 [ %prol.iter542.next, %.prol.preheader538 ], [ 0, %.lr.ph.us.i.11 ]
  %gep.i.11.prol = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11.prol
  store i8 %load_initial374, ptr %gep.i.11.prol, align 1, !tbaa !102
  %indvars.iv.next.i.11.prol = add nsw i64 %indvars.iv.i.11.prol, 1 ; 2 uses
  %prol.iter542.next = add i64 %prol.iter542, 1   ; 2 uses
  %prol.iter542.cmp.not = icmp eq i64 %prol.iter542.next, %xtraiter540
  br i1 %prol.iter542.cmp.not, label %.prol.loopexit539, label %.prol.preheader538, !llvm.loop !141

.prol.loopexit539:                                ; preds = %.prol.preheader538, %.lr.ph.us.i.11
  %indvars.iv.i.11.unr = phi i64 [ %i.it, %.lr.ph.us.i.11 ], [ %indvars.iv.next.i.11.prol, %.prol.preheader538 ]
  br i1 %i.mc, label %._crit_edge.us.i.11, label %.lr.ph.us.i.11.new

.lr.ph.us.i.11.new:                               ; preds = %.prol.loopexit539, %.lr.ph.us.i.11.new
  %indvars.iv.i.11 = phi i64 [ %indvars.iv.next.i.11.7, %.lr.ph.us.i.11.new ], [ %indvars.iv.i.11.unr, %.prol.loopexit539 ] ; 9 uses
  %gep.i.11 = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11
  store i8 %load_initial374, ptr %gep.i.11, align 1, !tbaa !102
  %i.rh = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11
  %gep.i.11.1 = getelementptr i8, ptr %i.rh, i64 1
  store i8 %load_initial374, ptr %gep.i.11.1, align 1, !tbaa !102
  %i.ri = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11
  %gep.i.11.2 = getelementptr i8, ptr %i.ri, i64 2
  store i8 %load_initial374, ptr %gep.i.11.2, align 1, !tbaa !102
  %i.rj = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11
  %gep.i.11.3 = getelementptr i8, ptr %i.rj, i64 3
  store i8 %load_initial374, ptr %gep.i.11.3, align 1, !tbaa !102
  %i.rk = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11
  %gep.i.11.4 = getelementptr i8, ptr %i.rk, i64 4
  store i8 %load_initial374, ptr %gep.i.11.4, align 1, !tbaa !102
  %i.rl = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11
  %gep.i.11.5 = getelementptr i8, ptr %i.rl, i64 5
  store i8 %load_initial374, ptr %gep.i.11.5, align 1, !tbaa !102
  %i.rm = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11
  %gep.i.11.6 = getelementptr i8, ptr %i.rm, i64 6
  store i8 %load_initial374, ptr %gep.i.11.6, align 1, !tbaa !102
  %i.rn = getelementptr i8, ptr %i.ju, i64 %indvars.iv.i.11
  %gep.i.11.7 = getelementptr i8, ptr %i.rn, i64 7
  store i8 %load_initial374, ptr %gep.i.11.7, align 1, !tbaa !102
  %indvars.iv.next.i.11.7 = add nsw i64 %indvars.iv.i.11, 8 ; 2 uses
  %exitcond.not.i.11.7 = icmp eq i64 %indvars.iv.next.i.11.7, %i.iw
  br i1 %exitcond.not.i.11.7, label %._crit_edge.us.i.11, label %.lr.ph.us.i.11.new, !llvm.loop !130

._crit_edge.us.i.11:                              ; preds = %.lr.ph.us.i.11.new, %.prol.loopexit539
  %i.ro = or disjoint i64 %i.mh, 12               ; 2 uses
  %i.rp = icmp samesign ult i64 %i.ro, %i.iz
  br i1 %i.rp, label %.lr.ph.us.i.12, label %.lr.ph.i.preheader

.lr.ph.us.i.12:                                   ; preds = %._crit_edge.us.i.11
  %i.rq = mul nsw i64 %i.ro, %i.iy
  %i.rr = getelementptr inbounds i8, ptr %i.gn, i64 %i.rq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr readonly align 1 %i.rr, i64 %i.it, i1 false)
  %load_initial377 = load i8, ptr %scevgep376, align 1 ; 9 uses
  br i1 %lcmp.mod546.not, label %.prol.loopexit544, label %.prol.preheader543

.prol.preheader543:                               ; preds = %.lr.ph.us.i.12, %.prol.preheader543
  %indvars.iv.i.12.prol = phi i64 [ %indvars.iv.next.i.12.prol, %.prol.preheader543 ], [ %i.it, %.lr.ph.us.i.12 ] ; 2 uses
  %prol.iter547 = phi i64 [ %prol.iter547.next, %.prol.preheader543 ], [ 0, %.lr.ph.us.i.12 ]
  %gep.i.12.prol = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12.prol
  store i8 %load_initial377, ptr %gep.i.12.prol, align 1, !tbaa !102
  %indvars.iv.next.i.12.prol = add nsw i64 %indvars.iv.i.12.prol, 1 ; 2 uses
  %prol.iter547.next = add i64 %prol.iter547, 1   ; 2 uses
  %prol.iter547.cmp.not = icmp eq i64 %prol.iter547.next, %xtraiter545
  br i1 %prol.iter547.cmp.not, label %.prol.loopexit544, label %.prol.preheader543, !llvm.loop !142

.prol.loopexit544:                                ; preds = %.prol.preheader543, %.lr.ph.us.i.12
  %indvars.iv.i.12.unr = phi i64 [ %i.it, %.lr.ph.us.i.12 ], [ %indvars.iv.next.i.12.prol, %.prol.preheader543 ]
  br i1 %i.md, label %._crit_edge.us.i.12, label %.lr.ph.us.i.12.new

.lr.ph.us.i.12.new:                               ; preds = %.prol.loopexit544, %.lr.ph.us.i.12.new
  %indvars.iv.i.12 = phi i64 [ %indvars.iv.next.i.12.7, %.lr.ph.us.i.12.new ], [ %indvars.iv.i.12.unr, %.prol.loopexit544 ] ; 9 uses
  %gep.i.12 = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12
  store i8 %load_initial377, ptr %gep.i.12, align 1, !tbaa !102
  %i.rs = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12
  %gep.i.12.1 = getelementptr i8, ptr %i.rs, i64 1
  store i8 %load_initial377, ptr %gep.i.12.1, align 1, !tbaa !102
  %i.rt = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12
  %gep.i.12.2 = getelementptr i8, ptr %i.rt, i64 2
  store i8 %load_initial377, ptr %gep.i.12.2, align 1, !tbaa !102
  %i.ru = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12
  %gep.i.12.3 = getelementptr i8, ptr %i.ru, i64 3
  store i8 %load_initial377, ptr %gep.i.12.3, align 1, !tbaa !102
  %i.rv = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12
  %gep.i.12.4 = getelementptr i8, ptr %i.rv, i64 4
  store i8 %load_initial377, ptr %gep.i.12.4, align 1, !tbaa !102
  %i.rw = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12
  %gep.i.12.5 = getelementptr i8, ptr %i.rw, i64 5
  store i8 %load_initial377, ptr %gep.i.12.5, align 1, !tbaa !102
  %i.rx = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12
  %gep.i.12.6 = getelementptr i8, ptr %i.rx, i64 6
  store i8 %load_initial377, ptr %gep.i.12.6, align 1, !tbaa !102
  %i.ry = getelementptr i8, ptr %i.jw, i64 %indvars.iv.i.12
  %gep.i.12.7 = getelementptr i8, ptr %i.ry, i64 7
  store i8 %load_initial377, ptr %gep.i.12.7, align 1, !tbaa !102
  %indvars.iv.next.i.12.7 = add nsw i64 %indvars.iv.i.12, 8 ; 2 uses
  %exitcond.not.i.12.7 = icmp eq i64 %indvars.iv.next.i.12.7, %i.iw
  br i1 %exitcond.not.i.12.7, label %._crit_edge.us.i.12, label %.lr.ph.us.i.12.new, !llvm.loop !130

._crit_edge.us.i.12:                              ; preds = %.lr.ph.us.i.12.new, %.prol.loopexit544
  %i.rz = or disjoint i64 %i.mh, 13               ; 2 uses
  %i.sa = icmp samesign ult i64 %i.rz, %i.iz
  br i1 %i.sa, label %.lr.ph.us.i.13, label %.lr.ph.i.preheader

.lr.ph.us.i.13:                                   ; preds = %._crit_edge.us.i.12
  %i.sb = mul nsw i64 %i.rz, %i.iy
  %i.sc = getelementptr inbounds i8, ptr %i.gn, i64 %i.sb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jy, ptr readonly align 1 %i.sc, i64 %i.it, i1 false)
  %load_initial381 = load i8, ptr %scevgep380, align 1 ; 9 uses
  br i1 %lcmp.mod551.not, label %.prol.loopexit549, label %.prol.preheader548

.prol.preheader548:                               ; preds = %.lr.ph.us.i.13, %.prol.preheader548
  %indvars.iv.i.13.prol = phi i64 [ %indvars.iv.next.i.13.prol, %.prol.preheader548 ], [ %i.it, %.lr.ph.us.i.13 ] ; 2 uses
  %prol.iter552 = phi i64 [ %prol.iter552.next, %.prol.preheader548 ], [ 0, %.lr.ph.us.i.13 ]
  %gep.i.13.prol = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13.prol
  store i8 %load_initial381, ptr %gep.i.13.prol, align 1, !tbaa !102
  %indvars.iv.next.i.13.prol = add nsw i64 %indvars.iv.i.13.prol, 1 ; 2 uses
  %prol.iter552.next = add i64 %prol.iter552, 1   ; 2 uses
  %prol.iter552.cmp.not = icmp eq i64 %prol.iter552.next, %xtraiter550
  br i1 %prol.iter552.cmp.not, label %.prol.loopexit549, label %.prol.preheader548, !llvm.loop !143

.prol.loopexit549:                                ; preds = %.prol.preheader548, %.lr.ph.us.i.13
  %indvars.iv.i.13.unr = phi i64 [ %i.it, %.lr.ph.us.i.13 ], [ %indvars.iv.next.i.13.prol, %.prol.preheader548 ]
  br i1 %i.me, label %._crit_edge.us.i.13, label %.lr.ph.us.i.13.new

.lr.ph.us.i.13.new:                               ; preds = %.prol.loopexit549, %.lr.ph.us.i.13.new
  %indvars.iv.i.13 = phi i64 [ %indvars.iv.next.i.13.7, %.lr.ph.us.i.13.new ], [ %indvars.iv.i.13.unr, %.prol.loopexit549 ] ; 9 uses
  %gep.i.13 = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13
  store i8 %load_initial381, ptr %gep.i.13, align 1, !tbaa !102
  %i.sd = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13
  %gep.i.13.1 = getelementptr i8, ptr %i.sd, i64 1
  store i8 %load_initial381, ptr %gep.i.13.1, align 1, !tbaa !102
  %i.se = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13
  %gep.i.13.2 = getelementptr i8, ptr %i.se, i64 2
  store i8 %load_initial381, ptr %gep.i.13.2, align 1, !tbaa !102
  %i.sf = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13
  %gep.i.13.3 = getelementptr i8, ptr %i.sf, i64 3
  store i8 %load_initial381, ptr %gep.i.13.3, align 1, !tbaa !102
  %i.sg = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13
  %gep.i.13.4 = getelementptr i8, ptr %i.sg, i64 4
  store i8 %load_initial381, ptr %gep.i.13.4, align 1, !tbaa !102
  %i.sh = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13
  %gep.i.13.5 = getelementptr i8, ptr %i.sh, i64 5
  store i8 %load_initial381, ptr %gep.i.13.5, align 1, !tbaa !102
  %i.si = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13
  %gep.i.13.6 = getelementptr i8, ptr %i.si, i64 6
  store i8 %load_initial381, ptr %gep.i.13.6, align 1, !tbaa !102
  %i.sj = getelementptr i8, ptr %i.jy, i64 %indvars.iv.i.13
  %gep.i.13.7 = getelementptr i8, ptr %i.sj, i64 7
  store i8 %load_initial381, ptr %gep.i.13.7, align 1, !tbaa !102
  %indvars.iv.next.i.13.7 = add nsw i64 %indvars.iv.i.13, 8 ; 2 uses
  %exitcond.not.i.13.7 = icmp eq i64 %indvars.iv.next.i.13.7, %i.iw
  br i1 %exitcond.not.i.13.7, label %._crit_edge.us.i.13, label %.lr.ph.us.i.13.new, !llvm.loop !130

._crit_edge.us.i.13:                              ; preds = %.lr.ph.us.i.13.new, %.prol.loopexit549
  %i.sk = or disjoint i64 %i.mh, 14               ; 2 uses
  %i.sl = icmp samesign ult i64 %i.sk, %i.iz
  br i1 %i.sl, label %.lr.ph.us.i.14, label %.lr.ph.i.preheader

.lr.ph.us.i.14:                                   ; preds = %._crit_edge.us.i.13
  %i.sm = mul nsw i64 %i.sk, %i.iy
  %i.sn = getelementptr inbounds i8, ptr %i.gn, i64 %i.sm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr readonly align 1 %i.sn, i64 %i.it, i1 false)
  %load_initial384 = load i8, ptr %scevgep383, align 1 ; 9 uses
  br i1 %lcmp.mod556.not, label %.prol.loopexit554, label %.prol.preheader553

.prol.preheader553:                               ; preds = %.lr.ph.us.i.14, %.prol.preheader553
  %indvars.iv.i.14.prol = phi i64 [ %indvars.iv.next.i.14.prol, %.prol.preheader553 ], [ %i.it, %.lr.ph.us.i.14 ] ; 2 uses
  %prol.iter557 = phi i64 [ %prol.iter557.next, %.prol.preheader553 ], [ 0, %.lr.ph.us.i.14 ]
  %gep.i.14.prol = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14.prol
  store i8 %load_initial384, ptr %gep.i.14.prol, align 1, !tbaa !102
  %indvars.iv.next.i.14.prol = add nsw i64 %indvars.iv.i.14.prol, 1 ; 2 uses
  %prol.iter557.next = add i64 %prol.iter557, 1   ; 2 uses
  %prol.iter557.cmp.not = icmp eq i64 %prol.iter557.next, %xtraiter555
  br i1 %prol.iter557.cmp.not, label %.prol.loopexit554, label %.prol.preheader553, !llvm.loop !144

.prol.loopexit554:                                ; preds = %.prol.preheader553, %.lr.ph.us.i.14
  %indvars.iv.i.14.unr = phi i64 [ %i.it, %.lr.ph.us.i.14 ], [ %indvars.iv.next.i.14.prol, %.prol.preheader553 ]
  br i1 %i.mf, label %._crit_edge.us.i.14, label %.lr.ph.us.i.14.new

.lr.ph.us.i.14.new:                               ; preds = %.prol.loopexit554, %.lr.ph.us.i.14.new
  %indvars.iv.i.14 = phi i64 [ %indvars.iv.next.i.14.7, %.lr.ph.us.i.14.new ], [ %indvars.iv.i.14.unr, %.prol.loopexit554 ] ; 9 uses
  %gep.i.14 = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14
  store i8 %load_initial384, ptr %gep.i.14, align 1, !tbaa !102
  %i.so = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14
  %gep.i.14.1 = getelementptr i8, ptr %i.so, i64 1
  store i8 %load_initial384, ptr %gep.i.14.1, align 1, !tbaa !102
  %i.sp = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14
  %gep.i.14.2 = getelementptr i8, ptr %i.sp, i64 2
  store i8 %load_initial384, ptr %gep.i.14.2, align 1, !tbaa !102
  %i.sq = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14
  %gep.i.14.3 = getelementptr i8, ptr %i.sq, i64 3
  store i8 %load_initial384, ptr %gep.i.14.3, align 1, !tbaa !102
  %i.sr = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14
  %gep.i.14.4 = getelementptr i8, ptr %i.sr, i64 4
  store i8 %load_initial384, ptr %gep.i.14.4, align 1, !tbaa !102
  %i.ss = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14
  %gep.i.14.5 = getelementptr i8, ptr %i.ss, i64 5
  store i8 %load_initial384, ptr %gep.i.14.5, align 1, !tbaa !102
  %i.st = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14
  %gep.i.14.6 = getelementptr i8, ptr %i.st, i64 6
  store i8 %load_initial384, ptr %gep.i.14.6, align 1, !tbaa !102
  %i.su = getelementptr i8, ptr %i.ka, i64 %indvars.iv.i.14
  %gep.i.14.7 = getelementptr i8, ptr %i.su, i64 7
  store i8 %load_initial384, ptr %gep.i.14.7, align 1, !tbaa !102
  %indvars.iv.next.i.14.7 = add nsw i64 %indvars.iv.i.14, 8 ; 2 uses
  %exitcond.not.i.14.7 = icmp eq i64 %indvars.iv.next.i.14.7, %i.iw
  br i1 %exitcond.not.i.14.7, label %._crit_edge.us.i.14, label %.lr.ph.us.i.14.new, !llvm.loop !130

._crit_edge.us.i.14:                              ; preds = %.lr.ph.us.i.14.new, %.prol.loopexit554
  %i.sv = or disjoint i64 %i.mh, 15               ; 2 uses
  %i.sw = icmp samesign ult i64 %i.sv, %i.iz
  br i1 %i.sw, label %.lr.ph.us.i.15, label %.lr.ph.i.preheader

.lr.ph.us.i.15:                                   ; preds = %._crit_edge.us.i.14
  %i.sx = mul nsw i64 %i.sv, %i.iy
  %i.sy = getelementptr inbounds i8, ptr %i.gn, i64 %i.sx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr readonly align 1 %i.sy, i64 %i.it, i1 false)
  %load_initial388 = load i8, ptr %scevgep387, align 1 ; 9 uses
  br i1 %lcmp.mod561.not, label %.prol.loopexit559, label %.prol.preheader558

.prol.preheader558:                               ; preds = %.lr.ph.us.i.15, %.prol.preheader558
  %indvars.iv.i.15.prol = phi i64 [ %indvars.iv.next.i.15.prol, %.prol.preheader558 ], [ %i.it, %.lr.ph.us.i.15 ] ; 2 uses
  %prol.iter562 = phi i64 [ %prol.iter562.next, %.prol.preheader558 ], [ 0, %.lr.ph.us.i.15 ]
  %gep.i.15.prol = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15.prol
  store i8 %load_initial388, ptr %gep.i.15.prol, align 1, !tbaa !102
  %indvars.iv.next.i.15.prol = add nsw i64 %indvars.iv.i.15.prol, 1 ; 2 uses
  %prol.iter562.next = add i64 %prol.iter562, 1   ; 2 uses
  %prol.iter562.cmp.not = icmp eq i64 %prol.iter562.next, %xtraiter560
  br i1 %prol.iter562.cmp.not, label %.prol.loopexit559, label %.prol.preheader558, !llvm.loop !145

.prol.loopexit559:                                ; preds = %.prol.preheader558, %.lr.ph.us.i.15
  %indvars.iv.i.15.unr = phi i64 [ %i.it, %.lr.ph.us.i.15 ], [ %indvars.iv.next.i.15.prol, %.prol.preheader558 ]
  br i1 %i.mg, label %.critedge2.i, label %.lr.ph.us.i.15.new

.lr.ph.us.i.15.new:                               ; preds = %.prol.loopexit559, %.lr.ph.us.i.15.new
  %indvars.iv.i.15 = phi i64 [ %indvars.iv.next.i.15.7, %.lr.ph.us.i.15.new ], [ %indvars.iv.i.15.unr, %.prol.loopexit559 ] ; 9 uses
  %gep.i.15 = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15
  store i8 %load_initial388, ptr %gep.i.15, align 1, !tbaa !102
  %i.sz = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15
  %gep.i.15.1 = getelementptr i8, ptr %i.sz, i64 1
  store i8 %load_initial388, ptr %gep.i.15.1, align 1, !tbaa !102
  %i.ta = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15
  %gep.i.15.2 = getelementptr i8, ptr %i.ta, i64 2
  store i8 %load_initial388, ptr %gep.i.15.2, align 1, !tbaa !102
  %i.tb = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15
  %gep.i.15.3 = getelementptr i8, ptr %i.tb, i64 3
  store i8 %load_initial388, ptr %gep.i.15.3, align 1, !tbaa !102
  %i.tc = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15
  %gep.i.15.4 = getelementptr i8, ptr %i.tc, i64 4
  store i8 %load_initial388, ptr %gep.i.15.4, align 1, !tbaa !102
  %i.td = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15
  %gep.i.15.5 = getelementptr i8, ptr %i.td, i64 5
  store i8 %load_initial388, ptr %gep.i.15.5, align 1, !tbaa !102
  %i.te = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15
  %gep.i.15.6 = getelementptr i8, ptr %i.te, i64 6
  store i8 %load_initial388, ptr %gep.i.15.6, align 1, !tbaa !102
  %i.tf = getelementptr i8, ptr %i.kc, i64 %indvars.iv.i.15
  %gep.i.15.7 = getelementptr i8, ptr %i.tf, i64 7
  store i8 %load_initial388, ptr %gep.i.15.7, align 1, !tbaa !102
  %indvars.iv.next.i.15.7 = add nsw i64 %indvars.iv.i.15, 8 ; 2 uses
  %exitcond.not.i.15.7 = icmp eq i64 %indvars.iv.next.i.15.7, %i.iw
  br i1 %exitcond.not.i.15.7, label %.critedge2.i, label %.lr.ph.us.i.15.new, !llvm.loop !130

.split.1.i:                                       ; preds = %.split.preheader.i
  %i.tg = mul nsw i64 %i.mh, %i.iy
  %i.th = getelementptr inbounds i8, ptr %i.gn, i64 %i.tg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hi, ptr readonly align 1 %i.th, i64 %i.it, i1 false)
  %i.ti = or disjoint i64 %i.mh, 1                ; 2 uses
  %i.tj = icmp samesign ult i64 %i.ti, %i.iz
  br i1 %i.tj, label %.split.2.i, label %.lr.ph.i.preheader

.split.2.i:                                       ; preds = %.split.1.i
  %i.tk = mul nsw i64 %i.ti, %i.iy
  %i.tl = getelementptr inbounds i8, ptr %i.gn, i64 %i.tk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr readonly align 1 %i.tl, i64 %i.it, i1 false)
  %i.tm = or disjoint i64 %i.mh, 2                ; 2 uses
  %i.tn = icmp samesign ult i64 %i.tm, %i.iz
  br i1 %i.tn, label %.split.3.i, label %.lr.ph.i.preheader

.split.3.i:                                       ; preds = %.split.2.i
  %i.to = mul nsw i64 %i.tm, %i.iy
  %i.tp = getelementptr inbounds i8, ptr %i.gn, i64 %i.to
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jc, ptr readonly align 1 %i.tp, i64 %i.it, i1 false)
  %i.tq = or disjoint i64 %i.mh, 3                ; 2 uses
  %i.tr = icmp samesign ult i64 %i.tq, %i.iz
  br i1 %i.tr, label %.split.4.i, label %.lr.ph.i.preheader

.split.4.i:                                       ; preds = %.split.3.i
  %i.ts = mul nsw i64 %i.tq, %i.iy
  %i.tt = getelementptr inbounds i8, ptr %i.gn, i64 %i.ts
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.je, ptr readonly align 1 %i.tt, i64 %i.it, i1 false)
  %i.tu = or disjoint i64 %i.mh, 4                ; 2 uses
  %i.tv = icmp samesign ult i64 %i.tu, %i.iz
  br i1 %i.tv, label %.split.5.i, label %.lr.ph.i.preheader

.split.5.i:                                       ; preds = %.split.4.i
  %i.tw = mul nsw i64 %i.tu, %i.iy
  %i.tx = getelementptr inbounds i8, ptr %i.gn, i64 %i.tw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jg, ptr readonly align 1 %i.tx, i64 %i.it, i1 false)
  %i.ty = or disjoint i64 %i.mh, 5                ; 2 uses
  %i.tz = icmp samesign ult i64 %i.ty, %i.iz
  br i1 %i.tz, label %.split.6.i, label %.lr.ph.i.preheader

.split.6.i:                                       ; preds = %.split.5.i
  %i.ua = mul nsw i64 %i.ty, %i.iy
  %i.ub = getelementptr inbounds i8, ptr %i.gn, i64 %i.ua
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr readonly align 1 %i.ub, i64 %i.it, i1 false)
  %i.uc = or disjoint i64 %i.mh, 6                ; 2 uses
  %i.ud = icmp samesign ult i64 %i.uc, %i.iz
  br i1 %i.ud, label %.split.7.i, label %.lr.ph.i.preheader

.split.7.i:                                       ; preds = %.split.6.i
  %i.ue = mul nsw i64 %i.uc, %i.iy
  %i.uf = getelementptr inbounds i8, ptr %i.gn, i64 %i.ue
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr readonly align 1 %i.uf, i64 %i.it, i1 false)
  %i.ug = or disjoint i64 %i.mh, 7                ; 2 uses
  %i.uh = icmp samesign ult i64 %i.ug, %i.iz
  br i1 %i.uh, label %.split.8.i, label %.lr.ph.i.preheader

.split.8.i:                                       ; preds = %.split.7.i
  %i.ui = mul nsw i64 %i.ug, %i.iy
  %i.uj = getelementptr inbounds i8, ptr %i.gn, i64 %i.ui
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr readonly align 1 %i.uj, i64 %i.it, i1 false)
  %i.uk = or disjoint i64 %i.mh, 8                ; 2 uses
  %i.ul = icmp samesign ult i64 %i.uk, %i.iz
  br i1 %i.ul, label %.split.9.i, label %.lr.ph.i.preheader

.split.9.i:                                       ; preds = %.split.8.i
  %i.um = mul nsw i64 %i.uk, %i.iy
  %i.un = getelementptr inbounds i8, ptr %i.gn, i64 %i.um
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr readonly align 1 %i.un, i64 %i.it, i1 false)
  %i.uo = or disjoint i64 %i.mh, 9                ; 2 uses
  %i.up = icmp samesign ult i64 %i.uo, %i.iz
  br i1 %i.up, label %.split.10.i, label %.lr.ph.i.preheader

.split.10.i:                                      ; preds = %.split.9.i
  %i.uq = mul nsw i64 %i.uo, %i.iy
  %i.ur = getelementptr inbounds i8, ptr %i.gn, i64 %i.uq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jq, ptr readonly align 1 %i.ur, i64 %i.it, i1 false)
  %i.us = or disjoint i64 %i.mh, 10               ; 2 uses
  %i.ut = icmp samesign ult i64 %i.us, %i.iz
  br i1 %i.ut, label %.split.11.i, label %.lr.ph.i.preheader

.split.11.i:                                      ; preds = %.split.10.i
  %i.uu = mul nsw i64 %i.us, %i.iy
  %i.uv = getelementptr inbounds i8, ptr %i.gn, i64 %i.uu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.js, ptr readonly align 1 %i.uv, i64 %i.it, i1 false)
  %i.uw = or disjoint i64 %i.mh, 11               ; 2 uses
  %i.ux = icmp samesign ult i64 %i.uw, %i.iz
  br i1 %i.ux, label %.split.12.i, label %.lr.ph.i.preheader

.split.12.i:                                      ; preds = %.split.11.i
  %i.uy = mul nsw i64 %i.uw, %i.iy
  %i.uz = getelementptr inbounds i8, ptr %i.gn, i64 %i.uy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr readonly align 1 %i.uz, i64 %i.it, i1 false)
  %i.va = or disjoint i64 %i.mh, 12               ; 2 uses
  %i.vb = icmp samesign ult i64 %i.va, %i.iz
  br i1 %i.vb, label %.split.13.i, label %.lr.ph.i.preheader

.split.13.i:                                      ; preds = %.split.12.i
  %i.vc = mul nsw i64 %i.va, %i.iy
  %i.vd = getelementptr inbounds i8, ptr %i.gn, i64 %i.vc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr readonly align 1 %i.vd, i64 %i.it, i1 false)
  %i.ve = or disjoint i64 %i.mh, 13               ; 2 uses
  %i.vf = icmp samesign ult i64 %i.ve, %i.iz
  br i1 %i.vf, label %.split.14.i, label %.lr.ph.i.preheader

.split.14.i:                                      ; preds = %.split.13.i
  %i.vg = mul nsw i64 %i.ve, %i.iy
  %i.vh = getelementptr inbounds i8, ptr %i.gn, i64 %i.vg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jy, ptr readonly align 1 %i.vh, i64 %i.it, i1 false)
  %i.vi = or disjoint i64 %i.mh, 14               ; 2 uses
  %i.vj = icmp samesign ult i64 %i.vi, %i.iz
  br i1 %i.vj, label %.split.15.i, label %.lr.ph.i.preheader

.split.15.i:                                      ; preds = %.split.14.i
  %i.vk = mul nsw i64 %i.vi, %i.iy
  %i.vl = getelementptr inbounds i8, ptr %i.gn, i64 %i.vk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr readonly align 1 %i.vl, i64 %i.it, i1 false)
  %i.vm = or disjoint i64 %i.mh, 15               ; 2 uses
  %i.vn = icmp samesign ult i64 %i.vm, %i.iz
  br i1 %i.vn, label %.critedge.thread566.i, label %.lr.ph.i.preheader

.critedge.thread566.i:                            ; preds = %.split.15.i
  %i.vo = mul nsw i64 %i.vm, %i.iy
  %i.vp = getelementptr inbounds i8, ptr %i.gn, i64 %i.vo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr readonly align 1 %i.vp, i64 %i.it, i1 false)
  br label %.critedge2.i

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.preheader, %bb.n
  %indvars.iv408.i = phi i64 [ %indvars.iv.next409.i, %bb.n ], [ %indvars.iv408.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %7 = or disjoint i64 %indvars.iv408.i, %i.mh
  %8 = icmp samesign ult i64 %7, %6
  br i1 %8, label %bb.n, label %.critedge2.i

bb.n:                                             ; preds = %.lr.ph.i.a
  %i.vq = mul nsw i64 %indvars.iv408.i, %i.hr
  %i.vr = getelementptr inbounds i8, ptr %i.hi, i64 %i.vq
  %i.vs = add nsw i64 %indvars.iv408.i, -1
  %i.vt = mul nsw i64 %i.vs, %i.hr
  %i.vu = getelementptr inbounds i8, ptr %i.hi, i64 %i.vt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vr, ptr align 1 %i.vu, i64 %i.iw, i1 false)
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 1 ; 2 uses
  %exitcond412.not.i = icmp eq i64 %indvars.iv.next409.i, 16
  br i1 %exitcond412.not.i, label %.critedge2.i, label %.lr.ph.i.a, !llvm.loop !146

.critedge2.i:                                     ; preds = %bb.n, %.lr.ph.i.a, %.prol.loopexit559, %.lr.ph.us.i.15.new, %.critedge.thread566.i
  br i1 %i.ix, label %.lr.ph366.i, label %._crit_edge.i

.lr.ph366.i:                                      ; preds = %.critedge2.i, %.lr.ph366.i
  %.1316365.i = phi i32 [ %i.wh, %.lr.ph366.i ], [ 0, %.critedge2.i ] ; 4 uses
  store i32 %.1316365.i, ptr %i.df, align 4, !tbaa !147
  %i.vv = load i32, ptr %i.ck, align 16, !tbaa !112 ; 2 uses
  %i.vw = load i32, ptr %i.de, align 8, !tbaa !127
  %i.vx = shl nsw i32 %i.vw, 1                    ; 2 uses
  %i.vy = mul nsw i32 %i.vx, %i.vv                ; 2 uses
  %i.vz = shl nuw nsw i32 %.1316365.i, 1          ; 3 uses
  %i.wa = add nsw i32 %i.vy, %i.vz
  store i32 %i.wa, ptr %i.dg, align 16, !tbaa !66
  %i.wb = or disjoint i32 %i.vz, 1
  %i.wc = add i32 %i.wb, %i.vy
  store i32 %i.wc, ptr %i.dh, align 4, !tbaa !66
  %i.wd = or disjoint i32 %i.vx, 1
  %i.we = mul nsw i32 %i.wd, %i.vv
  %i.wf = add i32 %i.we, %i.vz                    ; 2 uses
  store i32 %i.wf, ptr %i.di, align 8, !tbaa !66
  %i.wg = add i32 %i.wf, 1
  store i32 %i.wg, ptr %i.dj, align 4, !tbaa !66
  call void @ff_estimate_p_frame_motion(ptr noundef nonnull %i.f, i32 noundef %.1316365.i, i32 noundef %i.mm) #8
  %i.wh = add nuw nsw i32 %.1316365.i, 1          ; 2 uses
  %exitcond413.not.i = icmp eq i32 %i.wh, %i.hm
  br i1 %exitcond413.not.i, label %._crit_edge.i, label %.lr.ph366.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %.lr.ph366.i, %.critedge2.i
  store i32 0, ptr %i.dd, align 4, !tbaa !126
  %indvars.iv.next415.i = add nuw nsw i64 %indvars.iv414.i, 1 ; 2 uses
  %exitcond419.not.i = icmp eq i64 %indvars.iv.next415.i, %wide.trip.count418.i
  br i1 %exitcond419.not.i, label %._crit_edge370.i, label %bb.m, !llvm.loop !149

._crit_edge370.i:                                 ; preds = %._crit_edge.i, %bb.l
  call void @ff_fix_long_p_mvs(ptr noundef nonnull %i.f, i32 noundef 1) #8
  %i.wi = load ptr, ptr %i.da, align 16, !tbaa !123
  %i.wj = load i32, ptr %i.cl, align 8, !tbaa !113
  call void @ff_fix_long_mvs(ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 0, ptr noundef %i.wi, i32 noundef %i.wj, i32 noundef 2, i32 noundef 0) #8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge370.i, %bb.k
  store i32 1, ptr %i.dd, align 4, !tbaa !126
  %factor.op.mul388.i = shl i32 %i.hd, 4          ; 2 uses
  %i.wk = icmp sgt i32 %i.gy, 0
  br i1 %i.wk, label %.preheader358.lr.ph.i, label %.loopexit

.preheader358.lr.ph.i:                            ; preds = %bb.o
  %i.wl = sext i32 %i.gw to i64                   ; 82 uses
  %i.wm = shl nsw i32 %i.hm, 4                    ; 2 uses
  %i.wn = icmp slt i32 %i.gw, %i.wm
  %i.wo = sext i32 %i.wm to i64                   ; 21 uses
  %i.wp = icmp sgt i32 %i.hl, 15
  %i.wq = mul nuw nsw i32 %i.hk, 3
  %i.wr = sext i32 %factor.op.mul388.i to i64
  %i.ws = sext i32 %i.hd to i64                   ; 29 uses
  %i.wt = zext nneg i32 %i.gy to i64              ; 31 uses
  %i.wu = sext i32 %i.ha to i64                   ; 32 uses
  %smax490.i = call i32 @llvm.smax.i32(i32 %i.ho, i32 1)
  %wide.trip.count491.i = zext nneg i32 %smax490.i to i64
  %i.wv = getelementptr i8, ptr %i.hi, i64 %i.ws  ; 11 uses
  %i.ww = shl nsw i64 %i.ws, 1
  %i.wx = getelementptr inbounds i8, ptr %i.hi, i64 %i.ww
  %i.wy = mul nsw i64 %i.ws, 3                    ; 2 uses
  %i.wz = getelementptr i8, ptr %i.hi, i64 %i.wy  ; 11 uses
  %i.xa = shl nsw i64 %i.ws, 2
  %i.xb = getelementptr inbounds i8, ptr %i.hi, i64 %i.xa
  %i.xc = mul nsw i64 %i.ws, 5                    ; 2 uses
  %i.xd = getelementptr i8, ptr %i.hi, i64 %i.xc  ; 11 uses
  %i.xe = mul nsw i64 %i.ws, 6                    ; 2 uses
  %i.xf = getelementptr i8, ptr %i.hi, i64 %i.xe  ; 11 uses
  %i.xg = mul nsw i64 %i.ws, 7                    ; 2 uses
  %i.xh = getelementptr i8, ptr %i.hi, i64 %i.xg  ; 11 uses
  %i.xi = shl nsw i64 %i.ws, 3
  %i.xj = getelementptr inbounds i8, ptr %i.hi, i64 %i.xi
  %i.xk = mul nsw i64 %i.ws, 9                    ; 2 uses
  %i.xl = getelementptr i8, ptr %i.hi, i64 %i.xk  ; 11 uses
  %i.xm = mul nsw i64 %i.ws, 10                   ; 2 uses
  %i.xn = getelementptr i8, ptr %i.hi, i64 %i.xm  ; 11 uses
  %i.xo = mul nsw i64 %i.ws, 11                   ; 2 uses
  %i.xp = getelementptr i8, ptr %i.hi, i64 %i.xo  ; 11 uses
  %i.xq = mul nsw i64 %i.ws, 12                   ; 2 uses
  %i.xr = getelementptr i8, ptr %i.hi, i64 %i.xq  ; 11 uses
  %i.xs = mul nsw i64 %i.ws, 13                   ; 2 uses
  %i.xt = getelementptr i8, ptr %i.hi, i64 %i.xs  ; 11 uses
  %i.xu = mul nsw i64 %i.ws, 14                   ; 2 uses
  %i.xv = getelementptr i8, ptr %i.hi, i64 %i.xu  ; 11 uses
  %i.xw = mul nsw i64 %i.ws, 15                   ; 2 uses
  %i.xx = getelementptr i8, ptr %i.hi, i64 %i.xw  ; 11 uses
  %wide.trip.count484.i = zext nneg i32 %i.hm to i64
  %i.xy = shl nsw i64 %i.ws, 1                    ; 2 uses
  %i.xz = getelementptr i8, ptr %i.hi, i64 %i.xy  ; 10 uses
  %i.ya = shl nsw i64 %i.ws, 2                    ; 2 uses
  %i.yb = getelementptr i8, ptr %i.hi, i64 %i.ya  ; 10 uses
  %i.yc = shl nsw i64 %i.ws, 3                    ; 2 uses
  %i.yd = getelementptr i8, ptr %i.hi, i64 %i.yc  ; 10 uses
  %scevgep390 = getelementptr i8, ptr %i.he, i64 -1 ; 3 uses
  %i.ye = getelementptr i8, ptr %scevgep390, i64 %i.wl
  %scevgep391 = getelementptr i8, ptr %i.ye, i64 %i.hh
  %i.yf = getelementptr i8, ptr %scevgep390, i64 %i.ws
  %i.yg = getelementptr i8, ptr %i.yf, i64 %i.wl
  %scevgep394 = getelementptr i8, ptr %i.yg, i64 %i.hh
  %i.yh = getelementptr i8, ptr %scevgep390, i64 %i.xy
  %i.yi = getelementptr i8, ptr %i.yh, i64 %i.wl
  %scevgep397 = getelementptr i8, ptr %i.yi, i64 %i.hh
  %scevgep400 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.yj = getelementptr i8, ptr %scevgep400, i64 %i.wy
  %i.yk = getelementptr i8, ptr %i.yj, i64 %i.wl
  %scevgep401 = getelementptr i8, ptr %i.yk, i64 %i.hh
  %i.yl = getelementptr i8, ptr %scevgep400, i64 %i.ya
  %i.ym = getelementptr i8, ptr %i.yl, i64 %i.wl
  %scevgep404 = getelementptr i8, ptr %i.ym, i64 %i.hh
  %scevgep407 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.yn = getelementptr i8, ptr %scevgep407, i64 %i.xc
  %i.yo = getelementptr i8, ptr %i.yn, i64 %i.wl
  %scevgep408 = getelementptr i8, ptr %i.yo, i64 %i.hh
  %i.yp = getelementptr i8, ptr %scevgep407, i64 %i.xe
  %i.yq = getelementptr i8, ptr %i.yp, i64 %i.wl
  %scevgep411 = getelementptr i8, ptr %i.yq, i64 %i.hh
  %scevgep414 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.yr = getelementptr i8, ptr %scevgep414, i64 %i.xg
  %i.ys = getelementptr i8, ptr %i.yr, i64 %i.wl
  %scevgep415 = getelementptr i8, ptr %i.ys, i64 %i.hh
  %i.yt = getelementptr i8, ptr %scevgep414, i64 %i.yc
  %i.yu = getelementptr i8, ptr %i.yt, i64 %i.wl
  %scevgep418 = getelementptr i8, ptr %i.yu, i64 %i.hh
  %scevgep421 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.yv = getelementptr i8, ptr %scevgep421, i64 %i.xk
  %i.yw = getelementptr i8, ptr %i.yv, i64 %i.wl
  %scevgep422 = getelementptr i8, ptr %i.yw, i64 %i.hh
  %i.yx = getelementptr i8, ptr %scevgep421, i64 %i.xm
  %i.yy = getelementptr i8, ptr %i.yx, i64 %i.wl
  %scevgep425 = getelementptr i8, ptr %i.yy, i64 %i.hh
  %scevgep428 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.yz = getelementptr i8, ptr %scevgep428, i64 %i.xo
  %i.za = getelementptr i8, ptr %i.yz, i64 %i.wl
  %scevgep429 = getelementptr i8, ptr %i.za, i64 %i.hh
  %i.zb = getelementptr i8, ptr %scevgep428, i64 %i.xq
  %i.zc = getelementptr i8, ptr %i.zb, i64 %i.wl
  %scevgep432 = getelementptr i8, ptr %i.zc, i64 %i.hh
  %scevgep435 = getelementptr i8, ptr %i.he, i64 -1 ; 2 uses
  %i.zd = getelementptr i8, ptr %scevgep435, i64 %i.xs
  %i.ze = getelementptr i8, ptr %i.zd, i64 %i.wl
  %scevgep436 = getelementptr i8, ptr %i.ze, i64 %i.hh
  %i.zf = getelementptr i8, ptr %scevgep435, i64 %i.xu
  %i.zg = getelementptr i8, ptr %i.zf, i64 %i.wl
  %scevgep439 = getelementptr i8, ptr %i.zg, i64 %i.hh
  %scevgep442 = getelementptr i8, ptr %i.he, i64 -1
  %i.zh = getelementptr i8, ptr %scevgep442, i64 %i.xw
  %i.zi = getelementptr i8, ptr %i.zh, i64 %i.wl
  %scevgep443 = getelementptr i8, ptr %i.zi, i64 %i.hh
  %i.zj = sub nsw i64 %i.wo, %i.wl                ; 16 uses
  %i.zk = xor i64 %i.wl, -1
  %i.zl = add nsw i64 %i.zk, %i.wo                ; 16 uses
  %xtraiter565 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod566.not = icmp eq i64 %xtraiter565, 0
  %i.zm = icmp ult i64 %i.zl, 7
  %xtraiter598 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  %i.zn = icmp ult i64 %i.zl, 7
  %xtraiter603 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  %i.zo = icmp ult i64 %i.zl, 7
  %xtraiter608 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod609.not = icmp eq i64 %xtraiter608, 0
  %i.zp = icmp ult i64 %i.zl, 7
  %xtraiter613 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod614.not = icmp eq i64 %xtraiter613, 0
  %i.zq = icmp ult i64 %i.zl, 7
  %xtraiter618 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  %i.zr = icmp ult i64 %i.zl, 7
  %xtraiter623 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  %i.zs = icmp ult i64 %i.zl, 7
  %xtraiter628 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod629.not = icmp eq i64 %xtraiter628, 0
  %i.zt = icmp ult i64 %i.zl, 7
  %xtraiter633 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod634.not = icmp eq i64 %xtraiter633, 0
  %i.zu = icmp ult i64 %i.zl, 7
  %xtraiter638 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  %i.zv = icmp ult i64 %i.zl, 7
  %xtraiter643 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod644.not = icmp eq i64 %xtraiter643, 0
  %i.zw = icmp ult i64 %i.zl, 7
  %xtraiter648 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  %i.zx = icmp ult i64 %i.zl, 7
  %xtraiter653 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod654.not = icmp eq i64 %xtraiter653, 0
  %i.zy = icmp ult i64 %i.zl, 7
  %xtraiter658 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  %i.zz = icmp ult i64 %i.zl, 7
  %xtraiter663 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  %i.aaa = icmp ult i64 %i.zl, 7
  %xtraiter671 = and i64 %i.zj, 7                 ; 2 uses
  %lcmp.mod672.not = icmp eq i64 %xtraiter671, 0
  %i.aab = icmp ult i64 %i.zl, 7
  br label %.preheader358.i

.preheader358.i:                                  ; preds = %._crit_edge387.i, %.preheader358.lr.ph.i
  %indvars.iv486.i = phi i64 [ 0, %.preheader358.lr.ph.i ], [ %indvars.iv.next487.i, %._crit_edge387.i ] ; 5 uses
  %i.aac = shl nuw nsw i64 %indvars.iv486.i, 4    ; 33 uses
  %i.aad = icmp samesign ult i64 %i.aac, %i.wt    ; 2 uses
  br i1 %i.wn, label %.preheader358.split.us.i.preheader, label %.preheader358.split.preheader.i

.preheader358.split.us.i.preheader:               ; preds = %.preheader358.i
  br i1 %i.aad, label %.lr.ph373.us.i, label %.lr.ph379.i.preheader

.preheader358.split.preheader.i:                  ; preds = %.preheader358.i
  br i1 %i.aad, label %.preheader358.split.1.i, label %.lr.ph379.i.preheader

.lr.ph379.i.preheader:                            ; preds = %.preheader358.split.us.i.preheader, %._crit_edge374.us.i, %._crit_edge374.us.i.1, %._crit_edge374.us.i.2, %._crit_edge374.us.i.3, %._crit_edge374.us.i.4, %._crit_edge374.us.i.5, %._crit_edge374.us.i.6, %._crit_edge374.us.i.7, %._crit_edge374.us.i.8, %._crit_edge374.us.i.9, %._crit_edge374.us.i.10, %._crit_edge374.us.i.11, %._crit_edge374.us.i.12, %._crit_edge374.us.i.13, %._crit_edge374.us.i.14, %.preheader358.split.15.i, %.preheader358.split.14.i, %.preheader358.split.13.i, %.preheader358.split.12.i, %.preheader358.split.11.i, %.preheader358.split.10.i, %.preheader358.split.9.i, %.preheader358.split.8.i, %.preheader358.split.7.i, %.preheader358.split.6.i, %.preheader358.split.5.i, %.preheader358.split.4.i, %.preheader358.split.3.i, %.preheader358.split.2.i, %.preheader358.split.1.i, %.preheader358.split.preheader.i
  %i.aae = phi i1 [ true, %._crit_edge374.us.i.14 ], [ false, %._crit_edge374.us.i.13 ], [ false, %._crit_edge374.us.i.12 ], [ false, %._crit_edge374.us.i.11 ], [ false, %._crit_edge374.us.i.10 ], [ false, %._crit_edge374.us.i.9 ], [ false, %._crit_edge374.us.i.8 ], [ false, %._crit_edge374.us.i.7 ], [ false, %._crit_edge374.us.i.6 ], [ false, %._crit_edge374.us.i.5 ], [ false, %._crit_edge374.us.i.4 ], [ false, %._crit_edge374.us.i.3 ], [ false, %._crit_edge374.us.i.2 ], [ false, %._crit_edge374.us.i.1 ], [ false, %._crit_edge374.us.i ], [ false, %.preheader358.split.us.i.preheader ], [ false, %.preheader358.split.1.i ], [ true, %.preheader358.split.15.i ], [ false, %.preheader358.split.2.i ], [ false, %.preheader358.split.10.i ], [ false, %.preheader358.split.3.i ], [ false, %.preheader358.split.14.i ], [ false, %.preheader358.split.4.i ], [ false, %.preheader358.split.9.i ], [ false, %.preheader358.split.5.i ], [ false, %.preheader358.split.13.i ], [ false, %.preheader358.split.6.i ], [ false, %.preheader358.split.11.i ], [ false, %.preheader358.split.7.i ], [ false, %.preheader358.split.12.i ], [ false, %.preheader358.split.8.i ], [ false, %.preheader358.split.preheader.i ]
  %indvars.iv439.i.ph = phi i64 [ 15, %._crit_edge374.us.i.14 ], [ 14, %._crit_edge374.us.i.13 ], [ 13, %._crit_edge374.us.i.12 ], [ 12, %._crit_edge374.us.i.11 ], [ 11, %._crit_edge374.us.i.10 ], [ 10, %._crit_edge374.us.i.9 ], [ 9, %._crit_edge374.us.i.8 ], [ 8, %._crit_edge374.us.i.7 ], [ 7, %._crit_edge374.us.i.6 ], [ 6, %._crit_edge374.us.i.5 ], [ 5, %._crit_edge374.us.i.4 ], [ 4, %._crit_edge374.us.i.3 ], [ 3, %._crit_edge374.us.i.2 ], [ 2, %._crit_edge374.us.i.1 ], [ 1, %._crit_edge374.us.i ], [ 0, %.preheader358.split.us.i.preheader ], [ 1, %.preheader358.split.1.i ], [ 15, %.preheader358.split.15.i ], [ 2, %.preheader358.split.2.i ], [ 10, %.preheader358.split.10.i ], [ 3, %.preheader358.split.3.i ], [ 14, %.preheader358.split.14.i ], [ 4, %.preheader358.split.4.i ], [ 9, %.preheader358.split.9.i ], [ 5, %.preheader358.split.5.i ], [ 13, %.preheader358.split.13.i ], [ 6, %.preheader358.split.6.i ], [ 11, %.preheader358.split.11.i ], [ 7, %.preheader358.split.7.i ], [ 12, %.preheader358.split.12.i ], [ 8, %.preheader358.split.8.i ], [ 0, %.preheader358.split.preheader.i ] ; 5 uses
  %xtraiter666 = and i64 %indvars.iv439.i.ph, 1
  %lcmp.mod667.not = icmp eq i64 %xtraiter666, 0
  br i1 %lcmp.mod667.not, label %.lr.ph379.i.prol.loopexit, label %.lr.ph379.i.prol

.lr.ph379.i.prol:                                 ; preds = %.lr.ph379.i.preheader
  %i.aaf = mul nsw i64 %indvars.iv439.i.ph, %i.ws
  %i.aag = getelementptr inbounds i8, ptr %i.hi, i64 %i.aaf
  %i.aah = add nsw i64 %indvars.iv439.i.ph, -1
  %i.aai = mul nsw i64 %i.aah, %i.ws
  %i.aaj = getelementptr inbounds i8, ptr %i.hi, i64 %i.aai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aag, ptr align 1 %i.aaj, i64 %i.wo, i1 false)
  %indvars.iv.next440.i.prol = add nuw nsw i64 %indvars.iv439.i.ph, 1
  br label %.lr.ph379.i.prol.loopexit
end_hunk_0
begin_hunk_1_@encode_block:bb.a
bb.ab:                                            ; preds = %bb.aa, %bb.z
  %reass.sub.i270 = add nsw i32 %.0.i.i268, 32
  br label %put_bits.exit273

put_bits.exit273:                                 ; preds = %bb.x, %bb.ab
  %.026.i.i271 = phi i32 [ %i.le, %bb.x ], [ %i.lb, %bb.ab ] ; 2 uses
  %.0.i.i268.pn = phi i32 [ %.0.i.i268, %bb.x ], [ %reass.sub.i270, %bb.ab ]
  %.0.i.i272 = sub i32 %.0.i.i268.pn, %i.kz       ; 2 uses
  store i32 %.026.i.i271, ptr %i.jp, align 8, !tbaa !103
  store i32 %.0.i.i272, ptr %i.jz, align 4, !tbaa !101
  %i.lu = icmp sgt i32 %.2239, 0
  br i1 %i.lu, label %.lr.ph, label %.preheader280

.lr.ph:                                           ; preds = %put_bits.exit273
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 3 uses
  %wide.trip.count362 = zext nneg i32 %.2239 to i64
  br label %bb.ac

.preheader280:                                    ; preds = %put_bits.exit277, %put_bits.exit273
  %i.lx = getelementptr inbounds [512 x i8], ptr %i.l, i64 %i.jq
  %i.ly = sext i32 %4 to i64
  %wide.trip.count372 = zext nneg i32 %i.g to i64
  %wide.trip.count367 = zext nneg i32 %i.d to i64
  %i.lz = add nsw i64 %wide.trip.count338, -1
  %i.ma = mul nsw i64 %i.lz, %i.m
  %i.mb = add nsw i64 %i.ma, %wide.trip.count333  ; 2 uses
  %scevgep479 = getelementptr i8, ptr %3, i64 %i.mb ; 2 uses
  %scevgep480 = getelementptr i8, ptr %1, i64 %i.mb
  %i.mc = mul nuw nsw i64 %i.k, 3584
  %i.md = shl nsw i64 %i.jq, 9
  %i.me = shl nuw nsw i64 %wide.trip.count333, 1
  %i.mf = getelementptr i8, ptr %0, i64 %i.mc
  %i.mg = getelementptr i8, ptr %i.mf, i64 %i.md
  %i.mh = getelementptr i8, ptr %i.mg, i64 %i.me
  %scevgep481 = getelementptr i8, ptr %i.mh, i64 10896
  %min.iters.check494 = icmp samesign ult i32 %5, 2
  %bound0483 = icmp ult ptr %3, %scevgep480
  %bound1484 = icmp ult ptr %1, %scevgep479
  %found.conflict485 = and i1 %bound0483, %bound1484
  %stride.check491 = icmp slt i32 %4, 0
  %invariant.op = or i1 %stride.check491, %found.conflict485
  %n.vec496 = and i64 %wide.trip.count333, 504
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.3246, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader

bb.ac:                                            ; preds = %.lr.ph, %put_bits.exit277
  %i.mi = phi i32 [ %.0.i.i272, %.lr.ph ], [ %i.nc, %put_bits.exit277 ] ; 4 uses
  %i.mj = phi i32 [ %.026.i.i271, %.lr.ph ], [ %.026.i.i275, %put_bits.exit277 ] ; 2 uses
  %indvars.iv359 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next360, %put_bits.exit277 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv359
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !66 ; 4 uses
  %i.mm = icmp sgt i32 %i.mi, 4
  br i1 %i.mm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.mn = shl i32 %i.mj, 4
  %i.mo = or i32 %i.mn, %i.ml
  br label %put_bits.exit277

bb.ae:                                            ; preds = %bb.ac
  %i.mp = load ptr, ptr %i.lv, align 8, !tbaa !99
  %i.mq = load ptr, ptr %i.lw, align 8, !tbaa !100 ; 2 uses
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = icmp ugt i64 %i.mt, 3
  br i1 %i.mu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mv = shl i32 %i.mj, %i.mi
  %i.mw = sub nsw i32 4, %i.mi
  %i.mx = lshr i32 %i.ml, %i.mw
  %i.my = or i32 %i.mx, %i.mv
  %i.mz = tail call i32 @llvm.bswap.i32(i32 %i.my)
  store i32 %i.mz, ptr %i.mq, align 1, !tbaa !102
  %i.na = load ptr, ptr %i.lw, align 8, !tbaa !100
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store ptr %i.nb, ptr %i.lw, align 8, !tbaa !100
  br label %put_bits.exit277

bb.ag:                                            ; preds = %bb.ae
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %put_bits.exit277

put_bits.exit277:                                 ; preds = %bb.af, %bb.ag, %bb.ad
  %.sink411 = phi i32 [ -4, %bb.ad ], [ 28, %bb.ag ], [ 28, %bb.af ]
  %.026.i.i275 = phi i32 [ %i.mo, %bb.ad ], [ %i.ml, %bb.ag ], [ %i.ml, %bb.af ] ; 2 uses
  %i.nc = add nsw i32 %i.mi, %.sink411            ; 2 uses
  store i32 %.026.i.i275, ptr %i.jp, align 8, !tbaa !103
  store i32 %i.nc, ptr %i.jz, align 4, !tbaa !101
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %.preheader280, label %bb.ac, !llvm.loop !214

.preheader:                                       ; preds = %.preheader280, %middle.block502
  %indvars.iv369 = phi i64 [ 0, %.preheader280 ], [ %indvars.iv.next370, %middle.block502 ] ; 3 uses
  %i.nd = mul nsw i64 %indvars.iv369, %i.ly       ; 3 uses
  %i.ne = trunc nuw nsw i64 %indvars.iv369 to i32
  %i.nf = shl i32 %i.ne, %i.h
  %i.ng = sext i32 %i.nf to i64                   ; 2 uses
  %invariant.gep409 = getelementptr [2 x i8], ptr %i.lx, i64 %i.ng ; 4 uses
  br i1 %min.iters.check494, label %scalar.ph493.preheader, label %vector.memcheck478

scalar.ph493.preheader:                           ; preds = %vector.memcheck478, %.preheader
  br label %scalar.ph493

vector.memcheck478:                               ; preds = %.preheader
  %i.nh = shl nsw i64 %i.ng, 1
  %scevgep482 = getelementptr i8, ptr %scevgep481, i64 %i.nh
  %bound0488 = icmp ult ptr %3, %scevgep482
  %bound1489 = icmp ult ptr %invariant.gep409, %scevgep479
  %found.conflict490 = and i1 %bound0488, %bound1489
  %conflict.rdx492.reass = or i1 %found.conflict490, %invariant.op
  br i1 %conflict.rdx492.reass, label %scalar.ph493.preheader, label %vector.body497

vector.body497:                                   ; preds = %vector.memcheck478, %vector.body497
  %index498 = phi i64 [ %index.next501, %vector.body497 ], [ 0, %vector.memcheck478 ] ; 3 uses
  %i.ni = add nsw i64 %index498, %i.nd            ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %1, i64 %i.ni
  %wide.load499 = load <8 x i8>, ptr %i.nj, align 1, !tbaa !102, !alias.scope !215
  %i.nk = zext <8 x i8> %wide.load499 to <8 x i32>
  %i.nl = getelementptr [2 x i8], ptr %invariant.gep409, i64 %index498
  %wide.load500 = load <8 x i16>, ptr %i.nl, align 2, !tbaa !169, !alias.scope !218
  %i.nm = zext <8 x i16> %wide.load500 to <8 x i32>
  %i.nn = add nsw <8 x i32> %broadcast.splat, %i.nk
  %i.no = sub nsw <8 x i32> %i.nn, %i.nm
  %i.np = trunc <8 x i32> %i.no to <8 x i8>
  %i.nq = getelementptr inbounds i8, ptr %3, i64 %i.ni
  store <8 x i8> %i.np, ptr %i.nq, align 1, !tbaa !102, !alias.scope !220, !noalias !222
  %index.next501 = add nuw i64 %index498, 8       ; 2 uses
  %i.nr = icmp eq i64 %index.next501, %n.vec496
  br i1 %i.nr, label %middle.block502, label %vector.body497, !llvm.loop !223

scalar.ph493:                                     ; preds = %scalar.ph493, %scalar.ph493.preheader
  %indvars.iv364 = phi i64 [ 0, %scalar.ph493.preheader ], [ %indvars.iv.next365.1, %scalar.ph493 ] ; 4 uses
  %i.ns = add nsw i64 %indvars.iv364, %i.nd       ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %1, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !102
  %i.nv = zext i8 %i.nu to i32
  %gep410 = getelementptr [2 x i8], ptr %invariant.gep409, i64 %indvars.iv364
  %i.nw = load i16, ptr %gep410, align 2, !tbaa !169
  %i.nx = zext i16 %i.nw to i32
  %i.ny = add nsw i32 %.3246, %i.nv
  %i.nz = sub nsw i32 %i.ny, %i.nx
  %i.oa = trunc i32 %i.nz to i8
  %i.ob = getelementptr inbounds i8, ptr %3, i64 %i.ns
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !102
  %indvars.iv.next365 = or disjoint i64 %indvars.iv364, 1 ; 2 uses
  %i.oc = add nsw i64 %indvars.iv.next365, %i.nd  ; 2 uses
  %i.od = getelementptr inbounds i8, ptr %1, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !102
  %i.of = zext i8 %i.oe to i32
  %gep410.1 = getelementptr [2 x i8], ptr %invariant.gep409, i64 %indvars.iv.next365
  %i.og = load i16, ptr %gep410.1, align 2, !tbaa !169
  %i.oh = zext i16 %i.og to i32
  %i.oi = add nsw i32 %.3246, %i.of
  %i.oj = sub nsw i32 %i.oi, %i.oh
  %i.ok = trunc i32 %i.oj to i8
  %i.ol = getelementptr inbounds i8, ptr %3, i64 %i.oc
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !102
  %indvars.iv.next365.1 = add nuw nsw i64 %indvars.iv364, 2 ; 2 uses
  %exitcond368.not.1 = icmp eq i64 %indvars.iv.next365.1, %wide.trip.count367
  br i1 %exitcond368.not.1, label %middle.block502, label %scalar.ph493, !llvm.loop !224

middle.block502:                                  ; preds = %vector.body497, %scalar.ph493
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %.loopexit, label %.preheader, !llvm.loop !225

.loopexit:                                        ; preds = %middle.block502, %bb.r
  %.9393398 = phi i32 [ %.9392, %bb.r ], [ %.9393399, %middle.block502 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.9393398
}

declare ptr @ff_h263_pred_motion(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_h263_encode_motion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_copy_bits(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 112}
!30 = !{!10, !6, i64 116}
!31 = !{!10, !6, i64 64}
!32 = !{!33, !53, i64 10656}
!33 = !{!"SVQ1EncContext", !34, i64 0, !37, i64 9856, !63, i64 9864, !53, i64 10656, !53, i64 10664, !6, i64 10672, !6, i64 10676, !7, i64 10680, !6, i64 10872, !6, i64 10876, !6, i64 10880, !6, i64 10884, !7, i64 10896, !19, i64 32400, !26, i64 32408, !7, i64 32416, !7, i64 32440, !15, i64 32464, !16, i64 32472, !64, i64 32480}
!34 = !{!"MPVEncContext", !35, i64 0, !56, i64 4384, !6, i64 4416, !6, i64 4420, !26, i64 4424, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !53, i64 4464, !57, i64 4472, !58, i64 4480, !59, i64 4496, !60, i64 4576, !61, i64 4608, !6, i64 5896, !6, i64 5900, !19, i64 5904, !19, i64 5912, !19, i64 5920, !19, i64 5928, !19, i64 5936, !19, i64 5944, !7, i64 5952, !7, i64 6016, !7, i64 6032, !19, i64 6064, !19, i64 6072, !19, i64 6080, !16, i64 6088, !7, i64 6096, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !16, i64 6144, !16, i64 6152, !16, i64 6160, !16, i64 6168, !16, i64 6176, !16, i64 6184, !16, i64 6192, !7, i64 6200, !19, i64 6248, !26, i64 6256, !26, i64 6264, !26, i64 6272, !19, i64 6280, !19, i64 6288, !19, i64 6296, !26, i64 6304, !7, i64 6312, !19, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !7, i64 6360, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !16, i64 6392, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !62, i64 6424, !6, i64 6432, !6, i64 6436, !6, i64 6440, !6, i64 6444, !6, i64 6448, !56, i64 6456, !56, i64 6488, !6, i64 6520, !6, i64 6524, !6, i64 6528, !6, i64 6532, !6, i64 6536, !6, i64 6540, !16, i64 6544, !12, i64 6552, !12, i64 6560, !7, i64 6568, !7, i64 6584, !7, i64 6600, !7, i64 6616, !12, i64 6632, !6, i64 6640, !7, i64 6644, !7, i64 6708, !7, i64 6784}
!35 = !{!"MpegEncContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !36, i64 72, !36, i64 208, !37, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !15, i64 416, !15, i64 424, !38, i64 432, !39, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !40, i64 768, !40, i64 888, !40, i64 1008, !19, i64 1128, !16, i64 1136, !16, i64 1144, !16, i64 1152, !16, i64 1160, !16, i64 1168, !19, i64 1176, !19, i64 1184, !19, i64 1192, !6, i64 1200, !16, i64 1208, !16, i64 1216, !16, i64 1224, !16, i64 1232, !42, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !43, i64 1288, !44, i64 1320, !45, i64 1384, !46, i64 1768, !47, i64 1888, !48, i64 2656, !49, i64 2672, !19, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !26, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !15, i64 3744, !15, i64 3752, !50, i64 3760, !50, i64 3762, !50, i64 3764, !50, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !12, i64 3888, !12, i64 3896, !6, i64 3904, !6, i64 3908, !51, i64 3912}
!36 = !{!"ScanTable", !16, i64 0, !7, i64 8, !7, i64 72}
!37 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!38 = !{!"p1 _ZTS15AVRefStructPool", !12, i64 0}
!39 = !{!"BufferPoolContext", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!40 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !41, i64 48, !16, i64 56, !7, i64 64, !26, i64 80, !16, i64 88, !7, i64 96, !6, i64 112}
!41 = !{!"p1 _ZTS10MPVPicture", !12, i64 0}
!42 = !{!"ScratchpadContext", !16, i64 0, !16, i64 8, !7, i64 16, !6, i64 24}
!43 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!44 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!45 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!46 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!47 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!48 = !{!"VideoDSPContext", !12, i64 0, !12, i64 8}
!49 = !{!"H263DSPContext", !12, i64 0, !12, i64 8}
!50 = !{!"short", !7, i64 0}
!51 = !{!"ERContext", !37, i64 0, !12, i64 8, !26, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !15, i64 40, !15, i64 48, !7, i64 56, !6, i64 60, !16, i64 64, !16, i64 72, !7, i64 80, !16, i64 104, !16, i64 112, !7, i64 120, !52, i64 184, !52, i64 256, !52, i64 328, !7, i64 400, !7, i64 416, !50, i64 432, !50, i64 434, !6, i64 436, !6, i64 440, !12, i64 448, !12, i64 456}
!52 = !{!"ERPicture", !53, i64 0, !54, i64 8, !55, i64 16, !7, i64 24, !7, i64 40, !26, i64 56, !6, i64 64}
!53 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!54 = !{!"p1 _ZTS11ThreadFrame", !12, i64 0}
!55 = !{!"p1 _ZTS14ThreadProgress", !12, i64 0}
!56 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !16, i64 8, !16, i64 16, !16, i64 24}
!57 = !{!"p1 _ZTS17MPVMainEncContext", !12, i64 0}
!58 = !{!"FDCTDSPContext", !12, i64 0, !12, i64 8}
!59 = !{!"MpegvideoEncDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !12, i64 72}
!60 = !{!"PixblockDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!61 = !{!"MotionEstContext", !37, i64 0, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 48, !16, i64 80, !16, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !7, i64 168, !7, i64 296, !6, i64 424, !6, i64 428, !15, i64 432, !15, i64 440, !6, i64 448, !7, i64 456, !7, i64 504, !7, i64 552, !7, i64 600, !7, i64 648, !12, i64 712, !28, i64 720, !28, i64 728, !28, i64 736, !28, i64 744, !16, i64 752, !16, i64 760, !12, i64 768, !7, i64 776, !7, i64 1032}
!62 = !{!"p1 _ZTS12MJpegContext", !12, i64 0}
!63 = !{!"MECmpContext", !12, i64 0, !7, i64 8, !7, i64 56, !7, i64 104, !7, i64 152, !7, i64 200, !7, i64 248, !7, i64 296, !7, i64 344, !7, i64 392, !7, i64 440, !7, i64 488, !7, i64 536, !7, i64 584, !7, i64 632, !7, i64 680, !7, i64 744}
!64 = !{!"SVQ1EncDSPContext", !12, i64 0}
!65 = !{!33, !53, i64 10664}
!66 = !{!6, !6, i64 0}
!67 = !{!33, !16, i64 32472}
!68 = !{!33, !6, i64 10872}
!69 = !{!33, !6, i64 10876}
!70 = !{!33, !37, i64 9856}
!71 = !{!33, !37, i64 344}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!19, !19, i64 0}
!75 = !{!33, !6, i64 3816}
!76 = !{!33, !16, i64 4688}
!77 = !{!33, !16, i64 4696}
!78 = !{!33, !6, i64 10880}
!79 = !{!33, !6, i64 10884}
!80 = !{!33, !19, i64 32400}
!81 = !{!33, !26, i64 32408}
!82 = !{!33, !53, i64 4464}
!83 = !{!64, !12, i64 0}
!84 = !{!33, !16, i64 5360}
!85 = !{!53, !53, i64 0}
!86 = !{!10, !6, i64 332}
!87 = !{!10, !15, i64 824}
!88 = !{!33, !6, i64 10672}
!89 = !{!90, !6, i64 160}
!90 = !{!"AVFrame", !7, i64 0, !7, i64 64, !91, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !92, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !93, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!91 = !{!"p2 omnipotent char", !28, i64 0}
!92 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!93 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!94 = !{!33, !6, i64 10676}
!95 = !{!96, !16, i64 24}
!96 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!97 = !{!96, !6, i64 32}
!98 = !{!56, !16, i64 8}
!99 = !{!56, !16, i64 24}
!100 = !{!56, !16, i64 16}
!101 = !{!56, !6, i64 4}
!102 = !{!7, !7, i64 0}
!103 = !{!56, !6, i64 0}
!104 = !{!16, !16, i64 0}
!105 = !{!15, !15, i64 0}
!106 = !{!35, !15, i64 416}
!107 = !{!35, !6, i64 352}
!108 = !{!35, !6, i64 356}
!109 = !{!35, !6, i64 388}
!110 = !{!35, !6, i64 392}
!111 = !{!35, !6, i64 396}
!112 = !{!35, !6, i64 400}
!113 = !{!33, !6, i64 5896}
!114 = !{!35, !6, i64 1280}
!115 = !{!33, !6, i64 5056}
!116 = !{!33, !6, i64 4416}
!117 = !{!35, !6, i64 1272}
!118 = !{!33, !6, i64 4420}
!119 = !{!12, !12, i64 0}
!120 = !{!33, !16, i64 6088}
!121 = !{!33, !19, i64 6080}
!122 = !{!35, !26, i64 1088}
!123 = !{!33, !19, i64 5904}
!124 = !{!10, !6, i64 260}
!125 = !{!33, !6, i64 4740}
!126 = !{!35, !6, i64 3780}
!127 = !{!35, !6, i64 3112}
!128 = distinct !{!128, !129}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = distinct !{!130, !73}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !129}
!133 = distinct !{!133, !129}
!134 = distinct !{!134, !129}
!135 = distinct !{!135, !129}
!136 = distinct !{!136, !129}
!137 = distinct !{!137, !129}
!138 = distinct !{!138, !129}
!139 = distinct !{!139, !129}
!140 = distinct !{!140, !129}
!141 = distinct !{!141, !129}
!142 = distinct !{!142, !129}
!143 = distinct !{!143, !129}
!144 = distinct !{!144, !129}
!145 = distinct !{!145, !129}
!146 = distinct !{!146, !73}
!147 = !{!35, !6, i64 3108}
!148 = distinct !{!148, !73}
!149 = distinct !{!149, !73}
!150 = distinct !{!150, !129}
!151 = distinct !{!151, !73}
!152 = distinct !{!152, !129}
!153 = distinct !{!153, !129}
!154 = distinct !{!154, !129}
!155 = distinct !{!155, !129}
!156 = distinct !{!156, !129}
!157 = distinct !{!157, !129}
!158 = distinct !{!158, !129}
!159 = distinct !{!159, !129}
!160 = distinct !{!160, !129}
!161 = distinct !{!161, !129}
!162 = distinct !{!162, !129}
!163 = distinct !{!163, !129}
!164 = distinct !{!164, !129}
!165 = distinct !{!165, !129}
!166 = distinct !{!166, !129}
!167 = distinct !{!167, !73}
!168 = !{!33, !19, i64 6064}
!169 = !{!50, !50, i64 0}
!170 = distinct !{!170, !73}
!171 = distinct !{null}
!172 = !{!33, !15, i64 32464}
!173 = distinct !{!173, !73}
!174 = distinct !{!174, !73}
!175 = distinct !{!175, !73}
!176 = distinct !{!176, !73}
!177 = !{!96, !6, i64 40}
!178 = distinct !{!178, !73}
!179 = !{!10, !16, i64 72}
!180 = !{!10, !6, i64 80}
end_hunk_1
