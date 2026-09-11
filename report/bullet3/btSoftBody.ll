Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody16generateClustersEii:bb.a
_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit.thread: ; preds = %_ZN10btSoftBody15releaseClustersEv.exit
  store i32 %.sroa.speculated517, ptr %i.b, align 4, !tbaa !235
  br label %._crit_edge.thread

bb.b:                                             ; preds = %_ZN10btSoftBody15releaseClustersEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !236
  %i.m = icmp slt i32 %i.l, %.sroa.speculated517
  br i1 %i.m, label %bb.c, label %..lr.ph.i180_crit_edge

..lr.ph.i180_crit_edge:                           ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !234
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.sroa.speculated517, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !234
  br label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.p = sext i32 %.sroa.speculated517 to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.q, i32 noundef 16) ; 11 uses
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !235 ; 3 uses
  %i.s = icmp sgt i32 %.pre.i, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !234  ; 11 uses
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = ptrtoaddr ptr %i.r to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i, 8
  %i.x = sub i64 %i.v, %i.w
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !378
  %wide.load910 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !378
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %wide.load, ptr %i.y, align 8, !tbaa !378
  store <2 x ptr> %wide.load910, ptr %i.ab, align 8, !tbaa !378
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !868

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.prol
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.prol
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !378
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !378
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !869

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ag = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !378
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !378
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !378
  store ptr %i.an, ptr %i.al, align 8, !tbaa !378
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !378
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !378
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !378
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !378
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !870

_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i
  %i.au = phi ptr [ %i.o, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread ], [ %i.u, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i ] ; 2 uses
  %i.av = phi ptr [ %i.n, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread ], [ %i.t, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i ] ; 2 uses
  %.0.i.i.i880 = phi ptr [ null, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread ], [ %i.r, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i ] ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i
  %i.aw = phi ptr [ %i.au, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ], [ %i.u, %middle.block ], [ %i.u, %scalar.ph ], [ %i.u, %scalar.ph.prol.loopexit ]
  %i.ax = phi ptr [ %i.av, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ], [ %i.t, %middle.block ], [ %i.t, %scalar.ph ], [ %i.t, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i.i.i878.a = phi ptr [ %.0.i.i.i880, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ], [ %i.r, %middle.block ], [ %i.r, %scalar.ph ], [ %i.r, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !233, !range !262, !noundef !263
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.d, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aw)
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i
  %i.bb = phi ptr [ %i.ax, %bb.d ], [ %i.ax, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i ], [ %i.av, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ]
  %.0.i.i.i879 = phi ptr [ %.0.i.i.i878.a, %bb.d ], [ %.0.i.i.i878.a, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i ], [ %.0.i.i.i880, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i8 1, ptr %i.bc, align 8, !tbaa !233
  store ptr %.0.i.i.i879, ptr %i.bb, align 8, !tbaa !234
  store i32 %.sroa.speculated517, ptr %i.k, align 8, !tbaa !236
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i, %..lr.ph.i180_crit_edge
  %i.bd = phi ptr [ %.pre, %..lr.ph.i180_crit_edge ], [ %.0.i.i.i879, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i ]
  %i.be = sext i32 %i.g to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %.sroa.speculated517 to i64
  %i.bf = shl nsw i64 %i.be, 3
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.bf
  %i.bg = sub nsw i64 %wide.trip.count.i, %i.be
  %i.bh = shl nsw i64 %i.bg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bh, i1 false), !tbaa !378
  store i32 %.sroa.speculated517, ptr %i.b, align 4, !tbaa !235
  %i.bi = icmp sgt i32 %.sroa.speculated517, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1760
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.bk = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 424, i32 noundef 16) ; 17 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i8 1, ptr %i.bl, align 8, !tbaa !160
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !161
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 0, ptr %i.bn, align 4, !tbaa !162
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 0, ptr %i.bo, align 8, !tbaa !163
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i8 1, ptr %i.bp, align 8, !tbaa !945
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr null, ptr %i.bq, align 8, !tbaa !409
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  store i32 0, ptr %i.br, align 4, !tbaa !408
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i32 0, ptr %i.bs, align 8, !tbaa !946
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  store i8 1, ptr %i.bt, align 8, !tbaa !156
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store ptr null, ptr %i.bu, align 8, !tbaa !157
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 68
  store i32 0, ptr %i.bv, align 4, !tbaa !158
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  store i32 0, ptr %i.bw, align 8, !tbaa !159
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 384
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  store <2 x float> <float 1.000000e+02, float f0x3C23D70A>, ptr %i.by, align 8, !tbaa !253
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 416
  store i8 0, ptr %i.bz, align 8, !tbaa !421
  %i.ca = load ptr, ptr %i.bj, align 8, !tbaa !234
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv
  store ptr %i.bk, ptr %i.cb, align 8, !tbaa !378
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 417
  store i8 1, ptr %i.cc, align 1, !tbaa !422
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.pr = load i32, ptr %i.b, align 4, !tbaa !235  ; 6 uses
  %i.cd = sext i32 %.pr to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.e, label %._crit_edge, !llvm.loop !871

._crit_edge:                                      ; preds = %bb.e
  %i.cf = icmp sgt i32 %.pr, 0
  br i1 %i.cf, label %.preheader549, label %._crit_edge.thread

.preheader549:                                    ; preds = %._crit_edge
  %i.cg = load i32, ptr %i.h, align 4, !tbaa !171 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph576, label %.lr.ph.i191

.lr.ph576:                                        ; preds = %.preheader549
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1760
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph576, %bb.i
  %i.ck = phi i32 [ %i.cg, %.lr.ph576 ], [ %i.et, %bb.i ] ; 2 uses
  %indvars.iv661 = phi i64 [ 0, %.lr.ph576 ], [ %indvars.iv.next662, %bb.i ] ; 3 uses
  %.sroa.0495.0572 = phi float [ 0.000000e+00, %.lr.ph576 ], [ %i.cq, %bb.i ]
  %i.cl = phi <2 x float> [ zeroinitializer, %.lr.ph576 ], [ %i.ct, %bb.i ]
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !170
  %i.cn = getelementptr inbounds nuw [256 x i8], ptr %i.cm, i64 %indvars.iv661 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load float, ptr %i.co, align 4, !tbaa !253
  %i.cq = fadd float %.sroa.0495.0572, %i.cp      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cs = load <2 x float>, ptr %i.cr, align 4, !tbaa !253
  %i.ct = fadd <2 x float> %i.cl, %i.cs           ; 2 uses
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !235
  %i.cv = trunc i64 %indvars.iv661 to i32
  %i.cw = mul i32 %i.cv, 29873
  %i.cx = srem i32 %i.cw, %i.cu
  %i.cy = load ptr, ptr %i.cj, align 8, !tbaa !234
  %i.cz = zext nneg i32 %i.cx to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !378 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 36 ; 4 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !408 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !946
  %i.dg = icmp eq i32 %i.dd, %i.df
  br i1 %i.dg, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.dd, 0
  %i.dh = shl nsw i32 %i.dd, 1
  %i.di = select i1 %.not.i.i, i32 1, i32 %i.dh   ; 4 uses
  %i.dj = icmp slt i32 %i.dd, %i.di
  br i1 %i.dj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i181 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i181, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i, label %.noexc

.noexc:                                           ; preds = %bb.h
  %i.dk = sext i32 %i.di to i64
  %i.dl = shl nsw i64 %i.dk, 3
  %i.dm = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dl, i32 noundef 16)
  %.pre.i182 = load i32, ptr %i.dc, align 4, !tbaa !408
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.h
  %i.dn = phi i32 [ %.pre.i182, %.noexc ], [ %i.dd, %bb.h ] ; 5 uses
  %.0.i.i.i183 = phi ptr [ %i.dm, %.noexc ], [ null, %bb.h ] ; 8 uses
  %i.do = icmp sgt i32 %i.dn, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 48 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !409 ; 9 uses
  br i1 %i.do, label %.lr.ph.i.i.i185, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i185:                                  ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i
  %i.dr = ptrtoaddr ptr %i.dq to i64
  %.0.i.i.i1831045 = ptrtoaddr ptr %.0.i.i.i183 to i64
  %wide.trip.count.i.i.i186 = zext nneg i32 %i.dn to i64 ; 5 uses
  %min.iters.check1048 = icmp ult i32 %i.dn, 4
  %i.ds = sub i64 %i.dr, %.0.i.i.i1831045
  %diff.check1046 = icmp ugt i64 %i.ds, -32
  %or.cond1170.a = select i1 %min.iters.check1048, i1 true, i1 %diff.check1046
  br i1 %or.cond1170.a, label %scalar.ph1047.preheader, label %vector.ph1049

vector.ph1049:                                    ; preds = %.lr.ph.i.i.i185
  %n.vec1050 = and i64 %wide.trip.count.i.i.i186, 2147483644 ; 3 uses
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1049
  %index1052 = phi i64 [ 0, %vector.ph1049 ], [ %index.next1055, %vector.body1051 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %index1052 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index1052 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load1053.a = load <2 x ptr>, ptr %i.du, align 8, !tbaa !316
  %wide.load1054 = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !316
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <2 x ptr> %wide.load1053.a, ptr %i.dt, align 8, !tbaa !316
  store <2 x ptr> %wide.load1054, ptr %i.dw, align 8, !tbaa !316
  %index.next1055 = add nuw i64 %index1052, 4     ; 2 uses
  %i.dx = icmp eq i64 %index.next1055, %n.vec1050
  br i1 %i.dx, label %middle.block1056, label %vector.body1051, !llvm.loop !872

middle.block1056:                                 ; preds = %vector.body1051
  %cmp.n1057 = icmp eq i64 %n.vec1050, %wide.trip.count.i.i.i186
  br i1 %cmp.n1057, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph1047.preheader

scalar.ph1047.preheader:                          ; preds = %.lr.ph.i.i.i185, %middle.block1056
  %indvars.iv.i.i.i187.ph = phi i64 [ 0, %.lr.ph.i.i.i185 ], [ %n.vec1050, %middle.block1056 ] ; 3 uses
  %xtraiter1244 = and i64 %wide.trip.count.i.i.i186, 3 ; 2 uses
  %lcmp.mod1245.not = icmp eq i64 %xtraiter1244, 0
  br i1 %lcmp.mod1245.not, label %scalar.ph1047.prol.loopexit, label %scalar.ph1047.prol

scalar.ph1047.prol:                               ; preds = %scalar.ph1047.preheader, %scalar.ph1047.prol
  %indvars.iv.i.i.i187.prol = phi i64 [ %indvars.iv.next.i.i.i188.prol, %scalar.ph1047.prol ], [ %indvars.iv.i.i.i187.ph, %scalar.ph1047.preheader ] ; 3 uses
  %prol.iter1246 = phi i64 [ %prol.iter1246.next, %scalar.ph1047.prol ], [ 0, %scalar.ph1047.preheader ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.i.i.i187.prol
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i187.prol
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !316
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !316
  %indvars.iv.next.i.i.i188.prol = add nuw nsw i64 %indvars.iv.i.i.i187.prol, 1 ; 2 uses
  %prol.iter1246.next = add i64 %prol.iter1246, 1 ; 2 uses
  %prol.iter1246.cmp.not = icmp eq i64 %prol.iter1246.next, %xtraiter1244
  br i1 %prol.iter1246.cmp.not, label %scalar.ph1047.prol.loopexit, label %scalar.ph1047.prol, !llvm.loop !873

scalar.ph1047.prol.loopexit:                      ; preds = %scalar.ph1047.prol, %scalar.ph1047.preheader
  %indvars.iv.i.i.i187.unr = phi i64 [ %indvars.iv.i.i.i187.ph, %scalar.ph1047.preheader ], [ %indvars.iv.next.i.i.i188.prol, %scalar.ph1047.prol ]
  %i.eb = sub nsw i64 %indvars.iv.i.i.i187.ph, %wide.trip.count.i.i.i186
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph1047

scalar.ph1047:                                    ; preds = %scalar.ph1047.prol.loopexit, %scalar.ph1047
  %indvars.iv.i.i.i187 = phi i64 [ %indvars.iv.next.i.i.i188.3, %scalar.ph1047 ], [ %indvars.iv.i.i.i187.unr, %scalar.ph1047.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.i.i.i187
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i187
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !316
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !316
  %indvars.iv.next.i.i.i188 = add nuw nsw i64 %indvars.iv.i.i.i187, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.next.i.i.i188
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i188
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !316
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !316
  %indvars.iv.next.i.i.i188.1 = add nuw nsw i64 %indvars.iv.i.i.i187, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.next.i.i.i188.1
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i188.1
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !316
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !316
  %indvars.iv.next.i.i.i188.2 = add nuw nsw i64 %indvars.iv.i.i.i187, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i183, i64 %indvars.iv.next.i.i.i188.2
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i188.2
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !316
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !316
  %indvars.iv.next.i.i.i188.3 = add nuw nsw i64 %indvars.iv.i.i.i187, 4 ; 2 uses
  %exitcond.not.i.i.i189.3 = icmp eq i64 %indvars.iv.next.i.i.i188.3, %wide.trip.count.i.i.i186
  br i1 %exitcond.not.i.i.i189.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph1047, !llvm.loop !874

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i
  %.not.i5.i.i184 = icmp eq ptr %i.dq, null
  br i1 %.not.i5.i.i184, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph1047.prol.loopexit, %scalar.ph1047, %middle.block1056, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !945, !range !262, !noundef !263
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.noexc190, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i

.noexc190:                                        ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dq)
  %.pre2.pre.pre.i = load i32, ptr %i.dc, align 4, !tbaa !408
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i: ; preds = %.noexc190, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i
  %.pre2.i = phi i32 [ %i.dn, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i ], [ %.pre2.pre.pre.i, %.noexc190 ], [ %i.dn, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  store i8 1, ptr %i.es, align 8, !tbaa !945
  store ptr %.0.i.i.i183, ptr %i.dp, align 8, !tbaa !409
  store i32 %i.di, ptr %i.de, align 8, !tbaa !946
  %.pre751 = load i32, ptr %i.h, align 4, !tbaa !171
  br label %bb.i

bb.i:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i, %bb.g, %bb.f
  %i.et = phi i32 [ %.pre751, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i ], [ %i.ck, %bb.g ], [ %i.ck, %bb.f ] ; 3 uses
  %i.eu = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i ], [ %i.dd, %bb.g ], [ %i.dd, %bb.f ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !409
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  store ptr %i.cn, ptr %i.ey, align 8, !tbaa !316
  %i.ez = add nsw i32 %i.eu, 1
  store i32 %i.ez, ptr %i.dc, align 4, !tbaa !408
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 2 uses
  %i.fa = sext i32 %i.et to i64
  %i.fb = icmp slt i64 %indvars.iv.next662, %i.fa
  br i1 %i.fb, label %bb.f, label %.lr.ph.i191.loopexit, !llvm.loop !875

.lr.ph.i191.loopexit:                             ; preds = %bb.i
  %i.fc = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph.i191.loopexit, %.preheader549
  %.sroa.0495.0.lcssa = phi float [ 0.000000e+00, %.preheader549 ], [ %i.cq, %.lr.ph.i191.loopexit ]
  %.lcssa561 = phi i32 [ %i.cg, %.preheader549 ], [ %i.et, %.lr.ph.i191.loopexit ]
  %i.fd = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %.preheader549 ], [ %i.fc, %.lr.ph.i191.loopexit ]
  %i.fe = sitofp i32 %.lcssa561 to float
  %i.ff = fdiv float 1.000000e+00, %i.fe          ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fh = fmul float %.sroa.0495.0.lcssa, %i.ff
  %i.fi = zext nneg i32 %.pr to i64               ; 5 uses
  %i.fj = shl nuw nsw i64 %i.fi, 4
  %i.fk = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fj, i32 noundef 16) ; 13 uses
  %i.fl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fh, i64 0
  %i.fm = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fn = fmul <4 x float> %i.fd, %i.fm
  %i.fo = shufflevector <4 x float> %i.fl, <4 x float> %i.fn, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 5 uses
  %xtraiter1247 = and i64 %i.fi, 3                ; 3 uses
  %i.fp = icmp ult i32 %.pr, 4
  br i1 %i.fp, label %.epil.preheader, label %.lr.ph.i191.new

.lr.ph.i191.new:                                  ; preds = %.lr.ph.i191
  %unroll_iter = and i64 %i.fi, 2147483644
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i191.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i191.new ], [ %indvars.iv.next.i194.3, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i191.new ], [ %niter.next.3, %bb.j ]
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv.i193
  store <4 x float> %i.fo, ptr %i.fq, align 4
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv.i193
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x float> %i.fo, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv.i193
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store <4 x float> %i.fo, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv.i193
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  store <4 x float> %i.fo, ptr %i.fw, align 4
  %indvars.iv.next.i194.3 = add nuw nsw i64 %indvars.iv.i193, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa, label %bb.j, !llvm.loop !23

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa: ; preds = %bb.j
  %lcmp.mod1248.not = icmp eq i64 %xtraiter1247, 0
  br i1 %lcmp.mod1248.not, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa, %.lr.ph.i191
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i191 ], [ %indvars.iv.next.i194.3, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa ]
  %lcmp.mod1249 = icmp ne i64 %xtraiter1247, 0
  tail call void @llvm.assume(i1 %lcmp.mod1249)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i193.epil = phi i64 [ %indvars.iv.i193.epil.init, %.epil.preheader ], [ %indvars.iv.next.i194.epil, %bb.k ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv.i193.epil
  store <4 x float> %i.fo, ptr %i.fx, align 4
  %indvars.iv.next.i194.epil = add nuw nsw i64 %indvars.iv.i193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1247
  br i1 %epil.iter.cmp.not, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader, label %bb.k, !llvm.loop !876

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader: ; preds = %bb.k, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader.unr-lcssa
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 10 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %.not634 = icmp eq i32 %.pr, 1
  br label %.preheader547.preheader

.preheader547.preheader:                          ; preds = %._crit_edge602, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader
  %.0139 = phi i32 [ %i.gf, %._crit_edge602 ], [ 0, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.preheader ] ; 2 uses
  %i.gb = uitofp nneg i32 %.0139 to float
  %i.gc = fmul nnan float %i.gb, 6.250000e-02     ; 2 uses
  %i.gd = fcmp ogt float %i.gc, 1.000000e+00
  %.sroa.speculated = select i1 %i.gd, float 1.000000e+00, float %i.gc
  %i.ge = fsub float 2.000000e+00, %.sroa.speculated ; 2 uses
  %i.gf = add nuw nsw i32 %.0139, 1               ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader547

.preheader548:                                    ; preds = %bb.p
  %i.gi = load i32, ptr %i.h, align 4, !tbaa !171 ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph601, label %._crit_edge602

.preheader547:                                    ; preds = %.preheader547.preheader, %bb.p
  %indvars.iv668 = phi i64 [ 0, %.preheader547.preheader ], [ %indvars.iv.next669, %bb.p ] ; 4 uses
  %.0140590 = phi i1 [ false, %.preheader547.preheader ], [ %.1141, %bb.p ] ; 2 uses
  %i.gk = load ptr, ptr %i.fy, align 8, !tbaa !234
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv668
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !378 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 36
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !408 ; 6 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph584, label %._crit_edge585

.lr.ph584:                                        ; preds = %.preheader547
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !409 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.go to i64   ; 2 uses
  %xtraiter1251 = and i64 %wide.trip.count, 1
  %i.gs = icmp eq i32 %i.go, 1
  br i1 %i.gs, label %.epil.preheader1250, label %.lr.ph584.new

.lr.ph584.new:                                    ; preds = %.lr.ph584
  %unroll_iter1257 = and i64 %wide.trip.count, 2147483646
  br label %bb.l

._crit_edge585:                                   ; preds = %.preheader547
  %.not173 = icmp eq i32 %i.go, 0
  br i1 %.not173, label %bb.p, label %._crit_edge585.thread

bb.l:                                             ; preds = %bb.l, %.lr.ph584.new
  %indvars.iv664 = phi i64 [ 0, %.lr.ph584.new ], [ %indvars.iv.next665.1, %bb.l ] ; 3 uses
  %.sroa.0453.0582 = phi <2 x float> [ zeroinitializer, %.lr.ph584.new ], [ %i.hg, %bb.l ]
  %.sroa.19.0581 = phi <2 x float> [ zeroinitializer, %.lr.ph584.new ], [ %.sroa.19.8.vec.insert478.1, %bb.l ] ; 2 uses
  %niter1258 = phi i64 [ 0, %.lr.ph584.new ], [ %niter1258.next.1, %bb.l ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv664
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !316 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load <2 x float>, ptr %i.gv, align 4, !tbaa !253
  %i.gx = fadd <2 x float> %.sroa.0453.0582, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !253
  %.sroa.19.8.vec.extract = extractelement <2 x float> %.sroa.19.0581, i64 0
  %i.ha = fadd float %.sroa.19.8.vec.extract, %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv664
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !316 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load <2 x float>, ptr %i.he, align 4, !tbaa !253
  %i.hg = fadd <2 x float> %i.gx, %i.hf           ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !253
  %i.hj = fadd float %i.ha, %i.hi
  %.sroa.19.8.vec.insert478.1 = insertelement <2 x float> %.sroa.19.0581, float %i.hj, i64 0 ; 3 uses
  %indvars.iv.next665.1 = add nuw nsw i64 %indvars.iv664, 2 ; 2 uses
  %niter1258.next.1 = add i64 %niter1258, 2       ; 2 uses
  %niter1258.ncmp.1 = icmp eq i64 %niter1258.next.1, %unroll_iter1257
  br i1 %niter1258.ncmp.1, label %._crit_edge585.thread.loopexit.unr-lcssa, label %bb.l, !llvm.loop !877

._crit_edge585.thread.loopexit.unr-lcssa:         ; preds = %bb.l
  %lcmp.mod1253.not = icmp eq i64 %xtraiter1251, 0
  br i1 %lcmp.mod1253.not, label %._crit_edge585.thread, label %.epil.preheader1250

.epil.preheader1250:                              ; preds = %._crit_edge585.thread.loopexit.unr-lcssa, %.lr.ph584
  %indvars.iv664.epil.init = phi i64 [ 0, %.lr.ph584 ], [ %indvars.iv.next665.1, %._crit_edge585.thread.loopexit.unr-lcssa ]
  %.sroa.0453.0582.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph584 ], [ %i.hg, %._crit_edge585.thread.loopexit.unr-lcssa ]
  %.sroa.19.0581.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph584 ], [ %.sroa.19.8.vec.insert478.1, %._crit_edge585.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1256 = trunc i32 %i.go to i1
  tail call void @llvm.assume(i1 %lcmp.mod1256)
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv664.epil.init
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !316 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load <2 x float>, ptr %i.hm, align 4, !tbaa !253
  %i.ho = fadd <2 x float> %.sroa.0453.0582.epil.init, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !253
  %.sroa.19.8.vec.extract.epil = extractelement <2 x float> %.sroa.19.0581.epil.init, i64 0
  %i.hr = fadd float %.sroa.19.8.vec.extract.epil, %i.hq
  %.sroa.19.8.vec.insert478.epil = insertelement <2 x float> %.sroa.19.0581.epil.init, float %i.hr, i64 0
  br label %._crit_edge585.thread

._crit_edge585.thread:                            ; preds = %.epil.preheader1250, %._crit_edge585.thread.loopexit.unr-lcssa, %._crit_edge585
  %.sroa.0453.0.lcssa887 = phi <2 x float> [ zeroinitializer, %._crit_edge585 ], [ %i.hg, %._crit_edge585.thread.loopexit.unr-lcssa ], [ %i.ho, %.epil.preheader1250 ]
  %.sroa.19.0.lcssa886 = phi <2 x float> [ zeroinitializer, %._crit_edge585 ], [ %.sroa.19.8.vec.insert478.1, %._crit_edge585.thread.loopexit.unr-lcssa ], [ %.sroa.19.8.vec.insert478.epil, %.epil.preheader1250 ]
  %i.hs = sitofp i32 %i.go to float
  %i.ht = fdiv float 1.000000e+00, %i.hs          ; 2 uses
  %.sroa.19.8.vec.extract480 = extractelement <2 x float> %.sroa.19.0.lcssa886, i64 0
  %i.hu = fmul float %.sroa.19.8.vec.extract480, %i.ht
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv668 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !253 ; 3 uses
  %i.hy = fsub float %i.hu, %i.hx
  %i.hz = fmul float %i.ge, %i.hy
  %i.ia = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %.sroa.0453.0.lcssa887, %i.ib
  %i.id = load <2 x float>, ptr %i.hv, align 4, !tbaa !253 ; 4 uses
  %i.ie = fsub <2 x float> %i.ic, %i.id
  %i.if = fmul <2 x float> %i.gh, %i.ie
  %i.ig = fadd <2 x float> %i.id, %i.if           ; 3 uses
  %i.ih = fadd float %i.hx, %i.hz                 ; 2 uses
  %.sroa.3.12.vec.insert.i214 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ih, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.ig, %i.id
  %i.ii = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop1188 = fsub <2 x float> %i.ig, %i.id ; 2 uses
  %i.ij = fsub float %i.ih, %i.hx                 ; 2 uses
  %foldExtExtBinop1190 = fmul <2 x float> %foldExtExtBinop1188, %foldExtExtBinop1188
  %i.ik = extractelement <2 x float> %foldExtExtBinop1190, i64 1
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.ii, float %i.ik)
  %i.im = tail call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.il)
  store <2 x float> %i.ig, ptr %i.hv, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i214, ptr %i.hw, align 4, !tbaa !259
  %i.in = load ptr, ptr %i.fy, align 8, !tbaa !234
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv668
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !378 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 36 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !408 ; 2 uses
  %i.is = icmp slt i32 %i.ir, 0
  br i1 %i.is, label %bb.m, label %.loopexit546

bb.m:                                             ; preds = %._crit_edge585.thread
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 40 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !946
  %i.iv = icmp slt i32 %i.iu, 0
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 48 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !409 ; 3 uses
  br i1 %i.iv, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i229, label %.lr.ph.i222

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i229: ; preds = %bb.m
  %.not.i5.i.i230 = icmp eq ptr %i.ix, null
  br i1 %.not.i5.i.i230, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i232, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i231

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i231: ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i229
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !945, !range !262, !noundef !263
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.n, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i232

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i231
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ix)
          to label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i232 unwind label %bb.o

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i232: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i231, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i229
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  store i8 1, ptr %i.jb, align 8, !tbaa !945
  store ptr null, ptr %i.iw, align 8, !tbaa !409
  store i32 0, ptr %i.it, align 8, !tbaa !946
  br label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.m, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i232
  %i.jc = phi ptr [ null, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i232 ], [ %i.ix, %bb.m ]
  %i.jd = sext i32 %i.ir to i64                   ; 2 uses
  %i.je = shl nsw i64 %i.jd, 3
  %scevgep667 = getelementptr i8, ptr %i.jc, i64 %i.je
  %i.jf = mul nsw i64 %i.jd, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep667, i8 0, i64 %i.jf, i1 false), !tbaa !316
  br label %.loopexit546

.loopexit546:                                     ; preds = %.lr.ph.i222, %._crit_edge585.thread
  store i32 0, ptr %i.iq, align 4, !tbaa !408
  %i.jg = fcmp ogt float %i.im, f0x34000000
  %i.jh = or i1 %.0140590, %i.jg
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.p:                                             ; preds = %.loopexit546, %._crit_edge585
  %.1141 = phi i1 [ %i.jh, %.loopexit546 ], [ %.0140590, %._crit_edge585 ] ; 2 uses
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1 ; 2 uses
  %exitcond671.not = icmp eq i64 %indvars.iv.next669, %i.fi
  br i1 %exitcond671.not, label %.preheader548, label %.preheader547, !llvm.loop !878

.lr.ph601:                                        ; preds = %.preheader548, %bb.u
  %i.jj = phi i32 [ %i.mi, %bb.u ], [ %i.gi, %.preheader548 ] ; 2 uses
  %indvars.iv678 = phi i64 [ %indvars.iv.next679, %bb.u ], [ 0, %.preheader548 ] ; 2 uses
  %i.jk = load ptr, ptr %i.fz, align 8, !tbaa !170
  %i.jl = getelementptr inbounds nuw [256 x i8], ptr %i.jk, i64 %indvars.iv678 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load <2 x float>, ptr %i.jm, align 8    ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not634, label %._crit_edge598, label %.lr.ph597.preheader

.lr.ph597.preheader:                              ; preds = %.lr.ph601
  %i.jo = load float, ptr %i.fk, align 4, !tbaa !253
  %i.jp = extractelement <2 x float> %i.jn, i64 0
  %i.jq = fsub float %i.jo, %i.jp
  %i.jr = tail call noundef float @llvm.fabs.f32(float %i.jq)
  %i.js = load <2 x float>, ptr %i.ga, align 4, !tbaa !253
  %i.jt = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ju = insertelement <2 x float> %i.jt, float %.sroa.8.0.copyload, i64 1
  %i.jv = fsub <2 x float> %i.js, %i.ju
  %i.jw = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jv) ; 2 uses
  %i.jx = extractelement <2 x float> %i.jw, i64 0
  %i.jy = fadd float %i.jr, %i.jx
  %i.jz = extractelement <2 x float> %i.jw, i64 1
  %i.ka = fadd float %i.jy, %i.jz
  br label %.lr.ph597

._crit_edge598.loopexit:                          ; preds = %.lr.ph597
  %i.kb = zext nneg i32 %.1135 to i64
  br label %._crit_edge598

._crit_edge598:                                   ; preds = %._crit_edge598.loopexit, %.lr.ph601
  %.0134.lcssa = phi i64 [ 0, %.lr.ph601 ], [ %i.kb, %._crit_edge598.loopexit ]
  %i.kc = load ptr, ptr %i.fy, align 8, !tbaa !234
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %.0134.lcssa
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !378 ; 6 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 36 ; 4 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !408 ; 7 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 40 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !946
  %i.kj = icmp eq i32 %i.kg, %i.ki
  br i1 %i.kj, label %bb.q, label %bb.u

bb.q:                                             ; preds = %._crit_edge598
  %.not.i.i239 = icmp eq i32 %i.kg, 0
  %i.kk = shl nsw i32 %i.kg, 1
  %i.kl = select i1 %.not.i.i239, i32 1, i32 %i.kk ; 4 uses
  %i.km = icmp slt i32 %i.kg, %i.kl
  br i1 %i.km, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i240 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i.i240, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i242, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kn = sext i32 %i.kl to i64
  %i.ko = shl nsw i64 %i.kn, 3
  %i.kp = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ko, i32 noundef 16)
          to label %.noexc255 unwind label %bb.v

.noexc255:                                        ; preds = %bb.s
  %.pre.i241 = load i32, ptr %i.kf, align 4, !tbaa !408
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i242

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i242: ; preds = %.noexc255, %bb.r
  %i.kq = phi i32 [ %.pre.i241, %.noexc255 ], [ %i.kg, %bb.r ] ; 5 uses
  %.0.i.i.i243 = phi ptr [ %i.kp, %.noexc255 ], [ null, %bb.r ] ; 8 uses
  %i.kr = icmp sgt i32 %i.kq, 0
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 48 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !409 ; 9 uses
  br i1 %i.kr, label %.lr.ph.i.i.i250, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i244

.lr.ph.i.i.i250:                                  ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i242
  %i.ku = ptrtoaddr ptr %i.kt to i64
  %.0.i.i.i2431060 = ptrtoaddr ptr %.0.i.i.i243 to i64
  %wide.trip.count.i.i.i251 = zext nneg i32 %i.kq to i64 ; 5 uses
  %min.iters.check1063 = icmp ult i32 %i.kq, 4
  %i.kv = sub i64 %i.ku, %.0.i.i.i2431060
  %diff.check1061 = icmp ugt i64 %i.kv, -32
  %or.cond1171.a = select i1 %min.iters.check1063, i1 true, i1 %diff.check1061
  br i1 %or.cond1171.a, label %scalar.ph1062.preheader, label %vector.ph1064

vector.ph1064:                                    ; preds = %.lr.ph.i.i.i250
  %n.vec1065 = and i64 %wide.trip.count.i.i.i251, 2147483644 ; 3 uses
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %vector.ph1064
  %index1067 = phi i64 [ 0, %vector.ph1064 ], [ %index.next1070, %vector.body1066 ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i243, i64 %index1067 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %index1067 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %wide.load1068.a = load <2 x ptr>, ptr %i.kx, align 8, !tbaa !316
  %wide.load1069 = load <2 x ptr>, ptr %i.ky, align 8, !tbaa !316
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store <2 x ptr> %wide.load1068.a, ptr %i.kw, align 8, !tbaa !316
  store <2 x ptr> %wide.load1069, ptr %i.kz, align 8, !tbaa !316
  %index.next1070 = add nuw i64 %index1067, 4     ; 2 uses
  %i.la = icmp eq i64 %index.next1070, %n.vec1065
  br i1 %i.la, label %middle.block1071, label %vector.body1066, !llvm.loop !879

middle.block1071:                                 ; preds = %vector.body1066
  %cmp.n1072 = icmp eq i64 %n.vec1065, %wide.trip.count.i.i.i251
  br i1 %cmp.n1072, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i246, label %scalar.ph1062.preheader

scalar.ph1062.preheader:                          ; preds = %.lr.ph.i.i.i250, %middle.block1071
  %indvars.iv.i.i.i252.ph = phi i64 [ 0, %.lr.ph.i.i.i250 ], [ %n.vec1065, %middle.block1071 ] ; 3 uses
  %xtraiter1259 = and i64 %wide.trip.count.i.i.i251, 3 ; 2 uses
  %lcmp.mod1260.not = icmp eq i64 %xtraiter1259, 0
  br i1 %lcmp.mod1260.not, label %scalar.ph1062.prol.loopexit, label %scalar.ph1062.prol

scalar.ph1062.prol:                               ; preds = %scalar.ph1062.preheader, %scalar.ph1062.prol
  %indvars.iv.i.i.i252.prol = phi i64 [ %indvars.iv.next.i.i.i253.prol, %scalar.ph1062.prol ], [ %indvars.iv.i.i.i252.ph, %scalar.ph1062.preheader ] ; 3 uses
  %prol.iter1261 = phi i64 [ %prol.iter1261.next, %scalar.ph1062.prol ], [ 0, %scalar.ph1062.preheader ]
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i243, i64 %indvars.iv.i.i.i252.prol
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.i.i.i252.prol
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !316
  store ptr %i.ld, ptr %i.lb, align 8, !tbaa !316
  %indvars.iv.next.i.i.i253.prol = add nuw nsw i64 %indvars.iv.i.i.i252.prol, 1 ; 2 uses
  %prol.iter1261.next = add i64 %prol.iter1261, 1 ; 2 uses
  %prol.iter1261.cmp.not = icmp eq i64 %prol.iter1261.next, %xtraiter1259
  br i1 %prol.iter1261.cmp.not, label %scalar.ph1062.prol.loopexit, label %scalar.ph1062.prol, !llvm.loop !880

scalar.ph1062.prol.loopexit:                      ; preds = %scalar.ph1062.prol, %scalar.ph1062.preheader
  %indvars.iv.i.i.i252.unr = phi i64 [ %indvars.iv.i.i.i252.ph, %scalar.ph1062.preheader ], [ %indvars.iv.next.i.i.i253.prol, %scalar.ph1062.prol ]
  %i.le = sub nsw i64 %indvars.iv.i.i.i252.ph, %wide.trip.count.i.i.i251
  %i.lf = icmp ugt i64 %i.le, -4
  br i1 %i.lf, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i246, label %scalar.ph1062

scalar.ph1062:                                    ; preds = %scalar.ph1062.prol.loopexit, %scalar.ph1062
  %indvars.iv.i.i.i252 = phi i64 [ %indvars.iv.next.i.i.i253.3, %scalar.ph1062 ], [ %indvars.iv.i.i.i252.unr, %scalar.ph1062.prol.loopexit ] ; 6 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i243, i64 %indvars.iv.i.i.i252
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.i.i.i252
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !316
  store ptr %i.li, ptr %i.lg, align 8, !tbaa !316
  %indvars.iv.next.i.i.i253 = add nuw nsw i64 %indvars.iv.i.i.i252, 1 ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i243, i64 %indvars.iv.next.i.i.i253
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i.i253
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !316
  store ptr %i.ll, ptr %i.lj, align 8, !tbaa !316
  %indvars.iv.next.i.i.i253.1 = add nuw nsw i64 %indvars.iv.i.i.i252, 2 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i243, i64 %indvars.iv.next.i.i.i253.1
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i.i253.1
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !316
  store ptr %i.lo, ptr %i.lm, align 8, !tbaa !316
  %indvars.iv.next.i.i.i253.2 = add nuw nsw i64 %indvars.iv.i.i.i252, 3 ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i243, i64 %indvars.iv.next.i.i.i253.2
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next.i.i.i253.2
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !316
  store ptr %i.lr, ptr %i.lp, align 8, !tbaa !316
  %indvars.iv.next.i.i.i253.3 = add nuw nsw i64 %indvars.iv.i.i.i252, 4 ; 2 uses
  %exitcond.not.i.i.i254.3 = icmp eq i64 %indvars.iv.next.i.i.i253.3, %wide.trip.count.i.i.i251
  br i1 %exitcond.not.i.i.i254.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i246, label %scalar.ph1062, !llvm.loop !881

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i244: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i242
  %.not.i5.i.i245 = icmp eq ptr %i.kt, null
  br i1 %.not.i5.i.i245, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i246

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i246: ; preds = %scalar.ph1062.prol.loopexit, %scalar.ph1062, %middle.block1071, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i244
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.lt = load i8, ptr %i.ls, align 8, !tbaa !945, !range !262, !noundef !263
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.t, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i246
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.kt)
          to label %.noexc256 unwind label %bb.v

.noexc256:                                        ; preds = %bb.t
  %.pre2.pre.pre.i249 = load i32, ptr %i.kf, align 4, !tbaa !408
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247: ; preds = %.noexc256, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i246, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i244
  %.pre2.i248 = phi i32 [ %i.kq, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i244 ], [ %.pre2.pre.pre.i249, %.noexc256 ], [ %i.kq, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i246 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  store i8 1, ptr %i.lv, align 8, !tbaa !945
  store ptr %.0.i.i.i243, ptr %i.ks, align 8, !tbaa !409
  store i32 %i.kl, ptr %i.kh, align 8, !tbaa !946
  %.pre754.a = load i32, ptr %i.h, align 4, !tbaa !171
  br label %bb.u

.lr.ph597:                                        ; preds = %.lr.ph597.preheader, %.lr.ph597
  %indvars.iv672 = phi i64 [ 1, %.lr.ph597.preheader ], [ %indvars.iv.next673, %.lr.ph597 ] ; 3 uses
  %.0132594 = phi float [ %i.ka, %.lr.ph597.preheader ], [ %.1133, %.lr.ph597 ] ; 2 uses
  %.0134593 = phi i32 [ 0, %.lr.ph597.preheader ], [ %.1135, %.lr.ph597 ]
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv672 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !253
  %i.lz = fsub float %i.ly, %.sroa.8.0.copyload
  %i.ma = load <2 x float>, ptr %i.lw, align 4, !tbaa !253
  %i.mb = fsub <2 x float> %i.ma, %i.jn
  %i.mc = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mb) ; 2 uses
  %shift = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1192 = fadd <2 x float> %i.mc, %shift
  %i.md = extractelement <2 x float> %foldExtExtBinop1192, i64 0
  %i.me = tail call noundef float @llvm.fabs.f32(float %i.lz)
  %i.mf = fadd float %i.md, %i.me                 ; 2 uses
  %i.mg = fcmp olt float %i.mf, %.0132594         ; 2 uses
  %i.mh = trunc nuw nsw i64 %indvars.iv672 to i32
  %.1135 = select i1 %i.mg, i32 %i.mh, i32 %.0134593 ; 2 uses
  %.1133 = select i1 %i.mg, float %i.mf, float %.0132594
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond677.not = icmp eq i64 %indvars.iv.next673, %i.fi
  br i1 %exitcond677.not, label %._crit_edge598.loopexit, label %.lr.ph597, !llvm.loop !882

bb.u:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247, %bb.q, %._crit_edge598
  %i.mi = phi i32 [ %.pre754.a, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247 ], [ %i.jj, %bb.q ], [ %i.jj, %._crit_edge598 ] ; 3 uses
  %i.mj = phi i32 [ %.pre2.i248, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247 ], [ %i.kg, %bb.q ], [ %i.kg, %._crit_edge598 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !409
  %i.mm = sext i32 %i.mj to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %i.mm
  store ptr %i.jl, ptr %i.mn, align 8, !tbaa !316
  %i.mo = add nsw i32 %i.mj, 1
  store i32 %i.mo, ptr %i.kf, align 4, !tbaa !408
  %indvars.iv.next679 = add nuw nsw i64 %indvars.iv678, 1 ; 2 uses
  %i.mp = sext i32 %i.mi to i64
  %i.mq = icmp slt i64 %indvars.iv.next679, %i.mp
  br i1 %i.mq, label %.lr.ph601, label %._crit_edge602, !llvm.loop !883

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge602:                                   ; preds = %bb.u, %.preheader548
  %.lcssa559 = phi i32 [ %i.gi, %.preheader548 ], [ %i.mi, %bb.u ] ; 4 uses
  %i.ms = icmp slt i32 %i.gf, %2
  %i.mt = select i1 %.1141, i1 %i.ms, i1 false
  br i1 %i.mt, label %.preheader547.preheader, label %bb.w, !llvm.loop !884

bb.w:                                             ; preds = %._crit_edge602
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.mu, align 8, !tbaa !249
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.mv, align 8, !tbaa !250
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.mw, align 4, !tbaa !251
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.mx, align 8, !tbaa !252
  %i.my = icmp sgt i32 %.lcssa559, 0
  br i1 %i.my, label %bb.x, label %.loopexit545

bb.x:                                             ; preds = %bb.w
  %i.mz = zext nneg i32 %.lcssa559 to i64
  %i.na = shl nuw nsw i64 %i.mz, 2                ; 2 uses
  %i.nb = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.na, i32 noundef 16)
          to label %.lr.ph.i258 unwind label %bb.z ; 3 uses

.lr.ph.i258:                                      ; preds = %bb.x
  store i8 1, ptr %i.mu, align 8, !tbaa !249
  store ptr %i.nb, ptr %i.mv, align 8, !tbaa !250
  store i32 %.lcssa559, ptr %i.mx, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.nb, i8 -1, i64 %i.na, i1 false), !tbaa !275
  br label %.loopexit545

.loopexit545:                                     ; preds = %.lr.ph.i258, %bb.w
  %i.nc = phi ptr [ %i.nb, %.lr.ph.i258 ], [ null, %bb.w ] ; 4 uses
  store i32 %.lcssa559, ptr %i.mw, align 4, !tbaa !251
  %i.nd = load i32, ptr %i.b, align 4, !tbaa !235 ; 3 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.preheader544.lr.ph, label %.preheader543

.preheader544.lr.ph:                              ; preds = %.loopexit545
  %i.nf = load ptr, ptr %i.fy, align 8, !tbaa !234
  br label %.preheader544

.preheader544:                                    ; preds = %.preheader544.lr.ph, %._crit_edge606
  %i.ng = phi i32 [ %i.nd, %.preheader544.lr.ph ], [ %i.nx, %._crit_edge606 ]
  %indvars.iv684 = phi i64 [ 0, %.preheader544.lr.ph ], [ %indvars.iv.next685, %._crit_edge606 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv684
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !378 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 36 ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !408
  %i.nl = icmp sgt i32 %i.nk, 0
  br i1 %i.nl, label %.lr.ph605, label %._crit_edge606

.lr.ph605:                                        ; preds = %.preheader544
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 48
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !409
  %i.no = load ptr, ptr %i.fz, align 8, !tbaa !170
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = trunc nuw nsw i64 %indvars.iv684 to i32
  br label %bb.aa

.preheader543:                                    ; preds = %._crit_edge606, %.loopexit545
  %i.nr = phi i32 [ %i.nd, %.loopexit545 ], [ %i.nx, %._crit_edge606 ]
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !183
  %i.nu = icmp sgt i32 %i.nt, 0
  br i1 %i.nu, label %.lr.ph611, label %._crit_edge612

.lr.ph611:                                        ; preds = %.preheader543
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ab

._crit_edge606.loopexit:                          ; preds = %bb.aa
  %.pre755 = load i32, ptr %i.b, align 4, !tbaa !235
  br label %._crit_edge606

._crit_edge606:                                   ; preds = %._crit_edge606.loopexit, %.preheader544
  %i.nx = phi i32 [ %.pre755, %._crit_edge606.loopexit ], [ %i.ng, %.preheader544 ] ; 3 uses
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %i.ny = sext i32 %i.nx to i64
  %i.nz = icmp slt i64 %indvars.iv.next685, %i.ny
  br i1 %i.nz, label %.preheader544, label %.preheader543, !llvm.loop !885

bb.y:                                             ; preds = %bb.bm
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.z:                                             ; preds = %bb.x
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.aa:                                            ; preds = %.lr.ph605, %bb.aa
  %indvars.iv681 = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next682, %bb.aa ] ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv681
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !316
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.np
  %sext = shl i64 %i.of, 24
  %i.og = ashr i64 %sext, 32
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.og
  store i32 %i.nq, ptr %i.oh, align 4, !tbaa !275
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %i.oi = load i32, ptr %i.nj, align 4, !tbaa !408
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp slt i64 %indvars.iv.next682, %i.oj
  br i1 %i.ok, label %bb.aa, label %._crit_edge606.loopexit, !llvm.loop !886

bb.ab:                                            ; preds = %.lr.ph611, %bb.ac
  %indvars.iv692 = phi i64 [ 0, %.lr.ph611 ], [ %indvars.iv.next693, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.ol = load ptr, ptr %i.nv, align 8, !tbaa !182
  %i.om = getelementptr inbounds nuw [144 x i8], ptr %i.ol, i64 %indvars.iv692 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.fz, align 8, !tbaa !170
  %i.op = ptrtoint ptr %i.oo to i64               ; 2 uses
  %i.oq = load <2 x ptr>, ptr %i.on, align 8, !tbaa !316
  %i.or = ptrtoint <2 x ptr> %i.oq to <2 x i64>
  %i.os = insertelement <2 x i64> poison, i64 %i.op, i64 0
  %i.ot = shufflevector <2 x i64> %i.os, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ou = sub <2 x i64> %i.or, %i.ot
  %i.ov = lshr exact <2 x i64> %i.ou, splat (i64 8)
  %i.ow = trunc <2 x i64> %i.ov to <2 x i32>
  store <2 x i32> %i.ow, ptr %i.a, align 8, !tbaa !275
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !316
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = sub i64 %i.oz, %i.op
  %i.pb = lshr exact i64 %i.pa, 8
  %i.pc = trunc i64 %i.pb to i32
  store i32 %i.pc, ptr %i.nw, align 8, !tbaa !275
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %i.pd = load i32, ptr %i.ns, align 4, !tbaa !183
  %i.pe = sext i32 %i.pd to i64
  %i.pf = icmp slt i64 %indvars.iv.next693, %i.pe
  br i1 %i.pf, label %bb.ab, label %._crit_edge612.loopexit, !llvm.loop !887

bb.ad:                                            ; preds = %bb.ab, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1
  %indvars.iv688 = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next689, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1 ] ; 3 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv688
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !275
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !275 ; 3 uses
  %i.pl = sext i32 %i.pk to i64                   ; 2 uses
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1 ; 4 uses
  %i.pm = icmp eq i64 %indvars.iv.next689, 3
  %i.pn = select i1 %i.pm, i64 0, i64 %indvars.iv.next689
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !275
  %i.pq = sext i32 %i.pp to i64                   ; 2 uses
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !275
  %.not167 = icmp eq i32 %i.ps, %i.pk
  br i1 %.not167, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.pt = load ptr, ptr %i.fy, align 8, !tbaa !234
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.pl
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !378 ; 7 uses
  %i.pw = load ptr, ptr %i.fz, align 8, !tbaa !170
  %i.px = getelementptr inbounds [256 x i8], ptr %i.pw, i64 %i.pq ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 36 ; 4 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !408 ; 9 uses
  %i.qa = icmp sgt i32 %i.pz, 0
  br i1 %i.qa, label %.lr.ph.i275, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread

.lr.ph.i275:                                      ; preds = %bb.ae
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !409
  %wide.trip.count.i276 = zext nneg i32 %i.pz to i64
  br label %bb.af
end_hunk_0
