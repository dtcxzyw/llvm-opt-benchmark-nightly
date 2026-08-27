Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/brotli_bit_stream?download=true
inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL16EncodeContextMapPN13duckdb_brotli13MemoryManagerEP21EncodeContextMapArenaPKjmmPNS_11HuffmanTreeEPmPh:bb.a
  %wide.load125 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !3, !alias.scope !469
  %i.ay = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.az = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load125, <4 x i32> %vec.phi124) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !472

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
  store <16 x i8> %vec.ind, ptr %i.bf, align 16, !tbaa !9, !noalias !469
  store <16 x i8> %step.add, ptr %i.bg, align 16, !tbaa !9, !noalias !469
  %index.next133 = add nuw i64 %index132, 32      ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.bh = icmp eq i64 %index.next133, %n.vec130
  br i1 %i.bh, label %middle.block134, label %vector.body131, !llvm.loop !473

middle.block134:                                  ; preds = %vector.body131
  %cmp.n135 = icmp eq i64 %i.bd, %n.vec130
  br i1 %cmp.n135, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block134
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !474

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
  store <4 x i8> %vec.ind140, ptr %i.bj, align 4, !tbaa !9, !noalias !469
  %index.next141 = add nuw i64 %index139, 4       ; 2 uses
  %vec.ind.next142 = add <4 x i8> %vec.ind140, splat (i8 4)
  %i.bk = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !475

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
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3, !alias.scope !469
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.bm, i32 %.02536.i) ; 2 uses
  %i.bn = add nuw i64 %.037.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %3
  br i1 %exitcond.not.i, label %iter.check, label %.lr.ph.i, !llvm.loop !476

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.138.i = phi i64 [ %i.bq, %vec.epilog.scalar.ph ], [ %.138.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.bo = trunc i64 %.138.i to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.138.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !9, !noalias !469
  %i.bq = add nuw nsw i64 %.138.i, 1
  %exitcond45.not.i = icmp eq i64 %.138.i, %i.bc
  br i1 %exitcond45.not.i, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !477

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block134
  %i.br = add i32 %.025.lcssa.i, 1                ; 3 uses
  %i.bs = zext i32 %i.br to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.br, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %.not.i.i, label %.split.us.i, label %.lr.ph.i.preheader.i

.split.us.i:                                      ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aq, i8 0, i64 %i.ap, i1 false), !tbaa !3, !noalias !469
  br label %_ZL20MoveToFrontTransformPKjmPj.exit

.lr.ph.i.preheader.i:                             ; preds = %.loopexit, %_ZL11MoveToFrontPhm.exit.i
  %.239.i = phi i64 [ %i.ch, %_ZL11MoveToFrontPhm.exit.i ], [ 0, %.loopexit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.239.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3, !alias.scope !469
  %i.bw = trunc i32 %i.bv to i8                   ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.preheader.i
  %.09.i.i = phi i64 [ %i.ca, %bb.c ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.09.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9, !noalias !469
  %i.bz = icmp eq i8 %i.by, %i.bw
  br i1 %i.bz, label %_ZL7IndexOfPKhmh.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ca = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %i.bs
  br i1 %exitcond.not.i.i, label %_ZL7IndexOfPKhmh.exit.thread31.i, label %.lr.ph.i.i, !llvm.loop !478

_ZL7IndexOfPKhmh.exit.thread31.i:                 ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.239.i
  store i32 %i.br, ptr %i.cb, align 4, !tbaa !3, !noalias !469
  %i.cc = load i8, ptr %i.bt, align 1, !tbaa !9, !noalias !469
  br label %.lr.ph.preheader.i.i

_ZL7IndexOfPKhmh.exit.i:                          ; preds = %.lr.ph.i.i
  %i.cd = trunc i64 %.09.i.i to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.239.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !3, !noalias !469
  %.not10.i.i = icmp eq i64 %.09.i.i, 0
  br i1 %.not10.i.i, label %_ZL11MoveToFrontPhm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZL7IndexOfPKhmh.exit.i, %_ZL7IndexOfPKhmh.exit.thread31.i
  %i.cf = phi i8 [ %i.cc, %_ZL7IndexOfPKhmh.exit.thread31.i ], [ %i.bw, %_ZL7IndexOfPKhmh.exit.i ]
  %.0.lcssa.i34.i = phi i64 [ %i.bs, %_ZL7IndexOfPKhmh.exit.thread31.i ], [ %.09.i.i, %_ZL7IndexOfPKhmh.exit.i ]
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i, ptr nonnull align 16 %i.a, i64 %.0.lcssa.i34.i, i1 false), !tbaa !9, !noalias !469
  br label %_ZL11MoveToFrontPhm.exit.i

_ZL11MoveToFrontPhm.exit.i:                       ; preds = %.lr.ph.preheader.i.i, %_ZL7IndexOfPKhmh.exit.i
  %i.cg = phi i8 [ %i.cf, %.lr.ph.preheader.i.i ], [ %i.bw, %_ZL7IndexOfPKhmh.exit.i ]
  store i8 %i.cg, ptr %i.a, align 16, !tbaa !9, !noalias !469
  %i.ch = add nuw i64 %.239.i, 1                  ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.ch, %3
  br i1 %exitcond46.not.i, label %_ZL20MoveToFrontTransformPKjmPj.exit, label %.lr.ph.i.preheader.i, !llvm.loop !479

_ZL20MoveToFrontTransformPKjmPj.exit:             ; preds = %_ZL11MoveToFrontPhm.exit.i, %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !469
  %i.ci = trunc i64 %3 to i32                     ; 2 uses
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge2.i, %_ZL20MoveToFrontTransformPKjmPj.exit
  %.088.i = phi i32 [ 0, %_ZL20MoveToFrontTransformPKjmPj.exit ], [ %.068.lcssa.i, %.critedge2.i ] ; 3 uses
  %.06487.i = phi i64 [ 0, %_ZL20MoveToFrontTransformPKjmPj.exit ], [ %.2.lcssa.i, %.critedge2.i ] ; 2 uses
  %i.cj = add nuw i64 %.06487.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 1, 0) %3, i64 %i.cj)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader78.i
  %.180.i = phi i64 [ %.06487.i, %.preheader78.i ], [ %i.cm, %bb.e ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.180.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !alias.scope !480, !noalias !483
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
  %i.co = trunc i64 %.180.i to i32
  %i.cp = sub i32 %i.ci, %i.co
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.f, %.lr.ph.preheader.i
  %.282.i = phi i64 [ %i.cu, %bb.f ], [ %.180.i, %.lr.ph.preheader.i ] ; 3 uses
  %.06881.i = phi i32 [ %i.ct, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.282.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3, !alias.scope !480, !noalias !483
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.f, label %.critedge2.loopexit.i

bb.f:                                             ; preds = %.lr.ph.i64
  %i.ct = add i32 %.06881.i, 1
  %i.cu = add i64 %.282.i, 1                      ; 2 uses
  %exitcond101.not.i = icmp eq i64 %i.cu, %3
  br i1 %exitcond101.not.i, label %.critedge2.loopexit.i, label %.lr.ph.i64, !llvm.loop !487

.critedge2.loopexit.i:                            ; preds = %bb.f, %.lr.ph.i64
  %.068.lcssa.ph.i = phi i32 [ %.06881.i, %.lr.ph.i64 ], [ %i.cp, %bb.f ]
  %.2.lcssa.ph.i = phi i64 [ %.282.i, %.lr.ph.i64 ], [ %3, %bb.f ]
  %i.cv = tail call i32 @llvm.umax.i32(i32 %.068.lcssa.ph.i, i32 %.088.i)
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.critedge.i
  %.068.lcssa.i = phi i32 [ %.088.i, %.critedge.i ], [ %i.cv, %.critedge2.loopexit.i ] ; 2 uses
  %.2.lcssa.i = phi i64 [ %.180.i, %.critedge.i ], [ %.2.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %i.cw = icmp ult i64 %.2.lcssa.i, %3
  br i1 %i.cw, label %.preheader78.i, label %.critedge2.thread.i, !llvm.loop !488

.critedge2.thread.i:                              ; preds = %.critedge2.i, %bb.e
  %.068.lcssa111.i = phi i32 [ %.088.i, %bb.e ], [ %.068.lcssa.i, %.critedge2.i ] ; 2 uses
  %.not.i = icmp eq i32 %.068.lcssa111.i, 0
  %i.cx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.068.lcssa111.i, i1 true)
  %i.cy = xor i32 %i.cx, 31
  %i.cz = tail call i32 @llvm.umin.i32(i32 range(i32 0, 32) %i.cy, i32 6)
  %i.da = select i1 %.not.i, i32 0, i32 %i.cz
  %i.db = freeze i32 %i.da                        ; 8 uses
  %i.dc = shl nuw nsw i32 2, %i.db                ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.db
  %i.dd = xor i32 %notmask.i, -1
  %i.de = shl nuw nsw i32 %i.dd, 9
  %i.df = add nuw nsw i32 %i.de, %i.db
  %invariant.op = sub i32 1, %i.dc
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.critedge2.thread.i
  %.071 = phi i64 [ 0, %.critedge2.thread.i ], [ %.172, %.loopexit.i ]
  %i.dg = phi i64 [ 0, %.critedge2.thread.i ], [ %i.ei, %.loopexit.i ] ; 5 uses
  %.399.i = phi i64 [ 0, %.critedge2.thread.i ], [ %.4.i, %.loopexit.i ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.399.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3, !alias.scope !480, !noalias !483 ; 2 uses
  %.not73.i = icmp eq i32 %i.di, 0
  br i1 %.not73.i, label %.preheader.i62, label %bb.h

.preheader.i62:                                   ; preds = %bb.g
  %.06589.i = add nuw i64 %.399.i, 1              ; 3 uses
  %i.dj = icmp ult i64 %.06589.i, %3
  br i1 %i.dj, label %.lr.ph92.preheader.i, label %.lr.ph98.preheader.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i62
  %i.dk = trunc i64 %.399.i to i32
  %i.dl = sub i32 %i.ci, %i.dk
  br label %.lr.ph92.i

bb.h:                                             ; preds = %bb.g
  %i.dm = add i32 %i.di, %i.db
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dg
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !3, !alias.scope !480, !noalias !483
  %i.do = add nuw i64 %.399.i, 1
  br label %.loopexit.sink.split.i

.lr.ph92.i:                                       ; preds = %bb.i, %.lr.ph92.preheader.i
  %.06591.i = phi i64 [ %.065.i, %bb.i ], [ %.06589.i, %.lr.ph92.preheader.i ] ; 2 uses
  %.06690.i = phi i32 [ %i.ds, %bb.i ], [ 1, %.lr.ph92.preheader.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.06591.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3, !alias.scope !480, !noalias !483
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.i, label %.critedge4.i

bb.i:                                             ; preds = %.lr.ph92.i
  %i.ds = add i32 %.06690.i, 1
  %.065.i = add i64 %.06591.i, 1                  ; 2 uses
  %exitcond102.not.i = icmp eq i64 %.065.i, %3
  br i1 %exitcond102.not.i, label %.critedge4.i, label %.lr.ph92.i, !llvm.loop !489

.critedge4.i:                                     ; preds = %bb.i, %.lr.ph92.i
  %.066.lcssa.i = phi i32 [ %i.dl, %bb.i ], [ %.06690.i, %.lr.ph92.i ] ; 3 uses
  %i.dt = zext i32 %.066.lcssa.i to i64
  %i.du = add i64 %.399.i, %i.dt                  ; 2 uses
  %.not7496.i = icmp eq i32 %.066.lcssa.i, 0
  br i1 %.not7496.i, label %.loopexit.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %.preheader.i62, %.critedge4.i
  %i.dv = phi i64 [ %i.du, %.critedge4.i ], [ %.06589.i, %.preheader.i62 ]
  %.066.lcssa114.i = phi i32 [ %.066.lcssa.i, %.critedge4.i ], [ 1, %.preheader.i62 ] ; 3 uses
  %i.dw = icmp ult i32 %.066.lcssa114.i, %i.dc
  br i1 %i.dw, label %.lr.ph98.i._crit_edge, label %.lr.ph98.i

.lr.ph98.i._crit_edge:                            ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i
  %.lcssa117 = phi i64 [ %i.dg, %.lr.ph98.preheader.i ], [ %i.ef, %.lr.ph98.i ] ; 2 uses
  %.16797.i.lcssa = phi i32 [ %.066.lcssa114.i, %.lr.ph98.preheader.i ], [ %.reass.i.reass.reass.reass, %.lr.ph98.i ] ; 2 uses
  %i.dx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.16797.i.lcssa, i1 true) ; 2 uses
  %.neg.i63 = ashr exact i32 -2147483648, %i.dx
  %i.dy = add nsw i32 %.neg.i63, %.16797.i.lcssa
  %i.dz = shl i32 %i.dy, 9
  %i.ea = or disjoint i32 %i.dz, %i.dx
  %i.eb = xor i32 %i.ea, 31
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.lcssa117
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !3, !alias.scope !480, !noalias !483
  br label %.loopexit.sink.split.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.preheader.i, %.lr.ph98.i
  %.16797.i121 = phi i32 [ %.reass.i.reass.reass.reass, %.lr.ph98.i ], [ %.066.lcssa114.i, %.lr.ph98.preheader.i ]
  %i.ed = phi i64 [ %i.ef, %.lr.ph98.i ], [ %i.dg, %.lr.ph98.preheader.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ed
  store i32 %i.df, ptr %i.ee, align 4, !tbaa !3, !alias.scope !480, !noalias !483
  %.reass.i.reass.reass.reass = add i32 %.16797.i121, %invariant.op ; 3 uses
  %i.ef = add i64 %i.ed, 1                        ; 2 uses
  %i.eg = icmp ult i32 %.reass.i.reass.reass.reass, %i.dc
  br i1 %i.eg, label %.lr.ph98.i._crit_edge, label %.lr.ph98.i

.loopexit.sink.split.i:                           ; preds = %.lr.ph98.i._crit_edge, %bb.h
  %.lcssa.sink.i = phi i64 [ %.lcssa117, %.lr.ph98.i._crit_edge ], [ %i.dg, %bb.h ]
  %.4.ph.i = phi i64 [ %i.dv, %.lr.ph98.i._crit_edge ], [ %i.do, %bb.h ]
  %i.eh = add i64 %.lcssa.sink.i, 1               ; 2 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %.critedge4.i
  %.172 = phi i64 [ %.071, %.critedge4.i ], [ %i.eh, %.loopexit.sink.split.i ] ; 7 uses
  %i.ei = phi i64 [ %i.dg, %.critedge4.i ], [ %i.eh, %.loopexit.sink.split.i ]
  %.4.i = phi i64 [ %i.du, %.critedge4.i ], [ %.4.ph.i, %.loopexit.sink.split.i ] ; 2 uses
  %i.ej = icmp ult i64 %.4.i, %3
  br i1 %i.ej, label %bb.g, label %_ZL18RunLengthCodeZerosmPjPmS_.exit, !llvm.loop !490

_ZL18RunLengthCodeZerosmPjPmS_.exit:              ; preds = %.loopexit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1088) %1, i8 0, i64 1088, i1 false)
  %.not86 = icmp eq i64 %.172, 0                  ; 2 uses
  br i1 %.not86, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL18RunLengthCodeZerosmPjPmS_.exit
  %xtraiter = and i64 %.172, 1
  %i.ek = icmp eq i64 %.172, 1
  br i1 %i.ek, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.172, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.081 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.fa, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = and i32 %i.em, 511
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !3
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = and i32 %i.eu, 511
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !3
  %i.fa = add nuw i64 %.081, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !491

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.081.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod154 = trunc i64 %.172 to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081.epil.init
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = and i32 %i.fc, 511
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZL18RunLengthCodeZerosmPjPmS_.exit
  %.not = icmp ne i32 %i.db, 0                    ; 2 uses
  %i.fi = zext i1 %.not to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.fj = load i64, ptr %6, align 8, !tbaa !7, !alias.scope !492, !noalias !495 ; 4 uses
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9, !alias.scope !495, !noalias !492
  %i.fn = zext i8 %i.fm to i64
  %i.fo = and i64 %i.fj, 7
  %i.fp = shl nuw nsw i64 %i.fi, %i.fo
  %i.fq = or i64 %i.fp, %i.fn
  store i64 %i.fq, ptr %i.fl, align 1, !noalias !492
  %i.fr = add i64 %i.fj, 1                        ; 3 uses
  store i64 %i.fr, ptr %6, align 8, !tbaa !7, !alias.scope !492, !noalias !495
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.fs = add nsw i32 %i.db, -1
  %i.ft = zext i32 %i.fs to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.fu = lshr i64 %i.fr, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !9, !alias.scope !500, !noalias !497
  %i.fx = zext i8 %i.fw to i64
  %i.fy = and i64 %i.fr, 7
  %i.fz = shl nuw nsw i64 %i.ft, %i.fy
  %i.ga = or i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.fv, align 1, !noalias !497
  %i.gb = add i64 %i.fj, 5
  store i64 %i.gb, ptr %6, align 8, !tbaa !7, !alias.scope !497, !noalias !500
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.gc = zext nneg i32 %i.db to i64
  %i.gd = add i64 %4, %i.gc                       ; 2 uses
  tail call fastcc void @_ZL24BuildAndStoreHuffmanTreePKjmmPN13duckdb_brotli11HuffmanTreeEPhPtPmS4_(ptr noundef nonnull %1, i64 noundef %i.gd, i64 noundef %i.gd, ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.pre98 = load i64, ptr %6, align 8, !tbaa !7, !noalias !154 ; 2 uses
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.k, %bb.m
  %i.ge = phi i64 [ %i.hi, %bb.m ], [ %.pre98, %bb.k ] ; 3 uses
  %.182 = phi i64 [ %i.hj, %bb.m ], [ 0, %bb.k ]  ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.182
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3  ; 2 uses
  %i.gh = and i32 %i.gg, 511                      ; 2 uses
  %i.gi = zext nneg i32 %i.gh to i64              ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gi
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !35
  %i.go = zext i16 %i.gn to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.gp = lshr i64 %i.ge, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !9, !alias.scope !505, !noalias !502
  %i.gs = zext i8 %i.gr to i64
  %i.gt = and i64 %i.ge, 7
  %i.gu = shl nuw nsw i64 %i.go, %i.gt
  %i.gv = or i64 %i.gu, %i.gs
  store i64 %i.gv, ptr %i.gq, align 1, !noalias !502
  %i.gw = add i64 %i.ge, %i.gl                    ; 5 uses
  store i64 %i.gw, ptr %6, align 8, !tbaa !7, !alias.scope !502, !noalias !505
  %i.gx = add nsw i32 %i.gh, -1
  %or.cond.not = icmp ult i32 %i.gx, %i.db
  br i1 %or.cond.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph84
  %i.gy = lshr i32 %i.gg, 9
  %i.gz = zext nneg i32 %i.gy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.ha = lshr i64 %i.gw, 3
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !9, !alias.scope !510, !noalias !507
  %i.hd = zext i8 %i.hc to i64
  %i.he = and i64 %i.gw, 7
  %i.hf = shl nuw nsw i64 %i.gz, %i.he
  %i.hg = or i64 %i.hf, %i.hd
  store i64 %i.hg, ptr %i.hb, align 1, !noalias !507
  %i.hh = add i64 %i.gw, %i.gi                    ; 2 uses
  store i64 %i.hh, ptr %6, align 8, !tbaa !7, !alias.scope !507, !noalias !510
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph84
  %i.hi = phi i64 [ %i.hh, %bb.l ], [ %i.gw, %.lr.ph84 ] ; 2 uses
  %i.hj = add nuw i64 %.182, 1                    ; 2 uses
  %exitcond97.not = icmp eq i64 %i.hj, %.172
  br i1 %exitcond97.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !512

._crit_edge85:                                    ; preds = %bb.m, %bb.k
  %i.hk = phi i64 [ %.pre98, %bb.k ], [ %i.hi, %bb.m ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 %i.hl ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !9, !alias.scope !516, !noalias !513
  %i.ho = zext i8 %i.hn to i64
  %i.hp = and i64 %i.hk, 7
  %i.hq = shl nuw nsw i64 1, %i.hp
end_hunk_0
