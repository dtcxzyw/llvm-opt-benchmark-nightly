Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/brotli_bit_stream?download=true
inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@EncodeContextMap:bb.a
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13, !alias.scope !514, !noalias !515
  %i.ak = zext i8 %i.aj to i64
  %i.al = and i64 %i.af, 7
  %i.am = shl i64 %i.ag, %i.al
  %i.an = or i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.ai, align 1, !noalias !515
  %i.ao = add i64 %i.af, %i.o
  store i64 %i.ao, ptr %6, align 8, !tbaa !12, !noalias !18
  %i.ap = shl i64 %3, 2                           ; 2 uses
  %i.aq = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ap) #11 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !516
  %i.ar = load i32, ptr %2, align 4, !tbaa !14, !alias.scope !516 ; 3 uses
  %i.as = icmp ugt i64 %3, 1
  br i1 %i.as, label %.lr.ph.i.preheader, label %iter.check

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.at = add i64 %3, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %3, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader150, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.at, -8                      ; 3 uses
  %i.au = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi124 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.az, %vector.body ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !14, !alias.scope !516
  %wide.load125 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !14, !alias.scope !516
  %i.ay = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.az = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load125, <4 x i32> %vec.phi124) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ay, <4 x i32> %i.az)
  %i.bb = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %iter.check, label %.lr.ph.i.preheader150

.lr.ph.i.preheader150:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.037.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  %.02536.i.ph = phi i32 [ %i.ar, %.lr.ph.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i

iter.check:                                       ; preds = %.lr.ph.i, %middle.block, %bb.b
  %.025.lcssa.i = phi i32 [ %i.ar, %bb.b ], [ %i.bb, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 4 uses
  %i.bc = zext i32 %.025.lcssa.i to i64           ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 5 uses
  %min.iters.check127 = icmp ult i32 %.025.lcssa.i, 3
  br i1 %min.iters.check127, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check128 = icmp ult i32 %.025.lcssa.i, 31
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph129

vector.ph129:                                     ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bd, 28
  %n.vec130 = and i64 %i.bd, 8589934560           ; 4 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next133, %vector.body131 ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph129 ], [ %vec.ind.next, %vector.body131 ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %index132 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %vec.ind, ptr %i.bf, align 16, !tbaa !13, !noalias !516
  store <16 x i8> %step.add, ptr %i.bg, align 16, !tbaa !13, !noalias !516
  %index.next133 = add nuw i64 %index132, 32      ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.bh = icmp eq i64 %index.next133, %n.vec130
  br i1 %i.bh, label %middle.block134, label %vector.body131, !llvm.loop !476

middle.block134:                                  ; preds = %vector.body131
  %cmp.n135 = icmp eq i64 %i.bd, %n.vec130
  br i1 %cmp.n135, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block134
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !517

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec130, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec136 = and i64 %i.bd, 8589934588           ; 3 uses
  %i.bi = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert137 = insertelement <4 x i8> poison, i8 %i.bi, i64 0
  %broadcast.splat138 = shufflevector <4 x i8> %broadcast.splatinsert137, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat138, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind140 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next142, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %index139
  store <4 x i8> %vec.ind140, ptr %i.bj, align 4, !tbaa !13, !noalias !516
  %index.next141 = add nuw i64 %index139, 4       ; 2 uses
  %vec.ind.next142 = add <4 x i8> %vec.ind140, splat (i8 4)
  %i.bk = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !477

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %i.bd, %n.vec136
  br i1 %cmp.n143, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.138.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec130, %vec.epilog.iter.check ], [ %n.vec136, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader150, %.lr.ph.i
  %.037.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %.037.i.ph, %.lr.ph.i.preheader150 ] ; 2 uses
  %.02536.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.02536.i.ph, %.lr.ph.i.preheader150 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.037.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14, !alias.scope !516
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %.02536.i) ; 2 uses
  %i.bn = add nuw i64 %.037.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %3
  br i1 %exitcond.not.i, label %iter.check, label %.lr.ph.i, !llvm.loop !478

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.138.i = phi i64 [ %i.bq, %vec.epilog.scalar.ph ], [ %.138.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.bo = trunc i64 %.138.i to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.138.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !13, !noalias !516
  %i.bq = add nuw nsw i64 %.138.i, 1
  %exitcond45.not.i = icmp eq i64 %.138.i, %i.bc
  br i1 %exitcond45.not.i, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !479

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block134
  %i.br = add i32 %.025.lcssa.i, 1                ; 3 uses
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.br, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %.not.i.i, label %.split.us.i, label %.lr.ph.i.preheader.i

.split.us.i:                                      ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !14, !noalias !516
  br label %MoveToFrontTransform.exit

.lr.ph.i.preheader.i:                             ; preds = %.loopexit, %MoveToFront.exit.i
  %.239.i = phi i64 [ %i.ch, %MoveToFront.exit.i ], [ 0, %.loopexit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.239.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14, !alias.scope !516
  %i.bw = trunc i32 %i.bv to i8                   ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.preheader.i
  %.09.i.i = phi i64 [ %i.ca, %bb.c ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.09.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13, !noalias !516
  %i.bz = icmp eq i8 %i.by, %i.bw
  br i1 %i.bz, label %IndexOf.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ca = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %i.bs
  br i1 %exitcond.not.i.i, label %IndexOf.exit.thread31.i, label %.lr.ph.i.i, !llvm.loop !480

IndexOf.exit.thread31.i:                          ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.239.i
  store i32 %i.br, ptr %i.cb, align 4, !tbaa !14, !noalias !516
  %i.cc = load i8, ptr %i.bt, align 1, !tbaa !13, !noalias !516
  br label %.lr.ph.preheader.i.i

IndexOf.exit.i:                                   ; preds = %.lr.ph.i.i
  %i.cd = trunc i64 %.09.i.i to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.239.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !14, !noalias !516
  %.not10.i.i = icmp eq i64 %.09.i.i, 0
  br i1 %.not10.i.i, label %MoveToFront.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %IndexOf.exit.i, %IndexOf.exit.thread31.i
  %i.cf = phi i8 [ %i.cc, %IndexOf.exit.thread31.i ], [ %i.bw, %IndexOf.exit.i ]
  %.0.lcssa.i34.i = phi i64 [ %i.bs, %IndexOf.exit.thread31.i ], [ %.09.i.i, %IndexOf.exit.i ]
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i, ptr nonnull align 16 %i.a, i64 %.0.lcssa.i34.i, i1 false), !tbaa !13, !noalias !516
  br label %MoveToFront.exit.i

MoveToFront.exit.i:                               ; preds = %.lr.ph.preheader.i.i, %IndexOf.exit.i
  %i.cg = phi i8 [ %i.cf, %.lr.ph.preheader.i.i ], [ %i.bw, %IndexOf.exit.i ]
  store i8 %i.cg, ptr %i.a, align 16, !tbaa !13, !noalias !516
  %i.ch = add nuw i64 %.239.i, 1                  ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.ch, %3
  br i1 %exitcond46.not.i, label %MoveToFrontTransform.exit, label %.lr.ph.i.preheader.i, !llvm.loop !481

MoveToFrontTransform.exit:                        ; preds = %MoveToFront.exit.i, %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !516
  %i.ci = trunc i64 %3 to i32                     ; 2 uses
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge2.i, %MoveToFrontTransform.exit
  %.088.i = phi i32 [ 0, %MoveToFrontTransform.exit ], [ %.068.lcssa.i, %.critedge2.i ] ; 3 uses
  %.06487.i = phi i64 [ 0, %MoveToFrontTransform.exit ], [ %.2.lcssa.i, %.critedge2.i ] ; 2 uses
  %i.cj = add nuw i64 %.06487.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 1, 0) %3, i64 %i.cj)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader78.i
  %.180.i = phi i64 [ %.06487.i, %.preheader78.i ], [ %i.cm, %bb.e ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.180.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %.not75.i = icmp eq i32 %i.cl, 0
  br i1 %.not75.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = add i64 %.180.i, 1                      ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %i.cm, %umax.i
  br i1 %exitcond.not.i61, label %.critedge2.thread.i, label %bb.d, !llvm.loop !486

.critedge.i:                                      ; preds = %bb.d
  %i.cn = icmp ult i64 %.180.i, %3
  br i1 %i.cn, label %.lr.ph.preheader.i, label %.critedge2.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %8 = trunc i64 %.180.i to i32
  %9 = sub i32 %i.ci, %8
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.f, %.lr.ph.preheader.i
  %.282.i = phi i64 [ %i.cs, %bb.f ], [ %.180.i, %.lr.ph.preheader.i ] ; 3 uses
  %.06881.i = phi i32 [ %i.cr, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.282.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.f, label %.critedge2.loopexit.i

bb.f:                                             ; preds = %.lr.ph.i64
  %i.cr = add i32 %.06881.i, 1
  %i.cs = add i64 %.282.i, 1                      ; 2 uses
  %exitcond101.not.i = icmp eq i64 %i.cs, %3
  br i1 %exitcond101.not.i, label %.critedge2.loopexit.i, label %.lr.ph.i64, !llvm.loop !487

.critedge2.loopexit.i:                            ; preds = %bb.f, %.lr.ph.i64
  %.068.lcssa.ph.i = phi i32 [ %.06881.i, %.lr.ph.i64 ], [ %9, %bb.f ]
  %.2.lcssa.ph.i = phi i64 [ %.282.i, %.lr.ph.i64 ], [ %3, %bb.f ]
  %i.ct = tail call i32 @llvm.umax.i32(i32 %.068.lcssa.ph.i, i32 %.088.i)
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.critedge.i
  %.068.lcssa.i = phi i32 [ %.088.i, %.critedge.i ], [ %i.ct, %.critedge2.loopexit.i ] ; 2 uses
  %.2.lcssa.i = phi i64 [ %.180.i, %.critedge.i ], [ %.2.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %10 = icmp ult i64 %.2.lcssa.i, %3
  br i1 %10, label %.preheader78.i, label %.critedge2.thread.i, !llvm.loop !488

.critedge2.thread.i:                              ; preds = %.critedge2.i, %bb.e
  %.068.lcssa111.i = phi i32 [ %.088.i, %bb.e ], [ %.068.lcssa.i, %.critedge2.i ] ; 2 uses
  %.not.i = icmp eq i32 %.068.lcssa111.i, 0
  %i.cu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.068.lcssa111.i, i1 true)
  %i.cv = xor i32 %i.cu, 31
  %i.cw = tail call i32 @llvm.umin.i32(i32 range(i32 0, 32) %i.cv, i32 6)
  %i.cx = select i1 %.not.i, i32 0, i32 %i.cw
  %i.cy = freeze i32 %i.cx                        ; 8 uses
  %i.cz = shl nuw nsw i32 2, %i.cy                ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.cy
  %i.da = xor i32 %notmask.i, -1
  %i.db = shl nuw nsw i32 %i.da, 9
  %i.dc = add nuw nsw i32 %i.db, %i.cy
  %invariant.op = sub i32 1, %i.cz
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.critedge2.thread.i
  %.071 = phi i64 [ 0, %.critedge2.thread.i ], [ %.172, %.loopexit.i ]
  %i.dd = phi i64 [ 0, %.critedge2.thread.i ], [ %i.ef, %.loopexit.i ] ; 5 uses
  %.399.i = phi i64 [ 0, %.critedge2.thread.i ], [ %.4.i, %.loopexit.i ] ; 5 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.399.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !14, !alias.scope !518, !noalias !519 ; 2 uses
  %.not73.i = icmp eq i32 %i.df, 0
  br i1 %.not73.i, label %.preheader.i62, label %bb.h

.preheader.i62:                                   ; preds = %bb.g
  %.06589.i = add nuw i64 %.399.i, 1              ; 3 uses
  %i.dg = icmp ult i64 %.06589.i, %3
  br i1 %i.dg, label %.lr.ph92.preheader.i, label %.lr.ph98.preheader.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i62
  %i.dh = trunc i64 %.399.i to i32
  %i.di = sub i32 %i.ci, %i.dh
  br label %.lr.ph92.i

bb.h:                                             ; preds = %bb.g
  %i.dj = add i32 %i.df, %i.cy
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dd
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %i.dl = add nuw i64 %.399.i, 1
  br label %.loopexit.sink.split.i

.lr.ph92.i:                                       ; preds = %bb.i, %.lr.ph92.preheader.i
  %.06591.i = phi i64 [ %.065.i, %bb.i ], [ %.06589.i, %.lr.ph92.preheader.i ] ; 2 uses
  %.06690.i = phi i32 [ %i.dp, %bb.i ], [ 1, %.lr.ph92.preheader.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.06591.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.i, label %.critedge4.i

bb.i:                                             ; preds = %.lr.ph92.i
  %i.dp = add i32 %.06690.i, 1
  %.065.i = add i64 %.06591.i, 1                  ; 2 uses
  %exitcond102.not.i = icmp eq i64 %.065.i, %3
  br i1 %exitcond102.not.i, label %.critedge4.i, label %.lr.ph92.i, !llvm.loop !489

.critedge4.i:                                     ; preds = %bb.i, %.lr.ph92.i
  %.066.lcssa.i = phi i32 [ %i.di, %bb.i ], [ %.06690.i, %.lr.ph92.i ] ; 3 uses
  %i.dq = zext i32 %.066.lcssa.i to i64
  %i.dr = add i64 %.399.i, %i.dq                  ; 2 uses
  %.not7496.i = icmp eq i32 %.066.lcssa.i, 0
  br i1 %.not7496.i, label %.loopexit.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %.preheader.i62, %.critedge4.i
  %i.ds = phi i64 [ %i.dr, %.critedge4.i ], [ %.06589.i, %.preheader.i62 ]
  %.066.lcssa114.i = phi i32 [ %.066.lcssa.i, %.critedge4.i ], [ 1, %.preheader.i62 ] ; 3 uses
  %i.dt = icmp ult i32 %.066.lcssa114.i, %i.cz
  br i1 %i.dt, label %.lr.ph98.i._crit_edge, label %.lr.ph98.i

.lr.ph98.i._crit_edge:                            ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i
  %.lcssa117 = phi i64 [ %i.dd, %.lr.ph98.preheader.i ], [ %i.ec, %.lr.ph98.i ] ; 2 uses
  %.16797.i.lcssa = phi i32 [ %.066.lcssa114.i, %.lr.ph98.preheader.i ], [ %.reass.i.reass.reass.reass, %.lr.ph98.i ] ; 2 uses
  %i.du = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.16797.i.lcssa, i1 true) ; 2 uses
  %.neg.i63 = ashr exact i32 -2147483648, %i.du
  %i.dv = add nsw i32 %.neg.i63, %.16797.i.lcssa
  %i.dw = shl i32 %i.dv, 9
  %i.dx = or disjoint i32 %i.dw, %i.du
  %i.dy = xor i32 %i.dx, 31
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.lcssa117
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  br label %.loopexit.sink.split.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.preheader.i, %.lr.ph98.i
  %.16797.i121 = phi i32 [ %.reass.i.reass.reass.reass, %.lr.ph98.i ], [ %.066.lcssa114.i, %.lr.ph98.preheader.i ]
  %i.ea = phi i64 [ %i.ec, %.lr.ph98.i ], [ %i.dd, %.lr.ph98.preheader.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ea
  store i32 %i.dc, ptr %i.eb, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %.reass.i.reass.reass.reass = add i32 %.16797.i121, %invariant.op ; 3 uses
  %i.ec = add i64 %i.ea, 1                        ; 2 uses
  %i.ed = icmp ult i32 %.reass.i.reass.reass.reass, %i.cz
  br i1 %i.ed, label %.lr.ph98.i._crit_edge, label %.lr.ph98.i

.loopexit.sink.split.i:                           ; preds = %.lr.ph98.i._crit_edge, %bb.h
  %.lcssa.sink.i = phi i64 [ %.lcssa117, %.lr.ph98.i._crit_edge ], [ %i.dd, %bb.h ]
  %.4.ph.i = phi i64 [ %i.ds, %.lr.ph98.i._crit_edge ], [ %i.dl, %bb.h ]
  %i.ee = add i64 %.lcssa.sink.i, 1               ; 2 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %.critedge4.i
  %.172 = phi i64 [ %.071, %.critedge4.i ], [ %i.ee, %.loopexit.sink.split.i ] ; 7 uses
  %i.ef = phi i64 [ %i.dd, %.critedge4.i ], [ %i.ee, %.loopexit.sink.split.i ]
  %.4.i = phi i64 [ %i.dr, %.critedge4.i ], [ %.4.ph.i, %.loopexit.sink.split.i ] ; 2 uses
  %i.eg = icmp ult i64 %.4.i, %3
  br i1 %i.eg, label %bb.g, label %RunLengthCodeZeros.exit, !llvm.loop !490

RunLengthCodeZeros.exit:                          ; preds = %.loopexit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1088) %1, i8 0, i64 1088, i1 false)
  %.not86 = icmp eq i64 %.172, 0                  ; 2 uses
  br i1 %.not86, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %RunLengthCodeZeros.exit
  %xtraiter = and i64 %.172, 1
  %i.eh = icmp eq i64 %.172, 1
  br i1 %i.eh, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.172, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.081 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ex, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !14
  %i.ek = and i32 %i.ej, 511
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !14
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !14
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !14
  %i.es = and i32 %i.er, 511
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !14
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !14
  %i.ex = add nuw i64 %.081, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !491

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.081.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ex, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod154 = trunc i64 %.172 to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081.epil.init
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !14
  %i.fa = and i32 %i.ez, 511
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !14
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %RunLengthCodeZeros.exit
  %.not = icmp ne i32 %i.cy, 0                    ; 2 uses
  %i.ff = zext i1 %.not to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.fg = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !520, !noalias !521 ; 4 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !13, !alias.scope !521, !noalias !520
  %i.fk = zext i8 %i.fj to i64
  %i.fl = and i64 %i.fg, 7
  %i.fm = shl nuw nsw i64 %i.ff, %i.fl
  %i.fn = or i64 %i.fm, %i.fk
  store i64 %i.fn, ptr %i.fi, align 1, !noalias !520
  %i.fo = add i64 %i.fg, 1                        ; 3 uses
  store i64 %i.fo, ptr %6, align 8, !tbaa !12, !alias.scope !520, !noalias !521
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.fp = add nsw i32 %i.cy, -1
  %i.fq = zext i32 %i.fp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.fr = lshr i64 %i.fo, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 %i.fr ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !13, !alias.scope !523, !noalias !522
  %i.fu = zext i8 %i.ft to i64
  %i.fv = and i64 %i.fo, 7
  %i.fw = shl nuw nsw i64 %i.fq, %i.fv
  %i.fx = or i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %i.fs, align 1, !noalias !522
  %i.fy = add i64 %i.fg, 5
  store i64 %i.fy, ptr %6, align 8, !tbaa !12, !alias.scope !522, !noalias !523
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.fz = zext nneg i32 %i.cy to i64
  %i.ga = add i64 %4, %i.fz                       ; 2 uses
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef nonnull %1, i64 noundef %i.ga, i64 noundef %i.ga, ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.pre98 = load i64, ptr %6, align 8, !tbaa !12, !noalias !18 ; 2 uses
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

end_hunk_0
