Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dgif_lib?download=true
inline.NumInlined: 36
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@DGifDecompressLine:bb.a
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !100

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.next.lcssa307.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %.lr.ph.preheader ], [ %indvars.iv.next180.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv179.ph, %wide.trip.count
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %.loopexit141.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.3, %.lr.ph ], [ %indvars.iv179.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !30
  %i.at = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.au = getelementptr i8, ptr %i.at, i64 -2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !30
  %i.ay = getelementptr i8, ptr %i.h, i64 %indvars.iv
  %i.az = getelementptr i8, ptr %i.ay, i64 -3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !30
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next.3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !30
  %indvars.iv.next180.3 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv179
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !30
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next180.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit141.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit141.loopexit:                            ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.af, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %indvars.iv.next.lcssa307.unr, %.lr.ph.prol.loopexit ], [ %indvars.iv.next.3, %.lr.ph ]
  %i.bh = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit141

.loopexit141:                                     ; preds = %.loopexit141.loopexit, %.preheader140, %bb.b
  %.1106 = phi i32 [ 0, %bb.b ], [ 0, %.preheader140 ], [ %i.t, %.loopexit141.loopexit ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.b ], [ %i.e, %.preheader140 ], [ %i.bh, %.loopexit141.loopexit ] ; 2 uses
  %i.bi = icmp slt i32 %.1106, %2
  br i1 %i.bi, label %.lr.ph170, label %._crit_edge

.lr.ph170:                                        ; preds = %.loopexit141
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bn = zext i32 %2 to i64                      ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph170, %bb.y
  %.2169 = phi i32 [ %.1, %.lr.ph170 ], [ %.7, %bb.y ] ; 5 uses
  %.0100166 = phi i32 [ %i.n, %.lr.ph170 ], [ %.1101, %bb.y ] ; 9 uses
  %.2107165 = phi i32 [ %.1106, %.lr.ph170 ], [ %.5110, %bb.y ] ; 6 uses
  %i.bo = call fastcc i32 @DGifDecompressInput(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.loopexit138, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !10  ; 19 uses
  %i.br = icmp eq i32 %i.bq, %i.j
  br i1 %i.br, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 113, ptr %i.bs, align 8, !tbaa !29
  br label %.loopexit138

bb.f:                                             ; preds = %bb.d
  %i.bt = icmp eq i32 %i.bq, %i.l
  br i1 %i.bt, label %vector.body247, label %bb.g

vector.body247:                                   ; preds = %bb.f, %vector.body247
  %index248 = phi i64 [ %index.next249.3, %vector.body247 ], [ 0, %bb.f ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index248 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> splat (i32 4098), ptr %i.bu, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.bv, align 4, !tbaa !10
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index248 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store <4 x i32> splat (i32 4098), ptr %i.bx, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.by, align 4, !tbaa !10
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index248 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  store <4 x i32> splat (i32 4098), ptr %i.ca, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.cb, align 4, !tbaa !10
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index248 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 112
  store <4 x i32> splat (i32 4098), ptr %i.cd, align 4, !tbaa !10
  store <4 x i32> splat (i32 4098), ptr %i.ce, align 4, !tbaa !10
  %index.next249.3 = add nuw nsw i64 %index248, 32 ; 2 uses
  %i.cf = icmp eq i64 %index.next249.3, 4096
  br i1 %i.cf, label %middle.block250, label %vector.body247, !llvm.loop !102

middle.block250:                                  ; preds = %vector.body247
  %i.cg = load i32, ptr %i.i, align 8, !tbaa !50
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.bj, align 4, !tbaa !51
  %i.ci = load i32, ptr %i.bk, align 8, !tbaa !48
  %i.cj = add nsw i32 %i.ci, 1                    ; 2 uses
  store i32 %i.cj, ptr %i.bl, align 8, !tbaa !52
  %i.ck = shl nuw i32 1, %i.cj
  store i32 %i.ck, ptr %i.bm, align 4, !tbaa !53
  store i32 4098, ptr %i.m, align 8, !tbaa !55
  br label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.cl = icmp slt i32 %i.bq, %i.l
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cm = trunc i32 %i.bq to i8
  %i.cn = add nsw i32 %.2107165, 1
  %i.co = sext i32 %.2107165 to i64
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co
  store i8 %i.cm, ptr %i.cp, align 1, !tbaa !30
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.cq = sext i32 %i.bq to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !10
  %i.ct = icmp eq i32 %i.cs, 4098
  br i1 %i.ct, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.cu = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.cv = add nsw i32 %i.cu, -2
  %i.cw = icmp eq i32 %i.bq, %i.cv
  br i1 %i.cw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cx = icmp sgt i32 %.0100166, %i.l
  br i1 %i.cx, label %.lr.ph.i.preheader, label %.sink.split

.lr.ph.i.preheader:                               ; preds = %bb.k, %bb.l
  %i.cy = phi i32 [ %i.de, %bb.l ], [ 1, %bb.k ]  ; 2 uses
  %.089.i233 = phi i32 [ %i.dc, %bb.l ], [ %.0100166, %bb.k ] ; 2 uses
  %i.cz = icmp sgt i32 %.089.i233, 4095
  br i1 %i.cz, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.da = sext i32 %.089.i233 to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !10 ; 3 uses
  %i.dd = icmp sle i32 %i.dc, %i.l
  %i.de = add nuw nsw i32 %i.cy, 1
  %exitcond.not.i = icmp eq i32 %i.cy, 4096
  %or.cond = select i1 %i.dd, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %.sink.split, label %.lr.ph.i.preheader, !llvm.loop !103

bb.m:                                             ; preds = %bb.j
  %i.df = icmp sgt i32 %i.bq, %i.l
  br i1 %i.df, label %.lr.ph.i120.preheader, label %.sink.split

.lr.ph.i120.preheader:                            ; preds = %bb.m, %bb.n
  %i.dg = phi i32 [ %i.dm, %bb.n ], [ 1, %bb.m ]  ; 2 uses
  %.089.i122232 = phi i32 [ %i.dk, %bb.n ], [ %i.bq, %bb.m ] ; 2 uses
  %i.dh = icmp sgt i32 %.089.i122232, 4095
  br i1 %i.dh, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i120.preheader
  %i.di = sext i32 %.089.i122232 to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.dl = icmp sle i32 %i.dk, %i.l
  %i.dm = add nuw nsw i32 %i.dg, 1
  %exitcond.not.i123 = icmp eq i32 %i.dg, 4096
  %or.cond296 = select i1 %i.dl, i1 true, i1 %exitcond.not.i123
  br i1 %or.cond296, label %.sink.split, label %.lr.ph.i120.preheader, !llvm.loop !103

.sink.split:                                      ; preds = %bb.n, %.lr.ph.i120.preheader, %bb.l, %.lr.ph.i.preheader, %bb.m, %bb.k
  %.07.i.sink = phi i32 [ 4098, %.lr.ph.i.preheader ], [ %.0100166, %bb.k ], [ %i.bq, %bb.m ], [ %i.dc, %bb.l ], [ 4098, %.lr.ph.i120.preheader ], [ %i.dk, %bb.n ]
  %i.dn = trunc i32 %.07.i.sink to i8             ; 2 uses
  %i.do = add nsw i32 %.2169, 1
  %i.dp = sext i32 %.2169 to i64
  %i.dq = getelementptr inbounds i8, ptr %i.h, i64 %i.dp
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !30
  %i.dr = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.g, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -2
  store i8 %i.dn, ptr %i.du, align 1, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.i
  %.0102 = phi i32 [ %i.bq, %bb.i ], [ %.0100166, %.sink.split ]
  %.3 = phi i32 [ %.2169, %bb.i ], [ %i.do, %.sink.split ] ; 3 uses
  %i.dv = icmp slt i32 %.3, 4095
  br i1 %i.dv, label %.lr.ph157.preheader, label %.critedge.thread

.lr.ph157.preheader:                              ; preds = %bb.o
  %i.dw = sext i32 %.3 to i64
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.p
  %indvars.iv188.in = phi i32 [ %.3, %.lr.ph157.preheader ], [ %indvars.iv188, %bb.p ]
  %indvars.iv184 = phi i64 [ %i.dw, %.lr.ph157.preheader ], [ %indvars.iv.next185, %bb.p ] ; 4 uses
  %.1103155 = phi i32 [ %.0102, %.lr.ph157.preheader ], [ %i.ee, %bb.p ] ; 5 uses
  %indvars.iv188 = add i32 %indvars.iv188.in, 1   ; 2 uses
  %i.dx = icmp sgt i32 %.1103155, %i.l
  %i.dy = icmp slt i32 %.1103155, 4096
  %or.cond3 = and i1 %i.dx, %i.dy
  br i1 %or.cond3, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph157
  %i.dz = sext i32 %.1103155 to i64               ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.g, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !30
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv184
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !30
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dz
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !10
  %i.ef = and i64 %indvars.iv.next185, 4294967295
  %exitcond187.not = icmp eq i64 %i.ef, 4095
  br i1 %exitcond187.not, label %.critedge.thread, label %.lr.ph157, !llvm.loop !104

.critedge:                                        ; preds = %.lr.ph157
  %i.eg = icmp sgt i32 %.1103155, 4095
  br i1 %i.eg, label %.critedge.thread, label %bb.q

.critedge.thread:                                 ; preds = %.critedge, %bb.o, %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 112, ptr %i.eh, align 8, !tbaa !29
  br label %.loopexit138

bb.q:                                             ; preds = %.critedge
  %i.ei = trunc nsw i64 %indvars.iv184 to i32
  %i.ej = trunc i32 %.1103155 to i8
  %i.ek = add nsw i32 %i.ei, 1                    ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv184
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !30
  %i.em = icmp ne i32 %i.ek, 0
  %i.en = icmp slt i32 %.2107165, %2
  %i.eo = and i1 %i.em, %i.en
  br i1 %i.eo, label %iter.check280, label %.loopexit

iter.check280:                                    ; preds = %bb.q
  %i.ep = sext i32 %indvars.iv188 to i64          ; 10 uses
  %i.eq = sext i32 %.2107165 to i64               ; 10 uses
  %i.er = xor i64 %i.eq, -1
  %i.es = add nsw i64 %i.er, %i.bn
  %i.et = add nsw i64 %i.ep, -1
  %umin263 = tail call i64 @llvm.umin.i64(i64 %i.es, i64 %i.et)
  %i.eu = add nsw i64 %umin263, 1                 ; 7 uses
  %min.iters.check264 = icmp ult i64 %i.eu, 4
  br i1 %min.iters.check264, label %.lr.ph161.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %iter.check280
  %i.ev = getelementptr i8, ptr %1, i64 %i.eq
  %i.ew = xor i64 %i.eq, -1
  %i.ex = add nsw i64 %i.ew, %i.bn
  %i.ey = add nsw i64 %i.ep, -1
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.ey) ; 2 uses
  %i.fa = getelementptr i8, ptr %1, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.eq
  %i.fc = getelementptr i8, ptr %i.fb, i64 1
  %i.fd = add nsw i64 %i.ep, 343
  %i.fe = sub i64 %i.fd, %i.ez
  %i.ff = getelementptr i8, ptr %i.c, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.c, i64 %i.ep
  %i.fh = getelementptr i8, ptr %i.fg, i64 344
  %bound0266 = icmp ult ptr %i.ev, %i.fh
  %bound1267 = icmp ult ptr %i.ff, %i.fc
  %found.conflict268 = and i1 %bound0266, %bound1267
  br i1 %found.conflict268, label %.lr.ph161.preheader, label %vector.main.loop.iter.check269

vector.main.loop.iter.check269:                   ; preds = %vector.memcheck265
  %min.iters.check270 = icmp ult i64 %i.eu, 16
  br i1 %min.iters.check270, label %vec.epilog.ph284, label %vector.ph271

vector.ph271:                                     ; preds = %vector.main.loop.iter.check269
  %i.fi = and i64 %i.eu, 12
  %n.vec272 = and i64 %i.eu, -16                  ; 5 uses
  %i.fj = add i64 %n.vec272, %i.eq                ; 2 uses
  %i.fk = sub i64 %i.ep, %n.vec272                ; 2 uses
  %invariant.gep315.a = getelementptr i8, ptr %i.h, i64 %i.ep
  %invariant.gep317 = getelementptr i8, ptr %1, i64 %i.eq
  br label %vector.body273

vector.body273:                                   ; preds = %vector.ph271, %vector.body273
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next277, %vector.body273 ] ; 3 uses
  %i.fl = xor i64 %index274, -1
  %gep316.a = getelementptr i8, ptr %invariant.gep315.a, i64 %i.fl
  %i.fm = getelementptr inbounds i8, ptr %gep316.a, i64 -15
  %wide.load275 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !30, !alias.scope !117
  %reverse276 = shufflevector <16 x i8> %wide.load275, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep318 = getelementptr i8, ptr %invariant.gep317, i64 %index274
  store <16 x i8> %reverse276, ptr %gep318, align 1, !tbaa !30, !alias.scope !118, !noalias !117
  %index.next277 = add nuw i64 %index274, 16      ; 2 uses
  %i.fn = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.fn, label %middle.block278, label %vector.body273, !llvm.loop !108

middle.block278:                                  ; preds = %vector.body273
  %cmp.n279 = icmp eq i64 %i.eu, %n.vec272
  br i1 %cmp.n279, label %.loopexit.loopexit, label %vec.epilog.iter.check281

vec.epilog.iter.check281:                         ; preds = %middle.block278
  %min.epilog.iters.check283 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check283, label %.lr.ph161.preheader, label %vec.epilog.ph284, !prof !115

vec.epilog.ph284:                                 ; preds = %vector.main.loop.iter.check269, %vec.epilog.iter.check281
  %vec.epilog.resume.val285 = phi i64 [ %n.vec272, %vec.epilog.iter.check281 ], [ 0, %vector.main.loop.iter.check269 ]
  %n.vec286 = and i64 %i.eu, -4                   ; 4 uses
  %i.fo = add i64 %n.vec286, %i.eq                ; 2 uses
  %i.fp = sub i64 %i.ep, %n.vec286                ; 2 uses
  %invariant.gep319 = getelementptr i8, ptr %i.h, i64 %i.ep
  %invariant.gep321 = getelementptr i8, ptr %1, i64 %i.eq
  br label %vec.epilog.vector.body287

vec.epilog.vector.body287:                        ; preds = %vec.epilog.vector.body287, %vec.epilog.ph284
  %index288 = phi i64 [ %vec.epilog.resume.val285, %vec.epilog.ph284 ], [ %index.next291, %vec.epilog.vector.body287 ] ; 3 uses
  %i.fq = xor i64 %index288, -1
  %gep320 = getelementptr i8, ptr %invariant.gep319, i64 %i.fq
  %i.fr = getelementptr inbounds i8, ptr %gep320, i64 -3
  %wide.load289 = load <4 x i8>, ptr %i.fr, align 1, !tbaa !30, !alias.scope !117
  %reverse290 = shufflevector <4 x i8> %wide.load289, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep322 = getelementptr i8, ptr %invariant.gep321, i64 %index288
  store <4 x i8> %reverse290, ptr %gep322, align 1, !tbaa !30, !alias.scope !118, !noalias !117
  %index.next291 = add nuw i64 %index288, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next291, %n.vec286
  br i1 %i.fs, label %vec.epilog.middle.block292, label %vec.epilog.vector.body287, !llvm.loop !109

vec.epilog.middle.block292:                       ; preds = %vec.epilog.vector.body287
  %cmp.n293 = icmp eq i64 %i.eu, %n.vec286
  br i1 %cmp.n293, label %.loopexit.loopexit, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %iter.check280, %vector.memcheck265, %vec.epilog.iter.check281, %vec.epilog.middle.block292
  %indvars.iv193.ph = phi i64 [ %i.eq, %iter.check280 ], [ %i.eq, %vector.memcheck265 ], [ %i.fj, %vec.epilog.iter.check281 ], [ %i.fo, %vec.epilog.middle.block292 ]
  %indvars.iv191.ph = phi i64 [ %i.ep, %iter.check280 ], [ %i.ep, %vector.memcheck265 ], [ %i.fk, %vec.epilog.iter.check281 ], [ %i.fp, %vec.epilog.middle.block292 ]
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %.lr.ph161
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %.lr.ph161 ], [ %indvars.iv193.ph, %.lr.ph161.preheader ] ; 2 uses
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %.lr.ph161 ], [ %indvars.iv191.ph, %.lr.ph161.preheader ]
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, -1 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next192
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !30
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, 1 ; 3 uses
  %i.fv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv193
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !30
  %i.fw = icmp ne i64 %indvars.iv.next192, 0
  %i.fx = icmp slt i64 %indvars.iv.next194, %i.bn
  %i.fy = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %i.fy, label %.lr.ph161, label %.loopexit.loopexit, !llvm.loop !110

.loopexit.loopexit:                               ; preds = %.lr.ph161, %vec.epilog.middle.block292, %middle.block278
  %indvars.iv.next192.lcssa = phi i64 [ %i.fp, %vec.epilog.middle.block292 ], [ %i.fk, %middle.block278 ], [ %indvars.iv.next192, %.lr.ph161 ]
  %indvars.iv.next194.lcssa = phi i64 [ %i.fo, %vec.epilog.middle.block292 ], [ %i.fj, %middle.block278 ], [ %indvars.iv.next194, %.lr.ph161 ]
  %i.fz = trunc nsw i64 %indvars.iv.next192.lcssa to i32
  %i.ga = trunc nsw i64 %indvars.iv.next194.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.q, %bb.h
  %.4109 = phi i32 [ %i.cn, %bb.h ], [ %.2107165, %bb.q ], [ %i.ga, %.loopexit.loopexit ] ; 5 uses
  %.6 = phi i32 [ %.2169, %bb.h ], [ %i.ek, %bb.q ], [ %i.fz, %.loopexit.loopexit ] ; 5 uses
  %.not118 = icmp eq i32 %.0100166, 4098
  br i1 %.not118, label %bb.y, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.gb = load i32, ptr %i.bj, align 4, !tbaa !51 ; 2 uses
  %i.gc = icmp slt i32 %i.gb, 4098
  br i1 %i.gc, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.gd = sext i32 %i.gb to i64
  %i.ge = getelementptr [4 x i8], ptr %i.f, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -8     ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !10
  %i.gh = icmp eq i32 %i.gg, 4098
  br i1 %i.gh, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  store i32 %.0100166, ptr %i.gf, align 4, !tbaa !10
  %i.gi = load i32, ptr %i.bj, align 4, !tbaa !51 ; 3 uses
  %i.gj = add nsw i32 %i.gi, -2
  %i.gk = icmp eq i32 %i.bq, %i.gj
  br i1 %i.gk, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gl = icmp sgt i32 %.0100166, %i.l
  br i1 %i.gl, label %.lr.ph.i126.preheader, label %DGifGetPrefixChar.exit130

.lr.ph.i126.preheader:                            ; preds = %bb.u, %bb.v
  %i.gm = phi i32 [ %i.gs, %bb.v ], [ 1, %bb.u ]  ; 2 uses
  %.089.i128235 = phi i32 [ %i.gq, %bb.v ], [ %.0100166, %bb.u ] ; 2 uses
  %i.gn = icmp sgt i32 %.089.i128235, 4095
  br i1 %i.gn, label %DGifGetPrefixChar.exit130, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i126.preheader
  %i.go = sext i32 %.089.i128235 to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !10 ; 3 uses
  %i.gr = icmp sle i32 %i.gq, %i.l
  %i.gs = add nuw nsw i32 %i.gm, 1
  %exitcond.not.i129 = icmp eq i32 %i.gm, 4096
  %or.cond297 = select i1 %i.gr, i1 true, i1 %exitcond.not.i129
  br i1 %or.cond297, label %DGifGetPrefixChar.exit130, label %.lr.ph.i126.preheader, !llvm.loop !103

DGifGetPrefixChar.exit130:                        ; preds = %.lr.ph.i126.preheader, %bb.v, %bb.u
  %.07.i125 = phi i32 [ %.0100166, %bb.u ], [ 4098, %.lr.ph.i126.preheader ], [ %i.gq, %bb.v ]
  %i.gt = trunc i32 %.07.i125 to i8
  %i.gu = sext i32 %i.gi to i64
  %i.gv = getelementptr i8, ptr %i.g, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -2
  store i8 %i.gt, ptr %i.gw, align 1, !tbaa !30
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.gx = icmp sgt i32 %i.bq, %i.l
  br i1 %i.gx, label %.lr.ph.i132.preheader, label %DGifGetPrefixChar.exit136

.lr.ph.i132.preheader:                            ; preds = %bb.w, %bb.x
  %i.gy = phi i32 [ %i.he, %bb.x ], [ 1, %bb.w ]  ; 2 uses
  %.089.i134234 = phi i32 [ %i.hc, %bb.x ], [ %i.bq, %bb.w ] ; 2 uses
  %i.gz = icmp sgt i32 %.089.i134234, 4095
  br i1 %i.gz, label %DGifGetPrefixChar.exit136, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i132.preheader
  %i.ha = sext i32 %.089.i134234 to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !10 ; 3 uses
  %i.hd = icmp sle i32 %i.hc, %i.l
  %i.he = add nuw nsw i32 %i.gy, 1
  %exitcond.not.i135 = icmp eq i32 %i.gy, 4096
  %or.cond298 = select i1 %i.hd, i1 true, i1 %exitcond.not.i135
  br i1 %or.cond298, label %DGifGetPrefixChar.exit136, label %.lr.ph.i132.preheader, !llvm.loop !103

DGifGetPrefixChar.exit136:                        ; preds = %.lr.ph.i132.preheader, %bb.x, %bb.w
  %.07.i131 = phi i32 [ %i.bq, %bb.w ], [ 4098, %.lr.ph.i132.preheader ], [ %i.hc, %bb.x ]
  %i.hf = trunc i32 %.07.i131 to i8
  %i.hg = sext i32 %i.gi to i64
  %i.hh = getelementptr i8, ptr %i.g, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -2
  store i8 %i.hf, ptr %i.hi, align 1, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %bb.r, %bb.s, %DGifGetPrefixChar.exit136, %DGifGetPrefixChar.exit130, %middle.block250
  %.5110 = phi i32 [ %.2107165, %middle.block250 ], [ %.4109, %DGifGetPrefixChar.exit130 ], [ %.4109, %DGifGetPrefixChar.exit136 ], [ %.4109, %bb.s ], [ %.4109, %bb.r ], [ %.4109, %.loopexit ] ; 2 uses
end_hunk_0
