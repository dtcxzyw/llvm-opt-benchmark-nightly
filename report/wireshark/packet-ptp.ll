Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ptp?download=true
inline.NumInlined: 80
inline.NumDeleted: 10
begin_hunk_0_@dissect_ptp_v2:bb.a
  %i.cn = uitofp i32 %i.cm to double
  %i.co = tail call fastcc ptr @get_frame_info_and_opt_create(ptr noundef %1, i8 noundef zeroext range(i8 0, 16) %i.r, i8 noundef zeroext range(i8 0, -15) %i.t, i8 noundef zeroext range(i8 0, -15) %i.g, i8 noundef zeroext %i.v, i8 noundef zeroext 2, i8 noundef zeroext %i.u, i64 noundef %.0, i16 noundef zeroext %.0642, i16 noundef zeroext %i.cl, i1 noundef zeroext false, double noundef %i.cn)
  %i.cp = getelementptr i8, ptr %i.ck, i64 152
  store ptr %i.co, ptr %i.cp, align 8
  store i8 2, ptr %i.ck, align 8
  %i.cq = getelementptr i8, ptr %1, i64 20
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr i8, ptr %i.ck, i64 12
  store i32 %i.cr, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %i.ck, i64 20
  %i.cu = lshr i16 %i.n, 9
  %i.cv = trunc nuw nsw i16 %i.cu to i8
  %i.cw = and i8 %i.cv, 1
  store i8 %i.cw, ptr %i.ct, align 4
  %i.cx = getelementptr i8, ptr %i.ck, i64 72
  %i.cy = getelementptr i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cx, ptr noundef align 8 dereferenceable(16) %i.cy, i64 16, i1 false)
  %i.cz = tail call i64 @tvb_get_uint48(ptr noundef %0, i32 noundef 34, i32 noundef 0)
  %i.da = getelementptr i8, ptr %i.ck, i64 40
  store i64 %i.cz, ptr %i.da, align 8
  %i.db = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef 40, i32 noundef 0)
  %i.dc = getelementptr i8, ptr %i.ck, i64 48
  store i32 %i.db, ptr %i.dc, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.dd = tail call fastcc ptr @get_frame_info_and_opt_create(ptr noundef %1, i8 noundef zeroext range(i8 0, 16) %i.r, i8 noundef zeroext range(i8 0, -15) %i.t, i8 noundef zeroext range(i8 0, -15) %i.g, i8 noundef zeroext %i.v, i8 noundef zeroext 2, i8 noundef zeroext %i.u, i64 noundef %.0, i16 noundef zeroext %.0642, i16 noundef zeroext %i.y, i1 noundef zeroext true, double noundef 1.000000e+00) ; 6 uses
  %i.de = add i16 %i.y, -1
  %i.df = load i32, ptr @ptp_analysis_max_consecutive_delta, align 4
  %i.dg = uitofp i32 %i.df to double
  %i.dh = tail call fastcc ptr @get_frame_info_and_opt_create(ptr noundef %1, i8 noundef zeroext range(i8 0, 16) %i.r, i8 noundef zeroext range(i8 0, -15) %i.t, i8 noundef zeroext range(i8 0, -15) %i.g, i8 noundef zeroext %i.v, i8 noundef zeroext 2, i8 noundef zeroext %i.u, i64 noundef %.0, i16 noundef zeroext %.0642, i16 noundef zeroext %i.de, i1 noundef zeroext false, double noundef %i.dg)
  %i.di = getelementptr i8, ptr %i.dd, i64 152
  store ptr %i.dh, ptr %i.di, align 8
  store i8 2, ptr %i.dd, align 8
  %i.dj = getelementptr i8, ptr %1, i64 20
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr i8, ptr %i.dd, i64 16
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = tail call i64 @tvb_get_uint48(ptr noundef %0, i32 noundef 34, i32 noundef 0)
  %i.dn = getelementptr i8, ptr %i.dd, i64 56
  store i64 %i.dm, ptr %i.dn, align 8
  %i.do = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef 40, i32 noundef 0)
  %i.dp = getelementptr i8, ptr %i.dd, i64 64
  store i32 %i.do, ptr %i.dp, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.j, %bb.i, %bb.h, %bb.g
  %.0641 = phi ptr [ %i.dd, %bb.j ], [ %i.ah, %bb.e ], [ %i.ah, %bb.f ], [ %i.bh, %bb.g ], [ %i.bz, %bb.h ], [ %i.ck, %bb.i ] ; 50 uses
  %.not656 = icmp eq ptr %.0641, null
  br i1 %.not656, label %.critedge700.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = tail call ptr @wmem_file_scope()
  %i.dr = load i32, ptr @proto_ptp, align 4
  tail call void @p_add_proto_data(ptr noundef %i.dq, ptr noundef %1, i32 noundef %i.dr, i32 noundef 0, ptr noundef nonnull %.0641)
  %i.ds = load i8, ptr %.0641, align 8            ; 2 uses
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.du = getelementptr i8, ptr %.0641, i64 8
  %i.dv = load i32, ptr %i.du, align 8
  %.not657 = icmp eq i32 %i.dv, 0
  br i1 %.not657, label %.critedgethread-pre-split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = getelementptr i8, ptr %.0641, i64 12
  %i.dx = load i32, ptr %i.dw, align 4
  %.not658 = icmp eq i32 %i.dx, 0
  br i1 %.not658, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = getelementptr i8, ptr %.0641, i64 66    ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 2, !range !6, !noundef !7
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.eb = getelementptr i8, ptr %.0641, i64 40
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr i8, ptr %.0641, i64 48    ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = udiv i32 %i.ee, 1000000000
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = add i64 %i.ec, %i.eg
  store i64 %i.eh, ptr %4, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ej = load i32, ptr %i.ed, align 8
  %i.ek = urem i32 %i.ej, 1000000000
  store i32 %i.ek, ptr %i.ei, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.el, align 4
  %i.em = getelementptr i8, ptr %.0641, i64 56
  %i.en = load i64, ptr %i.em, align 8            ; 2 uses
  %i.eo = sdiv i64 %i.en, 1000000000
  %i.ep = srem i64 %i.en, 1000000000
  %i.eq = trunc nsw i64 %i.ep to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i64 %i.eo, ptr %5, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.eq, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.es, align 4
  %i.et = getelementptr i8, ptr %.0641, i64 72
  call void @nstime_sum(ptr noundef %i.et, ptr noundef nonnull %4, ptr noundef nonnull %5)
  store i8 1, ptr %i.dy, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.eu = getelementptr i8, ptr %.0641, i64 152   ; 4 uses
  %i.ev = load ptr, ptr %i.eu, align 8            ; 3 uses
  %.not659 = icmp eq ptr %i.ev, null
  br i1 %.not659, label %.critedgethread-pre-split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ew = load i8, ptr %i.ev, align 8
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.s, label %.critedgethread-pre-split

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr i8, ptr %i.ev, i64 8
  %i.ez = load i32, ptr %i.ey, align 8
  %.not660 = icmp eq i32 %i.ez, 0
  br i1 %.not660, label %.critedgethread-pre-split, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.fa = getelementptr i8, ptr %.0641, i64 24
  %i.fb = load ptr, ptr %i.eu, align 8
  %i.fc = getelementptr i8, ptr %i.fb, i64 24
  call void @nstime_delta(ptr noundef nonnull %6, ptr noundef %i.fa, ptr noundef %i.fc)
  %.val722 = load i64, ptr %6, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.val723 = load i32, ptr %i.fd, align 8
  %i.fe = sitofp i64 %.val722 to double
  %i.ff = sitofp i32 %.val723 to double
  %i.fg = fdiv double %i.ff, 1.000000e+09
  %i.fh = fadd double %i.fg, %i.fe                ; 2 uses
  %i.fi = getelementptr i8, ptr %.0641, i64 96
  store double %i.fh, ptr %i.fi, align 8
  %i.fj = fcmp ogt double %i.fh, 0.000000e+00
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fk = getelementptr i8, ptr %.0641, i64 88
  store i8 1, ptr %i.fk, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fl = load ptr, ptr %i.eu, align 8            ; 5 uses
  %.not661 = icmp eq ptr %i.fl, null
  br i1 %.not661, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fm = load i8, ptr %i.fl, align 8
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.fo = getelementptr i8, ptr %i.fl, i64 8
  %i.fp = load i32, ptr %i.fo, align 8
  %.not662 = icmp eq i32 %i.fp, 0
  br i1 %.not662, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fq = getelementptr i8, ptr %i.fl, i64 12
  %i.fr = load i32, ptr %i.fq, align 4
  %.not663 = icmp eq i32 %i.fr, 0
  br i1 %.not663, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fs = getelementptr i8, ptr %.0641, i64 66
  %i.ft = load i8, ptr %i.fs, align 2, !range !6, !noundef !7
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.fv = getelementptr i8, ptr %i.fl, i64 66
  %i.fw = load i8, ptr %i.fv, align 2, !range !6, !noundef !7
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.fy = getelementptr i8, ptr %.0641, i64 72
  %i.fz = load ptr, ptr %i.eu, align 8
  %i.ga = getelementptr i8, ptr %i.fz, i64 72
  call void @nstime_delta(ptr noundef nonnull %7, ptr noundef %i.fy, ptr noundef %i.ga)
  %i.gb = getelementptr i8, ptr %.0641, i64 88
  %i.gc = load i8, ptr %i.gb, align 8, !range !6, !noundef !7
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.val720 = load i64, ptr %7, align 16
  %i.ge = load <4 x i32>, ptr %7, align 16
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> poison, <2 x i32> <i32 2, i32 poison>
  %.val718 = load i64, ptr %6, align 8
  %.val719 = load i32, ptr %i.fd, align 8
  %15 = sitofp i64 %.val720 to double
  %i.gg = sitofp i64 %.val718 to double
  %i.gh = insertelement <2 x i32> %i.gf, i32 %.val719, i64 1
  %i.gi = sitofp <2 x i32> %i.gh to <2 x double>
  %i.gj = fdiv <2 x double> %i.gi, splat (double 1.000000e+09)
  %16 = insertelement <2 x double> poison, double %15, i64 0
  %17 = insertelement <2 x double> %16, double %i.gg, i64 1
  %18 = fadd <2 x double> %i.gj, %17              ; 2 uses
  %i.gk = extractelement <2 x double> %18, i64 0
  %19 = extractelement <2 x double> %18, i64 1
  %i.gl = fdiv double %i.gk, %19                  ; 2 uses
  %i.gm = getelementptr i8, ptr %.0641, i64 112
  store double %i.gl, ptr %i.gm, align 8
  %i.gn = getelementptr i8, ptr %.0641, i64 104
  store i8 1, ptr %i.gn, align 8
  %i.go = fsub double 1.000000e+00, %i.gl
  %i.gp = fmul double %i.go, 1.000000e+03
  %i.gq = fmul double %i.gp, 1.000000e+03
  %i.gr = getelementptr i8, ptr %.0641, i64 120
  store double %i.gq, ptr %i.gr, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.critedgethread-pre-split

.critedgethread-pre-split:                        ; preds = %bb.q, %bb.r, %bb.s, %bb.ae, %bb.m
  %.pr = load i8, ptr %.0641, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %bb.l
  %i.gs = phi i8 [ %.pr, %.critedgethread-pre-split ], [ %i.ds, %bb.l ]
  %i.gt = icmp eq i8 %i.gs, 2
  br i1 %i.gt, label %bb.af, label %.critedge700.thread

bb.af:                                            ; preds = %.critedge
  %i.gu = getelementptr i8, ptr %.0641, i64 8     ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8
  %.not664 = icmp eq i32 %i.gv, 0
  br i1 %.not664, label %.critedge699.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr i8, ptr %.0641, i64 152   ; 5 uses
  %i.gx = load ptr, ptr %i.gw, align 8            ; 3 uses
  %.not665 = icmp eq ptr %i.gx, null
  br i1 %.not665, label %.critedge699.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gy = load i8, ptr %i.gx, align 8
  %i.gz = icmp eq i8 %i.gy, 2
  br i1 %i.gz, label %bb.ai, label %.critedge699.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ha = getelementptr i8, ptr %i.gx, i64 8
  %i.hb = load i32, ptr %i.ha, align 8
  %.not666 = icmp eq i32 %i.hb, 0
  br i1 %.not666, label %.critedge699.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.hc = getelementptr i8, ptr %.0641, i64 72
  %i.hd = load ptr, ptr %i.gw, align 8
  %i.he = getelementptr i8, ptr %i.hd, i64 72
  call void @nstime_delta(ptr noundef nonnull %8, ptr noundef %i.hc, ptr noundef %i.he)
  %.val716 = load i64, ptr %8, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val717 = load i32, ptr %i.hf, align 8
  %i.hg = sitofp i64 %.val716 to double
  %i.hh = sitofp i32 %.val717 to double
  %i.hi = fdiv double %i.hh, 1.000000e+09
  %i.hj = fadd double %i.hi, %i.hg                ; 2 uses
  %i.hk = getelementptr i8, ptr %.0641, i64 120
  store double %i.hj, ptr %i.hk, align 8
  %i.hl = fcmp ogt double %i.hj, 0.000000e+00
  br i1 %i.hl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hm = getelementptr i8, ptr %.0641, i64 112
  store i8 1, ptr %i.hm, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.hn = load i8, ptr %.0641, align 8
  %i.ho = icmp eq i8 %i.hn, 2
  br i1 %i.ho, label %bb.am, label %.critedge699

bb.am:                                            ; preds = %bb.al
  %i.hp = load i32, ptr %i.gu, align 8
  %.not667 = icmp eq i32 %i.hp, 0
  br i1 %.not667, label %.critedge699, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hq = getelementptr i8, ptr %.0641, i64 12
  %i.hr = load i32, ptr %i.hq, align 4
  %.not668 = icmp eq i32 %i.hr, 0
  br i1 %.not668, label %.critedge699, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hs = getelementptr i8, ptr %.0641, i64 16
  %i.ht = load i32, ptr %i.hs, align 8
  %.not669 = icmp eq i32 %i.ht, 0
  br i1 %.not669, label %.critedge699, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hu = load ptr, ptr %i.gw, align 8            ; 5 uses
  %.not670 = icmp eq ptr %i.hu, null
  br i1 %.not670, label %.critedge699, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hv = load i8, ptr %i.hu, align 8
  %i.hw = icmp eq i8 %i.hv, 2
  br i1 %i.hw, label %bb.ar, label %.critedge699

bb.ar:                                            ; preds = %bb.aq
  %i.hx = getelementptr i8, ptr %i.hu, i64 8
  %i.hy = load i32, ptr %i.hx, align 8
  %.not671 = icmp eq i32 %i.hy, 0
  br i1 %.not671, label %.critedge699, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hz = getelementptr i8, ptr %i.hu, i64 12
  %i.ia = load i32, ptr %i.hz, align 4
  %.not672 = icmp eq i32 %i.ia, 0
  br i1 %.not672, label %.critedge699, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ib = getelementptr i8, ptr %i.hu, i64 16
  %i.ic = load i32, ptr %i.ib, align 8
  %.not673 = icmp eq i32 %i.ic, 0
  br i1 %.not673, label %.critedge699, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.id = getelementptr i8, ptr %.0641, i64 56
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = getelementptr i8, ptr %.0641, i64 64    ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8
  %i.ih = udiv i32 %i.ig, 1000000000
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = add i64 %i.ie, %i.ii
  store i64 %i.ij, ptr %10, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.il = load i32, ptr %i.if, align 8
  %i.im = urem i32 %i.il, 1000000000
  store i32 %i.im, ptr %i.ik, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %i.in, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.io = load ptr, ptr %i.gw, align 8            ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 56
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = getelementptr i8, ptr %i.io, i64 64
  %i.is = load i32, ptr %i.ir, align 8
  %i.it = udiv i32 %i.is, 1000000000
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = add i64 %i.iq, %i.iu
  store i64 %i.iv, ptr %11, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ix = load ptr, ptr %i.gw, align 8
  %i.iy = getelementptr i8, ptr %i.ix, i64 64
  %i.iz = load i32, ptr %i.iy, align 8
  %i.ja = urem i32 %i.iz, 1000000000
  store i32 %i.ja, ptr %i.iw, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.jb, align 4
  call void @nstime_delta(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %i.jc = getelementptr i8, ptr %.0641, i64 112
  %i.jd = load i8, ptr %i.jc, align 8, !range !6, !noundef !7
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.val714 = load i64, ptr %9, align 16
  %i.jf = load <4 x i32>, ptr %9, align 16
  %i.jg = shufflevector <4 x i32> %i.jf, <4 x i32> poison, <2 x i32> <i32 2, i32 poison>
  %.val712 = load i64, ptr %8, align 8
  %.val713 = load i32, ptr %i.hf, align 8
  %i.jh = sitofp i64 %.val714 to double
  %i.ji = sitofp i64 %.val712 to double
  %i.jj = insertelement <2 x i32> %i.jg, i32 %.val713, i64 1
  %i.jk = sitofp <2 x i32> %i.jj to <2 x double>
  %i.jl = fdiv <2 x double> %i.jk, splat (double 1.000000e+09)
  %i.jm = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jn = insertelement <2 x double> %i.jm, double %i.ji, i64 1
  %i.jo = fadd <2 x double> %i.jl, %i.jn          ; 2 uses
  %i.jp = extractelement <2 x double> %i.jo, i64 0
  %i.jq = extractelement <2 x double> %i.jo, i64 1
  %i.jr = fdiv double %i.jp, %i.jq                ; 2 uses
  %i.js = getelementptr i8, ptr %.0641, i64 136
  store double %i.jr, ptr %i.js, align 8
  %i.jt = getelementptr i8, ptr %.0641, i64 128
  store i8 1, ptr %i.jt, align 8
  %i.ju = fsub double 1.000000e+00, %i.jr
  %i.jv = fmul double %i.ju, 1.000000e+03
  %i.jw = fmul double %i.jv, 1.000000e+03
  %i.jx = fptosi double %i.jw to i32
  %i.jy = getelementptr i8, ptr %.0641, i64 144
  store i32 %i.jx, ptr %i.jy, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %.critedge699

end_hunk_0
