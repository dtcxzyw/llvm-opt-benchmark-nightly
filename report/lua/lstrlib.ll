Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lstrlib?download=true
inline.NumInlined: 79
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@str_unpack:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %posrelatI.exit
  store ptr %0, ptr %1, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 1, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !50
  %i.s = load i8, ptr %i.e, align 1, !tbaa !13
  %.not6087 = icmp eq i8 %i.s, 0
  br i1 %.not6087, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.y
  %.089 = phi i32 [ %.1, %bb.y ], [ 0, %bb.e ]    ; 4 uses
  %.05888 = phi i64 [ %i.gw, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.t = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.05888, ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.c) ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !45
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !11   ; 10 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11
  %i.z = sub i64 %i.y, %.05888
  %.not61 = icmp ugt i64 %i.x, %i.z
  br i1 %.not61, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %.lr.ph
  %i.aa = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.72) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ab = add i64 %.05888, %i.v                   ; 19 uses
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.73) #12
  %i.ac = add nsw i32 %.089, 1                    ; 7 uses
  switch i32 %i.t, label %default.unreachable164 [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.k
    i32 4, label %bb.m
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.v
    i32 9, label %bb.y
    i32 8, label %bb.y
    i32 10, label %bb.y
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !49
  %i.af = trunc i64 %i.w to i32
  %i.ag = icmp eq i32 %i.t, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = call fastcc i64 @unpackint(ptr noundef %0, ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ah)
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ai) #12
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 2 uses
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !49
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.am = load i32, ptr %i.aj, align 1
  %i.an = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = bitcast i32 %i.an to float
  br label %copywithendian.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load float, ptr %i.aj, align 1
  br label %copywithendian.exit

copywithendian.exit:                              ; preds = %.preheader, %bb.j
  %.0160 = phi float [ %i.ap, %bb.j ], [ %i.ao, %.preheader ]
  %i.aq = fpext float %.0160 to double
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.aq) #12
  br label %bb.y

bb.k:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 9 uses
  %i.as = load i32, ptr %i.q, align 8, !tbaa !49
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.l, label %.preheader91

.preheader91:                                     ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !13
  %.7.insert.ext135 = zext i8 %i.av to i64
  %.7.insert.shift136 = shl nuw i64 %.7.insert.ext135, 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !13
  %.6.insert.ext130 = zext i8 %i.ax to i64
  %.6.insert.shift131 = shl nuw nsw i64 %.6.insert.ext130, 48
  %.6.insert.insert133 = or disjoint i64 %.7.insert.shift136, %.6.insert.shift131
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !13
  %.5.insert.ext125 = zext i8 %i.az to i64
  %.5.insert.shift126 = shl nuw nsw i64 %.5.insert.ext125, 40
  %.5.insert.insert128 = or disjoint i64 %.6.insert.insert133, %.5.insert.shift126
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !13
  %.4.insert.ext120 = zext i8 %i.bb to i64
  %.4.insert.shift121 = shl nuw nsw i64 %.4.insert.ext120, 32
  %.4.insert.insert123 = or disjoint i64 %.5.insert.insert128, %.4.insert.shift121
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !13
  %.3.insert.ext115 = zext i8 %i.bd to i64
  %.3.insert.shift116 = shl nuw nsw i64 %.3.insert.ext115, 24
  %.3.insert.insert118 = or disjoint i64 %.4.insert.insert123, %.3.insert.shift116
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !13
  %.2.insert.ext110 = zext i8 %i.bf to i64
  %.2.insert.shift111 = shl nuw nsw i64 %.2.insert.ext110, 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !13
  %.1.insert.ext105 = zext i8 %i.bh to i64
  %.1.insert.shift106 = shl nuw nsw i64 %.1.insert.ext105, 8
  %.1.insert.mask107 = or disjoint i64 %.3.insert.insert118, %.2.insert.shift111
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !13
  %.0.insert.ext101 = zext i8 %i.bi to i64
  %.0.insert.mask102 = or i64 %.1.insert.mask107, %.1.insert.shift106
  %.0.insert.insert103 = or i64 %.0.insert.mask102, %.0.insert.ext101
  %i.bj = bitcast i64 %.0.insert.insert103 to double
  br label %copywithendian.exit69

bb.l:                                             ; preds = %bb.k
  %i.bk = load double, ptr %i.ar, align 1
  br label %copywithendian.exit69

copywithendian.exit69:                            ; preds = %.preheader91, %bb.l
  %.0159 = phi double [ %i.bk, %bb.l ], [ %i.bj, %.preheader91 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0159) #12
  br label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 9 uses
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !49
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.preheader92

.preheader92:                                     ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !13
  %.7.insert.ext = zext i8 %i.bp to i64
  %.7.insert.shift = shl nuw i64 %.7.insert.ext, 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !13
  %.6.insert.ext = zext i8 %i.br to i64
  %.6.insert.shift = shl nuw nsw i64 %.6.insert.ext, 48
  %.6.insert.insert = or disjoint i64 %.7.insert.shift, %.6.insert.shift
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !13
  %.5.insert.ext = zext i8 %i.bt to i64
  %.5.insert.shift = shl nuw nsw i64 %.5.insert.ext, 40
  %.5.insert.insert = or disjoint i64 %.6.insert.insert, %.5.insert.shift
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !13
  %.4.insert.ext = zext i8 %i.bv to i64
  %.4.insert.shift = shl nuw nsw i64 %.4.insert.ext, 32
  %.4.insert.insert = or disjoint i64 %.5.insert.insert, %.4.insert.shift
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !13
  %.3.insert.ext = zext i8 %i.bx to i64
  %.3.insert.shift = shl nuw nsw i64 %.3.insert.ext, 24
  %.3.insert.insert = or disjoint i64 %.4.insert.insert, %.3.insert.shift
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !13
  %.2.insert.ext = zext i8 %i.bz to i64
  %.2.insert.shift = shl nuw nsw i64 %.2.insert.ext, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !13
  %.1.insert.ext = zext i8 %i.cb to i64
  %.1.insert.shift = shl nuw nsw i64 %.1.insert.ext, 8
  %.1.insert.mask = or disjoint i64 %.3.insert.insert, %.2.insert.shift
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !13
  %.0.insert.ext = zext i8 %i.cc to i64
  %.0.insert.mask = or i64 %.1.insert.mask, %.1.insert.shift
  %.0.insert.insert = or i64 %.0.insert.mask, %.0.insert.ext
  %i.cd = bitcast i64 %.0.insert.insert to double
  br label %copywithendian.exit75

bb.n:                                             ; preds = %bb.m
  %i.ce = load double, ptr %i.bl, align 1
  br label %copywithendian.exit75

copywithendian.exit75:                            ; preds = %.preheader92, %bb.n
  %.0 = phi double [ %i.ce, %bb.n ], [ %i.cd, %.preheader92 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0) #12
  br label %bb.y

bb.o:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.cg = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef %i.cf, i64 noundef %i.w) #12 ; 0 uses
  br label %bb.y

bb.p:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 19 uses
  %i.ci = trunc i64 %i.w to i32                   ; 5 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i, label %unpackint.exit.thread

.lr.ph.i:                                         ; preds = %bb.p
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !49
  %.not41.i = icmp eq i32 %i.ck, 0
  %2 = and i64 %i.w, 2147483647                   ; 24 uses
  %3 = call i64 @llvm.umin.i64(i64 %2, i64 8)     ; 16 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %4 = sub nsw i64 %2, %3
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %4
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = zext i8 %i.cm to i64                    ; 2 uses
  %5 = icmp samesign ugt i64 %2, 1
  br i1 %5, label %.lr.ph.split.us.i.1.a, label %._crit_edge.i

.lr.ph.split.us.i.1.a:                            ; preds = %.lr.ph.split.us.i
  %indvars.iv.next52.i = add nsw i64 %3, -1
  %6 = shl nuw nsw i64 %i.cn, 8
  %i.co = sub nsw i64 %2, %indvars.iv.next52.i
  %i.cp = getelementptr inbounds i8, ptr %i.ch, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i64
  %7 = or disjoint i64 %6, %i.cr                  ; 2 uses
  %.not182 = icmp eq i64 %2, 2
  br i1 %.not182, label %._crit_edge.i, label %.lr.ph.split.us.i.2.a

.lr.ph.split.us.i.2.a:                            ; preds = %.lr.ph.split.us.i.1.a
  %indvars.iv.next52.i.1 = add nsw i64 %3, -2
  %i.cs = shl nuw nsw i64 %7, 8
  %i.ct = sub nsw i64 %2, %indvars.iv.next52.i.1
  %i.cu = getelementptr inbounds i8, ptr %i.ch, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.cs, %i.cw            ; 2 uses
  %8 = icmp samesign ugt i64 %2, 3
  br i1 %8, label %.lr.ph.split.us.i.3.a, label %._crit_edge.i

.lr.ph.split.us.i.3.a:                            ; preds = %.lr.ph.split.us.i.2.a
  %indvars.iv.next52.i.2 = add nsw i64 %3, -3
  %i.cy = shl nuw nsw i64 %i.cx, 8
  %i.cz = sub nsw i64 %2, %indvars.iv.next52.i.2
  %i.da = getelementptr inbounds i8, ptr %i.ch, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !13
  %i.dc = zext i8 %i.db to i64
  %i.dd = or disjoint i64 %i.cy, %i.dc            ; 2 uses
  %.not183 = icmp eq i64 %2, 4
  br i1 %.not183, label %._crit_edge.i, label %.lr.ph.split.us.i.4.a

.lr.ph.split.us.i.4.a:                            ; preds = %.lr.ph.split.us.i.3.a
  %indvars.iv.next52.i.3 = add nsw i64 %3, -4
  %i.de = shl i64 %i.dd, 8
  %i.df = sub nsw i64 %2, %indvars.iv.next52.i.3
  %i.dg = getelementptr inbounds i8, ptr %i.ch, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.di = zext i8 %i.dh to i64
  %i.dj = or disjoint i64 %i.de, %i.di            ; 2 uses
  %9 = icmp samesign ugt i64 %2, 5
  br i1 %9, label %.lr.ph.split.us.i.5.a, label %._crit_edge.i

.lr.ph.split.us.i.5.a:                            ; preds = %.lr.ph.split.us.i.4.a
  %indvars.iv.next52.i.4 = add nsw i64 %3, -5
  %i.dk = shl i64 %i.dj, 8
  %i.dl = sub nsw i64 %2, %indvars.iv.next52.i.4
  %i.dm = getelementptr inbounds i8, ptr %i.ch, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = zext i8 %i.dn to i64
  %i.dp = or disjoint i64 %i.dk, %i.do            ; 2 uses
  %.not184 = icmp eq i64 %2, 6
  br i1 %.not184, label %._crit_edge.i, label %.lr.ph.split.us.i.6.a

.lr.ph.split.us.i.6.a:                            ; preds = %.lr.ph.split.us.i.5.a
  %indvars.iv.next52.i.5 = add nsw i64 %3, -6
  %i.dq = shl i64 %i.dp, 8
  %i.dr = sub nsw i64 %2, %indvars.iv.next52.i.5
  %i.ds = getelementptr inbounds i8, ptr %i.ch, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = zext i8 %i.dt to i64
  %i.dv = or disjoint i64 %i.dq, %i.du            ; 2 uses
  %10 = icmp samesign ugt i64 %2, 7
  br i1 %10, label %.lr.ph.split.us.i.7.a, label %._crit_edge.i

.lr.ph.split.us.i.7.a:                            ; preds = %.lr.ph.split.us.i.6.a
  %indvars.iv.next52.i.6 = add nsw i64 %3, -7
  %i.dw = shl i64 %i.dv, 8
  %i.dx = sub nsw i64 %2, %indvars.iv.next52.i.6
  %i.dy = getelementptr inbounds i8, ptr %i.ch, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !13
  %i.ea = zext i8 %i.dz to i64
  %i.eb = or disjoint i64 %i.dw, %i.ea
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %11 = getelementptr i8, ptr %i.ch, i64 %3
  %i.ec = getelementptr i8, ptr %11, i64 -1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13
  %i.ee = zext i8 %i.ed to i64                    ; 2 uses
  %12 = icmp samesign ugt i64 %2, 1
  br i1 %12, label %.lr.ph.split.i.1, label %._crit_edge.i.thread

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.ef = shl nuw nsw i64 %i.ee, 8
  %i.eg = getelementptr i8, ptr %i.ch, i64 %3
  %i.eh = getelementptr i8, ptr %i.eg, i64 -2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i64
  %i.ek = or disjoint i64 %i.ef, %i.ej            ; 2 uses
  %.not179 = icmp eq i64 %2, 2
  br i1 %.not179, label %._crit_edge.i.thread, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.el = shl nuw nsw i64 %i.ek, 8
  %i.em = getelementptr i8, ptr %i.ch, i64 %3
  %i.en = getelementptr i8, ptr %i.em, i64 -3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !13
  %i.ep = zext i8 %i.eo to i64
  %i.eq = or disjoint i64 %i.el, %i.ep            ; 2 uses
  %13 = icmp samesign ugt i64 %2, 3
  br i1 %13, label %.lr.ph.split.i.3, label %._crit_edge.i.thread

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.er = shl nuw nsw i64 %i.eq, 8
  %i.es = getelementptr i8, ptr %i.ch, i64 %3
  %i.et = getelementptr i8, ptr %i.es, i64 -4
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !13
  %i.ev = zext i8 %i.eu to i64
  %i.ew = or disjoint i64 %i.er, %i.ev            ; 2 uses
  %.not180 = icmp eq i64 %2, 4
  br i1 %.not180, label %._crit_edge.i.thread, label %.lr.ph.split.i.4

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.ex = shl i64 %i.ew, 8
  %i.ey = getelementptr i8, ptr %i.ch, i64 %3
  %i.ez = getelementptr i8, ptr %i.ey, i64 -5
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !13
  %i.fb = zext i8 %i.fa to i64
  %i.fc = or disjoint i64 %i.ex, %i.fb            ; 2 uses
  %14 = icmp samesign ugt i64 %2, 5
  br i1 %14, label %.lr.ph.split.i.5, label %._crit_edge.i.thread

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.fd = shl i64 %i.fc, 8
  %i.fe = getelementptr i8, ptr %i.ch, i64 %3
  %i.ff = getelementptr i8, ptr %i.fe, i64 -6
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !13
  %i.fh = zext i8 %i.fg to i64
  %i.fi = or disjoint i64 %i.fd, %i.fh            ; 2 uses
  %.not181 = icmp eq i64 %2, 6
  br i1 %.not181, label %._crit_edge.i.thread, label %.lr.ph.split.i.6

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.fj = shl i64 %i.fi, 8
  %i.fk = getelementptr i8, ptr %i.ch, i64 %3
  %i.fl = getelementptr i8, ptr %i.fk, i64 -7
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13
  %i.fn = zext i8 %i.fm to i64
  %i.fo = or disjoint i64 %i.fj, %i.fn            ; 2 uses
  %15 = icmp samesign ugt i64 %2, 7
  br i1 %15, label %.lr.ph.split.i.7, label %._crit_edge.i.thread

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.fp = shl i64 %i.fo, 8
  %i.fq = getelementptr i8, ptr %i.ch, i64 %3
  %i.fr = getelementptr i8, ptr %i.fq, i64 -8
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13
  %i.ft = zext i8 %i.fs to i64
  %i.fu = or disjoint i64 %i.fp, %i.ft
  br label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.7.a, %.lr.ph.split.us.i.6.a, %.lr.ph.split.us.i.5.a, %.lr.ph.split.us.i.4.a, %.lr.ph.split.us.i.3.a, %.lr.ph.split.us.i.2.a, %.lr.ph.split.us.i.1.a, %.lr.ph.split.us.i
  %.lcssa177 = phi i64 [ %i.cn, %.lr.ph.split.us.i ], [ %7, %.lr.ph.split.us.i.1.a ], [ %i.cx, %.lr.ph.split.us.i.2.a ], [ %i.dd, %.lr.ph.split.us.i.3.a ], [ %i.dj, %.lr.ph.split.us.i.4.a ], [ %i.dp, %.lr.ph.split.us.i.5.a ], [ %i.dv, %.lr.ph.split.us.i.6.a ], [ %i.eb, %.lr.ph.split.us.i.7.a ] ; 2 uses
  %i.fv = icmp samesign ult i32 %i.ci, 9
  br i1 %i.fv, label %unpackint.exit, label %.lr.ph46.split.us.i.preheader

._crit_edge.i.thread:                             ; preds = %.lr.ph.split.i.7, %.lr.ph.split.i.6, %.lr.ph.split.i.5, %.lr.ph.split.i.4, %.lr.ph.split.i.3, %.lr.ph.split.i.2, %.lr.ph.split.i.1, %.lr.ph.split.i
  %.lcssa = phi i64 [ %i.ee, %.lr.ph.split.i ], [ %i.ek, %.lr.ph.split.i.1 ], [ %i.eq, %.lr.ph.split.i.2 ], [ %i.ew, %.lr.ph.split.i.3 ], [ %i.fc, %.lr.ph.split.i.4 ], [ %i.fi, %.lr.ph.split.i.5 ], [ %i.fo, %.lr.ph.split.i.6 ], [ %i.fu, %.lr.ph.split.i.7 ] ; 2 uses
  %i.fw = icmp samesign ult i32 %i.ci, 9
  br i1 %i.fw, label %unpackint.exit, label %.lr.ph46.split.i.preheader

.lr.ph46.split.i.preheader:                       ; preds = %._crit_edge.i.thread
  %wide.trip.count = and i64 %i.w, 2147483647
  br label %.lr.ph46.split.i

.lr.ph46.split.us.i.preheader:                    ; preds = %._crit_edge.i
  %umax = call i64 @llvm.umax.i64(i64 %2, i64 9)
  br label %.lr.ph46.split.us.i

.lr.ph46.split.us.i:                              ; preds = %.lr.ph46.split.us.i.preheader, %bb.r
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %bb.r ], [ 8, %.lr.ph46.split.us.i.preheader ] ; 2 uses
  %i.fx = xor i64 %indvars.iv57.i, -1
  %i.fy = add i64 %i.w, %i.fx
  %sext = shl i64 %i.fy, 32
  %i.fz = ashr exact i64 %sext, 32
  %i.ga = getelementptr inbounds i8, ptr %i.ch, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !13
  %.not39.us.i = icmp eq i8 %i.gb, 0
  br i1 %.not39.us.i, label %bb.r, label %bb.q, !prof !14

bb.q:                                             ; preds = %.lr.ph46.split.us.i
  %i.gc = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %i.ci) #12 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph46.split.us.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next58.i, %umax
  br i1 %exitcond98.not, label %unpackint.exit, label %.lr.ph46.split.us.i

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.split.i.preheader, %bb.t
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %bb.t ], [ 8, %.lr.ph46.split.i.preheader ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv53.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %.not39.i = icmp eq i8 %i.ge, 0
  br i1 %.not39.i, label %bb.t, label %bb.s, !prof !14

bb.s:                                             ; preds = %.lr.ph46.split.i
  %i.gf = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %i.ci) #12 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph46.split.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count
  br i1 %exitcond.not, label %unpackint.exit, label %.lr.ph46.split.i

unpackint.exit:                                   ; preds = %bb.t, %bb.r, %._crit_edge.i.thread, %._crit_edge.i
  %.0.lcssa.i167 = phi i64 [ %.lcssa, %._crit_edge.i.thread ], [ %.lcssa177, %bb.r ], [ %.lcssa177, %._crit_edge.i ], [ %.lcssa, %bb.t ] ; 3 uses
  %i.gg = load i64, ptr %i.b, align 8, !tbaa !11
  %i.gh = add i64 %i.ab, %i.w
  %i.gi = sub i64 %i.gg, %i.gh
  %.not62 = icmp ugt i64 %.0.lcssa.i167, %i.gi
  br i1 %.not62, label %bb.u, label %unpackint.exit.thread, !prof !60

bb.u:                                             ; preds = %unpackint.exit
  %i.gj = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.72) #12 ; 0 uses
  br label %unpackint.exit.thread

unpackint.exit.thread:                            ; preds = %bb.p, %bb.u, %unpackint.exit
  %.1.i79 = phi i64 [ %.0.lcssa.i167, %unpackint.exit ], [ %.0.lcssa.i167, %bb.u ], [ 0, %bb.p ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.w
  %i.gl = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef %i.gk, i64 noundef %.1.i79) #12 ; 0 uses
  %i.gm = add i64 %.1.i79, %i.ab
  br label %bb.y

bb.v:                                             ; preds = %bb.g
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 2 uses
  %i.go = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gn) #13 ; 3 uses
  %i.gp = add i64 %i.go, %i.ab
  %i.gq = load i64, ptr %i.b, align 8, !tbaa !11
  %i.gr = icmp ult i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.x, label %bb.w, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.gs = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.74) #12 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gt = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.gn, i64 noundef %i.go) #12 ; 0 uses
  %i.gu = add i64 %i.ab, 1
  %i.gv = add i64 %i.gu, %i.go
  br label %bb.y

default.unreachable164:                           ; preds = %bb.g
  unreachable

bb.y:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.x, %unpackint.exit.thread, %bb.o, %copywithendian.exit75, %copywithendian.exit69, %copywithendian.exit, %bb.h
  %.159 = phi i64 [ %i.gv, %bb.x ], [ %i.ab, %bb.h ], [ %i.ab, %copywithendian.exit ], [ %i.ab, %copywithendian.exit69 ], [ %i.ab, %copywithendian.exit75 ], [ %i.ab, %bb.o ], [ %i.gm, %unpackint.exit.thread ], [ %i.ab, %bb.g ], [ %i.ab, %bb.g ], [ %i.ab, %bb.g ]
  %.1 = phi i32 [ %i.ac, %bb.x ], [ %i.ac, %bb.h ], [ %i.ac, %copywithendian.exit ], [ %i.ac, %copywithendian.exit69 ], [ %i.ac, %copywithendian.exit75 ], [ %i.ac, %bb.o ], [ %i.ac, %unpackint.exit.thread ], [ %.089, %bb.g ], [ %.089, %bb.g ], [ %.089, %bb.g ] ; 2 uses
  %i.gw = add i64 %.159, %i.w                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !13
  %.not60 = icmp eq i8 %i.gy, 0
  br i1 %.not60, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.gz = add nsw i64 %i.gw, 1
  %i.ha = add nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.058.lcssa = phi i64 [ %.0.i, %bb.e ], [ %i.gz, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.e ], [ %i.ha, %._crit_edge.loopexit ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.058.lcssa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare ptr @luaL_buffinitsize(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_pushresultsize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_iscfunction(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_dump(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @writer(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 16, !tbaa !20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 16, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @luaL_pushresult(ptr noundef nonnull %i.d) #12
  tail call void @lua_copy(ptr noundef %0, i32 noundef -1, i32 noundef 1) #12
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @luaL_addlstring(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 0
}

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

declare void @lua_copy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_addlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @str_find_aux(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %2 = alloca %struct.MatchState, align 8         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #12 ; 9 uses
  %i.d = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #12 ; 9 uses
  %i.e = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #12 ; 5 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %posrelatI.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.e, 0
  %i.i = sub nsw i64 0, %i.f
  %i.j = icmp slt i64 %i.e, %i.i
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond.i, label %posrelatI.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.e, 1
  %i.l = add i64 %i.k, %i.f
  br label %posrelatI.exit

posrelatI.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.c ], [ %i.e, %bb.a ], [ 1, %bb.b ]
  %i.m = add i64 %.0.i, -1                        ; 4 uses
  %i.n = icmp ugt i64 %i.m, %i.f
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %posrelatI.exit
  call void @lua_pushnil(ptr noundef %0) #12
  br label %bb.o

bb.e:                                             ; preds = %posrelatI.exit
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.nospecials.exit.thread_crit_edge, label %bb.f

.nospecials.exit.thread_crit_edge:                ; preds = %bb.e
  %.pre88.pre = load i64, ptr %i.b, align 8, !tbaa !11
  br label %nospecials.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @lua_toboolean(ptr noundef %0, i32 noundef 4) #12
  %.not54 = icmp eq i32 %i.o, 0
  %.pre = load i64, ptr %i.b, align 8, !tbaa !11  ; 5 uses
  br i1 %.not54, label %.preheader, label %nospecials.exit

.preheader:                                       ; preds = %bb.f, %bb.g
  %.0.i62 = phi i64 [ %i.t, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i62 ; 2 uses
  %i.q = call ptr @strpbrk(ptr noundef readonly %i.p, ptr noundef nonnull @.str.20) #13
end_hunk_0
begin_hunk_1_@getoption:bb.a

.preheader.i.i37:                                 ; preds = %bb.p, %.preheader.i.i37
  %i.ae = phi ptr [ %i.ag, %.preheader.i.i37 ], [ %i.b, %bb.p ] ; 2 uses
  %.0.i.i38 = phi i64 [ %i.al, %.preheader.i.i37 ], [ 0, %bb.p ]
  %i.af = mul nuw nsw i64 %.0.i.i38, 10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !46
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ai = sext i8 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, 4294967248
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = add nuw i64 %i.ak, %i.af                ; 5 uses
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.an = sext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48
  %i.ap = icmp ult i32 %i.ao, 10
  %i.aq = icmp ult i64 %i.al, 922337203685477580
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.preheader.i.i37, label %getnum.exit.i39

getnum.exit.i39:                                  ; preds = %.preheader.i.i37
  %i.as = add i64 %i.al, -17
  %i.at = icmp ult i64 %i.as, -16
  br i1 %i.at, label %bb.q, label %getnumlimit.exit42, !prof !70

bb.q:                                             ; preds = %getnum.exit.i39
  %i.au = load ptr, ptr %0, align 8, !tbaa !48
  %i.av = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.au, ptr noundef nonnull @.str.68, i64 noundef %i.al, i32 noundef 16) #12
  %i.aw = zext i32 %i.av to i64
  br label %getnumlimit.exit42

getnumlimit.exit42:                               ; preds = %getnum.exit.i39, %bb.p, %bb.q
  %.0.i41 = phi i64 [ %i.aw, %bb.q ], [ %i.al, %getnum.exit.i39 ], [ 4, %bb.p ]
  store i64 %.0.i41, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.r:                                             ; preds = %bb.a
  %i.ax = load i8, ptr %i.b, align 1, !tbaa !13
  %i.ay = sext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -58
  %i.ba = icmp ult i32 %i.az, -10
  br i1 %i.ba, label %getnumlimit.exit48, label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %bb.r, %.preheader.i.i43
  %i.bb = phi ptr [ %i.bd, %.preheader.i.i43 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i44 = phi i64 [ %i.bi, %.preheader.i.i43 ], [ 0, %bb.r ]
  %i.bc = mul nuw nsw i64 %.0.i.i44, 10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 3 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !46
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bf = sext i8 %i.be to i64
  %i.bg = add nsw i64 %i.bf, 4294967248
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = add nuw i64 %i.bh, %i.bc                ; 5 uses
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bk = sext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48
  %i.bm = icmp ult i32 %i.bl, 10
  %i.bn = icmp ult i64 %i.bi, 922337203685477580
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.preheader.i.i43, label %getnum.exit.i45

getnum.exit.i45:                                  ; preds = %.preheader.i.i43
  %i.bp = add i64 %i.bi, -17
  %i.bq = icmp ult i64 %i.bp, -16
  br i1 %i.bq, label %bb.s, label %getnumlimit.exit48, !prof !70

bb.s:                                             ; preds = %getnum.exit.i45
  %i.br = load ptr, ptr %0, align 8, !tbaa !48
  %i.bs = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.br, ptr noundef nonnull @.str.68, i64 noundef %i.bi, i32 noundef 16) #12
  %i.bt = zext i32 %i.bs to i64
  br label %getnumlimit.exit48

getnumlimit.exit48:                               ; preds = %getnum.exit.i45, %bb.r, %bb.s
  %.0.i47 = phi i64 [ %i.bt, %bb.s ], [ %i.bi, %getnum.exit.i45 ], [ 8, %bb.r ]
  store i64 %.0.i47, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  %i.bu = load i8, ptr %i.b, align 1, !tbaa !13
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -58
  %i.bx = icmp ult i32 %i.bw, -10
  br i1 %i.bx, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %i.by = phi ptr [ %i.ca, %.preheader.i ], [ %i.b, %bb.t ] ; 2 uses
  %.0.i49 = phi i64 [ %i.cf, %.preheader.i ], [ 0, %bb.t ]
  %i.bz = mul nuw nsw i64 %.0.i49, 10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 3 uses
  store ptr %i.ca, ptr %1, align 8, !tbaa !46
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !13
  %i.cc = sext i8 %i.cb to i64
  %i.cd = add nsw i64 %i.cc, 4294967248
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = add nuw i64 %i.ce, %i.bz                ; 3 uses
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.ch = sext i8 %i.cg to i32
  %i.ci = add nsw i32 %i.ch, -48
  %i.cj = icmp ult i32 %i.ci, 10
  %i.ck = icmp ult i64 %i.cf, 922337203685477580
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader.i, label %getnum.exit

getnum.exit:                                      ; preds = %.preheader.i
  store i64 %i.cf, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %2, align 8, !tbaa !11
  %i.cm = load ptr, ptr %0, align 8, !tbaa !48
  %i.cn = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.cm, ptr noundef nonnull @.str.66) #12 ; 0 uses
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  store i64 1, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.w:                                             ; preds = %bb.a
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.co, align 8, !tbaa !49
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cp, align 8, !tbaa !49
  br label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !49
  br label %bb.ad

bb.aa:                                            ; preds = %bb.a
  %i.cr = load i8, ptr %i.b, align 1, !tbaa !13
  %i.cs = sext i8 %i.cr to i32
  %i.ct = add nsw i32 %i.cs, -58
  %i.cu = icmp ult i32 %i.ct, -10
  br i1 %i.cu, label %getnum.exit.i52.thread, label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %bb.aa, %.preheader.i.i50
  %i.cv = phi ptr [ %i.cx, %.preheader.i.i50 ], [ %i.b, %bb.aa ] ; 2 uses
  %.0.i.i51 = phi i64 [ %i.dc, %.preheader.i.i50 ], [ 0, %bb.aa ]
  %i.cw = mul nuw nsw i64 %.0.i.i51, 10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 3 uses
  store ptr %i.cx, ptr %1, align 8, !tbaa !46
  %i.cy = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cz = sext i8 %i.cy to i64
  %i.da = add nsw i64 %i.cz, 4294967248
  %i.db = and i64 %i.da, 4294967295
  %i.dc = add nuw i64 %i.db, %i.cw                ; 5 uses
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.de = sext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48
  %i.dg = icmp ult i32 %i.df, 10
  %i.dh = icmp ult i64 %i.dc, 922337203685477580
  %i.di = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %i.di, label %.preheader.i.i50, label %getnum.exit.i52

getnum.exit.i52:                                  ; preds = %.preheader.i.i50
  %i.dj = add i64 %i.dc, -17
  %i.dk = icmp ult i64 %i.dj, -16
  br i1 %i.dk, label %bb.ab, label %getnum.exit.i52.thread, !prof !70

bb.ab:                                            ; preds = %getnum.exit.i52
  %i.dl = load ptr, ptr %0, align 8, !tbaa !48
  %i.dm = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.dl, ptr noundef nonnull @.str.68, i64 noundef %i.dc, i32 noundef 16) #12
  br label %getnumlimit.exit55

getnum.exit.i52.thread:                           ; preds = %bb.aa, %getnum.exit.i52
  %.07.i.i5364 = phi i64 [ %i.dc, %getnum.exit.i52 ], [ 16, %bb.aa ]
  %i.dn = trunc nuw nsw i64 %.07.i.i5364 to i32
  br label %getnumlimit.exit55

getnumlimit.exit55:                               ; preds = %bb.ab, %getnum.exit.i52.thread
  %.0.i54 = phi i32 [ %i.dm, %bb.ab ], [ %i.dn, %getnum.exit.i52.thread ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i54, ptr %i.do, align 4, !tbaa !50
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.dp = sext i8 %i.c to i32
  %i.dq = load ptr, ptr %0, align 8, !tbaa !48
  %i.dr = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.dq, ptr noundef nonnull @.str.67, i32 noundef %i.dp) #12 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %getnumlimit.exit55, %bb.z, %bb.y, %bb.x, %bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %getnum.exit, %bb.a, %bb.u, %bb.ad, %bb.w, %bb.v, %getnumlimit.exit48, %getnumlimit.exit42, %getnumlimit.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.ad ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 0, %getnumlimit.exit ], [ 1, %getnumlimit.exit42 ], [ 6, %getnumlimit.exit48 ], [ 9, %bb.w ], [ 5, %getnum.exit ], [ 8, %bb.v ], [ 5, %bb.u ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @unpackint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq i32 %2, 0
  %5 = zext nneg i32 %3 to i64                    ; 9 uses
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 8) ; 16 uses
  br i1 %.not41, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %7 = sub nsw i64 %5, %6
  %i.b = getelementptr inbounds i8, ptr %1, i64 %7
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %.not75.a = icmp eq i32 %3, 1
  br i1 %.not75.a, label %._crit_edge, label %.lr.ph.split.us.1.a

.lr.ph.split.us.1.a:                              ; preds = %.lr.ph.split.us
  %indvars.iv.next52 = add nsw i64 %6, -1
  %8 = shl nuw nsw i64 %i.d, 8
  %i.e = sub nsw i64 %5, %indvars.iv.next52
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = zext i8 %i.g to i64
  %9 = or disjoint i64 %8, %i.h                   ; 2 uses
  %10 = icmp ugt i32 %3, 2
  br i1 %10, label %.lr.ph.split.us.2.a, label %._crit_edge

.lr.ph.split.us.2.a:                              ; preds = %.lr.ph.split.us.1.a
  %indvars.iv.next52.1 = add nsw i64 %6, -2
  %i.i = shl nuw nsw i64 %9, 8
  %i.j = sub nsw i64 %5, %indvars.iv.next52.1
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i64
  %i.n = or disjoint i64 %i.i, %i.m               ; 2 uses
  %.not76 = icmp eq i32 %3, 3
  br i1 %.not76, label %._crit_edge, label %.lr.ph.split.us.3.a

.lr.ph.split.us.3.a:                              ; preds = %.lr.ph.split.us.2.a
  %indvars.iv.next52.2 = add nsw i64 %6, -3
  %i.o = shl nuw nsw i64 %i.n, 8
  %i.p = sub nsw i64 %5, %indvars.iv.next52.2
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %i.o, %i.s               ; 2 uses
  %11 = icmp ugt i32 %3, 4
  br i1 %11, label %.lr.ph.split.us.4.a, label %._crit_edge

.lr.ph.split.us.4.a:                              ; preds = %.lr.ph.split.us.3.a
  %indvars.iv.next52.3 = add nsw i64 %6, -4
  %i.u = shl i64 %i.t, 8
  %i.v = sub nsw i64 %5, %indvars.iv.next52.3
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %i.u, %i.y               ; 2 uses
  %.not77 = icmp eq i32 %3, 5
  br i1 %.not77, label %._crit_edge, label %.lr.ph.split.us.5.a

.lr.ph.split.us.5.a:                              ; preds = %.lr.ph.split.us.4.a
  %indvars.iv.next52.4 = add nsw i64 %6, -5
  %i.aa = shl i64 %i.z, 8
  %i.ab = sub nsw i64 %5, %indvars.iv.next52.4
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i64
  %i.af = or disjoint i64 %i.aa, %i.ae            ; 2 uses
  %12 = icmp ugt i32 %3, 6
  br i1 %12, label %.lr.ph.split.us.6.a, label %._crit_edge

.lr.ph.split.us.6.a:                              ; preds = %.lr.ph.split.us.5.a
  %indvars.iv.next52.5 = add nsw i64 %6, -6
  %i.ag = shl i64 %i.af, 8
  %i.ah = sub nsw i64 %5, %indvars.iv.next52.5
  %i.ai = getelementptr inbounds i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ag, %i.ak            ; 2 uses
  %.not78 = icmp eq i32 %3, 7
  br i1 %.not78, label %._crit_edge, label %.lr.ph.split.us.7.a

.lr.ph.split.us.7.a:                              ; preds = %.lr.ph.split.us.6.a
  %indvars.iv.next52.6 = add nsw i64 %6, -7
  %i.am = shl i64 %i.al, 8
  %i.an = sub nsw i64 %5, %indvars.iv.next52.6
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.am, %i.aq
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %13 = getelementptr i8, ptr %1, i64 %6
  %i.as = getelementptr i8, ptr %13, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13
  %i.au = zext i8 %i.at to i64                    ; 2 uses
  %.not71 = icmp eq i32 %3, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = getelementptr i8, ptr %1, i64 %6
  %i.ax = getelementptr i8, ptr %i.aw, i64 -2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.av, %i.az            ; 2 uses
  %i.bb = icmp ugt i32 %3, 2
  br i1 %i.bb, label %.lr.ph.split.2, label %._crit_edge

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.bc = shl nuw nsw i64 %i.ba, 8
  %i.bd = getelementptr i8, ptr %1, i64 %6
  %i.be = getelementptr i8, ptr %i.bd, i64 -3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bc, %i.bg            ; 2 uses
  %.not72 = icmp eq i32 %3, 3
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.bi = shl nuw nsw i64 %i.bh, 8
  %i.bj = getelementptr i8, ptr %1, i64 %6
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = zext i8 %i.bl to i64
  %i.bn = or disjoint i64 %i.bi, %i.bm            ; 2 uses
  %i.bo = icmp ugt i32 %3, 4
  br i1 %i.bo, label %.lr.ph.split.4, label %._crit_edge

.lr.ph.split.4:                                   ; preds = %.lr.ph.split.3
  %i.bp = shl i64 %i.bn, 8
  %i.bq = getelementptr i8, ptr %1, i64 %6
  %i.br = getelementptr i8, ptr %i.bq, i64 -5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = zext i8 %i.bs to i64
  %i.bu = or disjoint i64 %i.bp, %i.bt            ; 2 uses
  %.not73 = icmp eq i32 %3, 5
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %.lr.ph.split.4
  %i.bv = shl i64 %i.bu, 8
  %i.bw = getelementptr i8, ptr %1, i64 %6
  %i.bx = getelementptr i8, ptr %i.bw, i64 -6
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = zext i8 %i.by to i64
  %i.ca = or disjoint i64 %i.bv, %i.bz            ; 2 uses
  %i.cb = icmp ugt i32 %3, 6
  br i1 %i.cb, label %.lr.ph.split.6, label %._crit_edge

.lr.ph.split.6:                                   ; preds = %.lr.ph.split.5
  %i.cc = shl i64 %i.ca, 8
  %i.cd = getelementptr i8, ptr %1, i64 %6
  %i.ce = getelementptr i8, ptr %i.cd, i64 -7
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = zext i8 %i.cf to i64
  %i.ch = or disjoint i64 %i.cc, %i.cg            ; 2 uses
  %.not74 = icmp eq i32 %3, 7
  br i1 %.not74, label %._crit_edge, label %.lr.ph.split.7

.lr.ph.split.7:                                   ; preds = %.lr.ph.split.6
  %i.ci = shl i64 %i.ch, 8
  %i.cj = getelementptr i8, ptr %1, i64 %6
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i64
  %i.cn = or disjoint i64 %i.ci, %i.cm
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.4, %.lr.ph.split.5, %.lr.ph.split.6, %.lr.ph.split.7, %.lr.ph.split.us, %.lr.ph.split.us.1.a, %.lr.ph.split.us.2.a, %.lr.ph.split.us.3.a, %.lr.ph.split.us.4.a, %.lr.ph.split.us.5.a, %.lr.ph.split.us.6.a, %.lr.ph.split.us.7.a
  %.0.lcssa = phi i64 [ %i.ar, %.lr.ph.split.us.7.a ], [ %i.d, %.lr.ph.split.us ], [ %9, %.lr.ph.split.us.1.a ], [ %i.n, %.lr.ph.split.us.2.a ], [ %i.t, %.lr.ph.split.us.3.a ], [ %i.z, %.lr.ph.split.us.4.a ], [ %i.af, %.lr.ph.split.us.5.a ], [ %i.al, %.lr.ph.split.us.6.a ], [ %i.au, %.lr.ph.split ], [ %i.ba, %.lr.ph.split.1 ], [ %i.bh, %.lr.ph.split.2 ], [ %i.bn, %.lr.ph.split.3 ], [ %i.bu, %.lr.ph.split.4 ], [ %i.ca, %.lr.ph.split.5 ], [ %i.ch, %.lr.ph.split.6 ], [ %i.cn, %.lr.ph.split.7 ] ; 5 uses
  %i.co = icmp samesign ult i32 %3, 8
  br i1 %i.co, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa61 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.not40 = icmp eq i32 %4, 0
  br i1 %.not40, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  %i.cp = shl nsw i32 %3, 3
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw i64 1, %i.cr                    ; 2 uses
  %i.ct = xor i64 %.0.lcssa61, %i.cs
  %i.cu = sub i64 %i.ct, %i.cs
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %3, 8
  br i1 %.not, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.c
  %.not37 = icmp eq i32 %4, 0
  %i.cv = icmp sgt i64 %.0.lcssa, -1
  %i.cw = select i1 %.not37, i1 true, i1 %i.cv
  %i.cx = select i1 %i.cw, i32 0, i32 255         ; 2 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.lr.ph46.split.us.preheader, label %.lr.ph46.split

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %i.cy = zext nneg i32 %3 to i64
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %bb.e
  %indvars.iv57 = phi i64 [ 8, %.lr.ph46.split.us.preheader ], [ %indvars.iv.next58, %bb.e ] ; 2 uses
  %i.cz = trunc nsw i64 %indvars.iv57 to i32
  %i.da = xor i32 %i.cz, -1
  %i.db = add nsw i32 %3, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %1, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = zext i8 %i.de to i32
  %.not39.us = icmp eq i32 %i.cx, %i.df
  br i1 %.not39.us, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %.lr.ph46.split.us
  %i.dg = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %3) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph46.split.us, %bb.d
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv.next58, %i.cy
  br i1 %i.dh, label %.lr.ph46.split.us, label %.loopexit

.lr.ph46.split:                                   ; preds = %.lr.ph46, %bb.g
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.g ], [ 8, %.lr.ph46 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = zext i8 %i.dj to i32
  %.not39 = icmp eq i32 %i.cx, %i.dk
  br i1 %.not39, label %bb.g, label %bb.f, !prof !14

bb.f:                                             ; preds = %.lr.ph46.split
  %i.dl = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %3) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46.split, %bb.f
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.dm = trunc nuw i64 %indvars.iv.next54 to i32
  %i.dn = icmp sgt i32 %3, %i.dm
  br i1 %i.dn, label %.lr.ph46.split, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %._crit_edge.thread, %bb.b
  %.1 = phi i64 [ %i.cu, %bb.b ], [ %.0.lcssa61, %._crit_edge.thread ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.g ]
  ret i64 %.1
}

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @lua_setmetatable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_add(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.77)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_sub(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_mul(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.79)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_mod(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.80)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_pow(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.81)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_div(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 5, ptr noundef nonnull @.str.82)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_idiv(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 6, ptr noundef nonnull @.str.83)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_unm(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.84)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arith(ptr noundef %0, i32 noundef range(i32 0, 13) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #12
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %tonum.exit.thread, label %bb.b

tonum.exit.thread:                                ; preds = %bb.a
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.e = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %tonum.exit.thread13, label %tonum.exit

tonum.exit.thread13:                              ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.f

tonum.exit:                                       ; preds = %bb.b
  %i.f = call i64 @lua_stringtonumber(ptr noundef %0, ptr noundef nonnull %i.e) #12
  %i.g = load i64, ptr %i.b, align 8, !tbaa !11
  %i.h = add i64 %i.g, 1
  %.not = icmp eq i64 %i.f, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %tonum.exit.thread, %tonum.exit
  %i.i = call i32 @lua_type(ptr noundef %0, i32 noundef 2) #12
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %tonum.exit9.thread, label %bb.d

tonum.exit9.thread:                               ; preds = %bb.c
  call void @lua_pushvalue(ptr noundef %0, i32 noundef 2) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.k = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i7, label %tonum.exit9.thread17, label %tonum.exit9

tonum.exit9.thread17:                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.f

tonum.exit9:                                      ; preds = %bb.d
  %i.l = call i64 @lua_stringtonumber(ptr noundef %0, ptr noundef nonnull %i.k) #12
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11
  %i.n = add i64 %i.m, 1
  %.not19 = icmp eq i64 %i.l, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tonum.exit9.thread, %tonum.exit9
  call void @lua_arith(ptr noundef %0, i32 noundef %1) #12
  br label %bb.h

bb.f:                                             ; preds = %tonum.exit9.thread17, %tonum.exit.thread13, %tonum.exit9, %tonum.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @lua_settop(ptr noundef %0, i32 noundef 2) #12
  %i.p = call i32 @lua_type(ptr noundef %0, i32 noundef 2) #12
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 @luaL_getmetafield(ptr noundef %0, i32 noundef 2, ptr noundef %2) #12
  %.not.i10 = icmp eq i32 %i.r, 0
  br i1 %.not.i10, label %.critedge.i, label %trymt.exit, !prof !12

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.s = call i32 @lua_type(ptr noundef %0, i32 noundef -2) #12
  %i.t = call ptr @lua_typename(ptr noundef %0, i32 noundef %i.s) #12
  %i.u = call i32 @lua_type(ptr noundef %0, i32 noundef -1) #12
  %i.v = call ptr @lua_typename(ptr noundef %0, i32 noundef %i.u) #12
  %i.w = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.o, ptr noundef %i.t, ptr noundef %i.v) #12 ; 0 uses
  br label %trymt.exit

trymt.exit:                                       ; preds = %bb.g, %.critedge.i
  call void @lua_rotate(ptr noundef %0, i32 noundef -3, i32 noundef 1) #12
  call void @lua_callk(ptr noundef %0, i32 noundef 2, i32 noundef 1, i64 noundef 0, ptr noundef null) #12
  br label %bb.h

bb.h:                                             ; preds = %trymt.exit, %bb.e
  ret void
}

declare void @lua_arith(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lua_stringtonumber(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @luaL_getmetafield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_rotate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!6, !6, i64 0}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!18 = !{!"luaL_Buffer", !16, i64 0, !10, i64 8, !10, i64 16, !17, i64 24, !6, i64 32}
!19 = !{!"str_Writer", !7, i64 0, !18, i64 16}
!20 = !{!19, !7, i64 0}
!21 = !{!18, !10, i64 16}
!22 = !{!18, !10, i64 8}
!23 = !{!18, !16, i64 0}
!24 = !{!"p1 short", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"short", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"MatchState", !16, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !7, i64 32, !7, i64 36, !6, i64 40}
!29 = !{!28, !17, i64 24}
!30 = !{!28, !16, i64 0}
!31 = !{!28, !16, i64 8}
!32 = !{!28, !16, i64 16}
!33 = !{!"GMatchState", !16, i64 0, !16, i64 8, !16, i64 16, !28, i64 24}
!34 = !{!33, !16, i64 0}
!35 = !{!33, !16, i64 8}
!36 = !{!33, !16, i64 16}
!37 = !{!28, !7, i64 32}
!38 = !{!28, !7, i64 36}
!39 = !{!"", !16, i64 0, !10, i64 8}
!40 = !{!39, !10, i64 8}
!41 = !{!39, !16, i64 0}
!42 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!43 = !{!"p1 int", !15, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!7, !7, i64 0}
!46 = !{!16, !16, i64 0}
!47 = !{!"Header", !17, i64 0, !7, i64 8, !7, i64 12}
!48 = !{!47, !17, i64 0}
!49 = !{!47, !7, i64 8}
!50 = !{!47, !7, i64 12}
!51 = !{!"lconv", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !6, i64 80, !6, i64 81, !6, i64 82, !6, i64 83, !6, i64 84, !6, i64 85, !6, i64 86, !6, i64 87, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93}
!52 = !{!51, !16, i64 0}
!53 = distinct !{!53, !59}
!54 = distinct !{!54, !59}
!55 = distinct !{!55, !59}
!56 = distinct !{!56, !59}
!57 = distinct !{!57, !59}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = distinct !{!65, !67}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.peeled.count", i32 1}
!68 = !{!33, !17, i64 48}
!69 = !{!33, !16, i64 32}
!70 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
end_hunk_1
