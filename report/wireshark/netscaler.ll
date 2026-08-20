inline.NumInlined: 134
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@nstrace_seek_read_v20:bb.a
  %i.ls = getelementptr i8, ptr %2, i64 4         ; 2 uses
  store i32 1, ptr %i.ls, align 4
  %i.lt = getelementptr i8, ptr %i.ab, i64 4
  %i.lu = load i64, ptr %i.lt, align 1            ; 2 uses
  %i.lv = udiv i64 %i.lu, 1000000000
  %i.lw = and i64 %i.lv, 4294967295
  %i.lx = getelementptr i8, ptr %2, i64 16
  store i64 %i.lw, ptr %i.lx, align 8
  %i.ly = urem i64 %i.lu, 1000000000
  %i.lz = trunc nuw nsw i64 %i.ly to i32
  %i.ma = getelementptr i8, ptr %2, i64 24
  store i32 %i.lz, ptr %i.ma, align 8
  store i32 3, ptr %i.ls, align 4
  %i.mb = getelementptr i8, ptr %i.ab, i64 12
  %.val414 = load i16, ptr %i.mb, align 1
  %i.mc = zext i16 %.val414 to i32
  %i.md = add nuw nsw i32 %i.mc, 35
  %i.me = getelementptr i8, ptr %2, i64 48
  %i.mf = getelementptr i8, ptr %2, i64 52
  store i32 %i.md, ptr %i.mf, align 4
  %i.mg = getelementptr i8, ptr %i.ab, i64 1
  %i.mh = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.mi = zext i8 %i.mh to i32                    ; 2 uses
  %.not401 = icmp sgt i8 %i.mh, -1
  br i1 %.not401, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mj = getelementptr i8, ptr %i.ab, i64 2
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = zext i8 %i.mk to i32
  %i.mm = shl nuw nsw i32 %i.ml, 7
  %i.mn = and i32 %i.mi, 127
  %i.mo = or disjoint i32 %i.mm, %i.mn
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.mp = phi i32 [ %i.mo, %bb.ap ], [ %i.mi, %bb.ao ]
  store i32 %i.mp, ptr %i.me, align 8
  %i.mq = getelementptr i8, ptr %2, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.mq, align 4
  %i.mr = getelementptr i8, ptr %2, i64 80
  store i16 35, ptr %i.mr, align 8
  %i.ms = getelementptr i8, ptr %2, i64 82
  store i8 16, ptr %i.ms, align 2
  %i.mt = getelementptr i8, ptr %2, i64 83
  store i8 20, ptr %i.mt, align 1
  %i.mu = getelementptr i8, ptr %2, i64 85
  store <4 x i8> <i8 24, i8 26, i8 28, i8 30>, ptr %i.mu, align 1
  %i.mv = getelementptr i8, ptr %2, i64 89
  store i8 32, ptr %i.mv, align 1
  %i.mw = getelementptr i8, ptr %2, i64 90
  store i8 33, ptr %i.mw, align 2
  %i.mx = getelementptr i8, ptr %2, i64 91
  store i8 34, ptr %i.mx, align 1
  %i.my = getelementptr i8, ptr %2, i64 93
  store i8 35, ptr %i.my, align 1
  br label %.sink.split

bb.ar:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.mz = getelementptr i8, ptr %0, i64 168
  %i.na = load i32, ptr %i.mz, align 8
  call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.na)
  %i.nb = call ptr @wtap_block_create(i32 noundef 5)
  %i.nc = getelementptr i8, ptr %2, i64 216
  store ptr %i.nb, ptr %i.nc, align 8
  %i.nd = getelementptr i8, ptr %2, i64 4
  store i32 1, ptr %i.nd, align 4
  %i.ne = getelementptr i8, ptr %i.ab, i64 4
  %i.nf = load i64, ptr %i.ne, align 1            ; 2 uses
  %i.ng = udiv i64 %i.nf, 1000000000
  %i.nh = and i64 %i.ng, 4294967295
  %i.ni = getelementptr i8, ptr %2, i64 16
  store i64 %i.nh, ptr %i.ni, align 8
  %i.nj = urem i64 %i.nf, 1000000000
  %i.nk = trunc nuw nsw i64 %i.nj to i32
  %i.nl = getelementptr i8, ptr %2, i64 24
  store i32 %i.nk, ptr %i.nl, align 8
  %i.nm = getelementptr i8, ptr %i.ab, i64 1
  %i.nn = load i8, ptr %i.nm, align 1             ; 2 uses
  %i.no = zext i8 %i.nn to i32                    ; 2 uses
  %.not400 = icmp sgt i8 %i.nn, -1
  br i1 %.not400, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.np = getelementptr i8, ptr %i.ab, i64 2
  %i.nq = load i8, ptr %i.np, align 1
  %i.nr = zext i8 %i.nq to i32
  %i.ns = shl nuw nsw i32 %i.nr, 7
  %i.nt = and i32 %i.no, 127
  %i.nu = or disjoint i32 %i.ns, %i.nt
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.nv = phi i32 [ %i.nu, %bb.as ], [ %i.no, %bb.ar ] ; 2 uses
  %i.nw = getelementptr i8, ptr %2, i64 48
  %i.nx = getelementptr i8, ptr %2, i64 52
  store i32 %i.nv, ptr %i.nx, align 4
  store i32 %i.nv, ptr %i.nw, align 8
  %i.ny = getelementptr i8, ptr %2, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.ny, align 4
  %i.nz = getelementptr i8, ptr %2, i64 80
  store i16 48, ptr %i.nz, align 8
  %i.oa = getelementptr i8, ptr %2, i64 82
  store i8 12, ptr %i.oa, align 2
  %i.ob = getelementptr i8, ptr %2, i64 83
  store i8 16, ptr %i.ob, align 1
  %i.oc = getelementptr i8, ptr %2, i64 85
  %i.od = getelementptr i8, ptr %2, i64 93
  store i8 48, ptr %i.od, align 1
  store <8 x i8> <i8 20, i8 22, i8 24, i8 26, i8 28, i8 29, i8 30, i8 32>, ptr %i.oc, align 1
  br label %.sink.split

bb.au:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.oe = getelementptr i8, ptr %0, i64 168
  %i.of = load i32, ptr %i.oe, align 8
  call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.of)
  %i.og = call ptr @wtap_block_create(i32 noundef 5)
  %i.oh = getelementptr i8, ptr %2, i64 216
  store ptr %i.og, ptr %i.oh, align 8
  %i.oi = getelementptr i8, ptr %2, i64 4         ; 2 uses
  store i32 1, ptr %i.oi, align 4
  %i.oj = getelementptr i8, ptr %i.ab, i64 4
  %i.ok = load i64, ptr %i.oj, align 1            ; 2 uses
  %i.ol = udiv i64 %i.ok, 1000000000
  %i.om = and i64 %i.ol, 4294967295
  %i.on = getelementptr i8, ptr %2, i64 16
  store i64 %i.om, ptr %i.on, align 8
  %i.oo = urem i64 %i.ok, 1000000000
  %i.op = trunc nuw nsw i64 %i.oo to i32
  %i.oq = getelementptr i8, ptr %2, i64 24
  store i32 %i.op, ptr %i.oq, align 8
  store i32 3, ptr %i.oi, align 4
  %i.or = getelementptr i8, ptr %i.ab, i64 12
  %.val = load i16, ptr %i.or, align 1
  %i.os = zext i16 %.val to i32
  %i.ot = add nuw nsw i32 %i.os, 52
  %i.ou = getelementptr i8, ptr %2, i64 48
  %i.ov = getelementptr i8, ptr %2, i64 52
  store i32 %i.ot, ptr %i.ov, align 4
  %i.ow = getelementptr i8, ptr %i.ab, i64 1
  %i.ox = load i8, ptr %i.ow, align 1             ; 2 uses
  %i.oy = zext i8 %i.ox to i32                    ; 2 uses
  %.not399 = icmp sgt i8 %i.ox, -1
  br i1 %.not399, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.oz = getelementptr i8, ptr %i.ab, i64 2
  %i.pa = load i8, ptr %i.oz, align 1
  %i.pb = zext i8 %i.pa to i32
  %i.pc = shl nuw nsw i32 %i.pb, 7
  %i.pd = and i32 %i.oy, 127
  %i.pe = or disjoint i32 %i.pc, %i.pd
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.pf = phi i32 [ %i.pe, %bb.av ], [ %i.oy, %bb.au ]
  store i32 %i.pf, ptr %i.ou, align 8
  %i.pg = getelementptr i8, ptr %2, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.pg, align 4
  %i.ph = getelementptr i8, ptr %2, i64 80
  store i16 52, ptr %i.ph, align 8
  %i.pi = getelementptr i8, ptr %2, i64 82
  store i8 16, ptr %i.pi, align 2
  %i.pj = getelementptr i8, ptr %2, i64 83
  store i8 20, ptr %i.pj, align 1
  %i.pk = getelementptr i8, ptr %2, i64 85
  %i.pl = getelementptr i8, ptr %2, i64 93
  store i8 52, ptr %i.pl, align 1
  store <8 x i8> <i8 24, i8 26, i8 28, i8 30, i8 32, i8 33, i8 34, i8 36>, ptr %i.pk, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.m, %bb.p, %bb.s, %bb.v, %bb.y, %bb.ab, %bb.ae, %bb.ah, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.aw
  %.sink = phi i8 [ 38, %bb.aw ], [ 38, %bb.at ], [ 37, %bb.aq ], [ 37, %bb.an ], [ 36, %bb.ak ], [ 36, %bb.ah ], [ 35, %bb.ae ], [ 35, %bb.ab ], [ 34, %bb.y ], [ 34, %bb.v ], [ 33, %bb.s ], [ 33, %bb.p ], [ 32, %bb.m ], [ 32, %bb.j ]
  %i.pm = getelementptr i8, ptr %2, i64 84
  store i8 %.sink, ptr %i.pm, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0396 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.b ], [ true, %bb.g ], [ false, %bb.d ], [ true, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.0396
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @nstrace_read_v30(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr noundef initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 66 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 5 uses
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 28       ; 8 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  store i32 0, ptr %2, align 4
  store ptr null, ptr %3, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.bz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noalias dereferenceable_or_null(65536) ptr @g_malloc(i64 noundef 65536) #9 ; 63 uses
  %i.k = ptrtoaddr ptr %i.j to i64                ; 5 uses
  %i.l = getelementptr i8, ptr %i.b, i64 40       ; 4 uses
  %i.m = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  %i.n = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  %i.o = getelementptr i8, ptr %i.b, i64 16       ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.bx, %bb.b
  %.0337 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.bx ] ; 4 uses
  %.0334 = phi i32 [ %i.h, %bb.b ], [ 16384, %bb.bx ] ; 9 uses
  %.0327 = phi i32 [ 0, %bb.b ], [ %i.ws, %bb.bx ] ; 3 uses
  %.not348 = icmp ult i32 %.0337, %.0334
  br i1 %.not348, label %bb.d, label %g_strdup_inline.exit380

g_strdup_inline.exit380:                          ; preds = %bb.c
  store i32 -13, ptr %2, align 4
  %i.p = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(24) %i.p, ptr noundef nonnull align 1 dereferenceable(24) @.str.9, i64 noundef 24, i1 noundef false) #11
  store ptr %i.p, ptr %3, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.q = zext i32 %.0337 to i64
  %i.r = getelementptr i8, ptr %i.c, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp ne i8 %i.s, 0
  %i.u = load ptr, ptr %0, align 8
  %i.v = tail call zeroext i1 @file_eof(ptr noundef %i.u)
  %i.w = add nsw i32 %.0327, -1
  %i.x = icmp ult i32 %i.w, 16383
  %or.cond5 = and i1 %i.x, %i.v
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = zext nneg i32 %.0327 to i64
  %i.z = getelementptr i8, ptr %i.c, i64 %i.y
  %i.aa = sub nuw nsw i32 16384, %.0327
  %i.ab = zext nneg i32 %i.aa to i64
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.z, i8 noundef 0, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, i1 noundef false) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = icmp ult i32 %.0337, 16384
  %i.ad = and i1 %i.t, %i.ac
  br i1 %i.ad, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f, %bb.bw
  %.1338460 = phi i32 [ %.10, %bb.bw ], [ %.0337, %bb.f ] ; 11 uses
  %i.ae = zext nneg i32 %.1338460 to i64          ; 42 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ae   ; 17 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %.not349 = icmp eq i8 %i.ag, 0
  br i1 %.not349, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %.val395 = load i32, ptr %i.g, align 4          ; 4 uses
  %i.ah = icmp ule i32 %.1338460, %.val395
  %i.ai = sub i32 %.val395, %.1338460             ; 4 uses
  %i.aj = icmp ugt i32 %i.ai, 2
  %or.cond.not.i = and i1 %i.ah, %i.aj
  br i1 %or.cond.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 -13, ptr %2, align 4
  %i.ak = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(24) %i.ak, ptr noundef nonnull align 1 dereferenceable(24) @.str.9, i64 noundef 24, i1 noundef false) #11
  store ptr %i.ak, ptr %3, align 8
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.af, i64 1      ; 5 uses
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 6 uses
  %.not350 = icmp sgt i8 %i.am, -1                ; 3 uses
  br i1 %.not350, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.af, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 7
  %i.as = and i32 %i.an, 127
  %i.at = or disjoint i32 %i.ar, %i.as
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.au = phi i32 [ %i.at, %bb.j ], [ %i.an, %bb.i ]
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %g_strdup_inline.exit378, label %bb.l

g_strdup_inline.exit378:                          ; preds = %bb.k
  store i32 -13, ptr %2, align 4
  %i.aw = tail call noalias dereferenceable_or_null(32) ptr @g_malloc(i64 noundef 32) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(32) %i.aw, ptr noundef nonnull align 1 dereferenceable(32) @.str.8, i64 noundef 32, i1 noundef false) #11
  store ptr %i.aw, ptr %3, align 8
  br label %.sink.split

bb.l:                                             ; preds = %bb.k
  switch i8 %i.ag, label %bb.bt [
    i8 -88, label %bb.m
    i8 -87, label %bb.m
    i8 -86, label %bb.m
    i8 -85, label %bb.m
    i8 -84, label %bb.v
    i8 -83, label %bb.v
    i8 -82, label %bb.v
    i8 -81, label %bb.v
    i8 7, label %bb.bj
    i8 8, label %bb.bo
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.ax = icmp ult i32 %i.ai, 52
  br i1 %i.ax, label %g_strdup_inline.exit376, label %bb.n

g_strdup_inline.exit376:                          ; preds = %bb.m
  store i32 -13, ptr %2, align 4
  %i.ay = tail call noalias dereferenceable_or_null(45) ptr @g_malloc(i64 noundef 45) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(45) %i.ay, ptr noundef nonnull align 1 dereferenceable(45) @.str.10, i64 noundef 45, i1 noundef false) #11
  store ptr %i.ay, ptr %3, align 8
  br label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %0, i64 168
  %i.ba = load i32, ptr %i.az, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %1, i32 noundef %i.ba)
  %i.bb = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.bc = getelementptr i8, ptr %1, i64 216
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %1, i64 4         ; 2 uses
  store i32 1, ptr %i.bd, align 4
  %i.be = getelementptr i8, ptr %i.af, i64 4
  %i.bf = load i64, ptr %i.be, align 1            ; 3 uses
  %i.bg = udiv i64 %i.bf, 1000000000
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr i8, ptr %1, i64 16
  store i64 %i.bh, ptr %i.bi, align 8
  %i.bj = urem i64 %i.bf, 1000000000
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = getelementptr i8, ptr %1, i64 24
  store i32 %i.bk, ptr %i.bl, align 8
  store i32 3, ptr %i.bd, align 4
  %i.bm = getelementptr i8, ptr %i.af, i64 20
  %.val390 = load i16, ptr %i.bm, align 1
  %i.bn = zext i16 %.val390 to i32
  %i.bo = add nuw nsw i32 %i.bn, 52
  %i.bp = getelementptr i8, ptr %i.af, i64 31
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.af, i64 32
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bs, %i.bv
  %i.bx = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.by = getelementptr i8, ptr %1, i64 52
  store i32 %i.bw, ptr %i.by, align 4
  %i.bz = load i8, ptr %i.al, align 1             ; 2 uses
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %.not360 = icmp sgt i8 %i.bz, -1
  br i1 %.not360, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr i8, ptr %i.af, i64 2
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 7
  %i.cf = and i32 %i.ca, 127
  %i.cg = or disjoint i32 %i.ce, %i.cf
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ch = phi i32 [ %i.cg, %bb.o ], [ %i.ca, %bb.n ] ; 2 uses
  store i32 %i.ch, ptr %i.bx, align 8
  %i.ci = getelementptr i8, ptr %1, i64 76
  store <4 x i8> <i8 3, i8 1, i8 0, i8 1>, ptr %i.ci, align 4
  %i.cj = getelementptr i8, ptr %1, i64 80
  store i16 52, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %1, i64 82
  %i.cl = getelementptr i8, ptr %1, i64 90
  store <4 x i8> <i8 31, i8 32, i8 36, i8 52>, ptr %i.cl, align 2
  store <8 x i8> <i8 12, i8 16, i8 48, i8 22, i8 24, i8 26, i8 28, i8 30>, ptr %i.ck, align 2
  %i.cm = icmp samesign ult i32 %i.ch, 52
  br i1 %i.cm, label %g_strdup_inline.exit374, label %bb.q

g_strdup_inline.exit374:                          ; preds = %bb.p
  store i32 -13, ptr %2, align 4
  %i.cn = tail call noalias dereferenceable_or_null(53) ptr @g_malloc(i64 noundef 53) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(53) %i.cn, ptr noundef nonnull align 1 dereferenceable(53) @.str.11, i64 noundef 53, i1 noundef false) #11
  store ptr %i.cn, ptr %3, align 8
  br label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.o, align 8
  %i.cp = add i64 %i.co, %i.ae
  store i64 %i.cp, ptr %4, align 8
  %i.cq = tail call i32 @llvm.usub.sat.i32(i32 %.0334, i32 %.1338460) ; 2 uses
  %wide.trip.count607 = zext i32 %i.cq to i64     ; 2 uses
  %i.cr = tail call i64 @llvm.umin.i64(i64 %wide.trip.count607, i64 51)
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check780 = icmp ult i32 %i.cq, 16
  br i1 %min.iters.check780, label %scalar.ph.preheader, label %vector.memcheck778

vector.memcheck778:                               ; preds = %bb.q
  %i.ct = add i64 %i.d, %i.ae
  %i.cu = sub i64 %i.ct, %i.k
  %diff.check779 = icmp ugt i64 %i.cu, -16
  br i1 %diff.check779, label %scalar.ph.preheader, label %vector.ph781

vector.ph781:                                     ; preds = %vector.memcheck778
  %i.cv = and i64 %i.cs, 15                       ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = select i1 %i.cw, i64 16, i64 %i.cv
  %n.vec782 = sub nsw i64 %i.cs, %i.cx            ; 3 uses
  %i.cy = add nsw i64 %n.vec782, %i.ae
  %invariant.gep972.a = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body783

vector.body783:                                   ; preds = %vector.body783, %vector.ph781
  %index784 = phi i64 [ 0, %vector.ph781 ], [ %index.next786, %vector.body783 ] ; 3 uses
  %gep973.a = getelementptr i8, ptr %invariant.gep972.a, i64 %index784
  %wide.load785 = load <16 x i8>, ptr %gep973.a, align 1
  %i.cz = getelementptr i8, ptr %i.j, i64 %index784
  store <16 x i8> %wide.load785, ptr %i.cz, align 1
  %index.next786 = add nuw i64 %index784, 16      ; 2 uses
  %i.da = icmp eq i64 %index.next786, %n.vec782
  br i1 %i.da, label %scalar.ph.preheader, label %vector.body783, !llvm.loop !14

scalar.ph.preheader:                              ; preds = %vector.body783, %vector.memcheck778, %bb.q
  %indvars.iv592.ph = phi i64 [ %i.ae, %vector.memcheck778 ], [ %i.ae, %bb.q ], [ %i.cy, %vector.body783 ]
  %indvars.iv583.ph = phi i64 [ 0, %vector.memcheck778 ], [ 0, %bb.q ], [ %n.vec782, %vector.body783 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %indvars.iv592 = phi i64 [ %indvars.iv.next593, %bb.r ], [ %indvars.iv592.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %bb.r ], [ %indvars.iv583.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond608.not = icmp eq i64 %indvars.iv583, %wide.trip.count607
  br i1 %exitcond608.not, label %g_strdup_inline.exit372, label %bb.r

g_strdup_inline.exit372:                          ; preds = %scalar.ph
  store i32 -13, ptr %2, align 4
  %i.db = tail call noalias dereferenceable_or_null(24) ptr @g_malloc(i64 noundef 24) #9 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(24) %i.db, ptr noundef nonnull align 1 dereferenceable(24) @.str.9, i64 noundef 24, i1 noundef false) #11
  store ptr %i.db, ptr %3, align 8
  br label %.sink.split

bb.r:                                             ; preds = %scalar.ph
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.c, i64 %indvars.iv592
  %i.dd = load i8, ptr %i.dc, align 1
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %i.de = getelementptr i8, ptr %i.j, i64 %indvars.iv583
  store i8 %i.dd, ptr %i.de, align 1
  %exitcond609.not = icmp eq i64 %indvars.iv.next584, 52
  br i1 %exitcond609.not, label %bb.s, label %scalar.ph, !llvm.loop !17

bb.s:                                             ; preds = %bb.r
  %i.df = trunc nuw i64 %indvars.iv.next593 to i32 ; 3 uses
  %i.dg = load i8, ptr %i.al, align 1             ; 2 uses
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %.not361 = icmp sgt i8 %i.dg, -1
  br i1 %.not361, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = getelementptr i8, ptr %i.af, i64 2
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 7
  %i.dm = and i32 %i.dh, 127
  %i.dn = or disjoint i32 %i.dl, %i.dm
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.do = phi i32 [ %i.dn, %bb.t ], [ %i.dh, %bb.s ] ; 4 uses
  %i.dp = add nsw i32 %i.do, -52
  %i.dq = add i32 %i.dp, %i.df                    ; 2 uses
  %i.dr = load i32, ptr %i.g, align 4             ; 2 uses
  %.not362 = icmp ult i32 %i.dq, %i.dr
  %.not363486500 = icmp eq i32 %i.dq, 16383
  %.not363486 = or i1 %.not362, %.not363486500
  br i1 %.not363486, label %.preheader, label %.preheader411

.preheader411:                                    ; preds = %bb.u, %select.unfold
  %i.ds = phi i32 [ %i.hj, %select.unfold ], [ %i.dr, %bb.u ] ; 2 uses
  %.1332489 = phi i32 [ %.2333.lcssa, %select.unfold ], [ 52, %bb.u ] ; 11 uses
  %.1335488 = phi i32 [ %i.he, %select.unfold ], [ %.0334, %bb.u ]
  %.3340487 = phi i32 [ 0, %select.unfold ], [ %i.df, %bb.u ] ; 2 uses
  %i.dt = icmp ult i32 %.3340487, %i.ds
  br i1 %i.dt, label %iter.check810, label %._crit_edge484

iter.check810:                                    ; preds = %.preheader411
  %i.du = zext i32 %.3340487 to i64               ; 10 uses
  %i.dv = zext i32 %i.ds to i64                   ; 3 uses
  %i.dw = sub nsw i64 %i.dv, %i.du                ; 7 uses
  %min.iters.check795 = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check795, label %.lr.ph483.preheader, label %vector.scevcheck789

vector.scevcheck789:                              ; preds = %iter.check810
  %i.dx = xor i64 %i.du, -1
  %i.dy = add nsw i64 %i.dx, %i.dv                ; 3 uses
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = xor i32 %.1332489, -1
  %i.eb = icmp ult i32 %i.ea, %i.dz
  %i.ec = icmp ugt i64 %i.dy, 4294967295
  %5 = or i1 %i.eb, %i.ec
  %6 = zext i32 %.1332489 to i64
  %scevgep790 = getelementptr i8, ptr %i.j, i64 %6 ; 2 uses
  %7 = getelementptr i8, ptr %scevgep790, i64 %i.dy
  %8 = icmp ult ptr %7, %scevgep790
  %i.ed = or i1 %5, %8
  br i1 %i.ed, label %.lr.ph483.preheader, label %vector.memcheck792

vector.memcheck792:                               ; preds = %vector.scevcheck789
  %i.ee = zext i32 %.1332489 to i64
  %i.ef = add i64 %i.k, %i.ee
  %i.eg = add i64 %i.d, %i.du
  %i.eh = sub i64 %i.eg, %i.ef
  %diff.check793 = icmp ugt i64 %i.eh, -32
  br i1 %diff.check793, label %.lr.ph483.preheader, label %vector.main.loop.iter.check796

vector.main.loop.iter.check796:                   ; preds = %vector.memcheck792
  %min.iters.check797 = icmp ult i64 %i.dw, 32
  br i1 %min.iters.check797, label %vec.epilog.ph814, label %vector.ph798

vector.ph798:                                     ; preds = %vector.main.loop.iter.check796
  %i.ei = and i64 %i.dw, 24
  %n.vec799 = and i64 %i.dw, -32                  ; 5 uses
  %i.ej = add nsw i64 %n.vec799, %i.du
  %i.ek = trunc i64 %n.vec799 to i32
  %i.el = add i32 %.1332489, %i.ek                ; 2 uses
  %invariant.gep974.a = getelementptr i8, ptr %i.c, i64 %i.du
  br label %vector.body800

vector.body800:                                   ; preds = %vector.body800, %vector.ph798
  %index801 = phi i64 [ 0, %vector.ph798 ], [ %index.next804, %vector.body800 ] ; 3 uses
  %i.em = trunc i64 %index801 to i32
  %i.en = add i32 %.1332489, %i.em
  %gep975.a = getelementptr i8, ptr %invariant.gep974.a, i64 %index801 ; 2 uses
  %i.eo = getelementptr i8, ptr %gep975.a, i64 16
  %wide.load802 = load <16 x i8>, ptr %gep975.a, align 1
  %wide.load803 = load <16 x i8>, ptr %i.eo, align 1
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr i8, ptr %i.j, i64 %i.ep   ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  store <16 x i8> %wide.load802, ptr %i.eq, align 1
  store <16 x i8> %wide.load803, ptr %i.er, align 1
  %index.next804 = add nuw i64 %index801, 32      ; 2 uses
  %i.es = icmp eq i64 %index.next804, %n.vec799
  br i1 %i.es, label %middle.block805, label %vector.body800, !llvm.loop !18

middle.block805:                                  ; preds = %vector.body800
  %cmp.n806 = icmp eq i64 %i.dw, %n.vec799
  br i1 %cmp.n806, label %._crit_edge484, label %vec.epilog.iter.check812

vec.epilog.iter.check812:                         ; preds = %middle.block805
  %min.epilog.iters.check813 = icmp eq i64 %i.ei, 0
  br i1 %min.epilog.iters.check813, label %.lr.ph483.preheader, label %vec.epilog.ph814, !prof !19

vec.epilog.ph814:                                 ; preds = %vector.main.loop.iter.check796, %vec.epilog.iter.check812
  %vec.epilog.resume.val807 = phi i64 [ %n.vec799, %vec.epilog.iter.check812 ], [ 0, %vector.main.loop.iter.check796 ]
  %n.vec815 = and i64 %i.dw, -8                   ; 4 uses
  %i.et = add nsw i64 %n.vec815, %i.du
  %i.eu = trunc i64 %n.vec815 to i32
  %i.ev = add i32 %.1332489, %i.eu                ; 2 uses
  %invariant.gep976.a = getelementptr i8, ptr %i.c, i64 %i.du
  br label %vec.epilog.vector.body816

vec.epilog.vector.body816:                        ; preds = %vec.epilog.vector.body816, %vec.epilog.ph814
  %index817 = phi i64 [ %vec.epilog.resume.val807, %vec.epilog.ph814 ], [ %index.next819, %vec.epilog.vector.body816 ] ; 3 uses
  %i.ew = trunc i64 %index817 to i32
  %i.ex = add i32 %.1332489, %i.ew
  %gep977.a = getelementptr i8, ptr %invariant.gep976.a, i64 %index817
  %wide.load818 = load <8 x i8>, ptr %gep977.a, align 1
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %i.j, i64 %i.ey
  store <8 x i8> %wide.load818, ptr %i.ez, align 1
  %index.next819 = add nuw i64 %index817, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next819, %n.vec815
  br i1 %i.fa, label %vec.epilog.middle.block820, label %vec.epilog.vector.body816, !llvm.loop !20

vec.epilog.middle.block820:                       ; preds = %vec.epilog.vector.body816
  %cmp.n821 = icmp eq i64 %i.dw, %n.vec815
  br i1 %cmp.n821, label %._crit_edge484, label %.lr.ph483.preheader

.lr.ph483.preheader:                              ; preds = %vector.memcheck792, %vector.scevcheck789, %iter.check810, %vec.epilog.iter.check812, %vec.epilog.middle.block820
  %indvars.iv610.ph = phi i64 [ %i.du, %iter.check810 ], [ %i.du, %vector.scevcheck789 ], [ %i.du, %vector.memcheck792 ], [ %i.ej, %vec.epilog.iter.check812 ], [ %i.et, %vec.epilog.middle.block820 ]
  %.2333482.ph = phi i32 [ %.1332489, %iter.check810 ], [ %.1332489, %vector.scevcheck789 ], [ %.1332489, %vector.memcheck792 ], [ %i.el, %vec.epilog.iter.check812 ], [ %i.ev, %vec.epilog.middle.block820 ]
  br label %.lr.ph483

.preheader:                                       ; preds = %select.unfold, %bb.u
  %.3340.lcssa = phi i32 [ %i.df, %bb.u ], [ 0, %select.unfold ] ; 11 uses
  %.1335.lcssa = phi i32 [ %.0334, %bb.u ], [ %i.he, %select.unfold ]
  %.1332.lcssa = phi i32 [ 52, %bb.u ], [ %.2333.lcssa, %select.unfold ] ; 2 uses
  %i.fb = icmp ult i32 %.1332.lcssa, %i.do
  br i1 %i.fb, label %iter.check845, label %._crit_edge496

iter.check845:                                    ; preds = %.preheader
  %i.fc = zext i32 %.1332.lcssa to i64            ; 10 uses
  %wide.trip.count616 = zext nneg i32 %i.do to i64 ; 5 uses
  %i.fd = sub nsw i64 %wide.trip.count616, %i.fc  ; 7 uses
  %min.iters.check830 = icmp ult i64 %i.fd, 8
  br i1 %min.iters.check830, label %.lr.ph495.preheader, label %vector.scevcheck824

vector.scevcheck824:                              ; preds = %iter.check845
  %i.fe = xor i64 %i.fc, -1
  %i.ff = add nsw i64 %i.fe, %wide.trip.count616  ; 3 uses
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = xor i32 %.3340.lcssa, -1
  %i.fi = icmp ult i32 %i.fh, %i.fg
  %i.fj = icmp ugt i64 %i.ff, 4294967295
  %i.fk = or i1 %i.fi, %i.fj
  %i.fl = zext i32 %.3340.lcssa to i64
  %scevgep825 = getelementptr i8, ptr %i.c, i64 %i.fl ; 2 uses
  %i.fm = getelementptr i8, ptr %scevgep825, i64 %i.ff
  %i.fn = icmp ult ptr %i.fm, %scevgep825
  %i.fo = or i1 %i.fk, %i.fn
  br i1 %i.fo, label %.lr.ph495.preheader, label %vector.memcheck827

vector.memcheck827:                               ; preds = %vector.scevcheck824
  %i.fp = add i64 %i.k, %i.fc
  %i.fq = zext i32 %.3340.lcssa to i64
  %i.fr = add i64 %i.d, %i.fq
  %i.fs = sub i64 %i.fr, %i.fp
  %diff.check828 = icmp ugt i64 %i.fs, -32
  br i1 %diff.check828, label %.lr.ph495.preheader, label %vector.main.loop.iter.check831

vector.main.loop.iter.check831:                   ; preds = %vector.memcheck827
  %min.iters.check832 = icmp ult i64 %i.fd, 32
  br i1 %min.iters.check832, label %vec.epilog.ph849, label %vector.ph833

vector.ph833:                                     ; preds = %vector.main.loop.iter.check831
  %i.ft = and i64 %i.fd, 24
  %n.vec834 = and i64 %i.fd, -32                  ; 5 uses
  %i.fu = add nsw i64 %n.vec834, %i.fc
  %i.fv = trunc i64 %n.vec834 to i32
  %i.fw = add i32 %.3340.lcssa, %i.fv             ; 2 uses
  %invariant.gep978 = getelementptr i8, ptr %i.j, i64 %i.fc
  br label %vector.body835

vector.body835:                                   ; preds = %vector.body835, %vector.ph833
  %index836 = phi i64 [ 0, %vector.ph833 ], [ %index.next839, %vector.body835 ] ; 3 uses
  %i.fx = trunc i64 %index836 to i32
  %i.fy = add i32 %.3340.lcssa, %i.fx
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr i8, ptr %i.c, i64 %i.fz   ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %wide.load837 = load <16 x i8>, ptr %i.ga, align 1
  %wide.load838 = load <16 x i8>, ptr %i.gb, align 1
  %gep979 = getelementptr i8, ptr %invariant.gep978, i64 %index836 ; 2 uses
  %i.gc = getelementptr i8, ptr %gep979, i64 16
  store <16 x i8> %wide.load837, ptr %gep979, align 1
  store <16 x i8> %wide.load838, ptr %i.gc, align 1
  %index.next839 = add nuw i64 %index836, 32      ; 2 uses
  %i.gd = icmp eq i64 %index.next839, %n.vec834
  br i1 %i.gd, label %middle.block840, label %vector.body835, !llvm.loop !21

middle.block840:                                  ; preds = %vector.body835
  %cmp.n841 = icmp eq i64 %i.fd, %n.vec834
  br i1 %cmp.n841, label %._crit_edge496, label %vec.epilog.iter.check847

vec.epilog.iter.check847:                         ; preds = %middle.block840
  %min.epilog.iters.check848 = icmp eq i64 %i.ft, 0
  br i1 %min.epilog.iters.check848, label %.lr.ph495.preheader, label %vec.epilog.ph849, !prof !19

vec.epilog.ph849:                                 ; preds = %vector.main.loop.iter.check831, %vec.epilog.iter.check847
  %vec.epilog.resume.val842 = phi i64 [ %n.vec834, %vec.epilog.iter.check847 ], [ 0, %vector.main.loop.iter.check831 ]
  %n.vec850 = and i64 %i.fd, -8                   ; 4 uses
  %i.ge = add nsw i64 %n.vec850, %i.fc
  %i.gf = trunc i64 %n.vec850 to i32
  %i.gg = add i32 %.3340.lcssa, %i.gf             ; 2 uses
  %invariant.gep980 = getelementptr i8, ptr %i.j, i64 %i.fc
  br label %vec.epilog.vector.body851

vec.epilog.vector.body851:                        ; preds = %vec.epilog.vector.body851, %vec.epilog.ph849
  %index852 = phi i64 [ %vec.epilog.resume.val842, %vec.epilog.ph849 ], [ %index.next854, %vec.epilog.vector.body851 ] ; 3 uses
  %i.gh = trunc i64 %index852 to i32
  %i.gi = add i32 %.3340.lcssa, %i.gh
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr i8, ptr %i.c, i64 %i.gj
  %wide.load853 = load <8 x i8>, ptr %i.gk, align 1
  %gep981 = getelementptr i8, ptr %invariant.gep980, i64 %index852
  store <8 x i8> %wide.load853, ptr %gep981, align 1
  %index.next854 = add nuw i64 %index852, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next854, %n.vec850
  br i1 %i.gl, label %vec.epilog.middle.block855, label %vec.epilog.vector.body851, !llvm.loop !22

vec.epilog.middle.block855:                       ; preds = %vec.epilog.vector.body851
  %cmp.n856 = icmp eq i64 %i.fd, %n.vec850
  br i1 %cmp.n856, label %._crit_edge496, label %.lr.ph495.preheader

.lr.ph495.preheader:                              ; preds = %vector.memcheck827, %vector.scevcheck824, %iter.check845, %vec.epilog.iter.check847, %vec.epilog.middle.block855
  %indvars.iv613.ph = phi i64 [ %i.fc, %iter.check845 ], [ %i.fc, %vector.scevcheck824 ], [ %i.fc, %vector.memcheck827 ], [ %i.fu, %vec.epilog.iter.check847 ], [ %i.ge, %vec.epilog.middle.block855 ] ; 4 uses
  %.5342493.ph = phi i32 [ %.3340.lcssa, %iter.check845 ], [ %.3340.lcssa, %vector.scevcheck824 ], [ %.3340.lcssa, %vector.memcheck827 ], [ %i.fw, %vec.epilog.iter.check847 ], [ %i.gg, %vec.epilog.middle.block855 ] ; 2 uses
  %i.gm = sub i64 %wide.trip.count616, %indvars.iv613.ph
  %xtraiter910 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod911.not = icmp eq i64 %xtraiter910, 0
  br i1 %lcmp.mod911.not, label %.lr.ph495.prol.loopexit, label %.lr.ph495.prol

.lr.ph495.prol:                                   ; preds = %.lr.ph495.preheader, %.lr.ph495.prol
  %indvars.iv613.prol = phi i64 [ %indvars.iv.next614.prol, %.lr.ph495.prol ], [ %indvars.iv613.ph, %.lr.ph495.preheader ] ; 2 uses
  %.5342493.prol = phi i32 [ %i.gn, %.lr.ph495.prol ], [ %.5342493.ph, %.lr.ph495.preheader ] ; 2 uses
  %prol.iter912 = phi i64 [ %prol.iter912.next, %.lr.ph495.prol ], [ 0, %.lr.ph495.preheader ]
  %i.gn = add i32 %.5342493.prol, 1               ; 3 uses
  %i.go = zext i32 %.5342493.prol to i64
  %i.gp = getelementptr i8, ptr %i.c, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1
  %indvars.iv.next614.prol = add nuw nsw i64 %indvars.iv613.prol, 1 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.j, i64 %indvars.iv613.prol
  store i8 %i.gq, ptr %i.gr, align 1
  %prol.iter912.next = add i64 %prol.iter912, 1   ; 2 uses
end_hunk_0
begin_hunk_1_@nstrace_read_v30:bb.a
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = getelementptr i8, ptr %i.j, i64 14
  store i8 %i.mi, ptr %i.mj, align 1
  %exitcond.15.not = icmp eq i32 %i.kd, 15
  br i1 %exitcond.15.not, label %g_strdup_inline.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mk = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.ml = getelementptr i8, ptr %i.mk, i64 15
  %i.mm = load i8, ptr %i.ml, align 1
  %i.mn = getelementptr i8, ptr %i.j, i64 15
  store i8 %i.mm, ptr %i.mn, align 1
  %exitcond.16.not = icmp eq i32 %i.kd, 16
  br i1 %exitcond.16.not, label %g_strdup_inline.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mo = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.mp = getelementptr i8, ptr %i.mo, i64 16
  %i.mq = load i8, ptr %i.mp, align 1
  %i.mr = getelementptr i8, ptr %i.j, i64 16
  store i8 %i.mq, ptr %i.mr, align 1
  %exitcond.17.not = icmp eq i32 %i.kd, 17
  br i1 %exitcond.17.not, label %g_strdup_inline.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ms = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.mt = getelementptr i8, ptr %i.ms, i64 17
  %i.mu = load i8, ptr %i.mt, align 1
  %i.mv = getelementptr i8, ptr %i.j, i64 17
  store i8 %i.mu, ptr %i.mv, align 1
  %exitcond.18.not = icmp eq i32 %i.kd, 18
  br i1 %exitcond.18.not, label %g_strdup_inline.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mw = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.mx = getelementptr i8, ptr %i.mw, i64 18
  %i.my = load i8, ptr %i.mx, align 1
  %i.mz = getelementptr i8, ptr %i.j, i64 18
  store i8 %i.my, ptr %i.mz, align 1
  %exitcond.19.not = icmp eq i32 %i.kd, 19
  br i1 %exitcond.19.not, label %g_strdup_inline.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.na = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.nb = getelementptr i8, ptr %i.na, i64 19
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = getelementptr i8, ptr %i.j, i64 19
  store i8 %i.nc, ptr %i.nd, align 1
  %exitcond.20.not = icmp eq i32 %i.kd, 20
  br i1 %exitcond.20.not, label %g_strdup_inline.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ne = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.nf = getelementptr i8, ptr %i.ne, i64 20
  %i.ng = load i8, ptr %i.nf, align 1
  %i.nh = getelementptr i8, ptr %i.j, i64 20
  store i8 %i.ng, ptr %i.nh, align 1
  %exitcond.21.not = icmp eq i32 %i.kd, 21
  br i1 %exitcond.21.not, label %g_strdup_inline.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ni = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.nj = getelementptr i8, ptr %i.ni, i64 21
  %i.nk = load i8, ptr %i.nj, align 1
  %i.nl = getelementptr i8, ptr %i.j, i64 21
  store i8 %i.nk, ptr %i.nl, align 1
  %exitcond.22.not = icmp eq i32 %i.kd, 22
  br i1 %exitcond.22.not, label %g_strdup_inline.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nm = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.nn = getelementptr i8, ptr %i.nm, i64 22
  %i.no = load i8, ptr %i.nn, align 1
  %i.np = getelementptr i8, ptr %i.j, i64 22
  store i8 %i.no, ptr %i.np, align 1
  %exitcond.23.not = icmp eq i32 %i.kd, 23
  br i1 %exitcond.23.not, label %g_strdup_inline.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nq = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.nr = getelementptr i8, ptr %i.nq, i64 23
  %i.ns = load i8, ptr %i.nr, align 1
  %i.nt = getelementptr i8, ptr %i.j, i64 23
  store i8 %i.ns, ptr %i.nt, align 1
  %exitcond.24.not = icmp eq i32 %i.kd, 24
  br i1 %exitcond.24.not, label %g_strdup_inline.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nu = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.nv = getelementptr i8, ptr %i.nu, i64 24
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = getelementptr i8, ptr %i.j, i64 24
  store i8 %i.nw, ptr %i.nx, align 1
  %exitcond.25.not = icmp eq i32 %i.kd, 25
  br i1 %exitcond.25.not, label %g_strdup_inline.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ny = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.nz = getelementptr i8, ptr %i.ny, i64 25
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = getelementptr i8, ptr %i.j, i64 25
  store i8 %i.oa, ptr %i.ob, align 1
  %exitcond.26.not = icmp eq i32 %i.kd, 26
  br i1 %exitcond.26.not, label %g_strdup_inline.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oc = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.od = getelementptr i8, ptr %i.oc, i64 26
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = getelementptr i8, ptr %i.j, i64 26
  store i8 %i.oe, ptr %i.of, align 1
  %exitcond.27.not = icmp eq i32 %i.kd, 27
  br i1 %exitcond.27.not, label %g_strdup_inline.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.og = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.oh = getelementptr i8, ptr %i.og, i64 27
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = getelementptr i8, ptr %i.j, i64 27
  store i8 %i.oi, ptr %i.oj, align 1
  %exitcond.28.not = icmp eq i32 %i.kd, 28
  br i1 %exitcond.28.not, label %g_strdup_inline.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ok = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.ol = getelementptr i8, ptr %i.ok, i64 28
  %i.om = load i8, ptr %i.ol, align 1
  %i.on = getelementptr i8, ptr %i.j, i64 28
  store i8 %i.om, ptr %i.on, align 1
  %exitcond.29.not = icmp eq i32 %i.kd, 29
  br i1 %exitcond.29.not, label %g_strdup_inline.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oo = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.op = getelementptr i8, ptr %i.oo, i64 29
  %i.oq = load i8, ptr %i.op, align 1
  %i.or = getelementptr i8, ptr %i.j, i64 29
  store i8 %i.oq, ptr %i.or, align 1
  %exitcond.30.not = icmp eq i32 %i.kd, 30
  br i1 %exitcond.30.not, label %g_strdup_inline.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.os = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.ot = getelementptr i8, ptr %i.os, i64 30
  %i.ou = load i8, ptr %i.ot, align 1
  %i.ov = getelementptr i8, ptr %i.j, i64 30
  store i8 %i.ou, ptr %i.ov, align 1
  %exitcond.31.not = icmp eq i32 %i.kd, 31
  br i1 %exitcond.31.not, label %g_strdup_inline.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ow = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.ox = getelementptr i8, ptr %i.ow, i64 31
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = getelementptr i8, ptr %i.j, i64 31
  store i8 %i.oy, ptr %i.oz, align 1
  %exitcond.32.not = icmp eq i32 %i.kd, 32
  br i1 %exitcond.32.not, label %g_strdup_inline.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pa = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.pb = getelementptr i8, ptr %i.pa, i64 32
  %i.pc = load i8, ptr %i.pb, align 1
  %i.pd = getelementptr i8, ptr %i.j, i64 32
  store i8 %i.pc, ptr %i.pd, align 1
  %exitcond.33.not = icmp eq i32 %i.kd, 33
  br i1 %exitcond.33.not, label %g_strdup_inline.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pe = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.pf = getelementptr i8, ptr %i.pe, i64 33
  %i.pg = load i8, ptr %i.pf, align 1
  %i.ph = getelementptr i8, ptr %i.j, i64 33
  store i8 %i.pg, ptr %i.ph, align 1
  %exitcond.34.not = icmp eq i32 %i.kd, 34
  br i1 %exitcond.34.not, label %g_strdup_inline.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %indvars.iv.next563.34 = add nuw nsw i32 %.1338460, 35 ; 2 uses
  %i.pi = getelementptr i8, ptr %i.c, i64 %i.ae
  %i.pj = getelementptr i8, ptr %i.pi, i64 34
  %i.pk = load i8, ptr %i.pj, align 1
  %i.pl = getelementptr i8, ptr %i.j, i64 34
  store i8 %i.pk, ptr %i.pl, align 1
  %i.pm = zext i8 %i.ki to i32                    ; 2 uses
  %i.pn = zext i8 %i.km to i32
  %i.po = shl nuw nsw i32 %i.pn, 7
  %i.pp = and i32 %i.pm, 127
  %i.pq = or disjoint i32 %i.po, %i.pp
  %.not354682 = icmp slt i8 %i.ki, 0
  %i.pr = select i1 %.not354682, i32 %i.pq, i32 %i.pm ; 4 uses
  %i.ps = add nuw nsw i32 %i.pr, %.1338460        ; 2 uses
  %i.pt = load i32, ptr %i.g, align 4             ; 2 uses
  %.not355 = icmp ult i32 %i.ps, %i.pt
  %.not356467498 = icmp eq i32 %i.ps, 16383
  %.not356467 = or i1 %.not355, %.not356467498
  br i1 %.not356467, label %.preheader412, label %.preheader413

.preheader413:                                    ; preds = %bb.bi, %select.unfold406
  %i.pu = phi i32 [ %i.tl, %select.unfold406 ], [ %i.pt, %bb.bi ] ; 2 uses
  %.5470 = phi i32 [ %.6.lcssa, %select.unfold406 ], [ 35, %bb.bi ] ; 11 uses
  %.2336469 = phi i32 [ %i.tg, %select.unfold406 ], [ %.0334, %bb.bi ]
  %.7344468 = phi i32 [ 0, %select.unfold406 ], [ %indvars.iv.next563.34, %bb.bi ] ; 2 uses
  %i.pv = icmp ult i32 %.7344468, %i.pu
  br i1 %i.pv, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader413
  %i.pw = zext i32 %.7344468 to i64               ; 10 uses
  %i.px = zext i32 %i.pu to i64                   ; 3 uses
  %i.py = sub nsw i64 %i.px, %i.pw                ; 7 uses
  %min.iters.check = icmp ult i64 %i.py, 8
  br i1 %min.iters.check, label %.lr.ph466.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.pz = xor i64 %i.pw, -1
  %i.qa = add nsw i64 %i.pz, %i.px                ; 3 uses
  %i.qb = trunc i64 %i.qa to i32
  %i.qc = xor i32 %.5470, -1
  %i.qd = icmp ult i32 %i.qc, %i.qb
  %i.qe = icmp ugt i64 %i.qa, 4294967295
  %9 = or i1 %i.qd, %i.qe
  %10 = zext i32 %.5470 to i64
  %scevgep = getelementptr i8, ptr %i.j, i64 %10  ; 2 uses
  %11 = getelementptr i8, ptr %scevgep, i64 %i.qa
  %12 = icmp ult ptr %11, %scevgep
  %i.qf = or i1 %9, %12
  br i1 %i.qf, label %.lr.ph466.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.qg = zext i32 %.5470 to i64
  %i.qh = add i64 %i.k, %i.qg
  %i.qi = add i64 %i.d, %i.pw
  %i.qj = sub i64 %i.qi, %i.qh
  %diff.check = icmp ugt i64 %i.qj, -32
  br i1 %diff.check, label %.lr.ph466.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check735 = icmp ult i64 %i.py, 32
  br i1 %min.iters.check735, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qk = and i64 %i.py, 24
  %n.vec = and i64 %i.py, -32                     ; 5 uses
  %i.ql = add nsw i64 %n.vec, %i.pw
  %i.qm = trunc i64 %n.vec to i32
  %i.qn = add i32 %.5470, %i.qm                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.c, i64 %i.pw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qo = trunc i64 %index to i32
  %i.qp = add i32 %.5470, %i.qo
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.qq = getelementptr i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1
  %wide.load736 = load <16 x i8>, ptr %i.qq, align 1
  %i.qr = zext i32 %i.qp to i64
  %i.qs = getelementptr i8, ptr %i.j, i64 %i.qr   ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 16
  store <16 x i8> %wide.load, ptr %i.qs, align 1
  store <16 x i8> %wide.load736, ptr %i.qt, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.qu = icmp eq i64 %index.next, %n.vec
  br i1 %i.qu, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.py, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph466.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec738 = and i64 %i.py, -8                   ; 4 uses
  %i.qv = add nsw i64 %n.vec738, %i.pw
  %i.qw = trunc i64 %n.vec738 to i32
  %i.qx = add i32 %.5470, %i.qw                   ; 2 uses
  %invariant.gep966.a = getelementptr i8, ptr %i.c, i64 %i.pw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index739 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next741, %vec.epilog.vector.body ] ; 3 uses
  %i.qy = trunc i64 %index739 to i32
  %i.qz = add i32 %.5470, %i.qy
  %gep967.a = getelementptr i8, ptr %invariant.gep966.a, i64 %index739
  %wide.load740 = load <8 x i8>, ptr %gep967.a, align 1
  %i.ra = zext i32 %i.qz to i64
  %i.rb = getelementptr i8, ptr %i.j, i64 %i.ra
  store <8 x i8> %wide.load740, ptr %i.rb, align 1
  %index.next741 = add nuw i64 %index739, 8       ; 2 uses
  %i.rc = icmp eq i64 %index.next741, %n.vec738
  br i1 %i.rc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n742 = icmp eq i64 %i.py, %n.vec738
  br i1 %cmp.n742, label %._crit_edge, label %.lr.ph466.preheader

.lr.ph466.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.pw, %iter.check ], [ %i.pw, %vector.scevcheck ], [ %i.pw, %vector.memcheck ], [ %i.ql, %vec.epilog.iter.check ], [ %i.qv, %vec.epilog.middle.block ]
  %.6465.ph = phi i32 [ %.5470, %iter.check ], [ %.5470, %vector.scevcheck ], [ %.5470, %vector.memcheck ], [ %i.qn, %vec.epilog.iter.check ], [ %i.qx, %vec.epilog.middle.block ]
  br label %.lr.ph466

.preheader412:                                    ; preds = %select.unfold406, %bb.bi
  %.7344.lcssa = phi i32 [ %indvars.iv.next563.34, %bb.bi ], [ 0, %select.unfold406 ] ; 11 uses
  %.2336.lcssa = phi i32 [ %.0334, %bb.bi ], [ %i.tg, %select.unfold406 ]
  %.5.lcssa = phi i32 [ 35, %bb.bi ], [ %.6.lcssa, %select.unfold406 ] ; 2 uses
  %i.rd = icmp ult i32 %.5.lcssa, %i.pr
  br i1 %i.rd, label %iter.check764, label %._crit_edge477

iter.check764:                                    ; preds = %.preheader412
  %i.re = zext i32 %.5.lcssa to i64               ; 10 uses
  %wide.trip.count581 = zext nneg i32 %i.pr to i64 ; 5 uses
  %i.rf = sub nsw i64 %wide.trip.count581, %i.re  ; 7 uses
  %min.iters.check750.a = icmp ult i64 %i.rf, 8
  br i1 %min.iters.check750.a, label %.lr.ph476.preheader, label %vector.scevcheck745

vector.scevcheck745:                              ; preds = %iter.check764
  %i.rg = xor i64 %i.re, -1
  %i.rh = add nsw i64 %i.rg, %wide.trip.count581  ; 3 uses
  %i.ri = trunc i64 %i.rh to i32
  %i.rj = xor i32 %.7344.lcssa, -1
  %i.rk = icmp ult i32 %i.rj, %i.ri
  %i.rl = icmp ugt i64 %i.rh, 4294967295
  %i.rm = or i1 %i.rk, %i.rl
  %i.rn = zext i32 %.7344.lcssa to i64
  %scevgep746 = getelementptr i8, ptr %i.c, i64 %i.rn ; 2 uses
  %i.ro = getelementptr i8, ptr %scevgep746, i64 %i.rh
  %i.rp = icmp ult ptr %i.ro, %scevgep746
  %i.rq = or i1 %i.rm, %i.rp
  br i1 %i.rq, label %.lr.ph476.preheader, label %vector.memcheck748

vector.memcheck748:                               ; preds = %vector.scevcheck745
  %i.rr = add i64 %i.k, %i.re
  %i.rs = zext i32 %.7344.lcssa to i64
  %i.rt = add i64 %i.d, %i.rs
  %i.ru = sub i64 %i.rt, %i.rr
  %diff.check749 = icmp ugt i64 %i.ru, -32
  br i1 %diff.check749, label %.lr.ph476.preheader, label %vector.main.loop.iter.check751

vector.main.loop.iter.check751:                   ; preds = %vector.memcheck748
  %min.iters.check752 = icmp ult i64 %i.rf, 32
  br i1 %min.iters.check752, label %vec.epilog.ph768, label %vector.ph753

vector.ph753:                                     ; preds = %vector.main.loop.iter.check751
  %i.rv = and i64 %i.rf, 24
  %n.vec754 = and i64 %i.rf, -32                  ; 5 uses
  %i.rw = add nsw i64 %n.vec754, %i.re
  %i.rx = trunc i64 %n.vec754 to i32
  %i.ry = add i32 %.7344.lcssa, %i.rx             ; 2 uses
  %invariant.gep968 = getelementptr i8, ptr %i.j, i64 %i.re
  br label %vector.body755

vector.body755:                                   ; preds = %vector.body755, %vector.ph753
  %index756 = phi i64 [ 0, %vector.ph753 ], [ %index.next759, %vector.body755 ] ; 3 uses
  %i.rz = trunc i64 %index756 to i32
  %i.sa = add i32 %.7344.lcssa, %i.rz
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr i8, ptr %i.c, i64 %i.sb   ; 2 uses
  %i.sd = getelementptr i8, ptr %i.sc, i64 16
  %wide.load757 = load <16 x i8>, ptr %i.sc, align 1
  %wide.load758 = load <16 x i8>, ptr %i.sd, align 1
  %gep969 = getelementptr i8, ptr %invariant.gep968, i64 %index756 ; 2 uses
  %i.se = getelementptr i8, ptr %gep969, i64 16
  store <16 x i8> %wide.load757, ptr %gep969, align 1
  store <16 x i8> %wide.load758, ptr %i.se, align 1
  %index.next759 = add nuw i64 %index756, 32      ; 2 uses
  %i.sf = icmp eq i64 %index.next759, %n.vec754
  br i1 %i.sf, label %middle.block760, label %vector.body755, !llvm.loop !29

middle.block760:                                  ; preds = %vector.body755
  %cmp.n761 = icmp eq i64 %i.rf, %n.vec754
  br i1 %cmp.n761, label %._crit_edge477, label %vec.epilog.iter.check766

vec.epilog.iter.check766:                         ; preds = %middle.block760
  %min.epilog.iters.check767 = icmp eq i64 %i.rv, 0
  br i1 %min.epilog.iters.check767, label %.lr.ph476.preheader, label %vec.epilog.ph768, !prof !19

vec.epilog.ph768:                                 ; preds = %vector.main.loop.iter.check751, %vec.epilog.iter.check766
  %vec.epilog.resume.val762 = phi i64 [ %n.vec754, %vec.epilog.iter.check766 ], [ 0, %vector.main.loop.iter.check751 ]
  %n.vec769 = and i64 %i.rf, -8                   ; 4 uses
  %i.sg = add nsw i64 %n.vec769, %i.re
  %i.sh = trunc i64 %n.vec769 to i32
  %i.si = add i32 %.7344.lcssa, %i.sh             ; 2 uses
  %invariant.gep970 = getelementptr i8, ptr %i.j, i64 %i.re
  br label %vec.epilog.vector.body770

vec.epilog.vector.body770:                        ; preds = %vec.epilog.vector.body770, %vec.epilog.ph768
  %index771 = phi i64 [ %vec.epilog.resume.val762, %vec.epilog.ph768 ], [ %index.next773, %vec.epilog.vector.body770 ] ; 3 uses
  %i.sj = trunc i64 %index771 to i32
  %i.sk = add i32 %.7344.lcssa, %i.sj
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr i8, ptr %i.c, i64 %i.sl
  %wide.load772 = load <8 x i8>, ptr %i.sm, align 1
  %gep971 = getelementptr i8, ptr %invariant.gep970, i64 %index771
  store <8 x i8> %wide.load772, ptr %gep971, align 1
  %index.next773 = add nuw i64 %index771, 8       ; 2 uses
  %i.sn = icmp eq i64 %index.next773, %n.vec769
  br i1 %i.sn, label %vec.epilog.middle.block774, label %vec.epilog.vector.body770, !llvm.loop !30

vec.epilog.middle.block774:                       ; preds = %vec.epilog.vector.body770
  %cmp.n775 = icmp eq i64 %i.rf, %n.vec769
  br i1 %cmp.n775, label %._crit_edge477, label %.lr.ph476.preheader

.lr.ph476.preheader:                              ; preds = %vector.memcheck748, %vector.scevcheck745, %iter.check764, %vec.epilog.iter.check766, %vec.epilog.middle.block774
  %indvars.iv578.ph = phi i64 [ %i.re, %iter.check764 ], [ %i.re, %vector.scevcheck745 ], [ %i.re, %vector.memcheck748 ], [ %i.rw, %vec.epilog.iter.check766 ], [ %i.sg, %vec.epilog.middle.block774 ] ; 4 uses
  %.9474.ph = phi i32 [ %.7344.lcssa, %iter.check764 ], [ %.7344.lcssa, %vector.scevcheck745 ], [ %.7344.lcssa, %vector.memcheck748 ], [ %i.ry, %vec.epilog.iter.check766 ], [ %i.si, %vec.epilog.middle.block774 ] ; 2 uses
  %i.so = sub i64 %wide.trip.count581, %indvars.iv578.ph
  %xtraiter = and i64 %i.so, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph476.prol.loopexit, label %.lr.ph476.prol

.lr.ph476.prol:                                   ; preds = %.lr.ph476.preheader, %.lr.ph476.prol
  %indvars.iv578.prol = phi i64 [ %indvars.iv.next579.prol, %.lr.ph476.prol ], [ %indvars.iv578.ph, %.lr.ph476.preheader ] ; 2 uses
  %.9474.prol = phi i32 [ %i.sp, %.lr.ph476.prol ], [ %.9474.ph, %.lr.ph476.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph476.prol ], [ 0, %.lr.ph476.preheader ]
  %i.sp = add i32 %.9474.prol, 1                  ; 3 uses
  %i.sq = zext i32 %.9474.prol to i64
  %i.sr = getelementptr i8, ptr %i.c, i64 %i.sq
  %i.ss = load i8, ptr %i.sr, align 1
  %indvars.iv.next579.prol = add nuw nsw i64 %indvars.iv578.prol, 1 ; 2 uses
  %i.st = getelementptr i8, ptr %i.j, i64 %indvars.iv578.prol
  store i8 %i.ss, ptr %i.st, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_1
