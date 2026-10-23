Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Zscaleoffset?download=true
inline.NumInlined: 45
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 65
begin_hunk_0_@H5Z__scaleoffset_precompress_i:bb.a
  br i1 %exitcond3295.not, label %thread-pre-split, label %.lr.ph2784, !llvm.loop !107

.critedge1913.loopexit:                           ; preds = %.lr.ph2784
  %i.ba = trunc nuw i64 %indvars.iv3291 to i32
  br label %.critedge1913

.critedge1913:                                    ; preds = %.critedge1913.loopexit, %.preheader2256
  %.21751.lcssa = phi i32 [ 0, %.preheader2256 ], [ %i.ba, %.critedge1913.loopexit ] ; 2 uses
  %.31766 = phi i8 [ 0, %.preheader2256 ], [ %i.ay, %.critedge1913.loopexit ] ; 3 uses
  %i.bb = icmp ult i32 %.21751.lcssa, %1
  br i1 %i.bb, label %.lr.ph2792.preheader, label %thread-pre-split

.lr.ph2792.preheader:                             ; preds = %.critedge1913
  %i.bc = zext i32 %.21751.lcssa to i64           ; 4 uses
  %wide.trip.count3298 = zext i32 %1 to i64       ; 3 uses
  %i.bd = sub nsw i64 %wide.trip.count3298, %i.bc
  %xtraiter4892 = and i64 %i.bd, 3                ; 2 uses
  %lcmp.mod4893.not = icmp eq i64 %xtraiter4892, 0
  br i1 %lcmp.mod4893.not, label %.lr.ph2792.prol.loopexit, label %.lr.ph2792.prol

.lr.ph2792.prol:                                  ; preds = %.lr.ph2792.preheader, %.lr.ph2792.prol
  %indvars.iv3296.prol = phi i64 [ %indvars.iv.next3297.prol, %.lr.ph2792.prol ], [ %i.bc, %.lr.ph2792.preheader ] ; 2 uses
  %.417672790.prol = phi i8 [ %.51768.prol, %.lr.ph2792.prol ], [ %.31766, %.lr.ph2792.preheader ] ; 2 uses
  %prol.iter4894 = phi i64 [ %prol.iter4894.next, %.lr.ph2792.prol ], [ 0, %.lr.ph2792.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3296.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19  ; 2 uses
  %.not2254.prol = icmp eq i8 %i.bf, %storemerge1909
  %i.bg = tail call i8 @llvm.umin.i8(i8 %i.bf, i8 %.417672790.prol)
  %.51768.prol = select i1 %.not2254.prol, i8 %.417672790.prol, i8 %i.bg ; 3 uses
  %indvars.iv.next3297.prol = add nuw nsw i64 %indvars.iv3296.prol, 1 ; 2 uses
  %prol.iter4894.next = add i64 %prol.iter4894, 1 ; 2 uses
  %prol.iter4894.cmp.not = icmp eq i64 %prol.iter4894.next, %xtraiter4892
  br i1 %prol.iter4894.cmp.not, label %.lr.ph2792.prol.loopexit, label %.lr.ph2792.prol, !llvm.loop !108

.lr.ph2792.prol.loopexit:                         ; preds = %.lr.ph2792.prol, %.lr.ph2792.preheader
  %.51768.lcssa.unr = phi i8 [ poison, %.lr.ph2792.preheader ], [ %.51768.prol, %.lr.ph2792.prol ]
  %indvars.iv3296.unr = phi i64 [ %i.bc, %.lr.ph2792.preheader ], [ %indvars.iv.next3297.prol, %.lr.ph2792.prol ]
  %.417672790.unr = phi i8 [ %.31766, %.lr.ph2792.preheader ], [ %.51768.prol, %.lr.ph2792.prol ]
  %i.bh = sub nsw i64 %i.bc, %wide.trip.count3298
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %thread-pre-split, label %.lr.ph2792

.lr.ph2792:                                       ; preds = %.lr.ph2792.prol.loopexit, %.lr.ph2792
  %indvars.iv3296 = phi i64 [ %indvars.iv.next3297.3, %.lr.ph2792 ], [ %indvars.iv3296.unr, %.lr.ph2792.prol.loopexit ] ; 5 uses
  %.417672790 = phi i8 [ %.51768.3, %.lr.ph2792 ], [ %.417672790.unr, %.lr.ph2792.prol.loopexit ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3296
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !19  ; 2 uses
  %.not2254 = icmp eq i8 %i.bk, %storemerge1909
  %i.bl = tail call i8 @llvm.umin.i8(i8 %i.bk, i8 %.417672790)
  %.51768 = select i1 %.not2254, i8 %.417672790, i8 %i.bl ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3296
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19  ; 2 uses
  %.not2254.1 = icmp eq i8 %i.bo, %storemerge1909
  %i.bp = tail call i8 @llvm.umin.i8(i8 %i.bo, i8 %.51768)
  %.51768.1 = select i1 %.not2254.1, i8 %.51768, i8 %i.bp ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3296
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19  ; 2 uses
  %.not2254.2 = icmp eq i8 %i.bs, %storemerge1909
  %i.bt = tail call i8 @llvm.umin.i8(i8 %i.bs, i8 %.51768.1)
  %.51768.2 = select i1 %.not2254.2, i8 %.51768.1, i8 %i.bt ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3296
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !19  ; 2 uses
  %.not2254.3 = icmp eq i8 %i.bw, %storemerge1909
  %i.bx = tail call i8 @llvm.umin.i8(i8 %i.bw, i8 %.51768.2)
  %.51768.3 = select i1 %.not2254.3, i8 %.51768.2, i8 %i.bx ; 2 uses
  %indvars.iv.next3297.3 = add nuw nsw i64 %indvars.iv3296, 4 ; 2 uses
  %exitcond3299.not.3 = icmp eq i64 %indvars.iv.next3297.3, %wide.trip.count3298
  br i1 %exitcond3299.not.3, label %thread-pre-split, label %.lr.ph2792, !llvm.loop !109

thread-pre-split:                                 ; preds = %bb.g, %.lr.ph2792.prol.loopexit, %.lr.ph2792, %.critedge1913, %H5Z__scaleoffset_log2.exit
  %i.by = phi i32 [ %.011.i, %H5Z__scaleoffset_log2.exit ], [ %i.n, %.lr.ph2792.prol.loopexit ], [ %i.n, %.critedge1913 ], [ %i.n, %.lr.ph2792 ], [ %i.n, %bb.g ]
  %.61769 = phi i8 [ %.11764.lcssa, %H5Z__scaleoffset_log2.exit ], [ %.51768.3, %.lr.ph2792 ], [ %.31766, %.critedge1913 ], [ %.51768.lcssa.unr, %.lr.ph2792.prol.loopexit ], [ 0, %bb.g ] ; 4 uses
  %.not1910 = icmp ne i32 %i.by, 8
  %i.bz = icmp ne i32 %1, 0
  %or.cond = and i1 %.not1910, %i.bz
  br i1 %or.cond, label %.lr.ph2809, label %.loopexit

.lr.ph2809:                                       ; preds = %thread-pre-split
  %i.ca = zext i8 %.61769 to i32                  ; 3 uses
  %wide.trip.count3312 = zext i32 %1 to i64       ; 2 uses
  %xtraiter4899 = and i64 %wide.trip.count3312, 1
  %i.cb = icmp eq i32 %1, 1
  br i1 %i.cb, label %.epil.preheader4898, label %.lr.ph2809.new

.lr.ph2809.new:                                   ; preds = %.lr.ph2809
  %unroll_iter4903 = and i64 %wide.trip.count3312, 4294967294
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %.lr.ph2809.new
  %indvars.iv3309 = phi i64 [ 0, %.lr.ph2809.new ], [ %indvars.iv.next3310.1, %bb.n ] ; 3 uses
  %niter4904 = phi i64 [ 0, %.lr.ph2809.new ], [ %niter4904.next.1, %bb.n ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3309 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !19  ; 2 uses
  %i.ce = icmp eq i8 %i.cd, %storemerge1909
  br i1 %i.ce, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %5, align 4, !tbaa !16
  %notmask1911 = shl nsw i32 -1, %i.cf
  %i.cg = xor i32 %notmask1911, -1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ch = zext i8 %i.cd to i32
  %i.ci = sub nsw i32 %i.ch, %i.ca
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cj = phi i32 [ %i.cg, %bb.i ], [ %i.ci, %bb.j ]
  %i.ck = trunc i32 %i.cj to i8
  store i8 %i.ck, ptr %i.cc, align 1, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3309
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !19  ; 2 uses
  %i.co = icmp eq i8 %i.cn, %storemerge1909
  br i1 %i.co, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = zext i8 %i.cn to i32
  %i.cq = sub nsw i32 %i.cp, %i.ca
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cr = load i32, ptr %5, align 4, !tbaa !16
  %notmask1911.1 = shl nsw i32 -1, %i.cr
  %i.cs = xor i32 %notmask1911.1, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ct = phi i32 [ %i.cs, %bb.m ], [ %i.cq, %bb.l ]
  %i.cu = trunc i32 %i.ct to i8
  store i8 %i.cu, ptr %i.cm, align 1, !tbaa !19
  %indvars.iv.next3310.1 = add nuw nsw i64 %indvars.iv3309, 2 ; 2 uses
  %niter4904.next.1 = add i64 %niter4904, 2       ; 2 uses
  %niter4904.ncmp.1 = icmp eq i64 %niter4904.next.1, %unroll_iter4903
  br i1 %niter4904.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !110

bb.o:                                             ; preds = %bb.b
  %i.cv = load i32, ptr %5, align 4, !tbaa !16    ; 4 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = load i8, ptr %0, align 1, !tbaa !19     ; 11 uses
  %.not2866 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.cw, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %.not2866, label %._crit_edge2778, label %iter.check4519

iter.check4519:                                   ; preds = %bb.p
  %wide.trip.count3284 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4496 = icmp ult i32 %1, 4
  br i1 %min.iters.check4496, label %.lr.ph2777.preheader, label %vector.main.loop.iter.check4497

vector.main.loop.iter.check4497:                  ; preds = %iter.check4519
  %min.iters.check4498 = icmp ult i32 %1, 32
  br i1 %min.iters.check4498, label %vec.epilog.ph4523, label %vector.ph4499

vector.ph4499:                                    ; preds = %vector.main.loop.iter.check4497
  %i.cy = and i64 %wide.trip.count3284, 28
  %n.vec4500 = and i64 %wide.trip.count3284, 4294967264 ; 4 uses
  %broadcast.splatinsert4501 = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %broadcast.splat4502 = shufflevector <16 x i8> %broadcast.splatinsert4501, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body4503

vector.body4503:                                  ; preds = %vector.ph4499, %vector.body4503
  %index4504 = phi i64 [ 0, %vector.ph4499 ], [ %index.next4511, %vector.body4503 ] ; 2 uses
  %vec.phi4505 = phi <16 x i8> [ %broadcast.splat4502, %vector.ph4499 ], [ %i.db, %vector.body4503 ]
  %vec.phi4506 = phi <16 x i8> [ %broadcast.splat4502, %vector.ph4499 ], [ %i.dc, %vector.body4503 ]
  %vec.phi4507 = phi <16 x i8> [ %broadcast.splat4502, %vector.ph4499 ], [ %i.dd, %vector.body4503 ]
  %vec.phi4508 = phi <16 x i8> [ %broadcast.splat4502, %vector.ph4499 ], [ %i.de, %vector.body4503 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %index4504 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load4509 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !19 ; 2 uses
  %wide.load4510 = load <16 x i8>, ptr %i.da, align 1, !tbaa !19 ; 2 uses
  %i.db = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load4509, <16 x i8> %vec.phi4505) ; 2 uses
  %i.dc = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load4510, <16 x i8> %vec.phi4506) ; 2 uses
  %i.dd = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load4509, <16 x i8> %vec.phi4507) ; 2 uses
  %i.de = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load4510, <16 x i8> %vec.phi4508) ; 2 uses
  %index.next4511 = add nuw i64 %index4504, 32    ; 2 uses
  %i.df = icmp eq i64 %index.next4511, %n.vec4500
  br i1 %i.df, label %middle.block4512, label %vector.body4503, !llvm.loop !111

middle.block4512:                                 ; preds = %vector.body4503
  %rdx.minmax4513 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.db, <16 x i8> %i.dc)
  %i.dg = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax4513) ; 3 uses
  %rdx.minmax4514 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.dd, <16 x i8> %i.de)
  %i.dh = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax4514) ; 3 uses
  %cmp.n4515 = icmp eq i64 %n.vec4500, %wide.trip.count3284
  br i1 %cmp.n4515, label %._crit_edge2778, label %vec.epilog.iter.check4521

vec.epilog.iter.check4521:                        ; preds = %middle.block4512
  %min.epilog.iters.check4522 = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check4522, label %.lr.ph2777.preheader, label %vec.epilog.ph4523, !prof !23

vec.epilog.ph4523:                                ; preds = %vector.main.loop.iter.check4497, %vec.epilog.iter.check4521
  %vec.epilog.resume.val4516 = phi i64 [ %n.vec4500, %vec.epilog.iter.check4521 ], [ 0, %vector.main.loop.iter.check4497 ]
  %bc.merge.rdx4517 = phi i8 [ %i.dg, %vec.epilog.iter.check4521 ], [ %i.cx, %vector.main.loop.iter.check4497 ]
  %bc.merge.rdx4518 = phi i8 [ %i.dh, %vec.epilog.iter.check4521 ], [ %i.cx, %vector.main.loop.iter.check4497 ]
  %n.vec4524 = and i64 %wide.trip.count3284, 4294967292 ; 3 uses
  %broadcast.splatinsert4525 = insertelement <4 x i8> poison, i8 %bc.merge.rdx4517, i64 0
  %broadcast.splat4526 = shufflevector <4 x i8> %broadcast.splatinsert4525, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert4527 = insertelement <4 x i8> poison, i8 %bc.merge.rdx4518, i64 0
  %broadcast.splat4528 = shufflevector <4 x i8> %broadcast.splatinsert4527, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4529

vec.epilog.vector.body4529:                       ; preds = %vec.epilog.vector.body4529, %vec.epilog.ph4523
  %index4530 = phi i64 [ %vec.epilog.resume.val4516, %vec.epilog.ph4523 ], [ %index.next4534, %vec.epilog.vector.body4529 ] ; 2 uses
  %vec.phi4531 = phi <4 x i8> [ %broadcast.splat4526, %vec.epilog.ph4523 ], [ %i.dj, %vec.epilog.vector.body4529 ]
  %vec.phi4532 = phi <4 x i8> [ %broadcast.splat4528, %vec.epilog.ph4523 ], [ %i.dk, %vec.epilog.vector.body4529 ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %index4530
  %wide.load4533 = load <4 x i8>, ptr %i.di, align 1, !tbaa !19 ; 2 uses
  %i.dj = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load4533, <4 x i8> %vec.phi4531) ; 2 uses
  %i.dk = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load4533, <4 x i8> %vec.phi4532) ; 2 uses
  %index.next4534 = add nuw i64 %index4530, 4     ; 2 uses
  %i.dl = icmp eq i64 %index.next4534, %n.vec4524
  br i1 %i.dl, label %vec.epilog.middle.block4535, label %vec.epilog.vector.body4529, !llvm.loop !112

vec.epilog.middle.block4535:                      ; preds = %vec.epilog.vector.body4529
  %i.dm = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.dj) ; 2 uses
  %i.dn = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.dk) ; 2 uses
  %cmp.n4536 = icmp eq i64 %n.vec4524, %wide.trip.count3284
  br i1 %cmp.n4536, label %._crit_edge2778, label %.lr.ph2777.preheader

.lr.ph2777.preheader:                             ; preds = %iter.check4519, %vec.epilog.iter.check4521, %vec.epilog.middle.block4535
  %indvars.iv3282.ph = phi i64 [ 0, %iter.check4519 ], [ %n.vec4500, %vec.epilog.iter.check4521 ], [ %n.vec4524, %vec.epilog.middle.block4535 ]
  %.417612774.ph = phi i8 [ %i.cx, %iter.check4519 ], [ %i.dg, %vec.epilog.iter.check4521 ], [ %i.dm, %vec.epilog.middle.block4535 ]
  %.717702773.ph = phi i8 [ %i.cx, %iter.check4519 ], [ %i.dh, %vec.epilog.iter.check4521 ], [ %i.dn, %vec.epilog.middle.block4535 ]
  br label %.lr.ph2777

.lr.ph2777:                                       ; preds = %.lr.ph2777.preheader, %.lr.ph2777
  %indvars.iv3282 = phi i64 [ %indvars.iv.next3283, %.lr.ph2777 ], [ %indvars.iv3282.ph, %.lr.ph2777.preheader ] ; 2 uses
  %.417612774 = phi i8 [ %spec.select1914, %.lr.ph2777 ], [ %.417612774.ph, %.lr.ph2777.preheader ]
  %.717702773 = phi i8 [ %.81771, %.lr.ph2777 ], [ %.717702773.ph, %.lr.ph2777.preheader ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3282
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19  ; 2 uses
  %spec.select1914 = tail call i8 @llvm.umax.i8(i8 %i.dp, i8 %.417612774) ; 2 uses
  %.81771 = tail call i8 @llvm.umin.i8(i8 %i.dp, i8 %.717702773) ; 2 uses
  %indvars.iv.next3283 = add nuw nsw i64 %indvars.iv3282, 1 ; 2 uses
  %exitcond3285.not = icmp eq i64 %indvars.iv.next3283, %wide.trip.count3284
  br i1 %exitcond3285.not, label %._crit_edge2778, label %.lr.ph2777, !llvm.loop !113

._crit_edge2778:                                  ; preds = %.lr.ph2777, %middle.block4512, %vec.epilog.middle.block4535, %bb.p
  %.71770.lcssa = phi i8 [ %i.cx, %bb.p ], [ %i.dn, %vec.epilog.middle.block4535 ], [ %i.dh, %middle.block4512 ], [ %.81771, %.lr.ph2777 ] ; 2 uses
  %.41761.lcssa = phi i8 [ %i.cx, %bb.p ], [ %i.dm, %vec.epilog.middle.block4535 ], [ %i.dg, %middle.block4512 ], [ %spec.select1914, %.lr.ph2777 ]
  %i.dq = zext i8 %.41761.lcssa to i32
  %i.dr = zext i8 %.71770.lcssa to i32
  %i.ds = sub nsw i32 %i.dq, %i.dr                ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 253
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge2778
  store i32 8, ptr %5, align 4, !tbaa !16
  br label %bb.ff

bb.r:                                             ; preds = %._crit_edge2778
  %i.du = add nsw i32 %i.ds, 1
  %i.dv = and i32 %i.du, 255                      ; 8 uses
  %i.dw = zext nneg i32 %i.dv to i64
  %.not13.i1984 = icmp samesign ult i32 %i.dv, 2
  br i1 %.not13.i1984, label %H5Z__scaleoffset_log2.exit1992, label %.lr.ph.i1985

.lr.ph.i1985:                                     ; preds = %bb.r
  %.not.i1988 = icmp samesign ult i32 %i.dv, 4
  br i1 %.not.i1988, label %H5Z__scaleoffset_log2.exit1992, label %.lr.ph.i1985.1

.lr.ph.i1985.1:                                   ; preds = %.lr.ph.i1985
  %.not.i1988.1 = icmp samesign ult i32 %i.dv, 8
  br i1 %.not.i1988.1, label %H5Z__scaleoffset_log2.exit1992, label %.lr.ph.i1985.2

.lr.ph.i1985.2:                                   ; preds = %.lr.ph.i1985.1
  %.not.i1988.2 = icmp samesign ult i32 %i.dv, 16
  br i1 %.not.i1988.2, label %H5Z__scaleoffset_log2.exit1992, label %.lr.ph.i1985.3

.lr.ph.i1985.3:                                   ; preds = %.lr.ph.i1985.2
  %.not.i1988.3 = icmp samesign ult i32 %i.dv, 32
  br i1 %.not.i1988.3, label %H5Z__scaleoffset_log2.exit1992, label %.lr.ph.i1985.4

.lr.ph.i1985.4:                                   ; preds = %.lr.ph.i1985.3
  %.not.i1988.4 = icmp samesign ult i32 %i.dv, 64
  br i1 %.not.i1988.4, label %H5Z__scaleoffset_log2.exit1992, label %.lr.ph.i1985.5

.lr.ph.i1985.5:                                   ; preds = %.lr.ph.i1985.4
  %.not.i1988.5 = icmp samesign ult i32 %i.dv, 128 ; 2 uses
  %spec.select5056 = select i1 %.not.i1988.5, i32 6, i32 7
  %spec.select5057 = select i1 %.not.i1988.5, i64 64, i64 128
  br label %H5Z__scaleoffset_log2.exit1992

H5Z__scaleoffset_log2.exit1992:                   ; preds = %.lr.ph.i1985.5, %.lr.ph.i1985, %.lr.ph.i1985.1, %.lr.ph.i1985.2, %.lr.ph.i1985.3, %.lr.ph.i1985.4, %bb.r
  %.010.lcssa.i1989 = phi i32 [ 0, %bb.r ], [ 1, %.lr.ph.i1985 ], [ 2, %.lr.ph.i1985.1 ], [ 3, %.lr.ph.i1985.2 ], [ 4, %.lr.ph.i1985.3 ], [ 5, %.lr.ph.i1985.4 ], [ %spec.select5056, %.lr.ph.i1985.5 ]
  %.09.lcssa.i1990 = phi i64 [ 1, %bb.r ], [ 2, %.lr.ph.i1985 ], [ 4, %.lr.ph.i1985.1 ], [ 8, %.lr.ph.i1985.2 ], [ 16, %.lr.ph.i1985.3 ], [ 32, %.lr.ph.i1985.4 ], [ %spec.select5057, %.lr.ph.i1985.5 ]
  %i.dx = icmp ne i64 %.09.lcssa.i1990, %i.dw
  %i.dy = zext i1 %i.dx to i32
  %.011.i1991 = add i32 %.010.lcssa.i1989, %i.dy  ; 2 uses
  store i32 %.011.i1991, ptr %5, align 4, !tbaa !16
  br label %thread-pre-split2207

bb.s:                                             ; preds = %bb.o
  br i1 %.not2866, label %.loopexit, label %iter.check4478

iter.check4478:                                   ; preds = %bb.s
  %wide.trip.count3280 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4459 = icmp ult i32 %1, 4
  br i1 %min.iters.check4459, label %.lr.ph2771.preheader, label %vector.main.loop.iter.check4460

vector.main.loop.iter.check4460:                  ; preds = %iter.check4478
  %min.iters.check4461 = icmp ult i32 %1, 32
  br i1 %min.iters.check4461, label %vec.epilog.ph4482, label %vector.ph4462

vector.ph4462:                                    ; preds = %vector.main.loop.iter.check4460
  %i.dz = and i64 %wide.trip.count3280, 28
  %n.vec4463 = and i64 %wide.trip.count3280, 4294967264 ; 4 uses
  %broadcast.splatinsert4464 = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %broadcast.splat4465 = shufflevector <16 x i8> %broadcast.splatinsert4464, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body4466

vector.body4466:                                  ; preds = %vector.ph4462, %vector.body4466
  %index4467 = phi i64 [ 0, %vector.ph4462 ], [ %index.next4472, %vector.body4466 ] ; 2 uses
  %vec.phi4468 = phi <16 x i8> [ %broadcast.splat4465, %vector.ph4462 ], [ %i.ec, %vector.body4466 ]
  %vec.phi4469 = phi <16 x i8> [ %broadcast.splat4465, %vector.ph4462 ], [ %i.ed, %vector.body4466 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %index4467 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load4470 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !19
  %wide.load4471 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !19
  %i.ec = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load4470, <16 x i8> %vec.phi4468) ; 2 uses
  %i.ed = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load4471, <16 x i8> %vec.phi4469) ; 2 uses
  %index.next4472 = add nuw i64 %index4467, 32    ; 2 uses
  %i.ee = icmp eq i64 %index.next4472, %n.vec4463
  br i1 %i.ee, label %middle.block4473, label %vector.body4466, !llvm.loop !114

middle.block4473:                                 ; preds = %vector.body4466
  %rdx.minmax4474 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ec, <16 x i8> %i.ed)
  %i.ef = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax4474) ; 3 uses
  %cmp.n4475 = icmp eq i64 %n.vec4463, %wide.trip.count3280
  br i1 %cmp.n4475, label %thread-pre-split2207, label %vec.epilog.iter.check4480

vec.epilog.iter.check4480:                        ; preds = %middle.block4473
  %min.epilog.iters.check4481 = icmp eq i64 %i.dz, 0
  br i1 %min.epilog.iters.check4481, label %.lr.ph2771.preheader, label %vec.epilog.ph4482, !prof !23

vec.epilog.ph4482:                                ; preds = %vector.main.loop.iter.check4460, %vec.epilog.iter.check4480
  %vec.epilog.resume.val4476 = phi i64 [ %n.vec4463, %vec.epilog.iter.check4480 ], [ 0, %vector.main.loop.iter.check4460 ]
  %bc.merge.rdx4477 = phi i8 [ %i.ef, %vec.epilog.iter.check4480 ], [ %i.cx, %vector.main.loop.iter.check4460 ]
  %n.vec4483 = and i64 %wide.trip.count3280, 4294967292 ; 3 uses
  %broadcast.splatinsert4484 = insertelement <4 x i8> poison, i8 %bc.merge.rdx4477, i64 0
  %broadcast.splat4485 = shufflevector <4 x i8> %broadcast.splatinsert4484, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4486

vec.epilog.vector.body4486:                       ; preds = %vec.epilog.vector.body4486, %vec.epilog.ph4482
  %index4487 = phi i64 [ %vec.epilog.resume.val4476, %vec.epilog.ph4482 ], [ %index.next4490, %vec.epilog.vector.body4486 ] ; 2 uses
  %vec.phi4488 = phi <4 x i8> [ %broadcast.splat4485, %vec.epilog.ph4482 ], [ %i.eh, %vec.epilog.vector.body4486 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %index4487
  %wide.load4489 = load <4 x i8>, ptr %i.eg, align 1, !tbaa !19
  %i.eh = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load4489, <4 x i8> %vec.phi4488) ; 2 uses
  %index.next4490 = add nuw i64 %index4487, 4     ; 2 uses
  %i.ei = icmp eq i64 %index.next4490, %n.vec4483
  br i1 %i.ei, label %vec.epilog.middle.block4491, label %vec.epilog.vector.body4486, !llvm.loop !115

vec.epilog.middle.block4491:                      ; preds = %vec.epilog.vector.body4486
  %i.ej = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.eh) ; 2 uses
  %cmp.n4492 = icmp eq i64 %n.vec4483, %wide.trip.count3280
  br i1 %cmp.n4492, label %thread-pre-split2207, label %.lr.ph2771.preheader

.lr.ph2771.preheader:                             ; preds = %iter.check4478, %vec.epilog.iter.check4480, %vec.epilog.middle.block4491
  %indvars.iv3278.ph = phi i64 [ 0, %iter.check4478 ], [ %n.vec4463, %vec.epilog.iter.check4480 ], [ %n.vec4483, %vec.epilog.middle.block4491 ]
  %.917722768.ph = phi i8 [ %i.cx, %iter.check4478 ], [ %i.ef, %vec.epilog.iter.check4480 ], [ %i.ej, %vec.epilog.middle.block4491 ]
  br label %.lr.ph2771

.lr.ph2771:                                       ; preds = %.lr.ph2771.preheader, %.lr.ph2771
  %indvars.iv3278 = phi i64 [ %indvars.iv.next3279, %.lr.ph2771 ], [ %indvars.iv3278.ph, %.lr.ph2771.preheader ] ; 2 uses
  %.917722768 = phi i8 [ %spec.select1915, %.lr.ph2771 ], [ %.917722768.ph, %.lr.ph2771.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3278
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !19
  %spec.select1915 = tail call i8 @llvm.umin.i8(i8 %i.el, i8 %.917722768) ; 2 uses
  %indvars.iv.next3279 = add nuw nsw i64 %indvars.iv3278, 1 ; 2 uses
  %exitcond3281.not = icmp eq i64 %indvars.iv.next3279, %wide.trip.count3280
  br i1 %exitcond3281.not, label %thread-pre-split2207, label %.lr.ph2771, !llvm.loop !116

thread-pre-split2207:                             ; preds = %.lr.ph2771, %middle.block4473, %vec.epilog.middle.block4491, %H5Z__scaleoffset_log2.exit1992
  %i.em = phi i32 [ %.011.i1991, %H5Z__scaleoffset_log2.exit1992 ], [ %i.cv, %middle.block4473 ], [ %i.cv, %vec.epilog.middle.block4491 ], [ %i.cv, %.lr.ph2771 ]
  %.111774 = phi i8 [ %.71770.lcssa, %H5Z__scaleoffset_log2.exit1992 ], [ %i.ef, %middle.block4473 ], [ %i.ej, %vec.epilog.middle.block4491 ], [ %spec.select1915, %.lr.ph2771 ] ; 7 uses
  %.not1908 = icmp ne i32 %i.em, 8
  %i.en = icmp ne i32 %1, 0
  %or.cond2810 = and i1 %.not1908, %i.en
  br i1 %or.cond2810, label %iter.check4556, label %.loopexit

iter.check4556:                                   ; preds = %thread-pre-split2207
  %wide.trip.count3289 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4541 = icmp ult i32 %1, 4
  br i1 %min.iters.check4541, label %.lr.ph2782.preheader, label %vector.main.loop.iter.check4542

vector.main.loop.iter.check4542:                  ; preds = %iter.check4556
  %min.iters.check4543 = icmp ult i32 %1, 32
  br i1 %min.iters.check4543, label %vec.epilog.ph4560, label %vector.ph4544

vector.ph4544:                                    ; preds = %vector.main.loop.iter.check4542
  %i.eo = and i64 %wide.trip.count3289, 28
  %n.vec4545 = and i64 %wide.trip.count3289, 4294967264 ; 4 uses
  %broadcast.splatinsert4546 = insertelement <16 x i8> poison, i8 %.111774, i64 0
  %broadcast.splat4547 = shufflevector <16 x i8> %broadcast.splatinsert4546, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body4548

vector.body4548:                                  ; preds = %vector.ph4544, %vector.body4548
  %index4549 = phi i64 [ 0, %vector.ph4544 ], [ %index.next4552, %vector.body4548 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %index4549 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load4550 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !19
  %wide.load4551 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !19
  %i.er = sub <16 x i8> %wide.load4550, %broadcast.splat4547
  %i.es = sub <16 x i8> %wide.load4551, %broadcast.splat4547
  store <16 x i8> %i.er, ptr %i.ep, align 1, !tbaa !19
  store <16 x i8> %i.es, ptr %i.eq, align 1, !tbaa !19
  %index.next4552 = add nuw i64 %index4549, 32    ; 2 uses
  %i.et = icmp eq i64 %index.next4552, %n.vec4545
  br i1 %i.et, label %middle.block4553, label %vector.body4548, !llvm.loop !117

middle.block4553:                                 ; preds = %vector.body4548
  %cmp.n4554 = icmp eq i64 %n.vec4545, %wide.trip.count3289
  br i1 %cmp.n4554, label %.loopexit, label %vec.epilog.iter.check4558

vec.epilog.iter.check4558:                        ; preds = %middle.block4553
  %min.epilog.iters.check4559 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check4559, label %.lr.ph2782.preheader, label %vec.epilog.ph4560, !prof !23

vec.epilog.ph4560:                                ; preds = %vector.main.loop.iter.check4542, %vec.epilog.iter.check4558
  %vec.epilog.resume.val4555 = phi i64 [ %n.vec4545, %vec.epilog.iter.check4558 ], [ 0, %vector.main.loop.iter.check4542 ]
  %n.vec4561 = and i64 %wide.trip.count3289, 4294967292 ; 3 uses
  %broadcast.splatinsert4562 = insertelement <4 x i8> poison, i8 %.111774, i64 0
  %broadcast.splat4563 = shufflevector <4 x i8> %broadcast.splatinsert4562, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4564

vec.epilog.vector.body4564:                       ; preds = %vec.epilog.vector.body4564, %vec.epilog.ph4560
  %index4565 = phi i64 [ %vec.epilog.resume.val4555, %vec.epilog.ph4560 ], [ %index.next4567, %vec.epilog.vector.body4564 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %index4565 ; 2 uses
  %wide.load4566 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !19
  %i.ev = sub <4 x i8> %wide.load4566, %broadcast.splat4563
  store <4 x i8> %i.ev, ptr %i.eu, align 1, !tbaa !19
  %index.next4567 = add nuw i64 %index4565, 4     ; 2 uses
  %i.ew = icmp eq i64 %index.next4567, %n.vec4561
  br i1 %i.ew, label %vec.epilog.middle.block4568, label %vec.epilog.vector.body4564, !llvm.loop !118

vec.epilog.middle.block4568:                      ; preds = %vec.epilog.vector.body4564
  %cmp.n4569 = icmp eq i64 %n.vec4561, %wide.trip.count3289
  br i1 %cmp.n4569, label %.loopexit, label %.lr.ph2782.preheader

.lr.ph2782.preheader:                             ; preds = %iter.check4556, %vec.epilog.iter.check4558, %vec.epilog.middle.block4568
  %indvars.iv3286.ph = phi i64 [ 0, %iter.check4556 ], [ %n.vec4545, %vec.epilog.iter.check4558 ], [ %n.vec4561, %vec.epilog.middle.block4568 ]
  br label %.lr.ph2782

.lr.ph2782:                                       ; preds = %.lr.ph2782.preheader, %.lr.ph2782
  %indvars.iv3286 = phi i64 [ %indvars.iv.next3287, %.lr.ph2782 ], [ %indvars.iv3286.ph, %.lr.ph2782.preheader ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3286 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !19
  %i.ez = sub i8 %i.ey, %.111774
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !19
  %indvars.iv.next3287 = add nuw nsw i64 %indvars.iv3286, 1 ; 2 uses
  %exitcond3290.not = icmp eq i64 %indvars.iv.next3287, %wide.trip.count3289
  br i1 %exitcond3290.not, label %.loopexit, label %.lr.ph2782, !llvm.loop !119

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod4901.not = icmp eq i64 %xtraiter4899, 0
  br i1 %lcmp.mod4901.not, label %.loopexit, label %.epil.preheader4898

.epil.preheader4898:                              ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph2809
  %indvars.iv3309.epil.init = phi i64 [ 0, %.lr.ph2809 ], [ %indvars.iv.next3310.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod4902 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod4902)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3309.epil.init ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !19  ; 2 uses
  %i.fc = icmp eq i8 %i.fb, %storemerge1909
  br i1 %i.fc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.epil.preheader4898
  %i.fd = zext i8 %i.fb to i32
  %i.fe = sub nsw i32 %i.fd, %i.ca
  br label %.loopexit.loopexit.epilog-lcssa

bb.u:                                             ; preds = %.epil.preheader4898
  %i.ff = load i32, ptr %5, align 4, !tbaa !16
  %notmask1911.epil = shl nsw i32 -1, %i.ff
  %i.fg = xor i32 %notmask1911.epil, -1
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.u, %bb.t
  %i.fh = phi i32 [ %i.fg, %bb.u ], [ %i.fe, %bb.t ]
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fa, align 1, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph2782, %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %middle.block4553, %vec.epilog.middle.block4568, %bb.s, %thread-pre-split2207, %thread-pre-split
  %.121775 = phi i8 [ %.111774, %thread-pre-split2207 ], [ %.61769, %thread-pre-split ], [ %.111774, %middle.block4553 ], [ %i.cx, %bb.s ], [ %.61769, %.loopexit.loopexit.epilog-lcssa ], [ %.111774, %vec.epilog.middle.block4568 ], [ %.61769, %.loopexit.loopexit.unr-lcssa ], [ %.111774, %.lr.ph2782 ]
  %i.fj = zext i8 %.121775 to i64
  store i64 %i.fj, ptr %6, align 8, !tbaa !18
  br label %bb.ff

bb.v:                                             ; preds = %bb.a
  %i.fk = icmp eq i32 %3, 1
  br i1 %i.fk, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.fl = load i32, ptr @H5T_native_order_g, align 4, !tbaa !16
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !16 ; 2 uses
  %.sroa.52186.0.extract.shift2187 = lshr i32 %i.fo, 16
  %storemerge1905.in = select i1 %i.fm, i32 %i.fo, i32 %.sroa.52186.0.extract.shift2187
  %storemerge1905 = trunc i32 %storemerge1905.in to i16 ; 13 uses
  %i.fp = load i32, ptr %5, align 4, !tbaa !16    ; 5 uses
  %i.fq = icmp eq i32 %i.fp, 0
  %.not2864 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.fq, label %.preheader2261, label %.preheader2262

.preheader2262:                                   ; preds = %bb.w
  br i1 %.not2864, label %.critedge1918, label %.lr.ph2742.preheader

.lr.ph2742.preheader:                             ; preds = %.preheader2262
  %wide.trip.count3258 = zext i32 %1 to i64
  br label %.lr.ph2742

.preheader2261:                                   ; preds = %bb.w
  br i1 %.not2864, label %.critedge1916, label %.lr.ph2753.preheader

.lr.ph2753.preheader:                             ; preds = %.preheader2261
  %wide.trip.count3267 = zext i32 %1 to i64
  br label %.lr.ph2753

.lr.ph2753:                                       ; preds = %.lr.ph2753.preheader, %bb.x
  %indvars.iv3264 = phi i64 [ 0, %.lr.ph2753.preheader ], [ %indvars.iv.next3265, %bb.x ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3264
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !27 ; 2 uses
  %i.ft = icmp eq i16 %i.fs, %storemerge1905
  br i1 %i.ft, label %bb.x, label %.critedge1916.loopexit

bb.x:                                             ; preds = %.lr.ph2753
  %indvars.iv.next3265 = add nuw nsw i64 %indvars.iv3264, 1 ; 2 uses
  %exitcond3268.not = icmp eq i64 %indvars.iv.next3265, %wide.trip.count3267
  br i1 %exitcond3268.not, label %._crit_edge2763, label %.lr.ph2753, !llvm.loop !120

.critedge1916.loopexit:                           ; preds = %.lr.ph2753
  %i.fu = trunc nuw i64 %indvars.iv3264 to i32
  br label %.critedge1916

.critedge1916:                                    ; preds = %.critedge1916.loopexit, %.preheader2261
  %.01713.lcssa = phi i32 [ 0, %.preheader2261 ], [ %i.fu, %.critedge1916.loopexit ] ; 2 uses
  %.01721 = phi i16 [ 0, %.preheader2261 ], [ %i.fs, %.critedge1916.loopexit ] ; 8 uses
  %i.fv = icmp ult i32 %.01713.lcssa, %1
  br i1 %i.fv, label %.lr.ph2762.preheader, label %._crit_edge2763

.lr.ph2762.preheader:                             ; preds = %.critedge1916
  %i.fw = zext i32 %.01713.lcssa to i64           ; 5 uses
  %wide.trip.count3271 = zext i32 %1 to i64       ; 3 uses
end_hunk_0
begin_hunk_1_@H5Z__scaleoffset_precompress_i:bb.a
  br i1 %i.hk, label %thread-pre-split2209, label %.lr.ph2750

.lr.ph2750:                                       ; preds = %.lr.ph2750.prol.loopexit, %.lr.ph2750
  %indvars.iv3260 = phi i64 [ %indvars.iv.next3261.3, %.lr.ph2750 ], [ %indvars.iv3260.unr, %.lr.ph2750.prol.loopexit ] ; 5 uses
  %.417312748 = phi i16 [ %.51732.3, %.lr.ph2750 ], [ %.417312748.unr, %.lr.ph2750.prol.loopexit ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3260
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !27 ; 2 uses
  %.not2253 = icmp eq i16 %i.hm, %storemerge1905
  %i.hn = tail call i16 @llvm.umin.i16(i16 %i.hm, i16 %.417312748)
  %.51732 = select i1 %.not2253, i16 %.417312748, i16 %i.hn ; 2 uses
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3260
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !27 ; 2 uses
  %.not2253.1 = icmp eq i16 %i.hq, %storemerge1905
  %i.hr = tail call i16 @llvm.umin.i16(i16 %i.hq, i16 %.51732)
  %.51732.1 = select i1 %.not2253.1, i16 %.51732, i16 %i.hr ; 2 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3260
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !27 ; 2 uses
  %.not2253.2 = icmp eq i16 %i.hu, %storemerge1905
  %i.hv = tail call i16 @llvm.umin.i16(i16 %i.hu, i16 %.51732.1)
  %.51732.2 = select i1 %.not2253.2, i16 %.51732.1, i16 %i.hv ; 2 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3260
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 6
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !27 ; 2 uses
  %.not2253.3 = icmp eq i16 %i.hy, %storemerge1905
  %i.hz = tail call i16 @llvm.umin.i16(i16 %i.hy, i16 %.51732.2)
  %.51732.3 = select i1 %.not2253.3, i16 %.51732.2, i16 %i.hz ; 2 uses
  %indvars.iv.next3261.3 = add nuw nsw i64 %indvars.iv3260, 4 ; 2 uses
  %exitcond3263.not.3 = icmp eq i64 %indvars.iv.next3261.3, %wide.trip.count3262
  br i1 %exitcond3263.not.3, label %thread-pre-split2209, label %.lr.ph2750, !llvm.loop !124

thread-pre-split2209:                             ; preds = %bb.aa, %.lr.ph2750.prol.loopexit, %.lr.ph2750, %.critedge1918, %H5Z__scaleoffset_log2.exit2001
  %i.ia = phi i32 [ %.011.i2000, %H5Z__scaleoffset_log2.exit2001 ], [ %i.fp, %.lr.ph2750.prol.loopexit ], [ %i.fp, %.critedge1918 ], [ %i.fp, %.lr.ph2750 ], [ %i.fp, %bb.aa ] ; 2 uses
  %.61733 = phi i16 [ %.11728.lcssa, %H5Z__scaleoffset_log2.exit2001 ], [ %.51732.3, %.lr.ph2750 ], [ %.31730, %.critedge1918 ], [ %.51732.lcssa.unr, %.lr.ph2750.prol.loopexit ], [ 0, %bb.aa ] ; 5 uses
  %.not1906 = icmp ne i32 %i.ia, 16
  %i.ib = icmp ne i32 %1, 0
  %or.cond2811 = and i1 %.not1906, %i.ib
  br i1 %or.cond2811, label %iter.check4439, label %.loopexit2260

iter.check4439:                                   ; preds = %thread-pre-split2209
  %notmask1907 = shl nsw i32 -1, %i.ia
  %i.ic = xor i32 %notmask1907, -1                ; 3 uses
  %i.id = zext i16 %.61733 to i32                 ; 3 uses
  %wide.trip.count3276 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4420 = icmp ult i32 %1, 4
  br i1 %min.iters.check4420, label %vec.epilog.scalar.ph4440.preheader, label %vector.main.loop.iter.check4421

vector.main.loop.iter.check4421:                  ; preds = %iter.check4439
  %min.iters.check4422 = icmp ult i32 %1, 16
  br i1 %min.iters.check4422, label %vec.epilog.ph4443, label %vector.ph4423

vector.ph4423:                                    ; preds = %vector.main.loop.iter.check4421
  %i.ie = and i64 %wide.trip.count3276, 12
  %n.vec4424 = and i64 %wide.trip.count3276, 4294967280 ; 4 uses
  %broadcast.splatinsert4425 = insertelement <8 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat4426 = shufflevector <8 x i32> %broadcast.splatinsert4425, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert4427 = insertelement <8 x i32> poison, i32 %i.id, i64 0
  %broadcast.splat4428 = shufflevector <8 x i32> %broadcast.splatinsert4427, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert4429 = insertelement <8 x i16> poison, i16 %storemerge1905, i64 0
  %broadcast.splat4430 = shufflevector <8 x i16> %broadcast.splatinsert4429, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body4431

vector.body4431:                                  ; preds = %vector.ph4423, %vector.body4431
  %index4432 = phi i64 [ 0, %vector.ph4423 ], [ %index.next4435, %vector.body4431 ] ; 2 uses
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4432 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %wide.load4433 = load <8 x i16>, ptr %i.if, align 2, !tbaa !27 ; 2 uses
  %wide.load4434 = load <8 x i16>, ptr %i.ig, align 2, !tbaa !27 ; 2 uses
  %i.ih = icmp eq <8 x i16> %wide.load4433, %broadcast.splat4430
  %i.ii = icmp eq <8 x i16> %wide.load4434, %broadcast.splat4430
  %i.ij = zext <8 x i16> %wide.load4433 to <8 x i32>
  %i.ik = zext <8 x i16> %wide.load4434 to <8 x i32>
  %i.il = sub nsw <8 x i32> %i.ij, %broadcast.splat4428
  %i.im = sub nsw <8 x i32> %i.ik, %broadcast.splat4428
  %i.in = select <8 x i1> %i.ih, <8 x i32> %broadcast.splat4426, <8 x i32> %i.il
  %i.io = select <8 x i1> %i.ii, <8 x i32> %broadcast.splat4426, <8 x i32> %i.im
  %i.ip = trunc <8 x i32> %i.in to <8 x i16>
  %i.iq = trunc <8 x i32> %i.io to <8 x i16>
  store <8 x i16> %i.ip, ptr %i.if, align 2, !tbaa !27
  store <8 x i16> %i.iq, ptr %i.ig, align 2, !tbaa !27
  %index.next4435 = add nuw i64 %index4432, 16    ; 2 uses
  %i.ir = icmp eq i64 %index.next4435, %n.vec4424
  br i1 %i.ir, label %middle.block4436, label %vector.body4431, !llvm.loop !125

middle.block4436:                                 ; preds = %vector.body4431
  %cmp.n4437 = icmp eq i64 %n.vec4424, %wide.trip.count3276
  br i1 %cmp.n4437, label %.loopexit2260, label %vec.epilog.iter.check4441

vec.epilog.iter.check4441:                        ; preds = %middle.block4436
  %min.epilog.iters.check4442 = icmp eq i64 %i.ie, 0
  br i1 %min.epilog.iters.check4442, label %vec.epilog.scalar.ph4440.preheader, label %vec.epilog.ph4443, !prof !25

vec.epilog.ph4443:                                ; preds = %vector.main.loop.iter.check4421, %vec.epilog.iter.check4441
  %vec.epilog.resume.val4438 = phi i64 [ %n.vec4424, %vec.epilog.iter.check4441 ], [ 0, %vector.main.loop.iter.check4421 ]
  %n.vec4444 = and i64 %wide.trip.count3276, 4294967292 ; 3 uses
  %broadcast.splatinsert4445 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat4446 = shufflevector <4 x i32> %broadcast.splatinsert4445, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert4447 = insertelement <4 x i32> poison, i32 %i.id, i64 0
  %broadcast.splat4448 = shufflevector <4 x i32> %broadcast.splatinsert4447, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert4449 = insertelement <4 x i16> poison, i16 %storemerge1905, i64 0
  %broadcast.splat4450 = shufflevector <4 x i16> %broadcast.splatinsert4449, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4451

vec.epilog.vector.body4451:                       ; preds = %vec.epilog.vector.body4451, %vec.epilog.ph4443
  %index4452 = phi i64 [ %vec.epilog.resume.val4438, %vec.epilog.ph4443 ], [ %index.next4454, %vec.epilog.vector.body4451 ] ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4452 ; 2 uses
  %wide.load4453 = load <4 x i16>, ptr %i.is, align 2, !tbaa !27 ; 2 uses
  %i.it = icmp eq <4 x i16> %wide.load4453, %broadcast.splat4450
  %i.iu = zext <4 x i16> %wide.load4453 to <4 x i32>
  %i.iv = sub nsw <4 x i32> %i.iu, %broadcast.splat4448
  %i.iw = select <4 x i1> %i.it, <4 x i32> %broadcast.splat4446, <4 x i32> %i.iv
  %i.ix = trunc <4 x i32> %i.iw to <4 x i16>
  store <4 x i16> %i.ix, ptr %i.is, align 2, !tbaa !27
  %index.next4454 = add nuw i64 %index4452, 4     ; 2 uses
  %i.iy = icmp eq i64 %index.next4454, %n.vec4444
  br i1 %i.iy, label %vec.epilog.middle.block4455, label %vec.epilog.vector.body4451, !llvm.loop !126

vec.epilog.middle.block4455:                      ; preds = %vec.epilog.vector.body4451
  %cmp.n4456 = icmp eq i64 %n.vec4444, %wide.trip.count3276
  br i1 %cmp.n4456, label %.loopexit2260, label %vec.epilog.scalar.ph4440.preheader

vec.epilog.scalar.ph4440.preheader:               ; preds = %iter.check4439, %vec.epilog.iter.check4441, %vec.epilog.middle.block4455
  %indvars.iv3273.ph = phi i64 [ 0, %iter.check4439 ], [ %n.vec4424, %vec.epilog.iter.check4441 ], [ %n.vec4444, %vec.epilog.middle.block4455 ]
  br label %vec.epilog.scalar.ph4440

vec.epilog.scalar.ph4440:                         ; preds = %vec.epilog.scalar.ph4440.preheader, %vec.epilog.scalar.ph4440
  %indvars.iv3273 = phi i64 [ %indvars.iv.next3274, %vec.epilog.scalar.ph4440 ], [ %indvars.iv3273.ph, %vec.epilog.scalar.ph4440.preheader ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3273 ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !27 ; 2 uses
  %i.jb = icmp eq i16 %i.ja, %storemerge1905
  %i.jc = zext i16 %i.ja to i32
  %i.jd = sub nsw i32 %i.jc, %i.id
  %i.je = select i1 %i.jb, i32 %i.ic, i32 %i.jd
  %i.jf = trunc i32 %i.je to i16
  store i16 %i.jf, ptr %i.iz, align 2, !tbaa !27
  %indvars.iv.next3274 = add nuw nsw i64 %indvars.iv3273, 1 ; 2 uses
  %exitcond3277.not = icmp eq i64 %indvars.iv.next3274, %wide.trip.count3276
  br i1 %exitcond3277.not, label %.loopexit2260, label %vec.epilog.scalar.ph4440, !llvm.loop !127

bb.ab:                                            ; preds = %bb.v
  %i.jg = load i32, ptr %5, align 4, !tbaa !16    ; 4 uses
  %i.jh = icmp eq i32 %i.jg, 0
  %i.ji = load i16, ptr %0, align 2, !tbaa !27    ; 11 uses
  %.not2862 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.jh, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not2862, label %._crit_edge2736, label %iter.check4367

iter.check4367:                                   ; preds = %bb.ac
  %wide.trip.count3248 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4344 = icmp ult i32 %1, 4
  br i1 %min.iters.check4344, label %.lr.ph2735.preheader, label %vector.main.loop.iter.check4345

vector.main.loop.iter.check4345:                  ; preds = %iter.check4367
  %min.iters.check4346 = icmp ult i32 %1, 16
  br i1 %min.iters.check4346, label %vec.epilog.ph4371, label %vector.ph4347

vector.ph4347:                                    ; preds = %vector.main.loop.iter.check4345
  %i.jj = and i64 %wide.trip.count3248, 12
  %n.vec4348 = and i64 %wide.trip.count3248, 4294967280 ; 4 uses
  %broadcast.splatinsert4349 = insertelement <8 x i16> poison, i16 %i.ji, i64 0
  %broadcast.splat4350 = shufflevector <8 x i16> %broadcast.splatinsert4349, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body4351

vector.body4351:                                  ; preds = %vector.ph4347, %vector.body4351
  %index4352 = phi i64 [ 0, %vector.ph4347 ], [ %index.next4359, %vector.body4351 ] ; 2 uses
  %vec.phi4353 = phi <8 x i16> [ %broadcast.splat4350, %vector.ph4347 ], [ %i.jm, %vector.body4351 ]
  %vec.phi4354 = phi <8 x i16> [ %broadcast.splat4350, %vector.ph4347 ], [ %i.jn, %vector.body4351 ]
  %vec.phi4355 = phi <8 x i16> [ %broadcast.splat4350, %vector.ph4347 ], [ %i.jo, %vector.body4351 ]
  %vec.phi4356 = phi <8 x i16> [ %broadcast.splat4350, %vector.ph4347 ], [ %i.jp, %vector.body4351 ]
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4352 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load4357 = load <8 x i16>, ptr %i.jk, align 2, !tbaa !27 ; 2 uses
  %wide.load4358 = load <8 x i16>, ptr %i.jl, align 2, !tbaa !27 ; 2 uses
  %i.jm = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load4357, <8 x i16> %vec.phi4353) ; 2 uses
  %i.jn = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load4358, <8 x i16> %vec.phi4354) ; 2 uses
  %i.jo = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load4357, <8 x i16> %vec.phi4355) ; 2 uses
  %i.jp = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load4358, <8 x i16> %vec.phi4356) ; 2 uses
  %index.next4359 = add nuw i64 %index4352, 16    ; 2 uses
  %i.jq = icmp eq i64 %index.next4359, %n.vec4348
  br i1 %i.jq, label %middle.block4360, label %vector.body4351, !llvm.loop !128

middle.block4360:                                 ; preds = %vector.body4351
  %rdx.minmax4361 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.jm, <8 x i16> %i.jn)
  %i.jr = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax4361) ; 3 uses
  %rdx.minmax4362 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.jo, <8 x i16> %i.jp)
  %i.js = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax4362) ; 3 uses
  %cmp.n4363 = icmp eq i64 %n.vec4348, %wide.trip.count3248
  br i1 %cmp.n4363, label %._crit_edge2736, label %vec.epilog.iter.check4369

vec.epilog.iter.check4369:                        ; preds = %middle.block4360
  %min.epilog.iters.check4370 = icmp eq i64 %i.jj, 0
  br i1 %min.epilog.iters.check4370, label %.lr.ph2735.preheader, label %vec.epilog.ph4371, !prof !25

vec.epilog.ph4371:                                ; preds = %vector.main.loop.iter.check4345, %vec.epilog.iter.check4369
  %vec.epilog.resume.val4364 = phi i64 [ %n.vec4348, %vec.epilog.iter.check4369 ], [ 0, %vector.main.loop.iter.check4345 ]
  %bc.merge.rdx4365 = phi i16 [ %i.jr, %vec.epilog.iter.check4369 ], [ %i.ji, %vector.main.loop.iter.check4345 ]
  %bc.merge.rdx4366 = phi i16 [ %i.js, %vec.epilog.iter.check4369 ], [ %i.ji, %vector.main.loop.iter.check4345 ]
  %n.vec4372 = and i64 %wide.trip.count3248, 4294967292 ; 3 uses
  %broadcast.splatinsert4373 = insertelement <4 x i16> poison, i16 %bc.merge.rdx4365, i64 0
  %broadcast.splat4374 = shufflevector <4 x i16> %broadcast.splatinsert4373, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert4375 = insertelement <4 x i16> poison, i16 %bc.merge.rdx4366, i64 0
  %broadcast.splat4376 = shufflevector <4 x i16> %broadcast.splatinsert4375, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4377

vec.epilog.vector.body4377:                       ; preds = %vec.epilog.vector.body4377, %vec.epilog.ph4371
  %index4378 = phi i64 [ %vec.epilog.resume.val4364, %vec.epilog.ph4371 ], [ %index.next4382, %vec.epilog.vector.body4377 ] ; 2 uses
  %vec.phi4379 = phi <4 x i16> [ %broadcast.splat4374, %vec.epilog.ph4371 ], [ %i.ju, %vec.epilog.vector.body4377 ]
  %vec.phi4380 = phi <4 x i16> [ %broadcast.splat4376, %vec.epilog.ph4371 ], [ %i.jv, %vec.epilog.vector.body4377 ]
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4378
  %wide.load4381 = load <4 x i16>, ptr %i.jt, align 2, !tbaa !27 ; 2 uses
  %i.ju = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load4381, <4 x i16> %vec.phi4379) ; 2 uses
  %i.jv = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load4381, <4 x i16> %vec.phi4380) ; 2 uses
  %index.next4382 = add nuw i64 %index4378, 4     ; 2 uses
  %i.jw = icmp eq i64 %index.next4382, %n.vec4372
  br i1 %i.jw, label %vec.epilog.middle.block4383, label %vec.epilog.vector.body4377, !llvm.loop !129

vec.epilog.middle.block4383:                      ; preds = %vec.epilog.vector.body4377
  %i.jx = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ju) ; 2 uses
  %i.jy = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.jv) ; 2 uses
  %cmp.n4384 = icmp eq i64 %n.vec4372, %wide.trip.count3248
  br i1 %cmp.n4384, label %._crit_edge2736, label %.lr.ph2735.preheader

.lr.ph2735.preheader:                             ; preds = %iter.check4367, %vec.epilog.iter.check4369, %vec.epilog.middle.block4383
  %indvars.iv3246.ph = phi i64 [ 0, %iter.check4367 ], [ %n.vec4348, %vec.epilog.iter.check4369 ], [ %n.vec4372, %vec.epilog.middle.block4383 ]
  %.417252732.ph = phi i16 [ %i.ji, %iter.check4367 ], [ %i.jr, %vec.epilog.iter.check4369 ], [ %i.jx, %vec.epilog.middle.block4383 ]
  %.717342731.ph = phi i16 [ %i.ji, %iter.check4367 ], [ %i.js, %vec.epilog.iter.check4369 ], [ %i.jy, %vec.epilog.middle.block4383 ]
  br label %.lr.ph2735

.lr.ph2735:                                       ; preds = %.lr.ph2735.preheader, %.lr.ph2735
  %indvars.iv3246 = phi i64 [ %indvars.iv.next3247, %.lr.ph2735 ], [ %indvars.iv3246.ph, %.lr.ph2735.preheader ] ; 2 uses
  %.417252732 = phi i16 [ %spec.select1920, %.lr.ph2735 ], [ %.417252732.ph, %.lr.ph2735.preheader ]
  %.717342731 = phi i16 [ %.81735, %.lr.ph2735 ], [ %.717342731.ph, %.lr.ph2735.preheader ]
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3246
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !27 ; 2 uses
  %spec.select1920 = tail call i16 @llvm.umax.i16(i16 %i.ka, i16 %.417252732) ; 2 uses
  %.81735 = tail call i16 @llvm.umin.i16(i16 %i.ka, i16 %.717342731) ; 2 uses
  %indvars.iv.next3247 = add nuw nsw i64 %indvars.iv3246, 1 ; 2 uses
  %exitcond3249.not = icmp eq i64 %indvars.iv.next3247, %wide.trip.count3248
  br i1 %exitcond3249.not, label %._crit_edge2736, label %.lr.ph2735, !llvm.loop !130

._crit_edge2736:                                  ; preds = %.lr.ph2735, %middle.block4360, %vec.epilog.middle.block4383, %bb.ac
  %.71734.lcssa = phi i16 [ %i.ji, %bb.ac ], [ %i.jy, %vec.epilog.middle.block4383 ], [ %i.js, %middle.block4360 ], [ %.81735, %.lr.ph2735 ] ; 2 uses
  %.41725.lcssa = phi i16 [ %i.ji, %bb.ac ], [ %i.jx, %vec.epilog.middle.block4383 ], [ %i.jr, %middle.block4360 ], [ %spec.select1920, %.lr.ph2735 ]
  %i.kb = zext i16 %.41725.lcssa to i32
  %i.kc = zext i16 %.71734.lcssa to i32
  %i.kd = sub nsw i32 %i.kb, %i.kc                ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, 65533
  br i1 %i.ke, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge2736
  store i32 16, ptr %5, align 4, !tbaa !16
  br label %bb.ff

bb.ae:                                            ; preds = %._crit_edge2736
  %i.kf = add nsw i32 %i.kd, 1
  %i.kg = and i32 %i.kf, 65535
  %i.kh = zext nneg i32 %i.kg to i64              ; 2 uses
  %i.ki = lshr i64 %i.kh, 1                       ; 2 uses
  %.not13.i2002 = icmp eq i64 %i.ki, 0
  br i1 %.not13.i2002, label %H5Z__scaleoffset_log2.exit2010, label %.lr.ph.i2003

.lr.ph.i2003:                                     ; preds = %bb.ae, %.lr.ph.i2003
  %i.kj = phi i64 [ %i.km, %.lr.ph.i2003 ], [ %i.ki, %bb.ae ]
  %.0915.i2004 = phi i64 [ %i.kl, %.lr.ph.i2003 ], [ 1, %bb.ae ]
  %.01014.i2005 = phi i32 [ %i.kk, %.lr.ph.i2003 ], [ 0, %bb.ae ]
  %i.kk = add nuw nsw i32 %.01014.i2005, 1        ; 2 uses
  %i.kl = shl nuw nsw i64 %.0915.i2004, 1         ; 2 uses
  %i.km = lshr i64 %i.kj, 1                       ; 2 uses
  %.not.i2006 = icmp eq i64 %i.km, 0
  br i1 %.not.i2006, label %H5Z__scaleoffset_log2.exit2010, label %.lr.ph.i2003, !llvm.loop !0

H5Z__scaleoffset_log2.exit2010:                   ; preds = %.lr.ph.i2003, %bb.ae
  %.010.lcssa.i2007 = phi i32 [ 0, %bb.ae ], [ %i.kk, %.lr.ph.i2003 ]
  %.09.lcssa.i2008 = phi i64 [ 1, %bb.ae ], [ %i.kl, %.lr.ph.i2003 ]
  %i.kn = icmp ne i64 %.09.lcssa.i2008, %i.kh
  %i.ko = zext i1 %i.kn to i32
  %.011.i2009 = add i32 %.010.lcssa.i2007, %i.ko  ; 2 uses
  store i32 %.011.i2009, ptr %5, align 4, !tbaa !16
  br label %thread-pre-split2211

bb.af:                                            ; preds = %bb.ab
  br i1 %.not2862, label %.loopexit2260, label %iter.check4326

iter.check4326:                                   ; preds = %bb.af
  %wide.trip.count3244 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4307 = icmp ult i32 %1, 4
  br i1 %min.iters.check4307, label %.lr.ph2729.preheader, label %vector.main.loop.iter.check4308

vector.main.loop.iter.check4308:                  ; preds = %iter.check4326
  %min.iters.check4309 = icmp ult i32 %1, 16
  br i1 %min.iters.check4309, label %vec.epilog.ph4330, label %vector.ph4310

vector.ph4310:                                    ; preds = %vector.main.loop.iter.check4308
  %i.kp = and i64 %wide.trip.count3244, 12
  %n.vec4311 = and i64 %wide.trip.count3244, 4294967280 ; 4 uses
  %broadcast.splatinsert4312 = insertelement <8 x i16> poison, i16 %i.ji, i64 0
  %broadcast.splat4313 = shufflevector <8 x i16> %broadcast.splatinsert4312, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body4314

vector.body4314:                                  ; preds = %vector.ph4310, %vector.body4314
  %index4315 = phi i64 [ 0, %vector.ph4310 ], [ %index.next4320, %vector.body4314 ] ; 2 uses
  %vec.phi4316 = phi <8 x i16> [ %broadcast.splat4313, %vector.ph4310 ], [ %i.ks, %vector.body4314 ]
  %vec.phi4317 = phi <8 x i16> [ %broadcast.splat4313, %vector.ph4310 ], [ %i.kt, %vector.body4314 ]
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4315 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %wide.load4318 = load <8 x i16>, ptr %i.kq, align 2, !tbaa !27
  %wide.load4319 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !27
  %i.ks = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load4318, <8 x i16> %vec.phi4316) ; 2 uses
  %i.kt = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load4319, <8 x i16> %vec.phi4317) ; 2 uses
  %index.next4320 = add nuw i64 %index4315, 16    ; 2 uses
  %i.ku = icmp eq i64 %index.next4320, %n.vec4311
  br i1 %i.ku, label %middle.block4321, label %vector.body4314, !llvm.loop !131

middle.block4321:                                 ; preds = %vector.body4314
  %rdx.minmax4322 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ks, <8 x i16> %i.kt)
  %i.kv = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax4322) ; 3 uses
  %cmp.n4323 = icmp eq i64 %n.vec4311, %wide.trip.count3244
  br i1 %cmp.n4323, label %thread-pre-split2211, label %vec.epilog.iter.check4328

vec.epilog.iter.check4328:                        ; preds = %middle.block4321
  %min.epilog.iters.check4329 = icmp eq i64 %i.kp, 0
  br i1 %min.epilog.iters.check4329, label %.lr.ph2729.preheader, label %vec.epilog.ph4330, !prof !25

vec.epilog.ph4330:                                ; preds = %vector.main.loop.iter.check4308, %vec.epilog.iter.check4328
  %vec.epilog.resume.val4324 = phi i64 [ %n.vec4311, %vec.epilog.iter.check4328 ], [ 0, %vector.main.loop.iter.check4308 ]
  %bc.merge.rdx4325 = phi i16 [ %i.kv, %vec.epilog.iter.check4328 ], [ %i.ji, %vector.main.loop.iter.check4308 ]
  %n.vec4331 = and i64 %wide.trip.count3244, 4294967292 ; 3 uses
  %broadcast.splatinsert4332 = insertelement <4 x i16> poison, i16 %bc.merge.rdx4325, i64 0
  %broadcast.splat4333 = shufflevector <4 x i16> %broadcast.splatinsert4332, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4334

vec.epilog.vector.body4334:                       ; preds = %vec.epilog.vector.body4334, %vec.epilog.ph4330
  %index4335 = phi i64 [ %vec.epilog.resume.val4324, %vec.epilog.ph4330 ], [ %index.next4338, %vec.epilog.vector.body4334 ] ; 2 uses
  %vec.phi4336 = phi <4 x i16> [ %broadcast.splat4333, %vec.epilog.ph4330 ], [ %i.kx, %vec.epilog.vector.body4334 ]
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4335
  %wide.load4337 = load <4 x i16>, ptr %i.kw, align 2, !tbaa !27
  %i.kx = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load4337, <4 x i16> %vec.phi4336) ; 2 uses
  %index.next4338 = add nuw i64 %index4335, 4     ; 2 uses
  %i.ky = icmp eq i64 %index.next4338, %n.vec4331
  br i1 %i.ky, label %vec.epilog.middle.block4339, label %vec.epilog.vector.body4334, !llvm.loop !132

vec.epilog.middle.block4339:                      ; preds = %vec.epilog.vector.body4334
  %i.kz = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.kx) ; 2 uses
  %cmp.n4340 = icmp eq i64 %n.vec4331, %wide.trip.count3244
  br i1 %cmp.n4340, label %thread-pre-split2211, label %.lr.ph2729.preheader

.lr.ph2729.preheader:                             ; preds = %iter.check4326, %vec.epilog.iter.check4328, %vec.epilog.middle.block4339
  %indvars.iv3242.ph = phi i64 [ 0, %iter.check4326 ], [ %n.vec4311, %vec.epilog.iter.check4328 ], [ %n.vec4331, %vec.epilog.middle.block4339 ]
  %.917362726.ph = phi i16 [ %i.ji, %iter.check4326 ], [ %i.kv, %vec.epilog.iter.check4328 ], [ %i.kz, %vec.epilog.middle.block4339 ]
  br label %.lr.ph2729

.lr.ph2729:                                       ; preds = %.lr.ph2729.preheader, %.lr.ph2729
  %indvars.iv3242 = phi i64 [ %indvars.iv.next3243, %.lr.ph2729 ], [ %indvars.iv3242.ph, %.lr.ph2729.preheader ] ; 2 uses
  %.917362726 = phi i16 [ %spec.select1921, %.lr.ph2729 ], [ %.917362726.ph, %.lr.ph2729.preheader ]
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3242
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !27
  %spec.select1921 = tail call i16 @llvm.umin.i16(i16 %i.lb, i16 %.917362726) ; 2 uses
  %indvars.iv.next3243 = add nuw nsw i64 %indvars.iv3242, 1 ; 2 uses
  %exitcond3245.not = icmp eq i64 %indvars.iv.next3243, %wide.trip.count3244
  br i1 %exitcond3245.not, label %thread-pre-split2211, label %.lr.ph2729, !llvm.loop !133

thread-pre-split2211:                             ; preds = %.lr.ph2729, %middle.block4321, %vec.epilog.middle.block4339, %H5Z__scaleoffset_log2.exit2010
  %i.lc = phi i32 [ %.011.i2009, %H5Z__scaleoffset_log2.exit2010 ], [ %i.jg, %middle.block4321 ], [ %i.jg, %vec.epilog.middle.block4339 ], [ %i.jg, %.lr.ph2729 ]
  %.111738 = phi i16 [ %.71734.lcssa, %H5Z__scaleoffset_log2.exit2010 ], [ %i.kv, %middle.block4321 ], [ %i.kz, %vec.epilog.middle.block4339 ], [ %spec.select1921, %.lr.ph2729 ] ; 7 uses
  %.not1904 = icmp ne i32 %i.lc, 16
  %i.ld = icmp ne i32 %1, 0
  %or.cond2812 = and i1 %.not1904, %i.ld
  br i1 %or.cond2812, label %iter.check4404, label %.loopexit2260

iter.check4404:                                   ; preds = %thread-pre-split2211
  %wide.trip.count3253 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4389 = icmp ult i32 %1, 4
  br i1 %min.iters.check4389, label %.lr.ph2740.preheader, label %vector.main.loop.iter.check4390

vector.main.loop.iter.check4390:                  ; preds = %iter.check4404
  %min.iters.check4391 = icmp ult i32 %1, 16
  br i1 %min.iters.check4391, label %vec.epilog.ph4408, label %vector.ph4392

vector.ph4392:                                    ; preds = %vector.main.loop.iter.check4390
  %i.le = and i64 %wide.trip.count3253, 12
  %n.vec4393 = and i64 %wide.trip.count3253, 4294967280 ; 4 uses
  %broadcast.splatinsert4394 = insertelement <8 x i16> poison, i16 %.111738, i64 0
  %broadcast.splat4395 = shufflevector <8 x i16> %broadcast.splatinsert4394, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body4396

vector.body4396:                                  ; preds = %vector.ph4392, %vector.body4396
  %index4397 = phi i64 [ 0, %vector.ph4392 ], [ %index.next4400, %vector.body4396 ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4397 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %wide.load4398 = load <8 x i16>, ptr %i.lf, align 2, !tbaa !27
  %wide.load4399 = load <8 x i16>, ptr %i.lg, align 2, !tbaa !27
  %i.lh = sub <8 x i16> %wide.load4398, %broadcast.splat4395
  %i.li = sub <8 x i16> %wide.load4399, %broadcast.splat4395
  store <8 x i16> %i.lh, ptr %i.lf, align 2, !tbaa !27
  store <8 x i16> %i.li, ptr %i.lg, align 2, !tbaa !27
  %index.next4400 = add nuw i64 %index4397, 16    ; 2 uses
  %i.lj = icmp eq i64 %index.next4400, %n.vec4393
  br i1 %i.lj, label %middle.block4401, label %vector.body4396, !llvm.loop !134

middle.block4401:                                 ; preds = %vector.body4396
  %cmp.n4402 = icmp eq i64 %n.vec4393, %wide.trip.count3253
  br i1 %cmp.n4402, label %.loopexit2260, label %vec.epilog.iter.check4406

vec.epilog.iter.check4406:                        ; preds = %middle.block4401
  %min.epilog.iters.check4407 = icmp eq i64 %i.le, 0
  br i1 %min.epilog.iters.check4407, label %.lr.ph2740.preheader, label %vec.epilog.ph4408, !prof !25

vec.epilog.ph4408:                                ; preds = %vector.main.loop.iter.check4390, %vec.epilog.iter.check4406
  %vec.epilog.resume.val4403 = phi i64 [ %n.vec4393, %vec.epilog.iter.check4406 ], [ 0, %vector.main.loop.iter.check4390 ]
  %n.vec4409 = and i64 %wide.trip.count3253, 4294967292 ; 3 uses
  %broadcast.splatinsert4410 = insertelement <4 x i16> poison, i16 %.111738, i64 0
  %broadcast.splat4411 = shufflevector <4 x i16> %broadcast.splatinsert4410, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4412

vec.epilog.vector.body4412:                       ; preds = %vec.epilog.vector.body4412, %vec.epilog.ph4408
  %index4413 = phi i64 [ %vec.epilog.resume.val4403, %vec.epilog.ph4408 ], [ %index.next4415, %vec.epilog.vector.body4412 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4413 ; 2 uses
  %wide.load4414 = load <4 x i16>, ptr %i.lk, align 2, !tbaa !27
  %i.ll = sub <4 x i16> %wide.load4414, %broadcast.splat4411
  store <4 x i16> %i.ll, ptr %i.lk, align 2, !tbaa !27
  %index.next4415 = add nuw i64 %index4413, 4     ; 2 uses
  %i.lm = icmp eq i64 %index.next4415, %n.vec4409
  br i1 %i.lm, label %vec.epilog.middle.block4416, label %vec.epilog.vector.body4412, !llvm.loop !135

vec.epilog.middle.block4416:                      ; preds = %vec.epilog.vector.body4412
  %cmp.n4417 = icmp eq i64 %n.vec4409, %wide.trip.count3253
  br i1 %cmp.n4417, label %.loopexit2260, label %.lr.ph2740.preheader

.lr.ph2740.preheader:                             ; preds = %iter.check4404, %vec.epilog.iter.check4406, %vec.epilog.middle.block4416
  %indvars.iv3250.ph = phi i64 [ 0, %iter.check4404 ], [ %n.vec4393, %vec.epilog.iter.check4406 ], [ %n.vec4409, %vec.epilog.middle.block4416 ]
  br label %.lr.ph2740

.lr.ph2740:                                       ; preds = %.lr.ph2740.preheader, %.lr.ph2740
  %indvars.iv3250 = phi i64 [ %indvars.iv.next3251, %.lr.ph2740 ], [ %indvars.iv3250.ph, %.lr.ph2740.preheader ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3250 ; 2 uses
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !27
  %i.lp = sub i16 %i.lo, %.111738
  store i16 %i.lp, ptr %i.ln, align 2, !tbaa !27
  %indvars.iv.next3251 = add nuw nsw i64 %indvars.iv3250, 1 ; 2 uses
  %exitcond3254.not = icmp eq i64 %indvars.iv.next3251, %wide.trip.count3253
  br i1 %exitcond3254.not, label %.loopexit2260, label %.lr.ph2740, !llvm.loop !136

.loopexit2260:                                    ; preds = %.lr.ph2740, %vec.epilog.scalar.ph4440, %middle.block4401, %vec.epilog.middle.block4416, %middle.block4436, %vec.epilog.middle.block4455, %bb.af, %thread-pre-split2211, %thread-pre-split2209
  %.121739 = phi i16 [ %.111738, %thread-pre-split2211 ], [ %.61733, %thread-pre-split2209 ], [ %.61733, %middle.block4436 ], [ %i.ji, %bb.af ], [ %.111738, %middle.block4401 ], [ %.61733, %vec.epilog.middle.block4455 ], [ %.61733, %vec.epilog.scalar.ph4440 ], [ %.111738, %vec.epilog.middle.block4416 ], [ %.111738, %.lr.ph2740 ]
  %i.lq = zext i16 %.121739 to i64
  store i64 %i.lq, ptr %6, align 8, !tbaa !18
  br label %bb.ff

bb.ag:                                            ; preds = %bb.a
  %i.lr = icmp eq i32 %3, 1
  br i1 %i.lr, label %.preheader2269, label %bb.au

.preheader2269:                                   ; preds = %bb.ag
  %.03324.in = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.03324 = load i32, ptr %.03324.in, align 4, !tbaa !16 ; 13 uses
  %i.ls = load i32, ptr %5, align 4, !tbaa !16    ; 5 uses
  %i.lt = icmp eq i32 %i.ls, 0
  %.not2860 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.lt, label %.preheader2267, label %.preheader2268

.preheader2268:                                   ; preds = %.preheader2269
  br i1 %.not2860, label %.critedge1924, label %.lr.ph2700

.lr.ph2700:                                       ; preds = %.preheader2268
  %wide.trip.count3220 = zext i32 %1 to i64
  br label %bb.al

.preheader2267:                                   ; preds = %.preheader2269
  br i1 %.not2860, label %.critedge1922, label %.lr.ph2711

.lr.ph2711:                                       ; preds = %.preheader2267
  %wide.trip.count3230 = zext i32 %1 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph2711, %bb.ai
  %indvars.iv3227 = phi i64 [ 0, %.lr.ph2711 ], [ %indvars.iv.next3228, %bb.ai ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv3227
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !16 ; 2 uses
  %i.lw = icmp eq i32 %i.lv, %.03324
  br i1 %i.lw, label %bb.ai, label %.critedge1922.loopexit

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next3228 = add nuw nsw i64 %indvars.iv3227, 1 ; 2 uses
  %exitcond3231.not = icmp eq i64 %indvars.iv.next3228, %wide.trip.count3230
  br i1 %exitcond3231.not, label %._crit_edge2721, label %bb.ah, !llvm.loop !137

.critedge1922.loopexit:                           ; preds = %bb.ah
  %i.lx = trunc nuw i64 %indvars.iv3227 to i32
  br label %.critedge1922

.critedge1922:                                    ; preds = %.critedge1922.loopexit, %.preheader2267
  %.01677.lcssa = phi i32 [ 0, %.preheader2267 ], [ %i.lx, %.critedge1922.loopexit ] ; 2 uses
  %.01685 = phi i32 [ 0, %.preheader2267 ], [ %i.lv, %.critedge1922.loopexit ] ; 8 uses
  %i.ly = icmp ult i32 %.01677.lcssa, %1
  br i1 %i.ly, label %.lr.ph2720, label %._crit_edge2721

.lr.ph2720:                                       ; preds = %.critedge1922
  %i.lz = zext i32 %.01677.lcssa to i64           ; 5 uses
  %wide.trip.count3235 = zext i32 %1 to i64       ; 3 uses
  %i.ma = sub nsw i64 %wide.trip.count3235, %i.lz
  %xtraiter4876 = and i64 %i.ma, 1
  %lcmp.mod4877.not = icmp eq i64 %xtraiter4876, 0
  br i1 %lcmp.mod4877.not, label %.prol.loopexit4875, label %.prol.loopexit4875.unr-lcssa

.prol.loopexit4875.unr-lcssa:                     ; preds = %.lr.ph2720
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lz
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !16 ; 3 uses
  %i.md = icmp eq i32 %i.mc, %.03324              ; 2 uses
  %spec.select1923.prol = tail call i32 @llvm.umax.i32(i32 %i.mc, i32 %.01685)
  %spec.select1976.prol = tail call i32 @llvm.umin.i32(i32 %i.mc, i32 %.01685)
  %.21693.prol = select i1 %i.md, i32 %.01685, i32 %spec.select1976.prol ; 2 uses
  %.31688.prol = select i1 %i.md, i32 %.01685, i32 %spec.select1923.prol ; 2 uses
  %indvars.iv.next3233.prol = add nuw nsw i64 %i.lz, 1
  br label %.prol.loopexit4875

.prol.loopexit4875:                               ; preds = %.prol.loopexit4875.unr-lcssa, %.lr.ph2720
  %.21693.lcssa.unr = phi i32 [ poison, %.lr.ph2720 ], [ %.21693.prol, %.prol.loopexit4875.unr-lcssa ]
  %.31688.lcssa.unr = phi i32 [ poison, %.lr.ph2720 ], [ %.31688.prol, %.prol.loopexit4875.unr-lcssa ]
  %indvars.iv3232.unr = phi i64 [ %i.lz, %.lr.ph2720 ], [ %indvars.iv.next3233.prol, %.prol.loopexit4875.unr-lcssa ]
  %.116862718.unr = phi i32 [ %.01685, %.lr.ph2720 ], [ %.31688.prol, %.prol.loopexit4875.unr-lcssa ]
  %.116922717.unr = phi i32 [ %.01685, %.lr.ph2720 ], [ %.21693.prol, %.prol.loopexit4875.unr-lcssa ]
  %i.me = add nsw i64 %wide.trip.count3235, -1
  %i.mf = icmp eq i64 %i.me, %i.lz
  br i1 %i.mf, label %._crit_edge2721, label %.lr.ph2720.new

.lr.ph2720.new:                                   ; preds = %.prol.loopexit4875, %.lr.ph2720.new
  %indvars.iv3232 = phi i64 [ %indvars.iv.next3233.1, %.lr.ph2720.new ], [ %indvars.iv3232.unr, %.prol.loopexit4875 ] ; 3 uses
  %.116862718 = phi i32 [ %.31688.1, %.lr.ph2720.new ], [ %.116862718.unr, %.prol.loopexit4875 ] ; 2 uses
  %.116922717 = phi i32 [ %.21693.1, %.lr.ph2720.new ], [ %.116922717.unr, %.prol.loopexit4875 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv3232
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !16 ; 3 uses
  %i.mi = icmp eq i32 %i.mh, %.03324              ; 2 uses
  %spec.select1923 = tail call i32 @llvm.umax.i32(i32 %i.mh, i32 %.116862718)
  %spec.select1976 = tail call i32 @llvm.umin.i32(i32 %i.mh, i32 %.116922717)
end_hunk_1
begin_hunk_2_@H5Z__scaleoffset_precompress_i:bb.a
  br i1 %exitcond3097.not, label %thread-pre-split2225, label %.lr.ph2559, !llvm.loop !179

.critedge1944.loopexit:                           ; preds = %.lr.ph2559
  %i.add = trunc nuw i64 %indvars.iv3093 to i32
  br label %.critedge1944

.critedge1944:                                    ; preds = %.critedge1944.loopexit, %.preheader2293
  %.21571.lcssa = phi i32 [ 0, %.preheader2293 ], [ %i.add, %.critedge1944.loopexit ] ; 2 uses
  %.31586 = phi i8 [ 0, %.preheader2293 ], [ %i.adb, %.critedge1944.loopexit ] ; 3 uses
  %i.ade = icmp ult i32 %.21571.lcssa, %1
  br i1 %i.ade, label %.lr.ph2567.preheader, label %thread-pre-split2225

.lr.ph2567.preheader:                             ; preds = %.critedge1944
  %i.adf = zext i32 %.21571.lcssa to i64          ; 4 uses
  %wide.trip.count3100 = zext i32 %1 to i64       ; 3 uses
  %i.adg = sub nsw i64 %wide.trip.count3100, %i.adf
  %xtraiter4820 = and i64 %i.adg, 3               ; 2 uses
  %lcmp.mod4821.not = icmp eq i64 %xtraiter4820, 0
  br i1 %lcmp.mod4821.not, label %.lr.ph2567.prol.loopexit, label %.lr.ph2567.prol

.lr.ph2567.prol:                                  ; preds = %.lr.ph2567.preheader, %.lr.ph2567.prol
  %indvars.iv3098.prol = phi i64 [ %indvars.iv.next3099.prol, %.lr.ph2567.prol ], [ %i.adf, %.lr.ph2567.preheader ] ; 2 uses
  %.415872565.prol = phi i8 [ %.51588.prol, %.lr.ph2567.prol ], [ %.31586, %.lr.ph2567.preheader ] ; 2 uses
  %prol.iter4822 = phi i64 [ %prol.iter4822.next, %.lr.ph2567.prol ], [ 0, %.lr.ph2567.preheader ]
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3098.prol
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !19 ; 2 uses
  %.not2249.prol = icmp eq i8 %i.adi, %storemerge1885
  %i.adj = tail call i8 @llvm.smin.i8(i8 %i.adi, i8 %.415872565.prol)
  %.51588.prol = select i1 %.not2249.prol, i8 %.415872565.prol, i8 %i.adj ; 3 uses
  %indvars.iv.next3099.prol = add nuw nsw i64 %indvars.iv3098.prol, 1 ; 2 uses
  %prol.iter4822.next = add i64 %prol.iter4822, 1 ; 2 uses
  %prol.iter4822.cmp.not = icmp eq i64 %prol.iter4822.next, %xtraiter4820
  br i1 %prol.iter4822.cmp.not, label %.lr.ph2567.prol.loopexit, label %.lr.ph2567.prol, !llvm.loop !180

.lr.ph2567.prol.loopexit:                         ; preds = %.lr.ph2567.prol, %.lr.ph2567.preheader
  %.51588.lcssa.unr = phi i8 [ poison, %.lr.ph2567.preheader ], [ %.51588.prol, %.lr.ph2567.prol ]
  %indvars.iv3098.unr = phi i64 [ %i.adf, %.lr.ph2567.preheader ], [ %indvars.iv.next3099.prol, %.lr.ph2567.prol ]
  %.415872565.unr = phi i8 [ %.31586, %.lr.ph2567.preheader ], [ %.51588.prol, %.lr.ph2567.prol ]
  %i.adk = sub nsw i64 %i.adf, %wide.trip.count3100
  %i.adl = icmp ugt i64 %i.adk, -4
  br i1 %i.adl, label %thread-pre-split2225, label %.lr.ph2567

.lr.ph2567:                                       ; preds = %.lr.ph2567.prol.loopexit, %.lr.ph2567
  %indvars.iv3098 = phi i64 [ %indvars.iv.next3099.3, %.lr.ph2567 ], [ %indvars.iv3098.unr, %.lr.ph2567.prol.loopexit ] ; 5 uses
  %.415872565 = phi i8 [ %.51588.3, %.lr.ph2567 ], [ %.415872565.unr, %.lr.ph2567.prol.loopexit ] ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3098
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !19 ; 2 uses
  %.not2249 = icmp eq i8 %i.adn, %storemerge1885
  %i.ado = tail call i8 @llvm.smin.i8(i8 %i.adn, i8 %.415872565)
  %.51588 = select i1 %.not2249, i8 %.415872565, i8 %i.ado ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3098
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 1
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !19 ; 2 uses
  %.not2249.1 = icmp eq i8 %i.adr, %storemerge1885
  %i.ads = tail call i8 @llvm.smin.i8(i8 %i.adr, i8 %.51588)
  %.51588.1 = select i1 %.not2249.1, i8 %.51588, i8 %i.ads ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3098
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 2
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !19 ; 2 uses
  %.not2249.2 = icmp eq i8 %i.adv, %storemerge1885
  %i.adw = tail call i8 @llvm.smin.i8(i8 %i.adv, i8 %.51588.1)
  %.51588.2 = select i1 %.not2249.2, i8 %.51588.1, i8 %i.adw ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3098
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 3
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !19 ; 2 uses
  %.not2249.3 = icmp eq i8 %i.adz, %storemerge1885
  %i.aea = tail call i8 @llvm.smin.i8(i8 %i.adz, i8 %.51588.2)
  %.51588.3 = select i1 %.not2249.3, i8 %.51588.2, i8 %i.aea ; 2 uses
  %indvars.iv.next3099.3 = add nuw nsw i64 %indvars.iv3098, 4 ; 2 uses
  %exitcond3101.not.3 = icmp eq i64 %indvars.iv.next3099.3, %wide.trip.count3100
  br i1 %exitcond3101.not.3, label %thread-pre-split2225, label %.lr.ph2567, !llvm.loop !181

thread-pre-split2225:                             ; preds = %bb.ci, %.lr.ph2567.prol.loopexit, %.lr.ph2567, %.critedge1944, %H5Z__scaleoffset_log2.exit2073
  %i.aeb = phi i32 [ %.011.i2072, %H5Z__scaleoffset_log2.exit2073 ], [ %i.abp, %.lr.ph2567.prol.loopexit ], [ %i.abp, %.critedge1944 ], [ %i.abp, %.lr.ph2567 ], [ %i.abp, %bb.ci ]
  %.61589 = phi i8 [ %.11584.lcssa, %H5Z__scaleoffset_log2.exit2073 ], [ %.51588.3, %.lr.ph2567 ], [ %.31586, %.critedge1944 ], [ %.51588.lcssa.unr, %.lr.ph2567.prol.loopexit ], [ 0, %bb.ci ] ; 4 uses
  %.not1886 = icmp ne i32 %i.aeb, 8
  %i.aec = icmp ne i32 %1, 0
  %or.cond2819 = and i1 %.not1886, %i.aec
  br i1 %or.cond2819, label %.lr.ph2584, label %.loopexit2291

.lr.ph2584:                                       ; preds = %thread-pre-split2225
  %i.aed = zext i8 %.61589 to i32                 ; 3 uses
  %wide.trip.count3114 = zext i32 %1 to i64       ; 2 uses
  %xtraiter4827 = and i64 %wide.trip.count3114, 1
  %i.aee = icmp eq i32 %1, 1
  br i1 %i.aee, label %.epil.preheader4826, label %.lr.ph2584.new

.lr.ph2584.new:                                   ; preds = %.lr.ph2584
  %unroll_iter4831 = and i64 %wide.trip.count3114, 4294967294
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cp, %.lr.ph2584.new
  %indvars.iv3111 = phi i64 [ 0, %.lr.ph2584.new ], [ %indvars.iv.next3112.1, %bb.cp ] ; 3 uses
  %niter4832 = phi i64 [ 0, %.lr.ph2584.new ], [ %niter4832.next.1, %bb.cp ]
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3111 ; 2 uses
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !19 ; 2 uses
  %i.aeh = icmp eq i8 %i.aeg, %storemerge1885
  br i1 %i.aeh, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.aei = load i32, ptr %5, align 4, !tbaa !16
  %notmask1887 = shl nsw i32 -1, %i.aei
  %i.aej = xor i32 %notmask1887, -1
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.aek = zext i8 %i.aeg to i32
  %i.ael = sub nsw i32 %i.aek, %i.aed
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.aem = phi i32 [ %i.aej, %bb.ck ], [ %i.ael, %bb.cl ]
  %i.aen = trunc i32 %i.aem to i8
  store i8 %i.aen, ptr %i.aef, align 1, !tbaa !19
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3111
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 1 ; 2 uses
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !19 ; 2 uses
  %i.aer = icmp eq i8 %i.aeq, %storemerge1885
  br i1 %i.aer, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aes = zext i8 %i.aeq to i32
  %i.aet = sub nsw i32 %i.aes, %i.aed
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.aeu = load i32, ptr %5, align 4, !tbaa !16
  %notmask1887.1 = shl nsw i32 -1, %i.aeu
  %i.aev = xor i32 %notmask1887.1, -1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.aew = phi i32 [ %i.aev, %bb.co ], [ %i.aet, %bb.cn ]
  %i.aex = trunc i32 %i.aew to i8
  store i8 %i.aex, ptr %i.aep, align 1, !tbaa !19
  %indvars.iv.next3112.1 = add nuw nsw i64 %indvars.iv3111, 2 ; 2 uses
  %niter4832.next.1 = add i64 %niter4832, 2       ; 2 uses
  %niter4832.ncmp.1 = icmp eq i64 %niter4832.next.1, %unroll_iter4831
  br i1 %niter4832.ncmp.1, label %.loopexit2291.loopexit.unr-lcssa, label %bb.cj, !llvm.loop !182

bb.cq:                                            ; preds = %bb.cd
  %i.aey = load i32, ptr %5, align 4, !tbaa !16   ; 4 uses
  %i.aez = icmp eq i32 %i.aey, 0
  %i.afa = load i8, ptr %0, align 1, !tbaa !19    ; 11 uses
  %.not2846 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.aez, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not2846, label %._crit_edge2553, label %iter.check4100

iter.check4100:                                   ; preds = %bb.cr
  %wide.trip.count3086 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4077 = icmp ult i32 %1, 8
  br i1 %min.iters.check4077, label %.lr.ph2552.preheader, label %vector.main.loop.iter.check4078

vector.main.loop.iter.check4078:                  ; preds = %iter.check4100
  %min.iters.check4079 = icmp ult i32 %1, 32
  br i1 %min.iters.check4079, label %vec.epilog.ph4104, label %vector.ph4080

vector.ph4080:                                    ; preds = %vector.main.loop.iter.check4078
  %i.afb = and i64 %wide.trip.count3086, 24
  %n.vec4081 = and i64 %wide.trip.count3086, 4294967264 ; 4 uses
  %broadcast.splatinsert4082 = insertelement <16 x i8> poison, i8 %i.afa, i64 0
  %broadcast.splat4083 = shufflevector <16 x i8> %broadcast.splatinsert4082, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body4084

vector.body4084:                                  ; preds = %vector.ph4080, %vector.body4084
  %index4085 = phi i64 [ 0, %vector.ph4080 ], [ %index.next4092, %vector.body4084 ] ; 2 uses
  %vec.phi4086 = phi <16 x i8> [ %broadcast.splat4083, %vector.ph4080 ], [ %i.afe, %vector.body4084 ]
  %vec.phi4087 = phi <16 x i8> [ %broadcast.splat4083, %vector.ph4080 ], [ %i.aff, %vector.body4084 ]
  %vec.phi4088 = phi <16 x i8> [ %broadcast.splat4083, %vector.ph4080 ], [ %i.afg, %vector.body4084 ]
  %vec.phi4089 = phi <16 x i8> [ %broadcast.splat4083, %vector.ph4080 ], [ %i.afh, %vector.body4084 ]
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 %index4085 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  %wide.load4090 = load <16 x i8>, ptr %i.afc, align 1, !tbaa !19 ; 2 uses
  %wide.load4091 = load <16 x i8>, ptr %i.afd, align 1, !tbaa !19 ; 2 uses
  %i.afe = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load4090, <16 x i8> %vec.phi4086) ; 2 uses
  %i.aff = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load4091, <16 x i8> %vec.phi4087) ; 2 uses
  %i.afg = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load4090, <16 x i8> %vec.phi4088) ; 2 uses
  %i.afh = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load4091, <16 x i8> %vec.phi4089) ; 2 uses
  %index.next4092 = add nuw i64 %index4085, 32    ; 2 uses
  %i.afi = icmp eq i64 %index.next4092, %n.vec4081
  br i1 %i.afi, label %middle.block4093, label %vector.body4084, !llvm.loop !183

middle.block4093:                                 ; preds = %vector.body4084
  %rdx.minmax4094 = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.afe, <16 x i8> %i.aff)
  %i.afj = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax4094) ; 3 uses
  %rdx.minmax4095 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.afg, <16 x i8> %i.afh)
  %i.afk = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax4095) ; 3 uses
  %cmp.n4096 = icmp eq i64 %n.vec4081, %wide.trip.count3086
  br i1 %cmp.n4096, label %._crit_edge2553, label %vec.epilog.iter.check4102

vec.epilog.iter.check4102:                        ; preds = %middle.block4093
  %min.epilog.iters.check4103 = icmp eq i64 %i.afb, 0
  br i1 %min.epilog.iters.check4103, label %.lr.ph2552.preheader, label %vec.epilog.ph4104, !prof !250

vec.epilog.ph4104:                                ; preds = %vector.main.loop.iter.check4078, %vec.epilog.iter.check4102
  %vec.epilog.resume.val4097 = phi i64 [ %n.vec4081, %vec.epilog.iter.check4102 ], [ 0, %vector.main.loop.iter.check4078 ]
  %bc.merge.rdx4098 = phi i8 [ %i.afj, %vec.epilog.iter.check4102 ], [ %i.afa, %vector.main.loop.iter.check4078 ]
  %bc.merge.rdx4099 = phi i8 [ %i.afk, %vec.epilog.iter.check4102 ], [ %i.afa, %vector.main.loop.iter.check4078 ]
  %n.vec4105 = and i64 %wide.trip.count3086, 4294967288 ; 3 uses
  %broadcast.splatinsert4106 = insertelement <8 x i8> poison, i8 %bc.merge.rdx4098, i64 0
  %broadcast.splat4107 = shufflevector <8 x i8> %broadcast.splatinsert4106, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert4108 = insertelement <8 x i8> poison, i8 %bc.merge.rdx4099, i64 0
  %broadcast.splat4109 = shufflevector <8 x i8> %broadcast.splatinsert4108, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body4110

vec.epilog.vector.body4110:                       ; preds = %vec.epilog.vector.body4110, %vec.epilog.ph4104
  %index4111 = phi i64 [ %vec.epilog.resume.val4097, %vec.epilog.ph4104 ], [ %index.next4115, %vec.epilog.vector.body4110 ] ; 2 uses
  %vec.phi4112 = phi <8 x i8> [ %broadcast.splat4107, %vec.epilog.ph4104 ], [ %i.afm, %vec.epilog.vector.body4110 ]
  %vec.phi4113 = phi <8 x i8> [ %broadcast.splat4109, %vec.epilog.ph4104 ], [ %i.afn, %vec.epilog.vector.body4110 ]
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 %index4111
  %wide.load4114 = load <8 x i8>, ptr %i.afl, align 1, !tbaa !19 ; 2 uses
  %i.afm = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load4114, <8 x i8> %vec.phi4112) ; 2 uses
  %i.afn = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load4114, <8 x i8> %vec.phi4113) ; 2 uses
  %index.next4115 = add nuw i64 %index4111, 8     ; 2 uses
  %i.afo = icmp eq i64 %index.next4115, %n.vec4105
  br i1 %i.afo, label %vec.epilog.middle.block4116, label %vec.epilog.vector.body4110, !llvm.loop !184

vec.epilog.middle.block4116:                      ; preds = %vec.epilog.vector.body4110
  %i.afp = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.afm) ; 2 uses
  %i.afq = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.afn) ; 2 uses
  %cmp.n4117 = icmp eq i64 %n.vec4105, %wide.trip.count3086
  br i1 %cmp.n4117, label %._crit_edge2553, label %.lr.ph2552.preheader

.lr.ph2552.preheader:                             ; preds = %iter.check4100, %vec.epilog.iter.check4102, %vec.epilog.middle.block4116
  %indvars.iv3084.ph = phi i64 [ 0, %iter.check4100 ], [ %n.vec4081, %vec.epilog.iter.check4102 ], [ %n.vec4105, %vec.epilog.middle.block4116 ]
  %.415812549.ph = phi i8 [ %i.afa, %iter.check4100 ], [ %i.afj, %vec.epilog.iter.check4102 ], [ %i.afp, %vec.epilog.middle.block4116 ]
  %.715902548.ph = phi i8 [ %i.afa, %iter.check4100 ], [ %i.afk, %vec.epilog.iter.check4102 ], [ %i.afq, %vec.epilog.middle.block4116 ]
  br label %.lr.ph2552

.lr.ph2552:                                       ; preds = %.lr.ph2552.preheader, %.lr.ph2552
  %indvars.iv3084 = phi i64 [ %indvars.iv.next3085, %.lr.ph2552 ], [ %indvars.iv3084.ph, %.lr.ph2552.preheader ] ; 2 uses
  %.415812549 = phi i8 [ %spec.select1946, %.lr.ph2552 ], [ %.415812549.ph, %.lr.ph2552.preheader ]
  %.715902548 = phi i8 [ %.81591, %.lr.ph2552 ], [ %.715902548.ph, %.lr.ph2552.preheader ]
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3084
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !19 ; 2 uses
  %spec.select1946 = tail call i8 @llvm.smax.i8(i8 %i.afs, i8 %.415812549) ; 2 uses
  %.81591 = tail call i8 @llvm.smin.i8(i8 %i.afs, i8 %.715902548) ; 2 uses
  %indvars.iv.next3085 = add nuw nsw i64 %indvars.iv3084, 1 ; 2 uses
  %exitcond3087.not = icmp eq i64 %indvars.iv.next3085, %wide.trip.count3086
  br i1 %exitcond3087.not, label %._crit_edge2553, label %.lr.ph2552, !llvm.loop !185

._crit_edge2553:                                  ; preds = %.lr.ph2552, %middle.block4093, %vec.epilog.middle.block4116, %bb.cr
  %.71590.lcssa = phi i8 [ %i.afa, %bb.cr ], [ %i.afq, %vec.epilog.middle.block4116 ], [ %i.afk, %middle.block4093 ], [ %.81591, %.lr.ph2552 ] ; 3 uses
  %.41581.lcssa = phi i8 [ %i.afa, %bb.cr ], [ %i.afp, %vec.epilog.middle.block4116 ], [ %i.afj, %middle.block4093 ], [ %spec.select1946, %.lr.ph2552 ]
  %i.aft = zext i8 %.41581.lcssa to i32
  %i.afu = zext i8 %.71590.lcssa to i32
  %i.afv = sub nsw i32 %i.aft, %i.afu             ; 2 uses
  %i.afw = and i32 %i.afv, 254
  %i.afx = icmp eq i32 %i.afw, 254
  br i1 %i.afx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %._crit_edge2553
  store i32 8, ptr %5, align 4, !tbaa !16
  %i.afy = sext i8 %.71590.lcssa to i64
  store i64 %i.afy, ptr %6, align 8, !tbaa !18
  br label %bb.ff

bb.ct:                                            ; preds = %._crit_edge2553
  %i.afz = add nsw i32 %i.afv, 1
  %i.aga = and i32 %i.afz, 255                    ; 8 uses
  %i.agb = zext nneg i32 %i.aga to i64
  %.not13.i2074 = icmp samesign ult i32 %i.aga, 2
  br i1 %.not13.i2074, label %H5Z__scaleoffset_log2.exit2082, label %.lr.ph.i2075

.lr.ph.i2075:                                     ; preds = %bb.ct
  %.not.i2078 = icmp samesign ult i32 %i.aga, 4
  br i1 %.not.i2078, label %H5Z__scaleoffset_log2.exit2082, label %.lr.ph.i2075.1

.lr.ph.i2075.1:                                   ; preds = %.lr.ph.i2075
  %.not.i2078.1 = icmp samesign ult i32 %i.aga, 8
  br i1 %.not.i2078.1, label %H5Z__scaleoffset_log2.exit2082, label %.lr.ph.i2075.2

.lr.ph.i2075.2:                                   ; preds = %.lr.ph.i2075.1
  %.not.i2078.2 = icmp samesign ult i32 %i.aga, 16
  br i1 %.not.i2078.2, label %H5Z__scaleoffset_log2.exit2082, label %.lr.ph.i2075.3

.lr.ph.i2075.3:                                   ; preds = %.lr.ph.i2075.2
  %.not.i2078.3 = icmp samesign ult i32 %i.aga, 32
  br i1 %.not.i2078.3, label %H5Z__scaleoffset_log2.exit2082, label %.lr.ph.i2075.4

.lr.ph.i2075.4:                                   ; preds = %.lr.ph.i2075.3
  %.not.i2078.4 = icmp samesign ult i32 %i.aga, 64
  br i1 %.not.i2078.4, label %H5Z__scaleoffset_log2.exit2082, label %.lr.ph.i2075.5

.lr.ph.i2075.5:                                   ; preds = %.lr.ph.i2075.4
  %.not.i2078.5 = icmp samesign ult i32 %i.aga, 128 ; 2 uses
  %spec.select5058 = select i1 %.not.i2078.5, i32 6, i32 7
  %spec.select5059 = select i1 %.not.i2078.5, i64 64, i64 128
  br label %H5Z__scaleoffset_log2.exit2082

H5Z__scaleoffset_log2.exit2082:                   ; preds = %.lr.ph.i2075.5, %.lr.ph.i2075, %.lr.ph.i2075.1, %.lr.ph.i2075.2, %.lr.ph.i2075.3, %.lr.ph.i2075.4, %bb.ct
  %.010.lcssa.i2079 = phi i32 [ 0, %bb.ct ], [ 1, %.lr.ph.i2075 ], [ 2, %.lr.ph.i2075.1 ], [ 3, %.lr.ph.i2075.2 ], [ 4, %.lr.ph.i2075.3 ], [ 5, %.lr.ph.i2075.4 ], [ %spec.select5058, %.lr.ph.i2075.5 ]
  %.09.lcssa.i2080 = phi i64 [ 1, %bb.ct ], [ 2, %.lr.ph.i2075 ], [ 4, %.lr.ph.i2075.1 ], [ 8, %.lr.ph.i2075.2 ], [ 16, %.lr.ph.i2075.3 ], [ 32, %.lr.ph.i2075.4 ], [ %spec.select5059, %.lr.ph.i2075.5 ]
  %i.agc = icmp ne i64 %.09.lcssa.i2080, %i.agb
  %i.agd = zext i1 %i.agc to i32
  %.011.i2081 = add i32 %.010.lcssa.i2079, %i.agd ; 2 uses
  store i32 %.011.i2081, ptr %5, align 4, !tbaa !16
  br label %thread-pre-split2227

bb.cu:                                            ; preds = %bb.cq
  br i1 %.not2846, label %.loopexit2291, label %iter.check4059

iter.check4059:                                   ; preds = %bb.cu
  %wide.trip.count3082 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4040 = icmp ult i32 %1, 8
  br i1 %min.iters.check4040, label %.lr.ph2546.preheader, label %vector.main.loop.iter.check4041

vector.main.loop.iter.check4041:                  ; preds = %iter.check4059
  %min.iters.check4042 = icmp ult i32 %1, 32
  br i1 %min.iters.check4042, label %vec.epilog.ph4063, label %vector.ph4043

vector.ph4043:                                    ; preds = %vector.main.loop.iter.check4041
  %i.age = and i64 %wide.trip.count3082, 24
  %n.vec4044 = and i64 %wide.trip.count3082, 4294967264 ; 4 uses
  %broadcast.splatinsert4045 = insertelement <16 x i8> poison, i8 %i.afa, i64 0
  %broadcast.splat4046 = shufflevector <16 x i8> %broadcast.splatinsert4045, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body4047

vector.body4047:                                  ; preds = %vector.ph4043, %vector.body4047
  %index4048 = phi i64 [ 0, %vector.ph4043 ], [ %index.next4053, %vector.body4047 ] ; 2 uses
  %vec.phi4049 = phi <16 x i8> [ %broadcast.splat4046, %vector.ph4043 ], [ %i.agh, %vector.body4047 ]
  %vec.phi4050 = phi <16 x i8> [ %broadcast.splat4046, %vector.ph4043 ], [ %i.agi, %vector.body4047 ]
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 %index4048 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %wide.load4051 = load <16 x i8>, ptr %i.agf, align 1, !tbaa !19
  %wide.load4052 = load <16 x i8>, ptr %i.agg, align 1, !tbaa !19
  %i.agh = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load4051, <16 x i8> %vec.phi4049) ; 2 uses
  %i.agi = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load4052, <16 x i8> %vec.phi4050) ; 2 uses
  %index.next4053 = add nuw i64 %index4048, 32    ; 2 uses
  %i.agj = icmp eq i64 %index.next4053, %n.vec4044
  br i1 %i.agj, label %middle.block4054, label %vector.body4047, !llvm.loop !186

middle.block4054:                                 ; preds = %vector.body4047
  %rdx.minmax4055 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.agh, <16 x i8> %i.agi)
  %i.agk = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax4055) ; 3 uses
  %cmp.n4056 = icmp eq i64 %n.vec4044, %wide.trip.count3082
  br i1 %cmp.n4056, label %thread-pre-split2227, label %vec.epilog.iter.check4061

vec.epilog.iter.check4061:                        ; preds = %middle.block4054
  %min.epilog.iters.check4062 = icmp eq i64 %i.age, 0
  br i1 %min.epilog.iters.check4062, label %.lr.ph2546.preheader, label %vec.epilog.ph4063, !prof !250

vec.epilog.ph4063:                                ; preds = %vector.main.loop.iter.check4041, %vec.epilog.iter.check4061
  %vec.epilog.resume.val4057 = phi i64 [ %n.vec4044, %vec.epilog.iter.check4061 ], [ 0, %vector.main.loop.iter.check4041 ]
  %bc.merge.rdx4058 = phi i8 [ %i.agk, %vec.epilog.iter.check4061 ], [ %i.afa, %vector.main.loop.iter.check4041 ]
  %n.vec4064 = and i64 %wide.trip.count3082, 4294967288 ; 3 uses
  %broadcast.splatinsert4065 = insertelement <8 x i8> poison, i8 %bc.merge.rdx4058, i64 0
  %broadcast.splat4066 = shufflevector <8 x i8> %broadcast.splatinsert4065, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body4067

vec.epilog.vector.body4067:                       ; preds = %vec.epilog.vector.body4067, %vec.epilog.ph4063
  %index4068 = phi i64 [ %vec.epilog.resume.val4057, %vec.epilog.ph4063 ], [ %index.next4071, %vec.epilog.vector.body4067 ] ; 2 uses
  %vec.phi4069 = phi <8 x i8> [ %broadcast.splat4066, %vec.epilog.ph4063 ], [ %i.agm, %vec.epilog.vector.body4067 ]
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 %index4068
  %wide.load4070 = load <8 x i8>, ptr %i.agl, align 1, !tbaa !19
  %i.agm = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load4070, <8 x i8> %vec.phi4069) ; 2 uses
  %index.next4071 = add nuw i64 %index4068, 8     ; 2 uses
  %i.agn = icmp eq i64 %index.next4071, %n.vec4064
  br i1 %i.agn, label %vec.epilog.middle.block4072, label %vec.epilog.vector.body4067, !llvm.loop !187

vec.epilog.middle.block4072:                      ; preds = %vec.epilog.vector.body4067
  %i.ago = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.agm) ; 2 uses
  %cmp.n4073 = icmp eq i64 %n.vec4064, %wide.trip.count3082
  br i1 %cmp.n4073, label %thread-pre-split2227, label %.lr.ph2546.preheader

.lr.ph2546.preheader:                             ; preds = %iter.check4059, %vec.epilog.iter.check4061, %vec.epilog.middle.block4072
  %indvars.iv3080.ph = phi i64 [ 0, %iter.check4059 ], [ %n.vec4044, %vec.epilog.iter.check4061 ], [ %n.vec4064, %vec.epilog.middle.block4072 ]
  %.915922543.ph = phi i8 [ %i.afa, %iter.check4059 ], [ %i.agk, %vec.epilog.iter.check4061 ], [ %i.ago, %vec.epilog.middle.block4072 ]
  br label %.lr.ph2546

.lr.ph2546:                                       ; preds = %.lr.ph2546.preheader, %.lr.ph2546
  %indvars.iv3080 = phi i64 [ %indvars.iv.next3081, %.lr.ph2546 ], [ %indvars.iv3080.ph, %.lr.ph2546.preheader ] ; 2 uses
  %.915922543 = phi i8 [ %spec.select1947, %.lr.ph2546 ], [ %.915922543.ph, %.lr.ph2546.preheader ]
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3080
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !19
  %spec.select1947 = tail call i8 @llvm.smin.i8(i8 %i.agq, i8 %.915922543) ; 2 uses
  %indvars.iv.next3081 = add nuw nsw i64 %indvars.iv3080, 1 ; 2 uses
  %exitcond3083.not = icmp eq i64 %indvars.iv.next3081, %wide.trip.count3082
  br i1 %exitcond3083.not, label %thread-pre-split2227, label %.lr.ph2546, !llvm.loop !188

thread-pre-split2227:                             ; preds = %.lr.ph2546, %middle.block4054, %vec.epilog.middle.block4072, %H5Z__scaleoffset_log2.exit2082
  %i.agr = phi i32 [ %.011.i2081, %H5Z__scaleoffset_log2.exit2082 ], [ %i.aey, %middle.block4054 ], [ %i.aey, %vec.epilog.middle.block4072 ], [ %i.aey, %.lr.ph2546 ]
  %.111594 = phi i8 [ %.71590.lcssa, %H5Z__scaleoffset_log2.exit2082 ], [ %i.agk, %middle.block4054 ], [ %i.ago, %vec.epilog.middle.block4072 ], [ %spec.select1947, %.lr.ph2546 ] ; 7 uses
  %.not1884 = icmp ne i32 %i.agr, 8
  %i.ags = icmp ne i32 %1, 0
  %or.cond2820 = and i1 %.not1884, %i.ags
  br i1 %or.cond2820, label %iter.check4137, label %.loopexit2291

iter.check4137:                                   ; preds = %thread-pre-split2227
  %wide.trip.count3091 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4122 = icmp ult i32 %1, 4
  br i1 %min.iters.check4122, label %.lr.ph2557.preheader, label %vector.main.loop.iter.check4123

vector.main.loop.iter.check4123:                  ; preds = %iter.check4137
  %min.iters.check4124 = icmp ult i32 %1, 32
  br i1 %min.iters.check4124, label %vec.epilog.ph4141, label %vector.ph4125

vector.ph4125:                                    ; preds = %vector.main.loop.iter.check4123
  %i.agt = and i64 %wide.trip.count3091, 28
  %n.vec4126 = and i64 %wide.trip.count3091, 4294967264 ; 4 uses
  %broadcast.splatinsert4127 = insertelement <16 x i8> poison, i8 %.111594, i64 0
  %broadcast.splat4128 = shufflevector <16 x i8> %broadcast.splatinsert4127, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body4129

vector.body4129:                                  ; preds = %vector.ph4125, %vector.body4129
  %index4130 = phi i64 [ 0, %vector.ph4125 ], [ %index.next4133, %vector.body4129 ] ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 %index4130 ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 16 ; 2 uses
  %wide.load4131 = load <16 x i8>, ptr %i.agu, align 1, !tbaa !19
  %wide.load4132 = load <16 x i8>, ptr %i.agv, align 1, !tbaa !19
  %i.agw = sub <16 x i8> %wide.load4131, %broadcast.splat4128
  %i.agx = sub <16 x i8> %wide.load4132, %broadcast.splat4128
  store <16 x i8> %i.agw, ptr %i.agu, align 1, !tbaa !19
  store <16 x i8> %i.agx, ptr %i.agv, align 1, !tbaa !19
  %index.next4133 = add nuw i64 %index4130, 32    ; 2 uses
  %i.agy = icmp eq i64 %index.next4133, %n.vec4126
  br i1 %i.agy, label %middle.block4134, label %vector.body4129, !llvm.loop !189

middle.block4134:                                 ; preds = %vector.body4129
  %cmp.n4135 = icmp eq i64 %n.vec4126, %wide.trip.count3091
  br i1 %cmp.n4135, label %.loopexit2291, label %vec.epilog.iter.check4139

vec.epilog.iter.check4139:                        ; preds = %middle.block4134
  %min.epilog.iters.check4140 = icmp eq i64 %i.agt, 0
  br i1 %min.epilog.iters.check4140, label %.lr.ph2557.preheader, label %vec.epilog.ph4141, !prof !23

vec.epilog.ph4141:                                ; preds = %vector.main.loop.iter.check4123, %vec.epilog.iter.check4139
  %vec.epilog.resume.val4136 = phi i64 [ %n.vec4126, %vec.epilog.iter.check4139 ], [ 0, %vector.main.loop.iter.check4123 ]
  %n.vec4142 = and i64 %wide.trip.count3091, 4294967292 ; 3 uses
  %broadcast.splatinsert4143 = insertelement <4 x i8> poison, i8 %.111594, i64 0
  %broadcast.splat4144 = shufflevector <4 x i8> %broadcast.splatinsert4143, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4145

vec.epilog.vector.body4145:                       ; preds = %vec.epilog.vector.body4145, %vec.epilog.ph4141
  %index4146 = phi i64 [ %vec.epilog.resume.val4136, %vec.epilog.ph4141 ], [ %index.next4148, %vec.epilog.vector.body4145 ] ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 %index4146 ; 2 uses
  %wide.load4147 = load <4 x i8>, ptr %i.agz, align 1, !tbaa !19
  %i.aha = sub <4 x i8> %wide.load4147, %broadcast.splat4144
  store <4 x i8> %i.aha, ptr %i.agz, align 1, !tbaa !19
  %index.next4148 = add nuw i64 %index4146, 4     ; 2 uses
  %i.ahb = icmp eq i64 %index.next4148, %n.vec4142
  br i1 %i.ahb, label %vec.epilog.middle.block4149, label %vec.epilog.vector.body4145, !llvm.loop !190

vec.epilog.middle.block4149:                      ; preds = %vec.epilog.vector.body4145
  %cmp.n4150 = icmp eq i64 %n.vec4142, %wide.trip.count3091
  br i1 %cmp.n4150, label %.loopexit2291, label %.lr.ph2557.preheader

.lr.ph2557.preheader:                             ; preds = %iter.check4137, %vec.epilog.iter.check4139, %vec.epilog.middle.block4149
  %indvars.iv3088.ph = phi i64 [ 0, %iter.check4137 ], [ %n.vec4126, %vec.epilog.iter.check4139 ], [ %n.vec4142, %vec.epilog.middle.block4149 ]
  br label %.lr.ph2557

.lr.ph2557:                                       ; preds = %.lr.ph2557.preheader, %.lr.ph2557
  %indvars.iv3088 = phi i64 [ %indvars.iv.next3089, %.lr.ph2557 ], [ %indvars.iv3088.ph, %.lr.ph2557.preheader ] ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3088 ; 2 uses
  %i.ahd = load i8, ptr %i.ahc, align 1, !tbaa !19
  %i.ahe = sub i8 %i.ahd, %.111594
  store i8 %i.ahe, ptr %i.ahc, align 1, !tbaa !19
  %indvars.iv.next3089 = add nuw nsw i64 %indvars.iv3088, 1 ; 2 uses
  %exitcond3092.not = icmp eq i64 %indvars.iv.next3089, %wide.trip.count3091
  br i1 %exitcond3092.not, label %.loopexit2291, label %.lr.ph2557, !llvm.loop !191

.loopexit2291.loopexit.unr-lcssa:                 ; preds = %bb.cp
  %lcmp.mod4829.not = icmp eq i64 %xtraiter4827, 0
  br i1 %lcmp.mod4829.not, label %.loopexit2291, label %.epil.preheader4826

.epil.preheader4826:                              ; preds = %.loopexit2291.loopexit.unr-lcssa, %.lr.ph2584
  %indvars.iv3111.epil.init = phi i64 [ 0, %.lr.ph2584 ], [ %indvars.iv.next3112.1, %.loopexit2291.loopexit.unr-lcssa ]
  %lcmp.mod4830 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod4830)
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv3111.epil.init ; 2 uses
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !19 ; 2 uses
  %i.ahh = icmp eq i8 %i.ahg, %storemerge1885
  br i1 %i.ahh, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.epil.preheader4826
  %i.ahi = zext i8 %i.ahg to i32
  %i.ahj = sub nsw i32 %i.ahi, %i.aed
  br label %.loopexit2291.loopexit.epilog-lcssa

bb.cw:                                            ; preds = %.epil.preheader4826
  %i.ahk = load i32, ptr %5, align 4, !tbaa !16
  %notmask1887.epil = shl nsw i32 -1, %i.ahk
  %i.ahl = xor i32 %notmask1887.epil, -1
  br label %.loopexit2291.loopexit.epilog-lcssa

.loopexit2291.loopexit.epilog-lcssa:              ; preds = %bb.cw, %bb.cv
  %i.ahm = phi i32 [ %i.ahl, %bb.cw ], [ %i.ahj, %bb.cv ]
  %i.ahn = trunc i32 %i.ahm to i8
  store i8 %i.ahn, ptr %i.ahf, align 1, !tbaa !19
  br label %.loopexit2291

.loopexit2291:                                    ; preds = %.lr.ph2557, %.loopexit2291.loopexit.epilog-lcssa, %.loopexit2291.loopexit.unr-lcssa, %middle.block4134, %vec.epilog.middle.block4149, %bb.cu, %thread-pre-split2227, %thread-pre-split2225
  %.121595 = phi i8 [ %.111594, %thread-pre-split2227 ], [ %.61589, %thread-pre-split2225 ], [ %.111594, %middle.block4134 ], [ %i.afa, %bb.cu ], [ %.61589, %.loopexit2291.loopexit.epilog-lcssa ], [ %.111594, %vec.epilog.middle.block4149 ], [ %.61589, %.loopexit2291.loopexit.unr-lcssa ], [ %.111594, %.lr.ph2557 ]
  %i.aho = sext i8 %.121595 to i64
  store i64 %i.aho, ptr %6, align 8, !tbaa !18
  br label %bb.ff

bb.cx:                                            ; preds = %bb.a
  %i.ahp = icmp eq i32 %3, 1
  br i1 %i.ahp, label %bb.cy, label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.ahq = load i32, ptr @H5T_native_order_g, align 4, !tbaa !16
  %i.ahr = icmp eq i32 %i.ahq, 0
  %i.ahs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !16 ; 2 uses
  %.sroa.5.0.extract.shift2160 = lshr i32 %i.aht, 16
  %storemerge.in = select i1 %i.ahr, i32 %i.aht, i32 %.sroa.5.0.extract.shift2160
  %storemerge = trunc i32 %storemerge.in to i16   ; 13 uses
  %i.ahu = load i32, ptr %5, align 4, !tbaa !16   ; 5 uses
  %i.ahv = icmp eq i32 %i.ahu, 0
  %.not2844 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.ahv, label %.preheader2298, label %.preheader2299

.preheader2299:                                   ; preds = %bb.cy
  br i1 %.not2844, label %.critedge1950, label %.lr.ph2517.preheader

.lr.ph2517.preheader:                             ; preds = %.preheader2299
  %wide.trip.count3060 = zext i32 %1 to i64
  br label %.lr.ph2517

.preheader2298:                                   ; preds = %bb.cy
  br i1 %.not2844, label %.critedge1948, label %.lr.ph2528.preheader

.lr.ph2528.preheader:                             ; preds = %.preheader2298
  %wide.trip.count3069 = zext i32 %1 to i64
  br label %.lr.ph2528

.lr.ph2528:                                       ; preds = %.lr.ph2528.preheader, %bb.cz
  %indvars.iv3066 = phi i64 [ 0, %.lr.ph2528.preheader ], [ %indvars.iv.next3067, %bb.cz ] ; 3 uses
  %i.ahw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3066
  %i.ahx = load i16, ptr %i.ahw, align 2, !tbaa !27 ; 2 uses
  %i.ahy = icmp eq i16 %i.ahx, %storemerge
  br i1 %i.ahy, label %bb.cz, label %.critedge1948.loopexit

bb.cz:                                            ; preds = %.lr.ph2528
  %indvars.iv.next3067 = add nuw nsw i64 %indvars.iv3066, 1 ; 2 uses
  %exitcond3070.not = icmp eq i64 %indvars.iv.next3067, %wide.trip.count3069
  br i1 %exitcond3070.not, label %._crit_edge2538, label %.lr.ph2528, !llvm.loop !192

.critedge1948.loopexit:                           ; preds = %.lr.ph2528
  %i.ahz = trunc nuw i64 %indvars.iv3066 to i32
  br label %.critedge1948

.critedge1948:                                    ; preds = %.critedge1948.loopexit, %.preheader2298
  %.01533.lcssa = phi i32 [ 0, %.preheader2298 ], [ %i.ahz, %.critedge1948.loopexit ] ; 2 uses
  %.01541 = phi i16 [ 0, %.preheader2298 ], [ %i.ahx, %.critedge1948.loopexit ] ; 8 uses
  %i.aia = icmp ult i32 %.01533.lcssa, %1
  br i1 %i.aia, label %.lr.ph2537.preheader, label %._crit_edge2538

.lr.ph2537.preheader:                             ; preds = %.critedge1948
  %i.aib = zext i32 %.01533.lcssa to i64          ; 5 uses
  %wide.trip.count3073 = zext i32 %1 to i64       ; 3 uses
end_hunk_2
begin_hunk_3_@H5Z__scaleoffset_precompress_i:bb.a
  br i1 %i.ajq, label %thread-pre-split2229, label %.lr.ph2525

.lr.ph2525:                                       ; preds = %.lr.ph2525.prol.loopexit, %.lr.ph2525
  %indvars.iv3062 = phi i64 [ %indvars.iv.next3063.3, %.lr.ph2525 ], [ %indvars.iv3062.unr, %.lr.ph2525.prol.loopexit ] ; 5 uses
  %.415512523 = phi i16 [ %.51552.3, %.lr.ph2525 ], [ %.415512523.unr, %.lr.ph2525.prol.loopexit ] ; 2 uses
  %i.ajr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3062
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !27 ; 2 uses
  %.not2248 = icmp eq i16 %i.ajs, %storemerge
  %i.ajt = tail call i16 @llvm.smin.i16(i16 %i.ajs, i16 %.415512523)
  %.51552 = select i1 %.not2248, i16 %.415512523, i16 %i.ajt ; 2 uses
  %i.aju = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3062
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 2
  %i.ajw = load i16, ptr %i.ajv, align 2, !tbaa !27 ; 2 uses
  %.not2248.1 = icmp eq i16 %i.ajw, %storemerge
  %i.ajx = tail call i16 @llvm.smin.i16(i16 %i.ajw, i16 %.51552)
  %.51552.1 = select i1 %.not2248.1, i16 %.51552, i16 %i.ajx ; 2 uses
  %i.ajy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3062
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 4
  %i.aka = load i16, ptr %i.ajz, align 2, !tbaa !27 ; 2 uses
  %.not2248.2 = icmp eq i16 %i.aka, %storemerge
  %i.akb = tail call i16 @llvm.smin.i16(i16 %i.aka, i16 %.51552.1)
  %.51552.2 = select i1 %.not2248.2, i16 %.51552.1, i16 %i.akb ; 2 uses
  %i.akc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3062
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 6
  %i.ake = load i16, ptr %i.akd, align 2, !tbaa !27 ; 2 uses
  %.not2248.3 = icmp eq i16 %i.ake, %storemerge
  %i.akf = tail call i16 @llvm.smin.i16(i16 %i.ake, i16 %.51552.2)
  %.51552.3 = select i1 %.not2248.3, i16 %.51552.2, i16 %i.akf ; 2 uses
  %indvars.iv.next3063.3 = add nuw nsw i64 %indvars.iv3062, 4 ; 2 uses
  %exitcond3065.not.3 = icmp eq i64 %indvars.iv.next3063.3, %wide.trip.count3064
  br i1 %exitcond3065.not.3, label %thread-pre-split2229, label %.lr.ph2525, !llvm.loop !196

thread-pre-split2229:                             ; preds = %bb.dc, %.lr.ph2525.prol.loopexit, %.lr.ph2525, %.critedge1950, %H5Z__scaleoffset_log2.exit2091
  %i.akg = phi i32 [ %.011.i2090, %H5Z__scaleoffset_log2.exit2091 ], [ %i.ahu, %.lr.ph2525.prol.loopexit ], [ %i.ahu, %.critedge1950 ], [ %i.ahu, %.lr.ph2525 ], [ %i.ahu, %bb.dc ] ; 2 uses
  %.61553 = phi i16 [ %.11548.lcssa, %H5Z__scaleoffset_log2.exit2091 ], [ %.51552.3, %.lr.ph2525 ], [ %.31550, %.critedge1950 ], [ %.51552.lcssa.unr, %.lr.ph2525.prol.loopexit ], [ 0, %bb.dc ] ; 5 uses
  %.not1882 = icmp ne i32 %i.akg, 16
  %i.akh = icmp ne i32 %1, 0
  %or.cond2821 = and i1 %.not1882, %i.akh
  br i1 %or.cond2821, label %iter.check4020, label %.loopexit2297

iter.check4020:                                   ; preds = %thread-pre-split2229
  %i.aki = zext i16 %.61553 to i32                ; 3 uses
  %notmask1883 = shl nsw i32 -1, %i.akg
  %sext = xor i32 %notmask1883, -1                ; 3 uses
  %wide.trip.count3078 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check4001 = icmp ult i32 %1, 4
  br i1 %min.iters.check4001, label %vec.epilog.scalar.ph4021.preheader, label %vector.main.loop.iter.check4002

vector.main.loop.iter.check4002:                  ; preds = %iter.check4020
  %min.iters.check4003 = icmp ult i32 %1, 16
  br i1 %min.iters.check4003, label %vec.epilog.ph4024, label %vector.ph4004

vector.ph4004:                                    ; preds = %vector.main.loop.iter.check4002
  %i.akj = and i64 %wide.trip.count3078, 12
  %n.vec4005 = and i64 %wide.trip.count3078, 4294967280 ; 4 uses
  %broadcast.splatinsert4006 = insertelement <8 x i32> poison, i32 %i.aki, i64 0
  %broadcast.splat4007 = shufflevector <8 x i32> %broadcast.splatinsert4006, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert4008 = insertelement <8 x i32> poison, i32 %sext, i64 0
  %broadcast.splat4009 = shufflevector <8 x i32> %broadcast.splatinsert4008, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert4010 = insertelement <8 x i16> poison, i16 %storemerge, i64 0
  %broadcast.splat4011 = shufflevector <8 x i16> %broadcast.splatinsert4010, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body4012

vector.body4012:                                  ; preds = %vector.ph4004, %vector.body4012
  %index4013 = phi i64 [ 0, %vector.ph4004 ], [ %index.next4016, %vector.body4012 ] ; 2 uses
  %i.akk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4013 ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 16 ; 2 uses
  %wide.load4014 = load <8 x i16>, ptr %i.akk, align 2, !tbaa !27 ; 2 uses
  %wide.load4015 = load <8 x i16>, ptr %i.akl, align 2, !tbaa !27 ; 2 uses
  %i.akm = icmp eq <8 x i16> %wide.load4014, %broadcast.splat4011
  %i.akn = icmp eq <8 x i16> %wide.load4015, %broadcast.splat4011
  %i.ako = zext <8 x i16> %wide.load4014 to <8 x i32>
  %i.akp = zext <8 x i16> %wide.load4015 to <8 x i32>
  %i.akq = sub nsw <8 x i32> %i.ako, %broadcast.splat4007
  %i.akr = sub nsw <8 x i32> %i.akp, %broadcast.splat4007
  %i.aks = select <8 x i1> %i.akm, <8 x i32> %broadcast.splat4009, <8 x i32> %i.akq
  %i.akt = select <8 x i1> %i.akn, <8 x i32> %broadcast.splat4009, <8 x i32> %i.akr
  %i.aku = trunc <8 x i32> %i.aks to <8 x i16>
  %i.akv = trunc <8 x i32> %i.akt to <8 x i16>
  store <8 x i16> %i.aku, ptr %i.akk, align 2, !tbaa !27
  store <8 x i16> %i.akv, ptr %i.akl, align 2, !tbaa !27
  %index.next4016 = add nuw i64 %index4013, 16    ; 2 uses
  %i.akw = icmp eq i64 %index.next4016, %n.vec4005
  br i1 %i.akw, label %middle.block4017, label %vector.body4012, !llvm.loop !197

middle.block4017:                                 ; preds = %vector.body4012
  %cmp.n4018 = icmp eq i64 %n.vec4005, %wide.trip.count3078
  br i1 %cmp.n4018, label %.loopexit2297, label %vec.epilog.iter.check4022

vec.epilog.iter.check4022:                        ; preds = %middle.block4017
  %min.epilog.iters.check4023 = icmp eq i64 %i.akj, 0
  br i1 %min.epilog.iters.check4023, label %vec.epilog.scalar.ph4021.preheader, label %vec.epilog.ph4024, !prof !25

vec.epilog.ph4024:                                ; preds = %vector.main.loop.iter.check4002, %vec.epilog.iter.check4022
  %vec.epilog.resume.val4019 = phi i64 [ %n.vec4005, %vec.epilog.iter.check4022 ], [ 0, %vector.main.loop.iter.check4002 ]
  %n.vec4025 = and i64 %wide.trip.count3078, 4294967292 ; 3 uses
  %broadcast.splatinsert4026 = insertelement <4 x i32> poison, i32 %i.aki, i64 0
  %broadcast.splat4027 = shufflevector <4 x i32> %broadcast.splatinsert4026, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert4028 = insertelement <4 x i32> poison, i32 %sext, i64 0
  %broadcast.splat4029 = shufflevector <4 x i32> %broadcast.splatinsert4028, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert4030 = insertelement <4 x i16> poison, i16 %storemerge, i64 0
  %broadcast.splat4031 = shufflevector <4 x i16> %broadcast.splatinsert4030, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4032

vec.epilog.vector.body4032:                       ; preds = %vec.epilog.vector.body4032, %vec.epilog.ph4024
  %index4033 = phi i64 [ %vec.epilog.resume.val4019, %vec.epilog.ph4024 ], [ %index.next4035, %vec.epilog.vector.body4032 ] ; 2 uses
  %i.akx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index4033 ; 2 uses
  %wide.load4034 = load <4 x i16>, ptr %i.akx, align 2, !tbaa !27 ; 2 uses
  %i.aky = icmp eq <4 x i16> %wide.load4034, %broadcast.splat4031
  %i.akz = zext <4 x i16> %wide.load4034 to <4 x i32>
  %i.ala = sub nsw <4 x i32> %i.akz, %broadcast.splat4027
  %i.alb = select <4 x i1> %i.aky, <4 x i32> %broadcast.splat4029, <4 x i32> %i.ala
  %i.alc = trunc <4 x i32> %i.alb to <4 x i16>
  store <4 x i16> %i.alc, ptr %i.akx, align 2, !tbaa !27
  %index.next4035 = add nuw i64 %index4033, 4     ; 2 uses
  %i.ald = icmp eq i64 %index.next4035, %n.vec4025
  br i1 %i.ald, label %vec.epilog.middle.block4036, label %vec.epilog.vector.body4032, !llvm.loop !198

vec.epilog.middle.block4036:                      ; preds = %vec.epilog.vector.body4032
  %cmp.n4037 = icmp eq i64 %n.vec4025, %wide.trip.count3078
  br i1 %cmp.n4037, label %.loopexit2297, label %vec.epilog.scalar.ph4021.preheader

vec.epilog.scalar.ph4021.preheader:               ; preds = %iter.check4020, %vec.epilog.iter.check4022, %vec.epilog.middle.block4036
  %indvars.iv3075.ph = phi i64 [ 0, %iter.check4020 ], [ %n.vec4005, %vec.epilog.iter.check4022 ], [ %n.vec4025, %vec.epilog.middle.block4036 ]
  br label %vec.epilog.scalar.ph4021

vec.epilog.scalar.ph4021:                         ; preds = %vec.epilog.scalar.ph4021.preheader, %vec.epilog.scalar.ph4021
  %indvars.iv3075 = phi i64 [ %indvars.iv.next3076, %vec.epilog.scalar.ph4021 ], [ %indvars.iv3075.ph, %vec.epilog.scalar.ph4021.preheader ] ; 2 uses
  %i.ale = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3075 ; 2 uses
  %i.alf = load i16, ptr %i.ale, align 2, !tbaa !27 ; 2 uses
  %i.alg = icmp eq i16 %i.alf, %storemerge
  %i.alh = zext i16 %i.alf to i32
  %i.ali = sub nsw i32 %i.alh, %i.aki
  %i.alj = select i1 %i.alg, i32 %sext, i32 %i.ali
  %i.alk = trunc i32 %i.alj to i16
  store i16 %i.alk, ptr %i.ale, align 2, !tbaa !27
  %indvars.iv.next3076 = add nuw nsw i64 %indvars.iv3075, 1 ; 2 uses
  %exitcond3079.not = icmp eq i64 %indvars.iv.next3076, %wide.trip.count3078
  br i1 %exitcond3079.not, label %.loopexit2297, label %vec.epilog.scalar.ph4021, !llvm.loop !199

bb.dd:                                            ; preds = %bb.cx
  %i.all = load i32, ptr %5, align 4, !tbaa !16   ; 4 uses
  %i.alm = icmp eq i32 %i.all, 0
  %i.aln = load i16, ptr %0, align 2, !tbaa !27   ; 11 uses
  %.not2842 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.alm, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  br i1 %.not2842, label %._crit_edge2511, label %iter.check3948

iter.check3948:                                   ; preds = %bb.de
  %wide.trip.count3050 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check3925 = icmp ult i32 %1, 4
  br i1 %min.iters.check3925, label %.lr.ph2510.preheader, label %vector.main.loop.iter.check3926

vector.main.loop.iter.check3926:                  ; preds = %iter.check3948
  %min.iters.check3927 = icmp ult i32 %1, 16
  br i1 %min.iters.check3927, label %vec.epilog.ph3952, label %vector.ph3928

vector.ph3928:                                    ; preds = %vector.main.loop.iter.check3926
  %i.alo = and i64 %wide.trip.count3050, 12
  %n.vec3929 = and i64 %wide.trip.count3050, 4294967280 ; 4 uses
  %broadcast.splatinsert3930 = insertelement <8 x i16> poison, i16 %i.aln, i64 0
  %broadcast.splat3931 = shufflevector <8 x i16> %broadcast.splatinsert3930, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body3932

vector.body3932:                                  ; preds = %vector.ph3928, %vector.body3932
  %index3933 = phi i64 [ 0, %vector.ph3928 ], [ %index.next3940, %vector.body3932 ] ; 2 uses
  %vec.phi3934 = phi <8 x i16> [ %broadcast.splat3931, %vector.ph3928 ], [ %i.alr, %vector.body3932 ]
  %vec.phi3935 = phi <8 x i16> [ %broadcast.splat3931, %vector.ph3928 ], [ %i.als, %vector.body3932 ]
  %vec.phi3936 = phi <8 x i16> [ %broadcast.splat3931, %vector.ph3928 ], [ %i.alt, %vector.body3932 ]
  %vec.phi3937 = phi <8 x i16> [ %broadcast.splat3931, %vector.ph3928 ], [ %i.alu, %vector.body3932 ]
  %i.alp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index3933 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 16
  %wide.load3938 = load <8 x i16>, ptr %i.alp, align 2, !tbaa !27 ; 2 uses
  %wide.load3939 = load <8 x i16>, ptr %i.alq, align 2, !tbaa !27 ; 2 uses
  %i.alr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load3938, <8 x i16> %vec.phi3934) ; 2 uses
  %i.als = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load3939, <8 x i16> %vec.phi3935) ; 2 uses
  %i.alt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load3938, <8 x i16> %vec.phi3936) ; 2 uses
  %i.alu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load3939, <8 x i16> %vec.phi3937) ; 2 uses
  %index.next3940 = add nuw i64 %index3933, 16    ; 2 uses
  %i.alv = icmp eq i64 %index.next3940, %n.vec3929
  br i1 %i.alv, label %middle.block3941, label %vector.body3932, !llvm.loop !200

middle.block3941:                                 ; preds = %vector.body3932
  %rdx.minmax3942 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.alr, <8 x i16> %i.als)
  %i.alw = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax3942) ; 3 uses
  %rdx.minmax3943 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.alt, <8 x i16> %i.alu)
  %i.alx = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax3943) ; 3 uses
  %cmp.n3944 = icmp eq i64 %n.vec3929, %wide.trip.count3050
  br i1 %cmp.n3944, label %._crit_edge2511, label %vec.epilog.iter.check3950

vec.epilog.iter.check3950:                        ; preds = %middle.block3941
  %min.epilog.iters.check3951 = icmp eq i64 %i.alo, 0
  br i1 %min.epilog.iters.check3951, label %.lr.ph2510.preheader, label %vec.epilog.ph3952, !prof !25

vec.epilog.ph3952:                                ; preds = %vector.main.loop.iter.check3926, %vec.epilog.iter.check3950
  %vec.epilog.resume.val3945 = phi i64 [ %n.vec3929, %vec.epilog.iter.check3950 ], [ 0, %vector.main.loop.iter.check3926 ]
  %bc.merge.rdx3946 = phi i16 [ %i.alw, %vec.epilog.iter.check3950 ], [ %i.aln, %vector.main.loop.iter.check3926 ]
  %bc.merge.rdx3947 = phi i16 [ %i.alx, %vec.epilog.iter.check3950 ], [ %i.aln, %vector.main.loop.iter.check3926 ]
  %n.vec3953 = and i64 %wide.trip.count3050, 4294967292 ; 3 uses
  %broadcast.splatinsert3954 = insertelement <4 x i16> poison, i16 %bc.merge.rdx3946, i64 0
  %broadcast.splat3955 = shufflevector <4 x i16> %broadcast.splatinsert3954, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3956 = insertelement <4 x i16> poison, i16 %bc.merge.rdx3947, i64 0
  %broadcast.splat3957 = shufflevector <4 x i16> %broadcast.splatinsert3956, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3958

vec.epilog.vector.body3958:                       ; preds = %vec.epilog.vector.body3958, %vec.epilog.ph3952
  %index3959 = phi i64 [ %vec.epilog.resume.val3945, %vec.epilog.ph3952 ], [ %index.next3963, %vec.epilog.vector.body3958 ] ; 2 uses
  %vec.phi3960 = phi <4 x i16> [ %broadcast.splat3955, %vec.epilog.ph3952 ], [ %i.alz, %vec.epilog.vector.body3958 ]
  %vec.phi3961 = phi <4 x i16> [ %broadcast.splat3957, %vec.epilog.ph3952 ], [ %i.ama, %vec.epilog.vector.body3958 ]
  %i.aly = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index3959
  %wide.load3962 = load <4 x i16>, ptr %i.aly, align 2, !tbaa !27 ; 2 uses
  %i.alz = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load3962, <4 x i16> %vec.phi3960) ; 2 uses
  %i.ama = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load3962, <4 x i16> %vec.phi3961) ; 2 uses
  %index.next3963 = add nuw i64 %index3959, 4     ; 2 uses
  %i.amb = icmp eq i64 %index.next3963, %n.vec3953
  br i1 %i.amb, label %vec.epilog.middle.block3964, label %vec.epilog.vector.body3958, !llvm.loop !201

vec.epilog.middle.block3964:                      ; preds = %vec.epilog.vector.body3958
  %i.amc = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.alz) ; 2 uses
  %i.amd = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.ama) ; 2 uses
  %cmp.n3965 = icmp eq i64 %n.vec3953, %wide.trip.count3050
  br i1 %cmp.n3965, label %._crit_edge2511, label %.lr.ph2510.preheader

.lr.ph2510.preheader:                             ; preds = %iter.check3948, %vec.epilog.iter.check3950, %vec.epilog.middle.block3964
  %indvars.iv3048.ph = phi i64 [ 0, %iter.check3948 ], [ %n.vec3929, %vec.epilog.iter.check3950 ], [ %n.vec3953, %vec.epilog.middle.block3964 ]
  %.415452507.ph = phi i16 [ %i.aln, %iter.check3948 ], [ %i.alw, %vec.epilog.iter.check3950 ], [ %i.amc, %vec.epilog.middle.block3964 ]
  %.715542506.ph = phi i16 [ %i.aln, %iter.check3948 ], [ %i.alx, %vec.epilog.iter.check3950 ], [ %i.amd, %vec.epilog.middle.block3964 ]
  br label %.lr.ph2510

.lr.ph2510:                                       ; preds = %.lr.ph2510.preheader, %.lr.ph2510
  %indvars.iv3048 = phi i64 [ %indvars.iv.next3049, %.lr.ph2510 ], [ %indvars.iv3048.ph, %.lr.ph2510.preheader ] ; 2 uses
  %.415452507 = phi i16 [ %spec.select1952, %.lr.ph2510 ], [ %.415452507.ph, %.lr.ph2510.preheader ]
  %.715542506 = phi i16 [ %.81555, %.lr.ph2510 ], [ %.715542506.ph, %.lr.ph2510.preheader ]
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3048
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !27 ; 2 uses
  %spec.select1952 = tail call i16 @llvm.smax.i16(i16 %i.amf, i16 %.415452507) ; 2 uses
  %.81555 = tail call i16 @llvm.smin.i16(i16 %i.amf, i16 %.715542506) ; 2 uses
  %indvars.iv.next3049 = add nuw nsw i64 %indvars.iv3048, 1 ; 2 uses
  %exitcond3051.not = icmp eq i64 %indvars.iv.next3049, %wide.trip.count3050
  br i1 %exitcond3051.not, label %._crit_edge2511, label %.lr.ph2510, !llvm.loop !202

._crit_edge2511:                                  ; preds = %.lr.ph2510, %middle.block3941, %vec.epilog.middle.block3964, %bb.de
  %.71554.lcssa = phi i16 [ %i.aln, %bb.de ], [ %i.amd, %vec.epilog.middle.block3964 ], [ %i.alx, %middle.block3941 ], [ %.81555, %.lr.ph2510 ] ; 2 uses
  %.41545.lcssa = phi i16 [ %i.aln, %bb.de ], [ %i.amc, %vec.epilog.middle.block3964 ], [ %i.alw, %middle.block3941 ], [ %spec.select1952, %.lr.ph2510 ]
  %i.amg = zext i16 %.41545.lcssa to i32
  %i.amh = zext i16 %.71554.lcssa to i32
  %i.ami = sub nsw i32 %i.amg, %i.amh             ; 2 uses
  %i.amj = and i32 %i.ami, 65534
  %i.amk = icmp eq i32 %i.amj, 65534
  br i1 %i.amk, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge2511
  store i32 16, ptr %5, align 4, !tbaa !16
  br label %bb.ff

bb.dg:                                            ; preds = %._crit_edge2511
  %i.aml = add nsw i32 %i.ami, 1
  %i.amm = and i32 %i.aml, 65535
  %i.amn = zext nneg i32 %i.amm to i64            ; 2 uses
  %i.amo = lshr i64 %i.amn, 1                     ; 2 uses
  %.not13.i2092 = icmp eq i64 %i.amo, 0
  br i1 %.not13.i2092, label %H5Z__scaleoffset_log2.exit2100, label %.lr.ph.i2093

.lr.ph.i2093:                                     ; preds = %bb.dg, %.lr.ph.i2093
  %i.amp = phi i64 [ %i.ams, %.lr.ph.i2093 ], [ %i.amo, %bb.dg ]
  %.0915.i2094 = phi i64 [ %i.amr, %.lr.ph.i2093 ], [ 1, %bb.dg ]
  %.01014.i2095 = phi i32 [ %i.amq, %.lr.ph.i2093 ], [ 0, %bb.dg ]
  %i.amq = add nuw nsw i32 %.01014.i2095, 1       ; 2 uses
  %i.amr = shl nuw nsw i64 %.0915.i2094, 1        ; 2 uses
  %i.ams = lshr i64 %i.amp, 1                     ; 2 uses
  %.not.i2096 = icmp eq i64 %i.ams, 0
  br i1 %.not.i2096, label %H5Z__scaleoffset_log2.exit2100, label %.lr.ph.i2093, !llvm.loop !0

H5Z__scaleoffset_log2.exit2100:                   ; preds = %.lr.ph.i2093, %bb.dg
  %.010.lcssa.i2097 = phi i32 [ 0, %bb.dg ], [ %i.amq, %.lr.ph.i2093 ]
  %.09.lcssa.i2098 = phi i64 [ 1, %bb.dg ], [ %i.amr, %.lr.ph.i2093 ]
  %i.amt = icmp ne i64 %.09.lcssa.i2098, %i.amn
  %i.amu = zext i1 %i.amt to i32
  %.011.i2099 = add i32 %.010.lcssa.i2097, %i.amu ; 2 uses
  store i32 %.011.i2099, ptr %5, align 4, !tbaa !16
  br label %thread-pre-split2231

bb.dh:                                            ; preds = %bb.dd
  br i1 %.not2842, label %.loopexit2297, label %iter.check

iter.check:                                       ; preds = %bb.dh
  %wide.trip.count3046 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check3897 = icmp ult i32 %1, 4
  br i1 %min.iters.check3897, label %.lr.ph2504.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3898 = icmp ult i32 %1, 16
  br i1 %min.iters.check3898, label %vec.epilog.ph, label %vector.ph3899

vector.ph3899:                                    ; preds = %vector.main.loop.iter.check
  %i.amv = and i64 %wide.trip.count3046, 12
  %n.vec3900 = and i64 %wide.trip.count3046, 4294967280 ; 4 uses
  %broadcast.splatinsert3901 = insertelement <8 x i16> poison, i16 %i.aln, i64 0
  %broadcast.splat3902 = shufflevector <8 x i16> %broadcast.splatinsert3901, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body3903

vector.body3903:                                  ; preds = %vector.ph3899, %vector.body3903
  %index3904 = phi i64 [ 0, %vector.ph3899 ], [ %index.next3909, %vector.body3903 ] ; 2 uses
  %vec.phi3905 = phi <8 x i16> [ %broadcast.splat3902, %vector.ph3899 ], [ %i.amy, %vector.body3903 ]
  %vec.phi3906 = phi <8 x i16> [ %broadcast.splat3902, %vector.ph3899 ], [ %i.amz, %vector.body3903 ]
  %i.amw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index3904 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  %wide.load3907 = load <8 x i16>, ptr %i.amw, align 2, !tbaa !27
  %wide.load3908 = load <8 x i16>, ptr %i.amx, align 2, !tbaa !27
  %i.amy = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load3907, <8 x i16> %vec.phi3905) ; 2 uses
  %i.amz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load3908, <8 x i16> %vec.phi3906) ; 2 uses
  %index.next3909 = add nuw i64 %index3904, 16    ; 2 uses
  %i.ana = icmp eq i64 %index.next3909, %n.vec3900
  br i1 %i.ana, label %middle.block3910, label %vector.body3903, !llvm.loop !203

middle.block3910:                                 ; preds = %vector.body3903
  %rdx.minmax3911 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.amy, <8 x i16> %i.amz)
  %i.anb = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax3911) ; 3 uses
  %cmp.n3912 = icmp eq i64 %n.vec3900, %wide.trip.count3046
  br i1 %cmp.n3912, label %thread-pre-split2231, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block3910
  %min.epilog.iters.check = icmp eq i64 %i.amv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2504.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec3900, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx3913 = phi i16 [ %i.anb, %vec.epilog.iter.check ], [ %i.aln, %vector.main.loop.iter.check ]
  %n.vec3914 = and i64 %wide.trip.count3046, 4294967292 ; 3 uses
  %broadcast.splatinsert3915 = insertelement <4 x i16> poison, i16 %bc.merge.rdx3913, i64 0
  %broadcast.splat3916 = shufflevector <4 x i16> %broadcast.splatinsert3915, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3917 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3920, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi3918 = phi <4 x i16> [ %broadcast.splat3916, %vec.epilog.ph ], [ %i.and, %vec.epilog.vector.body ]
  %i.anc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index3917
  %wide.load3919 = load <4 x i16>, ptr %i.anc, align 2, !tbaa !27
  %i.and = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load3919, <4 x i16> %vec.phi3918) ; 2 uses
  %index.next3920 = add nuw i64 %index3917, 4     ; 2 uses
  %i.ane = icmp eq i64 %index.next3920, %n.vec3914
  br i1 %i.ane, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.anf = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.and) ; 2 uses
  %cmp.n3921 = icmp eq i64 %n.vec3914, %wide.trip.count3046
  br i1 %cmp.n3921, label %thread-pre-split2231, label %.lr.ph2504.preheader

.lr.ph2504.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3044.ph = phi i64 [ 0, %iter.check ], [ %n.vec3900, %vec.epilog.iter.check ], [ %n.vec3914, %vec.epilog.middle.block ]
  %.915562501.ph = phi i16 [ %i.aln, %iter.check ], [ %i.anb, %vec.epilog.iter.check ], [ %i.anf, %vec.epilog.middle.block ]
  br label %.lr.ph2504

.lr.ph2504:                                       ; preds = %.lr.ph2504.preheader, %.lr.ph2504
  %indvars.iv3044 = phi i64 [ %indvars.iv.next3045, %.lr.ph2504 ], [ %indvars.iv3044.ph, %.lr.ph2504.preheader ] ; 2 uses
  %.915562501 = phi i16 [ %spec.select1953, %.lr.ph2504 ], [ %.915562501.ph, %.lr.ph2504.preheader ]
  %i.ang = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3044
  %i.anh = load i16, ptr %i.ang, align 2, !tbaa !27
  %spec.select1953 = tail call i16 @llvm.smin.i16(i16 %i.anh, i16 %.915562501) ; 2 uses
  %indvars.iv.next3045 = add nuw nsw i64 %indvars.iv3044, 1 ; 2 uses
  %exitcond3047.not = icmp eq i64 %indvars.iv.next3045, %wide.trip.count3046
  br i1 %exitcond3047.not, label %thread-pre-split2231, label %.lr.ph2504, !llvm.loop !205

thread-pre-split2231:                             ; preds = %.lr.ph2504, %middle.block3910, %vec.epilog.middle.block, %H5Z__scaleoffset_log2.exit2100
  %i.ani = phi i32 [ %.011.i2099, %H5Z__scaleoffset_log2.exit2100 ], [ %i.all, %middle.block3910 ], [ %i.all, %vec.epilog.middle.block ], [ %i.all, %.lr.ph2504 ]
  %.111558 = phi i16 [ %.71554.lcssa, %H5Z__scaleoffset_log2.exit2100 ], [ %i.anb, %middle.block3910 ], [ %i.anf, %vec.epilog.middle.block ], [ %spec.select1953, %.lr.ph2504 ] ; 7 uses
  %.not1881 = icmp ne i32 %i.ani, 16
  %i.anj = icmp ne i32 %1, 0
  %or.cond2822 = and i1 %.not1881, %i.anj
  br i1 %or.cond2822, label %iter.check3985, label %.loopexit2297

iter.check3985:                                   ; preds = %thread-pre-split2231
  %wide.trip.count3055 = zext i32 %1 to i64       ; 6 uses
  %min.iters.check3970 = icmp ult i32 %1, 4
  br i1 %min.iters.check3970, label %.lr.ph2515.preheader, label %vector.main.loop.iter.check3971

vector.main.loop.iter.check3971:                  ; preds = %iter.check3985
  %min.iters.check3972 = icmp ult i32 %1, 16
  br i1 %min.iters.check3972, label %vec.epilog.ph3989, label %vector.ph3973

vector.ph3973:                                    ; preds = %vector.main.loop.iter.check3971
  %i.ank = and i64 %wide.trip.count3055, 12
  %n.vec3974 = and i64 %wide.trip.count3055, 4294967280 ; 4 uses
  %broadcast.splatinsert3975 = insertelement <8 x i16> poison, i16 %.111558, i64 0
  %broadcast.splat3976 = shufflevector <8 x i16> %broadcast.splatinsert3975, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body3977

vector.body3977:                                  ; preds = %vector.ph3973, %vector.body3977
  %index3978 = phi i64 [ 0, %vector.ph3973 ], [ %index.next3981, %vector.body3977 ] ; 2 uses
  %i.anl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index3978 ; 3 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 16 ; 2 uses
  %wide.load3979 = load <8 x i16>, ptr %i.anl, align 2, !tbaa !27
  %wide.load3980 = load <8 x i16>, ptr %i.anm, align 2, !tbaa !27
  %i.ann = sub <8 x i16> %wide.load3979, %broadcast.splat3976
  %i.ano = sub <8 x i16> %wide.load3980, %broadcast.splat3976
  store <8 x i16> %i.ann, ptr %i.anl, align 2, !tbaa !27
  store <8 x i16> %i.ano, ptr %i.anm, align 2, !tbaa !27
  %index.next3981 = add nuw i64 %index3978, 16    ; 2 uses
  %i.anp = icmp eq i64 %index.next3981, %n.vec3974
  br i1 %i.anp, label %middle.block3982, label %vector.body3977, !llvm.loop !206

middle.block3982:                                 ; preds = %vector.body3977
  %cmp.n3983 = icmp eq i64 %n.vec3974, %wide.trip.count3055
  br i1 %cmp.n3983, label %.loopexit2297, label %vec.epilog.iter.check3987

vec.epilog.iter.check3987:                        ; preds = %middle.block3982
  %min.epilog.iters.check3988 = icmp eq i64 %i.ank, 0
  br i1 %min.epilog.iters.check3988, label %.lr.ph2515.preheader, label %vec.epilog.ph3989, !prof !25

vec.epilog.ph3989:                                ; preds = %vector.main.loop.iter.check3971, %vec.epilog.iter.check3987
  %vec.epilog.resume.val3984 = phi i64 [ %n.vec3974, %vec.epilog.iter.check3987 ], [ 0, %vector.main.loop.iter.check3971 ]
  %n.vec3990 = and i64 %wide.trip.count3055, 4294967292 ; 3 uses
  %broadcast.splatinsert3991 = insertelement <4 x i16> poison, i16 %.111558, i64 0
  %broadcast.splat3992 = shufflevector <4 x i16> %broadcast.splatinsert3991, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3993

vec.epilog.vector.body3993:                       ; preds = %vec.epilog.vector.body3993, %vec.epilog.ph3989
  %index3994 = phi i64 [ %vec.epilog.resume.val3984, %vec.epilog.ph3989 ], [ %index.next3996, %vec.epilog.vector.body3993 ] ; 2 uses
  %i.anq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index3994 ; 2 uses
  %wide.load3995 = load <4 x i16>, ptr %i.anq, align 2, !tbaa !27
  %i.anr = sub <4 x i16> %wide.load3995, %broadcast.splat3992
  store <4 x i16> %i.anr, ptr %i.anq, align 2, !tbaa !27
  %index.next3996 = add nuw i64 %index3994, 4     ; 2 uses
  %i.ans = icmp eq i64 %index.next3996, %n.vec3990
  br i1 %i.ans, label %vec.epilog.middle.block3997, label %vec.epilog.vector.body3993, !llvm.loop !207

vec.epilog.middle.block3997:                      ; preds = %vec.epilog.vector.body3993
  %cmp.n3998 = icmp eq i64 %n.vec3990, %wide.trip.count3055
  br i1 %cmp.n3998, label %.loopexit2297, label %.lr.ph2515.preheader

.lr.ph2515.preheader:                             ; preds = %iter.check3985, %vec.epilog.iter.check3987, %vec.epilog.middle.block3997
  %indvars.iv3052.ph = phi i64 [ 0, %iter.check3985 ], [ %n.vec3974, %vec.epilog.iter.check3987 ], [ %n.vec3990, %vec.epilog.middle.block3997 ]
  br label %.lr.ph2515

.lr.ph2515:                                       ; preds = %.lr.ph2515.preheader, %.lr.ph2515
  %indvars.iv3052 = phi i64 [ %indvars.iv.next3053, %.lr.ph2515 ], [ %indvars.iv3052.ph, %.lr.ph2515.preheader ] ; 2 uses
  %i.ant = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv3052 ; 2 uses
  %i.anu = load i16, ptr %i.ant, align 2, !tbaa !27
  %i.anv = sub i16 %i.anu, %.111558
  store i16 %i.anv, ptr %i.ant, align 2, !tbaa !27
  %indvars.iv.next3053 = add nuw nsw i64 %indvars.iv3052, 1 ; 2 uses
  %exitcond3056.not = icmp eq i64 %indvars.iv.next3053, %wide.trip.count3055
  br i1 %exitcond3056.not, label %.loopexit2297, label %.lr.ph2515, !llvm.loop !208

.loopexit2297:                                    ; preds = %.lr.ph2515, %vec.epilog.scalar.ph4021, %middle.block3982, %vec.epilog.middle.block3997, %middle.block4017, %vec.epilog.middle.block4036, %bb.dh, %thread-pre-split2231, %thread-pre-split2229
  %.121559 = phi i16 [ %.111558, %thread-pre-split2231 ], [ %.61553, %thread-pre-split2229 ], [ %.61553, %middle.block4017 ], [ %i.aln, %bb.dh ], [ %.111558, %middle.block3982 ], [ %.61553, %vec.epilog.middle.block4036 ], [ %.61553, %vec.epilog.scalar.ph4021 ], [ %.111558, %vec.epilog.middle.block3997 ], [ %.111558, %.lr.ph2515 ]
  %i.anw = sext i16 %.121559 to i64
  store i64 %i.anw, ptr %6, align 8, !tbaa !18
  br label %bb.ff

bb.di:                                            ; preds = %bb.a
  %i.anx = icmp eq i32 %3, 1
  br i1 %i.anx, label %.preheader2306, label %bb.dw

.preheader2306:                                   ; preds = %bb.di
  %.03323.in = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.03323 = load i32, ptr %.03323.in, align 4, !tbaa !16 ; 13 uses
  %i.any = load i32, ptr %5, align 4, !tbaa !16   ; 5 uses
  %i.anz = icmp eq i32 %i.any, 0
  %.not2840 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %i.anz, label %.preheader2304, label %.preheader2305

.preheader2305:                                   ; preds = %.preheader2306
  br i1 %.not2840, label %.critedge1956, label %.lr.ph2475

.lr.ph2475:                                       ; preds = %.preheader2305
  %wide.trip.count3022 = zext i32 %1 to i64
  br label %bb.dn

.preheader2304:                                   ; preds = %.preheader2306
  br i1 %.not2840, label %.critedge1954, label %.lr.ph2486

.lr.ph2486:                                       ; preds = %.preheader2304
  %wide.trip.count3032 = zext i32 %1 to i64
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph2486, %bb.dk
  %indvars.iv3029 = phi i64 [ 0, %.lr.ph2486 ], [ %indvars.iv.next3030, %bb.dk ] ; 3 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv3029
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !16 ; 2 uses
  %i.aoc = icmp eq i32 %i.aob, %.03323
  br i1 %i.aoc, label %bb.dk, label %.critedge1954.loopexit

bb.dk:                                            ; preds = %bb.dj
  %indvars.iv.next3030 = add nuw nsw i64 %indvars.iv3029, 1 ; 2 uses
  %exitcond3033.not = icmp eq i64 %indvars.iv.next3030, %wide.trip.count3032
  br i1 %exitcond3033.not, label %._crit_edge2496, label %bb.dj, !llvm.loop !209

.critedge1954.loopexit:                           ; preds = %bb.dj
  %i.aod = trunc nuw i64 %indvars.iv3029 to i32
  br label %.critedge1954

.critedge1954:                                    ; preds = %.critedge1954.loopexit, %.preheader2304
  %.01497.lcssa = phi i32 [ 0, %.preheader2304 ], [ %i.aod, %.critedge1954.loopexit ] ; 2 uses
  %.01505 = phi i32 [ 0, %.preheader2304 ], [ %i.aob, %.critedge1954.loopexit ] ; 8 uses
  %i.aoe = icmp ult i32 %.01497.lcssa, %1
  br i1 %i.aoe, label %.lr.ph2495, label %._crit_edge2496

.lr.ph2495:                                       ; preds = %.critedge1954
  %i.aof = zext i32 %.01497.lcssa to i64          ; 5 uses
  %wide.trip.count3037 = zext i32 %1 to i64       ; 3 uses
  %i.aog = sub nsw i64 %wide.trip.count3037, %i.aof
  %xtraiter4805 = and i64 %i.aog, 1
  %lcmp.mod4806.not = icmp eq i64 %xtraiter4805, 0
  br i1 %lcmp.mod4806.not, label %.prol.loopexit4804, label %.prol.loopexit4804.unr-lcssa

.prol.loopexit4804.unr-lcssa:                     ; preds = %.lr.ph2495
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aof
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !16 ; 3 uses
  %i.aoj = icmp eq i32 %i.aoi, %.03323            ; 2 uses
  %spec.select1955.prol = tail call i32 @llvm.smax.i32(i32 %i.aoi, i32 %.01505)
  %spec.select1981.prol = tail call i32 @llvm.smin.i32(i32 %i.aoi, i32 %.01505)
  %.21513.prol = select i1 %i.aoj, i32 %.01505, i32 %spec.select1981.prol ; 2 uses
  %.31508.prol = select i1 %i.aoj, i32 %.01505, i32 %spec.select1955.prol ; 2 uses
  %indvars.iv.next3035.prol = add nuw nsw i64 %i.aof, 1
  br label %.prol.loopexit4804

.prol.loopexit4804:                               ; preds = %.prol.loopexit4804.unr-lcssa, %.lr.ph2495
  %.21513.lcssa.unr = phi i32 [ poison, %.lr.ph2495 ], [ %.21513.prol, %.prol.loopexit4804.unr-lcssa ]
  %.31508.lcssa.unr = phi i32 [ poison, %.lr.ph2495 ], [ %.31508.prol, %.prol.loopexit4804.unr-lcssa ]
  %indvars.iv3034.unr = phi i64 [ %i.aof, %.lr.ph2495 ], [ %indvars.iv.next3035.prol, %.prol.loopexit4804.unr-lcssa ]
  %.115062493.unr = phi i32 [ %.01505, %.lr.ph2495 ], [ %.31508.prol, %.prol.loopexit4804.unr-lcssa ]
  %.115122492.unr = phi i32 [ %.01505, %.lr.ph2495 ], [ %.21513.prol, %.prol.loopexit4804.unr-lcssa ]
  %i.aok = add nsw i64 %wide.trip.count3037, -1
  %i.aol = icmp eq i64 %i.aok, %i.aof
  br i1 %i.aol, label %._crit_edge2496, label %.lr.ph2495.new

.lr.ph2495.new:                                   ; preds = %.prol.loopexit4804, %.lr.ph2495.new
  %indvars.iv3034 = phi i64 [ %indvars.iv.next3035.1, %.lr.ph2495.new ], [ %indvars.iv3034.unr, %.prol.loopexit4804 ] ; 3 uses
  %.115062493 = phi i32 [ %.31508.1, %.lr.ph2495.new ], [ %.115062493.unr, %.prol.loopexit4804 ] ; 2 uses
  %.115122492 = phi i32 [ %.21513.1, %.lr.ph2495.new ], [ %.115122492.unr, %.prol.loopexit4804 ] ; 2 uses
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv3034
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !16 ; 3 uses
  %i.aoo = icmp eq i32 %i.aon, %.03323            ; 2 uses
  %spec.select1955 = tail call i32 @llvm.smax.i32(i32 %i.aon, i32 %.115062493)
  %spec.select1981 = tail call i32 @llvm.smin.i32(i32 %i.aon, i32 %.115122492)
end_hunk_3
