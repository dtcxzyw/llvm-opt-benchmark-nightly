Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v02?download=true
inline.NumInlined: 356
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@HUF_decompress4X2:bb.a
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.l, 14
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.03542.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod127 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store i32 %.03542.i.epil.init, ptr %i.n, align 4, !tbaa !22
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !22   ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %HUF_readDTableX2.exit.thread23, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count55.i = zext i32 %i.o to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.03542.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22
  %i.t = trunc i64 %indvars.iv.i to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = shl i32 %i.s, %i.u
  %i.w = add i32 %i.v, %.03542.i                  ; 2 uses
  store i32 %.03542.i, ptr %i.r, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = trunc i64 %indvars.iv.next.i to i32
  %i.aa = add i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !63

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph46.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph46.i ], [ %indvars.iv.next53.i, %._crit_edge.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv52.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15  ; 3 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = trunc i64 %indvars.iv52.i to i8         ; 3 uses
  %i.aj = sub i8 %i.q, %i.ae                      ; 3 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22 ; 3 uses
  %i.an = add i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.d
  %i.ap = zext i32 %i.am to i64                   ; 6 uses
  %wide.trip.count.i = zext i32 %i.an to i64      ; 2 uses
  %i.aq = sub nsw i64 %wide.trip.count.i, %i.ap   ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.as = add nsw i64 %n.vec, %i.ap
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert100 = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert100, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add nuw i64 %index, %i.ap               ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.at
  %i.av = getelementptr [2 x i8], ptr %i.f, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <16 x i8> %interleaved.vec, ptr %i.au, align 2, !tbaa !15
  store <16 x i8> %interleaved.vec, ptr %i.aw, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph44.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec103 = and i64 %i.aq, -4                   ; 3 uses
  %i.ay = add nsw i64 %n.vec103, %i.ap
  %broadcast.splatinsert104 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert106 = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.f, i64 %i.ap
  %interleaved.vec109 = shufflevector <4 x i8> %broadcast.splatinsert104, <4 x i8> %broadcast.splatinsert106, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index108
  store <8 x i8> %interleaved.vec109, ptr %gep, align 2, !tbaa !15
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.aq, %n.vec103
  br i1 %cmp.n111, label %._crit_edge.i, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv48.i.ph = phi i64 [ %i.ap, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %.lr.ph44.i ], [ %indvars.iv48.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv48.i ; 2 uses
  store i8 %i.ai, ptr %i.ba, align 2, !tbaa !15
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !15
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count.i
  br i1 %exitcond51.not.i, label %._crit_edge.i, label %.lr.ph44.i, !llvm.loop !66

._crit_edge.i:                                    ; preds = %.lr.ph44.i, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 %i.an, ptr %i.al, align 4, !tbaa !22
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %HUF_readDTableX2.exit.thread23, label %bb.d, !llvm.loop !67

HUF_readDTableX2.exit.thread:                     ; preds = %bb.b, %bb.a
  %.034.i.ph = phi i64 [ %i.g, %bb.a ], [ -44, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %HUF_decompress4X2_usingDTable.exit

HUF_readDTableX2.exit.thread23:                   ; preds = %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not17 = icmp ult i64 %i.g, %3
  br i1 %.not17, label %bb.e, label %HUF_decompress4X2_usingDTable.exit

bb.e:                                             ; preds = %HUF_readDTableX2.exit.thread23
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 10 uses
  %i.bc = sub nuw i64 %3, %i.g                    ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 10
  br i1 %i.bd, label %HUF_decompress4X2_usingDTable.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.val149.i = load i16, ptr %i.bb, align 1       ; 5 uses
  %i.bf = zext i16 %.val149.i to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %.val148.i = load i16, ptr %i.bg, align 1       ; 5 uses
  %i.bh = zext i16 %.val148.i to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.val.i = load i16, ptr %i.bi, align 1          ; 5 uses
  %i.bj = zext i16 %.val.i to i64                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 6 ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bf  ; 12 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bh  ; 12 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bj  ; 3 uses
  %i.bo = add i64 %1, 3
  %i.bp = lshr i64 %i.bo, 2                       ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp ; 5 uses
  %i.bt = add nuw nsw i64 %i.bf, 6
  %i.bu = add nuw nsw i64 %i.bt, %i.bh
  %i.bv = add nuw nsw i64 %i.bu, %i.bj            ; 2 uses
  %i.bw = sub nuw i64 %i.bc, %i.bv
  %i.bx = icmp ugt i64 %i.bv, %i.bc
  br i1 %i.bx, label %BIT_initDStream.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = icmp eq i16 %.val149.i, 0
  br i1 %i.by, label %BIT_initDStream.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = icmp ugt i16 %.val149.i, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.bk, ptr %i.ca, align 8, !tbaa !34
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds i8, ptr %i.bl, i64 -8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !35
  %.val.i.i = load i64, ptr %i.cb, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %4, align 8, !tbaa !36
  %i.cd = lshr i64 %.val.i.i, 56                  ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.i
  %i.cf = trunc nuw nsw i64 %i.cd to i32
  %i.cg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cf, i1 true)
  %i.ch = xor i32 %i.cg, 31
  %i.ci = sub nuw nsw i32 8, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !37
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bk, ptr %i.ck, align 8, !tbaa !35
  %i.cl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.cm = zext i8 %i.cl to i64                    ; 7 uses
  store i64 %i.cm, ptr %4, align 8, !tbaa !36
  switch i16 %.val149.i, label %bb.q [
    i16 7, label %bb.k
    i16 6, label %bb.l
    i16 5, label %bb.m
    i16 4, label %bb.n
    i16 3, label %bb.o
    i16 2, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !15
  %i.cp = zext i8 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 48
  %i.cr = or disjoint i64 %i.cq, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cs = phi i64 [ %i.cr, %bb.k ], [ %i.cm, %bb.j ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 11
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15
  %i.cv = zext i8 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 40
  %i.cx = add nuw nsw i64 %i.cw, %i.cs
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.cy = phi i64 [ %i.cx, %bb.l ], [ %i.cm, %bb.j ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 32
  %i.dd = add nuw nsw i64 %i.dc, %i.cy
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.de = phi i64 [ %i.dd, %bb.m ], [ %i.cm, %bb.j ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 24
  %i.dj = add nuw nsw i64 %i.di, %i.de
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.dk = phi i64 [ %i.dj, %bb.n ], [ %i.cm, %bb.j ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15
  %i.dn = zext i8 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 16
  %i.dp = add nuw nsw i64 %i.do, %i.dk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %i.dq = phi i64 [ %i.dp, %bb.o ], [ %i.cm, %bb.j ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bb, i64 7
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15
  %i.dt = zext i8 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 8
  %i.dv = add nuw nsw i64 %i.du, %i.dq
  store i64 %i.dv, ptr %4, align 8, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.dw = getelementptr i8, ptr %i.bl, i64 -1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !15  ; 2 uses
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %BIT_initDStream.exit.thread.i, label %.thread49.i.i

.thread49.i.i:                                    ; preds = %bb.q
  %i.dz = zext i8 %i.dx to i32
  %i.ea = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dz, i1 true)
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ec = shl nuw nsw i16 %.val149.i, 3
  %i.ed = zext nneg i16 %i.ec to i32
  %reass.sub = sub nsw i32 %i.ea, %i.ed
  %i.ee = add nsw i32 %reass.sub, 41
  store i32 %i.ee, ptr %i.eb, align 8, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %.thread49.i.i, %.thread.i.i
  %i.ef = icmp eq i16 %.val148.i, 0
  br i1 %i.ef, label %BIT_initDStream.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = icmp ugt i16 %.val148.i, 7
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.bl, ptr %i.eh, align 8, !tbaa !34
  br i1 %i.eg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !35
  %.val.i152.i = load i64, ptr %i.ei, align 1     ; 2 uses
  store i64 %.val.i152.i, ptr %5, align 8, !tbaa !36
  %i.ek = lshr i64 %.val.i152.i, 56               ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %BIT_initDStream.exit.thread.i, label %.thread.i153.i

.thread.i153.i:                                   ; preds = %bb.t
  %i.em = trunc nuw nsw i64 %i.ek to i32
  %i.en = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.em, i1 true)
  %i.eo = xor i32 %i.en, 31
  %i.ep = sub nuw nsw i32 8, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !37
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.bl, ptr %i.er, align 8, !tbaa !35
  %i.es = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.et = zext i8 %i.es to i64                    ; 7 uses
  store i64 %i.et, ptr %5, align 8, !tbaa !36
  switch i16 %.val148.i, label %bb.ab [
    i16 7, label %bb.v
    i16 6, label %bb.w
    i16 5, label %bb.x
    i16 4, label %bb.y
    i16 3, label %bb.z
    i16 2, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.ew = zext i8 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 48
  %i.ey = or disjoint i64 %i.ex, %i.et
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ez = phi i64 [ %i.ey, %bb.v ], [ %i.et, %bb.u ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !15
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 40
  %i.fe = add nuw nsw i64 %i.fd, %i.ez
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.ff = phi i64 [ %i.fe, %bb.w ], [ %i.et, %bb.u ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !15
  %i.fi = zext i8 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 32
  %i.fk = add nuw nsw i64 %i.fj, %i.ff
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.fl = phi i64 [ %i.fk, %bb.x ], [ %i.et, %bb.u ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !15
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 24
  %i.fq = add nuw nsw i64 %i.fp, %i.fl
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.fr = phi i64 [ %i.fq, %bb.y ], [ %i.et, %bb.u ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
end_hunk_0
begin_hunk_1_@HUF_decompress4X4:bb.a
  br i1 %.not54.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.preheader.i.i.i

.lr.ph53.preheader.i.i.i:                         ; preds = %.loopexit.i.i.i
  %wide.trip.count59.i.i.i = zext i32 %i.fg to i64
  %invariant.op.i.i = or disjoint i32 %i.em, 33554432
  br label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit, %.lr.ph53.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %.loopexit ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !39
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !40  ; 2 uses
  %i.ft = zext i8 %i.fs to i32
  %i.fu = sub nsw i32 %i.ca, %i.ft                ; 2 uses
  %i.fv = sub nsw i32 %i.eu, %i.fu
  %i.fw = shl nuw i32 1, %i.fv
  %i.fx = zext i8 %i.fs to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !22 ; 9 uses
  %i.ga = add i32 %i.fw, %i.fz                    ; 4 uses
  %i.gb = shl nuw nsw i32 %i.fq, 8
  %i.gc = add nsw i32 %i.fu, %i.eq
  %.sroa.6.0.insert.ext.i.i.i = shl nsw i32 %i.gc, 16
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 16711680
  %i.gd = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i, %i.gb
  %.sroa.0.0.insert.insert.i.reass.i.i = or disjoint i32 %i.gd, %invariant.op.i.i ; 2 uses
  %i.ge = add i32 %i.fz, 1
  %i.gf = tail call i32 @llvm.umax.i32(i32 %i.ga, i32 %i.ge)
  %i.gg = sub i32 %i.gf, %i.fz                    ; 3 uses
  %min.iters.check128 = icmp ult i32 %i.gg, 16
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i.i
  %i.gh = add i32 %i.fz, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ga, i32 %i.gh)
  %i.gi = add i32 %umax, -1
  %i.gj = icmp ult i32 %i.gi, %i.fz
  br i1 %i.gj, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.scevcheck
  %n.vec130 = and i32 %i.gg, -8                   ; 3 uses
  %i.gk = add i32 %i.fz, %n.vec130
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph129
  %index134 = phi i32 [ 0, %vector.ph129 ], [ %index.next135, %vector.body133 ] ; 2 uses
  %i.gl = add i32 %i.fz, %index134
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <4 x i32> %broadcast.splat132, ptr %i.gn, align 4
  store <4 x i32> %broadcast.splat132, ptr %i.go, align 4
  %index.next135 = add nuw i32 %index134, 8       ; 2 uses
  %i.gp = icmp eq i32 %index.next135, %n.vec130
  br i1 %i.gp, label %middle.block136, label %vector.body133, !llvm.loop !80

middle.block136:                                  ; preds = %vector.body133
  %cmp.n137 = icmp eq i32 %i.gg, %n.vec130
  br i1 %cmp.n137, label %.loopexit, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %vector.scevcheck, %.lr.ph53.i.i.i, %middle.block136
  %.0.i.i.i.ph = phi i32 [ %i.fz, %vector.scevcheck ], [ %i.fz, %.lr.ph53.i.i.i ], [ %i.gk, %middle.block136 ]
  br label %scalar.ph127

scalar.ph127:                                     ; preds = %scalar.ph127.preheader, %scalar.ph127
  %.0.i.i.i = phi i32 [ %i.gq, %scalar.ph127 ], [ %.0.i.i.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %i.gq = add i32 %.0.i.i.i, 1                    ; 2 uses
  %i.gr = zext i32 %.0.i.i.i to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gr
  store i32 %.sroa.0.0.insert.insert.i.reass.i.i, ptr %i.gs, align 4
  %i.gt = icmp ult i32 %i.gq, %i.ga
  br i1 %i.gt, label %scalar.ph127, label %.loopexit, !llvm.loop !81

.loopexit:                                        ; preds = %scalar.ph127, %middle.block136
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !22
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.i.i.i, !llvm.loop !82

HUF_fillDTableX4Level2.exit.i.i:                  ; preds = %.loopexit, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.pre.i.i = add i32 %i.ev, %i.et
  br label %.loopexit.i.i

bb.e:                                             ; preds = %.lr.ph55.i.i
  %i.gu = add i32 %i.ev, %i.et                    ; 5 uses
  %i.gv = icmp ult i32 %i.et, %i.gu
  br i1 %i.gv, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.4.0.insert.ext.i.i = shl nsw i32 %i.eq, 16
  %.sroa.4.0.insert.shift.i.i = and i32 %.sroa.4.0.insert.ext.i.i, 16711680
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %i.em
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, 16777216 ; 2 uses
  %i.gw = zext i32 %i.et to i64                   ; 4 uses
  %wide.trip.count.i.i = zext i32 %i.gu to i64    ; 2 uses
  %i.gx = sub nsw i64 %wide.trip.count.i.i, %i.gw ; 3 uses
  %min.iters.check116 = icmp ult i64 %i.gx, 8
  br i1 %min.iters.check116, label %scalar.ph115.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i.i
  %n.vec118 = and i64 %i.gx, -8                   ; 3 uses
  %i.gy = add nsw i64 %n.vec118, %i.gw
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.i, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.k, i64 %i.gw
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph117
  %index122 = phi i64 [ 0, %vector.ph117 ], [ %index.next123, %vector.body121 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index122 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat120, ptr %gep, align 4
  store <4 x i32> %broadcast.splat120, ptr %i.gz, align 4
  %index.next123 = add nuw i64 %index122, 8       ; 2 uses
  %i.ha = icmp eq i64 %index.next123, %n.vec118
  br i1 %i.ha, label %middle.block124, label %vector.body121, !llvm.loop !83

middle.block124:                                  ; preds = %vector.body121
  %cmp.n125 = icmp eq i64 %i.gx, %n.vec118
  br i1 %cmp.n125, label %.loopexit.i.i, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %.lr.ph.i.i, %middle.block124
  %indvars.iv.i.i.ph = phi i64 [ %i.gw, %.lr.ph.i.i ], [ %i.gy, %middle.block124 ]
  br label %scalar.ph115

scalar.ph115:                                     ; preds = %scalar.ph115.preheader, %scalar.ph115
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph115 ], [ %indvars.iv.i.i.ph, %scalar.ph115.preheader ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i
  store i32 %.sroa.0.0.insert.insert.i.i, ptr %i.hb, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %scalar.ph115, !llvm.loop !84

.loopexit.i.i:                                    ; preds = %scalar.ph115, %middle.block124, %bb.e, %HUF_fillDTableX4Level2.exit.i.i
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %HUF_fillDTableX4Level2.exit.i.i ], [ %i.gu, %bb.e ], [ %i.gu, %middle.block124 ], [ %i.gu, %scalar.ph115 ]
  store i32 %.pre-phi.i.i, ptr %i.es, align 4, !tbaa !22
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %wide.trip.count61.i.i
  br i1 %exitcond62.not.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.i.i, !llvm.loop !85

HUF_readDTableX4.exit.thread:                     ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.a, %bb.b
  %.0.i.ph = phi i64 [ -44, %bb.b ], [ %i.l, %bb.a ], [ -1, %.lr.ph.i.preheader ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %HUF_decompress4X4_usingDTable.exit

HUF_readDTableX4.exit:                            ; preds = %.loopexit.i.i, %._crit_edge108.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %.not17 = icmp ult i64 %i.l, %3
  br i1 %.not17, label %bb.f, label %HUF_decompress4X4_usingDTable.exit

bb.f:                                             ; preds = %HUF_readDTableX4.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 %i.l ; 10 uses
  %i.hd = sub nuw i64 %3, %i.l                    ; 3 uses
  %i.he = icmp ult i64 %i.hd, 10
  br i1 %i.he, label %HUF_decompress4X4_usingDTable.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.val165.i = load i16, ptr %i.hc, align 1       ; 5 uses
  %i.hg = zext i16 %.val165.i to i64              ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %.val164.i = load i16, ptr %i.hh, align 1       ; 5 uses
  %i.hi = zext i16 %.val164.i to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %.val.i = load i16, ptr %i.hj, align 1          ; 5 uses
  %i.hk = zext i16 %.val.i to i64                 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 6 ; 4 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hg  ; 12 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.hi  ; 12 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hk  ; 3 uses
  %i.hp = add i64 %1, 3
  %i.hq = lshr i64 %i.hp, 2                       ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %i.hq ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hq ; 5 uses
  %i.hu = add nuw nsw i64 %i.hg, 6
  %i.hv = add nuw nsw i64 %i.hu, %i.hi
  %i.hw = add nuw nsw i64 %i.hv, %i.hk            ; 2 uses
  %i.hx = sub nuw i64 %i.hd, %i.hw
  %i.hy = icmp ugt i64 %i.hw, %i.hd
  br i1 %i.hy, label %BIT_initDStream.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hz = icmp eq i16 %.val165.i, 0
  br i1 %i.hz, label %BIT_initDStream.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ia = icmp ugt i16 %.val165.i, 7
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.hl, ptr %i.ib, align 8, !tbaa !34
  br i1 %i.ia, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ic = getelementptr inbounds i8, ptr %i.hm, i64 -8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !35
  %.val.i.i = load i64, ptr %i.ic, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %4, align 8, !tbaa !36
  %i.ie = lshr i64 %.val.i.i, 56                  ; 2 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.j
  %i.ig = trunc nuw nsw i64 %i.ie to i32
  %i.ih = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ig, i1 true)
  %i.ii = xor i32 %i.ih, 31
  %i.ij = sub nuw nsw i32 8, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ij, ptr %i.ik, align 8, !tbaa !37
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.hl, ptr %i.il, align 8, !tbaa !35
  %i.im = load i8, ptr %i.hl, align 1, !tbaa !15
  %i.in = zext i8 %i.im to i64                    ; 7 uses
  store i64 %i.in, ptr %4, align 8, !tbaa !36
  switch i16 %.val165.i, label %bb.r [
    i16 7, label %bb.l
    i16 6, label %bb.m
    i16 5, label %bb.n
    i16 4, label %bb.o
    i16 3, label %bb.p
    i16 2, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  %i.io = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !15
  %i.iq = zext i8 %i.ip to i64
  %i.ir = shl nuw nsw i64 %i.iq, 48
  %i.is = or disjoint i64 %i.ir, %i.in
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.it = phi i64 [ %i.is, %bb.l ], [ %i.in, %bb.k ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hc, i64 11
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !15
  %i.iw = zext i8 %i.iv to i64
  %i.ix = shl nuw nsw i64 %i.iw, 40
  %i.iy = add nuw nsw i64 %i.ix, %i.it
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.iz = phi i64 [ %i.iy, %bb.m ], [ %i.in, %bb.k ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hc, i64 10
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !15
  %i.jc = zext i8 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 32
  %i.je = add nuw nsw i64 %i.jd, %i.iz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.jf = phi i64 [ %i.je, %bb.n ], [ %i.in, %bb.k ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hc, i64 9
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !15
  %i.ji = zext i8 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 24
  %i.jk = add nuw nsw i64 %i.jj, %i.jf
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %i.jl = phi i64 [ %i.jk, %bb.o ], [ %i.in, %bb.k ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !15
  %i.jo = zext i8 %i.jn to i64
  %i.jp = shl nuw nsw i64 %i.jo, 16
  %i.jq = add nuw nsw i64 %i.jp, %i.jl
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %i.jr = phi i64 [ %i.jq, %bb.p ], [ %i.in, %bb.k ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.hc, i64 7
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !15
  %i.ju = zext i8 %i.jt to i64
  %i.jv = shl nuw nsw i64 %i.ju, 8
  %i.jw = add nuw nsw i64 %i.jv, %i.jr
  store i64 %i.jw, ptr %4, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %i.jx = getelementptr i8, ptr %i.hm, i64 -1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !15  ; 2 uses
  %i.jz = icmp eq i8 %i.jy, 0
  br i1 %i.jz, label %BIT_initDStream.exit.thread.i, label %.thread49.i.i

.thread49.i.i:                                    ; preds = %bb.r
  %i.ka = zext i8 %i.jy to i32
  %i.kb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ka, i1 true)
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kd = shl nuw nsw i16 %.val165.i, 3
  %i.ke = zext nneg i16 %i.kd to i32
  %reass.sub = sub nsw i32 %i.kb, %i.ke
  %i.kf = add nsw i32 %reass.sub, 41
  store i32 %i.kf, ptr %i.kc, align 8, !tbaa !37
  br label %bb.s

bb.s:                                             ; preds = %.thread49.i.i, %.thread.i.i
  %i.kg = icmp eq i16 %.val164.i, 0
  br i1 %i.kg, label %BIT_initDStream.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kh = icmp ugt i16 %.val164.i, 7
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.hm, ptr %i.ki, align 8, !tbaa !34
  br i1 %i.kh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kj = getelementptr inbounds i8, ptr %i.hn, i64 -8 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !35
  %.val.i168.i = load i64, ptr %i.kj, align 1     ; 2 uses
  store i64 %.val.i168.i, ptr %5, align 8, !tbaa !36
  %i.kl = lshr i64 %.val.i168.i, 56               ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %BIT_initDStream.exit.thread.i, label %.thread.i169.i

.thread.i169.i:                                   ; preds = %bb.u
  %i.kn = trunc nuw nsw i64 %i.kl to i32
  %i.ko = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kn, i1 true)
  %i.kp = xor i32 %i.ko, 31
  %i.kq = sub nuw nsw i32 8, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.kq, ptr %i.kr, align 8, !tbaa !37
  br label %bb.ad

bb.v:                                             ; preds = %bb.t
  %i.ks = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.hm, ptr %i.ks, align 8, !tbaa !35
  %i.kt = load i8, ptr %i.hm, align 1, !tbaa !15
  %i.ku = zext i8 %i.kt to i64                    ; 7 uses
  store i64 %i.ku, ptr %5, align 8, !tbaa !36
  switch i16 %.val164.i, label %bb.ac [
    i16 7, label %bb.w
    i16 6, label %bb.x
    i16 5, label %bb.y
    i16 4, label %bb.z
    i16 3, label %bb.aa
    i16 2, label %bb.ab
  ]

bb.w:                                             ; preds = %bb.v
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hm, i64 6
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !15
  %i.kx = zext i8 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 48
  %i.kz = or disjoint i64 %i.ky, %i.ku
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.la = phi i64 [ %i.kz, %bb.w ], [ %i.ku, %bb.v ]
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hm, i64 5
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !15
  %i.ld = zext i8 %i.lc to i64
  %i.le = shl nuw nsw i64 %i.ld, 40
  %i.lf = add nuw nsw i64 %i.le, %i.la
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.lg = phi i64 [ %i.lf, %bb.x ], [ %i.ku, %bb.v ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !15
  %i.lj = zext i8 %i.li to i64
  %i.lk = shl nuw nsw i64 %i.lj, 32
  %i.ll = add nuw nsw i64 %i.lk, %i.lg
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.lm = phi i64 [ %i.ll, %bb.y ], [ %i.ku, %bb.v ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !15
  %i.lp = zext i8 %i.lo to i64
  %i.lq = shl nuw nsw i64 %i.lp, 24
  %i.lr = add nuw nsw i64 %i.lq, %i.lm
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %i.ls = phi i64 [ %i.lr, %bb.z ], [ %i.ku, %bb.v ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
end_hunk_1
begin_hunk_2_@HUF_decompress4X6:bb.a
  %i.ce = zext nneg i32 %i.by to i64              ; 2 uses
  %i.cf = add nuw nsw i32 %.073.lcssa.i, 12
  %i.cg = sub nuw nsw i32 %i.cf, %i.k
  %i.ch = zext i32 %.073.lcssa.i to i64
  %i.ci = zext i32 %.073.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.073.lcssa.i, 8
  %n.vec = and i64 %i.ci, 4294967288              ; 3 uses
  %i.cj = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ci
  br label %.lr.ph108.i

.lr.ph104.i:                                      ; preds = %.lr.ph104.i, %.lr.ph104.preheader.i.new
  %indvars.iv124.i = phi i64 [ 1, %.lr.ph104.preheader.i.new ], [ %indvars.iv.next125.i.1, %.lr.ph104.i ] ; 5 uses
  %.076101.i = phi i32 [ 0, %.lr.ph104.preheader.i.new ], [ %i.cu, %.lr.ph104.i ] ; 2 uses
  %niter138 = phi i64 [ 0, %.lr.ph104.preheader.i.new ], [ %niter138.next.1, %.lr.ph104.i ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv124.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22
  %i.cm = trunc nuw nsw i64 %indvars.iv124.i to i32
  %.reass.reass = add i32 %i.cm, %invariant.op
  %i.cn = shl i32 %i.cl, %.reass.reass
  %i.co = add i32 %i.cn, %.076101.i               ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv124.i
  store i32 %.076101.i, ptr %i.cp, align 4, !tbaa !22
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next125.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !22
  %i.cs = trunc nuw nsw i64 %indvars.iv.next125.i to i32
  %.reass.1.reass = add i32 %i.cs, %invariant.op153
  %i.ct = shl i32 %i.cr, %.reass.1.reass
  %i.cu = add i32 %i.ct, %i.co                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next125.i
  store i32 %i.co, ptr %i.cv, align 4, !tbaa !22
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %niter138.next.1 = add nuw i64 %niter138, 2     ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph104.i, !llvm.loop !91

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.preheader, %._crit_edge109.i
  %indvar = phi i64 [ 0, %.lr.ph108.i.preheader ], [ %indvar.next, %._crit_edge109.i ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ce, %.lr.ph108.i.preheader ], [ %indvars.iv.next, %._crit_edge109.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %indvars.iv ; 6 uses
  %i.cx = trunc nuw i64 %indvars.iv to i32        ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph108.i
  %i.cy = add i64 %indvar, %i.ce
  %i.cz = mul i64 %i.cy, 68
  %i.da = add i64 %i.cz, -1
  %diff.check = icmp ult i64 %i.da, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = or disjoint i64 %index, 1               ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !22
  %wide.load107 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !22
  %i.de = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.df = lshr <4 x i32> %wide.load107, %broadcast.splat
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.db ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x i32> %i.de, ptr %i.dg, align 4, !tbaa !22
  store <4 x i32> %i.df, ptr %i.dh, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge109.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph108.i, %middle.block
  %indvars.iv129.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph108.i ], [ %i.cj, %middle.block ] ; 4 uses
  %i.dj = sub nsw i64 %wide.trip.count127.i, %indvars.iv129.i.ph
  %i.dk = sub nsw i64 %i.ch, %indvars.iv129.i.ph
  %xtraiter139 = and i64 %i.dj, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv129.i.prol = phi i64 [ %indvars.iv.next130.i.prol, %scalar.ph.prol ], [ %indvars.iv129.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv129.i.prol
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !22
  %i.dn = lshr i32 %i.dm, %i.cx
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv129.i.prol
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !22
  %indvars.iv.next130.i.prol = add nuw nsw i64 %indvars.iv129.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter139
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !93

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv129.i.unr = phi i64 [ %indvars.iv129.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next130.i.prol, %scalar.ph.prol ]
  %i.dp = icmp ult i64 %i.dk, 3
  br i1 %i.dp, label %._crit_edge109.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i.3, %scalar.ph ], [ %indvars.iv129.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv129.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !22
  %i.ds = lshr i32 %i.dr, %i.cx
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv129.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !22
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !22
  %i.dw = lshr i32 %i.dv, %i.cx
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next130.i
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !22
  %indvars.iv.next130.i.1 = add nuw nsw i64 %indvars.iv129.i, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i.1
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !22
  %i.ea = lshr i32 %i.dz, %i.cx
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next130.i.1
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !22
  %indvars.iv.next130.i.2 = add nuw nsw i64 %indvars.iv129.i, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next130.i.2
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !22
  %i.ee = lshr i32 %i.ed, %i.cx
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next130.i.2
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !22
  %indvars.iv.next130.i.3 = add nuw nsw i64 %indvars.iv129.i, 4 ; 2 uses
  %exitcond133.not.i.3 = icmp eq i64 %indvars.iv.next130.i.3, %wide.trip.count127.i
  br i1 %exitcond133.not.i.3, label %._crit_edge109.i, label %scalar.ph, !llvm.loop !94

._crit_edge109.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.cg, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %HUF_readDTableX6.exit, label %.lr.ph108.i, !llvm.loop !95

HUF_readDTableX6.exit.thread:                     ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.a, %bb.b
  %.0.i.ph = phi i64 [ -44, %bb.b ], [ %i.i, %bb.a ], [ -1, %.lr.ph.i.preheader ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %HUF_decompress4X6_usingDTable.exit

HUF_readDTableX6.exit:                            ; preds = %._crit_edge109.i, %._crit_edge99.i, %.preheader.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 18 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 8196
  call fastcc void @HUF_fillDTableX6LevelN(ptr noundef %i.eg, ptr noundef %i.eh, i32 noundef 12, ptr noundef %i.f, i32 noundef 0, i32 noundef 1, i32 noundef %.073.lcssa.i, ptr noundef %8, i32 noundef %.078.lcssa.i, ptr noundef %i.c, i32 noundef %i.bx, i32 0, i16 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not17 = icmp ult i64 %i.i, %3
  br i1 %.not17, label %bb.c, label %HUF_decompress4X6_usingDTable.exit

bb.c:                                             ; preds = %HUF_readDTableX6.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 10 uses
  %i.ej = sub nuw i64 %3, %i.i                    ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 10
  br i1 %i.ek, label %HUF_decompress4X6_usingDTable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.em = load i32, ptr %i.g, align 16, !tbaa !22 ; 6 uses
  %i.en = add i32 %i.em, -1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ep ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.val190.i = load i16, ptr %i.ei, align 1       ; 5 uses
  %i.er = zext i16 %.val190.i to i64              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %.val189.i = load i16, ptr %i.es, align 1       ; 5 uses
  %i.et = zext i16 %.val189.i to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %.val.i = load i16, ptr %i.eu, align 1          ; 5 uses
  %i.ev = zext i16 %.val.i to i64                 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 6 ; 4 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.er  ; 12 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.et  ; 12 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ev  ; 3 uses
  %i.fa = add i64 %1, 3
  %i.fb = lshr i64 %i.fa, 2                       ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 %i.fb ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fb ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fb ; 6 uses
  %i.ff = add nuw nsw i64 %i.er, 6
  %i.fg = add nuw nsw i64 %i.ff, %i.et
  %i.fh = add nuw nsw i64 %i.fg, %i.ev            ; 2 uses
  %i.fi = sub nuw i64 %i.ej, %i.fh
  %i.fj = icmp ugt i64 %i.fh, %i.ej
  br i1 %i.fj, label %BIT_initDStream.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fk = icmp eq i16 %.val190.i, 0
  br i1 %i.fk, label %BIT_initDStream.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fl = icmp ugt i16 %.val190.i, 7
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ew, ptr %i.fm, align 8, !tbaa !34
  br i1 %i.fl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fn = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !35
  %.val.i.i = load i64, ptr %i.fn, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %4, align 8, !tbaa !36
  %i.fp = lshr i64 %.val.i.i, 56                  ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.fr = trunc nuw nsw i64 %i.fp to i32
  %i.fs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fr, i1 true)
  %i.ft = xor i32 %i.fs, 31
  %i.fu = sub nuw nsw i32 8, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !37
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ew, ptr %i.fw, align 8, !tbaa !35
  %i.fx = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.fy = zext i8 %i.fx to i64                    ; 7 uses
  store i64 %i.fy, ptr %4, align 8, !tbaa !36
  switch i16 %.val190.i, label %bb.o [
    i16 7, label %bb.i
    i16 6, label %bb.j
    i16 5, label %bb.k
    i16 4, label %bb.l
    i16 3, label %bb.m
    i16 2, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !15
  %i.gb = zext i8 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 48
  %i.gd = or disjoint i64 %i.gc, %i.fy
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ge = phi i64 [ %i.gd, %bb.i ], [ %i.fy, %bb.h ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ei, i64 11
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gh = zext i8 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 40
  %i.gj = add nuw nsw i64 %i.gi, %i.ge
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.gk = phi i64 [ %i.gj, %bb.j ], [ %i.fy, %bb.h ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ei, i64 10
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = zext i8 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 32
  %i.gp = add nuw nsw i64 %i.go, %i.gk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.gq = phi i64 [ %i.gp, %bb.k ], [ %i.fy, %bb.h ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ei, i64 9
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !15
  %i.gt = zext i8 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 24
  %i.gv = add nuw nsw i64 %i.gu, %i.gq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.gw = phi i64 [ %i.gv, %bb.l ], [ %i.fy, %bb.h ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !15
  %i.gz = zext i8 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 16
  %i.hb = add nuw nsw i64 %i.ha, %i.gw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %i.hc = phi i64 [ %i.hb, %bb.m ], [ %i.fy, %bb.h ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ei, i64 7
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !15
  %i.hf = zext i8 %i.he to i64
  %i.hg = shl nuw nsw i64 %i.hf, 8
  %i.hh = add nuw nsw i64 %i.hg, %i.hc
  store i64 %i.hh, ptr %4, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %i.hi = getelementptr i8, ptr %i.ex, i64 -1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !15  ; 2 uses
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %BIT_initDStream.exit.thread.i, label %.thread49.i.i

.thread49.i.i:                                    ; preds = %bb.o
  %i.hl = zext i8 %i.hj to i32
  %i.hm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hl, i1 true)
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ho = shl nuw nsw i16 %.val190.i, 3
  %i.hp = zext nneg i16 %i.ho to i32
  %reass.sub = sub nsw i32 %i.hm, %i.hp
  %i.hq = add nsw i32 %reass.sub, 41
  store i32 %i.hq, ptr %i.hn, align 8, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %.thread49.i.i, %.thread.i.i
  %i.hr = icmp eq i16 %.val189.i, 0
  br i1 %i.hr, label %BIT_initDStream.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hs = icmp ugt i16 %.val189.i, 7
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.ex, ptr %i.ht, align 8, !tbaa !34
  br i1 %i.hs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hu = getelementptr inbounds i8, ptr %i.ey, i64 -8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !35
  %.val.i193.i = load i64, ptr %i.hu, align 1     ; 2 uses
  store i64 %.val.i193.i, ptr %5, align 8, !tbaa !36
  %i.hw = lshr i64 %.val.i193.i, 56               ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %BIT_initDStream.exit.thread.i, label %.thread.i194.i

.thread.i194.i:                                   ; preds = %bb.r
  %i.hy = trunc nuw nsw i64 %i.hw to i32
  %i.hz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hy, i1 true)
  %i.ia = xor i32 %i.hz, 31
  %i.ib = sub nuw nsw i32 8, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ib, ptr %i.ic, align 8, !tbaa !37
  br label %bb.aa

bb.s:                                             ; preds = %bb.q
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ex, ptr %i.id, align 8, !tbaa !35
  %i.ie = load i8, ptr %i.ex, align 1, !tbaa !15
  %i.if = zext i8 %i.ie to i64                    ; 7 uses
  store i64 %i.if, ptr %5, align 8, !tbaa !36
  switch i16 %.val189.i, label %bb.z [
    i16 7, label %bb.t
    i16 6, label %bb.u
    i16 5, label %bb.v
    i16 4, label %bb.w
    i16 3, label %bb.x
    i16 2, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !15
  %i.ii = zext i8 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, 48
  %i.ik = or disjoint i64 %i.ij, %i.if
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.il = phi i64 [ %i.ik, %bb.t ], [ %i.if, %bb.s ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %i.in = load i8, ptr %i.im, align 1, !tbaa !15
  %i.io = zext i8 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 40
  %i.iq = add nuw nsw i64 %i.ip, %i.il
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.ir = phi i64 [ %i.iq, %bb.u ], [ %i.if, %bb.s ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.it = load i8, ptr %i.is, align 1, !tbaa !15
  %i.iu = zext i8 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 32
  %i.iw = add nuw nsw i64 %i.iv, %i.ir
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.ix = phi i64 [ %i.iw, %bb.v ], [ %i.if, %bb.s ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !15
  %i.ja = zext i8 %i.iz to i64
  %i.jb = shl nuw nsw i64 %i.ja, 24
  %i.jc = add nuw nsw i64 %i.jb, %i.ix
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.jd = phi i64 [ %i.jc, %bb.w ], [ %i.if, %bb.s ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
end_hunk_2
begin_hunk_3_@HUF_decodeStreamX4:bb.a
  %i.ec = load i32, ptr %i.a, align 8, !tbaa !37
  %i.ed = add i32 %i.ec, %i.eb                    ; 4 uses
  store i32 %i.ed, ptr %i.a, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !27
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.311, i64 %i.eg ; 2 uses
  %i.ei = icmp ugt i32 %i.ed, 64
  br i1 %i.ei, label %.preheader, label %.lr.ph12, !llvm.loop !114

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.val9.i66 = phi i32 [ %i.et, %.lr.ph ], [ %.val9.i6491, %.preheader ]
  %.471 = phi ptr [ %i.ex, %.lr.ph ], [ %.3.lcssa, %.preheader ] ; 2 uses
  %.val.i65 = load i64, ptr %1, align 8, !tbaa !36
  %i.ej = and i32 %.val9.i66, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %.val.i65, %i.ek
  %i.em = lshr i64 %i.el, %i.g
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %.471, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !26
  %i.er = zext i8 %i.eq to i32
  %i.es = load i32, ptr %i.a, align 8, !tbaa !37
  %i.et = add i32 %i.es, %i.er                    ; 3 uses
  store i32 %i.et, ptr %i.a, align 8, !tbaa !37
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !27
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %.471, i64 %i.ew ; 3 uses
  %.not = icmp ugt ptr %i.ex, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.val15.i = phi i32 [ %.val9.i6491, %.preheader ], [ %i.et, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.ex, %.lr.ph ] ; 2 uses
  %i.ey = icmp ult ptr %.4.lcssa, %2
  br i1 %i.ey, label %bb.j, label %HUF_decodeLastSymbolX4.exit

bb.j:                                             ; preds = %._crit_edge
  %.val.i67 = load i64, ptr %1, align 8, !tbaa !36
  %i.ez = and i32 %.val15.i, 63
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %.val.i67, %i.fa
  %i.fc = lshr i64 %i.fb, %i.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 4 uses
  %i.fe = load i8, ptr %i.fd, align 2
  store i8 %i.fe, ptr %.4.lcssa, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !27
  %i.fh = icmp eq i8 %i.fg, 1
  br i1 %i.fh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !26
  %i.fk = zext i8 %i.fj to i32
  %i.fl = load i32, ptr %i.a, align 8, !tbaa !37
  %i.fm = add i32 %i.fl, %i.fk
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 64
  br i1 %i.fo, label %bb.m, label %HUF_decodeLastSymbolX4.exit

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !26
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fn, %i.fr
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 64)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %bb.m ], [ %i.fm, %bb.k ]
  store i32 %spec.store.select.sink.i, ptr %i.a, align 8
  br label %HUF_decodeLastSymbolX4.exit

HUF_decodeLastSymbolX4.exit:                      ; preds = %.sink.split.i, %bb.l, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @HUF_fillDTableX6LevelN(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 17) %6, ptr nofree noundef nonnull readonly captures(none) %7, i32 noundef %8, ptr nofree noundef nonnull readonly captures(none) %9, i32 noundef %10, i32 %11, i16 %12) unnamed_addr #15 {
bb.a:
  %13 = alloca %union.HUF_DSeqX6, align 4         ; 5 uses
  %i.a = alloca [17 x i32], align 16              ; 6 uses
  %.fr82 = freeze i16 %12                         ; 8 uses
  store i32 %11, ptr %13, align 4
  %.sroa.5.0.extract.shift = lshr i16 %.fr82, 8   ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i16 %.sroa.5.0.extract.shift to i8
  %i.b = sub i32 %10, %2
  %i.c = sub i32 %10, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = zext i32 %4 to i64
  %i.e = getelementptr inbounds nuw [68 x i8], ptr %3, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull align 4 dereferenceable(68) %i.e, i64 68, i1 false)
  %i.f = icmp sgt i32 %5, 1
  br i1 %i.f, label %bb.b, label %.loopexit75

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %5 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 3 uses
  %.not81 = icmp eq i32 %i.i, 0
  br i1 %.not81, label %.loopexit75, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.i to i64         ; 7 uses
  %min.iters.check = icmp ult i32 %i.i, 16
  br i1 %min.iters.check, label %.lr.ph.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.j = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.j
  %i.k = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep114 = getelementptr i8, ptr %0, i64 %i.k
  %bound0 = icmp ult ptr %1, %scevgep114
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader169, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %11, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert115 = insertelement <4 x i16> poison, i16 %.fr82, i64 0
  %broadcast.splat116 = shufflevector <4 x i16> %broadcast.splatinsert115, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.l, align 4, !tbaa !15, !alias.scope !135, !noalias !136
  store <4 x i32> %broadcast.splat, ptr %i.m, align 4, !tbaa !15, !alias.scope !135, !noalias !136
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <4 x i16> %broadcast.splat116, ptr %i.n, align 1, !alias.scope !136
  store <4 x i16> %broadcast.splat116, ptr %i.o, align 1, !alias.scope !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit75, label %.lr.ph.preheader169

.lr.ph.preheader169:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader169, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader169 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader169 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  store i32 %11, ptr %i.q, align 4, !tbaa !15
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  store i16 %.fr82, ptr %i.r, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !120

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader169
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader169 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.s = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %.loopexit75, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %11, ptr %i.u, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %.fr82, ptr %i.v, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %11, ptr %i.w, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %.fr82, ptr %i.x, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  store i32 %11, ptr %i.y, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  store i16 %.fr82, ptr %i.z, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  store i32 %11, ptr %i.aa, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  store i16 %.fr82, ptr %i.ab, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit75, label %.lr.ph, !llvm.loop !121

.loopexit75:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b, %bb.a
  %i.ac = add nuw i8 %.sroa.5.0.extract.trunc, 1  ; 13 uses
  %i.ad = sext i32 %5 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22 ; 2 uses
  %i.ag = icmp ult i32 %i.af, %8
  br i1 %i.ag, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %.loopexit75
  %i.ah = zext nneg i16 %.sroa.5.0.extract.shift to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 %i.ah ; 2 uses
  %i.aj = icmp ugt i16 %.fr82, 767
  %.sroa.5.0.insert.ext = zext nneg i8 %i.ac to i16
  %.sroa.5.0.insert.shift = shl nuw nsw i16 %.sroa.5.0.insert.ext, 8
  %i.ak = zext i32 %i.af to i64                   ; 2 uses
  %wide.trip.count103 = zext i32 %8 to i64        ; 2 uses
  br i1 %i.aj, label %.lr.ph80.split.us.preheader, label %.lr.ph80.split.preheader

.lr.ph80.split.preheader:                         ; preds = %.lr.ph80
  %broadcast.splatinsert133 = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  br label %.lr.ph80.split

.lr.ph80.split.us.preheader:                      ; preds = %.lr.ph80
  %broadcast.splatinsert158 = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  br label %.lr.ph80.split.us

.lr.ph80.split.us:                                ; preds = %.lr.ph80.split.us.preheader, %.loopexit.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %.loopexit.us ], [ %i.ak, %.lr.ph80.split.us.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv100 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !40  ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sub i32 %10, %i.ap                      ; 2 uses
  %i.ar = add i32 %i.aq, %4
  %i.as = zext i8 %i.ao to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !22 ; 3 uses
  %i.av = sub nsw i32 %2, %i.aq
  %i.aw = shl nuw i32 1, %i.av
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !15
  %i.ax = trunc i32 %i.ar to i8                   ; 6 uses
  %i.ay = add i32 %i.aw, %i.au                    ; 3 uses
  %i.az = icmp ult i32 %i.au, %i.ay
  br i1 %i.az, label %.lr.ph78.us, label %.loopexit.us

scalar.ph150:                                     ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.3, %scalar.ph150 ], [ %indvars.iv95.unr, %scalar.ph150.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95 ; 2 uses
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us, align 1, !tbaa !15
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !15
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96 ; 2 uses
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.1, align 1, !tbaa !15
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !15
  %indvars.iv.next96.1 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96.1 ; 2 uses
  store i8 %i.ax, ptr %i.be, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.2 = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.2, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96.1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !15
  %indvars.iv.next96.2 = add nuw nsw i64 %indvars.iv95, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next96.2 ; 2 uses
  store i8 %i.ax, ptr %i.bg, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.3 = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.3, align 1, !tbaa !15
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96.2
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !15
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %exitcond99.not.3 = icmp eq i64 %indvars.iv.next96.3, %wide.trip.count98
  br i1 %exitcond99.not.3, label %.loopexit.us, label %scalar.ph150, !llvm.loop !122

.loopexit.us:                                     ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150, %middle.block165, %.lr.ph80.split.us
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !22
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge, label %.lr.ph80.split.us, !llvm.loop !123

.lr.ph78.us:                                      ; preds = %.lr.ph80.split.us
  %i.bi = load i32, ptr %13, align 4, !tbaa !15   ; 6 uses
  %i.bj = zext i32 %i.au to i64                   ; 7 uses
  %wide.trip.count98 = zext i32 %i.ay to i64      ; 6 uses
  %i.bk = sub nsw i64 %wide.trip.count98, %i.bj   ; 3 uses
  %min.iters.check151 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph78.us
  %i.bl = shl nuw nsw i64 %i.bj, 1
  %scevgep143 = getelementptr i8, ptr %0, i64 %i.bl
  %i.bm = shl nuw nsw i64 %wide.trip.count98, 1
  %scevgep144 = getelementptr i8, ptr %0, i64 %i.bm
  %i.bn = shl nuw nsw i64 %i.bj, 2
  %scevgep145 = getelementptr i8, ptr %1, i64 %i.bn
  %i.bo = shl nuw nsw i64 %wide.trip.count98, 2
  %scevgep146 = getelementptr i8, ptr %1, i64 %i.bo
  %bound0147 = icmp ult ptr %scevgep143, %scevgep146
  %bound1148 = icmp ult ptr %scevgep145, %scevgep144
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck142
  %n.vec153 = and i64 %i.bk, -8                   ; 3 uses
  %i.bp = add nsw i64 %n.vec153, %i.bj
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert156 = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %interleaved.vec162 = shufflevector <4 x i8> %broadcast.splatinsert156, <4 x i8> %broadcast.splatinsert158, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4> ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph152
  %index161 = phi i64 [ 0, %vector.ph152 ], [ %index.next164, %vector.body160 ] ; 2 uses
  %i.bq = add nuw i64 %index161, %i.bj            ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  %i.bs = getelementptr [2 x i8], ptr %0, i64 %i.bq
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store <8 x i8> %interleaved.vec162, ptr %i.br, align 1, !tbaa !15, !alias.scope !137, !noalias !138
  store <8 x i8> %interleaved.vec162, ptr %i.bt, align 1, !tbaa !15, !alias.scope !137, !noalias !138
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %broadcast.splat155, ptr %i.bu, align 4, !tbaa !15, !alias.scope !138
  store <4 x i32> %broadcast.splat155, ptr %i.bv, align 4, !tbaa !15, !alias.scope !138
  %index.next164 = add nuw i64 %index161, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.bw, label %middle.block165, label %vector.body160, !llvm.loop !127

middle.block165:                                  ; preds = %vector.body160
  %cmp.n166 = icmp eq i64 %i.bk, %n.vec153
  br i1 %cmp.n166, label %.loopexit.us, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck142, %.lr.ph78.us, %middle.block165
  %indvars.iv95.ph = phi i64 [ %i.bj, %vector.memcheck142 ], [ %i.bj, %.lr.ph78.us ], [ %i.bp, %middle.block165 ] ; 4 uses
  %i.bx = sub nsw i64 %wide.trip.count98, %indvars.iv95.ph
  %xtraiter173 = and i64 %i.bx, 3                 ; 2 uses
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %indvars.iv95.prol = phi i64 [ %indvars.iv.next96.prol, %scalar.ph150.prol ], [ %indvars.iv95.ph, %scalar.ph150.preheader ] ; 3 uses
  %prol.iter175 = phi i64 [ %prol.iter175.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95.prol ; 2 uses
  store i8 %i.ax, ptr %i.by, align 1, !tbaa !15
  %.sroa.5.0..sroa_idx68.us.prol = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.ac, ptr %.sroa.5.0..sroa_idx68.us.prol, align 1, !tbaa !15
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95.prol
  store i32 %i.bi, ptr %i.bz, align 4, !tbaa !15
  %indvars.iv.next96.prol = add nuw nsw i64 %indvars.iv95.prol, 1 ; 2 uses
  %prol.iter175.next = add i64 %prol.iter175, 1   ; 2 uses
  %prol.iter175.cmp.not = icmp eq i64 %prol.iter175.next, %xtraiter173
  br i1 %prol.iter175.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !128

scalar.ph150.prol.loopexit:                       ; preds = %scalar.ph150.prol, %scalar.ph150.preheader
  %indvars.iv95.unr = phi i64 [ %indvars.iv95.ph, %scalar.ph150.preheader ], [ %indvars.iv.next96.prol, %scalar.ph150.prol ]
  %i.ca = sub nsw i64 %indvars.iv95.ph, %wide.trip.count98
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.loopexit.us, label %scalar.ph150

.lr.ph80.split:                                   ; preds = %.lr.ph80.split.preheader, %.loopexit
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.loopexit ], [ %i.ak, %.lr.ph80.split.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv90 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !39
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40  ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = sub i32 %10, %i.cg                      ; 2 uses
  %i.ci = add i32 %i.ch, %4                       ; 5 uses
  %i.cj = zext i8 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22 ; 5 uses
  %i.cm = sub nsw i32 %2, %i.ch                   ; 2 uses
  %i.cn = shl nuw i32 1, %i.cm                    ; 2 uses
  store i8 %i.cd, ptr %i.ai, align 1, !tbaa !15
  %i.co = trunc i32 %i.ci to i8                   ; 6 uses
  %i.cp = sub nsw i32 %2, %i.ci
  %.not = icmp slt i32 %i.cp, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph80.split
  %i.cq = add nsw i32 %i.b, %i.ci
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 1)
  %i.cr = zext i32 %i.cl to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr
  %i.cu = load i32, ptr %13, align 4
  %i.cv = trunc i32 %i.ci to i16
  %.sroa.0.0.insert.ext = and i16 %i.cv, 255
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, %.sroa.5.0.insert.shift
  tail call fastcc void @HUF_fillDTableX6LevelN(ptr noundef %i.cs, ptr noundef %i.ct, i32 noundef %i.cm, ptr noundef %3, i32 noundef %i.ci, i32 noundef %spec.store.select, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 %i.cu, i16 %.sroa.0.0.insert.insert)
  %.pre = add i32 %i.cn, %i.cl
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph80.split
  %i.cw = add i32 %i.cn, %i.cl                    ; 6 uses
  %i.cx = icmp ult i32 %i.cl, %i.cw
  br i1 %i.cx, label %.lr.ph78, label %.loopexit

end_hunk_3
