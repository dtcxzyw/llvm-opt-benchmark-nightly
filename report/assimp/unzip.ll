Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/unzip?download=true
inline.NumInlined: 71
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@unz64local_GetCurrentFileInfoInternal:bb.a
  %i.o = alloca [4 x i8], align 4                 ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 5 uses
  %i.r = alloca [2 x i8], align 2                 ; 5 uses
  %i.s = alloca [2 x i8], align 2                 ; 5 uses
  %i.t = alloca [2 x i8], align 2                 ; 5 uses
  %i.u = alloca [2 x i8], align 2                 ; 5 uses
  %i.v = alloca [4 x i8], align 4                 ; 5 uses
  %i.w = icmp eq ptr %0, null
  br i1 %i.w, label %bb.bf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 30 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = tail call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %i.y, i64 noundef %i.ad, i32 noundef 0) #14
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i64 %i.ah(ptr noundef %i.aj, ptr noundef %i.af, ptr noundef nonnull %i.v, i64 noundef 4) #14, !inline_history !1
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.d, label %unz64local_getLong.exit

unz64local_getLong.exit:                          ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.ai, align 8
  %i.aq = call i32 %i.ao(ptr noundef %i.ap, ptr noundef %i.af) #14, !inline_history !1
  %.not.i.not = icmp eq i32 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  %spec.select = select i1 %.not.i.not, i32 -103, i32 -1
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.v, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #14
  %.fr = freeze i32 %i.ar
  %.not165 = icmp eq i32 %.fr, 33639248
  %spec.select480 = select i1 %.not165, i32 0, i32 -103
  br label %.thread

.thread:                                          ; preds = %bb.d, %unz64local_getLong.exit, %bb.b
  %.1143 = phi i32 [ -1, %bb.b ], [ %spec.select480, %bb.d ], [ %spec.select, %unz64local_getLong.exit ] ; 2 uses
  %i.as = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 45 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call i64 %i.au(ptr noundef %i.aw, ptr noundef %i.as, ptr noundef nonnull %i.u, i64 noundef 2) #14, !inline_history !2
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = icmp eq i64 %i.ay, 2
  br i1 %i.az, label %unz64local_getShort.exit.thread, label %unz64local_getShort.exit

unz64local_getShort.exit.thread:                  ; preds = %.thread
  %i.ba = load i16, ptr %i.u, align 2
  %i.bb = zext i16 %i.ba to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  br label %bb.e

unz64local_getShort.exit:                         ; preds = %.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.av, align 8
  %i.bf = call i32 %i.bd(ptr noundef %i.be, ptr noundef %i.as) #14, !inline_history !2
  %.fr501 = freeze i32 %i.bf
  %.not.i208.not = icmp eq i32 %.fr501, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  %spec.select481 = select i1 %.not.i208.not, i32 %.1143, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %unz64local_getShort.exit, %unz64local_getShort.exit.thread
  %.sroa.0297.0325 = phi i64 [ 0, %unz64local_getShort.exit ], [ %i.bb, %unz64local_getShort.exit.thread ]
  %i.bg = phi i32 [ %spec.select481, %unz64local_getShort.exit ], [ %.1143, %unz64local_getShort.exit.thread ] ; 2 uses
  %i.bh = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  %i.bi = load ptr, ptr %i.at, align 8
  %i.bj = load ptr, ptr %i.av, align 8
  %i.bk = call i64 %i.bi(ptr noundef %i.bj, ptr noundef %i.bh, ptr noundef nonnull %i.t, i64 noundef 2) #14, !inline_history !2
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = icmp eq i64 %i.bl, 2
  br i1 %i.bm, label %unz64local_getShort.exit214.thread, label %unz64local_getShort.exit214

unz64local_getShort.exit214.thread:               ; preds = %bb.e
  %i.bn = load i16, ptr %i.t, align 2
  %i.bo = zext i16 %i.bn to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  br label %bb.f

unz64local_getShort.exit214:                      ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.av, align 8
  %i.bs = call i32 %i.bq(ptr noundef %i.br, ptr noundef %i.bh) #14, !inline_history !2
  %.fr502 = freeze i32 %i.bs
  %.not.i211.not = icmp eq i32 %.fr502, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  %spec.select482 = select i1 %.not.i211.not, i32 %i.bg, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %unz64local_getShort.exit214, %unz64local_getShort.exit214.thread
  %.sroa.5.0332 = phi i64 [ 0, %unz64local_getShort.exit214 ], [ %i.bo, %unz64local_getShort.exit214.thread ]
  %i.bt = phi i32 [ %spec.select482, %unz64local_getShort.exit214 ], [ %i.bg, %unz64local_getShort.exit214.thread ] ; 2 uses
  %i.bu = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  %i.bv = load ptr, ptr %i.at, align 8
  %i.bw = load ptr, ptr %i.av, align 8
  %i.bx = call i64 %i.bv(ptr noundef %i.bw, ptr noundef %i.bu, ptr noundef nonnull %i.s, i64 noundef 2) #14, !inline_history !2
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = icmp eq i64 %i.by, 2
  br i1 %i.bz, label %unz64local_getShort.exit218.thread, label %unz64local_getShort.exit218

unz64local_getShort.exit218.thread:               ; preds = %bb.f
  %i.ca = load i16, ptr %i.s, align 2
  %i.cb = zext i16 %i.ca to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  br label %bb.g

unz64local_getShort.exit218:                      ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.av, align 8
  %i.cf = call i32 %i.cd(ptr noundef %i.ce, ptr noundef %i.bu) #14, !inline_history !2
  %.fr503 = freeze i32 %i.cf
  %.not.i215.not = icmp eq i32 %.fr503, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  %spec.select483 = select i1 %.not.i215.not, i32 %i.bt, i32 -1
  br label %bb.g

bb.g:                                             ; preds = %unz64local_getShort.exit218, %unz64local_getShort.exit218.thread
  %.sroa.7.0339 = phi i64 [ 0, %unz64local_getShort.exit218 ], [ %i.cb, %unz64local_getShort.exit218.thread ]
  %i.cg = phi i32 [ %spec.select483, %unz64local_getShort.exit218 ], [ %i.bt, %unz64local_getShort.exit218.thread ] ; 2 uses
  %i.ch = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  %i.ci = load ptr, ptr %i.at, align 8
  %i.cj = load ptr, ptr %i.av, align 8
  %i.ck = call i64 %i.ci(ptr noundef %i.cj, ptr noundef %i.ch, ptr noundef nonnull %i.r, i64 noundef 2) #14, !inline_history !2
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = icmp eq i64 %i.cl, 2
  br i1 %i.cm, label %unz64local_getShort.exit222.thread, label %unz64local_getShort.exit222

unz64local_getShort.exit222.thread:               ; preds = %bb.g
  %i.cn = load i16, ptr %i.r, align 2
  %i.co = zext i16 %i.cn to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  br label %bb.h

unz64local_getShort.exit222:                      ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.av, align 8
  %i.cs = call i32 %i.cq(ptr noundef %i.cr, ptr noundef %i.ch) #14, !inline_history !2
  %.fr504 = freeze i32 %i.cs
  %.not.i219.not = icmp eq i32 %.fr504, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  %spec.select484 = select i1 %.not.i219.not, i32 %i.cg, i32 -1
  br label %bb.h

bb.h:                                             ; preds = %unz64local_getShort.exit222, %unz64local_getShort.exit222.thread
  %.sroa.9.0346 = phi i64 [ 0, %unz64local_getShort.exit222 ], [ %i.co, %unz64local_getShort.exit222.thread ]
  %i.ct = phi i32 [ %spec.select484, %unz64local_getShort.exit222 ], [ %i.cg, %unz64local_getShort.exit222.thread ] ; 2 uses
  %i.cu = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  %i.cv = load ptr, ptr %i.at, align 8
  %i.cw = load ptr, ptr %i.av, align 8
  %i.cx = call i64 %i.cv(ptr noundef %i.cw, ptr noundef %i.cu, ptr noundef nonnull %i.q, i64 noundef 4) #14, !inline_history !1
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = icmp eq i64 %i.cy, 4
  br i1 %i.cz, label %unz64local_getLong.exit226.thread, label %unz64local_getLong.exit226

unz64local_getLong.exit226.thread:                ; preds = %bb.h
  %i.da = load i32, ptr %i.q, align 4
  %i.db = zext i32 %i.da to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  br label %bb.i

unz64local_getLong.exit226:                       ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.av, align 8
  %i.df = call i32 %i.dd(ptr noundef %i.de, ptr noundef %i.cu) #14, !inline_history !1
  %.fr505 = freeze i32 %i.df
  %.not.i223.not = icmp eq i32 %.fr505, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  %spec.select485 = select i1 %.not.i223.not, i32 %i.ct, i32 -1
  br label %bb.i

bb.i:                                             ; preds = %unz64local_getLong.exit226, %unz64local_getLong.exit226.thread
  %.sroa.11.0353 = phi i64 [ 0, %unz64local_getLong.exit226 ], [ %i.db, %unz64local_getLong.exit226.thread ] ; 7 uses
  %i.dg = phi i32 [ %spec.select485, %unz64local_getLong.exit226 ], [ %i.ct, %unz64local_getLong.exit226.thread ] ; 2 uses
  %9 = lshr i64 %.sroa.11.0353, 16
  %i.dh = trunc nuw nsw i64 %9 to i32
  %10 = and i32 %i.dh, 31
  %11 = lshr i64 %.sroa.11.0353, 21
  %12 = trunc nuw nsw i64 %11 to i32
  %i.di = and i32 %12, 15
  %i.dj = add nsw i32 %i.di, -1
  %13 = lshr i64 %.sroa.11.0353, 25
  %14 = trunc nuw nsw i64 %13 to i32
  %i.dk = add nuw nsw i32 %14, 1980
  %15 = lshr i64 %.sroa.11.0353, 11
  %16 = trunc nuw nsw i64 %15 to i32
  %i.dl = and i32 %16, 31
  %17 = lshr i64 %.sroa.11.0353, 5
  %18 = trunc nuw nsw i64 %17 to i32
  %i.dm = and i32 %18, 63
  %.tr.i = trunc nuw i64 %.sroa.11.0353 to i32
  %i.dn = shl i32 %.tr.i, 1
  %i.do = and i32 %i.dn, 62
  %i.dp = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.dq = load ptr, ptr %i.at, align 8
  %i.dr = load ptr, ptr %i.av, align 8
  %i.ds = call i64 %i.dq(ptr noundef %i.dr, ptr noundef %i.dp, ptr noundef nonnull %i.p, i64 noundef 4) #14, !inline_history !1
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = icmp eq i64 %i.dt, 4
  br i1 %i.du, label %unz64local_getLong.exit230.thread, label %unz64local_getLong.exit230

unz64local_getLong.exit230.thread:                ; preds = %bb.i
  %i.dv = load i32, ptr %i.p, align 4
  %i.dw = zext i32 %i.dv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  br label %bb.j

unz64local_getLong.exit230:                       ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %i.av, align 8
  %i.ea = call i32 %i.dy(ptr noundef %i.dz, ptr noundef %i.dp) #14, !inline_history !1
  %.fr506 = freeze i32 %i.ea
  %.not.i227.not = icmp eq i32 %.fr506, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  %spec.select486 = select i1 %.not.i227.not, i32 %i.dg, i32 -1
  br label %bb.j

bb.j:                                             ; preds = %unz64local_getLong.exit230, %unz64local_getLong.exit230.thread
  %.sroa.14.0360 = phi i64 [ 0, %unz64local_getLong.exit230 ], [ %i.dw, %unz64local_getLong.exit230.thread ]
  %i.eb = phi i32 [ %spec.select486, %unz64local_getLong.exit230 ], [ %i.dg, %unz64local_getLong.exit230.thread ] ; 2 uses
  %i.ec = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  %i.ed = load ptr, ptr %i.at, align 8
  %i.ee = load ptr, ptr %i.av, align 8
  %i.ef = call i64 %i.ed(ptr noundef %i.ee, ptr noundef %i.ec, ptr noundef nonnull %i.o, i64 noundef 4) #14, !inline_history !1
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = icmp eq i64 %i.eg, 4
  br i1 %i.eh, label %unz64local_getLong.exit234.thread, label %unz64local_getLong.exit234

unz64local_getLong.exit234.thread:                ; preds = %bb.j
  %i.ei = load i32, ptr %i.o, align 4
  %i.ej = zext i32 %i.ei to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %bb.k

unz64local_getLong.exit234:                       ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %i.av, align 8
  %i.en = call i32 %i.el(ptr noundef %i.em, ptr noundef %i.ec) #14, !inline_history !1
  %.fr507 = freeze i32 %i.en
  %.not.i231.not = icmp eq i32 %.fr507, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  %spec.select487 = select i1 %.not.i231.not, i32 %i.eb, i32 -1
  br label %bb.k

bb.k:                                             ; preds = %unz64local_getLong.exit234, %unz64local_getLong.exit234.thread
  %.0309367 = phi i64 [ 0, %unz64local_getLong.exit234 ], [ %i.ej, %unz64local_getLong.exit234.thread ] ; 2 uses
  %i.eo = phi i32 [ %spec.select487, %unz64local_getLong.exit234 ], [ %i.eb, %unz64local_getLong.exit234.thread ] ; 2 uses
  %i.ep = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %i.eq = load ptr, ptr %i.at, align 8
  %i.er = load ptr, ptr %i.av, align 8
  %i.es = call i64 %i.eq(ptr noundef %i.er, ptr noundef %i.ep, ptr noundef nonnull %i.n, i64 noundef 4) #14, !inline_history !1
  %i.et = and i64 %i.es, 4294967295
  %i.eu = icmp eq i64 %i.et, 4
  br i1 %i.eu, label %unz64local_getLong.exit238.thread, label %unz64local_getLong.exit238

unz64local_getLong.exit238.thread:                ; preds = %bb.k
  %i.ev = load i32, ptr %i.n, align 4
  %i.ew = zext i32 %i.ev to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %bb.l

unz64local_getLong.exit238:                       ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = load ptr, ptr %i.av, align 8
  %i.fa = call i32 %i.ey(ptr noundef %i.ez, ptr noundef %i.ep) #14, !inline_history !1
  %.fr508 = freeze i32 %i.fa
  %.not.i235.not = icmp eq i32 %.fr508, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  %spec.select488 = select i1 %.not.i235.not, i32 %i.eo, i32 -1
  br label %bb.l

bb.l:                                             ; preds = %unz64local_getLong.exit238, %unz64local_getLong.exit238.thread
  %.1310374 = phi i64 [ 0, %unz64local_getLong.exit238 ], [ %i.ew, %unz64local_getLong.exit238.thread ] ; 2 uses
  %i.fb = phi i32 [ %spec.select488, %unz64local_getLong.exit238 ], [ %i.eo, %unz64local_getLong.exit238.thread ] ; 2 uses
  %i.fc = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.fd = load ptr, ptr %i.at, align 8
  %i.fe = load ptr, ptr %i.av, align 8
  %i.ff = call i64 %i.fd(ptr noundef %i.fe, ptr noundef %i.fc, ptr noundef nonnull %i.m, i64 noundef 2) #14, !inline_history !2
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = icmp eq i64 %i.fg, 2
  br i1 %i.fh, label %unz64local_getShort.exit242.thread, label %unz64local_getShort.exit242

unz64local_getShort.exit242.thread:               ; preds = %bb.l
  %i.fi = load i16, ptr %i.m, align 2
  %i.fj = zext i16 %i.fi to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %bb.m

unz64local_getShort.exit242:                      ; preds = %bb.l
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = load ptr, ptr %i.av, align 8
  %i.fn = call i32 %i.fl(ptr noundef %i.fm, ptr noundef %i.fc) #14, !inline_history !2
  %.fr509 = freeze i32 %i.fn
  %.not.i239.not = icmp eq i32 %.fr509, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  %spec.select489 = select i1 %.not.i239.not, i32 %i.fb, i32 -1
  br label %bb.m

bb.m:                                             ; preds = %unz64local_getShort.exit242, %unz64local_getShort.exit242.thread
  %.sroa.24.0381 = phi i64 [ 0, %unz64local_getShort.exit242 ], [ %i.fj, %unz64local_getShort.exit242.thread ] ; 8 uses
  %i.fo = phi i32 [ %spec.select489, %unz64local_getShort.exit242 ], [ %i.fb, %unz64local_getShort.exit242.thread ] ; 2 uses
  %i.fp = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.fq = load ptr, ptr %i.at, align 8
  %i.fr = load ptr, ptr %i.av, align 8
  %i.fs = call i64 %i.fq(ptr noundef %i.fr, ptr noundef %i.fp, ptr noundef nonnull %i.l, i64 noundef 2) #14, !inline_history !2
  %i.ft = and i64 %i.fs, 4294967295
  %i.fu = icmp eq i64 %i.ft, 2
  br i1 %i.fu, label %unz64local_getShort.exit246.thread, label %unz64local_getShort.exit246

unz64local_getShort.exit246.thread:               ; preds = %bb.m
  %i.fv = load i16, ptr %i.l, align 2
  %i.fw = zext i16 %i.fv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %bb.n

unz64local_getShort.exit246:                      ; preds = %bb.m
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = load ptr, ptr %i.av, align 8
  %i.ga = call i32 %i.fy(ptr noundef %i.fz, ptr noundef %i.fp) #14, !inline_history !2
  %.fr510 = freeze i32 %i.ga
  %.not.i243.not = icmp eq i32 %.fr510, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %spec.select490 = select i1 %.not.i243.not, i32 %i.fo, i32 -1
  br label %bb.n

bb.n:                                             ; preds = %unz64local_getShort.exit246, %unz64local_getShort.exit246.thread
  %.sroa.29.0388 = phi i64 [ 0, %unz64local_getShort.exit246 ], [ %i.fw, %unz64local_getShort.exit246.thread ] ; 9 uses
  %i.gb = phi i32 [ %spec.select490, %unz64local_getShort.exit246 ], [ %i.fo, %unz64local_getShort.exit246.thread ] ; 2 uses
  %i.gc = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.gd = load ptr, ptr %i.at, align 8
  %i.ge = load ptr, ptr %i.av, align 8
  %i.gf = call i64 %i.gd(ptr noundef %i.ge, ptr noundef %i.gc, ptr noundef nonnull %i.k, i64 noundef 2) #14, !inline_history !2
  %i.gg = and i64 %i.gf, 4294967295
  %i.gh = icmp eq i64 %i.gg, 2
  br i1 %i.gh, label %unz64local_getShort.exit250.thread, label %unz64local_getShort.exit250

unz64local_getShort.exit250.thread:               ; preds = %bb.n
  %i.gi = load i16, ptr %i.k, align 2
  %i.gj = zext i16 %i.gi to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.o

unz64local_getShort.exit250:                      ; preds = %bb.n
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.av, align 8
  %i.gn = call i32 %i.gl(ptr noundef %i.gm, ptr noundef %i.gc) #14, !inline_history !2
  %.fr511 = freeze i32 %i.gn
  %.not.i247.not = icmp eq i32 %.fr511, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  %spec.select491 = select i1 %.not.i247.not, i32 %i.gb, i32 -1
  br label %bb.o

bb.o:                                             ; preds = %unz64local_getShort.exit250, %unz64local_getShort.exit250.thread
  %.sroa.37.0395 = phi i64 [ 0, %unz64local_getShort.exit250 ], [ %i.gj, %unz64local_getShort.exit250.thread ] ; 5 uses
  %i.go = phi i32 [ %spec.select491, %unz64local_getShort.exit250 ], [ %i.gb, %unz64local_getShort.exit250.thread ] ; 2 uses
  %i.gp = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.gq = load ptr, ptr %i.at, align 8
  %i.gr = load ptr, ptr %i.av, align 8
  %i.gs = call i64 %i.gq(ptr noundef %i.gr, ptr noundef %i.gp, ptr noundef nonnull %i.j, i64 noundef 2) #14, !inline_history !2
  %i.gt = and i64 %i.gs, 4294967295
  %i.gu = icmp eq i64 %i.gt, 2
  br i1 %i.gu, label %unz64local_getShort.exit254.thread, label %unz64local_getShort.exit254

unz64local_getShort.exit254.thread:               ; preds = %bb.o
  %i.gv = load i16, ptr %i.j, align 2
  %i.gw = zext i16 %i.gv to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br label %bb.p

unz64local_getShort.exit254:                      ; preds = %bb.o
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = load ptr, ptr %i.av, align 8
  %i.ha = call i32 %i.gy(ptr noundef %i.gz, ptr noundef %i.gp) #14, !inline_history !2
  %.fr512 = freeze i32 %i.ha
  %.not.i251.not = icmp eq i32 %.fr512, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %spec.select492 = select i1 %.not.i251.not, i32 %i.go, i32 -1
  br label %bb.p
end_hunk_0
