Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/argon2-fill-block-avx512f?download=true
inline.NumInlined: 71
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@argon2_fill_segment_avx512f:bb.a
  %5 = alloca %struct.block_, align 8             ; 5 uses
  %i.a = alloca [16 x <8 x i64>], align 64        ; 4 uses
  %i.b = alloca [16 x <8 x i64>], align 64        ; 4 uses
  %i.c = alloca [16 x <8 x i64>], align 64        ; 25 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.7.0.extract.shift = lshr i64 %1, 32      ; 4 uses
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %.sroa.11.8.extract.trunc = trunc i64 %2 to i8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = icmp eq ptr %0, null
  %indvars.iv.i67.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 5 uses
  %indvars.iv927.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ne i32 %.sroa.0.0.extract.trunc, 0
  %i.k = icmp ugt i8 %.sroa.11.8.extract.trunc, 1
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %or.cond, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.h

bb.d:                                             ; preds = %.thread, %bb.c
  %i.n = phi ptr [ %i.i, %.thread ], [ %i.m, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.o, i8 noundef 0, i64 noundef 968, i1 noundef false) #5
  %i.p = and i64 %1, 4294967295
  store i64 %i.p, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.7.0.extract.shift, ptr %i.q, align 8
  %i.r = and i64 %2, 255
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.r, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = zext i32 %i.f to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %generate_addresses.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ag = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ah = and i64 %indvars.iv.i, 127              ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.a, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %5, i8 noundef 0, i64 noundef 1024, i1 noundef false) #5
  %i.aj = add i64 %i.ag, 1                        ; 2 uses
  store i64 %i.aj, ptr %i.af, align 8
  call fastcc void @fill_block_with_xor(ptr noundef %i.a, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call fastcc void @fill_block_with_xor(ptr noundef %i.b, ptr noundef nonnull %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = phi i64 [ %i.aj, %bb.f ], [ %i.ag, %bb.e ]
  %i.al = getelementptr [8 x i8], ptr %3, i64 %i.ah
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.i
  store i64 %i.am, ptr %i.an, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next.i, %i.ap
  br i1 %i.aq, label %bb.e, label %generate_addresses.exit, !llvm.loop !5

generate_addresses.exit:                          ; preds = %bb.g, %bb.d
  %i.ar = phi i32 [ 0, %bb.d ], [ %i.ao, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %generate_addresses.exit
  %i.as = phi i32 [ %i.ar, %generate_addresses.exit ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.at = phi ptr [ %i.n, %generate_addresses.exit ], [ %i.m, %._crit_edge ]
  %.not90 = phi i1 [ false, %generate_addresses.exit ], [ true, %._crit_edge ]
  %i.au = icmp eq i32 %.sroa.0.0.extract.trunc, 0 ; 3 uses
  %i.av = icmp eq i8 %.sroa.11.8.extract.trunc, 0 ; 2 uses
  %or.cond7 = select i1 %i.au, i1 %i.av, i1 false ; 2 uses
  %spec.select64 = select i1 %or.cond7, i32 2, i32 0 ; 3 uses
  %i.aw = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8            ; 3 uses
  %i.ay = mul i32 %i.ax, %.sroa.7.0.extract.trunc
  %i.az = trunc i64 %2 to i32
  %i.ba = and i32 %i.az, 255                      ; 3 uses
  %i.bb = getelementptr i8, ptr %0, i64 28
  %i.bc = mul i32 %i.as, %i.ba
  %i.bd = add i32 %i.ay, %spec.select64
  %i.be = add i32 %i.bd, %i.bc                    ; 3 uses
  %i.bf = urem i32 %i.be, %i.ax
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = add i32 %i.ax, -1
  %.059.in = select i1 %i.bg, i32 %i.bh, i32 -1
  %.059 = add i32 %.059.in, %i.be                 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = zext i32 %.059 to i64
  %i.bm = getelementptr [1024 x i8], ptr %i.bk, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.c, ptr noundef nonnull align 1 dereferenceable(1024) %i.bm, i64 noundef 1024, i1 noundef false) #5
  %i.bn = icmp ult i32 %spec.select64, %i.as
  br i1 %i.bn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.bo = getelementptr i8, ptr %0, i64 36
  %i.bp = icmp eq i8 %.sroa.11.8.extract.trunc, 3
  %i.bq = add nuw nsw i32 %i.ba, 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 320 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 576 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 640 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 704 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 768 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 832 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 896 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 960 ; 4 uses
  %i.ce = zext nneg i32 %spec.select64 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ %i.ce, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 7 uses
  %i.cf = phi i32 [ %i.as, %.lr.ph ], [ %i.va, %bb.y ] ; 4 uses
  %.05893 = phi i32 [ %i.be, %.lr.ph ], [ %i.uy, %bb.y ] ; 4 uses
  %.192 = phi i32 [ %.059, %.lr.ph ], [ %i.uz, %bb.y ]
  %i.cg = load i32, ptr %i.aw, align 8            ; 3 uses
  %i.ch = urem i32 %.05893, %i.cg
  %i.ci = icmp eq i32 %i.ch, 1
  %i.cj = add i32 %.05893, -1
  %spec.select65 = select i1 %i.ci, i32 %i.cj, i32 %.192 ; 2 uses
  br i1 %.not90, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = getelementptr [8 x i8], ptr %i.at, i64 %indvars.iv
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %0, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = zext i32 %spec.select65 to i64
  %i.cp = getelementptr [1024 x i8], ptr %i.cn, i64 %i.co
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.061.in = phi ptr [ %i.ck, %bb.j ], [ %i.cp, %bb.k ]
  %.061 = load i64, ptr %.061.in, align 8         ; 2 uses
  %i.cq = lshr i64 %.061, 32
  %i.cr = load i32, ptr %i.bo, align 4
  %.lhs.trunc = trunc nuw i64 %i.cq to i32
  %i.cs = urem i32 %.lhs.trunc, %i.cr
  %.zext = zext i32 %i.cs to i64
  %.060 = select i1 %or.cond7, i64 %.sroa.7.0.extract.shift, i64 %.zext ; 2 uses
  %.not = icmp eq i64 %.060, %.sroa.7.0.extract.shift ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ct = trunc nuw i64 %indvars.iv to i32
  %i.cu = add i32 %i.ct, -1
  br label %index_alpha.exit

bb.o:                                             ; preds = %bb.m
  %i.cv = mul i32 %i.cf, %i.ba                    ; 2 uses
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = trunc nuw i64 %indvars.iv to i32
  %i.cx = add i32 %i.cw, -1
  %i.cy = add i32 %i.cx, %i.cv
  br label %index_alpha.exit

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i64 %indvars.iv, 0
  %i.da = sext i1 %i.cz to i32
  %i.db = add i32 %i.cv, %i.da
  br label %index_alpha.exit

bb.r:                                             ; preds = %bb.l
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dc = xor i32 %i.cf, -1
  %i.dd = trunc nuw i64 %indvars.iv to i32
  %i.de = add i32 %i.dd, %i.dc
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.df = icmp eq i64 %indvars.iv, 0
  %i.dg = sext i1 %i.df to i32
  %i.dh = sub i32 %i.dg, %i.cf
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi i32 [ %i.dh, %bb.t ], [ %i.de, %bb.s ]
  %.030.i = add i32 %.pn, %i.cg                   ; 2 uses
  br i1 %i.bp, label %index_alpha.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = mul i32 %i.cf, %i.bq
  %i.dj = zext i32 %i.di to i64
  br label %index_alpha.exit

index_alpha.exit:                                 ; preds = %bb.n, %bb.p, %bb.q, %bb.u, %bb.v
  %.03036.i = phi i32 [ %.030.i, %bb.u ], [ %.030.i, %bb.v ], [ %i.db, %bb.q ], [ %i.cy, %bb.p ], [ %i.cu, %bb.n ] ; 2 uses
  %.0.i = phi i64 [ 0, %bb.u ], [ %i.dj, %bb.v ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.n ]
  %i.dk = add i32 %.03036.i, -1
  %i.dl = zext i32 %i.dk to i64
  %6 = and i64 %.061, 4294967295                  ; 2 uses
  %7 = mul nuw i64 %6, %6
  %8 = lshr i64 %7, 32
  %i.dm = zext i32 %.03036.i to i64
  %9 = mul nuw i64 %8, %i.dm
  %10 = lshr i64 %9, 32
  %i.dn = add nuw nsw i64 %.0.i, %i.dl
  %11 = sub nsw i64 %i.dn, %10
  %i.do = zext i32 %i.cg to i64                   ; 2 uses
  %i.dp = urem i64 %11, %i.do
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = mul nuw i64 %.060, %i.do
  %i.du = getelementptr [1024 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = getelementptr [1024 x i8], ptr %i.du, i64 %i.dp ; 17 uses
  %i.dw = zext i32 %.05893 to i64
  %i.dx = getelementptr [1024 x i8], ptr %i.ds, i64 %i.dw ; 17 uses
  br i1 %i.au, label %bb.x, label %bb.w

bb.w:                                             ; preds = %index_alpha.exit
  call fastcc void @fill_block_with_xor(ptr noundef %i.c, ptr noundef %i.dv, ptr noundef %i.dx)
  br label %bb.y

bb.x:                                             ; preds = %index_alpha.exit
  %i.dy = load <8 x i64>, ptr %i.c, align 64
  %i.dz = load <8 x i64>, ptr %i.dv, align 1
  %i.ea = xor <8 x i64> %i.dz, %i.dy              ; 2 uses
  store <8 x i64> %i.ea, ptr %i.c, align 64
  %i.eb = load <8 x i64>, ptr %indvars.iv927.i.sroa.gep, align 64
  %i.ec = getelementptr i8, ptr %i.dv, i64 64
  %i.ed = load <8 x i64>, ptr %i.ec, align 1
  %i.ee = xor <8 x i64> %i.ed, %i.eb              ; 2 uses
  store <8 x i64> %i.ee, ptr %indvars.iv927.i.sroa.gep, align 64
  %i.ef = load <8 x i64>, ptr %i.br, align 64
  %i.eg = getelementptr i8, ptr %i.dv, i64 128
  %i.eh = load <8 x i64>, ptr %i.eg, align 1
  %i.ei = xor <8 x i64> %i.eh, %i.ef              ; 2 uses
  store <8 x i64> %i.ei, ptr %i.br, align 64
  %i.ej = load <8 x i64>, ptr %i.bs, align 64
  %i.ek = getelementptr i8, ptr %i.dv, i64 192
  %i.el = load <8 x i64>, ptr %i.ek, align 1
  %i.em = xor <8 x i64> %i.el, %i.ej              ; 2 uses
  store <8 x i64> %i.em, ptr %i.bs, align 64
  %i.en = load <8 x i64>, ptr %i.bt, align 64
  %i.eo = getelementptr i8, ptr %i.dv, i64 256
  %i.ep = load <8 x i64>, ptr %i.eo, align 1
  %i.eq = xor <8 x i64> %i.ep, %i.en              ; 2 uses
  store <8 x i64> %i.eq, ptr %i.bt, align 64
  %i.er = load <8 x i64>, ptr %i.bu, align 64
  %i.es = getelementptr i8, ptr %i.dv, i64 320
  %i.et = load <8 x i64>, ptr %i.es, align 1
  %i.eu = xor <8 x i64> %i.et, %i.er              ; 2 uses
  store <8 x i64> %i.eu, ptr %i.bu, align 64
  %i.ev = load <8 x i64>, ptr %i.bv, align 64
  %i.ew = getelementptr i8, ptr %i.dv, i64 384
  %i.ex = load <8 x i64>, ptr %i.ew, align 1
  %i.ey = xor <8 x i64> %i.ex, %i.ev              ; 2 uses
  store <8 x i64> %i.ey, ptr %i.bv, align 64
  %i.ez = load <8 x i64>, ptr %i.bw, align 64
  %i.fa = getelementptr i8, ptr %i.dv, i64 448
  %i.fb = load <8 x i64>, ptr %i.fa, align 1
  %i.fc = xor <8 x i64> %i.fb, %i.ez              ; 2 uses
  store <8 x i64> %i.fc, ptr %i.bw, align 64
  %i.fd = load <8 x i64>, ptr %indvars.iv.i67.sroa.gep68, align 64
  %i.fe = getelementptr i8, ptr %i.dv, i64 512
  %i.ff = load <8 x i64>, ptr %i.fe, align 1
  %i.fg = xor <8 x i64> %i.ff, %i.fd              ; 2 uses
  store <8 x i64> %i.fg, ptr %indvars.iv.i67.sroa.gep68, align 64
  %i.fh = load <8 x i64>, ptr %i.bx, align 64
  %i.fi = getelementptr i8, ptr %i.dv, i64 576
  %i.fj = load <8 x i64>, ptr %i.fi, align 1
  %i.fk = xor <8 x i64> %i.fj, %i.fh              ; 2 uses
  store <8 x i64> %i.fk, ptr %i.bx, align 64
  %i.fl = load <8 x i64>, ptr %i.by, align 64
  %i.fm = getelementptr i8, ptr %i.dv, i64 640
  %i.fn = load <8 x i64>, ptr %i.fm, align 1
  %i.fo = xor <8 x i64> %i.fn, %i.fl              ; 2 uses
  store <8 x i64> %i.fo, ptr %i.by, align 64
  %i.fp = load <8 x i64>, ptr %i.bz, align 64
  %i.fq = getelementptr i8, ptr %i.dv, i64 704
  %i.fr = load <8 x i64>, ptr %i.fq, align 1
  %i.fs = xor <8 x i64> %i.fr, %i.fp              ; 2 uses
  store <8 x i64> %i.fs, ptr %i.bz, align 64
  %i.ft = load <8 x i64>, ptr %i.ca, align 64
  %i.fu = getelementptr i8, ptr %i.dv, i64 768
  %i.fv = load <8 x i64>, ptr %i.fu, align 1
  %i.fw = xor <8 x i64> %i.fv, %i.ft              ; 2 uses
  store <8 x i64> %i.fw, ptr %i.ca, align 64
  %i.fx = load <8 x i64>, ptr %i.cb, align 64
  %i.fy = getelementptr i8, ptr %i.dv, i64 832
  %i.fz = load <8 x i64>, ptr %i.fy, align 1
  %i.ga = xor <8 x i64> %i.fz, %i.fx              ; 2 uses
  store <8 x i64> %i.ga, ptr %i.cb, align 64
  %i.gb = load <8 x i64>, ptr %i.cc, align 64
  %i.gc = getelementptr i8, ptr %i.dv, i64 896
  %i.gd = load <8 x i64>, ptr %i.gc, align 1
  %i.ge = xor <8 x i64> %i.gd, %i.gb              ; 2 uses
  store <8 x i64> %i.ge, ptr %i.cc, align 64
  %i.gf = load <8 x i64>, ptr %i.cd, align 64
  %i.gg = getelementptr i8, ptr %i.dv, i64 960
  %i.gh = load <8 x i64>, ptr %i.gg, align 1
  %i.gi = xor <8 x i64> %i.gh, %i.gf              ; 2 uses
  store <8 x i64> %i.gi, ptr %i.cd, align 64
  br label %.preheader920.i

.preheader920.i:                                  ; preds = %.preheader920.i, %bb.x
  %i.gj = phi i1 [ true, %bb.x ], [ false, %.preheader920.i ]
  %indvars.iv.i67.sroa.phi = phi ptr [ %i.c, %bb.x ], [ %indvars.iv.i67.sroa.gep68, %.preheader920.i ] ; 9 uses
  %i.gk = load <8 x i64>, ptr %indvars.iv.i67.sroa.phi, align 64 ; 2 uses
  %i.gl = getelementptr i8, ptr %indvars.iv.i67.sroa.phi, i64 128 ; 2 uses
  %i.gm = load <8 x i64>, ptr %i.gl, align 64     ; 2 uses
  %i.gn = shufflevector <8 x i64> %i.gk, <8 x i64> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.go = shufflevector <8 x i64> %i.gk, <8 x i64> %i.gm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.gp = getelementptr i8, ptr %indvars.iv.i67.sroa.phi, i64 64 ; 2 uses
  %i.gq = load <8 x i64>, ptr %i.gp, align 64     ; 2 uses
  %i.gr = getelementptr i8, ptr %indvars.iv.i67.sroa.phi, i64 192 ; 2 uses
  %i.gs = load <8 x i64>, ptr %i.gr, align 64     ; 2 uses
  %i.gt = shufflevector <8 x i64> %i.gq, <8 x i64> %i.gs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gu = shufflevector <8 x i64> %i.gq, <8 x i64> %i.gs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gv = getelementptr i8, ptr %indvars.iv.i67.sroa.phi, i64 256 ; 2 uses
  %i.gw = load <8 x i64>, ptr %i.gv, align 64     ; 2 uses
  %i.gx = getelementptr i8, ptr %indvars.iv.i67.sroa.phi, i64 384 ; 2 uses
  %i.gy = load <8 x i64>, ptr %i.gx, align 64     ; 2 uses
  %i.gz = shufflevector <8 x i64> %i.gw, <8 x i64> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ha = shufflevector <8 x i64> %i.gw, <8 x i64> %i.gy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.hb = getelementptr i8, ptr %indvars.iv.i67.sroa.phi, i64 320 ; 2 uses
  %i.hc = load <8 x i64>, ptr %i.hb, align 64     ; 2 uses
  %i.hd = getelementptr i8, ptr %indvars.iv.i67.sroa.phi, i64 448 ; 2 uses
  %i.he = load <8 x i64>, ptr %i.hd, align 64     ; 2 uses
  %i.hf = shufflevector <8 x i64> %i.hc, <8 x i64> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hg = shufflevector <8 x i64> %i.hc, <8 x i64> %i.he, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hh = and <8 x i64> %i.gn, splat (i64 4294967295)
  %i.hi = and <8 x i64> %i.go, splat (i64 4294967295)
  %i.hj = mul nuw <8 x i64> %i.hi, %i.hh
  %i.hk = add <8 x i64> %i.go, %i.gn
  %i.hl = shl <8 x i64> %i.hj, splat (i64 1)
  %i.hm = add <8 x i64> %i.hk, %i.hl              ; 3 uses
  %i.hn = and <8 x i64> %i.gz, splat (i64 4294967295)
  %i.ho = and <8 x i64> %i.ha, splat (i64 4294967295)
  %i.hp = mul nuw <8 x i64> %i.ho, %i.hn
  %i.hq = add <8 x i64> %i.ha, %i.gz
  %i.hr = shl <8 x i64> %i.hp, splat (i64 1)
  %i.hs = add <8 x i64> %i.hq, %i.hr              ; 3 uses
  %i.ht = xor <8 x i64> %i.hm, %i.gu              ; 2 uses
  %i.hu = xor <8 x i64> %i.hs, %i.hg              ; 2 uses
  %i.hv = call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.ht, <8 x i64> %i.ht, <8 x i64> splat (i64 32)) ; 3 uses
  %i.hw = call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.hu, <8 x i64> %i.hu, <8 x i64> splat (i64 32)) ; 3 uses
  %i.hx = and <8 x i64> %i.gt, splat (i64 4294967295)
  %i.hy = and <8 x i64> %i.hv, splat (i64 4294967295)
  %i.hz = mul nuw <8 x i64> %i.hy, %i.hx
  %i.ia = add <8 x i64> %i.hv, %i.gt
  %i.ib = shl <8 x i64> %i.hz, splat (i64 1)
  %i.ic = add <8 x i64> %i.ia, %i.ib              ; 3 uses
  %i.id = and <8 x i64> %i.hf, splat (i64 4294967295)
  %i.ie = and <8 x i64> %i.hw, splat (i64 4294967295)
  %i.if = mul nuw <8 x i64> %i.ie, %i.id
  %i.ig = add <8 x i64> %i.hw, %i.hf
  %i.ih = shl <8 x i64> %i.if, splat (i64 1)
  %i.ii = add <8 x i64> %i.ig, %i.ih              ; 3 uses
  %i.ij = xor <8 x i64> %i.ic, %i.go              ; 2 uses
  %i.ik = xor <8 x i64> %i.ii, %i.ha              ; 2 uses
  %i.il = call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.ij, <8 x i64> %i.ij, <8 x i64> splat (i64 40)) ; 3 uses
  %i.im = call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.ik, <8 x i64> %i.ik, <8 x i64> splat (i64 40)) ; 3 uses
  %i.in = and <8 x i64> %i.hm, splat (i64 4294967295)
  %i.io = and <8 x i64> %i.il, splat (i64 4294967295)
  %i.ip = mul nuw <8 x i64> %i.io, %i.in
  %i.iq = add <8 x i64> %i.il, %i.hm
  %i.ir = shl <8 x i64> %i.ip, splat (i64 1)
  %i.is = add <8 x i64> %i.iq, %i.ir              ; 3 uses
  %i.it = and <8 x i64> %i.hs, splat (i64 4294967295)
  %i.iu = and <8 x i64> %i.im, splat (i64 4294967295)
  %i.iv = mul nuw <8 x i64> %i.iu, %i.it
  %i.iw = add <8 x i64> %i.im, %i.hs
  %i.ix = shl <8 x i64> %i.iv, splat (i64 1)
  %i.iy = add <8 x i64> %i.iw, %i.ix              ; 3 uses
  %i.iz = xor <8 x i64> %i.is, %i.hv              ; 2 uses
  %i.ja = xor <8 x i64> %i.iy, %i.hw              ; 2 uses
  %i.jb = call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.iz, <8 x i64> %i.iz, <8 x i64> splat (i64 48)) ; 3 uses
  %i.jc = call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.ja, <8 x i64> %i.ja, <8 x i64> splat (i64 48)) ; 3 uses
  %i.jd = and <8 x i64> %i.ic, splat (i64 4294967295)
  %i.je = and <8 x i64> %i.jb, splat (i64 4294967295)
  %i.jf = mul nuw <8 x i64> %i.je, %i.jd
  %i.jg = add <8 x i64> %i.jb, %i.ic
  %i.jh = shl <8 x i64> %i.jf, splat (i64 1)
  %i.ji = add <8 x i64> %i.jg, %i.jh              ; 2 uses
  %i.jj = and <8 x i64> %i.ii, splat (i64 4294967295)
  %i.jk = and <8 x i64> %i.jc, splat (i64 4294967295)
  %i.jl = mul nuw <8 x i64> %i.jk, %i.jj
  %i.jm = add <8 x i64> %i.jc, %i.ii
  %i.jn = shl <8 x i64> %i.jl, splat (i64 1)
  %i.jo = add <8 x i64> %i.jm, %i.jn              ; 2 uses
  %i.jp = xor <8 x i64> %i.ji, %i.il              ; 2 uses
  %i.jq = xor <8 x i64> %i.jo, %i.im              ; 2 uses
  %i.jr = call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.jp, <8 x i64> %i.jp, <8 x i64> splat (i64 1))
  %i.js = call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.jq, <8 x i64> %i.jq, <8 x i64> splat (i64 1))
  %i.jt = shufflevector <8 x i64> %i.jr, <8 x i64> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 3 uses
  %i.ju = shufflevector <8 x i64> %i.js, <8 x i64> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 3 uses
  %i.jv = shufflevector <8 x i64> %i.ji, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.jw = shufflevector <8 x i64> %i.jo, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.jx = shufflevector <8 x i64> %i.jb, <8 x i64> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.jy = shufflevector <8 x i64> %i.jc, <8 x i64> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.jz = and <8 x i64> %i.is, splat (i64 4294967295)
  %i.ka = and <8 x i64> %i.jt, splat (i64 4294967295)
  %i.kb = mul nuw <8 x i64> %i.ka, %i.jz
  %i.kc = add <8 x i64> %i.jt, %i.is
  %i.kd = shl <8 x i64> %i.kb, splat (i64 1)
  %i.ke = add <8 x i64> %i.kc, %i.kd              ; 3 uses
  %i.kf = and <8 x i64> %i.iy, splat (i64 4294967295)
  %i.kg = and <8 x i64> %i.ju, splat (i64 4294967295)
end_hunk_0
begin_hunk_1_@fill_block_with_xor:.preheader924.preheader
  %i.md = mul nuw <8 x i64> %i.mc, %i.mb
  %i.me = add <8 x i64> %i.lu, %i.la
  %i.mf = shl <8 x i64> %i.md, splat (i64 1)
  %i.mg = add <8 x i64> %i.me, %i.mf              ; 3 uses
  %i.mh = xor <8 x i64> %i.ma, %i.ld              ; 2 uses
  %i.mi = xor <8 x i64> %i.mg, %i.le              ; 2 uses
  %i.mj = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.mh, <8 x i64> %i.mh, <8 x i64> splat (i64 48)) ; 3 uses
  %i.mk = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.mi, <8 x i64> %i.mi, <8 x i64> splat (i64 48)) ; 3 uses
  %i.ml = and <8 x i64> %i.lk, splat (i64 4294967295)
  %i.mm = and <8 x i64> %i.mj, splat (i64 4294967295)
  %i.mn = mul nuw <8 x i64> %i.mm, %i.ml
  %i.mo = add <8 x i64> %i.mj, %i.lk
  %i.mp = shl <8 x i64> %i.mn, splat (i64 1)
  %i.mq = add <8 x i64> %i.mo, %i.mp              ; 2 uses
  %i.mr = and <8 x i64> %i.lq, splat (i64 4294967295)
  %i.ms = and <8 x i64> %i.mk, splat (i64 4294967295)
  %i.mt = mul nuw <8 x i64> %i.ms, %i.mr
  %i.mu = add <8 x i64> %i.mk, %i.lq
  %i.mv = shl <8 x i64> %i.mt, splat (i64 1)
  %i.mw = add <8 x i64> %i.mu, %i.mv              ; 2 uses
  %i.mx = xor <8 x i64> %i.mq, %i.lt              ; 2 uses
  %i.my = xor <8 x i64> %i.mw, %i.lu              ; 2 uses
  %i.mz = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.mx, <8 x i64> %i.mx, <8 x i64> splat (i64 1))
  %i.na = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.my, <8 x i64> %i.my, <8 x i64> splat (i64 1))
  %i.nb = shufflevector <8 x i64> %i.mz, <8 x i64> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 3 uses
  %i.nc = shufflevector <8 x i64> %i.na, <8 x i64> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 3 uses
  %i.nd = shufflevector <8 x i64> %i.mq, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.ne = shufflevector <8 x i64> %i.mw, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.nf = shufflevector <8 x i64> %i.mj, <8 x i64> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ng = shufflevector <8 x i64> %i.mk, <8 x i64> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.nh = and <8 x i64> %i.ma, splat (i64 4294967295)
  %i.ni = and <8 x i64> %i.nb, splat (i64 4294967295)
  %i.nj = mul nuw <8 x i64> %i.ni, %i.nh
  %i.nk = add <8 x i64> %i.nb, %i.ma
  %i.nl = shl <8 x i64> %i.nj, splat (i64 1)
  %i.nm = add <8 x i64> %i.nk, %i.nl              ; 3 uses
  %i.nn = and <8 x i64> %i.mg, splat (i64 4294967295)
  %i.no = and <8 x i64> %i.nc, splat (i64 4294967295)
  %i.np = mul nuw <8 x i64> %i.no, %i.nn
  %i.nq = add <8 x i64> %i.nc, %i.mg
  %i.nr = shl <8 x i64> %i.np, splat (i64 1)
  %i.ns = add <8 x i64> %i.nq, %i.nr              ; 3 uses
  %i.nt = xor <8 x i64> %i.nm, %i.nf              ; 2 uses
  %i.nu = xor <8 x i64> %i.ns, %i.ng              ; 2 uses
  %i.nv = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.nt, <8 x i64> %i.nt, <8 x i64> splat (i64 32)) ; 3 uses
  %i.nw = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.nu, <8 x i64> %i.nu, <8 x i64> splat (i64 32)) ; 3 uses
  %i.nx = and <8 x i64> %i.nd, splat (i64 4294967295)
  %i.ny = and <8 x i64> %i.nv, splat (i64 4294967295)
  %i.nz = mul nuw <8 x i64> %i.ny, %i.nx
  %i.oa = add <8 x i64> %i.nv, %i.nd
  %i.ob = shl <8 x i64> %i.nz, splat (i64 1)
  %i.oc = add <8 x i64> %i.oa, %i.ob              ; 3 uses
  %i.od = and <8 x i64> %i.ne, splat (i64 4294967295)
  %i.oe = and <8 x i64> %i.nw, splat (i64 4294967295)
  %i.of = mul nuw <8 x i64> %i.oe, %i.od
  %i.og = add <8 x i64> %i.nw, %i.ne
  %i.oh = shl <8 x i64> %i.of, splat (i64 1)
  %i.oi = add <8 x i64> %i.og, %i.oh              ; 3 uses
  %i.oj = xor <8 x i64> %i.oc, %i.nb              ; 2 uses
  %i.ok = xor <8 x i64> %i.oi, %i.nc              ; 2 uses
  %i.ol = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.oj, <8 x i64> %i.oj, <8 x i64> splat (i64 40)) ; 3 uses
  %i.om = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.ok, <8 x i64> %i.ok, <8 x i64> splat (i64 40)) ; 3 uses
  %i.on = and <8 x i64> %i.nm, splat (i64 4294967295)
  %i.oo = and <8 x i64> %i.ol, splat (i64 4294967295)
  %i.op = mul nuw <8 x i64> %i.oo, %i.on
  %i.oq = add <8 x i64> %i.ol, %i.nm
  %i.or = shl <8 x i64> %i.op, splat (i64 1)
  %i.os = add <8 x i64> %i.oq, %i.or              ; 3 uses
  %i.ot = and <8 x i64> %i.ns, splat (i64 4294967295)
  %i.ou = and <8 x i64> %i.om, splat (i64 4294967295)
  %i.ov = mul nuw <8 x i64> %i.ou, %i.ot
  %i.ow = add <8 x i64> %i.om, %i.ns
  %i.ox = shl <8 x i64> %i.ov, splat (i64 1)
  %i.oy = add <8 x i64> %i.ow, %i.ox              ; 3 uses
  %i.oz = xor <8 x i64> %i.os, %i.nv              ; 2 uses
  %i.pa = xor <8 x i64> %i.oy, %i.nw              ; 2 uses
  %i.pb = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.oz, <8 x i64> %i.oz, <8 x i64> splat (i64 48)) ; 4 uses
  %i.pc = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.pa, <8 x i64> %i.pa, <8 x i64> splat (i64 48)) ; 4 uses
  %i.pd = and <8 x i64> %i.oc, splat (i64 4294967295)
  %i.pe = and <8 x i64> %i.pb, splat (i64 4294967295)
  %i.pf = mul nuw <8 x i64> %i.pe, %i.pd
  %i.pg = add <8 x i64> %i.pb, %i.oc
  %i.ph = shl <8 x i64> %i.pf, splat (i64 1)
  %i.pi = add <8 x i64> %i.pg, %i.ph              ; 3 uses
  %i.pj = and <8 x i64> %i.oi, splat (i64 4294967295)
  %i.pk = and <8 x i64> %i.pc, splat (i64 4294967295)
  %i.pl = mul nuw <8 x i64> %i.pk, %i.pj
  %i.pm = add <8 x i64> %i.pc, %i.oi
  %i.pn = shl <8 x i64> %i.pl, splat (i64 1)
  %i.po = add <8 x i64> %i.pm, %i.pn              ; 3 uses
  %i.pp = xor <8 x i64> %i.pi, %i.ol              ; 2 uses
  %i.pq = xor <8 x i64> %i.po, %i.om              ; 2 uses
  %i.pr = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.pp, <8 x i64> %i.pp, <8 x i64> splat (i64 1)) ; 2 uses
  %i.ps = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.pq, <8 x i64> %i.pq, <8 x i64> splat (i64 1)) ; 2 uses
  %i.pt = shufflevector <8 x i64> %i.os, <8 x i64> %i.oy, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.pu = shufflevector <8 x i64> %i.os, <8 x i64> %i.oy, <8 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15>
  store <8 x i64> %i.pt, ptr %i.jr, align 64
  store <8 x i64> %i.pu, ptr %i.jt, align 64
  %i.pv = shufflevector <8 x i64> %i.pr, <8 x i64> %i.ps, <8 x i32> <i32 3, i32 0, i32 7, i32 4, i32 11, i32 8, i32 15, i32 12>
  %i.pw = shufflevector <8 x i64> %i.pr, <8 x i64> %i.ps, <8 x i32> <i32 1, i32 2, i32 5, i32 6, i32 9, i32 10, i32 13, i32 14>
  store <8 x i64> %i.pv, ptr %i.jx, align 64
  store <8 x i64> %i.pw, ptr %i.jz, align 64
  %i.px = shufflevector <8 x i64> %i.pi, <8 x i64> %i.po, <8 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15>
  %i.py = shufflevector <8 x i64> %i.pi, <8 x i64> %i.po, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  store <8 x i64> %i.px, ptr %i.kd, align 64
  store <8 x i64> %i.py, ptr %i.kf, align 64
  %i.pz = shufflevector <8 x i64> %i.pb, <8 x i64> %i.pc, <8 x i32> <i32 1, i32 2, i32 5, i32 6, i32 9, i32 10, i32 13, i32 14>
  %i.qa = shufflevector <8 x i64> %i.pb, <8 x i64> %i.pc, <8 x i32> <i32 3, i32 0, i32 7, i32 4, i32 11, i32 8, i32 15, i32 12>
  store <8 x i64> %i.pz, ptr %i.kj, align 64
  store <8 x i64> %i.qa, ptr %i.kl, align 64
  br i1 %i.jq, label %.preheader923, label %.preheader.preheader, !llvm.loop !10

.preheader.preheader:                             ; preds = %.preheader923
  %i.qb = load <8 x i64>, ptr %0, align 64
  %i.qc = xor <8 x i64> %i.d, %i.qb
  %i.qd = xor <8 x i64> %i.qc, %i.c               ; 2 uses
  store <8 x i64> %i.qd, ptr %0, align 64
  store <8 x i64> %i.qd, ptr %2, align 1
  %i.qe = load <8 x i64>, ptr %i.e, align 64
  %i.qf = xor <8 x i64> %i.k, %i.qe
  %i.qg = xor <8 x i64> %i.qf, %i.i               ; 2 uses
  store <8 x i64> %i.qg, ptr %i.e, align 64
  store <8 x i64> %i.qg, ptr %i.j, align 1
  %i.qh = load <8 x i64>, ptr %i.l, align 64
  %i.qi = xor <8 x i64> %i.r, %i.qh
  %i.qj = xor <8 x i64> %i.qi, %i.p               ; 2 uses
  store <8 x i64> %i.qj, ptr %i.l, align 64
  store <8 x i64> %i.qj, ptr %i.q, align 1
  %i.qk = load <8 x i64>, ptr %i.s, align 64
  %i.ql = xor <8 x i64> %i.y, %i.qk
  %i.qm = xor <8 x i64> %i.ql, %i.w               ; 2 uses
  store <8 x i64> %i.qm, ptr %i.s, align 64
  store <8 x i64> %i.qm, ptr %i.x, align 1
  %i.qn = load <8 x i64>, ptr %i.z, align 64
  %i.qo = xor <8 x i64> %i.af, %i.qn
  %i.qp = xor <8 x i64> %i.qo, %i.ad              ; 2 uses
  store <8 x i64> %i.qp, ptr %i.z, align 64
  store <8 x i64> %i.qp, ptr %i.ae, align 1
  %i.qq = load <8 x i64>, ptr %i.ag, align 64
  %i.qr = xor <8 x i64> %i.am, %i.qq
  %i.qs = xor <8 x i64> %i.qr, %i.ak              ; 2 uses
  store <8 x i64> %i.qs, ptr %i.ag, align 64
  store <8 x i64> %i.qs, ptr %i.al, align 1
  %i.qt = load <8 x i64>, ptr %i.an, align 64
  %i.qu = xor <8 x i64> %i.at, %i.qt
  %i.qv = xor <8 x i64> %i.qu, %i.ar              ; 2 uses
  store <8 x i64> %i.qv, ptr %i.an, align 64
  store <8 x i64> %i.qv, ptr %i.as, align 1
  %i.qw = load <8 x i64>, ptr %i.au, align 64
  %i.qx = xor <8 x i64> %i.ba, %i.qw
  %i.qy = xor <8 x i64> %i.qx, %i.ay              ; 2 uses
  store <8 x i64> %i.qy, ptr %i.au, align 64
  store <8 x i64> %i.qy, ptr %i.az, align 1
  %i.qz = load <8 x i64>, ptr %i.bb, align 64
  %i.ra = xor <8 x i64> %i.bh, %i.qz
  %i.rb = xor <8 x i64> %i.ra, %i.bf              ; 2 uses
  store <8 x i64> %i.rb, ptr %i.bb, align 64
  store <8 x i64> %i.rb, ptr %i.bg, align 1
  %i.rc = load <8 x i64>, ptr %i.bi, align 64
  %i.rd = xor <8 x i64> %i.bo, %i.rc
  %i.re = xor <8 x i64> %i.rd, %i.bm              ; 2 uses
  store <8 x i64> %i.re, ptr %i.bi, align 64
  store <8 x i64> %i.re, ptr %i.bn, align 1
  %i.rf = load <8 x i64>, ptr %i.bp, align 64
  %i.rg = xor <8 x i64> %i.bv, %i.rf
  %i.rh = xor <8 x i64> %i.rg, %i.bt              ; 2 uses
  store <8 x i64> %i.rh, ptr %i.bp, align 64
  store <8 x i64> %i.rh, ptr %i.bu, align 1
  %i.ri = load <8 x i64>, ptr %i.bw, align 64
  %i.rj = xor <8 x i64> %i.cc, %i.ri
  %i.rk = xor <8 x i64> %i.rj, %i.ca              ; 2 uses
  store <8 x i64> %i.rk, ptr %i.bw, align 64
  store <8 x i64> %i.rk, ptr %i.cb, align 1
  %i.rl = load <8 x i64>, ptr %i.cd, align 64
  %i.rm = xor <8 x i64> %i.cj, %i.rl
  %i.rn = xor <8 x i64> %i.rm, %i.ch              ; 2 uses
  store <8 x i64> %i.rn, ptr %i.cd, align 64
  store <8 x i64> %i.rn, ptr %i.ci, align 1
  %i.ro = load <8 x i64>, ptr %i.ck, align 64
  %i.rp = xor <8 x i64> %i.cq, %i.ro
  %i.rq = xor <8 x i64> %i.rp, %i.co              ; 2 uses
  store <8 x i64> %i.rq, ptr %i.ck, align 64
  store <8 x i64> %i.rq, ptr %i.cp, align 1
  %i.rr = load <8 x i64>, ptr %i.cr, align 64
  %i.rs = xor <8 x i64> %i.cx, %i.rr
  %i.rt = xor <8 x i64> %i.rs, %i.cv              ; 2 uses
  store <8 x i64> %i.rt, ptr %i.cr, align 64
  store <8 x i64> %i.rt, ptr %i.cw, align 1
  %i.ru = load <8 x i64>, ptr %i.cy, align 64
  %i.rv = xor <8 x i64> %i.de, %i.ru
  %i.rw = xor <8 x i64> %i.rv, %i.dc              ; 2 uses
  store <8 x i64> %i.rw, ptr %i.cy, align 64
  store <8 x i64> %i.rw, ptr %i.dd, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.fshl.v8i64(<8 x i64>, <8 x i64>, <8 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind ssp memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
end_hunk_1
