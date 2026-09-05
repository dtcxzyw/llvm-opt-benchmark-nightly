Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pathfn?download=true
inline.NumInlined: 49
inline.NumDeleted: 3
begin_hunk_0_@_ZL10GenArcNamePwmPKwjRb:bb.a
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = icmp eq i32 %i.v, 47
  br i1 %i.w, label %bb.e, label %bb.d, !llvm.loop !0

bb.e:                                             ; preds = %.lr.ph8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i6
  br label %_Z6GetExtPKw.exit

_Z6GetExtPKw.exit:                                ; preds = %bb.d, %bb.c, %bb.e
  %.1.i.i = phi ptr [ %i.x, %bb.e ], [ %0, %bb.c ], [ %0, %bb.d ]
  %i.y = call ptr @wcsrchr(ptr noundef nonnull %.1.i.i, i32 noundef signext 46) #17 ; 3 uses
  store i32 0, ptr %i.b, align 16, !tbaa !11
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.preheader.preheader, label %bb.r

.preheader.preheader:                             ; preds = %_Z6GetExtPKw.exit
  %i.aa = trunc i64 %i.n to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph10, label %_Z11PointToNamePKw.exit

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.ac = icmp eq i32 %i.m, 123
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  br i1 %.0129, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call noundef i32 @_Z8toupperwi(i32 noundef %i.m) ; 5 uses
  %i.ae = icmp eq i32 %i.ad, 72
  %spec.select149 = select i1 %i.ae, i32 2, i32 %.0124
  %i.af = icmp eq i32 %i.ad, 68
  %i.ag = icmp eq i32 %i.ad, 89
  %or.cond = or i1 %i.af, %i.ag
  %.2126 = select i1 %or.cond, i32 0, i32 %spec.select149 ; 4 uses
  %i.ah = icmp ne i32 %.2126, 0
  %i.ai = icmp eq i32 %i.ad, 77
  %or.cond3 = and i1 %i.ai, %i.ah
  br i1 %or.cond3, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store i32 73, ptr %i.l, align 4, !tbaa !11
  %i.aj = add nsw i32 %.2126, -1
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i32 %i.ad, 78
  br i1 %i.ak, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.al = call noundef i32 @_Z9GetDigitsj(i32 noundef %2) ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0119 = phi i32 [ 0, %bb.j ], [ %i.as, %bb.k ] ; 5 uses
  %i.am = add i32 %.0119, %.0121
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11
  %i.aq = call noundef i32 @_Z8toupperwi(i32 noundef %i.ap)
  %i.ar = icmp eq i32 %i.aq, 78
  %i.as = add i32 %.0119, 1
  br i1 %i.ar, label %bb.k, label %bb.l, !llvm.loop !37

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ult i32 %.0119, %i.al
  br i1 %i.at, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.au = call i64 @wcslen(ptr noundef nonnull %i.a) #17
  %i.av = zext i32 %i.al to i64                   ; 3 uses
  %i.aw = zext i32 %.0119 to i64                  ; 2 uses
  %i.ax = sub nsw i64 %i.av, %i.aw
  %i.ay = add i64 %i.ax, %i.au
  %i.az = icmp ult i64 %i.ay, 128
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.av
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aw ; 2 uses
  %i.bc = call i64 @wcslen(ptr noundef nonnull %i.bb) #17
  %i.bd = add i64 %i.bc, 1
  %i.be = call ptr @wmemmove(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef %i.bd) #18 ; 0 uses
  %i.bf = call ptr @wmemset(ptr noundef nonnull %i.l, i32 noundef signext 78, i64 noundef %i.av) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bg = call i32 @llvm.umax.i32(i32 %.0119, i32 %i.al)
  %i.bh = add i32 %.0121, -1
  %i.bi = add i32 %i.bh, %i.bg
  store i8 1, ptr %3, align 1, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.i, %bb.g, %bb.f
  %.1130 = phi i1 [ %i.ac, %bb.f ], [ true, %bb.g ], [ false, %bb.i ], [ false, %bb.o ], [ false, %.thread ]
  %.4128 = phi i32 [ %.0124, %bb.f ], [ %.0124, %bb.g ], [ %.2126, %bb.i ], [ %.2126, %bb.o ], [ %i.aj, %.thread ]
  %.2123 = phi i32 [ %.0121, %bb.f ], [ %.0121, %bb.g ], [ %.0121, %bb.i ], [ %i.bi, %bb.o ], [ %.0121, %.thread ]
  %i.bj = add i32 %.2123, 1
  br label %bb.b, !llvm.loop !38

.preheader:                                       ; preds = %.lr.ph10
  %i.bk = trunc nuw i64 %i.bm to i32
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph10, label %_Z11PointToNamePKw.exit, !llvm.loop !0

.lr.ph10:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.i9 = phi i64 [ %i.bm, %.preheader ], [ %i.o, %.preheader.preheader ] ; 2 uses
  %i.bm = add nsw i64 %indvars.iv.i9, -1          ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !11
  %i.bp = icmp eq i32 %i.bo, 47
  br i1 %i.bp, label %bb.q, label %.preheader, !llvm.loop !0

bb.q:                                             ; preds = %.lr.ph10
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i9
  br label %_Z11PointToNamePKw.exit

_Z11PointToNamePKw.exit:                          ; preds = %.preheader, %.preheader.preheader, %bb.q
  %.1.i = phi ptr [ %i.bq, %bb.q ], [ %0, %.preheader.preheader ], [ %0, %.preheader ]
  %i.br = load i32, ptr %.1.i, align 4, !tbaa !11
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = select i1 %i.bs, ptr @.str.9, ptr @.str.19
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bt, i64 noundef 2048)
  br label %bb.s

bb.r:                                             ; preds = %_Z6GetExtPKw.exit
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.y, i64 noundef 2048)
  store i32 0, ptr %i.y, align 4, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_Z11PointToNamePKw.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !45 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = add i32 %i.bv, -1
  %i.by = select i1 %i.bw, i32 6, i32 %i.bx       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !46
  %i.cb = sub i32 %i.ca, %i.by                    ; 4 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp samesign ult i32 %i.cb, -3
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %5, align 4, !tbaa !47
  %i.cf = add i32 %i.ce, -1
  %i.cg = call noundef zeroext i1 @_Z10IsLeapYeari(i32 noundef %i.cf)
  %i.ch = select i1 %i.cg, i32 366, i32 365
  %i.ci = add nsw i32 %i.ch, %i.cb
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %.0118 = phi i32 [ %i.ci, %bb.u ], [ %i.cb, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %i.cj = sdiv i32 %.0118, 7
  %i.ck = srem i32 %.0118, 7
  %i.cl = icmp sgt i32 %i.ck, 3
  %spec.select150.v = select i1 %i.cl, i32 2, i32 1
  %spec.select150 = add nsw i32 %spec.select150.v, %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cm = load i32, ptr %5, align 4, !tbaa !47
  %i.cn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.cm) #18 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !48
  %i.cr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.cq) #18 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !49
  %i.cv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.cu) #18 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !50
  %i.cz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.cy) #18 ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !51
  %i.dd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.da, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dc) #18 ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 55
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !52
  %i.dh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dg) #18 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 66
  %i.dj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.di, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %spec.select150) #18 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 77
  %i.dl = add i32 %i.by, 1
  %i.dm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dk, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.dl) #18 ; 0 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.do = load i32, ptr %i.bz, align 4, !tbaa !46
  %i.dp = add i32 %i.do, 1
  %i.dq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dn, ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.dp) #18 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 99
  %i.ds = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dr, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %2) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.v
  %.2131 = phi i1 [ false, %bb.v ], [ %.3132, %bb.ac ]
  %.0116 = phi i32 [ 0, %bb.v ], [ %7, %bb.ac ]   ; 2 uses
  %6 = zext i32 %.0116 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %6
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !11 ; 3 uses
  switch i32 %i.du, label %bb.z [
    i32 0, label %bb.x
    i32 123, label %bb.y
    i32 125, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 16, !tbaa !11
  %i.dv = load i32, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %.not170 = icmp eq i32 %i.dv, 0
  br i1 %.not170, label %._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %bb.w, %bb.w
  %i.dw = icmp eq i32 %i.du, 123
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  br i1 %.2131, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = call noundef i32 @_Z8toupperwi(i32 noundef %i.du)
  %i.dy = call ptr @wcschr(ptr noundef nonnull @.str.25, i32 noundef signext %i.dx) #17 ; 2 uses
  %.not148 = icmp eq ptr %i.dy, null
  br i1 %.not148, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, ptrtoint (ptr @.str.25 to i64)
  %i.eb = getelementptr inbounds i8, ptr %i.d, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !53
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !53
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z, %bb.y
  %.3132 = phi i1 [ %i.dw, %bb.y ], [ true, %bb.z ], [ false, %bb.ab ], [ false, %bb.aa ]
  %7 = add i32 %.0116, 1
  br label %bb.w, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.an, %bb.x
  br i1 %i.h, label %bb.ao, label %bb.ay

.lr.ph:                                           ; preds = %bb.x, %bb.an
  %i.ee = phi i32 [ %i.fx, %bb.an ], [ %i.dv, %bb.x ] ; 3 uses
  %i.ef = phi ptr [ %i.fw, %bb.an ], [ %i.a, %bb.x ] ; 3 uses
  %.0169 = phi i64 [ %.4, %bb.an ], [ 0, %bb.x ]  ; 5 uses
  %.0111168 = phi i64 [ %i.fv, %bb.an ], [ 0, %bb.x ] ; 3 uses
  %.4133167 = phi i1 [ %.5, %bb.an ], [ false, %bb.x ] ; 2 uses
  switch i32 %i.ee, label %bb.ae [
    i32 123, label %bb.ad
    i32 125, label %bb.ad
  ]

bb.ad:                                            ; preds = %.lr.ph, %.lr.ph
  %i.eg = icmp eq i32 %i.ee, 123
  br label %bb.an

bb.ae:                                            ; preds = %.lr.ph
  %i.eh = call noundef i32 @_Z8toupperwi(i32 noundef %i.ee)
  %i.ei = call ptr @wcschr(ptr noundef nonnull @.str.25, i32 noundef signext %i.eh) #17 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  %or.cond5 = select i1 %i.ej, i1 true, i1 %.4133167
  br i1 %or.cond5, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ek = load i32, ptr %i.ef, align 4, !tbaa !11
  br label %.thread158

bb.ag:                                            ; preds = %bb.ae
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.el, ptrtoint (ptr @.str.25 to i64) ; 3 uses
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = getelementptr inbounds nuw [11 x i8], ptr %i.c, i64 %i.en ; 2 uses
  %i.ep = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eo) #17
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.em ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !53 ; 2 uses
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %i.er, align 4, !tbaa !53
  %i.eu = sub nsw i32 %i.eq, %i.es                ; 2 uses
  %i.ev = icmp eq i64 %i.em, 4
  %i.ew = icmp eq i32 %i.et, 2
  %or.cond151 = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond151, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ex = getelementptr i8, ptr %i.ef, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11
  %i.ez = call noundef i32 @_Z8toupperwi(i32 noundef %i.ey)
  %i.fa = icmp eq i32 %i.ez, 77
  br i1 %i.fa, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fb = add i64 %.0111168, 2                    ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !11
  %i.fe = call noundef i32 @_Z8toupperwi(i32 noundef %i.fd)
  %i.ff = icmp eq i32 %i.fe, 77
  br i1 %i.ff, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.fg = icmp slt i32 %i.eu, 0
  br i1 %i.fg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fh = load i32, ptr %i.ef, align 4, !tbaa !11
  br label %.thread158

bb.al:                                            ; preds = %bb.aj
  %i.fi = zext nneg i32 %i.eu to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  %i.fl = sext i8 %i.fk to i32
  br label %.thread158

bb.am:                                            ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0169
  %i.fn = load i32, ptr %i.cp, align 4, !tbaa !48
  %i.fo = add i32 %i.fn, -1
  %i.fp = call noundef ptr @_Z12GetMonthNamei(i32 noundef %i.fo)
  %i.fq = sub nuw nsw i64 128, %.0169
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.fm, ptr noundef %i.fp, i64 noundef %i.fq)
  %i.fr = call i64 @wcslen(ptr noundef nonnull %i.e) #17
  br label %bb.an

.thread158:                                       ; preds = %bb.ak, %bb.al, %bb.af
  %.sink = phi i32 [ %i.fh, %bb.ak ], [ %i.fl, %bb.al ], [ %i.ek, %bb.af ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0169
  store i32 %.sink, ptr %i.fs, align 4, !tbaa !11
  %i.ft = add nuw nsw i64 %.0169, 1               ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ft
  store i32 0, ptr %i.fu, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread158, %bb.ad
  %.5 = phi i1 [ %i.eg, %bb.ad ], [ false, %bb.am ], [ %.4133167, %.thread158 ]
  %.4115 = phi i64 [ %.0111168, %bb.ad ], [ %i.fb, %bb.am ], [ %.0111168, %.thread158 ]
  %.4 = phi i64 [ %.0169, %bb.ad ], [ %i.fr, %bb.am ], [ %i.ft, %.thread158 ] ; 2 uses
  %i.fv = add i64 %.4115, 1                       ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !11 ; 2 uses
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = icmp ult i64 %.4, 127
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %.lr.ph, label %._crit_edge, !llvm.loop !40

bb.ao:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.gb = call i64 @wcslen(ptr noundef nonnull readonly %0) #17 ; 3 uses
  %i.gc = and i64 %i.gb, 4294967295               ; 2 uses
  %i.gd = trunc i64 %i.gb to i32
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph13, label %_Z11PointToNamePKw.exit.i

bb.ap:                                            ; preds = %.lr.ph13
  %i.gf = trunc nuw i64 %i.gh to i32
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph13, label %_Z11PointToNamePKw.exit.i, !llvm.loop !0

.lr.ph13:                                         ; preds = %bb.ao, %bb.ap
  %indvars.iv.i.i15211 = phi i64 [ %i.gh, %bb.ap ], [ %i.gc, %bb.ao ] ; 2 uses
  %i.gh = add nsw i64 %indvars.iv.i.i15211, -1    ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !11
  %i.gk = icmp eq i32 %i.gj, 47
  br i1 %i.gk, label %bb.aq, label %bb.ap, !llvm.loop !0

bb.aq:                                            ; preds = %.lr.ph13
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i15211
  br label %_Z11PointToNamePKw.exit.i

_Z11PointToNamePKw.exit.i:                        ; preds = %bb.ap, %bb.ao, %bb.aq
  %.1.i.i153 = phi ptr [ %i.gl, %bb.aq ], [ %0, %bb.ao ], [ %0, %bb.ap ]
  %i.gm = ptrtoint ptr %.1.i.i153 to i64
  %i.gn = ptrtoint ptr %0 to i64                  ; 4 uses
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = icmp ugt i64 %i.go, 8188
  br i1 %i.gp, label %_Z11GetFilePathPKwPwm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_Z11PointToNamePKw.exit.i
  %i.gq = trunc i64 %i.gb to i32
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph15, label %_Z11PointToNamePKw.exit14.i

.preheader.i:                                     ; preds = %.lr.ph15
  %i.gs = trunc nuw i64 %i.gu to i32
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph15, label %_Z11PointToNamePKw.exit14.i, !llvm.loop !0

.lr.ph15:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i12.i14 = phi i64 [ %i.gu, %.preheader.i ], [ %i.gc, %.preheader.i.preheader ] ; 2 uses
  %i.gu = add nsw i64 %indvars.iv.i12.i14, -1     ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !11
  %i.gx = icmp eq i32 %i.gw, 47
  br i1 %i.gx, label %bb.ar, label %.preheader.i, !llvm.loop !0

bb.ar:                                            ; preds = %.lr.ph15
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i12.i14
  %.pre.i = ptrtoint ptr %i.gy to i64
  br label %_Z11PointToNamePKw.exit14.i

_Z11PointToNamePKw.exit14.i:                      ; preds = %.preheader.i, %.preheader.i.preheader, %bb.ar
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.ar ], [ %i.gn, %.preheader.i.preheader ], [ %i.gn, %.preheader.i ]
  %i.gz = sub i64 %.pre-phi.i, %i.gn
  %i.ha = ashr exact i64 %i.gz, 2
  br label %_Z11GetFilePathPKwPwm.exit

_Z11GetFilePathPKwPwm.exit:                       ; preds = %_Z11PointToNamePKw.exit.i, %_Z11PointToNamePKw.exit14.i
  %i.hb = phi i64 [ %i.ha, %_Z11PointToNamePKw.exit14.i ], [ 2047, %_Z11PointToNamePKw.exit.i ] ; 2 uses
  %i.hc = call ptr @wcsncpy(ptr noundef nonnull %i.f, ptr noundef nonnull %0, i64 noundef %i.hb) #18 ; 0 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hb
  store i32 0, ptr %i.hd, align 4, !tbaa !11
  %i.he = call i64 @wcslen(ptr noundef nonnull %i.f) #17 ; 3 uses
  %.not.i = icmp eq i64 %i.he, 0
  br i1 %.not.i, label %_Z11AddEndSlashPwm.exit, label %bb.as

bb.as:                                            ; preds = %_Z11GetFilePathPKwPwm.exit
  %i.hf = getelementptr [4 x i8], ptr %i.f, i64 %i.he ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 -4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !11
  %.not10.i = icmp eq i32 %i.hh, 47
  br i1 %.not10.i, label %_Z11AddEndSlashPwm.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hi = add i64 %i.he, 1                        ; 2 uses
  %i.hj = icmp ult i64 %i.hi, 2048
  br i1 %i.hj, label %bb.au, label %_Z11AddEndSlashPwm.exit

bb.au:                                            ; preds = %bb.at
  store i32 47, ptr %i.hf, align 4, !tbaa !11
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hi
  store i32 0, ptr %i.hk, align 4, !tbaa !11
  br label %_Z11AddEndSlashPwm.exit

_Z11AddEndSlashPwm.exit:                          ; preds = %_Z11GetFilePathPKwPwm.exit, %bb.as, %bb.at, %bb.au
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 2048)
  %i.hl = call i64 @wcslen(ptr noundef nonnull readonly %0) #17 ; 2 uses
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph17, label %_Z11PointToNamePKw.exit156

.lr.ph17:                                         ; preds = %_Z11AddEndSlashPwm.exit
  %i.ho = and i64 %i.hl, 2147483647
  br label %bb.aw

bb.av:                                            ; preds = %bb.aw
  %i.hp = trunc nuw i64 %i.hr to i32
  %i.hq = icmp sgt i32 %i.hp, 0
  br i1 %i.hq, label %bb.aw, label %_Z11PointToNamePKw.exit156, !llvm.loop !0

bb.aw:                                            ; preds = %.lr.ph17, %bb.av
  %indvars.iv.i15416 = phi i64 [ %i.ho, %.lr.ph17 ], [ %i.hr, %bb.av ] ; 2 uses
  %i.hr = add nsw i64 %indvars.iv.i15416, -1      ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !11
  %i.hu = icmp eq i32 %i.ht, 47
  br i1 %i.hu, label %bb.ax, label %bb.av, !llvm.loop !0

bb.ax:                                            ; preds = %bb.aw
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i15416
  br label %_Z11PointToNamePKw.exit156

_Z11PointToNamePKw.exit156:                       ; preds = %bb.av, %_Z11AddEndSlashPwm.exit, %bb.ax
  %.1.i155 = phi ptr [ %i.hv, %bb.ax ], [ %0, %_Z11AddEndSlashPwm.exit ], [ %0, %bb.av ]
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %.1.i155, i64 noundef 2048)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 2048)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_Z11PointToNamePKw.exit156
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare noundef ptr @_Z11NullToEmptyPKw(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z11GetWideNamePKcPKwPwm(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

end_hunk_0
