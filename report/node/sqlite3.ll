Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@walIndexReadHdr:bb.a
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %walLockExclusive.exit.thread, label %walUnlockShared.exit.thread88

walLockExclusive.exit.thread:                     ; preds = %bb.j, %walLockExclusive.exit
  store i8 2, ptr %i.al, align 8, !tbaa !1977
  br label %.critedge59

.critedge59:                                      ; preds = %bb.i, %walLockExclusive.exit.thread
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !2185
  %.not.i65 = icmp sgt i32 %i.aw, 0
  br i1 %.not.i65, label %bb.k, label %walIndexPage.exit67

bb.k:                                             ; preds = %.critedge59
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1978
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !350 ; 2 uses
  store ptr %i.az, ptr %i.f, align 8, !tbaa !350
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %walIndexPage.exit67, label %walIndexPage.exit67.thread

walIndexPage.exit67:                              ; preds = %.critedge59, %bb.k
  %i.bb = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.f) ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %walIndexPage.exit67.thread, label %bb.ak

walIndexPage.exit67.thread:                       ; preds = %bb.k, %walIndexPage.exit67
  %i.bd = tail call fastcc i32 @walIndexTryHdr(ptr noundef nonnull %0, ptr noundef %1)
  %.not54 = icmp eq i32 %i.bd, 0
  br i1 %.not54, label %bb.ak, label %bb.l

bb.l:                                             ; preds = %walIndexPage.exit67.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !2238
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.bi = sub nsw i32 2, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 11 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i, label %walLockExclusive.exit.i, label %walLockExclusive.exit.thread.i

walLockExclusive.exit.i:                          ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1973 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !475
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1523
  %i.bq = tail call i32 %i.bp(ptr noundef nonnull %i.bm, i32 noundef range(i32 -2147483645, 257) %i.bh, i32 noundef range(i32 -253, 5) %i.bi, i32 noundef 10) #59, !inline_history !2239 ; 2 uses
  %.not.i68 = icmp eq i32 %i.bq, 0
  br i1 %.not.i68, label %walLockExclusive.exit.thread.i, label %walIndexRecover.exit

walLockExclusive.exit.thread.i:                   ; preds = %walLockExclusive.exit.i, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i8 0, i64 48, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !2194 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !475
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !686
  %i.bx = call i32 %i.bw(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a) #59, !inline_history !2240 ; 2 uses
  %.not144.i = icmp eq i32 %i.bx, 0
  br i1 %.not144.i, label %bb.m, label %.loopexit.i

bb.m:                                             ; preds = %walLockExclusive.exit.thread.i
  %i.by = load i64, ptr %i.a, align 8, !tbaa !19
  %i.bz = icmp sgt i64 %i.by, 32
  br i1 %i.bz, label %bb.n, label %.thread189.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !2194 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !475
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1435
  %i.ce = call i32 %i.cd(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.b, i32 noundef 32, i64 noundef 0) #59, !inline_history !2241 ; 2 uses
  %.not145.i = icmp eq i32 %i.ce, 0
  br i1 %.not145.i, label %bb.o, label %sqlite3_malloc64.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !229
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw i32 %i.ci, 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !229
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = or disjoint i32 %i.cn, %i.cj            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !229
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 8                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !229
  %i.cv = zext i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.co, %i.cv
  %i.cx = or disjoint i32 %i.cw, %i.cs            ; 5 uses
  %i.cy = load <4 x i8>, ptr %i.b, align 16, !tbaa !229
  %i.cz = load i8, ptr %i.cf, align 1, !tbaa !229
  %i.da = and <4 x i8> %i.cy, <i8 -1, i8 -1, i8 -1, i8 -2>
  %i.db = bitcast <4 x i8> %i.da to i32
  %.not146.i = icmp eq i32 %i.db, -2113503433
  br i1 %.not146.i, label %bb.p, label %.thread196.i

bb.p:                                             ; preds = %bb.o
  %i.dc = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cx)
  %i.dd = icmp samesign ugt i32 %i.dc, 1
  %i.de = add i32 %i.cx, -65537
  %i.df = icmp ult i32 %i.de, -65025
  %or.cond3.i = or i1 %i.dd, %i.df
  br i1 %or.cond3.i, label %.thread196.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = and i8 %i.cz, 1                         ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 85
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !2242
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.cx, ptr %i.di, align 8, !tbaa !2223
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.dk = load i8, ptr %i.dj, align 4, !tbaa !229
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw i32 %i.dl, 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !229
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 16
  %i.dr = or disjoint i32 %i.dq, %i.dm
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !229
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 8
  %i.dw = or disjoint i32 %i.dr, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !229
  %i.dz = zext i8 %i.dy to i32
  %i.ea = or disjoint i32 %i.dw, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !2209
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ee = load i64, ptr %i.ed, align 16
  store i64 %i.ee, ptr %i.ec, align 8
  %i.ef = xor i8 %i.dg, 1
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call fastcc void @walChecksumBytes(i32 noundef %i.eg, ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef null, ptr noundef nonnull %i.eh), !inline_history !2243
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = call i32 @llvm.bswap.i32(i32 %i.ek)
  %.not147.i = icmp eq i32 %i.ei, %i.el
  br i1 %.not147.i, label %bb.r, label %.thread196.i

bb.r:                                             ; preds = %bb.q
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.en = load i32, ptr %i.em, align 4, !tbaa !24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = call i32 @llvm.bswap.i32(i32 %i.ep)
  %.not148.i = icmp eq i32 %i.en, %i.eq
  br i1 %.not148.i, label %bb.s, label %.thread196.i

bb.s:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.es = load i32, ptr %i.er, align 4
  %.not149.i = icmp eq i32 %i.es, 417475840
  br i1 %.not149.i, label %bb.t, label %.thread200.i

.thread200.i:                                     ; preds = %bb.s
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 14, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i32 noundef 68367, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !2243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %.loopexit.i

bb.t:                                             ; preds = %bb.s
  %i.et = add nuw nsw i32 %i.cx, 24               ; 2 uses
  %i.eu = zext nneg i32 %i.et to i64              ; 3 uses
  %i.ev = call i32 @sqlite3_initialize(), !inline_history !2244
  %.not.i161.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i161.i, label %sqlite3_malloc64.exit.i, label %sqlite3_malloc64.exit.thread.i

sqlite3_malloc64.exit.i:                          ; preds = %bb.t
  %i.ew = add nuw nsw i64 %i.eu, 32768
  %i.ex = call fastcc ptr @sqlite3Malloc(i64 noundef %i.ew), !inline_history !2244 ; 5 uses
  %.not150.i = icmp eq ptr %i.ex, null
  br i1 %.not150.i, label %sqlite3_malloc64.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %sqlite3_malloc64.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 2 uses
  %i.ez = zext nneg i32 %i.cx to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez ; 3 uses
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !19
  %i.fc = add nsw i64 %i.fb, -32
  %i.fd = sdiv i64 %i.fc, %i.eu                   ; 2 uses
  %i.fe = add nsw i64 %i.fd, 4096
  %i.ff = and i64 %i.fe, 4294967295
  %i.fg = add nuw nsw i64 %i.ff, 17592186040353
  %i.fh = lshr i64 %i.fg, 12
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = and i64 %i.fd, 4294967295
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fn = lshr exact i32 %i.co, 16
  %i.fo = or disjoint i32 %i.fn, %i.cs
  %i.fp = trunc nuw i32 %i.fo to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 86
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %bb.u
  %.0124237.i = phi i32 [ 0, %bb.u ], [ %i.hh, %._crit_edge.i ] ; 5 uses
  %i.fr = phi <2 x i32> [ zeroinitializer, %bb.u ], [ %i.hb, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  %2 = shl i32 %.0124237.i, 12                    ; 2 uses
  %3 = or disjoint i32 %2, 4062
  %4 = zext i32 %3 to i64
  %5 = call i64 @llvm.umin.i64(i64 %i.fj, i64 %4) ; 2 uses
  %i.fs = icmp eq i32 %.0124237.i, 0              ; 3 uses
  %i.ft = call fastcc i32 @walIndexPage(ptr noundef nonnull %0, i32 noundef %.0124237.i, ptr noundef %i.c), !inline_history !2243 ; 2 uses
  %i.fu = load ptr, ptr %i.c, align 8, !tbaa !350 ; 5 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %.thread178.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fw = trunc nuw i64 %5 to i32
  %i.fx = add i32 %2, -33
  %i.fy = select i1 %i.fs, i32 1, i32 %i.fx       ; 2 uses
  %i.fz = load ptr, ptr %i.fk, align 8, !tbaa !1978 ; 2 uses
  %i.ga = zext i32 %.0124237.i to i64             ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ga
  store ptr %i.fa, ptr %i.gb, align 8, !tbaa !350
  %.not152229.i = icmp ugt i32 %i.fy, %i.fw
  br i1 %.not152229.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.w
  %i.gc = zext i32 %i.fy to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.gc, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ab ] ; 4 uses
  %i.gd = phi <2 x i32> [ %i.fr, %.lr.ph.preheader.i ], [ %i.gs, %bb.ab ] ; 2 uses
  %i.ge = add nsw i64 %indvars.iv.i, -1
  %i.gf = mul nuw nsw i64 %i.ge, %i.eu
  %i.gg = add nuw nsw i64 %i.gf, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  %i.gh = load ptr, ptr %i.bs, align 8, !tbaa !2194 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !475
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1435
  %i.gl = call i32 %i.gk(ptr noundef nonnull %i.gh, ptr noundef nonnull %i.ex, i32 noundef %i.et, i64 noundef %i.gg) #59, !inline_history !2241 ; 2 uses
  %.not153.i = icmp eq i32 %i.gl, 0
  br i1 %.not153.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %.lr.ph.i
  %i.gm = call fastcc i32 @walDecodeFrame(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.ey, ptr noundef %i.ex), !inline_history !2243
  %.not154.i = icmp eq i32 %i.gm, 0
  br i1 %.not154.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gn = load i32, ptr %i.d, align 4, !tbaa !24
  %i.go = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.gp = call fastcc i32 @walIndexAppend(ptr noundef nonnull %0, i32 noundef %i.go, i32 noundef %i.gn), !inline_history !2243 ; 2 uses
  %.not155.i = icmp eq i32 %i.gp, 0
  br i1 %.not155.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gq = load i32, ptr %i.e, align 4, !tbaa !24  ; 2 uses
  %.not156.i = icmp eq i32 %i.gq, 0
  br i1 %.not156.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %i.go, ptr %i.fl, align 8, !tbaa !2182
  store i32 %i.gq, ptr %i.fm, align 4, !tbaa !2019
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !2195
  %i.gr = load <2 x i32>, ptr %i.eh, align 8, !tbaa !24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gs = phi <2 x i32> [ %i.gd, %bb.z ], [ %i.gr, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not152.not.i = icmp samesign ult i64 %indvars.iv.i, %5
  br i1 %.not152.not.i, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !2245

bb.ac:                                            ; preds = %bb.y, %bb.x, %.lr.ph.i
  %.2128.ph.i = phi i32 [ %i.gp, %bb.y ], [ 0, %bb.x ], [ %i.gl, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  %i.gt = load ptr, ptr %i.fk, align 8, !tbaa !1978
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.ga
  store ptr %i.fu, ptr %i.gu, align 8, !tbaa !350
  %i.gv = select i1 %i.fs, i64 136, i64 0         ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.gv
  %i.gy = sub nuw nsw i64 32768, %i.gv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gw, ptr noundef nonnull align 4 dereferenceable(1) %i.gx, i64 %i.gy, i1 false)
  br label %.thread178.i

.thread178.i:                                     ; preds = %bb.v, %bb.ac
  %.4.ph.i = phi i32 [ %.2128.ph.i, %bb.ac ], [ %i.ft, %bb.v ]
  %i.gz = phi <2 x i32> [ %i.gd, %bb.ac ], [ %i.fr, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %.loopexit210.i

._crit_edge.loopexit.i:                           ; preds = %bb.ab
  %.pre.i = load ptr, ptr %i.fk, align 8, !tbaa !1978
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.w
  %i.ha = phi ptr [ %i.fz, %bb.w ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.1127.lcssa.i = phi i32 [ %i.ft, %bb.w ], [ 0, %._crit_edge.loopexit.i ]
  %i.hb = phi <2 x i32> [ %i.fr, %bb.w ], [ %i.gs, %._crit_edge.loopexit.i ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.ga
  store ptr %i.fu, ptr %i.hc, align 8, !tbaa !350
  %i.hd = select i1 %i.fs, i64 136, i64 0         ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.hd
  %i.hg = sub nuw nsw i64 32768, %i.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.he, ptr noundef nonnull align 4 dereferenceable(1) %i.hf, i64 %i.hg, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  %i.hh = add i32 %.0124237.i, 1                  ; 2 uses
  %.not151.i = icmp ugt i32 %i.hh, %i.fi
  br i1 %.not151.i, label %.loopexit210.i, label %bb.v, !llvm.loop !2246

sqlite3_malloc64.exit.thread.i:                   ; preds = %sqlite3_malloc64.exit.i, %bb.t, %bb.n
  %.6.i = phi i32 [ 7, %sqlite3_malloc64.exit.i ], [ %i.ce, %bb.n ], [ 7, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %.loopexit.i

.thread196.i:                                     ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %.thread189.i

.loopexit210.i:                                   ; preds = %._crit_edge.i, %.thread178.i
  %.5.i = phi i32 [ %.4.ph.i, %.thread178.i ], [ %.1127.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.hi = phi <2 x i32> [ %i.gz, %.thread178.i ], [ %i.hb, %._crit_edge.i ]
  call void @sqlite3_free(ptr noundef nonnull %i.ex), !inline_history !2243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %i.hj = icmp eq i32 %.5.i, 0
  br i1 %i.hj, label %.thread189.i, label %.loopexit.i

.thread189.i:                                     ; preds = %.loopexit210.i, %.thread196.i, %bb.m
  %i.hk = phi <2 x i32> [ zeroinitializer, %.thread196.i ], [ %i.hi, %.loopexit210.i ], [ zeroinitializer, %bb.m ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i32> %i.hk, ptr %i.hl, align 8, !tbaa !24
  %i.hm = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val.i.i = load ptr, ptr %i.hm, align 8, !tbaa !1978
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !350 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i8 1, ptr %i.hn, align 4, !tbaa !2247
  store i32 3007000, ptr %i.br, align 8, !tbaa !2248
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !24 ; 2 uses
  %i.hq = add i32 %i.hp, 3007000
  %.2.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hr = load i32, ptr %.2.i.ptr.1.i.i, align 8, !tbaa !24
  %i.hs = add i32 %i.hp, 6014000
  %i.ht = add i32 %i.hs, %i.hr                    ; 2 uses
  %i.hu = load i32, ptr %i.hn, align 4, !tbaa !24
  %i.hv = add i32 %i.hq, %i.hu
  %i.hw = add i32 %i.hv, %i.ht                    ; 2 uses
  %.2.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.hy = load i32, ptr %.2.i.ptr.2.i.i, align 8, !tbaa !24
  %i.hz = add i32 %i.hy, %i.ht
  %i.ia = add i32 %i.hz, %i.hw                    ; 2 uses
  %i.ib = load i32, ptr %i.hx, align 4, !tbaa !24
  %i.ic = add i32 %i.ib, %i.hw
  %i.id = add i32 %i.ic, %i.ia                    ; 2 uses
  %i.ie = extractelement <2 x i32> %i.hk, i64 0
  %i.if = add i32 %i.ia, %i.ie
  %i.ig = add i32 %i.if, %i.id                    ; 2 uses
  %i.ih = extractelement <2 x i32> %i.hk, i64 1
  %i.ii = add i32 %i.id, %i.ih
  %i.ij = add i32 %i.ii, %i.ig                    ; 2 uses
  %.2.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.il = load i32, ptr %.2.i.ptr.4.i.i, align 8, !tbaa !24
  %i.im = add i32 %i.ig, %i.il
  %i.in = add i32 %i.im, %i.ij                    ; 2 uses
  %i.io = load i32, ptr %i.ik, align 4, !tbaa !24
  %i.ip = add i32 %i.ij, %i.io
  %i.iq = add i32 %i.ip, %i.in
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.in, ptr %i.ir, align 8, !tbaa !24
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.iq, ptr %i.is, align 4, !tbaa !24
  %i.it = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.it, ptr noundef nonnull align 8 dereferenceable(48) %i.br, i64 48, i1 false)
  %i.iu = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i.i.i = icmp eq i8 %i.iu, 2
  br i1 %.not.i.i.i, label %walIndexWriteHdr.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.thread189.i
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !1973 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !475
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 120
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !2234
  call void %i.iz(ptr noundef nonnull %i.iw) #59, !inline_history !2249
  br label %walIndexWriteHdr.exit.i

walIndexWriteHdr.exit.i:                          ; preds = %bb.ad, %.thread189.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.val.val.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.br, i64 48, i1 false)
  %.val.i = load ptr, ptr %i.hm, align 8, !tbaa !1978
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !350 ; 7 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 96
  store volatile i32 0, ptr %i.ja, align 4, !tbaa !2250
  %i.jb = load i32, ptr %.2.i.ptr.2.i.i, align 8, !tbaa !2182
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 128
  store volatile i32 %i.jb, ptr %i.jc, align 4, !tbaa !2252
  %i.jd = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 100
  store volatile i32 0, ptr %i.jd, align 4, !tbaa !24
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 104
  %i.jg = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i163.i = icmp eq i8 %i.jg, 0
  br i1 %.not.i163.i, label %walLockExclusive.exit165.i, label %walLockExclusive.exit165.thread.i

walLockExclusive.exit165.i:                       ; preds = %walIndexWriteHdr.exit.i
  %i.jh = load ptr, ptr %i.je, align 8, !tbaa !1973 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !475
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 112
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !1523
  %i.jl = call i32 %i.jk(ptr noundef nonnull %i.jh, i32 noundef range(i32 -2147483645, 257) 4, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !2239 ; 2 uses
  switch i32 %i.jl, label %.loopexit.i [
    i32 0, label %walLockExclusive.exit165.thread.i
    i32 5, label %walUnlockExclusive.exit.i
  ]

walLockExclusive.exit165.thread.i:                ; preds = %walLockExclusive.exit165.i, %walIndexWriteHdr.exit.i
  %i.jm = load i32, ptr %.2.i.ptr.2.i.i, align 8, !tbaa !2182 ; 2 uses
  %.not159.i = icmp eq i32 %i.jm, 0
  %. = select i1 %.not159.i, i32 -1, i32 %i.jm
  store volatile i32 %., ptr %i.jf, align 4, !tbaa !24
  %i.jn = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i166.i = icmp eq i8 %i.jn, 0
  br i1 %.not.i166.i, label %bb.ae, label %walUnlockExclusive.exit.thread.i

bb.ae:                                            ; preds = %walLockExclusive.exit165.thread.i
  %i.jo = load ptr, ptr %i.je, align 8, !tbaa !1973 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !475
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 112
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !1523
  %i.js = call i32 %i.jr(ptr noundef nonnull %i.jo, i32 noundef range(i32 -2147483645, 257) 4, i32 noundef range(i32 -253, 5) 1, i32 noundef 9) #59, !inline_history !2253 ; 0 uses
  br label %walUnlockExclusive.exit.i

walUnlockExclusive.exit.i:                        ; preds = %bb.ae, %walLockExclusive.exit165.i
  %.pr.i = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i163.1.i = icmp eq i8 %.pr.i, 0
  br i1 %.not.i163.1.i, label %walLockExclusive.exit165.1.i, label %walUnlockExclusive.exit.thread.i

walLockExclusive.exit165.1.i:                     ; preds = %walUnlockExclusive.exit.i
  %i.jt = load ptr, ptr %i.je, align 8, !tbaa !1973 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !475
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 112
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !1523
  %i.jx = call i32 %i.jw(ptr noundef nonnull %i.jt, i32 noundef range(i32 -2147483645, 257) 5, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !2239 ; 2 uses
  switch i32 %i.jx, label %.loopexit.i [
    i32 0, label %walUnlockExclusive.exit.thread.i
    i32 5, label %walUnlockExclusive.exit.1.i
  ]

walUnlockExclusive.exit.thread.i:                 ; preds = %walLockExclusive.exit165.1.i, %walUnlockExclusive.exit.i, %walLockExclusive.exit165.thread.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 108
  store volatile i32 -1, ptr %i.jy, align 4, !tbaa !24
  %i.jz = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i166.1.i = icmp eq i8 %i.jz, 0
  br i1 %.not.i166.1.i, label %bb.af, label %walUnlockExclusive.exit.1.thread.i

bb.af:                                            ; preds = %walUnlockExclusive.exit.thread.i
  %i.ka = load ptr, ptr %i.je, align 8, !tbaa !1973 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !475
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 112
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !1523
  %i.ke = call i32 %i.kd(ptr noundef nonnull %i.ka, i32 noundef range(i32 -2147483645, 257) 5, i32 noundef range(i32 -253, 5) 1, i32 noundef 9) #59, !inline_history !2253 ; 0 uses
  br label %walUnlockExclusive.exit.1.i

walUnlockExclusive.exit.1.i:                      ; preds = %bb.af, %walLockExclusive.exit165.1.i
  %.pr281.i = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i163.2.i = icmp eq i8 %.pr281.i, 0
  br i1 %.not.i163.2.i, label %walLockExclusive.exit165.2.i, label %walUnlockExclusive.exit.1.thread.i

walLockExclusive.exit165.2.i:                     ; preds = %walUnlockExclusive.exit.1.i
  %i.kf = load ptr, ptr %i.je, align 8, !tbaa !1973 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !475
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 112
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !1523
  %i.kj = call i32 %i.ki(ptr noundef nonnull %i.kf, i32 noundef range(i32 -2147483645, 257) 6, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !2239 ; 2 uses
  switch i32 %i.kj, label %.loopexit.i [
    i32 0, label %walUnlockExclusive.exit.1.thread.i
    i32 5, label %walUnlockExclusive.exit.2.i
  ]

walUnlockExclusive.exit.1.thread.i:               ; preds = %walLockExclusive.exit165.2.i, %walUnlockExclusive.exit.1.i, %walUnlockExclusive.exit.thread.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  store volatile i32 -1, ptr %i.kk, align 4, !tbaa !24
  %i.kl = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i166.2.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i166.2.i, label %bb.ag, label %walUnlockExclusive.exit.2.thread.i

bb.ag:                                            ; preds = %walUnlockExclusive.exit.1.thread.i
  %i.km = load ptr, ptr %i.je, align 8, !tbaa !1973 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !475
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 112
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !1523
  %i.kq = call i32 %i.kp(ptr noundef nonnull %i.km, i32 noundef range(i32 -2147483645, 257) 6, i32 noundef range(i32 -253, 5) 1, i32 noundef 9) #59, !inline_history !2253 ; 0 uses
  br label %walUnlockExclusive.exit.2.i

walUnlockExclusive.exit.2.i:                      ; preds = %bb.ag, %walLockExclusive.exit165.2.i
  %.pr283.i = load i8, ptr %i.bj, align 1, !tbaa !1967
  %.not.i163.3.i = icmp eq i8 %.pr283.i, 0
  br i1 %.not.i163.3.i, label %walLockExclusive.exit165.3.i, label %walUnlockExclusive.exit.2.thread.i

walLockExclusive.exit165.3.i:                     ; preds = %walUnlockExclusive.exit.2.i
  %i.kr = load ptr, ptr %i.je, align 8, !tbaa !1973 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !475
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 112
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !1523
  %i.kv = call i32 %i.ku(ptr noundef nonnull %i.kr, i32 noundef range(i32 -2147483645, 257) 7, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !2239 ; 3 uses
  switch i32 %i.kv, label %.loopexit.i [
    i32 0, label %walUnlockExclusive.exit.2.thread.i
end_hunk_0
begin_hunk_1_@fts5IndexTombstoneRebuild:bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.054.i = phi ptr [ %i.de, %bb.aa ], [ %2, %bb.z ] ; 5 uses
  %.053.i = phi ptr [ %i.de, %bb.aa ], [ null, %bb.z ] ; 4 uses
  %.not.i = icmp eq ptr %.054.i, null
  br i1 %.not.i, label %bb.ap, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %.054.i, align 8, !tbaa !6914
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !229
  %i.dh = icmp eq i8 %i.dg, 4                     ; 2 uses
  %i.di = select i1 %i.dh, i32 4, i32 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.054.i, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !6916
  %i.dl = add nsw i32 %i.dk, -8
  %i.dm = sdiv i32 %i.dl, %i.di                   ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph85.preheader.i, label %fts5IndexTombstoneAddToPage.exit.i

.lr.ph85.preheader.i:                             ; preds = %bb.ac
  %wide.trip.count100.i = zext nneg i32 %i.dm to i64
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.thread.i, %.lr.ph85.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph85.preheader.i ], [ %indvars.iv.next98.i, %.thread.i ] ; 3 uses
  %i.do = load ptr, ptr %.054.i, align 8, !tbaa !6914
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  br i1 %i.dh, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph85.i
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv97.i
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %.not62.i = icmp eq i32 %i.dr, 0
  br i1 %.not62.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %i.dr)
  %i.ds = zext i32 %rev.i to i64
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph85.i
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv97.i
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %.not61.i = icmp eq i64 %i.du, 0
  br i1 %.not61.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = tail call i64 @llvm.bswap.i64(i64 %i.du)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.2.i = phi i64 [ %i.dv, %bb.ag ], [ %i.ds, %bb.ae ] ; 15 uses
  %i.dw = urem i64 %.2.i, %i.t
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0.i127138141, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !6780 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !6914 ; 5 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !229
  %i.eb = icmp eq i8 %i.ea, 4                     ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !6916 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 16
  %i.ef = add nsw i32 %i.ed, -8
  %i.eg = select i1 %i.eb, i32 2, i32 3
  %i.eh = lshr i32 %i.ef, %i.eg
  %i.ei = select i1 %i.ee, i32 %i.eh, i32 1       ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !229
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw i32 %i.el, 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 5 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !229
  %i.ep = zext i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = or disjoint i32 %i.eq, %i.em
  %i.es = getelementptr inbounds nuw i8, ptr %i.dz, i64 6 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !229
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 8
  %i.ew = or disjoint i32 %i.er, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 7 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !229
  %i.ez = zext i8 %i.ey to i32
  %i.fa = or disjoint i32 %i.ew, %i.ez            ; 2 uses
  %i.fb = udiv i64 %.2.i, %i.t
  %i.fc = zext nneg i32 %i.ei to i64
  %i.fd = urem i64 %i.fb, %i.fc
  %i.fe = trunc nuw nsw i64 %i.fd to i32          ; 2 uses
  %i.ff = icmp ugt i64 %.2.i, 4294967295
  %or.cond.i.i = and i1 %i.ff, %i.eb
  br i1 %or.cond.i.i, label %fts5IndexTombstoneAddToPage.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = lshr i32 %i.ei, 1
  %.not.i.i68 = icmp slt i32 %i.fa, %i.fg
  br i1 %.not.i.i68, label %bb.aj, label %fts5IndexTombstoneAddToPage.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.fh = add nsw i32 %i.fa, 1                    ; 4 uses
  %i.fi = lshr i32 %i.fh, 24
  %i.fj = trunc nuw i32 %i.fi to i8
  store i8 %i.fj, ptr %i.ej, align 1, !tbaa !229
  %i.fk = lshr i32 %i.fh, 16
  %i.fl = trunc i32 %i.fk to i8
  store i8 %i.fl, ptr %i.en, align 1, !tbaa !229
  %i.fm = lshr i32 %i.fh, 8
  %i.fn = trunc i32 %i.fm to i8
  store i8 %i.fn, ptr %i.es, align 1, !tbaa !229
  %i.fo = trunc i32 %i.fh to i8
  store i8 %i.fo, ptr %i.ex, align 1, !tbaa !229
  %i.fp = load ptr, ptr %i.dy, align 8, !tbaa !6914
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  br i1 %i.eb, label %.preheader.i, label %.preheader76.i

.preheader.i:                                     ; preds = %bb.aj, %bb.ak
  %.043.i.i = phi i32 [ %i.fv, %bb.ak ], [ %i.fe, %bb.aj ] ; 2 uses
  %.041.i.i = phi i32 [ %i.fw, %bb.ak ], [ %i.ei, %bb.aj ] ; 2 uses
  %i.fr = zext nneg i32 %.043.i.i to i64          ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !24
  %.not50.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not50.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.preheader.i
  %i.fu = add nuw nsw i32 %.043.i.i, 1
  %i.fv = urem i32 %i.fu, %i.ei
  %i.fw = add nsw i32 %.041.i.i, -1
  %i.fx = icmp eq i32 %.041.i.i, 0
  br i1 %i.fx, label %.thread.i, label %.preheader.i, !llvm.loop !7687

bb.al:                                            ; preds = %.preheader.i
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fr ; 4 uses
  %i.fz = lshr i64 %.2.i, 24
  %i.ga = trunc i64 %i.fz to i8
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !229
  %i.gb = lshr i64 %.2.i, 16
  %i.gc = trunc i64 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !229
  %i.ge = lshr i64 %.2.i, 8
  %i.gf = trunc i64 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !229
  %i.gh = trunc i64 %.2.i to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !229
  br label %.thread.i

.preheader76.i:                                   ; preds = %bb.aj, %bb.am
  %.144.i.i = phi i32 [ %i.gn, %bb.am ], [ %i.fe, %bb.aj ] ; 2 uses
  %.142.i.i = phi i32 [ %i.go, %bb.am ], [ %i.ei, %bb.aj ] ; 2 uses
  %i.gj = zext nneg i32 %.144.i.i to i64          ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !19
  %.not49.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not49.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader76.i
  %i.gm = add nuw nsw i32 %.144.i.i, 1
  %i.gn = urem i32 %i.gm, %i.ei
  %i.go = add nsw i32 %.142.i.i, -1
  %i.gp = icmp eq i32 %.142.i.i, 0
  br i1 %i.gp, label %.thread.i, label %.preheader76.i, !llvm.loop !7688

bb.an:                                            ; preds = %.preheader76.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gj ; 8 uses
  %i.gr = lshr i64 %.2.i, 56
  %i.gs = trunc nuw i64 %i.gr to i8
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !229
  %i.gt = lshr i64 %.2.i, 48
  %i.gu = trunc i64 %i.gt to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !229
  %i.gw = lshr i64 %.2.i, 40
  %i.gx = trunc i64 %i.gw to i8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !229
  %i.gz = lshr i64 %.2.i, 32
  %i.ha = trunc i64 %i.gz to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 3
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !229
  %i.hc = lshr i64 %.2.i, 24
  %i.hd = trunc i64 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !229
  %i.hf = lshr i64 %.2.i, 16
  %i.hg = trunc i64 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gq, i64 5
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !229
  %i.hi = lshr i64 %.2.i, 8
  %i.hj = trunc i64 %i.hi to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gq, i64 6
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !229
  %i.hl = trunc i64 %.2.i to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gq, i64 7
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !229
  br label %.thread.i

.thread.i:                                        ; preds = %bb.am, %bb.ak, %bb.an, %bb.al, %bb.af, %bb.ad
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %7 = icmp samesign ult i64 %indvars.iv.next98.i, %wide.trip.count100.i
  br i1 %7, label %.lr.ph85.i, label %fts5IndexTombstoneAddToPage.exit.i, !llvm.loop !7699

fts5IndexTombstoneAddToPage.exit.i:               ; preds = %.thread.i, %bb.ai, %bb.ah, %bb.ac
  %.4.i = phi i32 [ 0, %bb.ac ], [ 0, %.thread.i ], [ 1, %bb.ai ], [ 2, %bb.ah ] ; 2 uses
  %i.hn = icmp eq i64 %indvars.iv102.i, 0
  br i1 %i.hn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %fts5IndexTombstoneAddToPage.exit.i
  %i.ho = load ptr, ptr %.054.i, align 8, !tbaa !6914
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !229
  %i.hr = load ptr, ptr %.0.i127138141, align 8, !tbaa !6780
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !6914
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  store i8 %i.hq, ptr %i.ht, align 1, !tbaa !229
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %fts5IndexTombstoneAddToPage.exit.i, %bb.ab
  %.5.i = phi i32 [ 0, %bb.ab ], [ %.4.i, %bb.ao ], [ %.4.i, %fts5IndexTombstoneAddToPage.exit.i ]
  %i.hu = icmp eq ptr %.053.i, null
  br i1 %i.hu, label %fts5DataRelease.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hv = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hw = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.hx(ptr noundef nonnull %i.hw) #59, !inline_history !7700
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.as, %bb.ar
  %i.hy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.hz = tail call i32 %i.hy(ptr noundef nonnull %.053.i) #59, !inline_history !7701
  %i.ia = sext i32 %i.hz to i64
  %i.ib = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.ic = sub nsw i64 %i.ib, %i.ia
  store i64 %i.ic, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.id = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ie = add nsw i64 %i.id, -1
  store i64 %i.ie, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.if = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.if(ptr noundef nonnull %.053.i) #59, !inline_history !7702
  %i.ig = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i4.i.i.i, label %fts5DataRelease.exit.i, label %bb.at

bb.at:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.ih(ptr noundef nonnull %i.ig) #59, !inline_history !7703
  br label %fts5DataRelease.exit.i

bb.au:                                            ; preds = %bb.aq
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ii(ptr noundef nonnull %.053.i) #59, !inline_history !7702
  br label %fts5DataRelease.exit.i

fts5DataRelease.exit.i:                           ; preds = %bb.au, %bb.at, %sqlite3_mutex_enter.exit.i.i.i, %bb.ap
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  %i.ij = icmp eq i32 %.5.i, 0
  br i1 %i.ij, label %bb.y, label %bb.av, !llvm.loop !7704

.critedge:                                        ; preds = %bb.y
  %.pr = load i32, ptr %i.q, align 4, !tbaa !6358
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %bb.aw, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %._crit_edge, %._crit_edge.thread136, %.critedge
  %.0.i127134 = phi ptr [ %.0.i127138141, %.critedge ], [ %.0.i128, %.lr.ph ], [ %.0.i127, %._crit_edge ], [ null, %._crit_edge.thread136 ]
  tail call fastcc void @fts5IndexFreeArray(ptr noundef %.0.i127134, i32 noundef %.3)
  br label %bb.aw

bb.av:                                            ; preds = %fts5DataRelease.exit.i
  tail call fastcc void @fts5IndexFreeArray(ptr noundef %.0.i127138141, i32 noundef %.3)
  %i.ik = shl nsw i32 %.3, 1
  %i.il = or disjoint i32 %i.ik, 1
  br label %bb.c

bb.aw:                                            ; preds = %.critedge, %.critedge.thread
  %.4 = phi i32 [ 0, %.critedge.thread ], [ %.3, %.critedge ]
  %.051 = phi ptr [ null, %.critedge.thread ], [ %.0.i127138141, %.critedge ]
  store i32 %.4, ptr %5, align 4, !tbaa !24
  store ptr %.051, ptr %6, align 8, !tbaa !7512
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5IndexFreeArray(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %sqlite3_free.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %fts5DataRelease.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %fts5DataRelease.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6780 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %fts5DataRelease.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.g(ptr noundef nonnull %i.f) #59, !inline_history !6799
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.i = tail call i32 %i.h(ptr noundef nonnull %i.c) #59, !inline_history !6800
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.l = sub nsw i64 %i.k, %i.j
  store i64 %i.l, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.n = add nsw i64 %i.m, -1
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.o(ptr noundef nonnull %i.c) #59, !inline_history !6801
  %i.p = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.i.i, label %fts5DataRelease.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.q(ptr noundef nonnull %i.p) #59, !inline_history !6802
  br label %fts5DataRelease.exit

bb.f:                                             ; preds = %bb.b
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.r(ptr noundef nonnull %i.c) #59, !inline_history !6801
  br label %fts5DataRelease.exit

fts5DataRelease.exit:                             ; preds = %.lr.ph, %sqlite3_mutex_enter.exit.i.i, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7524

._crit_edge:                                      ; preds = %fts5DataRelease.exit, %.preheader
  %i.s = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.t, null
  br i1 %.not.i.i7, label %sqlite3_mutex_enter.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.u(ptr noundef nonnull %i.t) #59, !inline_history !270
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.h, %bb.g
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0) #59, !inline_history !271
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.z = sub nsw i64 %i.y, %i.x
  store i64 %i.z, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ab = add nsw i64 %i.aa, -1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ac(ptr noundef nonnull %0) #59, !inline_history !272
  %i.ad = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ad, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.ae(ptr noundef nonnull %i.ad) #59, !inline_history !273
  br label %sqlite3_free.exit

bb.j:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.af(ptr noundef nonnull %0) #59, !inline_history !272
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.j, %bb.i, %sqlite3_mutex_enter.exit.i, %bb.a
end_hunk_1
begin_hunk_2_@rtreeInsertCell:bb.a
  %i.gq = tail call i32 @sqlite3_initialize(), !inline_history !8046
  %.not.i.i57 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i57, label %sqlite3_malloc64.exit.i59, label %nodeNew.exit62

sqlite3_malloc64.exit.i59:                        ; preds = %bb.k
  %i.gr = sext i32 %i.gp to i64
  %i.gs = add nsw i64 %i.gr, 40
  %i.gt = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.gs), !inline_history !8046 ; 8 uses
  %.not.i60 = icmp eq ptr %i.gt, null
  br i1 %.not.i60, label %nodeNew.exit62, label %bb.l

bb.l:                                             ; preds = %sqlite3_malloc64.exit.i59
  %i.gu = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.gv = sext i32 %i.gu to i64
  %i.gw = add nsw i64 %i.gv, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gt, i8 0, i64 %i.gw, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !7928
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store i32 1, ptr %i.gz, align 8, !tbaa !8003
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !7960
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !7960
  store ptr %1, ptr %i.gt, align 8, !tbaa !8005
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  store i32 1, ptr %i.hd, align 4, !tbaa !8008
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !8003
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 8, !tbaa !8003
  br label %nodeNew.exit62

nodeNew.exit62:                                   ; preds = %bb.k, %sqlite3_malloc64.exit.i59, %bb.l
  %.0.i16.i58 = phi ptr [ %i.gt, %bb.l ], [ null, %sqlite3_malloc64.exit.i59 ], [ null, %bb.k ]
  %i.hh = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.hi = tail call i32 @sqlite3_initialize(), !inline_history !8046
  %.not.i.i51 = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i51, label %sqlite3_malloc64.exit.i53, label %nodeNew.exit56

sqlite3_malloc64.exit.i53:                        ; preds = %nodeNew.exit62
  %i.hj = sext i32 %i.hh to i64
  %i.hk = add nsw i64 %i.hj, 40
  %i.hl = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.hk), !inline_history !8046 ; 8 uses
  %.not.i54 = icmp eq ptr %i.hl, null
  br i1 %.not.i54, label %nodeNew.exit56, label %bb.m

bb.m:                                             ; preds = %sqlite3_malloc64.exit.i53
  %i.hm = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.hn = sext i32 %i.hm to i64
  %i.ho = add nsw i64 %i.hn, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hl, i8 0, i64 %i.ho, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !7928
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store i32 1, ptr %i.hr, align 8, !tbaa !8003
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !7960
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !7960
  store ptr %1, ptr %i.hl, align 8, !tbaa !8005
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  store i32 1, ptr %i.hv, align 4, !tbaa !8008
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !8003
  %i.hy = add nsw i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 8, !tbaa !8003
  br label %nodeNew.exit56

nodeNew.exit56:                                   ; preds = %nodeNew.exit62, %sqlite3_malloc64.exit.i53, %bb.m
  %.0.i16.i52 = phi ptr [ %i.hl, %bb.m ], [ null, %sqlite3_malloc64.exit.i53 ], [ null, %nodeNew.exit62 ]
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !7936
  %i.ib = add nsw i32 %i.ia, 1                    ; 3 uses
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !7936
  store i32 1, ptr %i.gj, align 4, !tbaa !8008
  %i.ic = load ptr, ptr %i.x, align 8, !tbaa !7928 ; 2 uses
  %i.id = lshr i32 %i.ib, 8
  %i.ie = trunc i32 %i.id to i8
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !229
  %i.if = trunc i32 %i.ib to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !229
  br label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.ih = load ptr, ptr %1, align 8, !tbaa !8005  ; 3 uses
  %i.ii = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.ij = tail call i32 @sqlite3_initialize(), !inline_history !8046
  %.not.i.i48 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i48, label %sqlite3_malloc64.exit.i49, label %nodeNew.exit

sqlite3_malloc64.exit.i49:                        ; preds = %bb.n
  %i.ik = sext i32 %i.ii to i64
  %i.il = add nsw i64 %i.ik, 40
  %i.im = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.il), !inline_history !8046 ; 9 uses
  %.not.i50 = icmp eq ptr %i.im, null
  br i1 %.not.i50, label %nodeNew.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3_malloc64.exit.i49
  %i.in = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.io = sext i32 %i.in to i64
  %i.ip = add nsw i64 %i.io, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.im, i8 0, i64 %i.ip, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !7928
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i32 1, ptr %i.is, align 8, !tbaa !8003
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !7960
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !7960
  store ptr %i.ih, ptr %i.im, align 8, !tbaa !8005
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 20
  store i32 1, ptr %i.iw, align 4, !tbaa !8008
  %.not.i13.i = icmp eq ptr %i.ih, null
  br i1 %.not.i13.i, label %nodeNew.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !8003
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 8, !tbaa !8003
  br label %nodeNew.exit

nodeNew.exit:                                     ; preds = %bb.n, %sqlite3_malloc64.exit.i49, %bb.o, %bb.p
  %.0.i16.i = phi ptr [ %i.im, %bb.p ], [ null, %sqlite3_malloc64.exit.i49 ], [ %i.im, %bb.o ], [ null, %bb.n ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !8003
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 8, !tbaa !8003
  br label %bb.q

bb.q:                                             ; preds = %nodeNew.exit, %nodeNew.exit56
  %.0119.i = phi ptr [ %.0.i16.i52, %nodeNew.exit56 ], [ %1, %nodeNew.exit ] ; 24 uses
  %.0116.i = phi ptr [ %.0.i16.i58, %nodeNew.exit56 ], [ %.0.i16.i, %nodeNew.exit ] ; 23 uses
  %i.jd = icmp ne ptr %.0119.i, null
  %i.je = icmp ne ptr %.0116.i, null
  %or.cond.i = and i1 %i.jd, %i.je
  br i1 %or.cond.i, label %bb.r, label %SplitNode.exit

bb.r:                                             ; preds = %bb.q
  %i.jf = getelementptr inbounds nuw i8, ptr %.0119.i, i64 24 ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !7928
  %i.jh = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.ji = sext i32 %i.jh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jg, i8 0, i64 %i.ji, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %.0116.i, i64 24 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !7928
  %i.jl = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.jm = sext i32 %i.jl to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jk, i8 0, i64 %i.jm, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.jo = load i8, ptr %i.jn, align 4, !tbaa !7976
  %i.jp = zext i8 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, 1
  %i.jr = shl nuw nsw i32 %i.cp, 2
  %narrow.i = add nuw nsw i32 %i.jr, 8
  %i.js = zext nneg i32 %narrow.i to i64
  %i.jt = mul nuw nsw i64 %i.jq, %i.js            ; 2 uses
  %i.ju = tail call i32 @sqlite3_initialize(), !inline_history !8047
  %.not.i.i38 = icmp eq i32 %i.ju, 0
  br i1 %.not.i.i38, label %sqlite3_malloc64.exit.i, label %SplitNode.exit

sqlite3_malloc64.exit.i:                          ; preds = %bb.r
  %i.jv = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.jt), !inline_history !8047 ; 10 uses
  %.not.i40 = icmp eq ptr %i.jv, null
  br i1 %.not.i40, label %SplitNode.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_malloc64.exit.i
  %i.jw = load i8, ptr %i.jn, align 4, !tbaa !7976 ; 2 uses
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jx
  %i.jz = zext i8 %i.jw to i32
  %i.ka = mul nuw nsw i32 %i.cp, %i.jz
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jv, i8 0, i64 %i.jt, i1 false)
  %i.kd = load i8, ptr %i.jn, align 4, !tbaa !7976 ; 2 uses
  %.not234.i = icmp eq i8 %i.kd, 0
  br i1 %.not234.i, label %._crit_edge229.i, label %.lr.ph.i41.preheader

.lr.ph.i41.preheader:                             ; preds = %bb.s
  %i.ke = or disjoint i32 %i.cm, %i.cn            ; 2 uses
  %i.kf = add nuw nsw i32 %i.ke, 1
  %i.kg = zext nneg i32 %i.kf to i64              ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.ke, 7
  %n.vec = and i64 %i.kg, 131064                  ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.kg
  br label %.lr.ph.i41

.preheader.i:                                     ; preds = %.loopexit
  %.not235.i = icmp eq i8 %i.mo, 0
  br i1 %.not235.i, label %._crit_edge229.i, label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %.preheader.i
  %i.kh = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.ki = add i32 %i.kh, -4
  %i.kj = load i8, ptr %i.t, align 1, !tbaa !7930
  %i.kk = zext i8 %i.kj to i32
  %i.kl = sdiv i32 %i.ki, %i.kk                   ; 2 uses
  %i.km = sdiv i32 %i.kl, 3                       ; 2 uses
  %.neg.i = sdiv i32 %i.kl, -3
  %i.kn = add nsw i32 %.neg.i, %i.cp              ; 2 uses
  %.not141213.i = icmp sgt i32 %i.km, %i.kn
  %i.ko = icmp samesign ugt i32 %i.co, 1
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br i1 %.not141213.i, label %._crit_edge229.i, label %.lr.ph228.split.i

.lr.ph228.split.i:                                ; preds = %.lr.ph228.i
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.ll = load i8, ptr %i.lj, align 1, !tbaa !7907 ; 4 uses
  %i.lm = load i8, ptr %i.lk, align 2, !tbaa !7958 ; 4 uses
  %i.ln = icmp eq i8 %i.lm, 0                     ; 3 uses
  %i.lo = zext i8 %i.ll to i64                    ; 12 uses
  %.not.i165.i = icmp eq i8 %i.ll, 0              ; 2 uses
  %i.lp = sext i32 %i.kn to i64
  %8 = sext i32 %i.km to i64                      ; 2 uses
  %i.lq = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 2)
  %i.lr = add nsw i64 %i.lq, -1
  %i.ls = lshr i64 %i.lr, 1                       ; 2 uses
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 4 uses
  %min.iters.check283 = icmp eq i64 %i.ls, 0
  %n.vec285 = and i64 %i.lt, 9223372036854775806  ; 3 uses
  %i.lu = shl nuw i64 %n.vec285, 1
  %cmp.n297 = icmp eq i64 %i.lt, %n.vec285
  %min.iters.check266 = icmp ult i8 %i.ll, 7
  %n.vec268 = and i64 %i.lt, 9223372036854775804  ; 3 uses
  %i.lv = shl nuw i64 %n.vec268, 1
  %cmp.n280 = icmp eq i64 %i.lt, %n.vec268
  %i.lw = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 2)
  %i.lx = add nsw i64 %i.lw, -1
  %i.ly = lshr i64 %i.lx, 1                       ; 2 uses
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 4 uses
  %min.iters.check249 = icmp eq i64 %i.ly, 0
  %n.vec251 = and i64 %i.lz, 9223372036854775806  ; 3 uses
  %i.ma = shl nuw i64 %n.vec251, 1
  %cmp.n263 = icmp eq i64 %i.lz, %n.vec251
  %min.iters.check235 = icmp ult i8 %i.ll, 7
  %n.vec237 = and i64 %i.lz, 9223372036854775804  ; 3 uses
  %i.mb = shl nuw i64 %n.vec237, 1
  %cmp.n246 = icmp eq i64 %i.lz, %n.vec237
  br label %.lr.ph220.i

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader, %.loopexit
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i, %.loopexit ], [ 0, %.lr.ph.i41.preheader ] ; 4 uses
  %i.mc = phi i8 [ %i.mo, %.loopexit ], [ %i.kd, %.lr.ph.i41.preheader ]
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.md
  %i.mf = mul nuw nsw i64 %indvars.iv250.i, %i.cq
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mf ; 4 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv250.i
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !350
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i41, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i41 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i41 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %index ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store <4 x i32> %vec.ind, ptr %i.mi, align 4, !tbaa !24
  store <4 x i32> %step.add, ptr %i.mj, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.mk = icmp eq i64 %index.next, %n.vec
  br i1 %i.mk, label %middle.block, label %vector.body, !llvm.loop !8048

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i41, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i41 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i
  %i.mm = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.mm, ptr %i.ml, align 4, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cq
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !8049

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.mn = trunc nuw nsw i64 %indvars.iv250.i to i32
  tail call fastcc void @SortByDimension(ptr noundef nonnull %0, ptr noundef nonnull %i.mg, i32 noundef range(i32 1, 65537) %i.cp, i32 noundef %i.mn, ptr noundef nonnull %i.ct, ptr noundef %i.kc), !inline_history !8050
  %indvars.iv.next251.i = add nuw nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %i.mo = load i8, ptr %i.jn, align 4, !tbaa !7976 ; 7 uses
  %i.mp = zext i8 %i.mo to i64                    ; 2 uses
  %i.mq = icmp samesign ult i64 %indvars.iv.next251.i, %i.mp
  br i1 %i.mq, label %.lr.ph.i41, label %.preheader.i, !llvm.loop !8051

.lr.ph220.i:                                      ; preds = %._crit_edge221.i, %.lr.ph228.split.i
  %i.mr = phi i8 [ %i.lm, %.lr.ph228.split.i ], [ %i.qc, %._crit_edge221.i ]
  %indvars.iv261.i = phi i64 [ 0, %.lr.ph228.split.i ], [ %indvars.iv.next262.i, %._crit_edge221.i ] ; 4 uses
  %.0130227.i = phi double [ 0.000000e+00, %.lr.ph228.split.i ], [ %.1131.i, %._crit_edge221.i ] ; 2 uses
  %.0132226.i = phi i32 [ 0, %.lr.ph228.split.i ], [ %.1133.i, %._crit_edge221.i ]
  %.0134225.i = phi i32 [ 0, %.lr.ph228.split.i ], [ %.1135.i, %._crit_edge221.i ]
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv261.i
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !350 ; 3 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !24
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.mv
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.gk
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !24
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.mz
  br label %bb.t

bb.t:                                             ; preds = %bb.au, %.lr.ph220.i
  %i.nb = phi i8 [ %i.mr, %.lr.ph220.i ], [ %i.qc, %bb.au ] ; 2 uses
  %indvars.iv257.i = phi i64 [ %8, %.lr.ph220.i ], [ %indvars.iv.next258.i, %bb.au ] ; 5 uses
  %.0123217.i = phi i32 [ 0, %.lr.ph220.i ], [ %.1.i44, %bb.au ]
  %.0124216.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %.1125.i, %bb.au ] ; 2 uses
  %.0126215.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %.1127.i43, %bb.au ] ; 3 uses
  %.0128214.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %i.xc, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.mw, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.na, i64 48, i1 false)
  br i1 %i.ko, label %.lr.ph212.i, label %._crit_edge.i

.lr.ph212.i:                                      ; preds = %bb.t, %cellUnion.exit.i
  %i.nc = phi i8 [ %i.qb, %cellUnion.exit.i ], [ %i.nb, %bb.t ] ; 3 uses
  %indvars.iv252.i = phi i64 [ %indvars.iv.next253.i, %cellUnion.exit.i ], [ 1, %bb.t ] ; 3 uses
  %i.nd = icmp slt i64 %indvars.iv252.i, %indvars.iv257.i
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv252.i
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !24
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.ng ; 2 uses
  br i1 %i.nd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph212.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 5 uses
  br i1 %i.ln, label %.preheader.i.i.preheader, label %.preheader57.i.i.preheader

.preheader57.i.i.preheader:                       ; preds = %bb.u
  br i1 %min.iters.check249, label %.preheader57.i.i.preheader355, label %vector.body252

vector.body252:                                   ; preds = %.preheader57.i.i.preheader, %vector.body252
  %index253 = phi i64 [ %index.next261, %vector.body252 ], [ 0, %.preheader57.i.i.preheader ] ; 2 uses
  %i.nj = shl nuw i64 %index253, 1                ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.nj ; 2 uses
  %wide.vec254 = load <4 x i32>, ptr %i.nk, align 8, !tbaa !229 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nj
  %wide.vec257 = load <4 x i32>, ptr %i.nl, align 4, !tbaa !229 ; 2 uses
  %i.nm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec254, <4 x i32> %wide.vec257)
  %i.nn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec254, <4 x i32> %wide.vec257)
  %interleaved.vec260 = shufflevector <4 x i32> %i.nm, <4 x i32> %i.nn, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec260, ptr %i.nk, align 8, !tbaa !229
  %index.next261 = add nuw i64 %index253, 2       ; 2 uses
  %i.no = icmp eq i64 %index.next261, %n.vec251
  br i1 %i.no, label %middle.block262, label %vector.body252, !llvm.loop !8052

middle.block262:                                  ; preds = %vector.body252
  br i1 %cmp.n263, label %cellUnion.exit.i, label %.preheader57.i.i.preheader355

.preheader57.i.i.preheader355:                    ; preds = %.preheader57.i.i.preheader, %middle.block262
  %indvars.iv.i.i46.ph = phi i64 [ 0, %.preheader57.i.i.preheader ], [ %i.ma, %middle.block262 ]
  br label %.preheader57.i.i

.preheader.i.i.preheader:                         ; preds = %bb.u
  br i1 %min.iters.check235, label %.preheader.i.i.preheader354, label %vector.body238

vector.body238:                                   ; preds = %.preheader.i.i.preheader, %vector.body238
  %index239 = phi i64 [ %index.next244, %vector.body238 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.np = shl nuw i64 %index239, 1                ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.np ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.nq, align 8, !tbaa !229 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec240 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.np
  %wide.vec241 = load <8 x float>, ptr %i.nr, align 4, !tbaa !229 ; 2 uses
  %strided.vec242 = shufflevector <8 x float> %wide.vec241, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec243 = shufflevector <8 x float> %wide.vec241, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ns = fcmp olt <4 x float> %strided.vec, %strided.vec242
  %i.nt = select <4 x i1> %i.ns, <4 x float> %strided.vec, <4 x float> %strided.vec242
  %i.nu = fcmp ogt <4 x float> %strided.vec240, %strided.vec243
  %i.nv = select <4 x i1> %i.nu, <4 x float> %strided.vec240, <4 x float> %strided.vec243
  %interleaved.vec = shufflevector <4 x float> %i.nt, <4 x float> %i.nv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.nq, align 8, !tbaa !229
  %index.next244 = add nuw i64 %index239, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.nw, label %middle.block245, label %vector.body238, !llvm.loop !8053

middle.block245:                                  ; preds = %vector.body238
  br i1 %cmp.n246, label %cellUnion.exit.i, label %.preheader.i.i.preheader354

.preheader.i.i.preheader354:                      ; preds = %.preheader.i.i.preheader, %middle.block245
  %indvars.iv61.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.mb, %middle.block245 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader354, %.preheader.i.i
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %.preheader.i.i ], [ %indvars.iv61.i.i.ph, %.preheader.i.i.preheader354 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv61.i.i ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv61.i.i
  %i.nz = load <2 x float>, ptr %i.nx, align 8, !tbaa !229 ; 3 uses
  %i.oa = load <2 x float>, ptr %i.ny, align 4, !tbaa !229 ; 3 uses
  %i.ob = shufflevector <2 x float> %i.nz, <2 x float> %i.oa, <2 x i32> <i32 0, i32 3>
  %i.oc = shufflevector <2 x float> %i.oa, <2 x float> %i.nz, <2 x i32> <i32 0, i32 3>
  %i.od = fcmp olt <2 x float> %i.ob, %i.oc
  %i.oe = select <2 x i1> %i.od, <2 x float> %i.nz, <2 x float> %i.oa
  store <2 x float> %i.oe, ptr %i.nx, align 8, !tbaa !229
  %indvars.iv.next62.i.i = add nuw nsw i64 %indvars.iv61.i.i, 2 ; 2 uses
  %i.of = icmp samesign ult i64 %indvars.iv.next62.i.i, %i.lo
  br i1 %i.of, label %.preheader.i.i, label %cellUnion.exit.i, !llvm.loop !8054

.preheader57.i.i:                                 ; preds = %.preheader57.i.i.preheader355, %.preheader57.i.i
  %indvars.iv.i.i46 = phi i64 [ %indvars.iv.next.i.i47, %.preheader57.i.i ], [ %indvars.iv.i.i46.ph, %.preheader57.i.i.preheader355 ] ; 4 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i.i46 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !229
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.i.i46
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !229
  %.56.i.i = tail call i32 @llvm.smin.i32(i32 %i.oh, i32 %i.oj)
  store i32 %.56.i.i, ptr %i.og, align 8, !tbaa !229
  %i.ok = or disjoint i64 %indvars.iv.i.i46, 1    ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ok ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !229
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.ok
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !229
  %i.op = tail call i32 @llvm.smax.i32(i32 %i.om, i32 %i.oo)
  store i32 %i.op, ptr %i.ol, align 4, !tbaa !229
  %indvars.iv.next.i.i47 = add nuw nsw i64 %indvars.iv.i.i46, 2 ; 2 uses
  %i.oq = icmp samesign ult i64 %indvars.iv.next.i.i47, %i.lo
  br i1 %i.oq, label %.preheader57.i.i, label %cellUnion.exit.i, !llvm.loop !8055

bb.v:                                             ; preds = %.lr.ph212.i
  %i.or = icmp eq i8 %i.nc, 0
  %i.os = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 5 uses
  br i1 %i.or, label %.preheader.i148.i.preheader, label %.preheader57.i144.i.preheader

.preheader57.i144.i.preheader:                    ; preds = %bb.v
  br i1 %min.iters.check283, label %.preheader57.i144.i.preheader359, label %vector.body286

vector.body286:                                   ; preds = %.preheader57.i144.i.preheader, %vector.body286
  %index287 = phi i64 [ %index.next295, %vector.body286 ], [ 0, %.preheader57.i144.i.preheader ] ; 2 uses
  %i.ot = shl nuw i64 %index287, 1                ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ot ; 2 uses
  %wide.vec288 = load <4 x i32>, ptr %i.ou, align 8, !tbaa !229 ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.ot
  %wide.vec291 = load <4 x i32>, ptr %i.ov, align 4, !tbaa !229 ; 2 uses
  %i.ow = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec288, <4 x i32> %wide.vec291)
  %i.ox = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec288, <4 x i32> %wide.vec291)
  %interleaved.vec294 = shufflevector <4 x i32> %i.ow, <4 x i32> %i.ox, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec294, ptr %i.ou, align 8, !tbaa !229
  %index.next295 = add nuw i64 %index287, 2       ; 2 uses
  %i.oy = icmp eq i64 %index.next295, %n.vec285
  br i1 %i.oy, label %middle.block296, label %vector.body286, !llvm.loop !8056

middle.block296:                                  ; preds = %vector.body286
  br i1 %cmp.n297, label %cellUnion.exit.i, label %.preheader57.i144.i.preheader359

.preheader57.i144.i.preheader359:                 ; preds = %.preheader57.i144.i.preheader, %middle.block296
  %indvars.iv.i145.i.ph = phi i64 [ 0, %.preheader57.i144.i.preheader ], [ %i.lu, %middle.block296 ]
  br label %.preheader57.i144.i

.preheader.i148.i.preheader:                      ; preds = %bb.v
  br i1 %min.iters.check266, label %.preheader.i148.i.preheader357, label %vector.body269

vector.body269:                                   ; preds = %.preheader.i148.i.preheader, %vector.body269
  %index270 = phi i64 [ %index.next278, %vector.body269 ], [ 0, %.preheader.i148.i.preheader ] ; 2 uses
  %i.oz = shl nuw i64 %index270, 1                ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.oz ; 2 uses
  %wide.vec271 = load <8 x float>, ptr %i.pa, align 8, !tbaa !229 ; 2 uses
  %strided.vec272 = shufflevector <8 x float> %wide.vec271, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec273 = shufflevector <8 x float> %wide.vec271, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.oz
  %wide.vec274 = load <8 x float>, ptr %i.pb, align 4, !tbaa !229 ; 2 uses
  %strided.vec275 = shufflevector <8 x float> %wide.vec274, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec276 = shufflevector <8 x float> %wide.vec274, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pc = fcmp olt <4 x float> %strided.vec272, %strided.vec275
  %i.pd = select <4 x i1> %i.pc, <4 x float> %strided.vec272, <4 x float> %strided.vec275
  %i.pe = fcmp ogt <4 x float> %strided.vec273, %strided.vec276
  %i.pf = select <4 x i1> %i.pe, <4 x float> %strided.vec273, <4 x float> %strided.vec276
  %interleaved.vec277 = shufflevector <4 x float> %i.pd, <4 x float> %i.pf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec277, ptr %i.pa, align 8, !tbaa !229
  %index.next278 = add nuw i64 %index270, 4       ; 2 uses
  %i.pg = icmp eq i64 %index.next278, %n.vec268
  br i1 %i.pg, label %middle.block279, label %vector.body269, !llvm.loop !8057

middle.block279:                                  ; preds = %vector.body269
  br i1 %cmp.n280, label %cellUnion.exit.i, label %.preheader.i148.i.preheader357

.preheader.i148.i.preheader357:                   ; preds = %.preheader.i148.i.preheader, %middle.block279
  %indvars.iv61.i149.i.ph = phi i64 [ 0, %.preheader.i148.i.preheader ], [ %i.lv, %middle.block279 ]
  br label %.preheader.i148.i

.preheader.i148.i:                                ; preds = %.preheader.i148.i.preheader357, %.preheader.i148.i
  %indvars.iv61.i149.i = phi i64 [ %indvars.iv.next62.i151.i, %.preheader.i148.i ], [ %indvars.iv61.i149.i.ph, %.preheader.i148.i.preheader357 ] ; 3 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv61.i149.i ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv61.i149.i
  %i.pj = load <2 x float>, ptr %i.ph, align 8, !tbaa !229 ; 3 uses
  %i.pk = load <2 x float>, ptr %i.pi, align 4, !tbaa !229 ; 3 uses
  %i.pl = shufflevector <2 x float> %i.pj, <2 x float> %i.pk, <2 x i32> <i32 0, i32 3>
  %i.pm = shufflevector <2 x float> %i.pk, <2 x float> %i.pj, <2 x i32> <i32 0, i32 3>
  %i.pn = fcmp olt <2 x float> %i.pl, %i.pm
  %i.po = select <2 x i1> %i.pn, <2 x float> %i.pj, <2 x float> %i.pk
  store <2 x float> %i.po, ptr %i.ph, align 8, !tbaa !229
  %indvars.iv.next62.i151.i = add nuw nsw i64 %indvars.iv61.i149.i, 2 ; 2 uses
  %i.pp = icmp samesign ult i64 %indvars.iv.next62.i151.i, %i.lo
  br i1 %i.pp, label %.preheader.i148.i, label %cellUnion.exit.i, !llvm.loop !8058

.preheader57.i144.i:                              ; preds = %.preheader57.i144.i.preheader359, %.preheader57.i144.i
  %indvars.iv.i145.i = phi i64 [ %indvars.iv.next.i147.i, %.preheader57.i144.i ], [ %indvars.iv.i145.i.ph, %.preheader57.i144.i.preheader359 ] ; 4 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i145.i ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !229
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv.i145.i
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !229
  %.56.i146.i = tail call i32 @llvm.smin.i32(i32 %i.pr, i32 %i.pt)
  store i32 %.56.i146.i, ptr %i.pq, align 8, !tbaa !229
  %i.pu = or disjoint i64 %indvars.iv.i145.i, 1   ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.pu ; 2 uses
end_hunk_2
begin_hunk_3_@rtreeInsertCell:bb.a
  %i.sy = load float, ptr %i.kv, align 4, !tbaa !229
  %i.sz = load float, ptr %i.kw, align 8, !tbaa !229
  %i.ta = fsub float %i.sy, %i.sz
  %i.tb = fpext float %i.ta to double
  %i.tc = fmul double %.1.i.i, %i.tb
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %cellOverlap.exit.i.thread
  %.2.i.i = phi double [ %i.tc, %bb.aa ], [ 1.000000e+00, %cellOverlap.exit.i.thread ]
  %i.td = load float, ptr %i.kx, align 4, !tbaa !229
  %i.te = load float, ptr %i.ky, align 8, !tbaa !229
  %i.tf = fsub float %i.td, %i.te
  %i.tg = fpext float %i.tf to double
  %i.th = fmul double %.2.i.i, %i.tg
  br label %bb.ag

cellOverlap.exit.thread.i:                        ; preds = %cellOverlap.exit.i, %cellMargin.exit164.thread.i
  %.us-phi.i169292.i = phi double [ %.us-phi.i169.i, %cellOverlap.exit.i ], [ 1.000000e+00, %cellMargin.exit164.thread.i ]
  %i.ti = phi double [ %i.sn, %cellOverlap.exit.i ], [ %i.re, %cellMargin.exit164.thread.i ]
  switch i8 %i.mo, label %bb.am [
    i8 5, label %bb.ac
    i8 4, label %bb.ad
    i8 3, label %bb.ae
    i8 2, label %bb.af
  ]

bb.ac:                                            ; preds = %cellOverlap.exit.thread.i
  %i.tj = load i32, ptr %i.kr, align 4, !tbaa !229
  %i.tk = sext i32 %i.tj to i64
  %i.tl = load i32, ptr %i.ks, align 8, !tbaa !229
  %i.tm = sext i32 %i.tl to i64
  %i.tn = sub nsw i64 %i.tk, %i.tm
  %i.to = sitofp i64 %i.tn to double
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %cellOverlap.exit.thread.i
  %.4.i.i = phi double [ %i.to, %bb.ac ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.tp = load i32, ptr %i.kt, align 4, !tbaa !229
  %i.tq = sext i32 %i.tp to i64
  %i.tr = load i32, ptr %i.ku, align 8, !tbaa !229
  %i.ts = sext i32 %i.tr to i64
  %i.tt = sub nsw i64 %i.tq, %i.ts
  %i.tu = sitofp i64 %i.tt to double
  %i.tv = fmul nnan double %.4.i.i, %i.tu
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %cellOverlap.exit.thread.i
  %.5.i.i = phi double [ %i.tv, %bb.ad ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.tw = load i32, ptr %i.kv, align 4, !tbaa !229
  %i.tx = sext i32 %i.tw to i64
  %i.ty = load i32, ptr %i.kw, align 8, !tbaa !229
  %i.tz = sext i32 %i.ty to i64
  %i.ua = sub nsw i64 %i.tx, %i.tz
  %i.ub = sitofp i64 %i.ua to double
  %i.uc = fmul double %.5.i.i, %i.ub
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %cellOverlap.exit.thread.i
  %.6.i.i = phi double [ %i.uc, %bb.ae ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.ud = load i32, ptr %i.kx, align 4, !tbaa !229
  %i.ue = sext i32 %i.ud to i64
  %i.uf = load i32, ptr %i.ky, align 8, !tbaa !229
  %i.ug = sext i32 %i.uf to i64
  %i.uh = sub nsw i64 %i.ue, %i.ug
  %i.ui = sitofp i64 %i.uh to double
  %i.uj = fmul double %.6.i.i, %i.ui
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab, %cellOverlap.exit.i.thread
  %.3.i.i = phi double [ 1.000000e+00, %cellOverlap.exit.i.thread ], [ %i.th, %bb.ab ]
  %i.uk = load float, ptr %i.kz, align 4, !tbaa !229
  %i.ul = load float, ptr %i.kq, align 8, !tbaa !229
  %i.um = fsub float %i.uk, %i.ul
  %i.un = fpext float %i.um to double
  %i.uo = fmul double %.3.i.i, %i.un
  switch i8 %i.mo, label %bb.al [
    i8 5, label %bb.ah
    i8 4, label %bb.ai
    i8 3, label %bb.aj
    i8 2, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.up = load float, ptr %i.la, align 4, !tbaa !229
  %i.uq = load float, ptr %i.lb, align 8, !tbaa !229
  %i.ur = fsub float %i.up, %i.uq
  %i.us = fpext float %i.ur to double
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i179.i = phi double [ %i.us, %bb.ah ], [ 1.000000e+00, %bb.ag ]
  %i.ut = load float, ptr %i.lc, align 4, !tbaa !229
  %i.uu = load float, ptr %i.ld, align 8, !tbaa !229
  %i.uv = fsub float %i.ut, %i.uu
  %i.uw = fpext float %i.uv to double
  %i.ux = fmul double %.0.i179.i, %i.uw
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.1.i178.i = phi double [ %i.ux, %bb.ai ], [ 1.000000e+00, %bb.ag ]
  %i.uy = load float, ptr %i.le, align 4, !tbaa !229
  %i.uz = load float, ptr %i.lf, align 8, !tbaa !229
  %i.va = fsub float %i.uy, %i.uz
  %i.vb = fpext float %i.va to double
  %i.vc = fmul double %.1.i178.i, %i.vb
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.2.i176.i = phi double [ %i.vc, %bb.aj ], [ 1.000000e+00, %bb.ag ]
  %i.vd = load float, ptr %i.lg, align 4, !tbaa !229
  %i.ve = load float, ptr %i.lh, align 8, !tbaa !229
  %i.vf = fsub float %i.vd, %i.ve
  %i.vg = fpext float %i.vf to double
  %i.vh = fmul double %.2.i176.i, %i.vg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.3.i177.i = phi double [ 1.000000e+00, %bb.ag ], [ %i.vh, %bb.ak ]
  %i.vi = load float, ptr %i.li, align 4, !tbaa !229
  %i.vj = load float, ptr %i.kp, align 8, !tbaa !229
  %i.vk = fsub float %i.vi, %i.vj
  %i.vl = fpext float %i.vk to double
  %i.vm = fmul double %.3.i177.i, %i.vl
  br label %cellArea.exit180.i

bb.am:                                            ; preds = %bb.af, %cellOverlap.exit.thread.i
  %.7.i.i = phi double [ 1.000000e+00, %cellOverlap.exit.thread.i ], [ %i.uj, %bb.af ]
  %i.vn = load i32, ptr %i.kz, align 4, !tbaa !229
  %i.vo = sext i32 %i.vn to i64
  %i.vp = load i32, ptr %i.kq, align 8, !tbaa !229
  %i.vq = sext i32 %i.vp to i64
  %i.vr = sub nsw i64 %i.vo, %i.vq
  %i.vs = sitofp i64 %i.vr to double
  %i.vt = fmul double %.7.i.i, %i.vs
  switch i8 %i.mo, label %bb.ar [
    i8 5, label %bb.an
    i8 4, label %bb.ao
    i8 3, label %bb.ap
    i8 2, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.vu = load i32, ptr %i.la, align 4, !tbaa !229
  %i.vv = sext i32 %i.vu to i64
  %i.vw = load i32, ptr %i.lb, align 8, !tbaa !229
  %i.vx = sext i32 %i.vw to i64
  %i.vy = sub nsw i64 %i.vv, %i.vx
  %i.vz = sitofp i64 %i.vy to double
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.4.i175.i = phi double [ %i.vz, %bb.an ], [ 1.000000e+00, %bb.am ]
  %i.wa = load i32, ptr %i.lc, align 4, !tbaa !229
  %i.wb = sext i32 %i.wa to i64
  %i.wc = load i32, ptr %i.ld, align 8, !tbaa !229
  %i.wd = sext i32 %i.wc to i64
  %i.we = sub nsw i64 %i.wb, %i.wd
  %i.wf = sitofp i64 %i.we to double
  %i.wg = fmul nnan double %.4.i175.i, %i.wf
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.5.i174.i = phi double [ %i.wg, %bb.ao ], [ 1.000000e+00, %bb.am ]
  %i.wh = load i32, ptr %i.le, align 4, !tbaa !229
  %i.wi = sext i32 %i.wh to i64
  %i.wj = load i32, ptr %i.lf, align 8, !tbaa !229
  %i.wk = sext i32 %i.wj to i64
  %i.wl = sub nsw i64 %i.wi, %i.wk
  %i.wm = sitofp i64 %i.wl to double
  %i.wn = fmul double %.5.i174.i, %i.wm
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.6.i171.i = phi double [ %i.wn, %bb.ap ], [ 1.000000e+00, %bb.am ]
  %i.wo = load i32, ptr %i.lg, align 4, !tbaa !229
  %i.wp = sext i32 %i.wo to i64
  %i.wq = load i32, ptr %i.lh, align 8, !tbaa !229
  %i.wr = sext i32 %i.wq to i64
  %i.ws = sub nsw i64 %i.wp, %i.wr
  %i.wt = sitofp i64 %i.ws to double
  %i.wu = fmul double %.6.i171.i, %i.wt
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.am
  %.7.i172.i = phi double [ 1.000000e+00, %bb.am ], [ %i.wu, %bb.aq ]
  %i.wv = load i32, ptr %i.li, align 4, !tbaa !229
  %i.ww = sext i32 %i.wv to i64
  %i.wx = load i32, ptr %i.kp, align 8, !tbaa !229
  %i.wy = sext i32 %i.wx to i64
  %i.wz = sub nsw i64 %i.ww, %i.wy
  %i.xa = sitofp i64 %i.wz to double
  %i.xb = fmul double %.7.i172.i, %i.xa
  br label %cellArea.exit180.i

cellArea.exit180.i:                               ; preds = %bb.ar, %bb.al
  %.us-phi.i169291.i = phi double [ %.us-phi.i169.i76, %bb.al ], [ %.us-phi.i169292.i, %bb.ar ] ; 3 uses
  %i.xc = phi double [ %i.so, %bb.al ], [ %i.ti, %bb.ar ] ; 3 uses
  %.8.i195.i = phi double [ %i.uo, %bb.al ], [ %i.vt, %bb.ar ]
  %.8.i173.i = phi double [ %i.vm, %bb.al ], [ %i.xb, %bb.ar ]
  %i.xd = fadd double %.8.i195.i, %.8.i173.i      ; 2 uses
  %i.xe = icmp eq i64 %indvars.iv257.i, %8
  %i.xf = fcmp olt double %.us-phi.i169291.i, %.0126215.i
  %or.cond.i42 = select i1 %i.xe, i1 true, i1 %i.xf
  br i1 %or.cond.i42, label %bb.at, label %bb.as

bb.as:                                            ; preds = %cellArea.exit180.i
  %i.xg = fcmp oeq double %.us-phi.i169291.i, %.0126215.i
  %i.xh = fcmp olt double %i.xd, %.0124216.i
  %or.cond142.i = select i1 %i.xg, i1 %i.xh, i1 false
  br i1 %or.cond142.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %cellArea.exit180.i
  %i.xi = trunc nsw i64 %indvars.iv257.i to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1127.i43 = phi double [ %.us-phi.i169291.i, %bb.at ], [ %.0126215.i, %bb.as ]
  %.1125.i = phi double [ %i.xd, %bb.at ], [ %.0124216.i, %bb.as ]
  %.1.i44 = phi i32 [ %i.xi, %bb.at ], [ %.0123217.i, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  %indvars.iv.next258.i = add nsw i64 %indvars.iv257.i, 1
  %.not141.not.i = icmp slt i64 %indvars.iv257.i, %i.lp
  br i1 %.not141.not.i, label %bb.t, label %._crit_edge221.i, !llvm.loop !8063

._crit_edge221.i:                                 ; preds = %bb.au
  %i.xj = icmp eq i64 %indvars.iv261.i, 0
  %i.xk = fcmp olt double %i.xc, %.0130227.i
  %or.cond143.i = select i1 %i.xj, i1 true, i1 %i.xk ; 3 uses
  %i.xl = trunc nuw nsw i64 %indvars.iv261.i to i32
  %.1135.i = select i1 %or.cond143.i, i32 %i.xl, i32 %.0134225.i ; 2 uses
  %.1133.i = select i1 %or.cond143.i, i32 %.1.i44, i32 %.0132226.i ; 2 uses
  %.1131.i = select i1 %or.cond143.i, double %i.xc, double %.0130227.i
  %indvars.iv.next262.i = add nuw nsw i64 %indvars.iv261.i, 1 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %indvars.iv.next262.i, %i.mp
  br i1 %exitcond265.not.i, label %._crit_edge229.loopexit242.i, label %.lr.ph220.i, !llvm.loop !8064

._crit_edge229.loopexit242.i:                     ; preds = %._crit_edge221.i
  %i.xm = zext nneg i32 %.1135.i to i64
  %i.xn = sext i32 %.1133.i to i64
  br label %._crit_edge229.i

._crit_edge229.i:                                 ; preds = %.lr.ph228.i, %._crit_edge229.loopexit242.i, %.preheader.i, %bb.s
  %.0134.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.s ], [ %i.xm, %._crit_edge229.loopexit242.i ], [ 0, %.lr.ph228.i ]
  %.0132.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.s ], [ %i.xn, %._crit_edge229.loopexit242.i ], [ 0, %.lr.ph228.i ] ; 2 uses
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.0134.lcssa.i ; 2 uses
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !350 ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !24
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.xr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.xs, i64 48, i1 false)
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %.0132.lcssa.i
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !24
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.xv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.xw, i64 48, i1 false)
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  br label %bb.av

bb.av:                                            ; preds = %cellUnion.exit189.i, %._crit_edge229.i
  %indvars.iv268.i = phi i64 [ 0, %._crit_edge229.i ], [ %indvars.iv.next269.i, %cellUnion.exit189.i ] ; 3 uses
  %i.xz = icmp slt i64 %indvars.iv268.i, %.0132.lcssa.i ; 2 uses
  %i.ya = select i1 %i.xz, ptr %.0119.i, ptr %.0116.i ; 2 uses
  %i.yb = load ptr, ptr %i.xo, align 8, !tbaa !350
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %indvars.iv268.i
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !24
  %i.ye = sext i32 %i.yd to i64
  %i.yf = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.ye ; 3 uses
  %i.yg = load i32, ptr %i.q, align 8, !tbaa !7979
  %i.yh = add nsw i32 %i.yg, -4
  %i.yi = load i8, ptr %i.t, align 1, !tbaa !7930
  %i.yj = zext i8 %i.yi to i32                    ; 2 uses
  %i.yk = sdiv i32 %i.yh, %i.yj
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ya, i64 24 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !7928 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 2
  %.val.i.i45 = load i8, ptr %i.yn, align 1, !tbaa !229
  %i.yo = getelementptr i8, ptr %i.ym, i64 3
  %.val13.i.i = load i8, ptr %i.yo, align 1, !tbaa !229
  %i.yp = zext i8 %.val.i.i45 to i32
  %i.yq = shl nuw nsw i32 %i.yp, 8
  %i.yr = zext i8 %.val13.i.i to i32
  %i.ys = or disjoint i32 %i.yq, %i.yr            ; 3 uses
  %i.yt = icmp slt i32 %i.ys, %i.yk
  br i1 %i.yt, label %bb.aw, label %nodeInsertCell.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.yu = mul nuw nsw i32 %i.ys, %i.yj
  %i.yv = zext nneg i32 %i.yu to i64
  %i.yw = getelementptr i8, ptr %i.ym, i64 %i.yv  ; 9 uses
  %i.yx = getelementptr i8, ptr %i.yw, i64 4
  %i.yy = load i64, ptr %i.yf, align 8, !tbaa !7963 ; 8 uses
  %i.yz = lshr i64 %i.yy, 56
  %i.za = trunc nuw i64 %i.yz to i8
  store i8 %i.za, ptr %i.yx, align 1, !tbaa !229
  %i.zb = lshr i64 %i.yy, 48
  %i.zc = trunc i64 %i.zb to i8
  %i.zd = getelementptr i8, ptr %i.yw, i64 5
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !229
  %i.ze = lshr i64 %i.yy, 40
  %i.zf = trunc i64 %i.ze to i8
  %i.zg = getelementptr i8, ptr %i.yw, i64 6
  store i8 %i.zf, ptr %i.zg, align 1, !tbaa !229
  %i.zh = lshr i64 %i.yy, 32
  %i.zi = trunc i64 %i.zh to i8
  %i.zj = getelementptr i8, ptr %i.yw, i64 7
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !229
  %i.zk = lshr i64 %i.yy, 24
  %i.zl = trunc i64 %i.zk to i8
  %i.zm = getelementptr i8, ptr %i.yw, i64 8
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !229
  %i.zn = lshr i64 %i.yy, 16
  %i.zo = trunc i64 %i.zn to i8
  %i.zp = getelementptr i8, ptr %i.yw, i64 9
  store i8 %i.zo, ptr %i.zp, align 1, !tbaa !229
  %i.zq = lshr i64 %i.yy, 8
  %i.zr = trunc i64 %i.zq to i8
  %i.zs = getelementptr i8, ptr %i.yw, i64 10
  store i8 %i.zr, ptr %i.zs, align 1, !tbaa !229
  %i.zt = trunc i64 %i.yy to i8
  %i.zu = getelementptr i8, ptr %i.yw, i64 11
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !229
  %i.zv = load i8, ptr %i.xy, align 1, !tbaa !7907
  %.not.i.i.i = icmp eq i8 %i.zv, 0
  br i1 %.not.i.i.i, label %nodeOverwriteCell.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aw
  %i.zw = getelementptr i8, ptr %i.yw, i64 12
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ax ] ; 2 uses
  %.015.i.i.i = phi ptr [ %i.zw, %.lr.ph.i.i.i ], [ %i.aaj, %bb.ax ] ; 5 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %indvars.iv.i.i.i
  %.val.i.i.i = load i32, ptr %i.zy, align 4, !tbaa !229 ; 4 uses
  %i.zz = lshr i32 %.val.i.i.i, 24
  %i.aaa = trunc nuw i32 %i.zz to i8
  store i8 %i.aaa, ptr %.015.i.i.i, align 1, !tbaa !229
  %i.aab = lshr i32 %.val.i.i.i, 16
  %i.aac = trunc i32 %i.aab to i8
  %i.aad = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !229
  %i.aae = lshr i32 %.val.i.i.i, 8
  %i.aaf = trunc i32 %i.aae to i8
  %i.aag = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 2
  store i8 %i.aaf, ptr %i.aag, align 1, !tbaa !229
  %i.aah = trunc i32 %.val.i.i.i to i8
  %i.aai = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 3
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !229
  %i.aaj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aak = load i8, ptr %i.xy, align 1, !tbaa !7907
  %i.aal = zext i8 %i.aak to i64
  %i.aam = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.aal
  br i1 %i.aam, label %bb.ax, label %nodeOverwriteCell.exit.i.i, !llvm.loop !8043

nodeOverwriteCell.exit.i.i:                       ; preds = %bb.ax, %bb.aw
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ya, i64 20
  %i.aao = load ptr, ptr %i.yl, align 8, !tbaa !7928 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 2
  %i.aaq = add nuw nsw i32 %i.ys, 1               ; 2 uses
  %i.aar = lshr i32 %i.aaq, 8
  %i.aas = trunc i32 %i.aar to i8
  store i8 %i.aas, ptr %i.aap, align 1, !tbaa !229
  %i.aat = trunc i32 %i.aaq to i8
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 3
  store i8 %i.aat, ptr %i.aau, align 1, !tbaa !229
  store i32 1, ptr %i.aan, align 4, !tbaa !8008
  br label %nodeInsertCell.exit.i

nodeInsertCell.exit.i:                            ; preds = %nodeOverwriteCell.exit.i.i, %bb.av
  %i.aav = load i8, ptr %i.xx, align 2, !tbaa !7958
  %i.aaw = icmp eq i8 %i.aav, 0
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.xz, ptr %6, ptr %7
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8 ; 5 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.yf, i64 8 ; 5 uses
  %i.aay = load i8, ptr %i.xy, align 1, !tbaa !7907 ; 2 uses
  %i.aaz = zext i8 %i.aay to i64                  ; 3 uses
  %i.aba = tail call i64 @llvm.umax.i64(i64 %i.aaz, i64 2)
  %i.abb = add nsw i64 %i.aba, -1
  %i.abc = lshr i64 %i.abb, 1                     ; 2 uses
  %i.abd = add nuw nsw i64 %i.abc, 1              ; 4 uses
  br i1 %i.aaw, label %.preheader.i185.i.preheader, label %.preheader57.i181.i.preheader

.preheader57.i181.i.preheader:                    ; preds = %nodeInsertCell.exit.i
  %min.iters.check317 = icmp eq i64 %i.abc, 0
  br i1 %min.iters.check317, label %.preheader57.i181.i.preheader352, label %vector.ph318

vector.ph318:                                     ; preds = %.preheader57.i181.i.preheader
  %n.vec319 = and i64 %i.abd, 9223372036854775806 ; 3 uses
  %i.abe = shl nuw i64 %n.vec319, 1
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next329, %vector.body320 ] ; 2 uses
  %i.abf = shl nuw i64 %index321, 1               ; 2 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.abf ; 2 uses
  %wide.vec322 = load <4 x i32>, ptr %i.abg, align 8, !tbaa !229 ; 2 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.abf
  %wide.vec325 = load <4 x i32>, ptr %i.abh, align 4, !tbaa !229 ; 2 uses
  %i.abi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec322, <4 x i32> %wide.vec325)
  %i.abj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec322, <4 x i32> %wide.vec325)
  %interleaved.vec328 = shufflevector <4 x i32> %i.abi, <4 x i32> %i.abj, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec328, ptr %i.abg, align 8, !tbaa !229
  %index.next329 = add nuw i64 %index321, 2       ; 2 uses
  %i.abk = icmp eq i64 %index.next329, %n.vec319
  br i1 %i.abk, label %middle.block330, label %vector.body320, !llvm.loop !8065

middle.block330:                                  ; preds = %vector.body320
  %cmp.n331 = icmp eq i64 %i.abd, %n.vec319
  br i1 %cmp.n331, label %cellUnion.exit189.i, label %.preheader57.i181.i.preheader352

.preheader57.i181.i.preheader352:                 ; preds = %.preheader57.i181.i.preheader, %middle.block330
  %indvars.iv.i182.i.ph = phi i64 [ 0, %.preheader57.i181.i.preheader ], [ %i.abe, %middle.block330 ]
  br label %.preheader57.i181.i

.preheader.i185.i.preheader:                      ; preds = %nodeInsertCell.exit.i
  %min.iters.check300 = icmp ult i8 %i.aay, 7
  br i1 %min.iters.check300, label %.preheader.i185.i.preheader351, label %vector.ph301

vector.ph301:                                     ; preds = %.preheader.i185.i.preheader
  %n.vec302 = and i64 %i.abd, 9223372036854775804 ; 3 uses
end_hunk_3
