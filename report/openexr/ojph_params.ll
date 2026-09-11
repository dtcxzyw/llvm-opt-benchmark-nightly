Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_params?download=true
inline.NumInlined: 308
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ojph5local9param_atk4readEPNS_11infile_baseE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.as = load ptr, ptr %1, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 2)
  %.not53 = icmp eq i64 %i.av, 2
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43
  %i.ay = load ptr, ptr %i.ax, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef 327906, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2482, ptr noundef nonnull @.str.65)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = add nsw i32 %i.ar, -4
  store i32 %i.az, ptr %i.c, align 4, !tbaa !55
  %i.ba = load i16, ptr %i.d, align 2, !tbaa !117
  %i.bb = call noundef i16 @llvm.bswap.i16(i16 %i.ba) ; 2 uses
  store i16 %i.bb, ptr %i.d, align 2, !tbaa !117
  %i.bc = and i16 %i.bb, 255                      ; 3 uses
  %i.bd = zext nneg i16 %i.bc to i32              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !137 ; 2 uses
  %.not54 = icmp eq ptr %i.bf, null
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = call noundef ptr @_ZN4ojph5local9param_atk7get_atkEi(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, i32 noundef %i.bd)
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = icmp samesign ult i16 %i.bc, 2
  %or.cond = or i1 %i.bi, %i.bh
  br i1 %or.cond, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %switch = icmp samesign ult i16 %i.bc, 2
  br i1 %switch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bl = load ptr, ptr %i.bk, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef 327923, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2492, ptr noundef nonnull @.str.66, i32 noundef %i.bd)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bm = load i16, ptr %i.d, align 2, !tbaa !117 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 2 ; 7 uses
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !78
  %i.bo = and i16 %i.bm, 8192
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.bs = load ptr, ptr %i.br, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i32 noundef 327907, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2497, ptr noundef nonnull @.str.67)
  %.pre = load i16, ptr %i.bn, align 2, !tbaa !78
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bt = phi i16 [ %.pre, %bb.p ], [ %i.bm, %bb.o ] ; 2 uses
  %i.bu = and i16 %i.bt, 2048
  %.not67 = icmp eq i16 %i.bu, 0
  br i1 %.not67, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.bx = load ptr, ptr %i.bw, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i32 noundef 327908, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2500, ptr noundef nonnull @.str.68)
  %.pre95 = load i16, ptr %i.bn, align 2, !tbaa !78
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.by = phi i16 [ %.pre95, %bb.r ], [ %i.bt, %bb.q ] ; 3 uses
  %i.bz = and i16 %i.by, 4096
  %.not68 = icmp eq i16 %i.bz, 0
  %i.ca = and i16 %i.by, 1536
  %.not69 = icmp eq i16 %i.ca, 0
  %or.cond75 = or i1 %.not68, %.not69
  br i1 %or.cond75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.cd = load ptr, ptr %i.cc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef 327909, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2503, ptr noundef nonnull @.str.69)
  %.pre96 = load i16, ptr %i.bn, align 2, !tbaa !78
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ce = phi i16 [ %.pre96, %bb.t ], [ %i.by, %bb.s ] ; 2 uses
  %i.cf = and i16 %i.ce, 16384
  %.not70 = icmp eq i16 %i.cf, 0
  br i1 %.not70, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !43
  %i.ci = load ptr, ptr %i.ch, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i32 noundef 327910, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2506, ptr noundef nonnull @.str.70)
  %.pre97 = load i16, ptr %i.bn, align 2, !tbaa !78
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cj = phi i16 [ %.pre97, %bb.v ], [ %i.ce, %bb.u ]
  %i.ck = and i16 %i.cj, 4096
  %.not71 = icmp eq i16 %i.ck, 0
  br i1 %.not71, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 4
  %i.cm = call noundef zeroext i1 @_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERfRi(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cl, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.cm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !43
  %i.cp = load ptr, ptr %i.co, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i32 noundef 327911, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2509, ptr noundef nonnull @.str.71)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 8 ; 6 uses
  %i.cr = load ptr, ptr %1, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef i64 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.cq, i64 noundef 1)
  %.not55 = icmp eq i64 %i.cu, 1
  br i1 %.not55, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cx = load ptr, ptr %i.cw, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i32 noundef 327912, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2511, ptr noundef nonnull @.str.72)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cy = load i32, ptr %i.c, align 4, !tbaa !55
  %i.cz = add nsw i32 %i.cy, -1                   ; 4 uses
  store i32 %i.cz, ptr %i.c, align 4, !tbaa !55
  %i.da = load i8, ptr %i.cq, align 8, !tbaa !132 ; 3 uses
  %i.db = zext i8 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 24 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !136
  %i.de = icmp ult i32 %i.dd, %i.db
  br i1 %i.de, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !133 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 28
  %.not56 = icmp eq ptr %i.dg, %i.dh
  %i.di = icmp eq ptr %i.dg, null
  %or.cond63 = or i1 %.not56, %i.di
  br i1 %or.cond63, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #19
  %.pre98 = load i8, ptr %i.cq, align 8, !tbaa !132
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dj = phi i8 [ %.pre98, %bb.ad ], [ %i.da, %bb.ac ]
  %i.dk = zext i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dl) #20
  store ptr %i.dm, ptr %i.df, align 8, !tbaa !133
  %i.dn = load i8, ptr %i.cq, align 8, !tbaa !132 ; 2 uses
  %i.do = zext i8 %i.dn to i32
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !136
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %i.dp = phi i8 [ %i.dn, %bb.ae ], [ %i.da, %bb.ab ]
  %i.dq = load i16, ptr %i.bn, align 2, !tbaa !78
  %i.dr = and i16 %i.dq, 4096
  %.not72 = icmp eq i16 %i.dr, 0
  %.not89 = icmp eq i8 %i.dp, 0                   ; 2 uses
  br i1 %.not72, label %.preheader, label %.preheader76

.preheader76:                                     ; preds = %bb.af
  br i1 %.not89, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader76
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 16 ; 4 uses
  br label %bb.ag

.preheader:                                       ; preds = %bb.af
  br i1 %.not89, label %.loopexit, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 16
  br label %bb.aw

bb.ag:                                            ; preds = %.lr.ph, %_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit
  %2 = phi i32 [ %i.cz, %.lr.ph ], [ %i.gh, %_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit ] ; 5 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !133
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.dw = load ptr, ptr %1, align 8, !tbaa !43
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i64 %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dv, i64 noundef 1)
  %.not59 = icmp eq i64 %i.dz, 1
  br i1 %.not59, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !43
  %i.ec = load ptr, ptr %i.eb, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i32 noundef 327913, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2525, ptr noundef nonnull @.str.73)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ed = load ptr, ptr %i.ds, align 8, !tbaa !133
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eg = load ptr, ptr %1, align 8, !tbaa !43
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call noundef i64 %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ef, i64 noundef 2)
  %.not60 = icmp eq i64 %i.ej, 2
  br i1 %.not60, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ek = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.em = load ptr, ptr %i.el, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i32 noundef 327914, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2528, ptr noundef nonnull @.str.74)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.en = load ptr, ptr %i.ds, align 8, !tbaa !133
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2 ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !56
  %i.er = call noundef i16 @llvm.bswap.i16(i16 %i.eq)
  store i16 %i.er, ptr %i.ep, align 2, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.es = load ptr, ptr %1, align 8, !tbaa !43
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef i64 %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 1)
  %.not61 = icmp eq i64 %i.ev, 1
  br i1 %.not61, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !43
  %i.ey = load ptr, ptr %i.ex, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, i32 noundef 327915, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2533, ptr noundef nonnull @.str.75)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ez = add nsw i32 %2, -4
  %i.fa = load i8, ptr %i.e, align 1, !tbaa !56   ; 2 uses
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fc = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !43
  %i.fe = load ptr, ptr %i.fd, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i32 noundef 327916, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2537, ptr noundef nonnull @.str.76)
  %.pr = load i8, ptr %i.e, align 1, !tbaa !56
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ff = phi i8 [ %.pr, %bb.an ], [ %i.fa, %bb.am ]
  %i.fg = icmp ugt i8 %i.ff, 1
  br i1 %i.fg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fh = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !43
  %i.fj = load ptr, ptr %i.fi, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, i32 noundef 327917, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2540, ptr noundef nonnull @.str.77)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fk = load ptr, ptr %i.ds, align 8, !tbaa !133
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %i.fn = load i16, ptr %i.bn, align 2, !tbaa !78
  %i.fo = lshr i16 %i.fn, 8
  %i.fp = and i16 %i.fo, 7
  switch i16 %i.fp, label %bb.av [
    i16 0, label %bb.ar
    i16 1, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.fq = load ptr, ptr %1, align 8, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call noundef i64 %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !245
  %.not15.i = icmp eq i64 %i.ft, 1
  br i1 %.not15.i, label %bb.as, label %.critedge.i

bb.as:                                            ; preds = %bb.ar
  %i.fu = add nsw i32 %2, -5
  %i.fv = load i8, ptr %i.a, align 1, !tbaa !56
  %i.fw = sext i8 %i.fv to i16
  store i16 %i.fw, ptr %i.fm, align 2, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.fx = load ptr, ptr %1, align 8, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call noundef i64 %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 2), !inline_history !245
  %.not.i64 = icmp eq i64 %i.ga, 2
  br i1 %.not.i64, label %bb.au, label %.critedge17.i

bb.au:                                            ; preds = %bb.at
  %i.gb = add nsw i32 %2, -6
  %i.gc = load i16, ptr %i.b, align 2, !tbaa !117
  %i.gd = call noundef i16 @llvm.bswap.i16(i16 %i.gc)
  store i16 %i.gd, ptr %i.fm, align 2, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit

.critedge.i:                                      ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.av

.critedge17.i:                                    ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.av

bb.av:                                            ; preds = %.critedge17.i, %bb.aq, %.critedge.i
  %i.ge = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !43
  %i.gg = load ptr, ptr %i.gf, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, i32 noundef 327918, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2542, ptr noundef nonnull @.str.78)
  br label %_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit

_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit: ; preds = %bb.au, %bb.as, %bb.av
  %i.gh = phi i32 [ %i.gb, %bb.au ], [ %i.fu, %bb.as ], [ %i.ez, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gi = load i8, ptr %i.cq, align 8, !tbaa !132
  %i.gj = zext i8 %i.gi to i64
  %i.gk = icmp samesign ult i64 %indvars.iv.next, %i.gj
  br i1 %i.gk, label %bb.ag, label %.loopexit, !llvm.loop !243

bb.aw:                                            ; preds = %.lr.ph87, %bb.be
  %indvars.iv92 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next93, %bb.be ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.gl = load ptr, ptr %1, align 8, !tbaa !43
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = call noundef i64 %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef 1)
  %.not57 = icmp eq i64 %i.go, 1
  br i1 %.not57, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !43
  %i.gr = load ptr, ptr %i.gq, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, i32 noundef 327919, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2551, ptr noundef nonnull @.str.75)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gs = load i32, ptr %i.c, align 4, !tbaa !55
  %i.gt = add nsw i32 %i.gs, -1
  store i32 %i.gt, ptr %i.c, align 4, !tbaa !55
  %i.gu = load i8, ptr %i.f, align 1, !tbaa !56   ; 2 uses
  %i.gv = icmp eq i8 %i.gu, 0
  br i1 %i.gv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gw = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !43
  %i.gy = load ptr, ptr %i.gx, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i32 noundef 327920, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2555, ptr noundef nonnull @.str.76)
  %.pr66 = load i8, ptr %i.f, align 1, !tbaa !56
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gz = phi i8 [ %.pr66, %bb.az ], [ %i.gu, %bb.ay ]
  %i.ha = icmp ugt i8 %i.gz, 1
  br i1 %i.ha, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !43
  %i.hd = load ptr, ptr %i.hc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, i32 noundef 327921, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2558, ptr noundef nonnull @.str.79)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.he = load ptr, ptr %i.dt, align 8, !tbaa !133
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv92
  %i.hg = call noundef zeroext i1 @_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERfRi(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %i.hf, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.hg, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hh = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !43
  %i.hj = load ptr, ptr %i.hi, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i32 noundef 327922, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2560, ptr noundef nonnull @.str.78)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.hk = load i8, ptr %i.cq, align 8, !tbaa !132
  %i.hl = zext i8 %i.hk to i64
  %i.hm = icmp samesign ult i64 %indvars.iv.next93, %i.hl
  br i1 %i.hm, label %bb.aw, label %.loopexit.loopexit, !llvm.loop !244

.loopexit.loopexit:                               ; preds = %bb.be
  %.pre99 = load i32, ptr %i.c, align 4, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit, %.loopexit.loopexit, %.preheader76, %.preheader
  %i.hn = phi i32 [ %i.cz, %.preheader ], [ %.pre99, %.loopexit.loopexit ], [ %i.cz, %.preheader76 ], [ %i.gh, %_ZN4ojph5local9param_atk16read_coefficientEPNS_11infile_baseERsRi.exit ]
  %.not58 = icmp eq i32 %i.hn, 0
  br i1 %.not58, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.ho = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !43
  %i.hq = load ptr, ptr %i.hp, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, i32 noundef 327923, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2565, ptr noundef nonnull @.str.80)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i1 true
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{!2, !57}
!3 = distinct !{!3, !57}
!4 = distinct !{!4, !57}
!5 = distinct !{!5, !57}
!6 = distinct !{!6, !57}
!7 = distinct !{!7, !57}
!8 = distinct !{!8, !57}
!9 = distinct !{!9, !57}
!10 = distinct !{!10, !57}
!11 = distinct !{!11, !57}
!12 = distinct !{!12, !57}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 _ZTSN4ojph5local9param_sizE", !21, i64 0}
!23 = !{!"_ZTSN4ojph9param_sizE", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"short", !17, i64 0}
!26 = !{!"p1 _ZTSN4ojph5local13siz_comp_infoE", !21, i64 0}
!27 = !{!"bool", !17, i64 0}
!28 = !{!"p1 _ZTSN4ojph5local9param_codE", !21, i64 0}
!29 = !{!"p1 _ZTSN4ojph5local9param_dfsE", !21, i64 0}
!30 = !{!"_ZTSN4ojph5local9param_sizE", !25, i64 0, !25, i64 2, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !25, i64 36, !26, i64 40, !18, i64 48, !18, i64 52, !17, i64 56, !27, i64 68, !27, i64 69, !28, i64 72, !29, i64 80}
!31 = !{!30, !25, i64 36}
!32 = !{!30, !18, i64 52}
!33 = !{!30, !26, i64 40}
!34 = !{!"_ZTSN4ojph5local13siz_comp_infoE", !17, i64 0, !17, i64 1, !17, i64 2}
!35 = !{!34, !17, i64 0}
!36 = !{!34, !17, i64 1}
!37 = !{!34, !17, i64 2}
!38 = !{!30, !18, i64 4}
!39 = !{!30, !18, i64 12}
!40 = !{!30, !18, i64 8}
!41 = !{!30, !18, i64 16}
!42 = !{!"vtable pointer", !16, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSN4ojph9param_codE", !28, i64 0}
!45 = !{!44, !28, i64 0}
!46 = !{!"_ZTSN4ojph5local9param_cod8cod_typeE", !17, i64 0}
!47 = !{!"_ZTSN4ojph5local9cod_SGcodE", !17, i64 0, !25, i64 2, !17, i64 4}
!48 = !{!"_ZTSN4ojph5local9cod_SPcodE", !17, i64 0, !17, i64 1, !17, i64 2, !17, i64 3, !17, i64 4, !17, i64 5}
!49 = !{!"p1 _ZTSN4ojph5local9param_atkE", !21, i64 0}
!50 = !{!"_ZTSN4ojph5local9param_codE", !46, i64 0, !25, i64 2, !17, i64 4, !47, i64 6, !48, i64 12, !28, i64 56, !49, i64 64, !28, i64 72, !25, i64 80, !28, i64 88}
!51 = !{!50, !17, i64 12}
!52 = !{!50, !17, i64 13}
!53 = !{!50, !17, i64 14}
!54 = !{!50, !17, i64 4}
!55 = !{!18, !18, i64 0}
!56 = !{!17, !17, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.peeled.count", i32 1}
!59 = !{!50, !17, i64 6}
!60 = !{!50, !17, i64 10}
!61 = !{!50, !17, i64 16}
!62 = !{!50, !46, i64 0}
!63 = !{!50, !25, i64 80}
!64 = !{!50, !28, i64 56}
!65 = !{!50, !28, i64 88}
!66 = !{!50, !25, i64 2}
!67 = !{!50, !28, i64 72}
!68 = !{!47, !17, i64 0}
!69 = !{!47, !25, i64 2}
!70 = !{!47, !17, i64 4}
!71 = !{!28, !28, i64 0}
!72 = !{!48, !17, i64 1}
!73 = !{!48, !17, i64 2}
!74 = !{!50, !49, i64 64}
!75 = !{!"float", !17, i64 0}
!76 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !21, i64 0}
!77 = !{!"_ZTSN4ojph5local9param_atkE", !25, i64 0, !25, i64 2, !75, i64 4, !17, i64 8, !76, i64 16, !18, i64 24, !17, i64 28, !49, i64 80, !49, i64 88, !49, i64 96}
!78 = !{!77, !25, i64 2}
!79 = !{!50, !25, i64 8}
!80 = !{!50, !17, i64 15}
!81 = !{!"_ZTSN4ojph9param_cocE", !28, i64 0}
!82 = !{!81, !28, i64 0}
!83 = !{!"p1 _ZTSN4ojph5local9param_qcdE", !21, i64 0}
!84 = !{!"_ZTSN4ojph9param_qcdE", !83, i64 0}
!85 = !{!84, !83, i64 0}
!86 = !{!"_ZTSN4ojph5local9param_qcd8qcd_typeE", !17, i64 0}
!87 = !{!"_ZTSN4ojph5local9param_qcdE", !86, i64 0, !25, i64 2, !17, i64 4, !17, i64 6, !18, i64 200, !75, i64 204, !27, i64 208, !83, i64 216, !83, i64 224, !25, i64 232, !83, i64 240}
!88 = !{!87, !75, i64 204}
!89 = !{!87, !86, i64 0}
!90 = !{!87, !25, i64 232}
!91 = !{!87, !83, i64 216}
!92 = !{!87, !83, i64 240}
!93 = !{!87, !25, i64 2}
!94 = !{!87, !17, i64 4}
!95 = !{!87, !27, i64 208}
!96 = !{!87, !83, i64 224}
!97 = !{!"p1 _ZTSN4ojph5local9param_nltE", !21, i64 0}
!98 = !{!"_ZTSN4ojph9param_nltE", !97, i64 0}
!99 = !{!98, !97, i64 0}
!100 = !{!"_ZTSN4ojph5local9param_nltE", !25, i64 0, !25, i64 2, !17, i64 4, !17, i64 5, !27, i64 6, !97, i64 8, !97, i64 16}
!101 = !{!100, !25, i64 2}
!102 = !{!100, !97, i64 8}
!103 = !{!100, !97, i64 16}
!104 = !{!100, !25, i64 0}
end_hunk_0
