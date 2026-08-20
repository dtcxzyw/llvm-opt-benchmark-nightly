inline.NumInlined: 15211
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo18CalculateBaseBytesERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE:bb.a
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %iter.check, label %.loopexit111

iter.check:                                       ; preds = %.preheader110
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %i.q = add nsw i64 %wide.trip.count, -1         ; 4 uses
  %min.iters.check = icmp ult i32 %i.o, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check208 = icmp ult i32 %i.o, 18
  br i1 %min.iters.check208, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.q, 15                         ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 16, i64 %i.r         ; 2 uses
  %n.vec = sub nsw i64 %i.q, %i.t                 ; 3 uses
  %i.u = add nsw i64 %n.vec, 1                    ; 2 uses
  %i.v = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.j, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi209 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi210 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi211 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %step.add = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw nsw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> %vec.ind ; 2 uses
  %wide.gep212 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> %step.add ; 2 uses
  %wide.gep213 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> %step.add.2 ; 2 uses
  %wide.gep214 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> %step.add.3 ; 2 uses
  %wide.masked.gather = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %wide.masked.gather215 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep212, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %wide.masked.gather216 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep213, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %wide.masked.gather217 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep214, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %wide.gep218 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.gep219 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep212, i64 8
  %wide.gep220 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep213, i64 8
  %wide.gep221 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep214, i64 8
  %wide.masked.gather222 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep218, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %wide.masked.gather223 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep219, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %wide.masked.gather224 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep220, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %wide.masked.gather225 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep221, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %i.w = icmp ne <4 x ptr> %wide.masked.gather, %wide.masked.gather222
  %i.x = icmp ne <4 x ptr> %wide.masked.gather215, %wide.masked.gather223
  %i.y = icmp ne <4 x ptr> %wide.masked.gather216, %wide.masked.gather224
  %i.z = icmp ne <4 x ptr> %wide.masked.gather217, %wide.masked.gather225
  %i.aa = zext <4 x i1> %i.w to <4 x i32>
  %i.ab = zext <4 x i1> %i.x to <4 x i32>
  %i.ac = zext <4 x i1> %i.y to <4 x i32>
  %i.ad = zext <4 x i1> %i.z to <4 x i32>
  %i.ae = add <4 x i32> %vec.phi, %i.aa           ; 2 uses
  %i.af = add <4 x i32> %vec.phi209, %i.ab        ; 2 uses
  %i.ag = add <4 x i32> %vec.phi210, %i.ac        ; 2 uses
  %i.ah = add <4 x i32> %vec.phi211, %i.ad        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 16)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1232

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %bin.rdx226 = add <4 x i32> %i.ag, %bin.rdx
  %bin.rdx227 = add <4 x i32> %i.ah, %bin.rdx226
  %i.aj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx227) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.t, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !665

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.u, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aj, %vec.epilog.iter.check ], [ %i.j, %vector.main.loop.iter.check ]
  %i.ak = and i64 %i.q, 3                         ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = select i1 %i.al, i64 4, i64 %i.ak
  %n.vec228 = sub nsw i64 %i.q, %i.am             ; 2 uses
  %i.an = add nsw i64 %n.vec228, 1
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index229 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ]
  %vec.ind230 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next237, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi231 = phi <4 x i32> [ %i.ao, %vec.epilog.ph ], [ %i.ar, %vec.epilog.vector.body ]
  %wide.gep232 = getelementptr inbounds nuw [24 x i8], ptr %i.b, <4 x i64> %vec.ind230 ; 2 uses
  %wide.masked.gather233 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep232, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %wide.gep234 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep232, i64 8
  %wide.masked.gather235 = tail call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep234, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !536
  %i.ap = icmp ne <4 x ptr> %wide.masked.gather233, %wide.masked.gather235
  %i.aq = zext <4 x i1> %i.ap to <4 x i32>
  %i.ar = add <4 x i32> %vec.phi231, %i.aq        ; 2 uses
  %index.next236 = add nuw i64 %index229, 4       ; 2 uses
  %vec.ind.next237 = add nuw nsw <4 x i64> %vec.ind230, splat (i64 4)
  %i.as = icmp eq i64 %index.next236, %n.vec228
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1233

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ar)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.067115.ph = phi i32 [ %i.j, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.067115 = phi i32 [ %spec.select, %.lr.ph ], [ %.067115.ph, %.lr.ph.preheader ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !536
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !536
  %i.ay = icmp ne ptr %i.av, %i.ax
  %i.az = zext i1 %i.ay to i32
  %spec.select = add nsw i32 %.067115, %i.az      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit111, label %.lr.ph, !llvm.loop !1234

.loopexit111:                                     ; preds = %.lr.ph, %.preheader110, %bb.a
  %.2 = phi i32 [ %i.j, %bb.a ], [ %i.j, %.preheader110 ], [ %spec.select, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4120
  store i32 %.2, ptr %i.ba, align 8, !tbaa !984
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !733
  %i.bf = sext i32 %i.be to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !899 ; 2 uses
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !160 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.bf
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit111
  %i.bo = sub nuw nsw i64 %i.bf, %i.bm
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bo)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.c:                                             ; preds = %.loopexit111
  %i.bp = icmp ugt i64 %i.bm, %i.bf
  br i1 %i.bp, label %bb.d, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.bq, ptr %i.bg, align 16, !tbaa !899
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 748
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !1235, !range !470, !noundef !471
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.preheader108, label %bb.e

.preheader108:                                    ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 16, !tbaa !887 ; 13 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %.lr.ph125, label %.preheader

.lr.ph125:                                        ; preds = %.preheader108
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !29
  %wide.trip.count164 = zext nneg i32 %i.bv to i64
  br label %bb.l

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.by = load i8, ptr %i.bc, align 8, !tbaa !1048
  %i.bz = icmp eq i8 %i.by, 0
  %i.ca = select i1 %i.bz, i32 1, i32 -1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i32 %i.ca, ptr %i.cb, align 16, !tbaa !974
  %i.cc = load i32, ptr %i.bd, align 8, !tbaa !733 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph117, label %.loopexit

.lr.ph117:                                        ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 224
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph117, %bb.k
  %i.ci = phi i32 [ %i.cc, %.lr.ph117 ], [ %i.de, %bb.k ] ; 2 uses
  %indvars.iv158 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next159, %bb.k ] ; 6 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv158 to i32
  switch i32 %i.cj, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %..thread_crit_edge
  ]

..thread_crit_edge:                               ; preds = %bb.f
  %.pre = load i64, ptr %i.ce, align 8, !tbaa !1236
  %.pre173 = load ptr, ptr %i.bb, align 8, !tbaa !160
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ck = load i8, ptr %i.bc, align 8, !tbaa !1048
  %i.cl = icmp eq i8 %i.ck, 1
  %.pre172 = load i64, ptr %i.ce, align 8, !tbaa !1236 ; 2 uses
  %.pre174 = load ptr, ptr %i.bb, align 8, !tbaa !160 ; 2 uses
  br i1 %i.cl, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  store i64 %.pre172, ptr %.pre174, align 8, !tbaa !439
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %3 = add nsw i64 %indvars.iv158, -1             ; 2 uses
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !160
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %3
  %i.cn = load i64, ptr %4, align 8, !tbaa !439
  %i.co = load double, ptr %i.cf, align 8, !tbaa !1237
  %i.cp = tail call noundef i64 @_ZN7rocksdb21MultiplyCheckOverflowEmd(i64 noundef %i.cn, double noundef %i.co)
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !978
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !122 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %sext = shl i64 %i.cu, 30
  %i.cv = ashr i64 %sext, 32
  %.not.i.not = icmp sgt i64 %indvars.iv158, %i.cv
  br i1 %.not.i.not, label %_ZNK7rocksdb16MutableCFOptions27MaxBytesMultiplerAdditionalEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %3
  %i.cw = load i32, ptr %5, align 4, !tbaa !143
  %i.cx = sitofp i32 %i.cw to double
  br label %_ZNK7rocksdb16MutableCFOptions27MaxBytesMultiplerAdditionalEi.exit

_ZNK7rocksdb16MutableCFOptions27MaxBytesMultiplerAdditionalEi.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi double [ %i.cx, %bb.j ], [ 1.000000e+00, %bb.i ]
  %i.cy = tail call noundef i64 @_ZN7rocksdb21MultiplyCheckOverflowEmd(i64 noundef %i.cp, double noundef %.0.i)
  %i.cz = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv158
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !439
  %.pre175 = load i32, ptr %i.bd, align 8, !tbaa !733
  br label %bb.k

.thread:                                          ; preds = %..thread_crit_edge, %bb.g
  %i.db = phi ptr [ %.pre173, %..thread_crit_edge ], [ %.pre174, %bb.g ]
  %i.dc = phi i64 [ %.pre, %..thread_crit_edge ], [ %.pre172, %bb.g ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv158
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !439
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %.thread, %_ZNK7rocksdb16MutableCFOptions27MaxBytesMultiplerAdditionalEi.exit
  %i.de = phi i32 [ %i.ci, %bb.h ], [ %i.ci, %.thread ], [ %.pre175, %_ZNK7rocksdb16MutableCFOptions27MaxBytesMultiplerAdditionalEi.exit ] ; 2 uses
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next159, %i.df
  br i1 %i.dg, label %bb.f, label %.loopexit, !llvm.loop !1238

.preheader:                                       ; preds = %._crit_edge, %.preheader108
  %.072.lcssa = phi i64 [ 0, %.preheader108 ], [ %.173, %._crit_edge ] ; 4 uses
  %.070.lcssa = phi i32 [ -1, %.preheader108 ], [ %spec.select81, %._crit_edge ] ; 11 uses
  %i.dh = icmp sgt i32 %i.bv, 0
  br i1 %i.dh, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %.preheader
  %i.di = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.dj = zext nneg i32 %i.bv to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.di, i8 -1, i64 %i.dk, i1 false), !tbaa !439
  br label %._crit_edge131

bb.l:                                             ; preds = %.lr.ph125, %._crit_edge
  %indvars.iv161 = phi i64 [ 1, %.lr.ph125 ], [ %indvars.iv.next162, %._crit_edge ] ; 3 uses
  %.070123 = phi i32 [ -1, %.lr.ph125 ], [ %spec.select81, %._crit_edge ] ; 2 uses
  %.072122 = phi i64 [ 0, %.lr.ph125 ], [ %.173, %._crit_edge ]
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %indvars.iv161 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !536 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !536 ; 3 uses
  %i.dp = icmp eq ptr %i.dm, %i.do
  br i1 %i.dp, label %._crit_edge, label %iter.check270

iter.check270:                                    ; preds = %bb.l
  %i.dq = ptrtoaddr ptr %i.do to i64
  %i.dr = ptrtoaddr ptr %i.dm to i64
  %i.ds = add i64 %i.dq, -8
  %i.dt = sub i64 %i.ds, %i.dr                    ; 3 uses
  %i.du = lshr i64 %i.dt, 3
  %i.dv = add nuw nsw i64 %i.du, 1                ; 5 uses
  %min.iters.check240 = icmp ult i64 %i.dt, 24
  br i1 %min.iters.check240, label %.lr.ph120.preheader, label %vector.main.loop.iter.check241

vector.main.loop.iter.check241:                   ; preds = %iter.check270
  %min.iters.check242 = icmp ult i64 %i.dt, 120
  br i1 %min.iters.check242, label %vec.epilog.ph274, label %vector.ph243

vector.ph243:                                     ; preds = %vector.main.loop.iter.check241
  %i.dw = and i64 %i.dv, 12
  %n.vec244 = and i64 %i.dv, 4611686018427387888  ; 4 uses
  %i.dx = shl i64 %n.vec244, 3
  %i.dy = getelementptr i8, ptr %i.dm, i64 %i.dx
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph243
  %index246 = phi i64 [ 0, %vector.ph243 ], [ %index.next262, %vector.body245 ] ; 2 uses
  %vec.phi247 = phi <4 x i64> [ zeroinitializer, %vector.ph243 ], [ %i.ed, %vector.body245 ]
  %vec.phi248 = phi <4 x i64> [ zeroinitializer, %vector.ph243 ], [ %i.ee, %vector.body245 ]
  %vec.phi249 = phi <4 x i64> [ zeroinitializer, %vector.ph243 ], [ %i.ef, %vector.body245 ]
  %vec.phi250 = phi <4 x i64> [ zeroinitializer, %vector.ph243 ], [ %i.eg, %vector.body245 ]
  %i.dz = shl i64 %index246, 3
  %next.gep = getelementptr i8, ptr %i.dm, i64 %i.dz ; 4 uses
  %i.ea = getelementptr i8, ptr %next.gep, i64 32
  %i.eb = getelementptr i8, ptr %next.gep, i64 64
  %i.ec = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !225
  %wide.load251 = load <4 x ptr>, ptr %i.ea, align 8, !tbaa !225
  %wide.load252 = load <4 x ptr>, ptr %i.eb, align 8, !tbaa !225
  %wide.load253 = load <4 x ptr>, ptr %i.ec, align 8, !tbaa !225
  %wide.gep254 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep255 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load251, i64 24
  %wide.gep256 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load252, i64 24
  %wide.gep257 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load253, i64 24
  %wide.masked.gather258 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep254, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %wide.masked.gather259 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep255, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %wide.masked.gather260 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep256, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %wide.masked.gather261 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep257, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %i.ed = add <4 x i64> %wide.masked.gather258, %vec.phi247 ; 2 uses
  %i.ee = add <4 x i64> %wide.masked.gather259, %vec.phi248 ; 2 uses
  %i.ef = add <4 x i64> %wide.masked.gather260, %vec.phi249 ; 2 uses
  %i.eg = add <4 x i64> %wide.masked.gather261, %vec.phi250 ; 2 uses
  %index.next262 = add nuw i64 %index246, 16      ; 2 uses
  %i.eh = icmp eq i64 %index.next262, %n.vec244
  br i1 %i.eh, label %middle.block263, label %vector.body245, !llvm.loop !1239

middle.block263:                                  ; preds = %vector.body245
  %bin.rdx264 = add <4 x i64> %i.ee, %i.ed
  %bin.rdx265 = add <4 x i64> %i.ef, %bin.rdx264
  %bin.rdx266 = add <4 x i64> %i.eg, %bin.rdx265
  %i.ei = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx266) ; 3 uses
  %cmp.n = icmp eq i64 %i.dv, %n.vec244
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check272

vec.epilog.iter.check272:                         ; preds = %middle.block263
  %min.epilog.iters.check273 = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check273, label %.lr.ph120.preheader, label %vec.epilog.ph274, !prof !665

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check241, %vec.epilog.iter.check272
  %vec.epilog.resume.val267 = phi i64 [ %n.vec244, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check241 ]
  %bc.merge.rdx268 = phi i64 [ %i.ei, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check241 ]
  %n.vec275 = and i64 %i.dv, 4611686018427387900  ; 3 uses
  %i.ej = shl i64 %n.vec275, 3
  %i.ek = getelementptr i8, ptr %i.dm, i64 %i.ej
  %i.el = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx268, i64 0
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph274
  %index277 = phi i64 [ %vec.epilog.resume.val267, %vec.epilog.ph274 ], [ %index.next283, %vec.epilog.vector.body276 ] ; 2 uses
  %vec.phi278 = phi <4 x i64> [ %i.el, %vec.epilog.ph274 ], [ %i.en, %vec.epilog.vector.body276 ]
  %i.em = shl i64 %index277, 3
  %next.gep279 = getelementptr i8, ptr %i.dm, i64 %i.em
  %wide.load280 = load <4 x ptr>, ptr %next.gep279, align 8, !tbaa !225
  %wide.gep281 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load280, i64 24
  %wide.masked.gather282 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep281, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %i.en = add <4 x i64> %wide.masked.gather282, %vec.phi278 ; 2 uses
  %index.next283 = add nuw i64 %index277, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next283, %n.vec275
  br i1 %i.eo, label %vec.epilog.middle.block284, label %vec.epilog.vector.body276, !llvm.loop !1240

vec.epilog.middle.block284:                       ; preds = %vec.epilog.vector.body276
  %i.ep = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.en) ; 2 uses
  %cmp.n285 = icmp eq i64 %i.dv, %n.vec275
  br i1 %cmp.n285, label %._crit_edge, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %iter.check270, %vec.epilog.iter.check272, %vec.epilog.middle.block284
  %.068119.ph = phi i64 [ 0, %iter.check270 ], [ %i.ei, %vec.epilog.iter.check272 ], [ %i.ep, %vec.epilog.middle.block284 ]
  %.sroa.0100.0118.ph = phi ptr [ %i.dm, %iter.check270 ], [ %i.dy, %vec.epilog.iter.check272 ], [ %i.ek, %vec.epilog.middle.block284 ]
  br label %.lr.ph120

._crit_edge:                                      ; preds = %.lr.ph120, %middle.block263, %vec.epilog.middle.block284, %bb.l
  %.068.lcssa = phi i64 [ 0, %bb.l ], [ %i.ep, %vec.epilog.middle.block284 ], [ %i.ei, %middle.block263 ], [ %i.ew, %.lr.ph120 ] ; 2 uses
  %i.eq = icmp ne i64 %.068.lcssa, 0
  %i.er = icmp eq i32 %.070123, -1
  %or.cond = select i1 %i.eq, i1 %i.er, i1 false
  %i.es = trunc nuw nsw i64 %indvars.iv161 to i32
  %spec.select81 = select i1 %or.cond, i32 %i.es, i32 %.070123 ; 2 uses
  %.173 = tail call i64 @llvm.umax.i64(i64 %.068.lcssa, i64 %.072122) ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.preheader, label %bb.l, !llvm.loop !1241

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %.068119 = phi i64 [ %i.ew, %.lr.ph120 ], [ %.068119.ph, %.lr.ph120.preheader ]
  %.sroa.0100.0118 = phi ptr [ %i.ex, %.lr.ph120 ], [ %.sroa.0100.0118.ph, %.lr.ph120.preheader ] ; 2 uses
  %i.et = load ptr, ptr %.sroa.0100.0118, align 8, !tbaa !225
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !437
  %i.ew = add i64 %i.ev, %.068119                 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0100.0118, i64 8 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.do
  br i1 %i.ey, label %._crit_edge, label %.lr.ph120, !llvm.loop !1242

._crit_edge131:                                   ; preds = %.lr.ph130, %.preheader
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2804 ; 4 uses
  store i32 -1, ptr %i.ez, align 4, !tbaa !975
  %i.fa = icmp eq i64 %.072.lcssa, 0
  br i1 %i.fa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge131
  %i.fb = add nsw i32 %i.bv, -1
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i32 %i.fb, ptr %i.fc, align 16, !tbaa !974
  br label %.loopexit

bb.n:                                             ; preds = %._crit_edge131
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !1236 ; 6 uses
  %i.ff = uitofp i64 %i.fe to double
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !1237 ; 9 uses
  %i.fi = fdiv double %i.ff, %i.fh
  %i.fj = fptoui double %i.fi to i64              ; 5 uses
  %i.fk = add nsw i32 %i.bv, -2                   ; 6 uses
  %.not132 = icmp slt i32 %i.fk, %.070.lcssa
  br i1 %.not132, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.n
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 3 uses
  %i.fm = xor i32 %.070.lcssa, -1
  %i.fn = add i32 %i.bv, %i.fm                    ; 3 uses
  %i.fo = add i32 %i.bv, -2
  %xtraiter = and i32 %i.fn, 1
  %i.fp = icmp eq i32 %i.fo, %.070.lcssa
  br i1 %i.fp, label %.epil.preheader, label %.lr.ph136.new

.lr.ph136.new:                                    ; preds = %.lr.ph136
  %unroll_iter = and i32 %i.fn, -2
  br label %bb.q

._crit_edge137.loopexit.unr-lcssa:                ; preds = %bb.w
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge137, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge137.loopexit.unr-lcssa, %.lr.ph136
  %.epil.init = phi i32 [ -1, %.lr.ph136 ], [ %i.gr, %._crit_edge137.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init305 = phi i32 [ -1, %.lr.ph136 ], [ %i.gs, %._crit_edge137.loopexit.unr-lcssa ]
  %.065134.epil.init = phi i32 [ %i.fk, %.lr.ph136 ], [ %i.gt, %._crit_edge137.loopexit.unr-lcssa ] ; 3 uses
  %.0104133.epil.init = phi i64 [ %.072.lcssa, %.lr.ph136 ], [ %i.gm, %._crit_edge137.loopexit.unr-lcssa ]
  %lcmp.mod308 = trunc i32 %i.fn to i1
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.fq = uitofp i64 %.0104133.epil.init to double
  %i.fr = fdiv double %i.fq, %i.fh
  %i.fs = fptoui double %i.fr to i64              ; 4 uses
  %i.ft = icmp ne i32 %.epil.init305, -1
  %.not80.epil = icmp ugt i64 %i.fs, %i.fj
  %or.cond82.epil = select i1 %i.ft, i1 true, i1 %.not80.epil
  br i1 %or.cond82.epil, label %._crit_edge137, label %bb.o

bb.o:                                             ; preds = %.epil.preheader
  %i.fu = load i64, ptr %i.fl, align 8, !tbaa !1243
  %i.fv = icmp eq i64 %i.fu, 0
  %i.fw = icmp slt i32 %.065134.epil.init, %i.fk
  %or.cond106.epil = or i1 %i.fv, %i.fw
  br i1 %or.cond106.epil, label %bb.p, label %._crit_edge137

bb.p:                                             ; preds = %bb.o
  store i32 %.065134.epil.init, ptr %i.ez, align 4, !tbaa !975
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit.unr-lcssa, %bb.p, %bb.o, %.epil.preheader, %bb.n
  %i.fx = phi i32 [ -1, %bb.n ], [ %i.gr, %._crit_edge137.loopexit.unr-lcssa ], [ %.epil.init, %bb.o ], [ %.epil.init, %.epil.preheader ], [ %.065134.epil.init, %bb.p ]
  %.0104.lcssa = phi i64 [ %.072.lcssa, %bb.n ], [ %i.gm, %._crit_edge137.loopexit.unr-lcssa ], [ %i.fs, %bb.p ], [ %i.fs, %bb.o ], [ %i.fs, %.epil.preheader ] ; 4 uses
  %.not79 = icmp ugt i64 %.0104.lcssa, %i.fj
  br i1 %.not79, label %bb.z, label %bb.x

bb.q:                                             ; preds = %bb.w, %.lr.ph136.new
  %i.fy = phi i32 [ -1, %.lr.ph136.new ], [ %i.gr, %bb.w ] ; 2 uses
  %i.fz = phi i32 [ -1, %.lr.ph136.new ], [ %i.gs, %bb.w ] ; 2 uses
  %.065134 = phi i32 [ %i.fk, %.lr.ph136.new ], [ %i.gt, %bb.w ] ; 7 uses
  %.0104133 = phi i64 [ %.072.lcssa, %.lr.ph136.new ], [ %i.gm, %bb.w ]
  %niter = phi i32 [ 0, %.lr.ph136.new ], [ %niter.next.1, %bb.w ]
  %i.ga = uitofp i64 %.0104133 to double
  %i.gb = fdiv double %i.ga, %i.fh
  %i.gc = fptoui double %i.gb to i64              ; 2 uses
  %i.gd = icmp ne i32 %i.fz, -1
  %.not80 = icmp ugt i64 %i.gc, %i.fj
  %or.cond82 = select i1 %i.gd, i1 true, i1 %.not80
  br i1 %or.cond82, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ge = load i64, ptr %i.fl, align 8, !tbaa !1243
  %i.gf = icmp eq i64 %i.ge, 0
  %i.gg = icmp slt i32 %.065134, %i.fk
  %or.cond106 = or i1 %i.gf, %i.gg
  br i1 %or.cond106, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %.065134, ptr %i.ez, align 4, !tbaa !975
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.s
  %i.gh = phi i32 [ %i.fy, %bb.r ], [ %i.fy, %bb.q ], [ %.065134, %bb.s ] ; 2 uses
  %i.gi = phi i32 [ -1, %bb.r ], [ %i.fz, %bb.q ], [ %.065134, %bb.s ] ; 2 uses
  %i.gj = add nsw i32 %.065134, -1                ; 3 uses
  %i.gk = uitofp i64 %i.gc to double
  %i.gl = fdiv double %i.gk, %i.fh
  %i.gm = fptoui double %i.gl to i64              ; 4 uses
  %i.gn = icmp ne i32 %i.gi, -1
  %.not80.1 = icmp ugt i64 %i.gm, %i.fj
  %or.cond82.1 = select i1 %i.gn, i1 true, i1 %.not80.1
  br i1 %or.cond82.1, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.go = load i64, ptr %i.fl, align 8, !tbaa !1243
  %i.gp = icmp eq i64 %i.go, 0
  %i.gq = icmp sle i32 %.065134, %i.fk
  %or.cond106.1 = or i1 %i.gp, %i.gq
  br i1 %or.cond106.1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.gj, ptr %i.ez, align 4, !tbaa !975
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.gr = phi i32 [ %i.gh, %bb.u ], [ %i.gh, %bb.t ], [ %i.gj, %bb.v ] ; 3 uses
  %i.gs = phi i32 [ -1, %bb.u ], [ %i.gi, %bb.t ], [ %i.gj, %bb.v ] ; 2 uses
  %i.gt = add nsw i32 %.065134, -2                ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge137.loopexit.unr-lcssa, label %bb.q, !llvm.loop !1244

bb.x:                                             ; preds = %._crit_edge137
  %i.gu = add i64 %i.fj, 1                        ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 2 uses
  store i32 %.070.lcssa, ptr %i.gv, align 16, !tbaa !974
  %i.gw = add nsw i32 %i.bv, -1
  %i.gx = icmp slt i32 %.070.lcssa, %i.gw
  br i1 %i.gx, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !1245
  tail call void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 1, ptr noundef %i.gz, ptr noundef nonnull @.str.60, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.48, i64 32), i32 noundef %i.fx)
  %.pre176 = load double, ptr %i.fg, align 8, !tbaa !1237
  %.pre177 = load i32, ptr %i.gv, align 16, !tbaa !974
  %.pre178 = load i32, ptr %i.bu, align 16, !tbaa !887
  br label %bb.ac

bb.z:                                             ; preds = %._crit_edge137
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 2 uses
  store i32 %.070.lcssa, ptr %i.ha, align 16, !tbaa !974
  %i.hb = icmp sgt i32 %.070.lcssa, 1
  %i.hc = icmp ugt i64 %.0104.lcssa, %i.fe        ; 2 uses
  %i.hd = select i1 %i.hb, i1 %i.hc, i1 false
  br i1 %i.hd, label %.lr.ph142, label %bb.aa

.lr.ph142:                                        ; preds = %bb.z, %.lr.ph142
  %.1105140 = phi i64 [ %i.hi, %.lr.ph142 ], [ %.0104.lcssa, %bb.z ]
  %i.he = phi i32 [ %i.hf, %.lr.ph142 ], [ %.070.lcssa, %bb.z ] ; 2 uses
  %i.hf = add nsw i32 %i.he, -1                   ; 4 uses
  %i.hg = uitofp i64 %.1105140 to double
  %i.hh = fdiv double %i.hg, %i.fh
  %i.hi = fptoui double %i.hh to i64              ; 3 uses
  %i.hj = icmp samesign ugt i32 %i.he, 2
  %i.hk = icmp ult i64 %i.fe, %i.hi               ; 2 uses
  %i.hl = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %i.hl, label %.lr.ph142, label %._crit_edge143, !llvm.loop !1246

._crit_edge143:                                   ; preds = %.lr.ph142
  store i32 %i.hf, ptr %i.ha, align 16, !tbaa !974
  %i.hm = tail call i64 @llvm.umax.i64(i64 %i.hi, i64 1)
  br i1 %i.hk, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %i.hc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge143, %bb.aa
  %.1105.lcssa195 = phi i64 [ %i.hm, %._crit_edge143 ], [ %.0104.lcssa, %bb.aa ]
  %i.hn = phi i32 [ %i.hf, %._crit_edge143 ], [ %.070.lcssa, %bb.aa ]
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge143, %bb.aa, %bb.ab, %bb.x, %bb.y
  %i.ho = phi i32 [ %.pre178, %bb.y ], [ %i.bv, %bb.x ], [ %i.bv, %bb.ab ], [ %i.bv, %bb.aa ], [ %i.bv, %._crit_edge143 ] ; 2 uses
  %i.hp = phi i32 [ %.pre177, %bb.y ], [ %.070.lcssa, %bb.x ], [ %i.hn, %bb.ab ], [ %.070.lcssa, %bb.aa ], [ %i.hf, %._crit_edge143 ] ; 2 uses
  %i.hq = phi double [ %.pre176, %bb.y ], [ %i.fh, %bb.x ], [ %i.fh, %bb.ab ], [ %i.fh, %bb.aa ], [ %i.fh, %._crit_edge143 ]
  %.064 = phi i64 [ %i.gu, %bb.y ], [ %i.gu, %bb.x ], [ %.1105.lcssa195, %bb.ab ], [ %i.fe, %bb.aa ], [ %i.fe, %._crit_edge143 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 2808 ; 2 uses
  store double %i.hq, ptr %i.hr, align 8, !tbaa !976
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.ht = icmp slt i32 %i.hp, %i.ho
  br i1 %i.ht, label %.lr.ph150.preheader, label %.loopexit

.lr.ph150.preheader:                              ; preds = %bb.ac
  %i.hu = sext i32 %i.hp to i64
  br label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.ae
  %i.hv = phi i32 [ %i.ho, %.lr.ph150.preheader ], [ %i.ib, %bb.ae ]
  %indvars.iv169 = phi i64 [ %i.hu, %.lr.ph150.preheader ], [ %indvars.iv.next170, %bb.ae ] ; 3 uses
  %.0103147 = phi i64 [ %.064, %.lr.ph150.preheader ], [ %.1, %bb.ae ] ; 2 uses
  %i.hw = load i32, ptr %i.hs, align 16, !tbaa !974
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp sgt i64 %indvars.iv169, %i.hx
  br i1 %i.hy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph150
  %i.hz = load double, ptr %i.hr, align 8, !tbaa !976
  %i.ia = tail call noundef i64 @_ZN7rocksdb21MultiplyCheckOverflowEmd(i64 noundef %.0103147, double noundef %i.hz)
  %.pre179 = load i32, ptr %i.bu, align 16, !tbaa !887
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph150
  %i.ib = phi i32 [ %.pre179, %bb.ad ], [ %i.hv, %.lr.ph150 ] ; 2 uses
  %.1 = phi i64 [ %i.ia, %bb.ad ], [ %.0103147, %.lr.ph150 ] ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.1, i64 %i.fe)
  %i.ic = load ptr, ptr %i.bb, align 8, !tbaa !160
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv169
  store i64 %.sroa.speculated, ptr %i.id, align 8, !tbaa !439
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, 1 ; 2 uses
  %i.ie = sext i32 %i.ib to i64
  %i.if = icmp slt i64 %indvars.iv.next170, %i.ie
  br i1 %i.if, label %.lr.ph150, label %.loopexit, !llvm.loop !1247

.loopexit:                                        ; preds = %bb.k, %bb.ae, %bb.e, %bb.ac, %bb.m
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb18VersionStorageInfo26UpdateFilesByCompactionPriERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(875) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %6 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 8 uses
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1385", align 8 ; 6 uses
  %9 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 17 uses
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1385", align 8 ; 12 uses
  %11 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.std::unordered_map.1359", align 8 ; 16 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %20 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %21 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %22 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %23 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.c = load i8, ptr %i.b, align 16, !tbaa !973
  %.off = add i8 %i.c, -1
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %.loopexit190, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 16, !tbaa !887
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph356, label %.loopexit190

.lr.ph356:                                        ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 601
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not.i.i.i.i.i.i.i.i.i143 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 4 uses
  %i.o = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 4 uses
  %.not.i3.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 4 uses
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph356, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph356 ], [ %indvars.iv.next, %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EED2Ev.exit ] ; 12 uses
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %indvars.iv ; 6 uses
  %i.am = load ptr, ptr %i.h, align 16, !tbaa !130
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !222 ; 2 uses
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !113 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 3 uses
  %i.av = icmp ugt i64 %i.au, 576460752303423487
  br i1 %i.av, label %.noexc, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #44
  unreachable

_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EEC2EmRKS3_.exit, label %.noexc66

.noexc66:                                         ; preds = %_ZNSt6vectorIN7rocksdb12_GLOBAL__N_15FsizeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.aw = shl nuw nsw i64 %i.at, 1
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #45 ; 15 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.au ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb18VersionStorageInfo22ComputeCompactionScoreERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %4 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 873 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1367, !range !470, !noundef !471
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 387 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !470
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 16             ; 3 uses
  %.0.v.i = select i1 %i.i, i32 -2, i32 -1
  %.0.i = add i32 %.0.v.i, %i.k                   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2704 ; 2 uses
  %i.m = load i8, ptr %i.l, align 16, !tbaa !973  ; 2 uses
  %i.n = icmp eq i8 %i.m, 0                       ; 2 uses
  %.not232244 = icmp slt i32 %i.k, 2
  %.not232 = select i1 %i.n, i1 %.not232244, i1 false
  br i1 %.not232, label %._crit_edge242, label %.lr.ph236

.lr.ph236:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 748 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2804 ; 2 uses
  %.not133220 = icmp slt i32 %.0.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4072
  %i.ai = add i32 %.0.i, 1
  %wide.trip.count = zext i32 %i.ai to i64
  %i.aj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.aj, 3                    ; 3 uses
  %i.ak = add nsw i32 %.0.i, -1
  %i.al = icmp ult i32 %i.ak, 3
  %unroll_iter = and i64 %i.aj, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod342 = icmp ne i64 %xtraiter, 0
  br label %bb.b

.preheader:                                       ; preds = %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread
  %i.am = icmp sgt i32 %.pr, 2
  br i1 %i.am, label %.lr.ph241, label %._crit_edge242

.lr.ph241:                                        ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4072
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4096
  br label %bb.bl

bb.b:                                             ; preds = %.lr.ph236, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread
  %indvars.iv250 = phi i64 [ 0, %.lr.ph236 ], [ %indvars.iv.next251, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 12 uses
  %i.ap = phi i1 [ %i.n, %.lr.ph236 ], [ true, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ]
  %i.aq = phi i8 [ %i.m, %.lr.ph236 ], [ 0, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 2 uses
  %.0234 = phi double [ 0.000000e+00, %.lr.ph236 ], [ %.3, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 6 uses
  %i.ar = phi i32 [ %i.k, %.lr.ph236 ], [ %.pr, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ]
  %i.as = icmp eq i64 %indvars.iv250, 0
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !29  ; 9 uses
  br i1 %i.as, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !536 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !536 ; 2 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge216, label %.lr.ph215

._crit_edge216:                                   ; preds = %bb.e, %bb.c
  %.0125.lcssa = phi i32 [ 0, %bb.c ], [ %.1126, %bb.e ] ; 3 uses
  %.0123.lcssa = phi i64 [ 0, %bb.c ], [ %.1124, %bb.e ] ; 6 uses
  %.1.lcssa = phi double [ %.0234, %bb.c ], [ %i.bd, %bb.e ] ; 8 uses
  %i.ay = icmp ne i8 %i.aq, 1
  %brmerge = select i1 %i.ay, i1 true, i1 %.not133220
  br i1 %brmerge, label %.loopexit205, label %.lr.ph223.preheader

.lr.ph223.preheader:                              ; preds = %._crit_edge216
  br i1 %i.al, label %.lr.ph223.epil.preheader, label %.lr.ph223

.lr.ph215:                                        ; preds = %bb.c, %bb.e
  %.1213 = phi double [ %i.bd, %bb.e ], [ %.0234, %bb.c ]
  %.0123212 = phi i64 [ %.1124, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.0125211 = phi i32 [ %.1126, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0185.0210 = phi ptr [ %i.bl, %bb.e ], [ %i.au, %bb.c ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.0185.0210, align 8, !tbaa !225 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !437
  %i.bc = uitofp i64 %i.bb to double
  %i.bd = fadd double %.1213, %i.bc               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph215
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1226
  %i.bj = add i64 %i.bi, %.0123212
  %i.bk = add nsw i32 %.0125211, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph215
  %.1126 = phi i32 [ %.0125211, %.lr.ph215 ], [ %i.bk, %bb.d ] ; 2 uses
  %.1124 = phi i64 [ %.0123212, %.lr.ph215 ], [ %i.bj, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0185.0210, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw
  br i1 %i.bm, label %._crit_edge216, label %.lr.ph215

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %bb.j ], [ 1, %.lr.ph223.preheader ] ; 5 uses
  %.2127221 = phi i32 [ %.3128.3, %bb.j ], [ %.0125.lcssa, %.lr.ph223.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %bb.j ], [ 0, %.lr.ph223.preheader ]
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !536 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !536
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph223.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph223
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !225
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 188
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.bv = xor i8 %i.bu, 1
  %i.bw = zext nneg i8 %i.bv to i32
  %spec.select = add nsw i32 %.2127221, %i.bw
  br label %.lr.ph223.1

.lr.ph223.1:                                      ; preds = %bb.f, %.lr.ph223
  %.3128 = phi i32 [ %.2127221, %.lr.ph223 ], [ %spec.select, %bb.f ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !536 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !536
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %.lr.ph223.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph223.1
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !225
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 188
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.cg = xor i8 %i.cf, 1
  %i.ch = zext nneg i8 %i.cg to i32
  %spec.select.1 = add nsw i32 %.3128, %i.ch
  br label %.lr.ph223.2

.lr.ph223.2:                                      ; preds = %bb.g, %.lr.ph223.1
  %.3128.1 = phi i32 [ %.3128, %.lr.ph223.1 ], [ %spec.select.1, %bb.g ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !536 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !536
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %.lr.ph223.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph223.2
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !225
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 188
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.cr = xor i8 %i.cq, 1
  %i.cs = zext nneg i8 %i.cr to i32
  %spec.select.2 = add nsw i32 %.3128.1, %i.cs
  br label %.lr.ph223.3

.lr.ph223.3:                                      ; preds = %bb.h, %.lr.ph223.2
  %.3128.2 = phi i32 [ %.3128.1, %.lr.ph223.2 ], [ %spec.select.2, %bb.h ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !536 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !536
  %i.cy = icmp eq ptr %i.cv, %i.cx
  br i1 %i.cy, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph223.3
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !225
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 188
  %i.db = load i8, ptr %i.da, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.dc = xor i8 %i.db, 1
  %i.dd = zext nneg i8 %i.dc to i32
  %spec.select.3 = add nsw i32 %.3128.2, %i.dd
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph223.3
  %.3128.3 = phi i32 [ %.3128.2, %.lr.ph223.3 ], [ %spec.select.3, %bb.i ] ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit205.loopexit.unr-lcssa, label %.lr.ph223, !llvm.loop !1369

.loopexit205.loopexit.unr-lcssa:                  ; preds = %bb.j
  br i1 %lcmp.mod.not, label %.loopexit205, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %.loopexit205.loopexit.unr-lcssa, %.lr.ph223.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph223.preheader ], [ %indvars.iv.next.3, %.loopexit205.loopexit.unr-lcssa ]
  %.2127221.epil.init = phi i32 [ %.0125.lcssa, %.lr.ph223.preheader ], [ %.3128.3, %.loopexit205.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod342)
  br label %.lr.ph223.epil

.lr.ph223.epil:                                   ; preds = %bb.l, %.lr.ph223.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.l ], [ %indvars.iv.epil.init, %.lr.ph223.epil.preheader ] ; 2 uses
  %.2127221.epil = phi i32 [ %.3128.epil, %bb.l ], [ %.2127221.epil.init, %.lr.ph223.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.lr.ph223.epil.preheader ]
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv.epil ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !536 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !536
  %i.di = icmp eq ptr %i.df, %i.dh
  br i1 %i.di, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph223.epil
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !225
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 188
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.dm = xor i8 %i.dl, 1
  %i.dn = zext nneg i8 %i.dm to i32
  %spec.select.epil = add nsw i32 %.2127221.epil, %i.dn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph223.epil
  %.3128.epil = phi i32 [ %.2127221.epil, %.lr.ph223.epil ], [ %spec.select.epil, %bb.k ] ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit205, label %.lr.ph223.epil, !llvm.loop !1370

.loopexit205:                                     ; preds = %.loopexit205.loopexit.unr-lcssa, %bb.l, %._crit_edge216
  %.4 = phi i32 [ %.0125.lcssa, %._crit_edge216 ], [ %.3128.3, %.loopexit205.loopexit.unr-lcssa ], [ %.3128.epil, %bb.l ] ; 2 uses
  %i.do = icmp eq i8 %i.aq, 2
  br i1 %i.do, label %bb.m, label %bb.au

bb.m:                                             ; preds = %.loopexit205
  %i.dp = load i64, ptr %i.w, align 8, !tbaa !1371
  %.not135 = icmp eq i64 %i.dp, 0
  br i1 %.not135, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.x, align 8, !tbaa !734, !noalias !1372 ; 2 uses
  %i.dr = load ptr, ptr %i.y, align 16, !tbaa !734, !noalias !1372 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.01421.i = phi i64 [ %i.dw, %.lr.ph.i ], [ 0, %bb.n ]
  %.sroa.016.019.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %i.dq, %bb.n ] ; 2 uses
  %i.dt = load ptr, ptr %.sroa.016.019.i, align 8, !tbaa !763, !noalias !1372
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !766, !noalias !1372
  %i.dv = call noundef i64 @_ZNK7rocksdb22SharedBlobFileMetaData15GetBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.du), !noalias !1372
  %i.dw = add i64 %i.dv, %.01421.i                ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.016.019.i, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dr
  br i1 %i.dy, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit: ; preds = %.lr.ph.i, %bb.n
  %.014.lcssa.i = phi i64 [ 0, %bb.n ], [ %i.dw, %.lr.ph.i ]
  %i.dz = add i64 %.014.lcssa.i, %.0123.lcssa
  br label %bb.o

bb.o:                                             ; preds = %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, %bb.m
  %.0121 = phi i64 [ %i.dz, %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit ], [ %.0123.lcssa, %bb.m ]
  %.0120.in = phi ptr [ %i.w, %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit ], [ %i.v, %bb.m ]
  %.0120 = load i64, ptr %.0120.in, align 8, !tbaa !439
  %spec.store.select = call i64 @llvm.umax.i64(i64 %.0120, i64 1)
  %i.ea = uitofp i64 %.0121 to double
  %i.eb = uitofp i64 %spec.store.select to double
  %i.ec = fdiv double %i.ea, %i.eb                ; 5 uses
  %i.ed = fcmp olt double %i.ec, 1.000000e+00
  br i1 %i.ed, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ee = load i8, ptr %i.z, align 8, !tbaa !1375, !range !470, !noundef !471
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eg = sitofp i32 %.4 to double
  %i.eh = load i32, ptr %i.s, align 8, !tbaa !1358
  %i.ei = sitofp i32 %i.eh to double
  %i.ej = fdiv double %i.eg, %i.ei                ; 2 uses
  %i.ek = fcmp olt double %i.ej, %i.ec
  %.sroa.speculated181 = select i1 %i.ek, double %i.ec, double %i.ej
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0197 = phi double [ %.sroa.speculated181, %bb.q ], [ %i.ec, %bb.p ], [ %i.ec, %bb.o ] ; 5 uses
  %i.el = fcmp olt double %.0197, 1.000000e+00
  br i1 %i.el, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.em = load i64, ptr %i.aa, align 8, !tbaa !1275
  %.not136 = icmp eq i64 %i.em, 0
  br i1 %.not136, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !29  ; 2 uses
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !474 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  %i.eo = load ptr, ptr %.val, align 8, !tbaa !22
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 200
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull %i.b), !inline_history !1376
  %i.er = load i8, ptr %5, align 8, !tbaa !454
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  %i.et = load i64, ptr %i.b, align 8, !tbaa !439
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !536 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !536 ; 2 uses
  %i.ex = icmp eq ptr %i.eu, %i.ew
  br i1 %i.ex, label %.loopexit.i, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %bb.u, %bb.z
  %.0146.i = phi i32 [ %.2.i, %bb.z ], [ 0, %bb.u ] ; 3 uses
  %.sroa.01.05.i = phi ptr [ %i.fj, %bb.z ], [ %i.eu, %bb.u ] ; 2 uses
  %i.ey = load ptr, ptr %.sroa.01.05.i, align 8, !tbaa !225 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 188
  %i.fa = load i8, ptr %i.ez, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i140
  %i.fc = invoke noundef i64 @_ZN7rocksdb12FileMetaData24TryGetOldestAncesterTimeEv(ptr noundef nonnull align 8 dereferenceable(417) %i.ey)
          to label %bb.w unwind label %bb.y       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fd = load i64, ptr %i.aa, align 8, !tbaa !1275
  %i.fe = sub i64 %i.et, %i.fd
  %i.ff = icmp ult i64 %i.fc, %i.fe
  %i.fg = zext i1 %i.ff to i32
  %spec.select.i = add i32 %.0146.i, %i.fg
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %i.ac, align 8, !tbaa !442 ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i17.i, label %_ZN7rocksdb6StatusD2Ev.exit19.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18.i

bb.z:                                             ; preds = %bb.x, %bb.w, %.lr.ph.i140
  %.2.i = phi i32 [ %.0146.i, %.lr.ph.i140 ], [ %.0146.i, %bb.w ], [ %spec.select.i, %bb.x ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ew
  br i1 %i.fk, label %.loopexit.i.loopexit, label %.lr.ph.i140

.loopexit.i.loopexit:                             ; preds = %bb.z
  %i.fl = uitofp i32 %.2.i to double
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.u, %bb.t
  %.3.i = phi double [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.u ], [ %i.fl, %.loopexit.i.loopexit ] ; 2 uses
  %i.fm = load ptr, ptr %i.ac, align 8, !tbaa !442 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb12_GLOBAL__N_123GetExpiredTtlFilesCountERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %.loopexit.i
  call void @_ZdaPv(ptr noundef nonnull %i.fm) #43
  br label %_ZN7rocksdb12_GLOBAL__N_123GetExpiredTtlFilesCountERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18.i: ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.fi) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit19.i

common.resume:                                    ; preds = %_ZN7rocksdb6StatusD2Ev.exit65.i, %_ZN7rocksdb6StatusD2Ev.exit19.i
  %common.resume.op = phi { ptr, i32 } [ %i.fh, %_ZN7rocksdb6StatusD2Ev.exit19.i ], [ %i.hb, %_ZN7rocksdb6StatusD2Ev.exit65.i ]
  resume { ptr, i32 } %common.resume.op

_ZN7rocksdb6StatusD2Ev.exit19.i:                  ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  br label %common.resume

_ZN7rocksdb12_GLOBAL__N_123GetExpiredTtlFilesCountERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit: ; preds = %.loopexit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  %i.fn = fcmp ogt double %.0197, %.3.i
  %.sroa.speculated177 = select i1 %i.fn, double %.0197, double %.3.i
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_123GetExpiredTtlFilesCountERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit, %bb.s, %bb.r
  %.1198 = phi double [ %.0197, %bb.s ], [ %.sroa.speculated177, %_ZN7rocksdb12_GLOBAL__N_123GetExpiredTtlFilesCountERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit ], [ %.0197, %bb.r ] ; 9 uses
  %i.fo = fcmp olt double %.1198, 1.000000e+00
  br i1 %i.fo, label %bb.ab, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.fp = load ptr, ptr %i.o, align 8, !tbaa !29  ; 4 uses
  %.val137 = load ptr, ptr %i.ab, align 8         ; 2 uses
  %i.fq = load ptr, ptr %i.ad, align 8, !tbaa !1062
  %i.fr = load ptr, ptr %i.ae, align 8, !tbaa !1062
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !536
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !536
  %i.fw = icmp eq ptr %i.ft, %i.fv
  br i1 %i.fw, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  %i.fx = load ptr, ptr %.val137, align 8, !tbaa !22
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 200
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %.val137, ptr noundef nonnull %i.a), !inline_history !1377
  %i.ga = load i64, ptr %i.a, align 8, !tbaa !439 ; 12 uses
  %i.gb = load i8, ptr %4, align 8, !tbaa !454
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %bb.ae, label %.thread20.i

bb.ae:                                            ; preds = %bb.ad
  %i.gd = load ptr, ptr %i.ad, align 8, !tbaa !426
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !1378 ; 2 uses
  %.not.i144 = icmp ult i64 %i.ga, %i.gf
  br i1 %.not.i144, label %.thread20.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gg = sub nuw i64 %i.ga, %i.gf
  %i.gh = load ptr, ptr %i.fu, align 8, !tbaa !222 ; 2 uses
  %i.gi = load ptr, ptr %i.fp, align 8, !tbaa !113 ; 2 uses
  %.not5628.i = icmp eq ptr %i.gh, %i.gi
  br i1 %.not5628.i, label %.thread20.i, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.af
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = ashr exact i64 %i.gl, 3
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.thread7.i, %.lr.ph32.preheader.i
  %.04530.i = phi i64 [ %i.gn, %.thread7.i ], [ %i.gm, %.lr.ph32.preheader.i ] ; 3 uses
  %i.gn = add i64 %.04530.i, -1                   ; 3 uses
  %i.go = load ptr, ptr %i.fp, align 8, !tbaa !113 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gn
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !225 ; 3 uses
  %i.gr = icmp eq i64 %.04530.i, 1
  br i1 %i.gr, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph32.i
  %i.gs = getelementptr [8 x i8], ptr %i.go, i64 %.04530.i
  %i.gt = getelementptr i8, ptr %i.gs, i64 -16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !225
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph32.i
  %i.gv = phi ptr [ %i.gu, %bb.ag ], [ null, %.lr.ph32.i ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 188
  %i.gx = load i8, ptr %i.gw, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %.thread7.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gz = invoke noundef i64 @_ZN7rocksdb12FileMetaData19TryGetNewestKeyTimeEPS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.gq, ptr noundef %i.gv)
          to label %bb.aj unwind label %bb.ak     ; 7 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %.thread7.i, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %i.af, align 8, !tbaa !442 ; 2 uses
  %.not.i.i63.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i63.i, label %_ZN7rocksdb6StatusD2Ev.exit65.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i64.i

bb.al:                                            ; preds = %bb.aj
  %i.hd = icmp ugt i64 %i.gz, %i.gg
  br i1 %i.hd, label %.thread20.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = load ptr, ptr %i.ad, align 8, !tbaa !426 ; 7 uses
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !1380 ; 3 uses
  %i.hg = load ptr, ptr %i.ae, align 8, !tbaa !1061
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = ashr exact i64 %i.hj, 4                 ; 3 uses
  %i.hl = icmp ugt i64 %i.hk, 1
  br i1 %i.hl, label %.lr.ph.i145.preheader, label %._crit_edge.i

.lr.ph.i145.preheader:                            ; preds = %bb.am
  %i.hm = add nsw i64 %i.hk, -1                   ; 2 uses
  %i.hn = add nsw i64 %i.hk, -2
  %xtraiter343 = and i64 %i.hm, 3                 ; 3 uses
  %i.ho = icmp ult i64 %i.hn, 3
  br i1 %i.ho, label %.lr.ph.i145.epil.preheader, label %.lr.ph.i145.preheader.new

.lr.ph.i145.preheader.new:                        ; preds = %.lr.ph.i145.preheader
  %unroll_iter348 = and i64 %i.hm, -4
  br label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %bb.ar, %.lr.ph.i145.preheader.new
  %.027.i = phi i64 [ 1, %.lr.ph.i145.preheader.new ], [ %i.im, %bb.ar ] ; 5 uses
  %.04626.i = phi i8 [ %i.hf, %.lr.ph.i145.preheader.new ], [ %.1.i.3, %bb.ar ]
  %niter349 = phi i64 [ 0, %.lr.ph.i145.preheader.new ], [ %niter349.next.3, %bb.ar ]
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %.027.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !1378 ; 2 uses
  %.not59.i = icmp ult i64 %i.ga, %i.hr
  %i.hs = sub i64 %i.ga, %i.hr
  %.not60.i = icmp ugt i64 %i.gz, %i.hs
  %or.cond.i = or i1 %.not59.i, %.not60.i
  br i1 %or.cond.i, label %.lr.ph.i145.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i145
  %i.ht = load i8, ptr %i.hp, align 8, !tbaa !1380
  br label %.lr.ph.i145.1

.lr.ph.i145.1:                                    ; preds = %bb.an, %.lr.ph.i145
  %.1.i = phi i8 [ %i.ht, %bb.an ], [ %.04626.i, %.lr.ph.i145 ]
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %.027.i ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !1378 ; 2 uses
  %.not59.i.1 = icmp ult i64 %i.ga, %i.hw
  %i.hx = sub i64 %i.ga, %i.hw
  %.not60.i.1 = icmp ugt i64 %i.gz, %i.hx
  %or.cond.i.1 = or i1 %.not59.i.1, %.not60.i.1
  br i1 %or.cond.i.1, label %.lr.ph.i145.2, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i145.1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !1380
  br label %.lr.ph.i145.2

.lr.ph.i145.2:                                    ; preds = %bb.ao, %.lr.ph.i145.1
  %.1.i.1 = phi i8 [ %i.hz, %bb.ao ], [ %.1.i, %.lr.ph.i145.1 ]
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %.027.i ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !1378 ; 2 uses
  %.not59.i.2 = icmp ult i64 %i.ga, %i.ic
  %i.id = sub i64 %i.ga, %i.ic
  %.not60.i.2 = icmp ugt i64 %i.gz, %i.id
  %or.cond.i.2 = or i1 %.not59.i.2, %.not60.i.2
  br i1 %or.cond.i.2, label %.lr.ph.i145.3, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i145.2
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !1380
  br label %.lr.ph.i145.3

.lr.ph.i145.3:                                    ; preds = %bb.ap, %.lr.ph.i145.2
  %.1.i.2 = phi i8 [ %i.if, %bb.ap ], [ %.1.i.1, %.lr.ph.i145.2 ]
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %.027.i ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !1378 ; 2 uses
  %.not59.i.3 = icmp ult i64 %i.ga, %i.ii
  %i.ij = sub i64 %i.ga, %i.ii
  %.not60.i.3 = icmp ugt i64 %i.gz, %i.ij
  %or.cond.i.3 = or i1 %.not59.i.3, %.not60.i.3
  br i1 %or.cond.i.3, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i145.3
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !1380
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i145.3
  %.1.i.3 = phi i8 [ %i.il, %bb.aq ], [ %.1.i.2, %.lr.ph.i145.3 ] ; 3 uses
  %i.im = add nuw i64 %.027.i, 4                  ; 2 uses
  %niter349.next.3 = add i64 %niter349, 4         ; 2 uses
  %niter349.ncmp.3 = icmp eq i64 %niter349.next.3, %unroll_iter348
  br i1 %niter349.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i145, !llvm.loop !1381

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.ar
  %lcmp.mod345.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod345.not, label %._crit_edge.i, label %.lr.ph.i145.epil.preheader

.lr.ph.i145.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i145.preheader
  %.027.i.epil.init = phi i64 [ 1, %.lr.ph.i145.preheader ], [ %i.im, %._crit_edge.i.loopexit.unr-lcssa ]
  %.04626.i.epil.init = phi i8 [ %i.hf, %.lr.ph.i145.preheader ], [ %.1.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod347 = icmp ne i64 %xtraiter343, 0
  call void @llvm.assume(i1 %lcmp.mod347)
  br label %.lr.ph.i145.epil

.lr.ph.i145.epil:                                 ; preds = %bb.at, %.lr.ph.i145.epil.preheader
  %.027.i.epil = phi i64 [ %i.is, %bb.at ], [ %.027.i.epil.init, %.lr.ph.i145.epil.preheader ] ; 2 uses
  %.04626.i.epil = phi i8 [ %.1.i.epil, %bb.at ], [ %.04626.i.epil.init, %.lr.ph.i145.epil.preheader ]
  %epil.iter344 = phi i64 [ %epil.iter344.next, %bb.at ], [ 0, %.lr.ph.i145.epil.preheader ]
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %.027.i.epil ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !1378 ; 2 uses
  %.not59.i.epil = icmp ult i64 %i.ga, %i.ip
  %i.iq = sub i64 %i.ga, %i.ip
  %.not60.i.epil = icmp ugt i64 %i.gz, %i.iq
  %or.cond.i.epil = or i1 %.not59.i.epil, %.not60.i.epil
  br i1 %or.cond.i.epil, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i145.epil
  %i.ir = load i8, ptr %i.in, align 8, !tbaa !1380
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i145.epil
  %.1.i.epil = phi i8 [ %i.ir, %bb.as ], [ %.04626.i.epil, %.lr.ph.i145.epil ] ; 2 uses
  %i.is = add nuw i64 %.027.i.epil, 1
  %epil.iter344.next = add i64 %epil.iter344, 1   ; 2 uses
  %epil.iter344.cmp.not = icmp eq i64 %epil.iter344.next, %xtraiter343
  br i1 %epil.iter344.cmp.not, label %._crit_edge.i, label %.lr.ph.i145.epil, !llvm.loop !1382

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.at, %bb.am
  %.046.lcssa.i = phi i8 [ %i.hf, %bb.am ], [ %.1.i.3, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %bb.at ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.gq, i64 191
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !1383
  %.not58.i = icmp eq i8 %i.iu, %.046.lcssa.i
  %cond.fr.i = freeze i1 %.not58.i
  br i1 %cond.fr.i, label %.thread7.i, label %.thread20.i

.thread7.i:                                       ; preds = %._crit_edge.i, %bb.aj, %bb.ah
  %.not56.i = icmp eq i64 %i.gn, 0
  br i1 %.not56.i, label %.thread20.i, label %.lr.ph32.i, !llvm.loop !1384

.thread20.i:                                      ; preds = %.thread7.i, %._crit_edge.i, %bb.al, %bb.af, %bb.ae, %bb.ad
  %.5.i = phi double [ %.1198, %bb.ae ], [ %.1198, %bb.ad ], [ %.1198, %bb.af ], [ 1.100000e+00, %._crit_edge.i ], [ %.1198, %bb.al ], [ %.1198, %.thread7.i ]
  %i.iv = load ptr, ptr %i.af, align 8, !tbaa !442 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i142, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i143

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i143: ; preds = %.thread20.i
  call void @_ZdaPv(ptr noundef nonnull %i.iv) #43
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i64.i: ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.hc) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit65.i

_ZN7rocksdb6StatusD2Ev.exit65.i:                  ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i64.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %common.resume

_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit: ; preds = %.thread20.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.au:                                            ; preds = %.loopexit205
  %i.iw = sitofp i32 %.4 to double
  %i.ix = load i32, ptr %i.s, align 8, !tbaa !1358
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fdiv double %i.iw, %i.iy                ; 5 uses
  %i.ja = icmp sgt i32 %i.ar, 1
  %or.cond = select i1 %i.ap, i1 %i.ja, i1 false
  br i1 %or.cond, label %bb.av, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.av:                                            ; preds = %bb.au
  %i.jb = load i8, ptr %i.p, align 4, !tbaa !1235, !range !470, !noundef !471
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.jd = load i64, ptr %i.t, align 8, !tbaa !1236
  %.not134 = icmp ult i64 %.0123.lcssa, %i.jd
  %i.je = fcmp uge double %i.iz, 1.010000e+00
  %i.jf = select i1 %.not134, i1 true, i1 %i.je
  %.2 = select i1 %i.jf, double %i.iz, double 1.010000e+00 ; 3 uses
  %i.jg = load i32, ptr %i.u, align 16, !tbaa !974
  %i.jh = sext i32 %i.jg to i64                   ; 2 uses
  %i.ji = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jh
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !439 ; 3 uses
  %i.jl = icmp ugt i64 %.0123.lcssa, %i.jk
  br i1 %i.jl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jm = getelementptr inbounds [24 x i8], ptr %i.at, i64 %i.jh ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !536 ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !536 ; 3 uses
  %i.jq = icmp eq ptr %i.jn, %i.jp
  br i1 %i.jq, label %._crit_edge229, label %iter.check

iter.check:                                       ; preds = %bb.ax
  %i.jr = ptrtoaddr ptr %i.jp to i64
  %i.js = ptrtoaddr ptr %i.jn to i64
  %i.jt = add i64 %i.jr, -8
  %i.ju = sub i64 %i.jt, %i.js                    ; 3 uses
  %i.jv = lshr i64 %i.ju, 3
  %i.jw = add nuw nsw i64 %i.jv, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ju, 24
  br i1 %min.iters.check, label %.lr.ph228.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check306 = icmp ult i64 %i.ju, 120
  br i1 %min.iters.check306, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jx = and i64 %i.jw, 12
  %n.vec = and i64 %i.jw, 4611686018427387888     ; 4 uses
  %i.jy = shl i64 %n.vec, 3
  %i.jz = getelementptr i8, ptr %i.jn, i64 %i.jy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ke, %vector.body ]
  %vec.phi307 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kf, %vector.body ]
  %vec.phi308 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kg, %vector.body ]
  %vec.phi309 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kh, %vector.body ]
  %i.ka = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jn, i64 %i.ka ; 4 uses
  %i.kb = getelementptr i8, ptr %next.gep, i64 32
  %i.kc = getelementptr i8, ptr %next.gep, i64 64
  %i.kd = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !225
  %wide.load310 = load <4 x ptr>, ptr %i.kb, align 8, !tbaa !225
  %wide.load311 = load <4 x ptr>, ptr %i.kc, align 8, !tbaa !225
  %wide.load312 = load <4 x ptr>, ptr %i.kd, align 8, !tbaa !225
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 128
  %wide.gep313 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load310, i64 128
  %wide.gep314 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load311, i64 128
  %wide.gep315 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load312, i64 128
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %wide.masked.gather316 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep313, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %wide.masked.gather317 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep314, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %wide.masked.gather318 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep315, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %i.ke = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.kf = add <4 x i64> %wide.masked.gather316, %vec.phi307 ; 2 uses
  %i.kg = add <4 x i64> %wide.masked.gather317, %vec.phi308 ; 2 uses
  %i.kh = add <4 x i64> %wide.masked.gather318, %vec.phi309 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !1385

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.kf, %i.ke
  %bin.rdx319 = add <4 x i64> %i.kg, %bin.rdx
  %bin.rdx320 = add <4 x i64> %i.kh, %bin.rdx319
  %i.kj = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx320) ; 3 uses
  %cmp.n = icmp eq i64 %i.jw, %n.vec
  br i1 %cmp.n, label %._crit_edge229.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph228.preheader, label %vec.epilog.ph, !prof !665

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.kj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec321 = and i64 %i.jw, 4611686018427387900  ; 3 uses
  %i.kk = shl i64 %n.vec321, 3
  %i.kl = getelementptr i8, ptr %i.jn, i64 %i.kk
  %i.km = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index322 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next328, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi323 = phi <4 x i64> [ %i.km, %vec.epilog.ph ], [ %i.ko, %vec.epilog.vector.body ]
  %i.kn = shl i64 %index322, 3
  %next.gep324 = getelementptr i8, ptr %i.jn, i64 %i.kn
  %wide.load325 = load <4 x ptr>, ptr %next.gep324, align 8, !tbaa !225
  %wide.gep326 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load325, i64 128
  %wide.masked.gather327 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep326, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %i.ko = add <4 x i64> %wide.masked.gather327, %vec.phi323 ; 2 uses
  %index.next328 = add nuw i64 %index322, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next328, %n.vec321
  br i1 %i.kp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1386

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.kq = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ko) ; 2 uses
  %cmp.n329 = icmp eq i64 %i.jw, %n.vec321
  br i1 %cmp.n329, label %._crit_edge229.loopexit, label %.lr.ph228.preheader
end_hunk_1
begin_hunk_2_@_ZN7rocksdb18VersionStorageInfo41ComputeBottommostFilesMarkedForCompactionEbPKNS_10ComparatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  br i1 %i.bs, label %bb.r, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %bb.k
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.critedge.us
  br i1 %i.ao, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.av, align 8, !tbaa !1315
  %i.bu = call noundef i64 @_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv(ptr noundef nonnull align 8 dereferenceable(417) %i.bt)
  %.not37.us = icmp sgt i64 %i.bu, %.031
  br i1 %.not37.us, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.us)
  br label %bb.r

bb.q:                                             ; preds = %.critedge.us
  call void @_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.us)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %.lr.ph.split.us
  %i.bv = add nuw i64 %.sroa.5.045.us, 1          ; 2 uses
  %.not43.us = icmp eq i64 %i.bv, %i.ai
  br i1 %.not43.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.v
  %.sroa.5.045.us46 = phi i64 [ %i.cn, %bb.v ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.bw = icmp ult i64 %.sroa.5.045.us46, 8
  %i.bx = load ptr, ptr %i.aj, align 8
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %.sroa.5.045.us46
  %i.bz = load ptr, ptr %i.aa, align 16
  %i.ca = getelementptr [16 x i8], ptr %i.bz, i64 %.sroa.5.045.us46
  %i.cb = getelementptr i8, ptr %i.ca, i64 -128
  %.0.i.i.us47 = select i1 %i.bw, ptr %i.by, ptr %i.cb ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.us47, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1315 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 188
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.split.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1267 ; 3 uses
  %.not36.us48 = icmp eq i64 %i.ci, 0
  br i1 %.not36.us48, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = load i64, ptr %i.ak, align 16, !tbaa !993
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %.critedge.us50, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load i64, ptr %i.g, align 16, !tbaa !439
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cl)
  store i64 %i.cm, ptr %i.g, align 16, !tbaa !980
  br label %bb.v

.critedge.us50:                                   ; preds = %bb.t
  call void @_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.us47)
  br label %bb.v

bb.v:                                             ; preds = %.critedge.us50, %bb.u, %bb.s, %.lr.ph.split.split.us
  %i.cn = add nuw i64 %.sroa.5.045.us46, 1        ; 2 uses
  %.not43.us51 = icmp eq i64 %i.cn, %i.ai
  br i1 %.not43.us51, label %.loopexit, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.ao, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %.pre = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.co = add i64 %i.z, %i.ah
  %xtraiter = and i64 %i.ai, 1
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %.lr.ph.split.split.split.epil.preheader, label %.lr.ph.split.split.split.preheader.new

.lr.ph.split.split.split.preheader.new:           ; preds = %.lr.ph.split.split.split.preheader
  %unroll_iter = and i64 %i.ai, -2
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.aa
  %.sroa.5.045.us52 = phi i64 [ %i.di, %bb.aa ], [ 0, %.lr.ph.split.split ] ; 4 uses
  %i.cq = icmp ult i64 %.sroa.5.045.us52, 8
  %i.cr = load ptr, ptr %i.aj, align 8
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.sroa.5.045.us52
  %i.ct = load ptr, ptr %i.aa, align 16
  %i.cu = getelementptr [16 x i8], ptr %i.ct, i64 %.sroa.5.045.us52
  %i.cv = getelementptr i8, ptr %i.cu, i64 -128
  %.0.i.i.us53 = select i1 %i.cq, ptr %i.cs, ptr %i.cv ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.us53, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1315 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 188
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split.split.us
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !1267 ; 3 uses
  %.not36.us54 = icmp eq i64 %i.dc, 0
  br i1 %.not36.us54, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = load i64, ptr %i.ak, align 16, !tbaa !993
  %i.de = icmp ult i64 %i.dc, %i.dd
  br i1 %i.de, label %.critedge.us56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load i64, ptr %i.g, align 16, !tbaa !439
  %i.dg = call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.df)
  store i64 %i.dg, ptr %i.g, align 16, !tbaa !980
  br label %bb.aa

.critedge.us56:                                   ; preds = %bb.x
  %i.dh = call noundef i64 @_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv(ptr noundef nonnull align 8 dereferenceable(417) %i.cx)
  %.not37.us57 = icmp sgt i64 %i.dh, %.031
  br i1 %.not37.us57, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge.us56
  call void @_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.us53)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge.us56, %bb.y, %bb.w, %.lr.ph.split.split.split.us
  %i.di = add nuw i64 %.sroa.5.045.us52, 1        ; 2 uses
  %.not43.us59 = icmp eq i64 %i.di, %i.ai
  br i1 %.not43.us59, label %.loopexit, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split:                         ; preds = %.critedge.1, %.lr.ph.split.split.split.preheader.new
  %.sroa.5.045 = phi i64 [ 0, %.lr.ph.split.split.split.preheader.new ], [ %i.eo, %.critedge.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.preheader.new ], [ %niter.next.1, %.critedge.1 ]
  %i.dj = icmp ult i64 %.sroa.5.045, 8
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.sroa.5.045
  %i.dl = getelementptr [16 x i8], ptr %i.ad, i64 %.sroa.5.045
  %i.dm = getelementptr i8, ptr %i.dl, i64 -128
  %.0.i.i = select i1 %i.dj, ptr %i.dk, ptr %i.dm
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1315 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 188
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.split.split
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !1267 ; 3 uses
  %.not36 = icmp eq i64 %i.dt, 0
  br i1 %.not36, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = load i64, ptr %i.ak, align 16, !tbaa !993
  %i.dv = icmp ult i64 %i.dt, %i.du
  br i1 %i.dv, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dw = load i64, ptr %i.g, align 16, !tbaa !439
  %i.dx = call i64 @llvm.umin.i64(i64 %i.dt, i64 %i.dw)
  store i64 %i.dx, ptr %i.g, align 16, !tbaa !980
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %.lr.ph.split.split.split, %bb.ab, %bb.ad
  %i.dy = or disjoint i64 %.sroa.5.045, 1         ; 2 uses
  %i.dz = icmp ult i64 %.sroa.5.045, 8
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.dy
  %i.eb = getelementptr [16 x i8], ptr %i.ad, i64 %i.dy
  %i.ec = getelementptr i8, ptr %i.eb, i64 -128
  %.0.i.i.1 = select i1 %i.dz, ptr %i.ea, ptr %i.ec
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1315 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 188
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.critedge.1, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1267 ; 3 uses
  %.not36.1 = icmp eq i64 %i.ej, 0
  br i1 %.not36.1, label %.critedge.1, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = load i64, ptr %i.ak, align 16, !tbaa !993
  %i.el = icmp ult i64 %i.ej, %i.ek
  br i1 %i.el, label %.critedge.1, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = load i64, ptr %i.g, align 16, !tbaa !439
  %i.en = call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.em)
  store i64 %i.en, ptr %i.g, align 16, !tbaa !980
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.ag, %bb.af, %bb.ae, %.critedge
  %i.eo = add nuw i64 %.sroa.5.045, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit86.unr-lcssa, label %.lr.ph.split.split.split

.loopexit.loopexit86.unr-lcssa:                   ; preds = %.critedge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.split.split.epil.preheader

.lr.ph.split.split.split.epil.preheader:          ; preds = %.loopexit.loopexit86.unr-lcssa, %.lr.ph.split.split.split.preheader
  %.sroa.5.045.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.preheader ], [ %i.eo, %.loopexit.loopexit86.unr-lcssa ] ; 3 uses
  %lcmp.mod87 = trunc i64 %i.ai to i1
  call void @llvm.assume(i1 %lcmp.mod87)
  %i.ep = icmp ult i64 %.sroa.5.045.epil.init, 8
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.sroa.5.045.epil.init
  %i.er = getelementptr [16 x i8], ptr %i.ad, i64 %.sroa.5.045.epil.init
  %i.es = getelementptr i8, ptr %i.er, i64 -128
  %.0.i.i.epil = select i1 %i.ep, ptr %i.eq, ptr %i.es
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.epil, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1315 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 188
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split.split.split.epil.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1267 ; 3 uses
  %.not36.epil = icmp eq i64 %i.ez, 0
  br i1 %.not36.epil, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = load i64, ptr %i.ak, align 16, !tbaa !993
  %i.fb = icmp ult i64 %i.ez, %i.fa
  br i1 %i.fb, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = load i64, ptr %i.g, align 16, !tbaa !439
  %i.fd = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.fc)
  store i64 %i.fd, ptr %i.g, align 16, !tbaa !980
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit86.unr-lcssa, %bb.aj, %bb.ai, %bb.ah, %.lr.ph.split.split.split.epil.preheader, %bb.aa, %bb.v, %bb.r, %bb.g, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo22ComputeExpiredTtlFilesERKNS_16ImmutableOptionsEm(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(875) %1, i64 noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 3 uses
  %.pr.i = load i64, ptr %i.d, align 16, !tbaa !126
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.d, align 16, !tbaa !126
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !127 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  %.not.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i, label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.g, align 8, !tbaa !128
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit

_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.k = load i8, ptr %i.j, align 16, !tbaa !973
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !474  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull %i.a)
  %i.q = load i8, ptr %3, align 8, !tbaa !454
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !143
  %i.u = load i32, ptr %i.t, align 16, !tbaa !887 ; 2 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.x = sub i64 %i.s, %2
  br label %bb.f

._crit_edge26:                                    ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.y = phi i32 [ %i.u, %.lr.ph25 ], [ %i.ag, %._crit_edge ]
  %storemerge23 = phi i32 [ 0, %.lr.ph25 ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.aa = sext i32 %storemerge23 to i64
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !536 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !536 ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i32, ptr %i.b, align 4, !tbaa !143
  %.pre27 = load i32, ptr %i.t, align 16, !tbaa !887
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.ag = phi i32 [ %.pre27, %._crit_edge.loopexit ], [ %i.y, %bb.f ] ; 2 uses
  %i.ah = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %storemerge23, %bb.f ]
  %i.ai = add nsw i32 %i.ah, 1                    ; 3 uses
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !143
  %i.aj = add nsw i32 %i.ag, -1
  %i.ak = icmp slt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %._crit_edge26, !llvm.loop !1408

.lr.ph:                                           ; preds = %bb.f, %bb.k
  %.sroa.019.022 = phi ptr [ %i.au, %bb.k ], [ %i.ac, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #42
  %i.al = load ptr, ptr %.sroa.019.022, align 8, !tbaa !225 ; 3 uses
  store ptr %i.al, ptr %i.c, align 8, !tbaa !225
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 188
  %i.an = load i8, ptr %i.am, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ap = invoke noundef i64 @_ZN7rocksdb12FileMetaData24TryGetOldestAncesterTimeEv(ptr noundef nonnull align 8 dereferenceable(417) %i.al)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not13 = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult i64 %i.ap, %i.x
  %or.cond = select i1 %.not13, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE12emplace_backIJRiRS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(168) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !442 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.at, null
  br i1 %.not.i.i16, label %_ZN7rocksdb6StatusD2Ev.exit18, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17

bb.k:                                             ; preds = %bb.h, %bb.i, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.019.022, i64 8 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ae
  br i1 %i.av, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.d, %._crit_edge26
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !442 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %bb.m

bb.m:                                             ; preds = %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, %bb.c, %_ZN7rocksdb6StatusD2Ev.exit
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.at) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit18
end_hunk_2
