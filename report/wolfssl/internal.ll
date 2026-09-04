Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@BuildMessage:bb.a
  store i32 5, ptr %i.v, align 4, !tbaa !460
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store i32 5, ptr %i.w, align 16, !tbaa !461
  %i.x = trunc i32 %5 to i8                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 5 uses
  store i8 %i.x, ptr %i.y, align 4, !tbaa !462
  store i8 1, ptr %i.s, align 1, !tbaa !463
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !105
  %i.ab = zext i8 %i.aa to i32                    ; 4 uses
  store i32 %i.ab, ptr %10, align 16, !tbaa !464
  %i.ac = add i32 %i.t, %i.ab                     ; 5 uses
  store i32 %i.ac, ptr %i.u, align 4, !tbaa !465
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 739 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !183
  switch i8 %i.ae, label %bb.p [
    i8 1, label %bb.j
    i8 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !264 ; 3 uses
  %i.ah = zext i16 %i.ag to i32                   ; 5 uses
  %i.ai = icmp eq i16 %i.ag, 0
  br i1 %i.ai, label %.thread240, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = and i64 %i.i, 32768
  %.not213 = icmp eq i64 %i.aj, 0
  br i1 %.not213, label %.thread235, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %i.ah, ptr %i.ak, align 8, !tbaa !466
  %i.al = add i32 %i.ac, %i.ah                    ; 2 uses
  store i32 %i.al, ptr %i.u, align 4, !tbaa !465
  %i.am = icmp ugt i16 %i.ag, 16
  br i1 %i.am, label %.thread240, label %.thread235

.thread235:                                       ; preds = %bb.l, %bb.k
  %i.an = phi i32 [ %i.ah, %bb.l ], [ 0, %bb.k ]
  %i.ao = phi i32 [ %i.al, %bb.l ], [ %i.ac, %bb.k ] ; 2 uses
  %i.ap = add i32 %i.ao, 1
  %i.aq = and i64 %i.i, 72057594037927936
  %.not214 = icmp eq i64 %i.aq, 0
  %i.ar = select i1 %.not214, i32 0, i32 %i.ab
  %spec.select269 = sub i32 %i.ao, %i.ar
  %.pn = add i32 %spec.select269, -4
  %.sink = urem i32 %.pn, %i.ah                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.not215 = icmp eq i32 %.sink, 0
  %i.at = sub nsw i32 %i.ah, %.sink
  %storemerge = select i1 %.not215, i32 0, i32 %i.at ; 2 uses
  store i32 %storemerge, ptr %i.as, align 8, !tbaa !467
  %i.au = add i32 %storemerge, %i.ap
  br label %.sink.split

bb.m:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !265
  %.not216 = icmp eq i8 %i.aw, 9
  br i1 %.not216, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 8, ptr %i.ax, align 8, !tbaa !466
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = phi i32 [ 8, %bb.n ], [ 0, %bb.m ]      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !254
  %i.bb = zext i16 %i.ba to i32
  %i.bc = sub nsw i32 %i.ay, %i.ab
  %i.bd = add nsw i32 %i.bc, %i.bb
  %i.be = add i32 %i.bd, %i.ac
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %.thread235
  %.sink271 = phi i32 [ %i.au, %.thread235 ], [ %i.be, %bb.o ] ; 2 uses
  %.ph = phi i32 [ %i.an, %.thread235 ], [ %i.ay, %bb.o ]
  store i32 %.sink271, ptr %i.u, align 4, !tbaa !465
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.i
  %i.bf = phi i32 [ 0, %bb.i ], [ %.ph, %.sink.split ] ; 2 uses
  %i.bg = phi i32 [ %i.ac, %bb.i ], [ %.sink271, %.sink.split ] ; 3 uses
  br i1 %.not, label %bb.q, label %.thread245

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp ugt i32 %i.bg, %2
  br i1 %i.bh, label %.thread240, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %.not217 = icmp eq i32 %i.bf, 0
  br i1 %.not217, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.bj, ptr %i.bk, align 16, !tbaa !271
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !106
  %i.bn = call i32 @wc_RNG_GenerateBlock(ptr noundef %i.bm, ptr noundef nonnull %i.bj, i32 noundef %i.bf) #27 ; 2 uses
  %.not218 = icmp eq i32 %i.bn, 0
  br i1 %.not218, label %._crit_edge, label %.thread240

._crit_edge:                                      ; preds = %bb.s
  %.pre = load i32, ptr %i.u, align 4, !tbaa !465
  %.pre251 = load i32, ptr %i.w, align 16, !tbaa !461
  %.pre252 = load i8, ptr %i.y, align 4, !tbaa !462
  %.pre253 = load i32, ptr %i.bi, align 8, !tbaa !466
  %.pre254.pre = load i32, ptr %i.v, align 4, !tbaa !460
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.r
  %.pre254 = phi i32 [ %.pre254.pre, %._crit_edge ], [ 5, %bb.r ] ; 3 uses
  %i.bo = phi i32 [ %.pre253, %._crit_edge ], [ 0, %bb.r ] ; 5 uses
  %i.bp = phi i8 [ %.pre252, %._crit_edge ], [ %i.x, %bb.r ]
  %i.bq = phi i32 [ %.pre251, %._crit_edge ], [ 5, %bb.r ] ; 2 uses
  %i.br = phi i32 [ %.pre, %._crit_edge ], [ %i.bg, %bb.r ]
  %i.bs = sub i32 %i.br, %i.bq                    ; 2 uses
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 3 uses
  store i16 %i.bt, ptr %i.bu, align 4, !tbaa !468
  %i.bv = and i32 %i.bs, 65535
  call fastcc void @AddRecordHeader(ptr noundef %1, i32 noundef %i.bv, i8 noundef zeroext %i.bp, ptr noundef nonnull %0)
  %.not219 = icmp eq i32 %i.bo, 0
  br i1 %.not219, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = zext i32 %.pre254 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ca = icmp ugt i32 %i.bo, 15
  %i.cb = sext i1 %i.ca to i32                    ; 2 uses
  store volatile i32 %i.cb, ptr %i.b, align 4, !tbaa !56
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.b, align 4, !tbaa !56
  %i.cc = xor i32 %.0..0..0..0..0..0..i, -1
  %i.cd = and i32 %i.bo, %i.cc
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.b, align 4, !tbaa !56
  %i.ce = and i32 %.0..0..0..0..0..0.2.i, 16
  %i.cf = or i32 %i.ce, %i.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cg = zext i32 %i.cf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bz, i64 %i.cg, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 %i.cb, ptr %i.a, align 4, !tbaa !56
  %.0..0..0..0..0..0..i231 = load volatile i32, ptr %i.a, align 4, !tbaa !56
  %i.ch = xor i32 %.0..0..0..0..0..0..i231, -1
  %i.ci = and i32 %i.bo, %i.ch
  %.0..0..0..0..0..0.2.i232 = load volatile i32, ptr %i.a, align 4, !tbaa !56
  %i.cj = and i32 %.0..0..0..0..0..0.2.i232, 16
  %i.ck = or i32 %i.cj, %i.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cl = add i32 %i.ck, %.pre254
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = phi i32 [ %i.cl, %bb.u ], [ %.pre254, %bb.t ] ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cp = sext i32 %4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %3, i64 %i.cp, i1 false)
  %i.cq = add i32 %i.cm, %4
  store i32 %i.cq, ptr %i.v, align 4, !tbaa !460
  store i8 2, ptr %i.s, align 1, !tbaa !463
  %i.cr = icmp eq i32 %5, 22
  %i.cs = icmp ne i32 %6, 0
  %or.cond5 = and i1 %i.cr, %i.cs
  br i1 %or.cond5, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ct = add i32 %i.bq, %4
  %i.cu = call i32 @HashOutput(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ct, i32 noundef %i.bo) ; 2 uses
  %.not220 = icmp eq i32 %i.cu, 0
  br i1 %.not220, label %bb.x, label %.thread240

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cv = load i8, ptr %i.ad, align 1, !tbaa !183 ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %iter.check, label %.thread238

iter.check:                                       ; preds = %bb.x
  %i.cx = load i64, ptr %i.h, align 8
  %i.cy = and i64 %i.cx, 72057594037927936
  %.not221 = icmp eq i64 %i.cy, 0
  %i.cz = load i32, ptr %i.v, align 4
  %i.da = load i32, ptr %10, align 16
  %i.db = select i1 %.not221, i32 %i.da, i32 0
  %.0195 = add i32 %i.db, %i.cz                   ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !467 ; 3 uses
  %i.de = trunc i32 %i.dd to i8                   ; 7 uses
  %i.df = add i32 %i.dd, 1                        ; 6 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.df, i32 1) ; 5 uses
  %min.iters.check = icmp ult i32 %i.df, 8
  %i.dg = xor i32 %.0195, -1
  %i.dh = icmp ugt i32 %i.dd, %i.dg
  %or.cond286 = select i1 %min.iters.check, i1 true, i1 %i.dh
  br i1 %or.cond286, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check276 = icmp ult i32 %i.df, 32
  br i1 %min.iters.check276, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.di = and i32 %umax, 24
  %n.vec = and i32 %umax, -32                     ; 5 uses
  %i.dj = add i32 %.0195, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.de, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = add i32 %.0195, %index
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.dm, align 1, !tbaa !52
  store <16 x i8> %broadcast.splat, ptr %i.dn, align 1, !tbaa !52
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.do = icmp eq i32 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !456

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.df, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.di, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !469

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec277 = and i32 %umax, -8                   ; 4 uses
  %i.dp = add i32 %.0195, %n.vec277
  %broadcast.splatinsert278 = insertelement <8 x i8> poison, i8 %i.de, i64 0
  %broadcast.splat279 = shufflevector <8 x i8> %broadcast.splatinsert278, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index280 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next281, %vec.epilog.vector.body ] ; 2 uses
  %i.dq = add i32 %.0195, %index280
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.dr
  store <8 x i8> %broadcast.splat279, ptr %i.ds, align 1, !tbaa !52
  %index.next281 = add nuw i32 %index280, 8       ; 2 uses
  %i.dt = icmp eq i32 %index.next281, %n.vec277
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !457

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n282 = icmp eq i32 %i.df, %n.vec277
  br i1 %cmp.n282, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0250.ph = phi i32 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec277, %vec.epilog.middle.block ] ; 3 uses
  %.1249.ph = phi i32 [ %.0195, %iter.check ], [ %i.dj, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i32 %umax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0250.prol = phi i32 [ %i.dx, %vec.epilog.scalar.ph.prol ], [ %.0250.ph, %vec.epilog.scalar.ph.preheader ]
  %.1249.prol = phi i32 [ %i.du, %vec.epilog.scalar.ph.prol ], [ %.1249.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.du = add i32 %.1249.prol, 1                  ; 2 uses
  %i.dv = zext i32 %.1249.prol to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  store i8 %i.de, ptr %i.dw, align 1, !tbaa !52
  %i.dx = add nuw i32 %.0250.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !458

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0250.unr = phi i32 [ %.0250.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dx, %vec.epilog.scalar.ph.prol ]
  %.1249.unr = phi i32 [ %.1249.ph, %vec.epilog.scalar.ph.preheader ], [ %i.du, %vec.epilog.scalar.ph.prol ]
  %i.dy = sub i32 %.0250.ph, %umax
  %i.dz = icmp ugt i32 %i.dy, -4
  br i1 %i.dz, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0250 = phi i32 [ %i.em, %vec.epilog.scalar.ph ], [ %.0250.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.1249 = phi i32 [ %i.ej, %vec.epilog.scalar.ph ], [ %.1249.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ea = add i32 %.1249, 1
  %i.eb = zext i32 %.1249 to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %i.eb
  store i8 %i.de, ptr %i.ec, align 1, !tbaa !52
  %i.ed = add i32 %.1249, 2
  %i.ee = zext i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %i.ee
  store i8 %i.de, ptr %i.ef, align 1, !tbaa !52
  %i.eg = add i32 %.1249, 3
  %i.eh = zext i32 %i.ed to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh
  store i8 %i.de, ptr %i.ei, align 1, !tbaa !52
  %i.ej = add i32 %.1249, 4
  %i.ek = zext i32 %i.eg to i64
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  store i8 %i.de, ptr %i.el, align 1, !tbaa !52
  %i.em = add nuw i32 %.0250, 4                   ; 2 uses
  %exitcond.3 = icmp eq i32 %i.df, %i.em
  br i1 %exitcond.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !459

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre255 = load i8, ptr %i.ad, align 1, !tbaa !183
  br label %.thread238

.thread238:                                       ; preds = %bb.x, %.loopexit
  %i.en = phi i8 [ %.pre255, %.loopexit ], [ %i.cv, %bb.x ]
  store i8 3, ptr %i.s, align 1, !tbaa !463
  %.not223 = icmp eq i8 %i.en, 2
  br i1 %.not223, label %.thread, label %bb.y

bb.y:                                             ; preds = %.thread238
  %i.eo = load i64, ptr %i.h, align 8
  %i.ep = and i64 %i.eo, 72057594037927936
  %.not224 = icmp eq i64 %i.ep, 0
  br i1 %.not224, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.er = load ptr, ptr %i.eq, align 16, !tbaa !150
  %i.es = load i32, ptr %i.v, align 4, !tbaa !460
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.et
  %i.ev = load i32, ptr %i.w, align 16, !tbaa !461
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ey = load i32, ptr %i.bi, align 8, !tbaa !466
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez
  %i.fb = load i8, ptr %i.y, align 4, !tbaa !462
  %i.fc = zext i8 %i.fb to i32
  %i.fd = call i32 %i.er(ptr noundef nonnull %0, ptr noundef %i.eu, ptr noundef %i.fa, i32 noundef %4, i32 noundef -1, i32 noundef %i.fc, i32 noundef 0, i32 noundef %9) #27 ; 2 uses
  %.not225 = icmp eq i32 %i.fd, 0
  br i1 %.not225, label %.thread, label %.thread240

.thread:                                          ; preds = %.thread238, %bb.y, %bb.z
  store i8 4, ptr %i.s, align 1, !tbaa !463
  %i.fe = load i64, ptr %i.h, align 8
  %i.ff = and i64 %i.fe, 72057594037927936
  %.not226 = icmp eq i64 %i.ff, 0
  %i.fg = load i32, ptr %i.w, align 16, !tbaa !461
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %i.fh ; 2 uses
  %i.fj = load i16, ptr %i.bu, align 4, !tbaa !468
  %i.fk = load i32, ptr %10, align 16
  %i.fl = trunc i32 %i.fk to i16
  %i.fm = select i1 %.not226, i16 0, i16 %i.fl
  %.sink272 = sub i16 %i.fj, %i.fm
  %i.fn = load i8, ptr %i.y, align 4, !tbaa !462
  %i.fo = call fastcc i32 @Encrypt(ptr noundef %0, ptr noundef %i.fi, ptr noundef %i.fi, i16 noundef zeroext %.sink272, i8 noundef zeroext %i.fn) ; 2 uses
  %.not227 = icmp eq i32 %i.fo, 0
  br i1 %.not227, label %bb.aa, label %.thread240.sink.split

.thread240.sink.split:                            ; preds = %.thread
  %i.fp = load i64, ptr %i.h, align 8
  %i.fq = and i64 %i.fp, 72057594037927936
  %.not229 = icmp eq i64 %i.fq, 0
  %i.fr = load i32, ptr %i.w, align 16, !tbaa !461
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %i.fs
  %i.fu = load i16, ptr %i.bu, align 4, !tbaa !468
  %i.fv = load i32, ptr %10, align 16
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = select i1 %.not229, i16 0, i16 %i.fw
  %.sink275 = sub i16 %i.fu, %i.fx
  %i.fy = zext i16 %.sink275 to i64
  call fastcc void @ForceZero(ptr noundef %i.ft, i64 noundef %i.fy)
  br label %.thread240

bb.aa:                                            ; preds = %.thread
  store i8 5, ptr %i.s, align 1, !tbaa !463
  %i.fz = load i64, ptr %i.h, align 8
  %i.ga = and i64 %i.fz, 72057594037927936
  %.not228 = icmp eq i64 %i.ga, 0
  br i1 %.not228, label %..thread245_crit_edge, label %bb.ab

..thread245_crit_edge:                            ; preds = %bb.aa
  %.pre256 = load i32, ptr %i.u, align 4
  br label %.thread245

bb.ab:                                            ; preds = %bb.aa
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !150
  %i.gd = load i32, ptr %i.v, align 4, !tbaa !460
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !467 ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  %i.gl = load i32, ptr %i.w, align 16, !tbaa !461
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %i.gm
  %i.go = load i32, ptr %i.bi, align 8, !tbaa !466
  %i.gp = add i32 %4, 1
  %i.gq = add i32 %i.gp, %i.gh
  %i.gr = add i32 %i.gq, %i.go
  %i.gs = load i8, ptr %i.y, align 4, !tbaa !462
  %i.gt = zext i8 %i.gs to i32
  %i.gu = call i32 %i.gc(ptr noundef nonnull %0, ptr noundef nonnull %i.gk, ptr noundef %i.gn, i32 noundef %i.gr, i32 noundef -1, i32 noundef %i.gt, i32 noundef 0, i32 noundef %9) #27
  %.10.fr = freeze i32 %i.gu                      ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !463
  %i.gv = icmp eq i32 %.10.fr, 0
  %i.gw = load i32, ptr %i.u, align 4
  %spec.select = select i1 %i.gv, i32 %i.gw, i32 %.10.fr
  br label %bb.ac

.thread240:                                       ; preds = %.thread240.sink.split, %bb.q, %bb.s, %bb.w, %bb.z, %bb.j, %bb.l
  %.10.ph = phi i32 [ -192, %bb.j ], [ -132, %bb.l ], [ %i.fd, %bb.z ], [ %i.cu, %bb.w ], [ %i.bn, %bb.s ], [ -132, %bb.q ], [ %i.fo, %.thread240.sink.split ]
  store i8 0, ptr %i.s, align 1, !tbaa !463
  br label %bb.ac

.thread245:                                       ; preds = %..thread245_crit_edge, %bb.p
  %i.gx = phi i32 [ %.pre256, %..thread245_crit_edge ], [ %i.bg, %bb.p ]
  store i8 0, ptr %i.s, align 1, !tbaa !463
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread245, %.thread240
  %i.gy = phi i32 [ %.10.ph, %.thread240 ], [ %spec.select, %bb.ab ], [ %i.gx, %.thread245 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ha = load ptr, ptr %i.gz, align 16, !tbaa !271 ; 3 uses
  %.not8.i = icmp eq ptr %i.ha, null
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.not9.i = icmp eq ptr %i.ha, %i.hb
  %or.cond.i = select i1 %.not8.i, i1 true, i1 %.not9.i
  br i1 %or.cond.i, label %FreeBuildMsgArgs.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @wolfSSL_Free(ptr noundef nonnull %i.ha) #27
  br label %FreeBuildMsgArgs.exit

FreeBuildMsgArgs.exit:                            ; preds = %bb.ad, %bb.ac, %bb.h, %.critedge, %bb.c, %bb.a, %bb.e
  %.0199 = phi i32 [ -173, %bb.a ], [ -173, %bb.c ], [ %i.k, %bb.e ], [ -173, %.critedge ], [ -520, %bb.h ], [ %i.gy, %bb.ac ], [ %i.gy, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret i32 %.0199
}

declare i32 @SetKeysSide(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @BuildCertHashes(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
end_hunk_0
begin_hunk_1_@SendHandshakeMsg:bb.a
  %i.de = lshr i16 %i.da, 8
  %i.df = trunc nuw i16 %i.de to i8
  %.sink.i = select i1 %.not15.i, i8 %i.df, i8 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %.sink.i, ptr %i.dg, align 1, !tbaa !261
  %i.dh = load i64, ptr %i.as, align 16
  %i.di = and i64 %i.dh, 131072
  %.not12.i = icmp eq i64 %i.di, 0
  br i1 %.not12.i, label %bb.y, label %AddRecordHeader.exit

bb.y:                                             ; preds = %IsEncryptionOn.exit118.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.dk = lshr i32 %spec.select, 8
  %i.dl = trunc nuw nsw i32 %i.dk to i8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !52
  %i.dm = trunc i32 %spec.select to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !52
  br label %AddRecordHeader.exit

AddRecordHeader.exit:                             ; preds = %IsEncryptionOn.exit118.thread, %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 5
  %i.dp = zext nneg i32 %spec.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %i.ax, i64 %i.dp, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %AddRecordHeader.exit
  %.2 = phi i32 [ %i.cw, %bb.x ], [ %.078, %AddRecordHeader.exit ]
  %i.dq = load i32, ptr %i.an, align 16, !tbaa !188
  %i.dr = add i32 %i.dq, %.2
  store i32 %i.dr, ptr %i.an, align 16, !tbaa !188
  %i.ds = load i32, ptr %i.ae, align 16, !tbaa !275
  %i.dt = add i32 %i.ds, %spec.select
  store i32 %i.dt, ptr %i.ae, align 16, !tbaa !275
  %i.du = load i64, ptr %i.as, align 16
  %i.dv = and i64 %i.du, 137438953472
  %.not107 = icmp eq i64 %i.dv, 0
  br i1 %.not107, label %bb.aa, label %CheckAvailableSize.exit

bb.aa:                                            ; preds = %bb.z
  %i.dw = tail call i32 @SendBuffered(ptr noundef nonnull %0)
  br label %CheckAvailableSize.exit

CheckAvailableSize.exit:                          ; preds = %bb.z, %bb.aa
  %.4 = phi i32 [ 0, %bb.z ], [ %i.dw, %bb.aa ]   ; 2 uses
  %.not108 = icmp eq i32 %.4, 0
  br i1 %.not108, label %bb.j, label %HashRaw.exit.thread, !llvm.loop !500

bb.ab:                                            ; preds = %bb.j
  store i32 0, ptr %i.ae, align 16, !tbaa !275
  store i8 0, ptr %i.k, align 8, !tbaa !269
  br label %HashRaw.exit.thread

HashRaw.exit.thread:                              ; preds = %bb.p, %bb.o, %bb.v, %bb.x, %CheckAvailableSize.exit, %bb.i, %bb.h, %IsAtLeastTLSv1_2.exit.i, %bb.e, %bb.c, %bb.a, %bb.ab
  %.488 = phi i32 [ -173, %bb.c ], [ -173, %bb.a ], [ -173, %bb.e ], [ %i.x, %IsAtLeastTLSv1_2.exit.i ], [ 0, %bb.ab ], [ %i.ad, %bb.i ], [ %i.aa, %bb.h ], [ %i.cw, %bb.x ], [ -125, %bb.v ], [ -125, %bb.o ], [ -125, %bb.p ], [ %.4, %CheckAvailableSize.exit ]
  ret i32 %.488
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i16 0, 26) i16 @GetCurveByOID(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 2131000842, label %bb.f
    i32 1229554967, label %bb.b
    i32 2131000841, label %bb.c
    i32 2131000840, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i16 [ 0, %bb.e ], [ 25, %bb.d ], [ 23, %bb.b ], [ 24, %bb.c ], [ 21, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @NamedGroupIsPqc(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 512, label %bb.c
    i32 513, label %bb.c
    i32 514, label %bb.c
    i32 570, label %bb.c
    i32 572, label %bb.c
    i32 573, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @NamedGroupIsPqcHybrid(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 4587, label %bb.c
    i32 4588, label %bb.c
    i32 4589, label %bb.c
    i32 12107, label %bb.c
    i32 12108, label %bb.c
    i32 12109, label %bb.c
    i32 12214, label %bb.c
    i32 12215, label %bb.c
    i32 25498, label %bb.c
    i32 25497, label %bb.c
    i32 12090, label %bb.c
    i32 12092, label %bb.c
    i32 12093, label %bb.c
    i32 12089, label %bb.c
    i32 12176, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 114) i32 @TranslateErrorToAlert(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 -328, label %bb.i
    i32 -424, label %bb.b
    i32 -342, label %bb.b
    i32 -352, label %bb.b
    i32 -421, label %bb.b
    i32 -333, label %bb.b
    i32 -425, label %bb.b
    i32 -505, label %bb.b
    i32 -423, label %bb.b
    i32 -457, label %bb.b
    i32 -310, label %bb.c
    i32 -501, label %bb.d
    i32 -422, label %bb.d
    i32 -326, label %bb.e
    i32 -406, label %bb.f
    i32 -373, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.h ], [ 10, %bb.g ], [ 47, %bb.b ], [ 109, %bb.c ], [ 40, %bb.d ], [ 70, %bb.e ], [ 113, %bb.f ], [ 50, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -2147483648, 65534) i32 @FindSuite(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !94     ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not = icmp eq i16 %i.b, 1
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = zext i16 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 4294967295
  %3 = and i64 %i.f, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !52
  %i.i = icmp eq i8 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52
  %i.l = icmp eq i8 %i.k, %2
  br i1 %i.l, label %.loopexit.loopexit.split.loop.exit19, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next, %3
  br i1 %4, label %.lr.ph, label %.loopexit, !llvm.loop !501

.loopexit.loopexit.split.loop.exit19:             ; preds = %bb.c
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit19, %.preheader, %bb.b, %bb.a
  %.012 = phi i32 [ -371, %bb.a ], [ -371, %bb.b ], [ -501, %.preheader ], [ %i.m, %.loopexit.loopexit.split.loop.exit19 ], [ -501, %bb.d ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define i32 @SendServerHello(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.d = getelementptr i8, ptr %0, i64 1040       ; 5 uses
  %.val = load i64, ptr %i.d, align 8
  %i.e = and i64 %.val, 4
  %.not.i = icmp eq i64 %i.e, 0
  %spec.select.i = select i1 %.not.i, i32 32, i32 0 ; 8 uses
  %i.f = trunc nuw nsw i32 %spec.select.i to i8   ; 3 uses
  %i.g = trunc nuw nsw i32 %spec.select.i to i16
  %i.h = add nuw nsw i16 %i.g, 38
  store i16 %i.h, ptr %i.a, align 2, !tbaa !90
  %i.i = call i32 @TLSX_GetResponseSize(ptr noundef %0, i8 noundef zeroext 2, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %CheckAvailableSize.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load i16, ptr %i.a, align 2, !tbaa !90   ; 3 uses
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = add nuw nsw i32 %i.k, 9                  ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.n = load i8, ptr %i.m, align 4, !tbaa !51
  %.not.i132 = icmp eq i8 %i.n, 0
  br i1 %.not.i132, label %.thread, label %IsEncryptionOn.exit

IsEncryptionOn.exit:                              ; preds = %bb.b
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 297
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !52
  %.not148 = icmp eq i8 %.in.i, 0
  br i1 %.not148, label %.thread, label %bb.c

bb.c:                                             ; preds = %IsEncryptionOn.exit
  %i.o = add nuw nsw i32 %i.k, 111                ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !56
  br label %.thread

.thread:                                          ; preds = %IsEncryptionOn.exit, %bb.b, %bb.c
  %i.p = phi i32 [ %i.l, %bb.b ], [ %i.o, %bb.c ], [ %i.l, %IsEncryptionOn.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i8 1, ptr %i.q, align 8, !tbaa !269
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !144
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.u = load i32, ptr %i.t, align 16, !tbaa !188 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !189  ; 3 uses
  %i.x = add i32 %i.w, %i.u                       ; 3 uses
  %i.y = sub i32 %i.s, %i.x
  %i.z = icmp ult i32 %i.y, %i.p
  br i1 %i.z, label %bb.d, label %CheckAvailableSize.exit

bb.d:                                             ; preds = %.thread
  %i.aa = xor i32 %i.w, -1
  %.not.i.i = icmp ugt i32 %i.u, %i.aa
  %i.ab = xor i32 %i.x, -1
  %.not40.i.i = icmp ugt i32 %i.p, %i.ab
  %or.cond.i = or i1 %.not.i.i, %.not40.i.i
  br i1 %or.cond.i, label %CheckAvailableSize.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %i.x, %i.p                      ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = call ptr @wolfSSL_Malloc(i64 noundef %i.ad) #27 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %CheckAvailableSize.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.t, align 16, !tbaa !188 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not42.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !143
  %i.aj = load i32, ptr %i.v, align 4, !tbaa !189
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = zext i32 %i.ak to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %i.ai, i64 %i.al, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.an = load i8, ptr %i.am, align 4, !tbaa !176
  %.not43.i.i = icmp eq i8 %i.an, 0
  br i1 %.not43.i.i, label %CheckAvailableSize.exit.thread165, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !143 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.ap, null
  br i1 %.not44.i.i, label %CheckAvailableSize.exit.thread165, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 413
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !177
  %i.as = zext i8 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  call void @wolfSSL_Free(ptr noundef nonnull %i.au) #27
  br label %CheckAvailableSize.exit.thread165

CheckAvailableSize.exit.thread165:                ; preds = %bb.h, %bb.i, %bb.j
  store i8 1, ptr %i.am, align 4, !tbaa !176
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 413
  store i8 0, ptr %i.av, align 1, !tbaa !177
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.ae, ptr %i.aw, align 8, !tbaa !143
  store i32 %i.ac, ptr %i.r, align 8, !tbaa !144
  %.pre152 = load i32, ptr %i.v, align 4, !tbaa !189
  %.pre153 = load i32, ptr %i.t, align 16, !tbaa !188
  %.pre154 = load i16, ptr %i.a, align 2, !tbaa !90 ; 2 uses
  %.pre155 = zext i16 %.pre154 to i32
  %i.ax = zext i32 %.pre152 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ax
  %i.az = zext i32 %.pre153 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  br label %bb.k

CheckAvailableSize.exit:                          ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !143 ; 2 uses
  %i.bb = zext i32 %i.w to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bb
  %i.bd = zext i32 %i.u to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = icmp eq ptr %.pre, null
  br i1 %i.bf, label %AddHeaders.exit, label %bb.k

bb.k:                                             ; preds = %CheckAvailableSize.exit.thread165, %CheckAvailableSize.exit
  %.in = phi i32 [ %.pre155, %CheckAvailableSize.exit.thread165 ], [ %i.k, %CheckAvailableSize.exit ]
  %i.bg = phi ptr [ %i.ba, %CheckAvailableSize.exit.thread165 ], [ %i.be, %CheckAvailableSize.exit ] ; 7 uses
  %i.bh = phi i16 [ %.pre154, %CheckAvailableSize.exit.thread165 ], [ %i.j, %CheckAvailableSize.exit ] ; 2 uses
  store i8 22, ptr %i.bg, align 1, !tbaa !260
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !259
  %i.bl = load i16, ptr %i.bi, align 2            ; 3 uses
  %i.bm = and i16 %i.bl, 255
  %i.bn = icmp ne i16 %i.bm, 3
  %i.bo = icmp ult i16 %i.bl, 1024
  %.not15.i.i = or i1 %i.bo, %i.bn
  %i.bp = lshr i16 %i.bl, 8
  %i.bq = trunc nuw i16 %i.bp to i8
  %.sink.i.i = select i1 %.not15.i.i, i8 %i.bq, i8 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %.sink.i.i, ptr %i.br, align 1, !tbaa !261
  %i.bs = load i64, ptr %i.d, align 16
  %i.bt = and i64 %i.bs, 131072
  %.not12.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not12.i.i, label %bb.l, label %AddHeaders.exit

bb.l:                                             ; preds = %bb.k
  %i.bu = add nuw nsw i32 %.in, 4                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bw = lshr i32 %i.bu, 8
  %i.bx = trunc i32 %i.bw to i8
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !52
  %i.by = trunc i32 %i.bu to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !52
  br label %AddHeaders.exit

AddHeaders.exit:                                  ; preds = %CheckAvailableSize.exit, %bb.k, %bb.l
  %i.ca = phi ptr [ %i.be, %CheckAvailableSize.exit ], [ %i.bg, %bb.k ], [ %i.bg, %bb.l ] ; 19 uses
  %i.cb = phi i16 [ %i.j, %CheckAvailableSize.exit ], [ %i.bh, %bb.k ], [ %i.bh, %bb.l ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  store i8 2, ptr %i.cc, align 1, !tbaa !273
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  store i8 0, ptr %i.cd, align 1, !tbaa !52
  %i.ce = lshr i16 %i.cb, 8
  %i.cf = trunc nuw i16 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !52
  %i.ch = trunc i16 %i.cb to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!269 = !{!48, !9, i64 1048}
!270 = !{!"BuildMsgArgs", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !35, i64 20, !10, i64 24, !9, i64 28, !23, i64 32, !9, i64 48}
!271 = !{!270, !23, i64 32}
!272 = !{!"HandShakeHeader", !9, i64 0, !9, i64 1}
!273 = !{!272, !9, i64 0}
!274 = !{!48, !35, i64 732}
!275 = !{!48, !10, i64 704}
!276 = !{!48, !10, i64 1396}
!277 = !{!"CipherSuiteInfo", !23, i64 0, !23, i64 8, !9, i64 16, !9, i64 17, !9, i64 18}
!278 = !{!277, !23, i64 0}
!279 = !{!277, !23, i64 8}
!280 = !{!277, !9, i64 16}
!281 = !{!277, !9, i64 17}
!282 = !{!140, !10, i64 8}
!283 = !{!"SckeArgs", !23, i64 0, !23, i64 8, !23, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!284 = !{!283, !23, i64 8}
!285 = !{!283, !23, i64 16}
!286 = !{!"ScvArgs", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !9, i64 56}
!287 = !{!286, !23, i64 24}
!288 = !{!286, !23, i64 8}
!289 = !{!"SskeArgs", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60}
!290 = !{!289, !10, i64 32}
!291 = !{!289, !10, i64 52}
!292 = !{!289, !23, i64 8}
!293 = !{!289, !10, i64 36}
!294 = !{!289, !23, i64 24}
!295 = !{!289, !23, i64 0}
!296 = !{!289, !23, i64 16}
!297 = !{!"p1 _ZTS13KeyShareEntry", !13, i64 0}
!298 = !{!"CipherSuite", !9, i64 0, !9, i64 1, !10, i64 4, !297, i64 8, !10, i64 16}
!299 = !{!298, !297, i64 8}
!300 = !{!298, !10, i64 16}
!301 = !{!298, !9, i64 0}
!302 = !{!298, !9, i64 1}
!303 = !{!60, !10, i64 136}
!304 = !{!60, !35, i64 174}
!305 = !{!60, !35, i64 176}
!306 = !{!60, !13, i64 192}
!307 = !{!60, !13, i64 200}
!308 = !{!60, !47, i64 344}
!309 = !{!25, !22, i64 0}
!310 = !{!25, !23, i64 8}
!311 = !{!25, !23, i64 16}
!312 = !{!25, !24, i64 24}
!313 = !{!103, !9, i64 200}
!314 = !{!103, !23, i64 144}
!315 = !{!103, !23, i64 88}
!316 = !{!103, !101, i64 112}
!317 = !{!103, !102, i64 120}
!318 = !{!103, !102, i64 128}
!319 = !{!60, !10, i64 228}
!320 = !{!60, !10, i64 236}
!321 = !{!48, !10, i64 1356}
!322 = !{!60, !13, i64 208}
!323 = !{!60, !9, i64 180}
!324 = !{!48, !9, i64 1097}
!325 = !{i64 0, i64 8, !107, i64 8, i64 4, !56}
!326 = !{!60, !29, i64 96}
!327 = !{!60, !29, i64 104}
!328 = !{!60, !10, i64 112}
!329 = !{!48, !10, i64 624}
!330 = !{!60, !9, i64 128}
!331 = !{!60, !41, i64 184}
!332 = !{!17, !17, i64 0}
!333 = !{!48, !9, i64 1050}
!334 = !{!140, !9, i64 56}
!335 = !{!48, !10, i64 684}
!336 = !{!48, !10, i64 688}
!337 = !{!48, !20, i64 248}
!338 = !{!60, !9, i64 312}
!339 = !{!48, !9, i64 1172}
!340 = !{!60, !9, i64 352}
!341 = !{!48, !9, i64 1360}
!342 = distinct !{!342, !81}
!343 = !{!48, !13, i64 192}
!344 = distinct !{!344, !81}
!345 = distinct !{!345, !81, !352}
!346 = distinct !{!346, !81}
!347 = distinct !{!347, !81}
!348 = distinct !{!348, !81}
!349 = distinct !{!349, !81}
!350 = !{!"p1 int", !13, i64 0}
!351 = !{!350, !350, i64 0}
!352 = !{!"llvm.loop.peeled.count", i32 1}
!353 = distinct !{!353, !81}
!354 = !{!"p1 _ZTS22WOLFSSL_X509_STORE_CTX", !13, i64 0}
!355 = !{!354, !354, i64 0}
!356 = !{!"p1 _ZTS11WOLFSSL_CRL", !13, i64 0}
!357 = !{!"p1 _ZTS12WOLFSSL_OCSP", !13, i64 0}
!358 = !{!"WOLFSSL_CERT_MANAGER", !9, i64 0, !13, i64 88, !356, i64 96, !357, i64 104, !23, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !9, i64 184, !9, i64 224, !9, i64 224, !9, i64 224, !9, i64 224, !9, i64 224, !9, i64 224, !9, i64 224, !9, i64 224, !9, i64 225, !35, i64 226, !35, i64 228, !139, i64 232}
!359 = !{!358, !13, i64 128}
!360 = distinct !{!360, !81}
!361 = !{!210, !10, i64 24}
!362 = !{!210, !10, i64 28}
!363 = !{!210, !208, i64 8}
!364 = !{!27, !10, i64 8}
!365 = !{!27, !23, i64 0}
!366 = !{!210, !10, i64 36}
!367 = !{!199, !10, i64 992}
!368 = !{!199, !10, i64 32}
!369 = !{!199, !10, i64 8}
!370 = !{!29, !29, i64 0}
!371 = !{!210, !10, i64 44}
!372 = !{!199, !10, i64 44}
!373 = !{!210, !10, i64 48}
!374 = !{!199, !35, i64 858}
!375 = !{!199, !9, i64 860}
!376 = !{!199, !23, i64 0}
!377 = !{!199, !10, i64 864}
!378 = distinct !{!378, !81, !234, !235}
!379 = distinct !{!379, !81, !235, !234}
!380 = distinct !{!380, !81}
!381 = distinct !{!381, !81}
!382 = !{!"DskeArgs", !23, i64 0, !23, i64 8, !10, i64 16, !10, i64 20, !35, i64 24, !35, i64 26, !10, i64 28}
!383 = !{!382, !10, i64 16}
!384 = !{!382, !10, i64 20}
!385 = !{!48, !35, i64 1072}
!386 = !{!48, !35, i64 1074}
!387 = !{!"DhParams", !23, i64 0, !10, i64 8, !23, i64 16, !10, i64 24}
!388 = !{!387, !10, i64 24}
!389 = !{!387, !23, i64 16}
!390 = !{!387, !23, i64 0}
!391 = !{!387, !10, i64 8}
!392 = !{!382, !23, i64 8}
!393 = !{!382, !35, i64 26}
!394 = !{!382, !10, i64 28}
!395 = !{!382, !35, i64 24}
!396 = !{!382, !23, i64 0}
!397 = distinct !{!397, !81, !234, !235}
!398 = distinct !{!398, !81, !234}
!399 = !{!48, !15, i64 16}
!400 = distinct !{!400, !81}
!401 = distinct !{!401, !81}
!402 = !{!"DcvArgs", !23, i64 0, !10, i64 8, !35, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!403 = !{!402, !10, i64 20}
!404 = !{!402, !10, i64 24}
!405 = !{!402, !10, i64 16}
!406 = !{!402, !10, i64 8}
!407 = !{!402, !35, i64 12}
!408 = !{!402, !23, i64 0}
!409 = distinct !{!409, !"LVerDomain"}
!410 = distinct !{!410, !409}
!411 = distinct !{!411, !409}
!412 = distinct !{!412, !81, !234, !235}
!413 = distinct !{!413, !81, !234}
!414 = distinct !{!414, !255}
!415 = distinct !{!415, !81, !234}
!416 = !{!410}
!417 = !{!411}
!418 = distinct !{!418, !"LVerDomain"}
!419 = distinct !{!419, !418}
!420 = distinct !{!420, !418}
!421 = distinct !{!421, !81, !234, !235}
!422 = distinct !{!422, !81, !234}
!423 = distinct !{!423, !255}
!424 = distinct !{!424, !81, !234}
!425 = distinct !{!425, !81, !234, !235}
!426 = distinct !{!426, !81, !235, !234}
!427 = !{!419}
!428 = !{!420}
!429 = distinct !{!429, !81}
!430 = distinct !{!430, !81}
!431 = distinct !{!431, !81}
!432 = distinct !{!432, !81}
!433 = distinct !{!433, !81}
!434 = distinct !{!434, !81}
!435 = distinct !{null, null}
!436 = distinct !{!436, !81, !234, !235}
!437 = distinct !{!437, !81, !235, !234}
!438 = distinct !{!438, !81}
!439 = distinct !{null, null}
!440 = distinct !{!440, !81, !234, !235}
!441 = distinct !{!441, !81, !235, !234}
!442 = distinct !{!442, !81, !234, !235}
!443 = distinct !{!443, !81, !235, !234}
!444 = distinct !{!444, !81}
!445 = !{!48, !10, i64 1024}
!446 = !{!48, !10, i64 1020}
!447 = !{!26, !23, i64 8}
!448 = !{!26, !10, i64 20}
!449 = !{!135, !10, i64 20}
!450 = !{!135, !9, i64 221}
!451 = !{!135, !10, i64 24}
!452 = !{!48, !9, i64 1031}
!453 = !{!48, !10, i64 656}
!454 = !{!48, !10, i64 660}
!455 = !{!48, !9, i64 1070}
!456 = distinct !{!456, !81, !234, !235}
!457 = distinct !{!457, !81, !234, !235}
!458 = distinct !{!458, !255}
!459 = distinct !{!459, !81, !234}
!460 = !{!270, !10, i64 12}
!461 = !{!270, !10, i64 16}
!462 = !{!270, !9, i64 28}
!463 = !{!48, !9, i64 1069}
!464 = !{!270, !10, i64 0}
!465 = !{!270, !10, i64 4}
!466 = !{!270, !10, i64 24}
!467 = !{!270, !10, i64 8}
!468 = !{!270, !35, i64 20}
!469 = !{!"branch_weights", i32 8, i32 24}
!470 = !{!48, !9, i64 296}
!471 = !{!48, !23, i64 272}
!472 = !{!48, !23, i64 280}
!473 = distinct !{!473, !81}
!474 = !{}
!475 = !{!48, !10, i64 496}
!476 = !{!48, !10, i64 500}
!477 = distinct !{!477, !81}
!478 = !{!48, !10, i64 664}
!479 = !{!48, !10, i64 668}
!480 = distinct !{!480, !81}
!481 = distinct !{!481, !81}
!482 = distinct !{!482, !81}
!483 = distinct !{!483, !81}
!484 = distinct !{!484, !81}
!485 = !{!48, !9, i64 740}
!486 = !{!48, !10, i64 604}
!487 = !{!283, !10, i64 24}
!488 = !{!44, !44, i64 0}
!489 = !{!283, !10, i64 32}
!490 = !{!283, !23, i64 0}
!491 = !{!283, !10, i64 36}
!492 = !{!286, !10, i64 44}
!493 = !{!286, !23, i64 0}
!494 = !{!286, !10, i64 52}
!495 = !{!286, !10, i64 32}
!496 = !{!286, !23, i64 16}
!497 = !{!286, !10, i64 36}
!498 = !{!286, !9, i64 56}
!499 = !{!286, !10, i64 40}
!500 = distinct !{!500, !81}
!501 = distinct !{!501, !81}
!502 = !{!289, !10, i64 40}
!503 = !{!289, !10, i64 56}
!504 = !{!289, !10, i64 44}
!505 = !{!30, !10, i64 168}
!506 = !{!30, !10, i64 184}
!507 = !{!30, !10, i64 200}
!508 = !{!30, !23, i64 160}
!509 = !{!30, !23, i64 176}
!510 = !{!30, !23, i64 192}
!511 = distinct !{!511, !81}
!512 = distinct !{!512, !81}
!513 = distinct !{!513, !81}
!514 = distinct !{!514, !81}
!515 = distinct !{!515, !81}
!516 = distinct !{!516, !81, !519}
!517 = distinct !{!517, !81}
!518 = distinct !{!518, !81, !519}
!519 = !{!"llvm.loop.unswitch.partial.disable"}
!520 = !{!298, !10, i64 4}
!521 = distinct !{!521, !81}
!522 = !{!140, !10, i64 60}
!523 = !{!60, !13, i64 320}
!524 = !{!60, !13, i64 328}
!525 = distinct !{null}
!526 = distinct !{!526, !81}
!527 = !{!48, !13, i64 184}
!528 = !{!48, !23, i64 312}
!529 = !{!48, !23, i64 320}
end_hunk_2
