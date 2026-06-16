inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@jpeg_read_icc_profile:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 24, ptr %i.g, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !35
  tail call void %i.h(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36   ; 2 uses
  %i.k = icmp slt i32 %i.j, 202
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 21, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  store i32 %i.j, ptr %i.n, align 4, !tbaa !37
  %i.o = load ptr, ptr %0, align 8, !tbaa !7
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  tail call void %i.p(ptr noundef nonnull %0) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %1, align 8, !tbaa !38
  store i32 0, ptr %2, align 4, !tbaa !3
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %scevgep, i8 0, i64 255, i1 false), !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.087109 = load ptr, ptr %i.q, align 8, !tbaa !39 ; 3 uses
  %.not110 = icmp eq ptr %.087109, null
  br i1 %.not110, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %marker_is_icc.exit.thread
  %.087112 = phi ptr [ %.087, %marker_is_icc.exit.thread ], [ %.087109, %bb.e ] ; 4 uses
  %.085111 = phi i32 [ %.2, %marker_is_icc.exit.thread ], [ 0, %bb.e ] ; 17 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.087112, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !40
  %i.t = icmp eq i8 %i.s, -30
  br i1 %i.t, label %bb.f, label %marker_is_icc.exit.thread

bb.f:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.087112, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %i.w = icmp ugt i32 %i.v, 13
  br i1 %i.w, label %bb.g, label %marker_is_icc.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.087112, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43   ; 14 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = icmp eq i8 %i.z, 73
  br i1 %i.aa, label %bb.h, label %marker_is_icc.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = icmp eq i8 %i.ac, 67
  br i1 %i.ad, label %bb.i, label %marker_is_icc.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = icmp eq i8 %i.af, 67
  br i1 %i.ag, label %bb.j, label %marker_is_icc.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = icmp eq i8 %i.ai, 95
  br i1 %i.aj, label %bb.k, label %marker_is_icc.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.am = icmp eq i8 %i.al, 80
  br i1 %i.am, label %bb.l, label %marker_is_icc.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = icmp eq i8 %i.ao, 82
  br i1 %i.ap, label %bb.m, label %marker_is_icc.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.as = icmp eq i8 %i.ar, 79
  br i1 %i.as, label %bb.n, label %marker_is_icc.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = icmp eq i8 %i.au, 70
  br i1 %i.av, label %bb.o, label %marker_is_icc.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !37
  %i.ay = icmp eq i8 %i.ax, 73
  br i1 %i.ay, label %bb.p, label %marker_is_icc.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37
  %i.bb = icmp eq i8 %i.ba, 76
  br i1 %i.bb, label %bb.q, label %marker_is_icc.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = icmp eq i8 %i.bd, 69
  br i1 %i.be, label %marker_is_icc.exit, label %marker_is_icc.exit.thread

marker_is_icc.exit:                               ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !37
  %.not102 = icmp eq i8 %i.bg, 0
  br i1 %.not102, label %bb.r, label %marker_is_icc.exit.thread

bb.r:                                             ; preds = %marker_is_icc.exit
  %i.bh = icmp eq i32 %.085111, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  br i1 %i.bh, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not95 = icmp eq i32 %.085111, %i.bk
  br i1 %.not95, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i32 127, ptr %i.bm, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !44
  tail call void %i.bo(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %._crit_edge.thread

bb.u:                                             ; preds = %bb.r, %bb.s
  %.186 = phi i32 [ %.085111, %bb.s ], [ %i.bk, %bb.r ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !37  ; 3 uses
  %i.br = icmp eq i8 %i.bq, 0
  %i.bs = zext i8 %i.bq to i32
  %i.bt = icmp samesign ult i32 %.186, %i.bs
  %or.cond98 = select i1 %i.br, i1 true, i1 %i.bt
  br i1 %or.cond98, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i32 127, ptr %i.bv, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !44
  tail call void %i.bx(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %._crit_edge.thread

bb.w:                                             ; preds = %bb.u
  %i.by = zext i8 %i.bq to i64                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !37
  %.not96 = icmp eq i8 %i.ca, 0
  br i1 %.not96, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i32 127, ptr %i.cc, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !44
  tail call void %i.ce(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %._crit_edge.thread

bb.y:                                             ; preds = %bb.w
  store i8 1, ptr %i.bz, align 1, !tbaa !37
  %i.cf = add i32 %i.v, -14
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.by
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !3
  br label %marker_is_icc.exit.thread

marker_is_icc.exit.thread:                        ; preds = %.lr.ph, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %marker_is_icc.exit, %bb.y
  %.2 = phi i32 [ %.186, %bb.y ], [ %.085111, %marker_is_icc.exit ], [ %.085111, %bb.q ], [ %.085111, %bb.p ], [ %.085111, %bb.o ], [ %.085111, %bb.n ], [ %.085111, %bb.m ], [ %.085111, %bb.l ], [ %.085111, %bb.k ], [ %.085111, %bb.j ], [ %.085111, %bb.i ], [ %.085111, %bb.h ], [ %.085111, %bb.g ], [ %.085111, %bb.f ], [ %.085111, %.lr.ph ] ; 3 uses
  %.087 = load ptr, ptr %.087112, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq ptr %.087, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %marker_is_icc.exit.thread
  %i.ch = icmp eq i32 %.2, 0
  br i1 %i.ch, label %._crit_edge.thread, label %.lr.ph116.preheader

.lr.ph116.preheader:                              ; preds = %._crit_edge
  %3 = add nuw nsw i32 %.2, 1
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.aa
  %indvars.iv = phi i64 [ 1, %.lr.ph116.preheader ], [ %indvars.iv.next, %bb.aa ] ; 4 uses
  %.082115 = phi i32 [ 0, %.lr.ph116.preheader ], [ %i.cs, %bb.aa ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !37
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph116
  %i.cl = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i32 127, ptr %i.cm, align 8, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !44
  tail call void %i.co(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %._crit_edge.thread

bb.aa:                                            ; preds = %.lr.ph116
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %.082115, ptr %i.cp, align 4, !tbaa !3
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = add i32 %i.cr, %.082115                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge117, label %.lr.ph116, !llvm.loop !47

._crit_edge117:                                   ; preds = %bb.aa
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge117
  %i.cu = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store i32 127, ptr %i.cv, align 8, !tbaa !32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !44
  tail call void %i.cx(ptr noundef nonnull %0, i32 noundef -1) #4
  br label %._crit_edge.thread

bb.ac:                                            ; preds = %._crit_edge117
  %i.cy = zext i32 %i.cs to i64
  %i.cz = tail call noalias ptr @malloc(i64 noundef %i.cy) #5 ; 4 uses
  %i.da = ptrtoaddr ptr %i.cz to i64
  %i.db = icmp eq ptr %i.cz, null
  br i1 %i.db, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dc = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i32 56, ptr %i.dd, align 8, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 44
  store i32 11, ptr %i.de, align 4, !tbaa !37
  %i.df = load ptr, ptr %0, align 8, !tbaa !7
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !35
  tail call void %i.dg(ptr noundef nonnull %0) #4
  %.188125.pre = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.188125 = phi ptr [ %.188125.pre, %bb.ad ], [ %.087109, %bb.ac ] ; 2 uses
  %.not91126 = icmp eq ptr %.188125, null
  br i1 %.not91126, label %._crit_edge130, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %bb.ae
  %i.dh = add i64 %i.da, -14
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %marker_is_icc.exit99.thread
  %.188127 = phi ptr [ %.188, %marker_is_icc.exit99.thread ], [ %.188125, %.lr.ph129.preheader ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.188127, i64 8
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !40
  %i.dk = icmp eq i8 %i.dj, -30
  br i1 %i.dk, label %bb.af, label %marker_is_icc.exit99.thread

bb.af:                                            ; preds = %.lr.ph129
  %i.dl = getelementptr inbounds nuw i8, ptr %.188127, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !42
  %i.dn = icmp ugt i32 %i.dm, 13
  br i1 %i.dn, label %bb.ag, label %marker_is_icc.exit99.thread

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr inbounds nuw i8, ptr %.188127, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !43 ; 15 uses
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = load i8, ptr %i.dp, align 1, !tbaa !37
  %i.ds = icmp eq i8 %i.dr, 73
  br i1 %i.ds, label %bb.ah, label %marker_is_icc.exit99.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !37
  %i.dv = icmp eq i8 %i.du, 67
  br i1 %i.dv, label %bb.ai, label %marker_is_icc.exit99.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !37
  %i.dy = icmp eq i8 %i.dx, 67
  br i1 %i.dy, label %bb.aj, label %marker_is_icc.exit99.thread

bb.aj:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !37
  %i.eb = icmp eq i8 %i.ea, 95
  br i1 %i.eb, label %bb.ak, label %marker_is_icc.exit99.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !37
  %i.ee = icmp eq i8 %i.ed, 80
  br i1 %i.ee, label %bb.al, label %marker_is_icc.exit99.thread

bb.al:                                            ; preds = %bb.ak
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 5
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !37
  %i.eh = icmp eq i8 %i.eg, 82
  br i1 %i.eh, label %bb.am, label %marker_is_icc.exit99.thread

bb.am:                                            ; preds = %bb.al
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !37
  %i.ek = icmp eq i8 %i.ej, 79
  br i1 %i.ek, label %bb.an, label %marker_is_icc.exit99.thread

bb.an:                                            ; preds = %bb.am
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 7
  %i.em = load i8, ptr %i.el, align 1, !tbaa !37
  %i.en = icmp eq i8 %i.em, 70
  br i1 %i.en, label %bb.ao, label %marker_is_icc.exit99.thread

bb.ao:                                            ; preds = %bb.an
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !37
  %i.eq = icmp eq i8 %i.ep, 73
  br i1 %i.eq, label %bb.ap, label %marker_is_icc.exit99.thread

bb.ap:                                            ; preds = %bb.ao
  %i.er = getelementptr inbounds nuw i8, ptr %i.dp, i64 9
  %i.es = load i8, ptr %i.er, align 1, !tbaa !37
  %i.et = icmp eq i8 %i.es, 76
  br i1 %i.et, label %bb.aq, label %marker_is_icc.exit99.thread

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dp, i64 10
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !37
  %i.ew = icmp eq i8 %i.ev, 69
  br i1 %i.ew, label %marker_is_icc.exit99, label %marker_is_icc.exit99.thread

marker_is_icc.exit99:                             ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 11
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !37
  %.not103 = icmp eq i8 %i.ey, 0
  br i1 %.not103, label %bb.ar, label %marker_is_icc.exit99.thread

bb.ar:                                            ; preds = %marker_is_icc.exit99
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !37
  %i.fb = zext i8 %i.fa to i64                    ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 8 uses
  %.not93119 = icmp eq i32 %i.fd, 0
  br i1 %.not93119, label %marker_is_icc.exit99.thread, label %iter.check

iter.check:                                       ; preds = %bb.ar
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dp, i64 14 ; 6 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fb
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.fh ; 6 uses
  %i.fj = zext i32 %i.fd to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.fd, 4
  br i1 %min.iters.check, label %.lr.ph124.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fk = add i64 %i.dh, %i.fh
  %i.fl = sub i64 %i.fk, %i.dq
  %diff.check = icmp ult i64 %i.fl, 32
  br i1 %diff.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check138 = icmp ult i32 %i.fd, 32
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.fj, 28
  %n.vec = and i64 %i.fj, 4294967264              ; 6 uses
  %i.fm = trunc nuw i64 %n.vec to i32
  %i.fn = sub i32 %i.fd, %i.fm
  %i.fo = getelementptr i8, ptr %i.fi, i64 %n.vec
  %i.fp = getelementptr i8, ptr %i.fe, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.fi, i64 %index ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.fe, i64 %index ; 2 uses
  %i.fq = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep139, align 1, !tbaa !37
  %wide.load140 = load <16 x i8>, ptr %i.fq, align 1, !tbaa !37
  %i.fr = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !37
  store <16 x i8> %wide.load140, ptr %i.fr, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fj
  br i1 %cmp.n, label %marker_is_icc.exit99.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec144 = and i64 %i.fj, 4294967292           ; 5 uses
  %i.ft = trunc nuw i64 %n.vec144 to i32
  %i.fu = sub i32 %i.fd, %i.ft
  %i.fv = getelementptr i8, ptr %i.fi, i64 %n.vec144
  %i.fw = getelementptr i8, ptr %i.fe, i64 %n.vec144
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 3 uses
end_hunk_0
