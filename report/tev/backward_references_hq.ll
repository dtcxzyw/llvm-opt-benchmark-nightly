Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/backward_references_hq?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@BrotliCreateZopfliBackwardReferences:bb.a
  %i.h = add nuw i64 %.04.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

BrotliInitZopfliNodes.exit.loopexit.unr-lcssa:    ; preds = %.lr.ph.i
  %i.i = and i64 %1, 1
  %lcmp.mod.not.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %BrotliInitZopfliNodes.exit

.lr.ph.i.epil.preheader:                          ; preds = %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa, %bb.b
  %.04.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.h, %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.04.i.epil.init ; 4 uses
  store i32 1, ptr %i.j, align 4, !tbaa !22
  %.sroa.4.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.epil, align 4, !tbaa !22
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 4, !tbaa !22
  %.sroa.6.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store float 1.700000e+38, ptr %.sroa.6.0..sroa_idx.i.epil, align 4, !tbaa !23
  br label %BrotliInitZopfliNodes.exit

BrotliInitZopfliNodes.exit:                       ; preds = %.lr.ph.i.epil.preheader, %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.c, %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa ], [ %i.c, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.l = tail call i64 @BrotliZopfliComputeShortestPath(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %8, ptr noundef %7, ptr noundef %i.k)
  %i.m = load i64, ptr %11, align 8, !tbaa !48
  %i.n = add i64 %i.m, %i.l
  store i64 %i.n, ptr %11, align 8, !tbaa !48
  tail call void @BrotliZopfliCreateCommands(i64 noundef %1, i64 noundef %2, ptr noundef %i.k, ptr noundef %8, ptr noundef %9, ptr noundef %6, ptr noundef %10, ptr noundef %12)
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.k) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @BrotliCreateHqZopfliBackwardReferences(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10, ptr nofree noundef captures(none) %11, ptr nofree noundef captures(none) %12) local_unnamed_addr #3 {
bb.a:
  %13 = alloca %struct.PosData, align 8           ; 28 uses
  %14 = alloca %struct.PosData, align 8           ; 11 uses
  %15 = alloca %struct.StartPosQueue, align 8     ; 19 uses
  %i.a = alloca [38 x i32], align 16              ; 15 uses
  %i.b = alloca [4 x i32], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = add i64 %i.h, -16                        ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 9896) #13
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.l = load i64, ptr %i.k, align 8, !tbaa !56
  br label %._crit_edge633

bb.b:                                             ; preds = %bb.a
  %i.m = shl i64 %1, 2                            ; 3 uses
  %i.n = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.m) #13 ; 3 uses
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 127)
  %i.p = add i64 %2, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 9896) #13 ; 2 uses
  %.not222 = icmp eq i64 %i.m, 0
  br i1 %.not222, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl i64 %1, 5
  %i.s = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.r) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !56   ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !tbaa !57
  %.not223 = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not223, i64 0, i64 256       ; 2 uses
  %i.z = icmp ugt i64 %1, 3
  br i1 %i.z, label %.lr.ph632, label %._crit_edge633

.lr.ph632:                                        ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 624
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 629
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.ad = or disjoint i64 %i.y, 128
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 696
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 3 uses
  %i.ak = add i64 %i.w, 1
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 360
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph632, %bb.co
  %.0202630 = phi ptr [ %i.t, %.lr.ph632 ], [ %.1, %bb.co ] ; 3 uses
  %.0203629 = phi i64 [ 0, %.lr.ph632 ], [ %i.wn, %bb.co ] ; 6 uses
  %.0205628 = phi i64 [ 0, %.lr.ph632 ], [ %.2207, %bb.co ] ; 5 uses
  %.0208627 = phi i64 [ %i.m, %.lr.ph632 ], [ %.1209, %bb.co ] ; 5 uses
  %i.ay = add i64 %.0203629, %2                   ; 19 uses
  %i.az = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.i) ; 2 uses
  %i.ba = add i64 %i.ay, %i.d
  %i.bb = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.i) ; 2 uses
  %i.bc = sub i64 %1, %.0203629                   ; 10 uses
  %i.bd = load i32, ptr %i.aa, align 8, !tbaa !68
  %.not225 = icmp eq i32 %i.bd, 0
  br i1 %.not225, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not226 = icmp eq i64 %i.ay, 0
  br i1 %.not226, label %.thread351, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = add i64 %i.ay, -1
  %i.bf = and i64 %i.be, %4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !23  ; 2 uses
  %.not418 = icmp eq i64 %i.ay, 1
  br i1 %.not418, label %.thread351, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = add i64 %i.ay, -2
  %i.bj = and i64 %i.bi, %4
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !23
  %i.bm = zext i8 %i.bl to i64
  br label %.thread351

.thread351:                                       ; preds = %bb.f, %bb.g, %bb.h
  %.shrunk = phi i8 [ %i.bh, %bb.h ], [ %i.bh, %bb.g ], [ 0, %bb.f ]
  %i.bn = phi i64 [ %i.bm, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.bo = zext i8 %.shrunk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bn
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = or i8 %i.bs, %i.bq
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %i.bx = zext i8 %i.bw to i64
  br label %bb.i

bb.i:                                             ; preds = %.thread351, %bb.e
  %.0199 = phi i64 [ %i.bx, %.thread351 ], [ 0, %bb.e ]
  %i.by = add i64 %i.ad, %.0205628                ; 3 uses
  %i.bz = icmp ult i64 %.0208627, %i.by
  br i1 %i.bz, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ca = icmp eq i64 %.0208627, 0                ; 2 uses
  %..0208 = select i1 %i.ca, i64 %i.by, i64 %.0208627
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i64 [ %..0208, %bb.j ], [ %i.cc, %bb.k ] ; 4 uses
  %i.cb = icmp ult i64 %.0, %i.by
  %i.cc = shl i64 %.0, 1
  br i1 %i.cb, label %bb.k, label %bb.l, !llvm.loop !186

bb.l:                                             ; preds = %bb.k
  %i.cd = shl i64 %.0, 3
  %i.ce = call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.cd) #13 ; 2 uses
  br i1 %i.ca, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = shl i64 %.0208627, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %.0202630, i64 %i.cf, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @BrotliFree(ptr noundef %0, ptr noundef %.0202630) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.1209 = phi i64 [ %.0, %bb.n ], [ %.0208627, %bb.i ]
  %.1 = phi ptr [ %i.ce, %bb.n ], [ %.0202630, %bb.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0199
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !69
  %i.ci = getelementptr [8 x i8], ptr %.1, i64 %.0205628 ; 4 uses
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %i.y ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.ck = and i64 %i.ay, %4                       ; 4 uses
  %i.cl = load i32, ptr %i.ag, align 4, !tbaa !55, !noalias !234
  %.not.i = icmp eq i32 %i.cl, 11
  %i.cm = select i1 %.not.i, i64 64, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !234
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.ay, i64 %i.cm) ; 2 uses
  %.071.i476 = add i64 %i.ay, -1                  ; 2 uses
  %i.cn = icmp ugt i64 %.071.i476, %spec.select.i
  br i1 %i.cn, label %.lr.ph480, label %.thread357

.lr.ph480:                                        ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %i.ck ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %i.cq = icmp ugt i64 %i.bc, 7
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph480, %bb.w
  %.071.i479 = phi i64 [ %.071.i476, %.lr.ph480 ], [ %.071.i, %bb.w ] ; 3 uses
  %.073.i478 = phi ptr [ %i.cj, %.lr.ph480 ], [ %.2.i, %bb.w ] ; 7 uses
  %.0345477 = phi i64 [ 1, %.lr.ph480 ], [ %.3348, %bb.w ] ; 5 uses
  %i.cr = sub i64 %i.ay, %.071.i479               ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, %i.az
  br i1 %i.cs, label %.thread357, label %bb.q, !prof !70

bb.q:                                             ; preds = %bb.p
  %i.ct = and i64 %.071.i479, %4
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !23, !alias.scope !233
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %i.ct ; 6 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !23, !alias.scope !233
  %.not80.i = icmp eq i8 %i.cu, %i.cw
  br i1 %.not80.i, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.cx = load i8, ptr %i.cp, align 1, !tbaa !23, !alias.scope !233
  %i.cy = getelementptr i8, ptr %i.cv, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23, !alias.scope !233
  %.not81.i = icmp eq i8 %i.cx, %i.cz
  br i1 %.not81.i, label %.preheader430, label %bb.w

.preheader430:                                    ; preds = %bb.r
  br i1 %i.cq, label %.lr.ph, label %.preheader429

.preheader429:                                    ; preds = %bb.t, %.preheader430
  %.026.i237.lcssa = phi ptr [ %i.cv, %.preheader430 ], [ %i.di, %bb.t ] ; 3 uses
  %.024.i.lcssa = phi ptr [ %i.co, %.preheader430 ], [ %i.dh, %bb.t ]
  %.022.i.lcssa = phi i64 [ %i.bc, %.preheader430 ], [ %i.dj, %bb.t ] ; 3 uses
  %.not.i238468 = icmp eq i64 %.022.i.lcssa, 0
  br i1 %.not.i238468, label %.critedge.i, label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %.preheader429
  %scevgep = getelementptr i8, ptr %.026.i237.lcssa, i64 %.022.i.lcssa
  br label %.lr.ph472

.lr.ph:                                           ; preds = %.preheader430, %bb.t
  %.022.i465 = phi i64 [ %i.dj, %bb.t ], [ %i.bc, %.preheader430 ]
  %.024.i464 = phi ptr [ %i.dh, %bb.t ], [ %i.co, %.preheader430 ] ; 2 uses
  %.026.i237463 = phi ptr [ %i.di, %bb.t ], [ %i.cv, %.preheader430 ] ; 3 uses
  %.0.copyload.i246 = load i64, ptr %.024.i464, align 1, !noalias !235 ; 2 uses
  %.0.copyload.i245 = load i64, ptr %.026.i237463, align 1, !noalias !235 ; 2 uses
  %.not30.i = icmp eq i64 %.0.copyload.i246, %.0.copyload.i245
  br i1 %.not30.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.da = xor i64 %.0.copyload.i245, %.0.copyload.i246
  %i.db = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.da, i1 true)
  %i.dc = ptrtoint ptr %.026.i237463 to i64
  %i.dd = ptrtoint ptr %i.cv to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr i64 %i.db, 3
  %i.dg = add i64 %i.de, %i.df
  br label %FindMatchLengthWithLimit.exit

bb.t:                                             ; preds = %.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %.024.i464, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.026.i237463, i64 8 ; 2 uses
  %i.dj = add i64 %.022.i465, -8                  ; 3 uses
  %i.dk = icmp ugt i64 %i.dj, 7
  br i1 %i.dk, label %.lr.ph, label %.preheader429, !llvm.loop !1

.lr.ph472:                                        ; preds = %.lr.ph472.preheader, %bb.u
  %.123.i471 = phi i64 [ %i.do, %bb.u ], [ %.022.i.lcssa, %.lr.ph472.preheader ]
  %.125.i470 = phi ptr [ %i.dp, %bb.u ], [ %.024.i.lcssa, %.lr.ph472.preheader ] ; 2 uses
  %.228.i469 = phi ptr [ %i.dq, %bb.u ], [ %.026.i237.lcssa, %.lr.ph472.preheader ] ; 3 uses
  %i.dl = load i8, ptr %.228.i469, align 1, !tbaa !23, !noalias !235
  %i.dm = load i8, ptr %.125.i470, align 1, !tbaa !23, !noalias !235
  %i.dn = icmp eq i8 %i.dl, %i.dm
  br i1 %i.dn, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph472
  %i.do = add nsw i64 %.123.i471, -1              ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.125.i470, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.228.i469, i64 1
  %.not.i238 = icmp eq i64 %i.do, 0
  br i1 %.not.i238, label %.critedge.i, label %.lr.ph472, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.u, %.lr.ph472, %.preheader429
  %.228.i.lcssa = phi ptr [ %.026.i237.lcssa, %.preheader429 ], [ %.228.i469, %.lr.ph472 ], [ %scevgep, %bb.u ]
  %i.dr = ptrtoint ptr %.228.i.lcssa to i64
  %i.ds = ptrtoint ptr %i.cv to i64
  %i.dt = sub i64 %i.dr, %i.ds
  br label %FindMatchLengthWithLimit.exit

FindMatchLengthWithLimit.exit:                    ; preds = %bb.s, %.critedge.i
  %.2.i239 = phi i64 [ %i.dg, %bb.s ], [ %i.dt, %.critedge.i ] ; 3 uses
  %i.du = icmp ugt i64 %.2.i239, %.0345477
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %FindMatchLengthWithLimit.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.073.i478, i64 8
  %i.dw = trunc i64 %i.cr to i32
  store i32 %i.dw, ptr %.073.i478, align 4, !tbaa !72, !noalias !235
  %.tr.i = trunc i64 %.2.i239 to i32
  %i.dx = shl i32 %.tr.i, 5
  %i.dy = getelementptr inbounds nuw i8, ptr %.073.i478, i64 4
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !73, !noalias !235
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %FindMatchLengthWithLimit.exit, %bb.r, %bb.q
  %.3348 = phi i64 [ %.0345477, %bb.q ], [ %.2.i239, %bb.v ], [ %.0345477, %FindMatchLengthWithLimit.exit ], [ %.0345477, %bb.r ] ; 3 uses
  %.2.i = phi ptr [ %.073.i478, %bb.q ], [ %i.dv, %bb.v ], [ %.073.i478, %FindMatchLengthWithLimit.exit ], [ %.073.i478, %bb.r ] ; 2 uses
  %.071.i = add i64 %.071.i479, -1                ; 2 uses
  %i.dz = icmp ugt i64 %.071.i, %spec.select.i
  %i.ea = icmp ult i64 %.3348, 3
  %i.eb = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %i.eb, label %bb.p, label %.thread357, !llvm.loop !3

.thread357:                                       ; preds = %bb.w, %bb.p, %bb.o
  %.0345.lcssa = phi i64 [ 1, %bb.o ], [ %.0345477, %bb.p ], [ %.3348, %bb.w ] ; 4 uses
  %.073.i.lcssa = phi ptr [ %i.cj, %bb.o ], [ %.073.i478, %bb.p ], [ %.2.i, %bb.w ] ; 3 uses
  %i.ec = icmp ult i64 %.0345.lcssa, %i.bc
  br i1 %i.ec, label %bb.x, label %StoreAndFindMatchesH10.exit

bb.x:                                             ; preds = %.thread357
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.ed = call i64 @llvm.umin.i64(i64 %i.bc, i64 128)
  %i.ee = icmp ugt i64 %i.bc, 127                 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 %i.ck ; 3 uses
  %.val317 = load i32, ptr %i.ef, align 1
  %i.eg = mul i32 %.val317, 506832829
  %i.eh = lshr i32 %i.eg, 15
  %i.ei = load ptr, ptr %i.ah, align 8, !tbaa !76, !alias.scope !236
  %i.ej = load ptr, ptr %i.ai, align 8, !tbaa !77, !alias.scope !236 ; 7 uses
  %i.ek = zext nneg i32 %i.eh to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !22, !noalias !239 ; 2 uses
  %i.en = load i64, ptr %i.ae, align 8, !tbaa !78, !alias.scope !240, !noalias !241 ; 4 uses
  %i.eo = and i64 %i.en, %i.ay
  %i.ep = shl i64 %i.eo, 1                        ; 3 uses
  %i.eq = or disjoint i64 %i.ep, 1                ; 2 uses
  br i1 %i.ee, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.er = trunc i64 %i.ay to i32
  store i32 %i.er, ptr %i.el, align 4, !tbaa !22, !noalias !241
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0108.i501 = zext i32 %i.em to i64             ; 2 uses
  %i.es = icmp eq i64 %i.ay, %.0108.i501
  br i1 %i.es, label %._crit_edge, label %.lr.ph511

.lr.ph511:                                        ; preds = %bb.z, %bb.ar
  %.0108.i510 = phi i64 [ %.0108.i, %bb.ar ], [ %.0108.i501, %bb.z ] ; 5 uses
  %.093.i509 = phi i64 [ %i.gx, %bb.ar ], [ 64, %bb.z ] ; 2 uses
  %.094.i508 = phi i64 [ %.195.i, %bb.ar ], [ 0, %bb.z ] ; 2 uses
  %.096.i507 = phi i64 [ %.197.i, %bb.ar ], [ 0, %bb.z ] ; 2 uses
  %.0100.i506 = phi i64 [ %.1101.i, %bb.ar ], [ %i.eq, %bb.z ] ; 4 uses
  %.0104.i505 = phi i64 [ %.1105.i, %bb.ar ], [ %i.ep, %bb.z ] ; 4 uses
  %.0108.i.in504 = phi i32 [ %.1109.in.i, %bb.ar ], [ %i.em, %bb.z ] ; 2 uses
  %.0112.i503 = phi ptr [ %.1113.i, %bb.ar ], [ %.073.i.lcssa, %bb.z ] ; 6 uses
  %.4502 = phi i64 [ %.5, %bb.ar ], [ %.0345.lcssa, %bb.z ] ; 4 uses
  %i.et = sub i64 %i.ay, %.0108.i510              ; 2 uses
  %i.eu = icmp ugt i64 %i.et, %i.az
  %i.ev = icmp eq i64 %.093.i509, 0
  %or.cond.i = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %or.cond.i, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %bb.ar, %.lr.ph511, %bb.z
  %.4.lcssa = phi i64 [ %.0345.lcssa, %bb.z ], [ %.4502, %.lr.ph511 ], [ %.5, %bb.ar ] ; 2 uses
  %.0112.i.lcssa = phi ptr [ %.073.i.lcssa, %bb.z ], [ %.0112.i503, %.lr.ph511 ], [ %.1113.i, %bb.ar ] ; 2 uses
  %.0104.i.lcssa = phi i64 [ %i.ep, %bb.z ], [ %.0104.i505, %.lr.ph511 ], [ %.1105.i, %bb.ar ]
  %.0100.i.lcssa = phi i64 [ %i.eq, %bb.z ], [ %.0100.i506, %.lr.ph511 ], [ %.1101.i, %bb.ar ]
  br i1 %i.ee, label %bb.aa, label %StoreAndFindMatchesH10.exit

bb.aa:                                            ; preds = %._crit_edge
  %i.ew = load i32, ptr %i.aj, align 8, !tbaa !79, !alias.scope !236 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0104.i.lcssa
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !22, !noalias !241
  br label %StoreAndFindMatchesH10.exit.sink.split

bb.ab:                                            ; preds = %.lr.ph511
  %i.ey = and i64 %4, %.0108.i510
  %i.ez = call i64 @llvm.umin.i64(i64 %.096.i507, i64 %.094.i508) ; 4 uses
  %i.fa = getelementptr i8, ptr %i.ef, i64 %i.ez  ; 4 uses
  %i.fb = getelementptr i8, ptr %3, i64 %i.ey     ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 %i.ez  ; 2 uses
  %i.fd = sub i64 %i.bc, %i.ez                    ; 3 uses
  %i.fe = icmp ugt i64 %i.fd, 7
  br i1 %i.fe, label %.lr.ph489, label %.preheader428

.preheader428:                                    ; preds = %bb.ad, %bb.ab
  %.026.i.i.lcssa = phi ptr [ %i.fa, %bb.ab ], [ %i.fn, %bb.ad ] ; 3 uses
  %.024.i.i.lcssa = phi ptr [ %i.fc, %bb.ab ], [ %i.fm, %bb.ad ]
  %.022.i.i.lcssa = phi i64 [ %i.fd, %bb.ab ], [ %i.fo, %bb.ad ] ; 3 uses
  %.not.i.i493 = icmp eq i64 %.022.i.i.lcssa, 0
  br i1 %.not.i.i493, label %.critedge.i.i, label %.lr.ph497.preheader

.lr.ph497.preheader:                              ; preds = %.preheader428
  %scevgep681 = getelementptr i8, ptr %.026.i.i.lcssa, i64 %.022.i.i.lcssa
  br label %.lr.ph497

.lr.ph489:                                        ; preds = %bb.ab, %bb.ad
  %.022.i.i488 = phi i64 [ %i.fo, %bb.ad ], [ %i.fd, %bb.ab ]
  %.024.i.i487 = phi ptr [ %i.fm, %bb.ad ], [ %i.fc, %bb.ab ] ; 2 uses
  %.026.i.i486 = phi ptr [ %i.fn, %bb.ad ], [ %i.fa, %bb.ab ] ; 3 uses
  %.0.copyload.i244 = load i64, ptr %.024.i.i487, align 1, !noalias !241 ; 2 uses
  %.0.copyload.i = load i64, ptr %.026.i.i486, align 1, !noalias !241 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i244, %.0.copyload.i
  br i1 %.not30.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph489
  %i.ff = xor i64 %.0.copyload.i, %.0.copyload.i244
  %i.fg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ff, i1 true)
  %i.fh = ptrtoint ptr %.026.i.i486 to i64
  %i.fi = ptrtoint ptr %i.fa to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = lshr i64 %i.fg, 3
  %i.fl = add i64 %i.fj, %i.fk
  br label %FindMatchLengthWithLimit.exit.i

bb.ad:                                            ; preds = %.lr.ph489
  %i.fm = getelementptr inbounds nuw i8, ptr %.024.i.i487, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.026.i.i486, i64 8 ; 2 uses
  %i.fo = add i64 %.022.i.i488, -8                ; 3 uses
  %i.fp = icmp ugt i64 %i.fo, 7
  br i1 %i.fp, label %.lr.ph489, label %.preheader428, !llvm.loop !1

.lr.ph497:                                        ; preds = %.lr.ph497.preheader, %bb.ae
  %.123.i.i496 = phi i64 [ %i.ft, %bb.ae ], [ %.022.i.i.lcssa, %.lr.ph497.preheader ]
  %.125.i.i495 = phi ptr [ %i.fu, %bb.ae ], [ %.024.i.i.lcssa, %.lr.ph497.preheader ] ; 2 uses
  %.228.i.i494 = phi ptr [ %i.fv, %bb.ae ], [ %.026.i.i.lcssa, %.lr.ph497.preheader ] ; 3 uses
  %i.fq = load i8, ptr %.228.i.i494, align 1, !tbaa !23, !alias.scope !237
  %i.fr = load i8, ptr %.125.i.i495, align 1, !tbaa !23, !alias.scope !237
  %i.fs = icmp eq i8 %i.fq, %i.fr
  br i1 %i.fs, label %bb.ae, label %.critedge.i.i

bb.ae:                                            ; preds = %.lr.ph497
  %i.ft = add nsw i64 %.123.i.i496, -1            ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.125.i.i495, i64 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.228.i.i494, i64 1
  %.not.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph497, !llvm.loop !2

.critedge.i.i:                                    ; preds = %bb.ae, %.lr.ph497, %.preheader428
  %.228.i.i.lcssa = phi ptr [ %.026.i.i.lcssa, %.preheader428 ], [ %.228.i.i494, %.lr.ph497 ], [ %scevgep681, %bb.ae ]
  %i.fw = ptrtoint ptr %.228.i.i.lcssa to i64
  %i.fx = ptrtoint ptr %i.fa to i64
  %i.fy = sub i64 %i.fw, %i.fx
  br label %FindMatchLengthWithLimit.exit.i

FindMatchLengthWithLimit.exit.i:                  ; preds = %bb.ac, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.fl, %bb.ac ], [ %i.fy, %.critedge.i.i ]
  %i.fz = add i64 %.2.i.i, %i.ez                  ; 8 uses
  %.not.i241 = icmp eq ptr %.0112.i503, null
  br i1 %.not.i241, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %FindMatchLengthWithLimit.exit.i
  %i.ga = icmp ugt i64 %i.fz, %.4502
  br i1 %i.ga, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %.0112.i503, i64 8
  %i.gc = trunc i64 %i.et to i32
  store i32 %i.gc, ptr %.0112.i503, align 4, !tbaa !72, !alias.scope !238
  %.tr.i.i = trunc i64 %i.fz to i32
  %i.gd = shl i32 %.tr.i.i, 5
  %i.ge = getelementptr inbounds nuw i8, ptr %.0112.i503, i64 4
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !73, !alias.scope !238
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %FindMatchLengthWithLimit.exit.i
  %.5 = phi i64 [ %.4502, %FindMatchLengthWithLimit.exit.i ], [ %i.fz, %bb.ag ], [ %.4502, %bb.af ] ; 4 uses
  %.1113.i = phi ptr [ null, %FindMatchLengthWithLimit.exit.i ], [ %i.gb, %bb.ag ], [ %.0112.i503, %bb.af ] ; 4 uses
  %.not118.i = icmp ult i64 %i.fz, %i.ed
  br i1 %.not118.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ee, label %bb.aj, label %StoreAndFindMatchesH10.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gf = and i64 %.0108.i510, %i.en
  %.idx = shl nuw nsw i64 %i.gf, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !22, !noalias !241
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0104.i505
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !22, !noalias !241
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !22, !noalias !241
  br label %StoreAndFindMatchesH10.exit.sink.split

bb.ak:                                            ; preds = %bb.ah
  %i.gl = getelementptr i8, ptr %i.ef, i64 %i.fz
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !23, !alias.scope !237
  %i.gn = getelementptr i8, ptr %i.fb, i64 %i.fz
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !23, !alias.scope !237
  %i.gp = icmp ugt i8 %i.gm, %i.go
  br i1 %i.gp, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0104.i505
  store i32 %.0108.i.in504, ptr %i.gq, align 4, !tbaa !22, !noalias !241
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gr = and i64 %.0108.i510, %i.en
  %i.gs = shl nuw nsw i64 %i.gr, 1
  %i.gt = or disjoint i64 %i.gs, 1                ; 2 uses
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  br i1 %i.ee, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0100.i506
  store i32 %.0108.i.in504, ptr %i.gu, align 4, !tbaa !22, !noalias !241
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gv = and i64 %.0108.i510, %i.en
  %i.gw = shl nuw nsw i64 %i.gv, 1                ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn.i = phi i64 [ %i.gt, %bb.an ], [ %i.gw, %bb.aq ]
  %.1105.i = phi i64 [ %i.gt, %bb.an ], [ %.0104.i505, %bb.aq ] ; 2 uses
  %.1101.i = phi i64 [ %.0100.i506, %bb.an ], [ %i.gw, %bb.aq ] ; 2 uses
  %.197.i = phi i64 [ %i.fz, %bb.an ], [ %.096.i507, %bb.aq ]
  %.195.i = phi i64 [ %.094.i508, %bb.an ], [ %i.fz, %bb.aq ]
  %.1109.in.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.pn.i
  %.1109.in.i = load i32, ptr %.1109.in.in.i, align 4, !tbaa !22, !noalias !241 ; 2 uses
  %i.gx = add nsw i64 %.093.i509, -1
  %.0108.i = zext i32 %.1109.in.i to i64          ; 2 uses
  %i.gy = icmp eq i64 %i.ay, %.0108.i
  br i1 %i.gy, label %._crit_edge, label %.lr.ph511

StoreAndFindMatchesH10.exit.sink.split:           ; preds = %bb.aa, %bb.aj
  %.0100.i506.lcssa784.sink = phi i64 [ %.0100.i506, %bb.aj ], [ %.0100.i.lcssa, %bb.aa ]
  %.sink = phi i32 [ %i.gk, %bb.aj ], [ %i.ew, %bb.aa ]
  %.2347.ph = phi i64 [ %.5, %bb.aj ], [ %.4.lcssa, %bb.aa ]
  %.4.i.ph = phi ptr [ %.1113.i, %bb.aj ], [ %.0112.i.lcssa, %bb.aa ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0100.i506.lcssa784.sink
  store i32 %.sink, ptr %i.gz, align 4, !tbaa !22, !noalias !241
  br label %StoreAndFindMatchesH10.exit

StoreAndFindMatchesH10.exit:                      ; preds = %StoreAndFindMatchesH10.exit.sink.split, %bb.ai, %._crit_edge, %.thread357
  %.2347 = phi i64 [ %.0345.lcssa, %.thread357 ], [ %.5, %bb.ai ], [ %.4.lcssa, %._crit_edge ], [ %.2347.ph, %StoreAndFindMatchesH10.exit.sink.split ]
  %.4.i = phi ptr [ %.073.i.lcssa, %.thread357 ], [ %.1113.i, %bb.ai ], [ %.0112.i.lcssa, %._crit_edge ], [ %.4.i.ph, %StoreAndFindMatchesH10.exit.sink.split ] ; 3 uses
  store <4 x i32> splat (i32 268435455), ptr %i.a, align 16, !tbaa !22, !noalias !234
  store <4 x i32> splat (i32 268435455), ptr %i.ao, align 16, !tbaa !22, !noalias !234
  store <4 x i32> splat (i32 268435455), ptr %i.ap, align 16, !tbaa !22, !noalias !234
  store <4 x i32> splat (i32 268435455), ptr %i.aq, align 16, !tbaa !22, !noalias !234
  store <4 x i32> splat (i32 268435455), ptr %i.ar, align 16, !tbaa !22, !noalias !234
  store <4 x i32> splat (i32 268435455), ptr %i.as, align 16, !tbaa !22, !noalias !234
  store <4 x i32> splat (i32 268435455), ptr %i.at, align 16, !tbaa !22, !noalias !234
  store <4 x i32> splat (i32 268435455), ptr %i.au, align 16, !tbaa !22, !noalias !234
  store <4 x i32> splat (i32 268435455), ptr %i.av, align 16, !tbaa !22, !noalias !234
  store i32 268435455, ptr %i.aw, align 16, !tbaa !22, !noalias !234
  store i32 268435455, ptr %i.ax, align 4, !tbaa !22, !noalias !234
  %i.ha = add i64 %.2347, 1
  %i.hb = call i64 @llvm.umax.i64(i64 %i.ha, i64 4) ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 %i.ck ; 4 uses
  %i.hd = call i32 @BrotliFindAllStaticDictionaryMatches(ptr noundef %i.ch, ptr noundef %i.hc, i64 noundef %i.hb, i64 noundef %i.bc, ptr noundef nonnull %i.a) #13
  %.not82.i = icmp eq i32 %i.hd, 0
  br i1 %.not82.i, label %FindAllMatchesH10.exit, label %bb.as

bb.as:                                            ; preds = %StoreAndFindMatchesH10.exit
  %i.he = call i64 @llvm.umin.i64(i64 %i.bc, i64 37) ; 2 uses
  %.not83.i522 = icmp ugt i64 %i.hb, %i.he
  br i1 %.not83.i522, label %FindAllMatchesH10.exit, label %.lr.ph526

.lr.ph526:                                        ; preds = %bb.as
  %i.hf = add i64 %i.ak, %i.bb
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph526, %bb.aw
  %.0.i524 = phi i64 [ %i.hb, %.lr.ph526 ], [ %i.hx, %bb.aw ] ; 5 uses
  %.5.i523 = phi ptr [ %.4.i, %.lr.ph526 ], [ %.7.i, %bb.aw ] ; 5 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.i524
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !22, !noalias !234 ; 3 uses
  %i.hi = icmp ult i32 %i.hh, 268435455
  br i1 %i.hi, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hj = lshr i32 %i.hh, 5
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = add i64 %i.hf, %i.hk                    ; 2 uses
  %i.hm = load i64, ptr %i.al, align 8, !tbaa !80, !noalias !234
  %.not84.i = icmp ugt i64 %i.hl, %i.hm
  br i1 %.not84.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hn = getelementptr inbounds nuw i8, ptr %.5.i523, i64 8
  %i.ho = and i32 %i.hh, 31
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = trunc i64 %i.hl to i32
  store i32 %i.hq, ptr %.5.i523, align 4, !tbaa !72
  %i.hr = shl nuw nsw i64 %.0.i524, 5
  %i.hs = icmp eq i64 %.0.i524, %i.hp
  %i.ht = select i1 %i.hs, i64 0, i64 %i.hp
  %i.hu = or disjoint i64 %i.ht, %i.hr
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %.5.i523, i64 4
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !73
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.7.i = phi ptr [ %.5.i523, %bb.at ], [ %i.hn, %bb.av ], [ %.5.i523, %bb.au ] ; 2 uses
  %i.hx = add i64 %.0.i524, 1
  %exitcond.not = icmp eq i64 %.0.i524, %i.he
  br i1 %exitcond.not, label %FindAllMatchesH10.exit, label %bb.at, !llvm.loop !4

FindAllMatchesH10.exit:                           ; preds = %bb.aw, %bb.as, %StoreAndFindMatchesH10.exit
  %.8.i = phi ptr [ %.4.i, %StoreAndFindMatchesH10.exit ], [ %.4.i, %bb.as ], [ %.7.i, %bb.aw ] ; 2 uses
  %i.hy = ptrtoint ptr %.8.i to i64
  %i.hz = ptrtoint ptr %i.cj to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 3                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !234
  %i.ic = load i64, ptr %i.u, align 8, !tbaa !57  ; 2 uses
  %.not229 = icmp eq i64 %i.ic, 0
  br i1 %.not229, label %bb.br, label %bb.ax

bb.ax:                                            ; preds = %FindAllMatchesH10.exit
  %i.id = load i64, ptr %i.al, align 8, !tbaa !80
  %i.ie = getelementptr i8, ptr %i.cj, i64 -512   ; 4 uses
  %i.if = load i64, ptr %i.v, align 8, !tbaa !56, !noalias !242
  %.0.copyload.i93.i = load i64, ptr %i.hc, align 1, !alias.scope !243
  %.neg422 = add i64 %i.if, %i.bb
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.bl
  %.0.i231555 = phi i64 [ 0, %bb.ax ], [ %i.ly, %bb.bl ] ; 3 uses
  %.026.i554 = phi i64 [ 0, %bb.ax ], [ %i.me, %bb.bl ] ; 3 uses
  %.027.i553 = phi i64 [ 3, %bb.ax ], [ %.128.i, %bb.bl ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.026.i554
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !82, !noalias !242 ; 7 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.026.i554
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !48, !noalias !242
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.0.i231555
  %i.il = sub i64 64, %.0.i231555                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.in = load i32, ptr %i.im, align 4, !tbaa !84, !noalias !243
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !85, !noalias !243
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !86, !noalias !243 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  %i.it = load i32, ptr %i.is, align 4, !tbaa !87, !noalias !243 ; 2 uses
  %i.iu = sub i32 64, %i.ir
  %i.iv = sub i32 32, %i.it
  %i.iw = lshr i32 -1, %i.iv
  %i.ix = sub i32 64, %i.ip
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = lshr i64 -1, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 24 ; 2 uses
  %i.jb = zext nneg i32 %i.it to i64
  %i.jc = shl nuw i64 1, %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = zext nneg i32 %i.ir to i64
  %i.jf = shl nuw i64 1, %i.je
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jf ; 2 uses
  %i.jh = and i64 %.0.copyload.i93.i, %i.iz
  %i.ji = mul i64 %i.jh, 2297779722762296275
  %i.jj = zext nneg i32 %i.iu to i64
  %i.jk = lshr i64 %i.ji, %i.jj                   ; 2 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = and i32 %i.iw, %i.jl
  %i.jn = and i64 %i.jk, 4294967295
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !54, !noalias !243 ; 2 uses
  %i.jq = zext i16 %i.jp to i32
  %i.jr = zext i32 %i.jm to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !22, !noalias !243
  %i.ju = add i32 %i.jt, %i.jq
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jv
  %.not636 = icmp eq i16 %i.jp, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !88, !noalias !243
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ih, align 4, !tbaa !89, !noalias !243
  %i.kc = icmp eq i32 %i.kb, -558043680
  br i1 %i.kc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.0.copyload.i268 = load ptr, ptr %i.ka, align 1, !noalias !243
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.081.i = phi ptr [ %.0.copyload.i268, %bb.az ], [ %i.ka, %bb.ay ] ; 2 uses
  br i1 %.not636, label %FindAllCompoundDictionaryMatches.exit, label %.lr.ph549

.lr.ph549:                                        ; preds = %bb.ba
  %i.kd = zext i32 %i.in to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph549, %bb.bj
  %.075.i547 = phi i64 [ 0, %.lr.ph549 ], [ %.2.i250, %bb.bj ] ; 5 uses
  %.077.i546 = phi ptr [ %i.jw, %.lr.ph549 ], [ %i.kf, %bb.bj ] ; 2 uses
  %.078.i545 = phi i64 [ %.027.i553, %.lr.ph549 ], [ %.280.i, %bb.bj ] ; 8 uses
  %.082.i544 = phi ptr [ %i.ik, %.lr.ph549 ], [ %.284.i, %bb.bj ] ; 7 uses
  %i.ke = load i32, ptr %.077.i546, align 4, !tbaa !22, !noalias !243 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.077.i546, i64 4
  %i.kg = and i32 %i.ke, 2147483647
  %i.kh = zext nneg i32 %i.kg to i64              ; 4 uses
  %i.ki = add i64 %i.ij, %i.kh
  %i.kj = sub i64 %.neg422, %i.ki                 ; 2 uses
  %i.kk = sub nsw i64 %i.kd, %i.kh
  %i.kl = call i64 @llvm.umin.i64(i64 %i.kk, i64 %i.bc) ; 4 uses
  %i.km = icmp ugt i64 %i.kj, %i.id
  br i1 %i.km, label %bb.bj, label %bb.bc, !llvm.loop !5

bb.bc:                                            ; preds = %bb.bb
  %i.kn = add i64 %.078.i545, %i.ck               ; 2 uses
  %i.ko = icmp ule i64 %i.kn, %4
  %.not.i248 = icmp ult i64 %.078.i545, %i.kl
  %or.cond.i249 = select i1 %i.ko, i1 %.not.i248, i1 false
  br i1 %or.cond.i249, label %bb.bd, label %bb.bj, !llvm.loop !5

bb.bd:                                            ; preds = %bb.bc
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 %i.kn
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !23, !alias.scope !243
  %i.kr = getelementptr i8, ptr %.081.i, i64 %.078.i545
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kh
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !23, !noalias !243
  %.not91.i = icmp eq i8 %i.kq, %i.kt
  br i1 %.not91.i, label %bb.be, label %bb.bj, !llvm.loop !5

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.kh ; 4 uses
  %i.kv = icmp ugt i64 %i.kl, 7
  br i1 %i.kv, label %.lr.ph532, label %.lr.ph540.preheader

.preheader427:                                    ; preds = %bb.bg
  %.not.i.i259536 = icmp eq i64 %i.lf, 0
  br i1 %.not.i.i259536, label %.critedge.i.i260, label %.lr.ph540.preheader

.lr.ph540.preheader:                              ; preds = %bb.be, %.preheader427
  %.022.i.i254.lcssa766 = phi i64 [ %i.lf, %.preheader427 ], [ %i.kl, %bb.be ] ; 2 uses
  %.024.i.i253.lcssa765 = phi ptr [ %i.ld, %.preheader427 ], [ %i.hc, %bb.be ]
  %.026.i.i252.lcssa764 = phi ptr [ %i.le, %.preheader427 ], [ %i.ku, %bb.be ] ; 2 uses
  %scevgep682 = getelementptr i8, ptr %.026.i.i252.lcssa764, i64 %.022.i.i254.lcssa766
  br label %.lr.ph540

.lr.ph532:                                        ; preds = %bb.be, %bb.bg
  %.022.i.i254530 = phi i64 [ %i.lf, %bb.bg ], [ %i.kl, %bb.be ]
  %.024.i.i253529 = phi ptr [ %i.ld, %bb.bg ], [ %i.hc, %bb.be ] ; 2 uses
  %.026.i.i252528 = phi ptr [ %i.le, %bb.bg ], [ %i.ku, %bb.be ] ; 3 uses
  %.0.copyload.i92.i = load i64, ptr %.024.i.i253529, align 1, !alias.scope !243 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i.i252528, align 1, !noalias !243 ; 2 uses
  %.not30.i.i265 = icmp eq i64 %.0.copyload.i92.i, %.0.copyload.i.i
  br i1 %.not30.i.i265, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph532
  %i.kw = xor i64 %.0.copyload.i.i, %.0.copyload.i92.i
  %i.kx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kw, i1 true)
  %i.ky = ptrtoint ptr %.026.i.i252528 to i64
  %i.kz = ptrtoint ptr %i.ku to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = lshr i64 %i.kx, 3
  %i.lc = add i64 %i.la, %i.lb
  br label %FindMatchLengthWithLimit.exit.i261

bb.bg:                                            ; preds = %.lr.ph532
  %i.ld = getelementptr inbounds nuw i8, ptr %.024.i.i253529, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.026.i.i252528, i64 8 ; 3 uses
  %i.lf = add i64 %.022.i.i254530, -8             ; 4 uses
  %i.lg = icmp ugt i64 %i.lf, 7
  br i1 %i.lg, label %.lr.ph532, label %.preheader427, !llvm.loop !1

.lr.ph540:                                        ; preds = %.lr.ph540.preheader, %bb.bh
  %.123.i.i258539 = phi i64 [ %i.lk, %bb.bh ], [ %.022.i.i254.lcssa766, %.lr.ph540.preheader ]
  %.125.i.i257538 = phi ptr [ %i.ll, %bb.bh ], [ %.024.i.i253.lcssa765, %.lr.ph540.preheader ] ; 2 uses
  %.228.i.i256537 = phi ptr [ %i.lm, %bb.bh ], [ %.026.i.i252.lcssa764, %.lr.ph540.preheader ] ; 3 uses
  %i.lh = load i8, ptr %.228.i.i256537, align 1, !tbaa !23, !noalias !243
  %i.li = load i8, ptr %.125.i.i257538, align 1, !tbaa !23, !alias.scope !243
  %i.lj = icmp eq i8 %i.lh, %i.li
  br i1 %i.lj, label %bb.bh, label %.critedge.i.i260

bb.bh:                                            ; preds = %.lr.ph540
  %i.lk = add nsw i64 %.123.i.i258539, -1         ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.125.i.i257538, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.228.i.i256537, i64 1
  %.not.i.i259 = icmp eq i64 %i.lk, 0
  br i1 %.not.i.i259, label %.critedge.i.i260, label %.lr.ph540, !llvm.loop !2

.critedge.i.i260:                                 ; preds = %bb.bh, %.lr.ph540, %.preheader427
  %.228.i.i256.lcssa = phi ptr [ %i.le, %.preheader427 ], [ %.228.i.i256537, %.lr.ph540 ], [ %scevgep682, %bb.bh ]
  %i.ln = ptrtoint ptr %.228.i.i256.lcssa to i64
  %i.lo = ptrtoint ptr %i.ku to i64
  %i.lp = sub i64 %i.ln, %i.lo
  br label %FindMatchLengthWithLimit.exit.i261

FindMatchLengthWithLimit.exit.i261:               ; preds = %bb.bf, %.critedge.i.i260
  %.2.i.i262 = phi i64 [ %i.lc, %bb.bf ], [ %i.lp, %.critedge.i.i260 ] ; 3 uses
  %i.lq = icmp ugt i64 %.2.i.i262, %.078.i545
  br i1 %i.lq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %FindMatchLengthWithLimit.exit.i261
  %i.lr = getelementptr inbounds nuw i8, ptr %.082.i544, i64 8
  %i.ls = trunc i64 %i.kj to i32
  store i32 %i.ls, ptr %.082.i544, align 4, !tbaa !72, !noalias !243
  %.tr.i.i263 = trunc i64 %.2.i.i262 to i32
  %i.lt = shl i32 %.tr.i.i263, 5
  %i.lu = getelementptr inbounds nuw i8, ptr %.082.i544, i64 4
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !73, !noalias !243
  %i.lv = add i64 %.075.i547, 1                   ; 2 uses
  %i.lw = icmp eq i64 %i.lv, %i.il
  br i1 %i.lw, label %FindAllCompoundDictionaryMatches.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %FindMatchLengthWithLimit.exit.i261, %bb.bd, %bb.bc, %bb.bb
  %.284.i = phi ptr [ %i.lr, %bb.bi ], [ %.082.i544, %bb.bb ], [ %.082.i544, %bb.bc ], [ %.082.i544, %bb.bd ], [ %.082.i544, %FindMatchLengthWithLimit.exit.i261 ]
  %.280.i = phi i64 [ %.2.i.i262, %bb.bi ], [ %.078.i545, %bb.bb ], [ %.078.i545, %bb.bc ], [ %.078.i545, %bb.bd ], [ %.078.i545, %FindMatchLengthWithLimit.exit.i261 ]
  %.2.i250 = phi i64 [ %i.lv, %bb.bi ], [ %.075.i547, %bb.bb ], [ %.075.i547, %bb.bc ], [ %.075.i547, %bb.bd ], [ %.075.i547, %FindMatchLengthWithLimit.exit.i261 ] ; 2 uses
  %i.lx = icmp sgt i32 %i.ke, -1
  br i1 %i.lx, label %bb.bb, label %FindAllCompoundDictionaryMatches.exit

FindAllCompoundDictionaryMatches.exit:            ; preds = %bb.bj, %bb.bi, %bb.ba
  %.3.i247 = phi i64 [ 0, %bb.ba ], [ %i.il, %bb.bi ], [ %.2.i250, %bb.bj ]
  %i.ly = add i64 %.3.i247, %.0.i231555           ; 7 uses
  switch i64 %i.ly, label %bb.bk [
    i64 64, label %LookupAllCompoundDictionaryMatches.exit
    i64 0, label %bb.bl
  ]

bb.bk:                                            ; preds = %FindAllCompoundDictionaryMatches.exit
  %i.lz = getelementptr [8 x i8], ptr %i.ie, i64 %i.ly
  %i.ma = getelementptr i8, ptr %i.lz, i64 -4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !73
  %i.mc = lshr i32 %i.mb, 5
  %i.md = zext nneg i32 %i.mc to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %FindAllCompoundDictionaryMatches.exit
  %.128.i = phi i64 [ %i.md, %bb.bk ], [ %.027.i553, %FindAllCompoundDictionaryMatches.exit ]
  %i.me = add nuw i64 %.026.i554, 1               ; 2 uses
  %exitcond683.not = icmp eq i64 %i.me, %i.ic
  br i1 %exitcond683.not, label %LookupAllCompoundDictionaryMatches.exit, label %bb.ay, !llvm.loop !6

LookupAllCompoundDictionaryMatches.exit:          ; preds = %bb.bl, %FindAllCompoundDictionaryMatches.exit
  %i.mf = icmp ne i64 %i.ly, 0
  %i.mg = icmp ne ptr %.8.i, %i.cj
  %i.mh = and i1 %i.mg, %i.mf
  br i1 %i.mh, label %.lr.ph.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.bq, %LookupAllCompoundDictionaryMatches.exit
  %.030.lcssa.i = phi ptr [ %i.ci, %LookupAllCompoundDictionaryMatches.exit ], [ %.131.i, %bb.bq ] ; 5 uses
  %.027.lcssa.i = phi ptr [ %i.ie, %LookupAllCompoundDictionaryMatches.exit ], [ %.128.i319, %bb.bq ] ; 4 uses
  %.024.lcssa.i = phi i64 [ %i.ly, %LookupAllCompoundDictionaryMatches.exit ], [ %.125.i320, %bb.bq ] ; 6 uses
  %.021.lcssa.i = phi ptr [ %i.cj, %LookupAllCompoundDictionaryMatches.exit ], [ %.122.i, %bb.bq ] ; 4 uses
  %.0.lcssa.i = phi i64 [ %i.ib, %LookupAllCompoundDictionaryMatches.exit ], [ %.1.i321, %bb.bq ] ; 6 uses
  %.021.lcssa.i865 = ptrtoaddr ptr %.021.lcssa.i to i64
  %.not46.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not46.i, label %.preheader.i, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %.preheader36.i
  %.027.lcssa.i875 = ptrtoaddr ptr %.027.lcssa.i to i64
  %.030.lcssa.i874 = ptrtoaddr ptr %.030.lcssa.i to i64
  %min.iters.check877 = icmp ult i64 %.024.lcssa.i, 4
  %i.mi = sub i64 %.027.lcssa.i875, %.030.lcssa.i874
  %diff.check879 = icmp ugt i64 %i.mi, -32
  %or.cond903 = select i1 %min.iters.check877, i1 true, i1 %diff.check879
  br i1 %or.cond903, label %.lr.ph50.i.preheader911, label %vector.ph880

vector.ph880:                                     ; preds = %.lr.ph50.i.preheader
  %n.vec881 = and i64 %.024.lcssa.i, -4           ; 3 uses
  %i.mj = and i64 %.024.lcssa.i, 3
  %i.mk = shl i64 %n.vec881, 3                    ; 2 uses
  %i.ml = getelementptr i8, ptr %.027.lcssa.i, i64 %i.mk
  %i.mm = getelementptr i8, ptr %.030.lcssa.i, i64 %i.mk ; 2 uses
  br label %vector.body882

vector.body882:                                   ; preds = %vector.body882, %vector.ph880
  %index883 = phi i64 [ 0, %vector.ph880 ], [ %index.next888, %vector.body882 ] ; 2 uses
  %i.mn = shl i64 %index883, 3                    ; 2 uses
  %next.gep884 = getelementptr i8, ptr %.027.lcssa.i, i64 %i.mn ; 2 uses
  %next.gep885 = getelementptr i8, ptr %.030.lcssa.i, i64 %i.mn ; 2 uses
  %i.mo = getelementptr i8, ptr %next.gep884, i64 16
  %wide.load886 = load <2 x i64>, ptr %next.gep884, align 4, !tbaa !22
  %wide.load887 = load <2 x i64>, ptr %i.mo, align 4, !tbaa !22
  %i.mp = getelementptr i8, ptr %next.gep885, i64 16
  store <2 x i64> %wide.load886, ptr %next.gep885, align 4, !tbaa !22
  store <2 x i64> %wide.load887, ptr %i.mp, align 4, !tbaa !22
  %index.next888 = add nuw i64 %index883, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next888, %n.vec881
  br i1 %i.mq, label %middle.block889, label %vector.body882, !llvm.loop !201

middle.block889:                                  ; preds = %vector.body882
  %cmp.n890 = icmp eq i64 %.024.lcssa.i, %n.vec881
  br i1 %cmp.n890, label %.preheader.i, label %.lr.ph50.i.preheader911

.lr.ph50.i.preheader911:                          ; preds = %.lr.ph50.i.preheader, %middle.block889
  %.22649.i.ph = phi i64 [ %.024.lcssa.i, %.lr.ph50.i.preheader ], [ %i.mj, %middle.block889 ] ; 4 uses
  %.22948.i.ph = phi ptr [ %.027.lcssa.i, %.lr.ph50.i.preheader ], [ %i.ml, %middle.block889 ] ; 2 uses
  %.23247.i.ph = phi ptr [ %.030.lcssa.i, %.lr.ph50.i.preheader ], [ %i.mm, %middle.block889 ] ; 2 uses
  %i.mr = add i64 %.22649.i.ph, -1
  %xtraiter = and i64 %.22649.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader911, %.lr.ph50.i.prol
  %.22649.i.prol = phi i64 [ %i.ms, %.lr.ph50.i.prol ], [ %.22649.i.ph, %.lr.ph50.i.preheader911 ]
  %.22948.i.prol = phi ptr [ %i.mu, %.lr.ph50.i.prol ], [ %.22948.i.ph, %.lr.ph50.i.preheader911 ] ; 2 uses
  %.23247.i.prol = phi ptr [ %i.mt, %.lr.ph50.i.prol ], [ %.23247.i.ph, %.lr.ph50.i.preheader911 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader911 ]
  %i.ms = add i64 %.22649.i.prol, -1              ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.23247.i.prol, i64 8 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.22948.i.prol, i64 8 ; 2 uses
  %i.mv = load i64, ptr %.22948.i.prol, align 4, !tbaa !22
  store i64 %i.mv, ptr %.23247.i.prol, align 4, !tbaa !22
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !202

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader911
  %.lcssa934.unr = phi ptr [ poison, %.lr.ph50.i.preheader911 ], [ %i.mt, %.lr.ph50.i.prol ]
  %.22649.i.unr = phi i64 [ %.22649.i.ph, %.lr.ph50.i.preheader911 ], [ %i.ms, %.lr.ph50.i.prol ]
  %.22948.i.unr = phi ptr [ %.22948.i.ph, %.lr.ph50.i.preheader911 ], [ %i.mu, %.lr.ph50.i.prol ]
  %.23247.i.unr = phi ptr [ %.23247.i.ph, %.lr.ph50.i.preheader911 ], [ %i.mt, %.lr.ph50.i.prol ]
  %i.mw = icmp ult i64 %i.mr, 7
  br i1 %i.mw, label %.preheader.i, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %LookupAllCompoundDictionaryMatches.exit, %bb.bq
  %.041.i = phi i64 [ %.1.i321, %bb.bq ], [ %i.ib, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02140.i = phi ptr [ %.122.i, %bb.bq ], [ %i.cj, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.02439.i = phi i64 [ %.125.i320, %bb.bq ], [ %i.ly, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02738.i = phi ptr [ %.128.i319, %bb.bq ], [ %i.ie, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.03037.i = phi ptr [ %.131.i, %bb.bq ], [ %i.ci, %LookupAllCompoundDictionaryMatches.exit ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.02738.i, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !73
  %i.mz = lshr i32 %i.my, 5                       ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.02140.i, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !73
  %i.nc = lshr i32 %i.nb, 5                       ; 2 uses
  %i.nd = icmp samesign ult i32 %i.mz, %i.nc
  br i1 %i.nd, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i
  %i.ne = icmp eq i32 %i.mz, %i.nc
  br i1 %i.ne, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.nf = load i32, ptr %.02738.i, align 4, !tbaa !72
  %i.ng = load i32, ptr %.02140.i, align 4, !tbaa !72
  %i.nh = icmp ult i32 %i.nf, %i.ng
  br i1 %i.nh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i
  %i.ni = getelementptr inbounds nuw i8, ptr %.02738.i, i64 8
  %i.nj = load i64, ptr %.02738.i, align 4, !tbaa !22
  store i64 %i.nj, ptr %.03037.i, align 4, !tbaa !22
  %i.nk = add i64 %.02439.i, -1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %i.nl = getelementptr inbounds nuw i8, ptr %.02140.i, i64 8
  %i.nm = load i64, ptr %.02140.i, align 4, !tbaa !22
  store i64 %i.nm, ptr %.03037.i, align 4, !tbaa !22
  %i.nn = add i64 %.041.i, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.128.i319 = phi ptr [ %i.ni, %bb.bo ], [ %.02738.i, %bb.bp ] ; 2 uses
  %.125.i320 = phi i64 [ %i.nk, %bb.bo ], [ %.02439.i, %bb.bp ] ; 3 uses
  %.122.i = phi ptr [ %.02140.i, %bb.bo ], [ %i.nl, %bb.bp ] ; 2 uses
  %.1.i321 = phi i64 [ %.041.i, %bb.bo ], [ %i.nn, %bb.bp ] ; 3 uses
  %.131.i = getelementptr inbounds nuw i8, ptr %.03037.i, i64 8 ; 2 uses
  %i.no = icmp ne i64 %.125.i320, 0
  %i.np = icmp ne i64 %.1.i321, 0
  %i.nq = select i1 %i.no, i1 %i.np, i1 false
  br i1 %i.nq, label %.lr.ph.i, label %.preheader36.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block889, %.preheader36.i
  %.232.lcssa.i = phi ptr [ %.030.lcssa.i, %.preheader36.i ], [ %i.mm, %middle.block889 ], [ %.lcssa934.unr, %.lr.ph50.i.prol.loopexit ], [ %i.pc, %.lr.ph50.i ] ; 4 uses
  %.not3552.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not3552.i, label %MergeMatches.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %.232.lcssa.i864 = ptrtoaddr ptr %.232.lcssa.i to i64
  %min.iters.check = icmp ult i64 %.0.lcssa.i, 4
  %i.nr = sub i64 %.021.lcssa.i865, %.232.lcssa.i864
  %diff.check = icmp ugt i64 %i.nr, -32
  %or.cond904 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond904, label %.lr.ph56.i.preheader910, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph56.i.preheader
  %n.vec = and i64 %.0.lcssa.i, -4                ; 3 uses
  %i.ns = and i64 %.0.lcssa.i, 3
  %i.nt = shl i64 %n.vec, 3                       ; 2 uses
  %i.nu = getelementptr i8, ptr %.021.lcssa.i, i64 %i.nt
  %i.nv = getelementptr i8, ptr %.232.lcssa.i, i64 %i.nt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.021.lcssa.i, i64 %i.nw ; 2 uses
  %next.gep866 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.nw ; 2 uses
  %i.nx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4, !tbaa !22
  %wide.load867 = load <2 x i64>, ptr %i.nx, align 4, !tbaa !22
  %i.ny = getelementptr i8, ptr %next.gep866, i64 16
  store <2 x i64> %wide.load, ptr %next.gep866, align 4, !tbaa !22
  store <2 x i64> %wide.load867, ptr %i.ny, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nz = icmp eq i64 %index.next, %n.vec
  br i1 %i.nz, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.lcssa.i, %n.vec
  br i1 %cmp.n, label %MergeMatches.exit, label %.lr.ph56.i.preheader910

.lr.ph56.i.preheader910:                          ; preds = %.lr.ph56.i.preheader, %middle.block
  %.255.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph56.i.preheader ], [ %i.ns, %middle.block ] ; 4 uses
  %.22354.i.ph = phi ptr [ %.021.lcssa.i, %.lr.ph56.i.preheader ], [ %i.nu, %middle.block ] ; 2 uses
  %.353.i.ph = phi ptr [ %.232.lcssa.i, %.lr.ph56.i.preheader ], [ %i.nv, %middle.block ] ; 2 uses
  %i.oa = add i64 %.255.i.ph, -1
  %xtraiter953 = and i64 %.255.i.ph, 7            ; 2 uses
  %lcmp.mod954.not = icmp eq i64 %xtraiter953, 0
  br i1 %lcmp.mod954.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader910, %.lr.ph56.i.prol
  %.255.i.prol = phi i64 [ %i.ob, %.lr.ph56.i.prol ], [ %.255.i.ph, %.lr.ph56.i.preheader910 ]
  %.22354.i.prol = phi ptr [ %i.od, %.lr.ph56.i.prol ], [ %.22354.i.ph, %.lr.ph56.i.preheader910 ] ; 2 uses
  %.353.i.prol = phi ptr [ %i.oc, %.lr.ph56.i.prol ], [ %.353.i.ph, %.lr.ph56.i.preheader910 ] ; 2 uses
  %prol.iter955 = phi i64 [ %prol.iter955.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader910 ]
  %i.ob = add i64 %.255.i.prol, -1                ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.353.i.prol, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.22354.i.prol, i64 8 ; 2 uses
  %i.oe = load i64, ptr %.22354.i.prol, align 4, !tbaa !22
  store i64 %i.oe, ptr %.353.i.prol, align 4, !tbaa !22
  %prol.iter955.next = add i64 %prol.iter955, 1   ; 2 uses
  %prol.iter955.cmp.not = icmp eq i64 %prol.iter955.next, %xtraiter953
  br i1 %prol.iter955.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !204

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader910
  %.255.i.unr = phi i64 [ %.255.i.ph, %.lr.ph56.i.preheader910 ], [ %i.ob, %.lr.ph56.i.prol ]
  %.22354.i.unr = phi ptr [ %.22354.i.ph, %.lr.ph56.i.preheader910 ], [ %i.od, %.lr.ph56.i.prol ]
  %.353.i.unr = phi ptr [ %.353.i.ph, %.lr.ph56.i.preheader910 ], [ %i.oc, %.lr.ph56.i.prol ]
  %i.of = icmp ult i64 %i.oa, 7
  br i1 %i.of, label %MergeMatches.exit, label %.lr.ph56.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %.22649.i = phi i64 [ %i.pb, %.lr.ph50.i ], [ %.22649.i.unr, %.lr.ph50.i.prol.loopexit ]
  %.22948.i = phi ptr [ %i.pd, %.lr.ph50.i ], [ %.22948.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.23247.i = phi ptr [ %i.pc, %.lr.ph50.i ], [ %.23247.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.23247.i, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %.22948.i, i64 8
  %i.oi = load i64, ptr %.22948.i, align 4, !tbaa !22
  store i64 %i.oi, ptr %.23247.i, align 4, !tbaa !22
  %i.oj = getelementptr inbounds nuw i8, ptr %.23247.i, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %.22948.i, i64 16
  %i.ol = load i64, ptr %i.oh, align 4, !tbaa !22
  store i64 %i.ol, ptr %i.og, align 4, !tbaa !22
  %i.om = getelementptr inbounds nuw i8, ptr %.23247.i, i64 24
  %i.on = getelementptr inbounds nuw i8, ptr %.22948.i, i64 24
  %i.oo = load i64, ptr %i.ok, align 4, !tbaa !22
  store i64 %i.oo, ptr %i.oj, align 4, !tbaa !22
  %i.op = getelementptr inbounds nuw i8, ptr %.23247.i, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %.22948.i, i64 32
  %i.or = load i64, ptr %i.on, align 4, !tbaa !22
  store i64 %i.or, ptr %i.om, align 4, !tbaa !22
  %i.os = getelementptr inbounds nuw i8, ptr %.23247.i, i64 40
  %i.ot = getelementptr inbounds nuw i8, ptr %.22948.i, i64 40
  %i.ou = load i64, ptr %i.oq, align 4, !tbaa !22
  store i64 %i.ou, ptr %i.op, align 4, !tbaa !22
  %i.ov = getelementptr inbounds nuw i8, ptr %.23247.i, i64 48
  %i.ow = getelementptr inbounds nuw i8, ptr %.22948.i, i64 48
  %i.ox = load i64, ptr %i.ot, align 4, !tbaa !22
  store i64 %i.ox, ptr %i.os, align 4, !tbaa !22
  %i.oy = getelementptr inbounds nuw i8, ptr %.23247.i, i64 56
  %i.oz = getelementptr inbounds nuw i8, ptr %.22948.i, i64 56
  %i.pa = load i64, ptr %i.ow, align 4, !tbaa !22
  store i64 %i.pa, ptr %i.ov, align 4, !tbaa !22
  %i.pb = add i64 %.22649.i, -8                   ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.23247.i, i64 64 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.22948.i, i64 64
  %i.pe = load i64, ptr %i.oz, align 4, !tbaa !22
  store i64 %i.pe, ptr %i.oy, align 4, !tbaa !22
  %.not.i318.7 = icmp eq i64 %i.pb, 0
  br i1 %.not.i318.7, label %.preheader.i, label %.lr.ph50.i, !llvm.loop !205

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.255.i = phi i64 [ %i.qa, %.lr.ph56.i ], [ %.255.i.unr, %.lr.ph56.i.prol.loopexit ]
  %.22354.i = phi ptr [ %i.qc, %.lr.ph56.i ], [ %.22354.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %.353.i = phi ptr [ %i.qb, %.lr.ph56.i ], [ %.353.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.353.i, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %.22354.i, i64 8
  %i.ph = load i64, ptr %.22354.i, align 4, !tbaa !22
  store i64 %i.ph, ptr %.353.i, align 4, !tbaa !22
  %i.pi = getelementptr inbounds nuw i8, ptr %.353.i, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %.22354.i, i64 16
  %i.pk = load i64, ptr %i.pg, align 4, !tbaa !22
  store i64 %i.pk, ptr %i.pf, align 4, !tbaa !22
  %i.pl = getelementptr inbounds nuw i8, ptr %.353.i, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %.22354.i, i64 24
  %i.pn = load i64, ptr %i.pj, align 4, !tbaa !22
  store i64 %i.pn, ptr %i.pi, align 4, !tbaa !22
  %i.po = getelementptr inbounds nuw i8, ptr %.353.i, i64 32
  %i.pp = getelementptr inbounds nuw i8, ptr %.22354.i, i64 32
  %i.pq = load i64, ptr %i.pm, align 4, !tbaa !22
  store i64 %i.pq, ptr %i.pl, align 4, !tbaa !22
  %i.pr = getelementptr inbounds nuw i8, ptr %.353.i, i64 40
  %i.ps = getelementptr inbounds nuw i8, ptr %.22354.i, i64 40
  %i.pt = load i64, ptr %i.pp, align 4, !tbaa !22
  store i64 %i.pt, ptr %i.po, align 4, !tbaa !22
  %i.pu = getelementptr inbounds nuw i8, ptr %.353.i, i64 48
  %i.pv = getelementptr inbounds nuw i8, ptr %.22354.i, i64 48
  %i.pw = load i64, ptr %i.ps, align 4, !tbaa !22
  store i64 %i.pw, ptr %i.pr, align 4, !tbaa !22
  %i.px = getelementptr inbounds nuw i8, ptr %.353.i, i64 56
  %i.py = getelementptr inbounds nuw i8, ptr %.22354.i, i64 56
  %i.pz = load i64, ptr %i.pv, align 4, !tbaa !22
  store i64 %i.pz, ptr %i.pu, align 4, !tbaa !22
  %i.qa = add i64 %.255.i, -8                     ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.353.i, i64 64
  %i.qc = getelementptr inbounds nuw i8, ptr %.22354.i, i64 64
  %i.qd = load i64, ptr %i.py, align 4, !tbaa !22
  store i64 %i.qd, ptr %i.px, align 4, !tbaa !22
  %.not35.i.7 = icmp eq i64 %i.qa, 0
  br i1 %.not35.i.7, label %MergeMatches.exit, label %.lr.ph56.i, !llvm.loop !206

MergeMatches.exit:                                ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %middle.block, %.preheader.i
  %i.qe = add i64 %i.ly, %i.ib
  br label %bb.br

bb.br:                                            ; preds = %MergeMatches.exit, %FindAllMatchesH10.exit
  %.0201 = phi i64 [ %i.qe, %MergeMatches.exit ], [ %i.ib, %FindAllMatchesH10.exit ] ; 3 uses
  %i.qf = trunc i64 %.0201 to i32
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0203629 ; 3 uses
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !22
  %.not230 = icmp eq i64 %.0201, 0
  br i1 %.not230, label %bb.co, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qh = add i64 %.0201, %.0205628               ; 2 uses
  %i.qi = getelementptr [8 x i8], ptr %.1, i64 %i.qh ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 -4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !73 ; 2 uses
  %i.ql = icmp ugt i32 %i.qk, 10431
  br i1 %i.ql, label %bb.bt, label %bb.co

bb.bt:                                            ; preds = %bb.bs
  %i.qm = lshr i32 %i.qk, 5
  %i.qn = zext nneg i32 %i.qm to i64              ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qi, i64 -8
  %i.qp = add nsw i64 %i.qn, -1                   ; 2 uses
  %i.qq = add i64 %.0205628, 1
  %i.qr = load i64, ptr %i.qo, align 4, !tbaa !22
  store i64 %i.qr, ptr %i.ci, align 4, !tbaa !22
  store i32 1, ptr %i.qg, align 4, !tbaa !22
  %i.qs = add i64 %i.ay, 1                        ; 3 uses
  %i.qt = add i64 %i.ay, %i.qn
  %i.qu = call i64 @llvm.umin.i64(i64 %i.qt, i64 %i.p) ; 4 uses
  %i.qv = add i64 %i.ay, 64
  %.not.i233 = icmp ugt i64 %i.qv, %i.qu
  %i.qw = add i64 %i.qu, -63
  %spec.select.i234 = select i1 %.not.i233, i64 %i.qs, i64 %i.qw ; 5 uses
  %i.qx = add i64 %i.ay, 513
  %.not22.i = icmp ule i64 %i.qx, %spec.select.i234
  %i.qy = icmp ult i64 %i.qs, %spec.select.i234
  %or.cond = and i1 %.not22.i, %i.qy
  br i1 %or.cond, label %.lr.ph590, label %.loopexit

.lr.ph590:                                        ; preds = %bb.bt
  %i.qz = load i64, ptr %i.ae, align 8, !tbaa !78, !alias.scope !244 ; 4 uses
  %i.ra = add i64 %i.qz, -15
  %i.rb = load ptr, ptr %i.ah, align 8, !tbaa !76, !alias.scope !245
  %i.rc = load ptr, ptr %i.ai, align 8, !tbaa !77, !alias.scope !245 ; 7 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph590, %StoreH10.exit
  %.0.i235588 = phi i64 [ %i.qs, %.lr.ph590 ], [ %i.tp, %StoreH10.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.rd = and i64 %.0.i235588, %4
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 %i.rd ; 3 uses
  %.val316 = load i32, ptr %i.re, align 1
  %i.rf = mul i32 %.val316, 506832829
  %i.rg = lshr i32 %i.rf, 15
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.rh ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !22, !noalias !249 ; 2 uses
  %i.rk = and i64 %i.qz, %.0.i235588
  %i.rl = shl i64 %i.rk, 1                        ; 3 uses
  %i.rm = or disjoint i64 %i.rl, 1                ; 2 uses
  %i.rn = trunc i64 %.0.i235588 to i32
  store i32 %i.rn, ptr %i.ri, align 4, !tbaa !22, !noalias !250
  %.0108.i.i572 = zext i32 %i.rj to i64           ; 2 uses
  %i.ro = icmp eq i64 %.0.i235588, %.0108.i.i572
  br i1 %i.ro, label %._crit_edge582, label %.lr.ph581

.lr.ph581:                                        ; preds = %bb.bu, %bb.cd
  %.0108.i.i579 = phi i64 [ %.0108.i.i, %bb.cd ], [ %.0108.i.i572, %bb.bu ] ; 4 uses
  %.093.i.i578 = phi i64 [ %i.tm, %bb.cd ], [ 64, %bb.bu ] ; 2 uses
  %.094.i.i577 = phi i64 [ %.195.i.i, %bb.cd ], [ 0, %bb.bu ] ; 2 uses
  %.096.i.i576 = phi i64 [ %.197.i.i, %bb.cd ], [ 0, %bb.bu ] ; 2 uses
  %.0100.i.i575 = phi i64 [ %.1101.i.i, %bb.cd ], [ %i.rm, %bb.bu ] ; 4 uses
  %.0104.i.i574 = phi i64 [ %.1105.i.i, %bb.cd ], [ %i.rl, %bb.bu ] ; 4 uses
  %.0108.i.i.in573 = phi i32 [ %.1109.in.i.i, %bb.cd ], [ %i.rj, %bb.bu ] ; 2 uses
  %i.rp = sub i64 %.0.i235588, %.0108.i.i579
  %i.rq = icmp ugt i64 %i.rp, %i.ra
  %i.rr = icmp eq i64 %.093.i.i578, 0
  %or.cond.i.i = select i1 %i.rq, i1 true, i1 %i.rr
  br i1 %or.cond.i.i, label %._crit_edge582, label %bb.bv

._crit_edge582:                                   ; preds = %bb.cd, %.lr.ph581, %bb.bu
  %.0104.i.i.lcssa = phi i64 [ %i.rl, %bb.bu ], [ %.0104.i.i574, %.lr.ph581 ], [ %.1105.i.i, %bb.cd ]
  %.0100.i.i.lcssa = phi i64 [ %i.rm, %bb.bu ], [ %.0100.i.i575, %.lr.ph581 ], [ %.1101.i.i, %bb.cd ]
  %i.rs = load i32, ptr %i.aj, align 8, !tbaa !79, !alias.scope !245 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0104.i.i.lcssa
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !22, !noalias !250
  br label %StoreH10.exit

bb.bv:                                            ; preds = %.lr.ph581
  %i.ru = and i64 %4, %.0108.i.i579
  %i.rv = call i64 @llvm.umin.i64(i64 %.096.i.i576, i64 %.094.i.i577) ; 5 uses
  %i.rw = getelementptr i8, ptr %i.re, i64 %i.rv  ; 4 uses
  %i.rx = getelementptr i8, ptr %3, i64 %i.ru     ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 %i.rv  ; 2 uses
  %i.rz = sub nuw nsw i64 128, %i.rv              ; 2 uses
  %i.sa = icmp ult i64 %i.rv, 121
  br i1 %i.sa, label %.lr.ph560, label %.preheader426

.preheader426:                                    ; preds = %bb.bx, %bb.bv
  %.026.i.i.i.lcssa = phi ptr [ %i.rw, %bb.bv ], [ %i.sj, %bb.bx ] ; 3 uses
  %.024.i.i.i.lcssa = phi ptr [ %i.ry, %bb.bv ], [ %i.si, %bb.bx ]
  %.022.i.i.i.lcssa = phi i64 [ %i.rz, %bb.bv ], [ %i.sk, %bb.bx ] ; 3 uses
  %.not.i.i.i564 = icmp eq i64 %.022.i.i.i.lcssa, 0
  br i1 %.not.i.i.i564, label %.critedge.i.i.i, label %.lr.ph568.preheader

.lr.ph568.preheader:                              ; preds = %.preheader426
  %scevgep684 = getelementptr i8, ptr %.026.i.i.i.lcssa, i64 %.022.i.i.i.lcssa
  br label %.lr.ph568

.lr.ph560:                                        ; preds = %bb.bv, %bb.bx
  %.022.i.i.i558 = phi i64 [ %i.sk, %bb.bx ], [ %i.rz, %bb.bv ]
  %.024.i.i.i557 = phi ptr [ %i.si, %bb.bx ], [ %i.ry, %bb.bv ] ; 2 uses
  %.026.i.i.i556 = phi ptr [ %i.sj, %bb.bx ], [ %i.rw, %bb.bv ] ; 3 uses
  %.0.copyload.i5.i = load i64, ptr %.024.i.i.i557, align 1, !alias.scope !246, !noalias !251 ; 2 uses
  %.0.copyload.i.i271 = load i64, ptr %.026.i.i.i556, align 1, !alias.scope !246, !noalias !251 ; 2 uses
  %.not30.i.i.i = icmp eq i64 %.0.copyload.i5.i, %.0.copyload.i.i271
  br i1 %.not30.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph560
  %i.sb = xor i64 %.0.copyload.i.i271, %.0.copyload.i5.i
  %i.sc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sb, i1 true)
  %i.sd = ptrtoint ptr %.026.i.i.i556 to i64
  %i.se = ptrtoint ptr %i.rw to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = lshr i64 %i.sc, 3
  %i.sh = add i64 %i.sf, %i.sg
  br label %FindMatchLengthWithLimit.exit.i.i

bb.bx:                                            ; preds = %.lr.ph560
  %i.si = getelementptr inbounds nuw i8, ptr %.024.i.i.i557, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.026.i.i.i556, i64 8 ; 2 uses
  %i.sk = add i64 %.022.i.i.i558, -8              ; 3 uses
  %i.sl = icmp ugt i64 %i.sk, 7
  br i1 %i.sl, label %.lr.ph560, label %.preheader426, !llvm.loop !1

.lr.ph568:                                        ; preds = %.lr.ph568.preheader, %bb.by
  %.123.i.i.i567 = phi i64 [ %i.sp, %bb.by ], [ %.022.i.i.i.lcssa, %.lr.ph568.preheader ]
  %.125.i.i.i566 = phi ptr [ %i.sq, %bb.by ], [ %.024.i.i.i.lcssa, %.lr.ph568.preheader ] ; 2 uses
  %.228.i.i.i565 = phi ptr [ %i.sr, %bb.by ], [ %.026.i.i.i.lcssa, %.lr.ph568.preheader ] ; 3 uses
  %i.sm = load i8, ptr %.228.i.i.i565, align 1, !tbaa !23, !alias.scope !252
  %i.sn = load i8, ptr %.125.i.i.i566, align 1, !tbaa !23, !alias.scope !252
  %i.so = icmp eq i8 %i.sm, %i.sn
  br i1 %i.so, label %bb.by, label %.critedge.i.i.i

bb.by:                                            ; preds = %.lr.ph568
  %i.sp = add nsw i64 %.123.i.i.i567, -1          ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.125.i.i.i566, i64 1
  %i.sr = getelementptr inbounds nuw i8, ptr %.228.i.i.i565, i64 1
  %.not.i.i.i = icmp eq i64 %i.sp, 0
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph568, !llvm.loop !2

.critedge.i.i.i:                                  ; preds = %bb.by, %.lr.ph568, %.preheader426
  %.228.i.i.i.lcssa = phi ptr [ %.026.i.i.i.lcssa, %.preheader426 ], [ %.228.i.i.i565, %.lr.ph568 ], [ %scevgep684, %bb.by ]
  %i.ss = ptrtoint ptr %.228.i.i.i.lcssa to i64
  %i.st = ptrtoint ptr %i.rw to i64
  %i.su = sub i64 %i.ss, %i.st
  br label %FindMatchLengthWithLimit.exit.i.i

FindMatchLengthWithLimit.exit.i.i:                ; preds = %bb.bw, %.critedge.i.i.i
  %.2.i.i.i = phi i64 [ %i.sh, %bb.bw ], [ %i.su, %.critedge.i.i.i ]
  %i.sv = add i64 %.2.i.i.i, %i.rv                ; 5 uses
  %.not118.i.i = icmp ult i64 %i.sv, 128
  br i1 %.not118.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i
  %i.sw = and i64 %.0108.i.i579, %i.qz
  %.idx757 = shl nuw nsw i64 %i.sw, 3
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.idx757 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !22, !noalias !250
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0104.i.i574
  store i32 %i.sy, ptr %i.sz, align 4, !tbaa !22, !noalias !250
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !22, !noalias !250
  br label %StoreH10.exit

bb.ca:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i
  %i.tc = getelementptr i8, ptr %i.re, i64 %i.sv
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !23, !alias.scope !252
  %i.te = getelementptr i8, ptr %i.rx, i64 %i.sv
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !23, !alias.scope !252
  %i.tg = icmp ugt i8 %i.td, %i.tf
  %i.th = and i64 %.0108.i.i579, %i.qz
  %i.ti = shl nuw nsw i64 %i.th, 1                ; 3 uses
  br i1 %i.tg, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0104.i.i574
  store i32 %.0108.i.i.in573, ptr %i.tj, align 4, !tbaa !22, !noalias !250
  %i.tk = or disjoint i64 %i.ti, 1                ; 2 uses
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0100.i.i575
  store i32 %.0108.i.i.in573, ptr %i.tl, align 4, !tbaa !22, !noalias !250
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn.i.i = phi i64 [ %i.tk, %bb.cb ], [ %i.ti, %bb.cc ]
  %.1105.i.i = phi i64 [ %i.tk, %bb.cb ], [ %.0104.i.i574, %bb.cc ] ; 2 uses
  %.1101.i.i = phi i64 [ %.0100.i.i575, %bb.cb ], [ %i.ti, %bb.cc ] ; 2 uses
  %.197.i.i = phi i64 [ %i.sv, %bb.cb ], [ %.096.i.i576, %bb.cc ]
  %.195.i.i = phi i64 [ %.094.i.i577, %bb.cb ], [ %i.sv, %bb.cc ]
  %.1109.in.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.pn.i.i
  %.1109.in.i.i = load i32, ptr %.1109.in.in.i.i, align 4, !tbaa !22, !noalias !250 ; 2 uses
  %i.tm = add nsw i64 %.093.i.i578, -1
  %.0108.i.i = zext i32 %.1109.in.i.i to i64      ; 2 uses
  %i.tn = icmp eq i64 %.0.i235588, %.0108.i.i
  br i1 %i.tn, label %._crit_edge582, label %.lr.ph581

StoreH10.exit:                                    ; preds = %bb.bz, %._crit_edge582
  %.0100.i.i575.lcssa801.sink = phi i64 [ %.0100.i.i575, %bb.bz ], [ %.0100.i.i.lcssa, %._crit_edge582 ]
  %.sink813 = phi i32 [ %i.tb, %bb.bz ], [ %i.rs, %._crit_edge582 ]
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0100.i.i575.lcssa801.sink
  store i32 %.sink813, ptr %i.to, align 4, !tbaa !22, !noalias !250
  %i.tp = add i64 %.0.i235588, 8                  ; 2 uses
  %i.tq = icmp ult i64 %i.tp, %spec.select.i234
  br i1 %i.tq, label %bb.bu, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %StoreH10.exit, %bb.bt
  %i.tr = icmp ult i64 %spec.select.i234, %i.qu
  br i1 %i.tr, label %.lr.ph626, label %StoreRangeH10.exit

.lr.ph626:                                        ; preds = %.loopexit
  %i.ts = load i64, ptr %i.ae, align 8, !tbaa !78, !alias.scope !253 ; 4 uses
  %i.tt = add i64 %i.ts, -15
  %i.tu = load ptr, ptr %i.ah, align 8, !tbaa !76, !alias.scope !254
  %i.tv = load ptr, ptr %i.ai, align 8, !tbaa !77, !alias.scope !254 ; 7 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph626, %StoreH10.exit315
  %.1.i236623 = phi i64 [ %spec.select.i234, %.lr.ph626 ], [ %i.wi, %StoreH10.exit315 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.tw = and i64 %.1.i236623, %4
  %i.tx = getelementptr inbounds nuw i8, ptr %3, i64 %i.tw ; 3 uses
  %.val = load i32, ptr %i.tx, align 1
  %i.ty = mul i32 %.val, 506832829
  %i.tz = lshr i32 %i.ty, 15
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.ua ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !22, !noalias !258 ; 2 uses
  %i.ud = and i64 %i.ts, %.1.i236623
  %i.ue = shl i64 %i.ud, 1                        ; 3 uses
  %i.uf = or disjoint i64 %i.ue, 1                ; 2 uses
  %i.ug = trunc i64 %.1.i236623 to i32
  store i32 %i.ug, ptr %i.ub, align 4, !tbaa !22, !noalias !259
  %.0108.i.i273607 = zext i32 %i.uc to i64        ; 2 uses
  %i.uh = icmp eq i64 %.1.i236623, %.0108.i.i273607
  br i1 %i.uh, label %._crit_edge617, label %.lr.ph616

.lr.ph616:                                        ; preds = %bb.ce, %bb.cn
  %.0108.i.i273614 = phi i64 [ %.0108.i.i273, %bb.cn ], [ %.0108.i.i273607, %bb.ce ] ; 4 uses
  %.093.i.i278613 = phi i64 [ %i.wf, %bb.cn ], [ 64, %bb.ce ] ; 2 uses
  %.094.i.i277612 = phi i64 [ %.195.i.i305, %bb.cn ], [ 0, %bb.ce ] ; 2 uses
  %.096.i.i276611 = phi i64 [ %.197.i.i304, %bb.cn ], [ 0, %bb.ce ] ; 2 uses
  %.0100.i.i275610 = phi i64 [ %.1101.i.i303, %bb.cn ], [ %i.uf, %bb.ce ] ; 4 uses
  %.0104.i.i274609 = phi i64 [ %.1105.i.i302, %bb.cn ], [ %i.ue, %bb.ce ] ; 4 uses
  %.0108.i.i273.in608 = phi i32 [ %.1109.in.i.i307, %bb.cn ], [ %i.uc, %bb.ce ] ; 2 uses
  %i.ui = sub i64 %.1.i236623, %.0108.i.i273614
  %i.uj = icmp ugt i64 %i.ui, %i.tt
  %i.uk = icmp eq i64 %.093.i.i278613, 0
  %or.cond.i.i279 = select i1 %i.uj, i1 true, i1 %i.uk
  br i1 %or.cond.i.i279, label %._crit_edge617, label %bb.cf

._crit_edge617:                                   ; preds = %bb.cn, %.lr.ph616, %bb.ce
  %.0104.i.i274.lcssa = phi i64 [ %i.ue, %bb.ce ], [ %.0104.i.i274609, %.lr.ph616 ], [ %.1105.i.i302, %bb.cn ]
  %.0100.i.i275.lcssa = phi i64 [ %i.uf, %bb.ce ], [ %.0100.i.i275610, %.lr.ph616 ], [ %.1101.i.i303, %bb.cn ]
  %i.ul = load i32, ptr %i.aj, align 8, !tbaa !79, !alias.scope !254 ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.0104.i.i274.lcssa
  store i32 %i.ul, ptr %i.um, align 4, !tbaa !22, !noalias !259
  br label %StoreH10.exit315

bb.cf:                                            ; preds = %.lr.ph616
  %i.un = and i64 %4, %.0108.i.i273614
  %i.uo = call i64 @llvm.umin.i64(i64 %.096.i.i276611, i64 %.094.i.i277612) ; 5 uses
  %i.up = getelementptr i8, ptr %i.tx, i64 %i.uo  ; 4 uses
  %i.uq = getelementptr i8, ptr %3, i64 %i.un     ; 2 uses
  %i.ur = getelementptr i8, ptr %i.uq, i64 %i.uo  ; 2 uses
  %i.us = sub nuw nsw i64 128, %i.uo              ; 2 uses
  %i.ut = icmp ult i64 %i.uo, 121
  br i1 %i.ut, label %.lr.ph595, label %.preheader

.preheader:                                       ; preds = %bb.ch, %bb.cf
  %.026.i.i.i280.lcssa = phi ptr [ %i.up, %bb.cf ], [ %i.vc, %bb.ch ] ; 3 uses
  %.024.i.i.i281.lcssa = phi ptr [ %i.ur, %bb.cf ], [ %i.vb, %bb.ch ]
  %.022.i.i.i282.lcssa = phi i64 [ %i.us, %bb.cf ], [ %i.vd, %bb.ch ] ; 3 uses
  %.not.i.i.i287599 = icmp eq i64 %.022.i.i.i282.lcssa, 0
  br i1 %.not.i.i.i287599, label %.critedge.i.i.i288, label %.lr.ph603.preheader

.lr.ph603.preheader:                              ; preds = %.preheader
  %scevgep685 = getelementptr i8, ptr %.026.i.i.i280.lcssa, i64 %.022.i.i.i282.lcssa
  br label %.lr.ph603

.lr.ph595:                                        ; preds = %bb.cf, %bb.ch
  %.022.i.i.i282593 = phi i64 [ %i.vd, %bb.ch ], [ %i.us, %bb.cf ]
  %.024.i.i.i281592 = phi ptr [ %i.vb, %bb.ch ], [ %i.ur, %bb.cf ] ; 2 uses
  %.026.i.i.i280591 = phi ptr [ %i.vc, %bb.ch ], [ %i.up, %bb.cf ] ; 3 uses
  %.0.copyload.i5.i310 = load i64, ptr %.024.i.i.i281592, align 1, !alias.scope !255, !noalias !260 ; 2 uses
  %.0.copyload.i.i311 = load i64, ptr %.026.i.i.i280591, align 1, !alias.scope !255, !noalias !260 ; 2 uses
  %.not30.i.i.i312 = icmp eq i64 %.0.copyload.i5.i310, %.0.copyload.i.i311
  br i1 %.not30.i.i.i312, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph595
  %i.uu = xor i64 %.0.copyload.i.i311, %.0.copyload.i5.i310
  %i.uv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.uu, i1 true)
  %i.uw = ptrtoint ptr %.026.i.i.i280591 to i64
  %i.ux = ptrtoint ptr %i.up to i64
  %i.uy = sub i64 %i.uw, %i.ux
  %i.uz = lshr i64 %i.uv, 3
  %i.va = add i64 %i.uy, %i.uz
  br label %FindMatchLengthWithLimit.exit.i.i289

bb.ch:                                            ; preds = %.lr.ph595
  %i.vb = getelementptr inbounds nuw i8, ptr %.024.i.i.i281592, i64 8 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.026.i.i.i280591, i64 8 ; 2 uses
  %i.vd = add i64 %.022.i.i.i282593, -8           ; 3 uses
  %i.ve = icmp ugt i64 %i.vd, 7
  br i1 %i.ve, label %.lr.ph595, label %.preheader, !llvm.loop !1

.lr.ph603:                                        ; preds = %.lr.ph603.preheader, %bb.ci
  %.123.i.i.i286602 = phi i64 [ %i.vi, %bb.ci ], [ %.022.i.i.i282.lcssa, %.lr.ph603.preheader ]
  %.125.i.i.i285601 = phi ptr [ %i.vj, %bb.ci ], [ %.024.i.i.i281.lcssa, %.lr.ph603.preheader ] ; 2 uses
  %.228.i.i.i284600 = phi ptr [ %i.vk, %bb.ci ], [ %.026.i.i.i280.lcssa, %.lr.ph603.preheader ] ; 3 uses
  %i.vf = load i8, ptr %.228.i.i.i284600, align 1, !tbaa !23, !alias.scope !261
  %i.vg = load i8, ptr %.125.i.i.i285601, align 1, !tbaa !23, !alias.scope !261
  %i.vh = icmp eq i8 %i.vf, %i.vg
  br i1 %i.vh, label %bb.ci, label %.critedge.i.i.i288

bb.ci:                                            ; preds = %.lr.ph603
  %i.vi = add nsw i64 %.123.i.i.i286602, -1       ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.125.i.i.i285601, i64 1
  %i.vk = getelementptr inbounds nuw i8, ptr %.228.i.i.i284600, i64 1
  %.not.i.i.i287 = icmp eq i64 %i.vi, 0
  br i1 %.not.i.i.i287, label %.critedge.i.i.i288, label %.lr.ph603, !llvm.loop !2

.critedge.i.i.i288:                               ; preds = %bb.ci, %.lr.ph603, %.preheader
  %.228.i.i.i284.lcssa = phi ptr [ %.026.i.i.i280.lcssa, %.preheader ], [ %.228.i.i.i284600, %.lr.ph603 ], [ %scevgep685, %bb.ci ]
  %i.vl = ptrtoint ptr %.228.i.i.i284.lcssa to i64
  %i.vm = ptrtoint ptr %i.up to i64
  %i.vn = sub i64 %i.vl, %i.vm
  br label %FindMatchLengthWithLimit.exit.i.i289

FindMatchLengthWithLimit.exit.i.i289:             ; preds = %bb.cg, %.critedge.i.i.i288
  %.2.i.i.i290 = phi i64 [ %i.va, %bb.cg ], [ %i.vn, %.critedge.i.i.i288 ]
  %i.vo = add i64 %.2.i.i.i290, %i.uo             ; 5 uses
  %.not118.i.i293 = icmp ult i64 %i.vo, 128
  br i1 %.not118.i.i293, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i289
  %i.vp = and i64 %.0108.i.i273614, %i.ts
  %.idx758 = shl nuw nsw i64 %i.vp, 3
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tv, i64 %.idx758 ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !22, !noalias !259
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.0104.i.i274609
  store i32 %i.vr, ptr %i.vs, align 4, !tbaa !22, !noalias !259
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !22, !noalias !259
  br label %StoreH10.exit315

bb.ck:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i289
  %i.vv = getelementptr i8, ptr %i.tx, i64 %i.vo
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !23, !alias.scope !261
  %i.vx = getelementptr i8, ptr %i.uq, i64 %i.vo
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !23, !alias.scope !261
  %i.vz = icmp ugt i8 %i.vw, %i.vy
  %i.wa = and i64 %.0108.i.i273614, %i.ts
  %i.wb = shl nuw nsw i64 %i.wa, 1                ; 3 uses
  br i1 %i.vz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.0104.i.i274609
  store i32 %.0108.i.i273.in608, ptr %i.wc, align 4, !tbaa !22, !noalias !259
  %i.wd = or disjoint i64 %i.wb, 1                ; 2 uses
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.0100.i.i275610
  store i32 %.0108.i.i273.in608, ptr %i.we, align 4, !tbaa !22, !noalias !259
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pn.i.i301 = phi i64 [ %i.wd, %bb.cl ], [ %i.wb, %bb.cm ]
  %.1105.i.i302 = phi i64 [ %i.wd, %bb.cl ], [ %.0104.i.i274609, %bb.cm ] ; 2 uses
  %.1101.i.i303 = phi i64 [ %.0100.i.i275610, %bb.cl ], [ %i.wb, %bb.cm ] ; 2 uses
  %.197.i.i304 = phi i64 [ %i.vo, %bb.cl ], [ %.096.i.i276611, %bb.cm ]
  %.195.i.i305 = phi i64 [ %.094.i.i277612, %bb.cl ], [ %i.vo, %bb.cm ]
  %.1109.in.in.i.i306 = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.pn.i.i301
  %.1109.in.i.i307 = load i32, ptr %.1109.in.in.i.i306, align 4, !tbaa !22, !noalias !259 ; 2 uses
  %i.wf = add nsw i64 %.093.i.i278613, -1
  %.0108.i.i273 = zext i32 %.1109.in.i.i307 to i64 ; 2 uses
  %i.wg = icmp eq i64 %.1.i236623, %.0108.i.i273
  br i1 %i.wg, label %._crit_edge617, label %.lr.ph616

StoreH10.exit315:                                 ; preds = %bb.cj, %._crit_edge617
  %.0100.i.i275610.lcssa810.sink = phi i64 [ %.0100.i.i275610, %bb.cj ], [ %.0100.i.i275.lcssa, %._crit_edge617 ]
  %.sink815 = phi i32 [ %i.vu, %bb.cj ], [ %i.ul, %._crit_edge617 ]
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %.0100.i.i275610.lcssa810.sink
  store i32 %.sink815, ptr %i.wh, align 4, !tbaa !22, !noalias !259
  %i.wi = add nuw i64 %.1.i236623, 1              ; 2 uses
  %i.wj = icmp ult i64 %i.wi, %i.qu
  br i1 %i.wj, label %bb.ce, label %StoreRangeH10.exit, !llvm.loop !9

StoreRangeH10.exit:                               ; preds = %StoreH10.exit315, %.loopexit
  %i.wk = getelementptr i8, ptr %i.qg, i64 4
  %i.wl = shl nuw nsw i64 %i.qp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.wk, i8 0, i64 %i.wl, i1 false)
  %i.wm = add i64 %i.qp, %.0203629
  br label %bb.co

bb.co:                                            ; preds = %StoreRangeH10.exit, %bb.bs, %bb.br
  %.2207 = phi i64 [ %.0205628, %bb.br ], [ %i.qq, %StoreRangeH10.exit ], [ %i.qh, %bb.bs ]
  %.2 = phi i64 [ %.0203629, %bb.br ], [ %i.wm, %StoreRangeH10.exit ], [ %.0203629, %bb.bs ] ; 2 uses
  %i.wn = add i64 %.2, 1
  %i.wo = add i64 %.2, 4
  %i.wp = icmp ult i64 %i.wo, %1
  br i1 %i.wp, label %bb.e, label %._crit_edge633, !llvm.loop !223

._crit_edge633:                                   ; preds = %bb.co, %.thread, %bb.d
  %i.wq = phi i1 [ false, %bb.d ], [ false, %.thread ], [ true, %bb.co ]
  %i.wr = phi i64 [ %i.w, %bb.d ], [ %i.l, %.thread ], [ %i.w, %bb.co ] ; 2 uses
  %i.ws = phi ptr [ %i.n, %bb.d ], [ null, %.thread ], [ %i.n, %bb.co ] ; 3 uses
  %i.wt = phi ptr [ %i.q, %bb.d ], [ %i.j, %.thread ], [ %i.q, %bb.co ] ; 16 uses
  %.0202.lcssa = phi ptr [ %i.t, %bb.d ], [ null, %.thread ], [ %.1, %bb.co ] ; 3 uses
  %i.wu = load i64, ptr %12, align 8, !tbaa !48
  %i.wv = load i64, ptr %9, align 8, !tbaa !48    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  %i.ww = load i64, ptr %11, align 8, !tbaa !48   ; 3 uses
  %i.wx = add i64 %1, 1                           ; 4 uses
  %.not224 = icmp eq i64 %i.wx, 0                 ; 2 uses
  br i1 %.not224, label %.thread415, label %bb.cp

.thread415:                                       ; preds = %._crit_edge633
  %i.wy = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 2848 ; 2 uses
  store i64 %1, ptr %i.wz, align 8, !tbaa !61
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge633
  %i.xa = shl i64 %i.wx, 4
  %i.xb = call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.xa) #13 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wt, i64 2848 ; 3 uses
  store i64 %1, ptr %i.xd, align 8, !tbaa !61
  %i.xe = add i64 %1, 2                           ; 2 uses
  %.not.i322 = icmp eq i64 %i.xe, 0
  br i1 %.not.i322, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.thread415, %bb.cp
  %i.xf = phi i64 [ 1, %.thread415 ], [ %i.xe, %bb.cp ]
  %i.xg = phi ptr [ %i.wz, %.thread415 ], [ %i.xd, %bb.cp ]
  %i.xh = phi ptr [ %i.wy, %.thread415 ], [ %i.xc, %bb.cp ]
  %i.xi = phi ptr [ null, %.thread415 ], [ %i.xb, %bb.cp ]
  %i.xj = shl i64 %i.xf, 2
  %i.xk = call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.xj) #13
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.xl = phi ptr [ %i.xg, %bb.cq ], [ %i.xd, %bb.cp ]
  %i.xm = phi ptr [ %i.xh, %bb.cq ], [ %i.xc, %bb.cp ]
  %i.xn = phi ptr [ %i.xi, %bb.cq ], [ %i.xb, %bb.cp ] ; 21 uses
  %i.xo = phi ptr [ %i.xk, %bb.cq ], [ null, %bb.cp ]
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wt, i64 2832 ; 5 uses
  store ptr %i.xo, ptr %i.xp, align 8, !tbaa !62
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 12 ; 2 uses
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !63 ; 2 uses
  %.not12.i = icmp eq i32 %i.xr, 0
  br i1 %.not12.i, label %InitZopfliCostModel.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.xs = zext i32 %i.xr to i64
  %i.xt = shl nuw nsw i64 %i.xs, 2
  %i.xu = call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.xt) #13
  %.pre.i = load i32, ptr %i.xq, align 4, !tbaa !63
  br label %InitZopfliCostModel.exit

InitZopfliCostModel.exit:                         ; preds = %bb.cr, %bb.cs
  %i.xv = phi i32 [ %.pre.i, %bb.cs ], [ 0, %bb.cr ]
  %i.xw = phi ptr [ %i.xu, %bb.cs ], [ null, %bb.cr ]
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wt, i64 2816 ; 4 uses
  store ptr %i.xw, ptr %i.xx, align 8, !tbaa !64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wt, i64 2824 ; 2 uses
  store i32 %i.xv, ptr %i.xy, align 8, !tbaa !65
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wt, i64 2856 ; 7 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wt, i64 3880 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wt, i64 6696 ; 2 uses
  %i.yc = sub i64 %2, %i.wv
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wt, i64 8872 ; 5 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wt, i64 2840
  %i.yf = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xn, i64 12
  %i.yh = getelementptr inbounds nuw i8, ptr %15, i64 256 ; 3 uses
  %i.yi = add i64 %i.wr, %2
  %i.yj = getelementptr inbounds nuw i8, ptr %14, i64 28
  %i.yk = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.yl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ym = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %1 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yo = icmp eq i64 %1, 0
  %unroll_iter = and i64 %i.wx, -2
  %i.yp = and i64 %1, 1
  %lcmp.mod957.not.not = icmp eq i64 %i.yp, 0
  %lcmp.mod958 = trunc i64 %i.wx to i1
  %i.yq = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.yr = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ys = getelementptr inbounds nuw i8, ptr %14, i64 20
  br label %bb.ct

bb.ct:                                            ; preds = %InitZopfliCostModel.exit, %ZopfliIterate.exit
  %i.yt = phi i1 [ true, %InitZopfliCostModel.exit ], [ false, %ZopfliIterate.exit ] ; 2 uses
  br i1 %.not224, label %BrotliInitZopfliNodes.exit, label %.lr.ph.i324.preheader

.lr.ph.i324.preheader:                            ; preds = %bb.ct
  br i1 %i.yo, label %.lr.ph.i324.epil.preheader, label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %.lr.ph.i324.preheader, %.lr.ph.i324
  %.04.i = phi i64 [ %i.yx, %.lr.ph.i324 ], [ 0, %.lr.ph.i324.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i324 ], [ 0, %.lr.ph.i324.preheader ]
  %i.yu = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.04.i ; 4 uses
  store i32 1, ptr %i.yu, align 4, !tbaa !22
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !22
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !22
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 12
  store float 1.700000e+38, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !23
  %i.yv = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.04.i ; 4 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store i32 1, ptr %i.yw, align 4, !tbaa !22
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.yv, i64 20
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.1, align 4, !tbaa !22
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.1, align 4, !tbaa !22
  %.sroa.6.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.yv, i64 28
  store float 1.700000e+38, ptr %.sroa.6.0..sroa_idx.i.1, align 4, !tbaa !23
  %i.yx = add nuw i64 %.04.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa, label %.lr.ph.i324, !llvm.loop !0

BrotliInitZopfliNodes.exit.loopexit.unr-lcssa:    ; preds = %.lr.ph.i324
  br i1 %lcmp.mod957.not.not, label %.lr.ph.i324.epil.preheader, label %BrotliInitZopfliNodes.exit

.lr.ph.i324.epil.preheader:                       ; preds = %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa, %.lr.ph.i324.preheader
  %.04.i.epil.init = phi i64 [ 0, %.lr.ph.i324.preheader ], [ %i.yx, %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod958)
  %i.yy = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.04.i.epil.init ; 4 uses
  store i32 1, ptr %i.yy, align 4, !tbaa !22
  %.sroa.4.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.epil, align 4, !tbaa !22
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.epil, align 4, !tbaa !22
  %.sroa.6.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.yy, i64 12
  store float 1.700000e+38, ptr %.sroa.6.0..sroa_idx.i.epil, align 4, !tbaa !23
  br label %BrotliInitZopfliNodes.exit

BrotliInitZopfliNodes.exit:                       ; preds = %.lr.ph.i324.epil.preheader, %BrotliInitZopfliNodes.exit.loopexit.unr-lcssa, %bb.ct
  br i1 %i.yt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %BrotliInitZopfliNodes.exit
  call fastcc void @ZopfliCostModelSetFromLiteralCosts(ptr noundef %i.wt, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZopfliCostModelSetFromCommands.exit

bb.cv:                                            ; preds = %BrotliInitZopfliNodes.exit
  %i.yz = load i64, ptr %11, align 8, !tbaa !48   ; 2 uses
  %i.za = sub i64 %i.yz, %i.ww
  %.not.i325 = icmp eq i64 %i.yz, %i.ww
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6016) %i.xz, i8 0, i64 6016, i1 false)
  br i1 %.not.i325, label %vector.body896.preheader, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.cv, %._crit_edge.i
  %.07077.i = phi i64 [ %i.aaz, %._crit_edge.i ], [ 0, %bb.cv ] ; 2 uses
  %.07276.i = phi i64 [ %i.aay, %._crit_edge.i ], [ %i.yc, %bb.cv ] ; 4 uses
  %i.zb = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.07077.i ; 4 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !52 ; 4 uses
  %i.zd = zext i32 %i.zc to i64                   ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !53
  %i.zg = and i32 %i.zf, 33554431
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zb, i64 14
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !262
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zb, i64 12
  %i.zl = load i16, ptr %i.zk, align 4, !tbaa !263 ; 2 uses
  %i.zm = zext i16 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.zm ; 2 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !22
  %i.zp = add i32 %i.zo, 1
  store i32 %i.zp, ptr %i.zn, align 4, !tbaa !22
  %i.zq = icmp ugt i16 %i.zl, 127
  br i1 %i.zq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.lr.ph79.i
  %i.zr = and i16 %i.zj, 1023
  %i.zs = zext nneg i16 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.zs ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !22
  %i.zv = add i32 %i.zu, 1
  store i32 %i.zv, ptr %i.zt, align 4, !tbaa !22
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.lr.ph79.i
  %.not88.i = icmp eq i32 %i.zc, 0
  br i1 %.not88.i, label %._crit_edge.i, label %.lr.ph.i326.preheader

.lr.ph.i326.preheader:                            ; preds = %bb.cx
  %xtraiter959 = and i64 %i.zd, 1
  %i.zw = icmp eq i32 %i.zc, 1
  br i1 %i.zw, label %.lr.ph.i326.epil.preheader, label %.lr.ph.i326.preheader.new

.lr.ph.i326.preheader.new:                        ; preds = %.lr.ph.i326.preheader
  %unroll_iter962 = and i64 %i.zd, 4294967294
  br label %.lr.ph.i326

.lr.ph.i326:                                      ; preds = %.lr.ph.i326, %.lr.ph.i326.preheader.new
  %.06975.i = phi i64 [ 0, %.lr.ph.i326.preheader.new ], [ %i.aao, %.lr.ph.i326 ] ; 3 uses
  %niter963 = phi i64 [ 0, %.lr.ph.i326.preheader.new ], [ %niter963.next.1, %.lr.ph.i326 ]
  %i.zx = add i64 %.06975.i, %.07276.i
  %i.zy = and i64 %i.zx, %4
  %i.zz = getelementptr inbounds nuw i8, ptr %3, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !23
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.aab ; 2 uses
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !22
  %i.aae = add i32 %i.aad, 1
  store i32 %i.aae, ptr %i.aac, align 4, !tbaa !22
  %i.aaf = or disjoint i64 %.06975.i, 1
  %i.aag = add i64 %i.aaf, %.07276.i
  %i.aah = and i64 %i.aag, %4
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !23
  %i.aak = zext i8 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.aak ; 2 uses
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !22
  %i.aan = add i32 %i.aam, 1
  store i32 %i.aan, ptr %i.aal, align 4, !tbaa !22
  %i.aao = add nuw nsw i64 %.06975.i, 2           ; 2 uses
  %niter963.next.1 = add i64 %niter963, 2         ; 2 uses
  %niter963.ncmp.1 = icmp eq i64 %niter963.next.1, %unroll_iter962
  br i1 %niter963.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i326, !llvm.loop !224

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i326
  %lcmp.mod960.not = icmp eq i64 %xtraiter959, 0
  br i1 %lcmp.mod960.not, label %._crit_edge.i, label %.lr.ph.i326.epil.preheader

.lr.ph.i326.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i326.preheader
  %.06975.i.epil.init = phi i64 [ 0, %.lr.ph.i326.preheader ], [ %i.aao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod961 = trunc i32 %i.zc to i1
  call void @llvm.assume(i1 %lcmp.mod961)
  %i.aap = add i64 %.06975.i.epil.init, %.07276.i
  %i.aaq = and i64 %i.aap, %4
  %i.aar = getelementptr inbounds nuw i8, ptr %3, i64 %i.aaq
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !23
  %i.aat = zext i8 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.aat ; 2 uses
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !22
  %i.aaw = add i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.aau, align 4, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i326.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.cx
  %i.aax = add i64 %.07276.i, %i.zd
  %i.aay = add i64 %i.aax, %i.zh
  %i.aaz = add nuw i64 %.07077.i, 1               ; 2 uses
  %exitcond91.not.i = icmp eq i64 %i.aaz, %i.za
  br i1 %exitcond91.not.i, label %vector.body896.preheader, label %.lr.ph79.i, !llvm.loop !225

vector.body896.preheader:                         ; preds = %._crit_edge.i, %bb.cv
  br label %vector.body896.a

vector.body896.a:                                 ; preds = %vector.body896.a, %vector.body896.preheader
  %index897.a = phi i64 [ 0, %vector.body896.preheader ], [ %index.next901.1, %vector.body896.a ] ; 3 uses
  %vec.phi.a = phi <2 x i64> [ zeroinitializer, %vector.body896.preheader ], [ %i.abl, %vector.body896.a ]
  %vec.phi898.a = phi <2 x i64> [ zeroinitializer, %vector.body896.preheader ], [ %i.abm, %vector.body896.a ]
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %index897.a ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %wide.load899.a = load <2 x i32>, ptr %i.aba, align 4, !tbaa !22
  %wide.load900.a = load <2 x i32>, ptr %i.abb, align 4, !tbaa !22
  %i.abc = zext <2 x i32> %wide.load899.a to <2 x i64>
  %i.abd = zext <2 x i32> %wide.load900.a to <2 x i64>
  %i.abe = add <2 x i64> %vec.phi.a, %i.abc
  %i.abf = add <2 x i64> %vec.phi898.a, %i.abd
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %index897.a ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %wide.load899.1 = load <2 x i32>, ptr %i.abh, align 4, !tbaa !22
  %wide.load900.1 = load <2 x i32>, ptr %i.abi, align 4, !tbaa !22
  %i.abj = zext <2 x i32> %wide.load899.1 to <2 x i64>
  %i.abk = zext <2 x i32> %wide.load900.1 to <2 x i64>
  %i.abl = add <2 x i64> %i.abe, %i.abj           ; 2 uses
  %i.abm = add <2 x i64> %i.abf, %i.abk           ; 2 uses
  %index.next901.1 = add nuw nsw i64 %index897.a, 8 ; 2 uses
  %i.abn = icmp eq i64 %index.next901.1, 256
  br i1 %i.abn, label %middle.block902.a, label %vector.body896.a, !llvm.loop !226

middle.block902.a:                                ; preds = %vector.body896.a
  %bin.rdx = add <2 x i64> %i.abm, %i.abl
  %i.abo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  %i.abp = icmp ult i64 %i.abo, 256
  br i1 %i.abp, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %middle.block902.a
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.abo
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !100
  br label %FastLog2.exit39.i.i

bb.cz:                                            ; preds = %middle.block902.a
  %i.abs = uitofp i64 %i.abo to double
  %i.abt = call double @log2(double noundef %i.abs) #13
  br label %FastLog2.exit39.i.i

FastLog2.exit39.i.i:                              ; preds = %bb.cz, %bb.cy
  %.in.i = phi double [ %i.abr, %bb.cy ], [ %i.abt, %bb.cz ]
  %i.abu = fptrunc double %.in.i to float         ; 2 uses
  %i.abv = fadd float %i.abu, 2.000000e+00
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %bb.de, %FastLog2.exit39.i.i
  %.248.i.i = phi i64 [ %i.ack, %bb.de ], [ 0, %FastLog2.exit39.i.i ] ; 4 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %.248.i.i
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !22 ; 4 uses
  %i.aby = icmp eq i32 %i.abx, 0
  br i1 %i.aby, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.lr.ph49.i.i
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.248.i.i
  store float %i.abv, ptr %i.abz, align 4, !tbaa !93
  br label %bb.de

bb.db:                                            ; preds = %.lr.ph49.i.i
  %i.aca = icmp ult i32 %i.abx, 256
  br i1 %i.aca, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.acb = zext nneg i32 %i.abx to i64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.acb
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !100
  br label %FastLog2.exit.i.i

bb.dd:                                            ; preds = %bb.db
  %i.ace = uitofp i32 %i.abx to double
  %i.acf = call double @log2(double noundef %i.ace) #13
  br label %FastLog2.exit.i.i

FastLog2.exit.i.i:                                ; preds = %bb.dd, %bb.dc
  %.0.i.i.i = phi double [ %i.acd, %bb.dc ], [ %i.acf, %bb.dd ]
  %i.acg = fptrunc double %.0.i.i.i to float
  %i.ach = fsub float %i.abu, %i.acg              ; 2 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.248.i.i
  %i.acj = fcmp olt float %i.ach, 1.000000e+00
  %spec.store.select.i.i = select i1 %i.acj, float 1.000000e+00, float %i.ach
  store float %spec.store.select.i.i, ptr %i.aci, align 4, !tbaa !93
  br label %bb.de

bb.de:                                            ; preds = %FastLog2.exit.i.i, %bb.da
  %i.ack = add nuw nsw i64 %.248.i.i, 1           ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %i.ack, 256
  br i1 %exitcond54.not.i.i, label %SetCost.exit.i, label %.lr.ph49.i.i, !llvm.loop !12

SetCost.exit.i:                                   ; preds = %bb.de
  call fastcc void @SetCost(ptr noundef nonnull %i.ya, i64 noundef 704, i32 noundef 0, ptr noundef nonnull %i.wt)
  %i.acl = load i32, ptr %i.xy, align 8, !tbaa !65
  %i.acm = zext i32 %i.acl to i64
  %i.acn = load ptr, ptr %i.xx, align 8, !tbaa !64
  call fastcc void @SetCost(ptr noundef nonnull %i.yb, i64 noundef %i.acm, i32 noundef 0, ptr noundef %i.acn)
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %SetCost.exit.i
  %.182.i.a = phi i64 [ 0, %SetCost.exit.i ], [ %index.next901, %bb.df ] ; 3 uses
  %vec.phi = phi <4 x float> [ splat (float 1.700000e+38), %SetCost.exit.i ], [ %20, %bb.df ] ; 3 uses
  %vec.phi898 = phi <4 x float> [ splat (float 1.700000e+38), %SetCost.exit.i ], [ %21, %bb.df ] ; 3 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i.a ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %wide.load899 = load <4 x float>, ptr %i.aco, align 4, !tbaa !93
  %wide.load900 = load <4 x float>, ptr %i.acp, align 4, !tbaa !93
  %16 = freeze <4 x float> %wide.load899          ; 3 uses
  %17 = freeze <4 x float> %wide.load900          ; 3 uses
  %18 = fcmp olt <4 x float> %vec.phi, %16
  %19 = fcmp olt <4 x float> %vec.phi898, %17
  %20 = select <4 x i1> %18, <4 x float> %vec.phi, <4 x float> %16 ; 2 uses
  %21 = select <4 x i1> %19, <4 x float> %vec.phi898, <4 x float> %17 ; 2 uses
  %index.next901 = add nuw i64 %.182.i.a, 8       ; 2 uses
  %22 = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %16, /* (nan nzero) */ i32 35)
  %23 = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %17, /* (nan nzero) */ i32 35)
  %24 = or <4 x i1> %22, %23
  %25 = bitcast <4 x i1> %24 to i4
  %26 = icmp ne i4 %25, 0                         ; 4 uses
  %exitcond92.not.i.3 = icmp eq i64 %index.next901, 704
  %27 = or i1 %26, %exitcond92.not.i.3
  br i1 %27, label %middle.block902, label %bb.df, !llvm.loop !227

middle.block902:                                  ; preds = %bb.df
  %28 = select i1 %26, <4 x float> %vec.phi, <4 x float> %20
  %29 = select i1 %26, <4 x float> %vec.phi898, <4 x float> %21
  %rdx.minmax = call nnan <4 x float> @llvm.minnum.v4f32(<4 x float> %28, <4 x float> %29)
  %30 = call nnan float @llvm.vector.reduce.fmin.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  br i1 %26, label %scalar.ph894, label %bb.dg

scalar.ph894:                                     ; preds = %middle.block902, %scalar.ph894
  %.182.i = phi i64 [ %35, %scalar.ph894 ], [ %.182.i.a, %middle.block902 ] ; 2 uses
  %.07181.i = phi float [ %34, %scalar.ph894 ], [ %30, %middle.block902 ] ; 2 uses
  %31 = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %32 = load float, ptr %31, align 4, !tbaa !93   ; 2 uses
  %33 = fcmp olt float %.07181.i, %32
  %34 = select i1 %33, float %.07181.i, float %32 ; 2 uses
  %35 = add nuw nsw i64 %.182.i, 1                ; 2 uses
  %exitcond92.not.i = icmp eq i64 %35, 704
  br i1 %exitcond92.not.i, label %bb.dg, label %scalar.ph894, !llvm.loop !228

bb.dg:                                            ; preds = %scalar.ph894, %middle.block902
  %.lcssa817 = phi float [ %30, %middle.block902 ], [ %34, %scalar.ph894 ]
  store float %.lcssa817, ptr %i.ye, align 8, !tbaa !101
  %i.acq = load ptr, ptr %i.xp, align 8, !tbaa !62 ; 4 uses
  %i.acr = load i64, ptr %i.xl, align 8, !tbaa !61 ; 5 uses
  store float 0.000000e+00, ptr %i.acq, align 4, !tbaa !93
  %.not89.i = icmp eq i64 %i.acr, 0
  br i1 %.not89.i, label %ZopfliCostModelSetFromCommands.exit, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %bb.dg
  %xtraiter964 = and i64 %i.acr, 1
  %i.acs = icmp eq i64 %i.acr, 1
  br i1 %i.acs, label %.lr.ph86.i.epil.preheader, label %.lr.ph86.i.preheader.new

.lr.ph86.i.preheader.new:                         ; preds = %.lr.ph86.i.preheader
  %unroll_iter967 = and i64 %i.acr, -2
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i, %.lr.ph86.i.preheader.new
  %i.act = phi float [ 0.000000e+00, %.lr.ph86.i.preheader.new ], [ %i.adp, %.lr.ph86.i ] ; 2 uses
  %.084.i = phi float [ 0.000000e+00, %.lr.ph86.i.preheader.new ], [ %i.adt, %.lr.ph86.i ]
  %.283.i = phi i64 [ 0, %.lr.ph86.i.preheader.new ], [ %i.adq, %.lr.ph86.i ] ; 3 uses
  %niter968 = phi i64 [ 0, %.lr.ph86.i.preheader.new ], [ %niter968.next.1, %.lr.ph86.i ]
  %i.acu = add i64 %.283.i, %2
  %i.acv = and i64 %i.acu, %4
  %i.acw = getelementptr inbounds nuw i8, ptr %3, i64 %i.acv
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !23
  %i.acy = zext i8 %i.acx to i64
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.acy
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !93
  %i.adb = fadd float %.084.i, %i.ada             ; 2 uses
  %i.adc = fadd float %i.act, %i.adb              ; 4 uses
  %i.add = or disjoint i64 %.283.i, 1             ; 2 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.add
  store float %i.adc, ptr %i.ade, align 4, !tbaa !93
  %i.adf = fsub float %i.adc, %i.act
  %i.adg = fsub float %i.adb, %i.adf
  %i.adh = add i64 %i.add, %2
  %i.adi = and i64 %i.adh, %4
  %i.adj = getelementptr inbounds nuw i8, ptr %3, i64 %i.adi
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !23
  %i.adl = zext i8 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.adl
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !93
  %i.ado = fadd float %i.adg, %i.adn              ; 2 uses
  %i.adp = fadd float %i.adc, %i.ado              ; 4 uses
  %i.adq = add nuw i64 %.283.i, 2                 ; 3 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.adq
  store float %i.adp, ptr %i.adr, align 4, !tbaa !93
  %i.ads = fsub float %i.adp, %i.adc
  %i.adt = fsub float %i.ado, %i.ads              ; 2 uses
  %niter968.next.1 = add nuw i64 %niter968, 2     ; 2 uses
  %niter968.ncmp.1 = icmp eq i64 %niter968.next.1, %unroll_iter967
  br i1 %niter968.ncmp.1, label %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa, label %.lr.ph86.i, !llvm.loop !229

ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa: ; preds = %.lr.ph86.i
  %lcmp.mod965.not = icmp eq i64 %xtraiter964, 0
  br i1 %lcmp.mod965.not, label %ZopfliCostModelSetFromCommands.exit, label %.lr.ph86.i.epil.preheader

.lr.ph86.i.epil.preheader:                        ; preds = %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa, %.lr.ph86.i.preheader
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph86.i.preheader ], [ %i.adp, %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa ]
  %.084.i.epil.init = phi float [ 0.000000e+00, %.lr.ph86.i.preheader ], [ %i.adt, %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa ]
  %.283.i.epil.init = phi i64 [ 0, %.lr.ph86.i.preheader ], [ %i.adq, %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod966 = trunc i64 %i.acr to i1
  call void @llvm.assume(i1 %lcmp.mod966)
  %i.adu = add i64 %.283.i.epil.init, %2
  %i.adv = and i64 %i.adu, %4
  %i.adw = getelementptr inbounds nuw i8, ptr %3, i64 %i.adv
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !23
  %i.ady = zext i8 %i.adx to i64
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.ady
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !93
  %i.aeb = fadd float %.084.i.epil.init, %i.aea
  %i.aec = fadd float %.epil.init, %i.aeb
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %.283.i.epil.init
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  store float %i.aec, ptr %i.aee, align 4, !tbaa !93
  br label %ZopfliCostModelSetFromCommands.exit

ZopfliCostModelSetFromCommands.exit:              ; preds = %.lr.ph86.i.epil.preheader, %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa, %bb.dg, %bb.cu
  store i64 %i.ww, ptr %11, align 8, !tbaa !48
  store i64 %i.wu, ptr %12, align 8, !tbaa !48
  store i64 %i.wv, ptr %9, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.aef = load i64, ptr %i.c, align 8, !tbaa !44
  %i.aeg = load i32, ptr %i.e, align 8, !tbaa !43
  %i.aeh = zext nneg i32 %i.aeg to i64
  %i.aei = shl nuw i64 1, %i.aeh
  %i.aej = add i64 %i.aei, -16                    ; 2 uses
  %i.aek = load i32, ptr %i.yf, align 4, !tbaa !55
  %i.ael = icmp slt i32 %i.aek, 11
  %i.aem = select i1 %i.ael, i64 150, i64 325
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  store i32 0, ptr %i.xn, align 4, !tbaa !46
  store float 0.000000e+00, ptr %i.yg, align 4, !tbaa !23
  store i64 0, ptr %i.yh, align 8, !tbaa !67
  br i1 %i.wq, label %.lr.ph76.i, label %._crit_edge.i328

.lr.ph76.i:                                       ; preds = %ZopfliCostModelSetFromCommands.exit
  %i.aen = add i64 %i.yi, %i.aef
  %i.aeo = add i64 %i.aej, %i.wr
  br label %bb.dh

bb.dh:                                            ; preds = %bb.ed, %.lr.ph76.i
  %.05375.i = phi i64 [ 0, %.lr.ph76.i ], [ %i.alb, %bb.ed ] ; 4 uses
  %.05574.i = phi i64 [ 0, %.lr.ph76.i ], [ %.257.i, %bb.ed ] ; 2 uses
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %.05375.i ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !22
  %i.aer = zext i32 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %.0202.lcssa, i64 %.05574.i
  %i.aet = call fastcc i64 @UpdateNodes(i64 noundef %1, i64 noundef %2, i64 noundef %.05375.i, ptr noundef %3, i64 noundef %4, ptr noundef readonly %6, i64 noundef %i.aej, ptr noundef nonnull readonly %8, i64 noundef %i.aer, ptr noundef readonly %i.aes, ptr noundef readonly %i.wt, ptr noundef %15, ptr noundef nonnull %i.xn) ; 2 uses
  %i.aeu = icmp ult i64 %i.aet, 16384
  %spec.store.select.i = select i1 %i.aeu, i64 0, i64 %i.aet ; 3 uses
  %i.aev = load i32, ptr %i.aep, align 4, !tbaa !22 ; 2 uses
  %i.aew = zext i32 %i.aev to i64
  %i.aex = add i64 %.05574.i, %i.aew              ; 3 uses
  %i.aey = icmp eq i32 %i.aev, 1
  br i1 %i.aey, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.aez = getelementptr [8 x i8], ptr %.0202.lcssa, i64 %i.aex
  %i.afa = getelementptr i8, ptr %i.aez, i64 -4
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !73
  %i.afc = lshr i32 %i.afb, 5
  %i.afd = zext nneg i32 %i.afc to i64            ; 2 uses
  %i.afe = icmp samesign ult i64 %i.aem, %i.afd
  br i1 %i.afe, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aff = call i64 @llvm.umax.i64(i64 %i.afd, i64 %spec.store.select.i)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %.0.i333 = phi i64 [ %i.aff, %bb.dj ], [ %spec.store.select.i, %bb.di ], [ %spec.store.select.i, %bb.dh ] ; 2 uses
  %i.afg = icmp ugt i64 %.0.i333, 1
  br i1 %i.afg, label %.lr.ph.preheader.i, label %bb.ed

.lr.ph.preheader.i:                               ; preds = %bb.dk
  %.163.i = add i64 %.0.i333, -1
  %.promoted.i = load i64, ptr %i.yh, align 8
  br label %.lr.ph.i335

.lr.ph.i335:                                      ; preds = %EvaluateNode.exit.i, %.lr.ph.preheader.i
  %.167.i = phi i64 [ %.1.i339, %EvaluateNode.exit.i ], [ %.163.i, %.lr.ph.preheader.i ]
  %.15466.i = phi i64 [ %i.afi, %EvaluateNode.exit.i ], [ %.05375.i, %.lr.ph.preheader.i ] ; 2 uses
  %.15665.i = phi i64 [ %i.ala, %EvaluateNode.exit.i ], [ %i.aex, %.lr.ph.preheader.i ] ; 2 uses
  %i.afh = phi i64 [ %i.akw, %EvaluateNode.exit.i ], [ %.promoted.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.afi = add i64 %.15466.i, 1                   ; 10 uses
  %i.afj = add i64 %.15466.i, 4
  %.not60.i = icmp ult i64 %i.afj, %1
  br i1 %.not60.i, label %bb.dl, label %.loopexit.i

bb.dl:                                            ; preds = %.lr.ph.i335
  %i.afk = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.afi ; 4 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 12 ; 2 uses
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !23 ; 3 uses
  %i.afn = load i32, ptr %i.afk, align 4, !tbaa !46
  %i.afo = and i32 %i.afn, 33554431               ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !47 ; 2 uses
  %i.afr = and i32 %i.afq, 134217727
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !49 ; 2 uses
  %i.afu = icmp eq i64 %i.afi, 0
  br i1 %i.afu, label %ComputeDistanceShortcut.exit.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.afv = zext i32 %i.aft to i64                 ; 2 uses
  %i.afw = zext nneg i32 %i.afo to i64
  %i.afx = add nuw nsw i64 %i.afv, %i.afw
  %i.afy = add i64 %i.aen, %i.afi
  %.not.i.i.i336 = icmp ugt i64 %i.afx, %i.afy
  %.not23.i.i.i = icmp ult i64 %i.aeo, %i.afv
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i336
  br i1 %or.cond.i.i.i, label %bb.do, label %ZopfliNodeDistanceCode.exit.i.i.i

ZopfliNodeDistanceCode.exit.i.i.i:                ; preds = %bb.dm
  %i.afz = lshr i32 %i.afq, 27                    ; 2 uses
  %i.aga = icmp eq i32 %i.afz, 0
  %i.agb = add i32 %i.aft, 15
  %i.agc = add nsw i32 %i.afz, -1
  %i.agd = select i1 %i.aga, i32 %i.agb, i32 %i.agc
  %.not24.i.i.i = icmp eq i32 %i.agd, 0
  br i1 %.not24.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %ZopfliNodeDistanceCode.exit.i.i.i
  %i.age = trunc i64 %i.afi to i32
  br label %ComputeDistanceShortcut.exit.i.i

bb.do:                                            ; preds = %ZopfliNodeDistanceCode.exit.i.i.i, %bb.dm
  %narrow.i.i.i = add nuw nsw i32 %i.afr, %i.afo
  %i.agf = zext nneg i32 %narrow.i.i.i to i64
  %i.agg = sub i64 %i.afi, %i.agf
  %i.agh = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.agg
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 12
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !23
  br label %ComputeDistanceShortcut.exit.i.i

ComputeDistanceShortcut.exit.i.i:                 ; preds = %bb.do, %bb.dn, %bb.dl
  %.0.i.i.i337 = phi i32 [ %i.agj, %bb.do ], [ %i.age, %bb.dn ], [ 0, %bb.dl ] ; 3 uses
  store i32 %.0.i.i.i337, ptr %i.afl, align 4, !tbaa !23
  %i.agk = load ptr, ptr %i.xp, align 8, !tbaa !62 ; 2 uses
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.afi
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !93
  %i.agn = load float, ptr %i.agk, align 4, !tbaa !93
  %i.ago = fsub float %i.agm, %i.agn              ; 2 uses
  %i.agp = fcmp ugt float %i.afm, %i.ago
  br i1 %i.agp, label %EvaluateNode.exit.i, label %bb.dp

bb.dp:                                            ; preds = %ComputeDistanceShortcut.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store i64 %i.afi, ptr %14, align 8, !tbaa !95
  store float %i.afm, ptr %i.yj, align 4, !tbaa !96
  %i.agq = fsub float %i.afm, %i.ago
  store float %i.agq, ptr %i.yk, align 8, !tbaa !97
  %.not.i20.i.i = icmp eq i32 %.0.i.i.i337, 0
  br i1 %.not.i20.i.i, label %.lr.ph31.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ 4, %.lr.ph.i.i.i ], [ 8, %.lr.ph.i.i.i.1 ], [ 12, %.lr.ph.i.i.i.2 ], [ 16, %.lr.ph.i.i.i.3 ]
  %.lcssa907 = phi i1 [ true, %.lr.ph.i.i.i ], [ true, %.lr.ph.i.i.i.1 ], [ true, %.lr.ph.i.i.i.2 ], [ false, %.lr.ph.i.i.i.3 ]
  br i1 %.lcssa907, label %.lr.ph31.preheader.i.i.i, label %ComputeDistanceCache.exit.i.i

.lr.ph31.preheader.i.i.i:                         ; preds = %.preheader.i.i.i, %bb.dp
  %.021.lcssa37.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.lcssa, %.preheader.i.i.i ], [ 0, %bb.dp ] ; 2 uses
  %i.agr = getelementptr nuw i8, ptr %14, i64 %.021.lcssa37.i.i.i
  %scevgep.i.i = getelementptr nuw i8, ptr %i.agr, i64 8
  %i.ags = sub nuw nsw i64 16, %.021.lcssa37.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep.i.i, ptr nonnull readonly align 4 %8, i64 %i.ags, i1 false), !tbaa !22
  br label %ComputeDistanceCache.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dp
  %.022.i.i.i338 = zext i32 %.0.i.i.i337 to i64   ; 2 uses
  %i.agt = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.022.i.i.i338 ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !47
  %i.agw = and i32 %i.agv, 134217727
  %i.agx = load i32, ptr %i.agt, align 4, !tbaa !46
  %i.agy = and i32 %i.agx, 33554431
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agt, i64 4
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !49
  store i32 %i.aha, ptr %i.yl, align 8, !tbaa !22
  %narrow.i21.i.i = add nuw nsw i32 %i.agy, %i.agw
  %i.ahb = zext nneg i32 %narrow.i21.i.i to i64
  %i.ahc = sub nsw i64 %.022.i.i.i338, %i.ahb
  %.pn.i.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.ahc
  %.022.in.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 12
  %.022.in.i.i.i = load i32, ptr %.022.in.in.i.i.i, align 4, !tbaa !23 ; 2 uses
  %.not969 = icmp eq i32 %.022.in.i.i.i, 0
  br i1 %.not969, label %.preheader.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %.022.i.i.i338.1 = zext i32 %.022.in.i.i.i to i64 ; 2 uses
  %i.ahd = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.022.i.i.i338.1 ; 3 uses
end_hunk_0
begin_hunk_1_@BrotliCreateHqZopfliBackwardReferences:bb.a

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %.022.i.i.i338.3 = zext i32 %.022.in.i.i.i.2 to i64
  %i.ahx = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.022.i.i.i338.3
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 4
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !49
  store i32 %i.ahz, ptr %i.ys, align 4, !tbaa !22
  br label %.preheader.i.i.i

ComputeDistanceCache.exit.i.i:                    ; preds = %.lr.ph31.preheader.i.i.i, %.preheader.i.i.i
  %i.aia = add i64 %i.afh, 1                      ; 8 uses
  %i.aib = and i64 %i.afh, 7                      ; 7 uses
  %i.aic = xor i64 %i.aib, 7                      ; 2 uses
  %i.aid = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aid, ptr noundef nonnull readonly align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !98
  %i.aie = icmp ugt i64 %i.aia, 1
  br i1 %i.aie, label %.lr.ph.i22.i.i, label %StartPosQueuePush.exit.i.i

.lr.ph.i22.i.i:                                   ; preds = %ComputeDistanceCache.exit.i.i
  %i.aif = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aic ; 3 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 24
  %i.aih = load float, ptr %i.aig, align 8, !tbaa !97
  %i.aii = sub nuw nsw i64 8, %i.aib              ; 2 uses
  %i.aij = and i64 %i.aii, 7
  %i.aik = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aij ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 24
  %i.aim = load float, ptr %i.ail, align 8, !tbaa !97
  %i.ain = fcmp ogt float %i.aih, %i.aim
  br i1 %i.ain, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph.i22.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.aif, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aif, ptr noundef nonnull align 8 dereferenceable(32) %i.aik, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aik, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph.i22.i.i
  %exitcond.not.i23.i.i = icmp eq i64 %i.aia, 2
  br i1 %exitcond.not.i23.i.i, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.1

.lr.ph.i22.i.i.1:                                 ; preds = %bb.dr
  %i.aio = and i64 %i.aii, 7
  %i.aip = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aio ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 24
  %i.air = load float, ptr %i.aiq, align 8, !tbaa !97
  %i.ais = sub nuw nsw i64 9, %i.aib              ; 2 uses
  %i.ait = and i64 %i.ais, 7
  %i.aiu = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ait ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 24
  %i.aiw = load float, ptr %i.aiv, align 8, !tbaa !97
  %i.aix = fcmp ogt float %i.air, %i.aiw
  br i1 %i.aix, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph.i22.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.aip, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aip, ptr noundef nonnull align 8 dereferenceable(32) %i.aiu, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aiu, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.lr.ph.i22.i.i.1
  %exitcond.not.i23.i.i.1 = icmp eq i64 %i.aia, 3
  br i1 %exitcond.not.i23.i.i.1, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.2

.lr.ph.i22.i.i.2:                                 ; preds = %bb.dt
  %i.aiy = and i64 %i.ais, 7
  %i.aiz = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aiy ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 24
  %i.ajb = load float, ptr %i.aja, align 8, !tbaa !97
  %i.ajc = sub nuw nsw i64 10, %i.aib             ; 2 uses
  %i.ajd = and i64 %i.ajc, 7
  %i.aje = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajd ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 24
  %i.ajg = load float, ptr %i.ajf, align 8, !tbaa !97
  %i.ajh = fcmp ogt float %i.ajb, %i.ajg
  br i1 %i.ajh, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.lr.ph.i22.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.aiz, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aiz, ptr noundef nonnull align 8 dereferenceable(32) %i.aje, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aje, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph.i22.i.i.2
  %exitcond.not.i23.i.i.2 = icmp eq i64 %i.aia, 4
  br i1 %exitcond.not.i23.i.i.2, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.3

.lr.ph.i22.i.i.3:                                 ; preds = %bb.dv
  %i.aji = and i64 %i.ajc, 7
  %i.ajj = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aji ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 24
  %i.ajl = load float, ptr %i.ajk, align 8, !tbaa !97
  %i.ajm = sub nuw nsw i64 11, %i.aib             ; 2 uses
  %i.ajn = and i64 %i.ajm, 7
  %i.ajo = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajn ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 24
  %i.ajq = load float, ptr %i.ajp, align 8, !tbaa !97
  %i.ajr = fcmp ogt float %i.ajl, %i.ajq
  br i1 %i.ajr, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph.i22.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ajj, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajj, ptr noundef nonnull align 8 dereferenceable(32) %i.ajo, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajo, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i22.i.i.3
  %exitcond.not.i23.i.i.3 = icmp eq i64 %i.aia, 5
  br i1 %exitcond.not.i23.i.i.3, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.4

.lr.ph.i22.i.i.4:                                 ; preds = %bb.dx
  %i.ajs = and i64 %i.ajm, 7
  %i.ajt = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajs ; 3 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 24
  %i.ajv = load float, ptr %i.aju, align 8, !tbaa !97
  %i.ajw = sub nuw nsw i64 12, %i.aib             ; 2 uses
  %i.ajx = and i64 %i.ajw, 7
  %i.ajy = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajx ; 3 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 24
  %i.aka = load float, ptr %i.ajz, align 8, !tbaa !97
  %i.akb = fcmp ogt float %i.ajv, %i.aka
  br i1 %i.akb, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph.i22.i.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ajt, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajt, ptr noundef nonnull align 8 dereferenceable(32) %i.ajy, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajy, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph.i22.i.i.4
  %exitcond.not.i23.i.i.4 = icmp eq i64 %i.aia, 6
  br i1 %exitcond.not.i23.i.i.4, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.5

.lr.ph.i22.i.i.5:                                 ; preds = %bb.dz
  %i.akc = and i64 %i.ajw, 7
  %i.akd = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akc ; 3 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 24
  %i.akf = load float, ptr %i.ake, align 8, !tbaa !97
  %i.akg = sub nuw nsw i64 13, %i.aib             ; 2 uses
  %i.akh = and i64 %i.akg, 7
  %i.aki = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akh ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 24
  %i.akk = load float, ptr %i.akj, align 8, !tbaa !97
  %i.akl = fcmp ogt float %i.akf, %i.akk
  br i1 %i.akl, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.lr.ph.i22.i.i.5
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.akd, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akd, ptr noundef nonnull align 8 dereferenceable(32) %i.aki, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aki, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.lr.ph.i22.i.i.5
  %exitcond.not.i23.i.i.5 = icmp eq i64 %i.aia, 7
  br i1 %exitcond.not.i23.i.i.5, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.6

.lr.ph.i22.i.i.6:                                 ; preds = %bb.eb
  %i.akm = and i64 %i.akg, 7
  %i.akn = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akm ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 24
  %i.akp = load float, ptr %i.ako, align 8, !tbaa !97
  %i.akq = sub i64 6, %i.afh
  %i.akr = and i64 %i.akq, 7
  %i.aks = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akr ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 24
  %i.aku = load float, ptr %i.akt, align 8, !tbaa !97
  %i.akv = fcmp ogt float %i.akp, %i.aku
  br i1 %i.akv, label %bb.ec, label %StartPosQueuePush.exit.i.i

bb.ec:                                            ; preds = %.lr.ph.i22.i.i.6
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.akn, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akn, ptr noundef nonnull align 8 dereferenceable(32) %i.aks, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aks, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %StartPosQueuePush.exit.i.i

StartPosQueuePush.exit.i.i:                       ; preds = %bb.dr, %bb.dt, %bb.dv, %bb.dx, %bb.dz, %bb.eb, %bb.ec, %.lr.ph.i22.i.i.6, %ComputeDistanceCache.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %EvaluateNode.exit.i

EvaluateNode.exit.i:                              ; preds = %StartPosQueuePush.exit.i.i, %ComputeDistanceShortcut.exit.i.i
  %i.akw = phi i64 [ %i.afh, %ComputeDistanceShortcut.exit.i.i ], [ %i.aia, %StartPosQueuePush.exit.i.i ] ; 2 uses
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %i.afi
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !22
  %i.akz = zext i32 %i.aky to i64
  %i.ala = add i64 %.15665.i, %i.akz              ; 2 uses
  %.1.i339 = add i64 %.167.i, -1                  ; 2 uses
  %.not.i340 = icmp eq i64 %.1.i339, 0
  br i1 %.not.i340, label %.loopexit.i, label %.lr.ph.i335, !llvm.loop !230

.loopexit.i:                                      ; preds = %EvaluateNode.exit.i, %.lr.ph.i335
  %.lcssa62.ph.i = phi i64 [ %i.akw, %EvaluateNode.exit.i ], [ %i.afh, %.lr.ph.i335 ]
  %.156.lcssa.ph.i = phi i64 [ %i.ala, %EvaluateNode.exit.i ], [ %.15665.i, %.lr.ph.i335 ]
  store i64 %.lcssa62.ph.i, ptr %i.yh, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit.i, %bb.dk
  %.257.i = phi i64 [ %i.aex, %bb.dk ], [ %.156.lcssa.ph.i, %.loopexit.i ]
  %.2.i334 = phi i64 [ %.05375.i, %bb.dk ], [ %i.afi, %.loopexit.i ] ; 2 uses
  %i.alb = add i64 %.2.i334, 1
  %i.alc = add i64 %.2.i334, 4
  %i.ald = icmp ult i64 %i.alc, %1
  br i1 %i.ald, label %bb.dh, label %._crit_edge.i328, !llvm.loop !231

._crit_edge.i328:                                 ; preds = %bb.ed, %ZopfliCostModelSetFromCommands.exit
  %i.ale = load i32, ptr %i.yn, align 4, !tbaa !47
  %i.alf = and i32 %i.ale, 134217727
  %i.alg = icmp eq i32 %i.alf, 0
  br i1 %i.alg, label %.lr.ph.i.i332, label %.critedge.i.i329

.lr.ph.i.i332:                                    ; preds = %._crit_edge.i328, %bb.ee
  %i.alh = phi ptr [ %i.all, %bb.ee ], [ %i.ym, %._crit_edge.i328 ] ; 2 uses
  %.018.i.i = phi i64 [ %i.alk, %bb.ee ], [ %1, %._crit_edge.i328 ] ; 2 uses
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !46
  %i.alj = icmp eq i32 %i.ali, 1
  br i1 %i.alj, label %bb.ee, label %.critedge.i.i329

bb.ee:                                            ; preds = %.lr.ph.i.i332
  %i.alk = add i64 %.018.i.i, -1                  ; 3 uses
  %i.all = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.alk ; 3 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !47
  %i.alo = and i32 %i.aln, 134217727
  %i.alp = icmp eq i32 %i.alo, 0
  br i1 %i.alp, label %.lr.ph.i.i332, label %.critedge.i.i329, !llvm.loop !10

.critedge.i.i329:                                 ; preds = %bb.ee, %.lr.ph.i.i332, %._crit_edge.i328
  %.0.lcssa.i.i = phi i64 [ %1, %._crit_edge.i328 ], [ %i.alk, %bb.ee ], [ %.018.i.i, %.lr.ph.i.i332 ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.ym, %._crit_edge.i328 ], [ %i.all, %bb.ee ], [ %i.alh, %.lr.ph.i.i332 ]
  %i.alq = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 12
  store i32 -1, ptr %i.alq, align 4, !tbaa !23
  %.not23.i.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not23.i.i, label %ZopfliIterate.exit, label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.critedge.i.i329, %.lr.ph26.i.i
  %.125.i.i330 = phi i64 [ %i.alz, %.lr.ph26.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i329 ] ; 2 uses
  %.01724.i.i = phi i64 [ %i.amc, %.lr.ph26.i.i ], [ 0, %.critedge.i.i329 ]
  %i.alr = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.125.i.i330 ; 2 uses
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !46
  %i.alt = and i32 %i.als, 33554431
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !47
  %i.alw = and i32 %i.alv, 134217727
  %i.alx = add nuw nsw i32 %i.alw, %i.alt         ; 2 uses
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = sub i64 %.125.i.i330, %i.aly           ; 3 uses
  %i.ama = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.alz
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 12
  store i32 %i.alx, ptr %i.amb, align 4, !tbaa !23
  %i.amc = add i64 %.01724.i.i, 1                 ; 2 uses
  %.not.i.i331 = icmp eq i64 %i.alz, 0
  br i1 %.not.i.i331, label %ZopfliIterate.exit, label %.lr.ph26.i.i, !llvm.loop !11

ZopfliIterate.exit:                               ; preds = %.lr.ph26.i.i, %.critedge.i.i329
  %.017.lcssa.i.i = phi i64 [ 0, %.critedge.i.i329 ], [ %i.amc, %.lr.ph26.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.amd = load i64, ptr %11, align 8, !tbaa !48
  %i.ame = add i64 %i.amd, %.017.lcssa.i.i
  store i64 %i.ame, ptr %11, align 8, !tbaa !48
  call void @BrotliZopfliCreateCommands(i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.xn, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %6, ptr noundef %10, ptr noundef nonnull %12)
  br i1 %i.yt, label %bb.ct, label %bb.ef, !llvm.loop !232

bb.ef:                                            ; preds = %ZopfliIterate.exit
  %i.amf = load ptr, ptr %i.xp, align 8, !tbaa !62
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.amf) #13
  store ptr null, ptr %i.xp, align 8, !tbaa !62
  %i.amg = load ptr, ptr %i.xx, align 8, !tbaa !64
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.amg) #13
  store ptr null, ptr %i.xx, align 8, !tbaa !64
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.wt) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.xn) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef %.0202.lcssa) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.ws) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

declare hidden void @BrotliEstimateBitCostsForLiterals(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #8

declare hidden i32 @BrotliFindAllStaticDictionaryMatches(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @SetCost(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #9 {
bb.a:
  %.not51 = icmp ne i64 %1, 0                     ; 3 uses
  br i1 %.not51, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, 4294967292                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi60 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load = load <2 x i32>, ptr %i.a, align 4, !tbaa !22
  %wide.load61 = load <2 x i32>, ptr %i.b, align 4, !tbaa !22
  %i.c = zext <2 x i32> %wide.load to <2 x i64>
  %i.d = zext <2 x i32> %wide.load61 to <2 x i64>
  %i.e = add <2 x i64> %vec.phi, %i.c             ; 2 uses
  %i.f = add <2 x i64> %vec.phi60, %i.d           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.f, %i.e
  %i.h = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %.lr.ph.preheader, %middle.block
  %.043.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03542.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %.043 = phi i64 [ %i.m, %.lr.ph ], [ %.043.ph, %.lr.ph.preheader81 ] ; 2 uses
  %.03542 = phi i64 [ %i.l, %.lr.ph ], [ %.03542.ph, %.lr.ph.preheader81 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.043
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %i.k = zext i32 %i.j to i64
  %i.l = add i64 %.03542, %i.k                    ; 2 uses
  %i.m = add nuw nsw i64 %.043, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !265

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.h, %middle.block ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.n = icmp ult i64 %.lcssa, 256
  br i1 %i.n, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.035.lcssa59 = phi i64 [ %.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.035.lcssa59
  %i.p = load double, ptr %i.o, align 8, !tbaa !100
  br label %FastLog2.exit41

bb.b:                                             ; preds = %._crit_edge
  %i.q = uitofp i64 %.lcssa to double
  %i.r = tail call double @log2(double noundef %i.q) #13
  br label %FastLog2.exit41

FastLog2.exit41:                                  ; preds = %._crit_edge.thread, %bb.b
  %.035.lcssa58 = phi i64 [ %.035.lcssa59, %._crit_edge.thread ], [ %.lcssa, %bb.b ] ; 3 uses
  %.0.i40 = phi double [ %i.p, %._crit_edge.thread ], [ %i.r, %bb.b ]
  %i.s = fptrunc double %.0.i40 to float
  %.not = icmp eq i32 %2, 0
  %or.cond = and i1 %.not, %.not51
  br i1 %or.cond, label %.lr.ph46.preheader, label %.loopexit

.lr.ph46.preheader:                               ; preds = %FastLog2.exit41
  %min.iters.check63 = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check63, label %.lr.ph46.preheader78, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph46.preheader
  %n.vec65 = and i64 %1, 4294967292               ; 3 uses
  %i.t = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.035.lcssa58, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <2 x i64> [ %i.t, %vector.ph64 ], [ %i.aa, %vector.body66 ]
  %vec.phi69 = phi <2 x i64> [ zeroinitializer, %vector.ph64 ], [ %i.ab, %vector.body66 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index67 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load70 = load <2 x i32>, ptr %i.u, align 4, !tbaa !22
  %wide.load71 = load <2 x i32>, ptr %i.v, align 4, !tbaa !22
  %i.w = icmp eq <2 x i32> %wide.load70, zeroinitializer
  %i.x = icmp eq <2 x i32> %wide.load71, zeroinitializer
  %i.y = zext <2 x i1> %i.w to <2 x i64>
  %i.z = zext <2 x i1> %i.x to <2 x i64>
  %i.aa = add <2 x i64> %vec.phi68, %i.y          ; 2 uses
  %i.ab = add <2 x i64> %vec.phi69, %i.z          ; 2 uses
  %index.next72 = add nuw i64 %index67, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ac, label %middle.block73, label %vector.body66, !llvm.loop !266

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %1, %n.vec65
  br i1 %cmp.n75, label %.loopexit, label %.lr.ph46.preheader78

.lr.ph46.preheader78:                             ; preds = %.lr.ph46.preheader, %middle.block73
  %.145.ph = phi i64 [ 0, %.lr.ph46.preheader ], [ %n.vec65, %middle.block73 ]
  %.03244.ph = phi i64 [ %.035.lcssa58, %.lr.ph46.preheader ], [ %i.ad, %middle.block73 ]
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader78, %.lr.ph46
  %.145 = phi i64 [ %i.ai, %.lr.ph46 ], [ %.145.ph, %.lr.ph46.preheader78 ] ; 2 uses
  %.03244 = phi i64 [ %spec.select, %.lr.ph46 ], [ %.03244.ph, %.lr.ph46.preheader78 ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.145
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i64
  %spec.select = add i64 %.03244, %i.ah           ; 2 uses
  %i.ai = add nuw nsw i64 %.145, 1                ; 2 uses
  %exitcond53.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond53.not, label %.loopexit, label %.lr.ph46, !llvm.loop !267

.loopexit:                                        ; preds = %.lr.ph46, %middle.block73, %FastLog2.exit41
  %.234 = phi i64 [ %.035.lcssa58, %FastLog2.exit41 ], [ %i.ad, %middle.block73 ], [ %spec.select, %.lr.ph46 ] ; 3 uses
  %i.aj = icmp ult i64 %.234, 256
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.234
  %i.al = load double, ptr %i.ak, align 8, !tbaa !100
  br label %FastLog2.exit39

bb.d:                                             ; preds = %.loopexit
  %i.am = uitofp i64 %.234 to double
  %i.an = tail call double @log2(double noundef %i.am) #13
  br label %FastLog2.exit39

FastLog2.exit39:                                  ; preds = %bb.c, %bb.d
  %.0.i38 = phi double [ %i.al, %bb.c ], [ %i.an, %bb.d ]
  %i.ao = fptrunc double %.0.i38 to float
  %i.ap = fadd float %i.ao, 2.000000e+00
  br i1 %.not51, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %FastLog2.exit39, %bb.i
  %.248 = phi i64 [ %i.be, %bb.i ], [ 0, %FastLog2.exit39 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.248
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22 ; 4 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph49
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.248
  store float %i.ap, ptr %i.at, align 4, !tbaa !93
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph49
  %i.au = icmp ult i32 %i.ar, 256
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !100
  br label %FastLog2.exit

bb.h:                                             ; preds = %bb.f
  %i.ay = uitofp i32 %i.ar to double
  %i.az = tail call double @log2(double noundef %i.ay) #13
  br label %FastLog2.exit

FastLog2.exit:                                    ; preds = %bb.g, %bb.h
  %.0.i = phi double [ %i.ax, %bb.g ], [ %i.az, %bb.h ]
  %i.ba = fptrunc double %.0.i to float
  %i.bb = fsub float %i.s, %i.ba                  ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.248
  %i.bd = fcmp olt float %i.bb, 1.000000e+00
  %spec.store.select = select i1 %i.bd, float 1.000000e+00, float %i.bb
  store float %spec.store.select, ptr %i.bc, align 4, !tbaa !93
  br label %bb.i

bb.i:                                             ; preds = %FastLog2.exit, %bb.e
  %i.be = add nuw nsw i64 %.248, 1                ; 2 uses
  %exitcond54.not = icmp eq i64 %i.be, %1
  br i1 %exitcond54.not, label %._crit_edge50, label %.lr.ph49, !llvm.loop !12

._crit_edge50:                                    ; preds = %bb.i, %FastLog2.exit39
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f32(<4 x float>, i32 immarg) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = distinct !{!4, !24}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !24}
!11 = distinct !{!11, !24}
!12 = distinct !{!12, !24}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{!18, !18, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"long", !18, i64 0}
!26 = !{!"BrotliHasherParams", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!27 = !{!"BrotliDistanceParams", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !25, i64 16}
!28 = !{!"CompoundDictionary", !25, i64 0, !25, i64 8, !18, i64 16, !18, i64 144, !18, i64 272, !25, i64 400, !18, i64 408}
!29 = !{!"any pointer", !18, i64 0}
!30 = !{!"p1 _ZTS16BrotliDictionary", !29, i64 0}
!31 = !{!"p1 short", !29, i64 0}
!32 = !{!"p1 omnipotent char", !29, i64 0}
!33 = !{!"p1 _ZTS8DictWord", !29, i64 0}
!34 = !{!"p1 _ZTS14BrotliTrieNode", !29, i64 0}
!35 = !{!"BrotliTrieNode", !18, i64 0, !18, i64 1, !18, i64 2, !19, i64 4, !19, i64 8}
!36 = !{!"BrotliTrie", !34, i64 0, !25, i64 8, !25, i64 16, !35, i64 24}
!37 = !{!"p1 _ZTS27ContextualEncoderDictionary", !29, i64 0}
!38 = !{!"BrotliEncoderDictionary", !30, i64 0, !19, i64 8, !19, i64 12, !25, i64 16, !31, i64 24, !32, i64 32, !31, i64 40, !33, i64 48, !36, i64 56, !19, i64 96, !37, i64 104, !31, i64 112, !32, i64 120, !25, i64 128, !31, i64 136, !25, i64 144, !33, i64 152, !30, i64 160}
!39 = !{!"p1 _ZTS23BrotliEncoderDictionary", !29, i64 0}
!40 = !{!"ContextualEncoderDictionary", !19, i64 0, !18, i64 4, !18, i64 5, !18, i64 72, !25, i64 584, !38, i64 592, !39, i64 760}
!41 = !{!"SharedEncoderDictionary", !19, i64 0, !28, i64 8, !40, i64 544, !19, i64 1312}
!42 = !{!"BrotliEncoderParams", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !25, i64 16, !25, i64 24, !19, i64 32, !19, i64 36, !26, i64 40, !27, i64 56, !41, i64 80}
!43 = !{!42, !19, i64 8}
!44 = !{!42, !25, i64 16}
!45 = !{!"ZopfliNode", !19, i64 0, !19, i64 4, !19, i64 8, !18, i64 12}
!46 = !{!45, !19, i64 0}
!47 = !{!45, !19, i64 8}
!48 = !{!25, !25, i64 0}
!49 = !{!45, !19, i64 4}
!50 = !{!"short", !18, i64 0}
!51 = !{!"Command", !19, i64 0, !19, i64 4, !19, i64 8, !50, i64 12, !50, i64 14}
!52 = !{!51, !19, i64 0}
!53 = !{!51, !19, i64 4}
!54 = !{!50, !50, i64 0}
!55 = !{!42, !19, i64 4}
!56 = !{!28, !25, i64 8}
!57 = !{!28, !25, i64 0}
!58 = !{!"p1 float", !29, i64 0}
!59 = !{!"float", !18, i64 0}
!60 = !{!"ZopfliCostModel", !18, i64 0, !58, i64 2816, !19, i64 2824, !58, i64 2832, !59, i64 2840, !25, i64 2848, !18, i64 2856}
!61 = !{!60, !25, i64 2848}
!62 = !{!60, !58, i64 2832}
!63 = !{!27, !19, i64 12}
!64 = !{!60, !58, i64 2816}
!65 = !{!60, !19, i64 2824}
!66 = !{!"StartPosQueue", !18, i64 0, !25, i64 256}
!67 = !{!66, !25, i64 256}
!68 = !{!42, !19, i64 624}
!69 = !{!39, !39, i64 0}
!70 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!71 = !{!"BackwardMatch", !19, i64 0, !19, i64 4}
!72 = !{!71, !19, i64 0}
!73 = !{!71, !19, i64 4}
!74 = !{!"p1 int", !29, i64 0}
!75 = !{!"H10", !25, i64 0, !74, i64 8, !19, i64 16, !74, i64 24}
!76 = !{!75, !74, i64 8}
!77 = !{!75, !74, i64 24}
!78 = !{!75, !25, i64 0}
!79 = !{!75, !19, i64 16}
!80 = !{!42, !25, i64 72}
!81 = !{!"p1 _ZTS18PreparedDictionary", !29, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"PreparedDictionary", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20}
!84 = !{!83, !19, i64 8}
!85 = !{!83, !19, i64 12}
!86 = !{!83, !19, i64 16}
!87 = !{!83, !19, i64 20}
!88 = !{!83, !19, i64 4}
!89 = !{!83, !19, i64 0}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !{!"llvm.loop.unroll.runtime.disable"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !{!59, !59, i64 0}
!94 = !{!"PosData", !25, i64 0, !18, i64 8, !59, i64 24, !59, i64 28}
!95 = !{!94, !25, i64 0}
!96 = !{!94, !59, i64 28}
!97 = !{!94, !59, i64 24}
!98 = !{i64 0, i64 8, !48, i64 8, i64 16, !23, i64 24, i64 4, !93, i64 28, i64 4, !93}
!99 = !{!"double", !18, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!60, !59, i64 2840}
!102 = distinct !{!102, !24}
!103 = !{!42, !25, i64 96}
!104 = !{!27, !19, i64 4}
!105 = !{!27, !19, i64 0}
!106 = distinct !{!106, i1 true, !"FindAllMatchesH10"}
!107 = distinct !{!107, !106, !"FindAllMatchesH10: argument 1"}
!108 = distinct !{!108, !106, !"FindAllMatchesH10: argument 0"}
!109 = distinct !{!109, i1 true, !"StoreAndFindMatchesH10"}
!110 = distinct !{!110, !109, !"StoreAndFindMatchesH10: argument 0"}
!111 = distinct !{!111, !109, !"StoreAndFindMatchesH10: argument 1"}
!112 = distinct !{!112, !109, !"StoreAndFindMatchesH10: argument 3"}
!113 = distinct !{!113, !109, !"StoreAndFindMatchesH10: argument 2"}
!114 = distinct !{!114, i1 true, !"LeftChildIndexH10"}
!115 = distinct !{!115, !114, !"LeftChildIndexH10: argument 0"}
!116 = distinct !{!116, i1 true, !"LookupAllCompoundDictionaryMatches"}
!117 = distinct !{!117, !116, !"LookupAllCompoundDictionaryMatches: argument 0"}
!118 = distinct !{!118, i1 true, !"FindAllCompoundDictionaryMatches"}
!119 = distinct !{!119, !118, !"FindAllCompoundDictionaryMatches: argument 0"}
!120 = distinct !{!120, !24, !90, !91}
!121 = distinct !{!121, !92}
!122 = distinct !{!122, !24, !90, !91}
!123 = distinct !{!123, !92}
!124 = distinct !{!124, !24, !90}
!125 = distinct !{!125, !24, !90}
!126 = distinct !{!126, i1 true, !"StoreH10"}
!127 = distinct !{!127, !126, !"StoreH10: argument 0"}
!128 = distinct !{!128, i1 true, !"StoreAndFindMatchesH10"}
!129 = distinct !{!129, !128, !"StoreAndFindMatchesH10: argument 0"}
!130 = distinct !{!130, !126, !"StoreH10: argument 1"}
!131 = distinct !{!131, !128, !"StoreAndFindMatchesH10: argument 1"}
!132 = distinct !{!132, !128, !"StoreAndFindMatchesH10: argument 3"}
!133 = distinct !{!133, !128, !"StoreAndFindMatchesH10: argument 2"}
!134 = distinct !{!134, i1 true, !"StoreH10"}
!135 = distinct !{!135, !134, !"StoreH10: argument 0"}
!136 = distinct !{!136, i1 true, !"StoreAndFindMatchesH10"}
!137 = distinct !{!137, !136, !"StoreAndFindMatchesH10: argument 0"}
!138 = distinct !{!138, !134, !"StoreH10: argument 1"}
!139 = distinct !{!139, !136, !"StoreAndFindMatchesH10: argument 1"}
!140 = distinct !{!140, !136, !"StoreAndFindMatchesH10: argument 3"}
!141 = distinct !{!141, !136, !"StoreAndFindMatchesH10: argument 2"}
!142 = distinct !{!142, !24}
!143 = distinct !{!143, !24}
!144 = !{!107}
!145 = !{!108, !107}
!146 = !{!108}
!147 = !{!110}
!148 = !{!111}
!149 = !{!112}
!150 = !{!110, !113, !112}
!151 = !{!115}
!152 = !{!113, !112}
!153 = !{!117}
!154 = !{!119}
!155 = !{!127}
!156 = !{!129, !127}
!157 = !{!130}
!158 = !{!129}
!159 = !{!131}
!160 = !{!129, !133, !132, !127}
!161 = !{!133, !132, !127}
!162 = !{!133, !132}
!163 = !{!131, !130}
!164 = !{!135}
!165 = !{!137, !135}
!166 = !{!138}
!167 = !{!137}
!168 = !{!139}
!169 = !{!137, !141, !140, !135}
!170 = !{!141, !140, !135}
!171 = !{!141, !140}
!172 = !{!139, !138}
!173 = distinct !{!173, !24}
!174 = distinct !{!174, !24}
!175 = distinct !{!175, !24}
!176 = distinct !{!176, !24}
!177 = distinct !{!177, !24}
!178 = distinct !{!178, !24}
!179 = distinct !{!179, !24}
!180 = distinct !{!180, !24}
!181 = distinct !{!181, !24}
!182 = distinct !{!182, !24}
!183 = !{!32, !32, i64 0}
!184 = !{!42, !19, i64 60}
!185 = !{!42, !19, i64 56}
!186 = distinct !{!186, !24}
!187 = distinct !{!187, i1 true, !"FindAllMatchesH10"}
!188 = distinct !{!188, !187, !"FindAllMatchesH10: argument 1"}
!189 = distinct !{!189, !187, !"FindAllMatchesH10: argument 0"}
!190 = distinct !{!190, i1 true, !"StoreAndFindMatchesH10"}
!191 = distinct !{!191, !190, !"StoreAndFindMatchesH10: argument 0"}
!192 = distinct !{!192, !190, !"StoreAndFindMatchesH10: argument 1"}
!193 = distinct !{!193, !190, !"StoreAndFindMatchesH10: argument 3"}
!194 = distinct !{!194, !190, !"StoreAndFindMatchesH10: argument 2"}
!195 = distinct !{!195, i1 true, !"LeftChildIndexH10"}
!196 = distinct !{!196, !195, !"LeftChildIndexH10: argument 0"}
!197 = distinct !{!197, i1 true, !"LookupAllCompoundDictionaryMatches"}
!198 = distinct !{!198, !197, !"LookupAllCompoundDictionaryMatches: argument 0"}
!199 = distinct !{!199, i1 true, !"FindAllCompoundDictionaryMatches"}
!200 = distinct !{!200, !199, !"FindAllCompoundDictionaryMatches: argument 0"}
!201 = distinct !{!201, !24, !90, !91}
!202 = distinct !{!202, !92}
!203 = distinct !{!203, !24, !90, !91}
!204 = distinct !{!204, !92}
!205 = distinct !{!205, !24, !90}
!206 = distinct !{!206, !24, !90}
!207 = distinct !{!207, i1 true, !"StoreH10"}
!208 = distinct !{!208, !207, !"StoreH10: argument 0"}
!209 = distinct !{!209, i1 true, !"StoreAndFindMatchesH10"}
!210 = distinct !{!210, !209, !"StoreAndFindMatchesH10: argument 0"}
!211 = distinct !{!211, !207, !"StoreH10: argument 1"}
!212 = distinct !{!212, !209, !"StoreAndFindMatchesH10: argument 1"}
!213 = distinct !{!213, !209, !"StoreAndFindMatchesH10: argument 3"}
!214 = distinct !{!214, !209, !"StoreAndFindMatchesH10: argument 2"}
!215 = distinct !{!215, i1 true, !"StoreH10"}
!216 = distinct !{!216, !215, !"StoreH10: argument 0"}
!217 = distinct !{!217, i1 true, !"StoreAndFindMatchesH10"}
!218 = distinct !{!218, !217, !"StoreAndFindMatchesH10: argument 0"}
!219 = distinct !{!219, !215, !"StoreH10: argument 1"}
!220 = distinct !{!220, !217, !"StoreAndFindMatchesH10: argument 1"}
!221 = distinct !{!221, !217, !"StoreAndFindMatchesH10: argument 3"}
!222 = distinct !{!222, !217, !"StoreAndFindMatchesH10: argument 2"}
!223 = distinct !{!223, !24}
!224 = distinct !{!224, !24}
!225 = distinct !{!225, !24}
!226 = distinct !{!226, !24, !90, !91}
!227 = distinct !{!227, !24, !90, !91}
!228 = distinct !{!228, !24, !91, !90}
!229 = distinct !{!229, !24}
!230 = distinct !{!230, !24}
!231 = distinct !{!231, !24}
!232 = distinct !{!232, !24}
!233 = !{!188}
!234 = !{!189, !188}
!235 = !{!189}
!236 = !{!191}
!237 = !{!192}
!238 = !{!193}
!239 = !{!191, !194, !193}
!240 = !{!196}
!241 = !{!194, !193}
!242 = !{!198}
!243 = !{!200}
!244 = !{!208}
!245 = !{!210, !208}
!246 = !{!211}
!247 = !{!210}
!248 = !{!212}
!249 = !{!210, !214, !213, !208}
!250 = !{!214, !213, !208}
!251 = !{!214, !213}
!252 = !{!212, !211}
!253 = !{!216}
!254 = !{!218, !216}
!255 = !{!219}
!256 = !{!218}
!257 = !{!220}
!258 = !{!218, !222, !221, !216}
!259 = !{!222, !221, !216}
!260 = !{!222, !221}
!261 = !{!220, !219}
!262 = !{!51, !50, i64 14}
!263 = !{!51, !50, i64 12}
!264 = distinct !{!264, !24, !90, !91}
!265 = distinct !{!265, !24, !91, !90}
!266 = distinct !{!266, !24, !90, !91}
!267 = distinct !{!267, !24, !91, !90}
end_hunk_1
