inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucm_addState(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132096 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 128
  br i1 %i.d, label %bb.b, label %vector.ph

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 128) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

vector.ph:                                        ; preds = %bb.a
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = getelementptr inbounds [1024 x i8], ptr %0, i64 %i.g ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> splat (i32 -2140078081), ptr %i.h, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store <4 x i32> splat (i32 -2140078081), ptr %i.j, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store <4 x i32> splat (i32 -2140078081), ptr %i.l, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store <4 x i32> splat (i32 -2140078081), ptr %i.n, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store <4 x i32> splat (i32 -2140078081), ptr %i.p, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store <4 x i32> splat (i32 -2140078081), ptr %i.r, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store <4 x i32> splat (i32 -2140078081), ptr %i.t, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  store <4 x i32> splat (i32 -2140078081), ptr %i.v, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store <4 x i32> splat (i32 -2140078081), ptr %i.x, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store <4 x i32> splat (i32 -2140078081), ptr %i.z, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store <4 x i32> splat (i32 -2140078081), ptr %i.ab, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  store <4 x i32> splat (i32 -2140078081), ptr %i.ad, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store <4 x i32> splat (i32 -2140078081), ptr %i.af, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  store <4 x i32> splat (i32 -2140078081), ptr %i.ah, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  store <4 x i32> splat (i32 -2140078081), ptr %i.aj, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store <4 x i32> splat (i32 -2140078081), ptr %i.al, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 528
  store <4 x i32> splat (i32 -2140078081), ptr %i.an, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 544
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 560
  store <4 x i32> splat (i32 -2140078081), ptr %i.ap, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  store <4 x i32> splat (i32 -2140078081), ptr %i.ar, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store <4 x i32> splat (i32 -2140078081), ptr %i.at, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 640
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  store <4 x i32> splat (i32 -2140078081), ptr %i.av, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 688
  store <4 x i32> splat (i32 -2140078081), ptr %i.ax, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  store <4 x i32> splat (i32 -2140078081), ptr %i.az, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 736
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 752
  store <4 x i32> splat (i32 -2140078081), ptr %i.bb, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 784
  store <4 x i32> splat (i32 -2140078081), ptr %i.bd, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 800
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 816
  store <4 x i32> splat (i32 -2140078081), ptr %i.bf, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 832
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 848
  store <4 x i32> splat (i32 -2140078081), ptr %i.bh, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 864
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 880
  store <4 x i32> splat (i32 -2140078081), ptr %i.bj, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 896
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 912
  store <4 x i32> splat (i32 -2140078081), ptr %i.bl, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 928
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 944
  store <4 x i32> splat (i32 -2140078081), ptr %i.bn, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 960
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 976
  store <4 x i32> splat (i32 -2140078081), ptr %i.bp, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 992
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 1008
  store <4 x i32> splat (i32 -2140078081), ptr %i.br, align 4
  store <4 x i32> splat (i32 -2140078081), ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 131072
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.g ; 5 uses
  %i.bv = tail call ptr @u_skipWhitespace(ptr noundef %1) #17 ; 6 uses
  %i.bw = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.52, ptr noundef nonnull dereferenceable(1) %i.bv, i64 noundef 7) #18
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.c, label %bb.d

bb.c:                                             ; preds = %vector.ph
  store i32 1, ptr %i.bu, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 7
  %i.bz = tail call ptr @u_skipWhitespace(ptr noundef nonnull %i.by) #17 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.bz, align 1
  %.not96.i = icmp eq i8 %i.cb, 44
  br i1 %.not96.i, label %bb.h, label %_ZL10parseStatePKcPiPj.exit.thread

bb.d:                                             ; preds = %vector.ph
  %i.cc = load i32, ptr %i.bu, align 4
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ce = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.53, ptr noundef nonnull dereferenceable(1) %i.bv, i64 noundef 10) #18
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.bu, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 10
  %i.ch = tail call ptr @u_skipWhitespace(ptr noundef nonnull %i.cg) #17 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ch, align 1
  %.not.i = icmp eq i8 %i.cj, 44
  br i1 %.not.i, label %bb.h, label %_ZL10parseStatePKcPiPj.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ck = load i8, ptr %i.bv, align 1
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %_ZL10parseStatePKcPiPj.exit.thread14, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.081.i = phi ptr [ %i.ca, %bb.c ], [ %i.ci, %bb.f ], [ %i.bv, %bb.g ]
  %i.cm = tail call ptr @u_skipWhitespace(ptr noundef nonnull %.081.i) #17 ; 3 uses
  %i.cn = call i64 @__isoc23_strtoul(ptr noundef %i.cm, ptr noundef nonnull %i.a, i32 noundef 16) #17
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cq = icmp eq ptr %i.cm, %i.cp
  %i.cr = icmp ugt i32 %i.co, 255
  %or.cond109.i = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond109.i, label %_ZL10parseStatePKcPiPj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.aa
  %i.cs = phi ptr [ %i.ey, %bb.aa ], [ %i.cp, %bb.h ]
  %i.ct = phi i32 [ %i.ex, %bb.aa ], [ %i.co, %bb.h ] ; 4 uses
  %i.cu = call ptr @u_skipWhitespace(ptr noundef %i.cs) #17 ; 3 uses
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 45
  br i1 %i.cw, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.cy = call ptr @u_skipWhitespace(ptr noundef nonnull %i.cx) #17 ; 4 uses
  %i.cz = call i64 @__isoc23_strtoul(ptr noundef %i.cy, ptr noundef nonnull %i.a, i32 noundef 16) #17
  %i.da = trunc i64 %i.cz to i32                  ; 3 uses
  %i.db = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dc = icmp eq ptr %i.cy, %i.db
  br i1 %i.dc, label %_ZL10parseStatePKcPiPj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = icmp ugt i32 %i.ct, %i.da
  %i.de = icmp ugt i32 %i.da, 255
  %or.cond3.i = or i1 %i.dd, %i.de
  br i1 %or.cond3.i, label %_ZL10parseStatePKcPiPj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = call ptr @u_skipWhitespace(ptr noundef %i.db) #17 ; 2 uses
  %.pr.i = load i8, ptr %i.df, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.dg = phi i8 [ %i.cv, %.lr.ph.i ], [ %.pr.i, %bb.k ]
  %.283.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.df, %bb.k ] ; 3 uses
  %.079.i = phi i32 [ %i.ct, %.lr.ph.i ], [ %i.da, %bb.k ] ; 2 uses
  switch i8 %i.dg, label %.thread.i [
    i8 58, label %bb.m
    i8 46, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %.283.i, i64 1
  %i.di = call ptr @u_skipWhitespace(ptr noundef nonnull %i.dh) #17 ; 4 uses
  %i.dj = call i64 @__isoc23_strtoul(ptr noundef %i.di, ptr noundef nonnull %i.a, i32 noundef 16) #17
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not99.i = icmp eq ptr %i.di, %i.dl
  br i1 %.not99.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = icmp ugt i32 %i.dk, 127
  br i1 %i.dm, label %_ZL10parseStatePKcPiPj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = call ptr @u_skipWhitespace(ptr noundef %i.dl) #17
  %i.do = shl nuw nsw i32 %i.dk, 24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l
  %.384.i = phi ptr [ %i.dn, %bb.o ], [ %i.di, %bb.m ], [ %.283.i, %bb.l ] ; 3 uses
  %.0.i = phi i32 [ %i.do, %bb.o ], [ 0, %bb.m ], [ 0, %bb.l ] ; 6 uses
  %i.dp = load i8, ptr %.384.i, align 1
  %i.dq = icmp eq i8 %i.dp, 46
  br i1 %i.dq, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %.384.i, i64 1
  %i.ds = call ptr @u_skipWhitespace(ptr noundef nonnull %i.dr) #17 ; 6 uses
  %i.dt = load i8, ptr %i.ds, align 1
  switch i8 %i.dt, label %bb.v [
    i8 117, label %bb.r
    i8 112, label %bb.s
    i8 115, label %bb.t
    i8 105, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.du = or disjoint i32 %.0.i, -2141126658
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dw = call ptr @u_skipWhitespace(ptr noundef nonnull %i.dv) #17
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.dx = load i32, ptr %i.bu, align 4
  %.not100.i = icmp eq i32 %i.dx, 1
  %.1.v.i = select i1 %.not100.i, i32 -2143289344, i32 -2142240768
  %.1.i = or disjoint i32 %.1.v.i, %.0.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dz = call ptr @u_skipWhitespace(ptr noundef nonnull %i.dy) #17
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.ea = or disjoint i32 %.0.i, -2139095040
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.ec = call ptr @u_skipWhitespace(ptr noundef nonnull %i.eb) #17
  br label %bb.w

bb.u:                                             ; preds = %bb.q
  %i.ed = or disjoint i32 %.0.i, -2140078081
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.ef = call ptr @u_skipWhitespace(ptr noundef nonnull %i.ee) #17
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.eg = or disjoint i32 %.0.i, -2143289344
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.p
  %.4.i = phi ptr [ %.384.i, %bb.p ], [ %i.dw, %bb.r ], [ %i.dz, %bb.s ], [ %i.ec, %bb.t ], [ %i.ef, %bb.u ], [ %i.ds, %bb.v ] ; 2 uses
  %.2.i = phi i32 [ %.0.i, %bb.p ], [ %i.du, %bb.r ], [ %.1.i, %bb.s ], [ %i.ea, %bb.t ], [ %i.ed, %bb.u ], [ %i.eg, %bb.v ] ; 3 uses
  %i.eh = and i32 %.2.i, 15728640
  %i.ei = icmp eq i32 %i.eh, 4194304
  br i1 %i.ei, label %.thread.i, label %bb.z

.thread.i:                                        ; preds = %bb.w, %bb.l
  %.2106.i = phi i32 [ %.2.i, %bb.w ], [ -2143289344, %bb.l ] ; 3 uses
  %.4105.i = phi ptr [ %.4.i, %bb.w ], [ %.283.i, %bb.l ] ; 3 uses
  %i.ej = load i32, ptr %i.bu, align 4
  switch i32 %i.ej, label %bb.z [
    i32 2, label %bb.y
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %.thread.i
  %i.ek = and i32 %.2106.i, -16777216
  %i.el = or disjoint i32 %i.ek, 65534
  br label %bb.z

bb.y:                                             ; preds = %.thread.i
  %i.em = and i32 %.2106.i, -16777216
  %i.en = or disjoint i32 %i.em, 5242880
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.thread.i, %bb.w
  %.4104.i = phi ptr [ %.4105.i, %.thread.i ], [ %.4105.i, %bb.y ], [ %.4105.i, %bb.x ], [ %.4.i, %bb.w ] ; 3 uses
  %.3.i = phi i32 [ %.2106.i, %.thread.i ], [ %i.en, %bb.y ], [ %i.el, %bb.x ], [ %.2.i, %bb.w ] ; 2 uses
  %i.eo = zext nneg i32 %i.ct to i64              ; 3 uses
  %2 = add nuw nsw i32 %.079.i, 1
  %3 = sub i32 %.079.i, %i.ct                     ; 2 uses
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %3, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %bb.z
  %n.vec = and i64 %5, 8589934584                 ; 3 uses
  %i.ep = add nuw nsw i64 %n.vec, %i.eo
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.3.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.h, i64 %i.eo
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph37
  %index39 = phi i64 [ 0, %vector.ph37 ], [ %index.next40, %vector.body38 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index39 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.eq, align 4
  %index.next40 = add nuw i64 %index39, 8         ; 2 uses
  %i.er = icmp eq i64 %index.next40, %n.vec
  br i1 %i.er, label %middle.block41, label %vector.body38, !llvm.loop !5

middle.block41:                                   ; preds = %vector.body38
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.z, %middle.block41
  %indvars.iv117.i.ph = phi i64 [ %i.eo, %bb.z ], [ %i.ep, %middle.block41 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i, %scalar.ph ], [ %indvars.iv117.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv117.i
  store i32 %.3.i, ptr %i.es, align 4
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next118.i to i32
  %exitcond120.not.i = icmp eq i32 %2, %lftr.wideiv.i
  br i1 %exitcond120.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !9

.loopexit:                                        ; preds = %scalar.ph, %middle.block41
  %i.et = load i8, ptr %.4104.i, align 1
  switch i8 %i.et, label %_ZL10parseStatePKcPiPj.exit.thread [
    i8 44, label %bb.aa
    i8 0, label %_ZL10parseStatePKcPiPj.exit.thread14
  ]

bb.aa:                                            ; preds = %.loopexit
  %i.eu = getelementptr inbounds nuw i8, ptr %.4104.i, i64 1
  %i.ev = call ptr @u_skipWhitespace(ptr noundef nonnull %i.eu) #17 ; 3 uses
  %i.ew = call i64 @__isoc23_strtoul(ptr noundef %i.ev, ptr noundef nonnull %i.a, i32 noundef 16) #17
  %i.ex = trunc i64 %i.ew to i32                  ; 2 uses
  %i.ey = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ez = icmp eq ptr %i.ev, %i.ey
  %i.fa = icmp ugt i32 %i.ex, 255
  %or.cond.i = select i1 %i.ez, i1 true, i1 %i.fa
  br i1 %or.cond.i, label %_ZL10parseStatePKcPiPj.exit, label %.lr.ph.i, !llvm.loop !10

_ZL10parseStatePKcPiPj.exit.thread:               ; preds = %.loopexit, %bb.f, %bb.c
  %.080.i.ph = phi ptr [ %i.ch, %bb.f ], [ %i.bz, %bb.c ], [ %.4104.i, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ab

_ZL10parseStatePKcPiPj.exit.thread14:             ; preds = %.loopexit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ac

_ZL10parseStatePKcPiPj.exit:                      ; preds = %bb.i, %bb.j, %bb.n, %bb.aa, %bb.h
  %.080.i = phi ptr [ %i.cm, %bb.h ], [ %i.ev, %bb.aa ], [ %i.di, %bb.n ], [ %i.cy, %bb.i ], [ %i.cy, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not = icmp eq ptr %.080.i, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZL10parseStatePKcPiPj.exit.thread, %_ZL10parseStatePKcPiPj.exit
  %.080.i12 = phi ptr [ %.080.i.ph, %_ZL10parseStatePKcPiPj.exit.thread ], [ %.080.i, %_ZL10parseStatePKcPiPj.exit ]
  %i.fb = load ptr, ptr @stderr, align 8
  %i.fc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.1, ptr noundef nonnull %.080.i12) #15 ; 0 uses
  call void @exit(i32 noundef 13) #16
  unreachable

bb.ac:                                            ; preds = %_ZL10parseStatePKcPiPj.exit.thread14, %_ZL10parseStatePKcPiPj.exit
  %i.fd = load i32, ptr %i.b, align 4
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.b, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @ucm_parseHeaderLine(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.c ]    ; 5 uses
  %i.b = load i8, ptr %.0, align 1
  switch i8 %i.b, label %bb.c [
    i8 0, label %bb.d
    i8 35, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !11

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = icmp ugt ptr %.0, %1
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d, %.critedge7
  %.199 = phi ptr [ %i.e, %.critedge7 ], [ %.0, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.199, i64 -1 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %.critedge [
    i8 32, label %.critedge7
    i8 9, label %.critedge7
  ]

.critedge7:                                       ; preds = %.lr.ph, %.lr.ph
  %i.g = icmp ugt ptr %i.e, %1
  br i1 %i.g, label %.lr.ph, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %.critedge7, %.lr.ph, %bb.d
  %.1.lcssa = phi ptr [ %.0, %bb.d ], [ %.199, %.lr.ph ], [ %1, %.critedge7 ] ; 3 uses
  store i8 0, ptr %.1.lcssa, align 1
  %i.h = tail call ptr @u_skipWhitespace(ptr noundef %1) #17 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.av, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.k = load i32, ptr %i.h, align 1
  %i.l = xor i32 %i.k, 1380010051
  %i.m = getelementptr i8, ptr %i.h, i64 3
  %i.n = load i32, ptr %i.m, align 1
  %i.o = xor i32 %i.n, 1346456914
  %i.p = or i32 %i.l, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.av, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not94 = icmp eq i8 %i.i, 60
  br i1 %.not94, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr @stderr, align 8
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.3, ptr noundef %1) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store ptr %i.v, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.086 = phi ptr [ %i.v, %bb.h ], [ %i.z, %bb.k ] ; 4 uses
  %i.w = load i8, ptr %.086, align 1
  switch i8 %i.w, label %bb.k [
    i8 62, label %bb.l
    i8 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr @stderr, align 8
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.4, ptr noundef %1) #15 ; 0 uses
  tail call void @exit(i32 noundef 13) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.086, i64 1
  br label %bb.i, !llvm.loop !13

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %.086, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.086, i64 1
  %i.ab = tail call ptr @u_skipWhitespace(ptr noundef nonnull %i.aa) #17 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1
  %.not96 = icmp eq i8 %i.ac, 34
  br i1 %.not96, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ab, ptr %3, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  store ptr %i.ad, ptr %3, align 8
  %i.ae = icmp ugt ptr %.1.lcssa, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds i8, ptr %.1.lcssa, i64 -1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 34
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.af, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.m
  %i.ai = load ptr, ptr %2, align 8               ; 5 uses
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(12) @.str.5) #18
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.al = load ptr, ptr %3, align 8               ; 5 uses
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(5) @.str.6) #18
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 132128
  store i8 1, ptr %i.ao, align 4
  br label %bb.av

bb.t:                                             ; preds = %bb.r
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(5) @.str.7) #18
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.u, label %bb.v

end_hunk_0
