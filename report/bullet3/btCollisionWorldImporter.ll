Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCollisionWorldImporter?download=true
inline.NumInlined: 1114
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN17btTriangleInfoMap11deSerializeER21btTriangleInfoMapData:bb.a
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !199
  %indvars.iv.next.i.i.i89 = add nuw nsw i64 %indvars.iv.i.i.i88, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i84, i64 %indvars.iv.next.i.i.i89
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i89
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !199
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !199
  %indvars.iv.next.i.i.i89.1 = add nuw nsw i64 %indvars.iv.i.i.i88, 2 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i84, i64 %indvars.iv.next.i.i.i89.1
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i89.1
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !199
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !199
  %indvars.iv.next.i.i.i89.2 = add nuw nsw i64 %indvars.iv.i.i.i88, 3 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i84, i64 %indvars.iv.next.i.i.i89.2
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i89.2
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !199
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !199
  %indvars.iv.next.i.i.i89.3 = add nuw nsw i64 %indvars.iv.i.i.i88, 4 ; 2 uses
  %exitcond.not.i.i.i90.3 = icmp eq i64 %indvars.iv.next.i.i.i89.3, %wide.trip.count.i.i.i87
  br i1 %exitcond.not.i.i.i90.3, label %_ZNK20btAlignedObjectArrayI9btHashIntE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph174, !llvm.loop !409

_ZNK20btAlignedObjectArrayI9btHashIntE4copyEiiPS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI9btHashIntE8allocateEi.exit.i.i
  %.not.i5.i.i85 = icmp eq ptr %i.hf, null
  br i1 %.not.i5.i.i85, label %_ZN20btAlignedObjectArrayI9btHashIntE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayI9btHashIntE4copyEiiPS0_.exit.thread.i.i

_ZNK20btAlignedObjectArrayI9btHashIntE4copyEiiPS0_.exit.thread.i.i: ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174, %middle.block183, %_ZNK20btAlignedObjectArrayI9btHashIntE4copyEiiPS0_.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !410, !range !135, !noundef !144
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.v, label %_ZN20btAlignedObjectArrayI9btHashIntE10deallocateEv.exit.i.i

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btHashIntE4copyEiiPS0_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hf)
  br label %_ZN20btAlignedObjectArrayI9btHashIntE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btHashIntE10deallocateEv.exit.i.i: ; preds = %bb.v, %_ZNK20btAlignedObjectArrayI9btHashIntE4copyEiiPS0_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayI9btHashIntE4copyEiiPS0_.exit.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ih, align 8, !tbaa !410
  store ptr %.0.i.i.i84, ptr %i.he, align 8, !tbaa !406
  store i32 %i.gs, ptr %i.gw, align 8, !tbaa !405
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %..lr.ph.i76_crit_edge, %_ZN20btAlignedObjectArrayI9btHashIntE10deallocateEv.exit.i.i
  %i.ii = phi ptr [ %.pre125, %..lr.ph.i76_crit_edge ], [ %.0.i.i.i84, %_ZN20btAlignedObjectArrayI9btHashIntE10deallocateEv.exit.i.i ]
  %i.ij = sext i32 %i.gu to i64                   ; 2 uses
  %wide.trip.count.i77 = sext i32 %i.gs to i64
  %i.ik = shl nsw i64 %i.ij, 2
  %scevgep111 = getelementptr i8, ptr %i.ii, i64 %i.ik
  %i.il = sub nsw i64 %wide.trip.count.i77, %i.ij
  %i.im = shl nsw i64 %i.il, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep111, i8 0, i64 %i.im, i1 false), !tbaa !199
  %.pre126 = load i32, ptr %i.gr, align 8, !tbaa !403
  br label %_ZN20btAlignedObjectArrayI9btHashIntE6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btHashIntE6resizeEiRKS0_.exit: ; preds = %.lr.ph.i76, %._crit_edge99
  %i.in = phi i32 [ %.pre126, %.lr.ph.i76 ], [ %i.gs, %._crit_edge99 ] ; 3 uses
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !404
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %_ZN20btAlignedObjectArrayI9btHashIntE6resizeEiRKS0_.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !406 ; 7 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !411 ; 7 uses
  %wide.trip.count115 = zext nneg i32 %i.in to i64 ; 5 uses
  %min.iters.check189 = icmp ult i32 %i.in, 8
  %i.it = ptrtoaddr ptr %i.is to i64
  %i.iu = ptrtoaddr ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  %diff.check187 = icmp ugt i64 %i.iv, -32
  %or.cond204 = select i1 %min.iters.check189, i1 true, i1 %diff.check187
  br i1 %or.cond204, label %scalar.ph188.preheader, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph101
  %n.vec191 = and i64 %wide.trip.count115, 2147483640 ; 3 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next196, %vector.body192 ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index193 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index193 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load194 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !199
  %wide.load195 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !199
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store <4 x i32> %wide.load194, ptr %i.iw, align 4, !tbaa !412
  store <4 x i32> %wide.load195, ptr %i.iz, align 4, !tbaa !412
  %index.next196 = add nuw i64 %index193, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next196, %n.vec191
  br i1 %i.ja, label %middle.block197, label %vector.body192, !llvm.loop !414

middle.block197:                                  ; preds = %vector.body192
  %cmp.n198 = icmp eq i64 %n.vec191, %wide.trip.count115
  br i1 %cmp.n198, label %._crit_edge102, label %scalar.ph188.preheader

scalar.ph188.preheader:                           ; preds = %.lr.ph101, %middle.block197
  %indvars.iv112.ph = phi i64 [ 0, %.lr.ph101 ], [ %n.vec191, %middle.block197 ] ; 3 uses
  %xtraiter220 = and i64 %wide.trip.count115, 3   ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %scalar.ph188.prol.loopexit, label %scalar.ph188.prol

scalar.ph188.prol:                                ; preds = %scalar.ph188.preheader, %scalar.ph188.prol
  %indvars.iv112.prol = phi i64 [ %indvars.iv.next113.prol, %scalar.ph188.prol ], [ %indvars.iv112.ph, %scalar.ph188.preheader ] ; 3 uses
  %prol.iter222 = phi i64 [ %prol.iter222.next, %scalar.ph188.prol ], [ 0, %scalar.ph188.preheader ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv112.prol
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv112.prol
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !199
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !412
  %indvars.iv.next113.prol = add nuw nsw i64 %indvars.iv112.prol, 1 ; 2 uses
  %prol.iter222.next = add i64 %prol.iter222, 1   ; 2 uses
  %prol.iter222.cmp.not = icmp eq i64 %prol.iter222.next, %xtraiter220
  br i1 %prol.iter222.cmp.not, label %scalar.ph188.prol.loopexit, label %scalar.ph188.prol, !llvm.loop !415

scalar.ph188.prol.loopexit:                       ; preds = %scalar.ph188.prol, %scalar.ph188.preheader
  %indvars.iv112.unr = phi i64 [ %indvars.iv112.ph, %scalar.ph188.preheader ], [ %indvars.iv.next113.prol, %scalar.ph188.prol ]
  %i.je = sub nsw i64 %indvars.iv112.ph, %wide.trip.count115
  %i.jf = icmp ugt i64 %i.je, -4
  br i1 %i.jf, label %._crit_edge102, label %scalar.ph188

scalar.ph188:                                     ; preds = %scalar.ph188.prol.loopexit, %scalar.ph188
  %indvars.iv112 = phi i64 [ %indvars.iv.next113.3, %scalar.ph188 ], [ %indvars.iv112.unr, %scalar.ph188.prol.loopexit ] ; 6 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv112
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv112
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !199
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !412
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next113
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next113
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !199
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !412
  %indvars.iv.next113.1 = add nuw nsw i64 %indvars.iv112, 2 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next113.1
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next113.1
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !199
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !412
  %indvars.iv.next113.2 = add nuw nsw i64 %indvars.iv112, 3 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next113.2
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next113.2
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !199
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !412
  %indvars.iv.next113.3 = add nuw nsw i64 %indvars.iv112, 4 ; 2 uses
  %exitcond116.not.3 = icmp eq i64 %indvars.iv.next113.3, %wide.trip.count115
  br i1 %exitcond116.not.3, label %._crit_edge102, label %scalar.ph188, !llvm.loop !416

._crit_edge102:                                   ; preds = %scalar.ph188.prol.loopexit, %scalar.ph188, %middle.block197, %_ZN20btAlignedObjectArrayI9btHashIntE6resizeEiRKS0_.exit
  ret void
}

declare void @_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN24btCollisionWorldImporter19createMeshInterfaceER27btStridingMeshInterfaceData(ptr noundef nonnull align 8 dereferenceable(1336) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(1336) %0) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !337
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph230, label %._crit_edge

.lr.ph230:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ar, %bb.a
  ret ptr %i.d

bb.b:                                             ; preds = %.lr.ph230, %bb.ar
  %indvars.iv260 = phi i64 [ 0, %.lr.ph230 ], [ %indvars.iv.next261, %bb.ar ] ; 13 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !338   ; 2 uses
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.af, i64 %indvars.iv260 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !417 ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !418 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !346
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = sext i32 %i.ai to i64
  %i.ao = mul nsw i64 %i.an, 12
  %i.ap = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ao, i32 noundef 16) ; 12 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = load i32, ptr %i.h, align 4, !tbaa !101 ; 7 uses
  %i.as = load i32, ptr %i.i, align 8, !tbaa !102
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.ar, 0
  %i.au = shl nsw i32 %i.ar, 1
  %i.av = select i1 %.not.i.i, i32 1, i32 %i.au   ; 4 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.e, label %_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPiE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sext i32 %i.av to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ay, i32 noundef 16)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPiE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ba = phi i32 [ %.pre.i, %bb.f ], [ %i.ar, %bb.e ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.az, %bb.f ], [ null, %bb.e ] ; 8 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !100 ; 9 uses
  br i1 %i.bb, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPiE8allocateEi.exit.i.i
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %.0.i.i.i396 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ba to i64 ; 5 uses
  %min.iters.check399 = icmp ult i32 %i.ba, 4
  %i.be = sub i64 %i.bd, %.0.i.i.i396
  %diff.check397 = icmp ugt i64 %i.be, -32
  %or.cond410.a = select i1 %min.iters.check399, i1 true, i1 %diff.check397
  br i1 %or.cond410.a, label %scalar.ph398.preheader, label %vector.ph400

vector.ph400:                                     ; preds = %.lr.ph.i.i.i
  %n.vec401 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph400
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next406, %vector.body402 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index403 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index403 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load404 = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !352
  %wide.load405 = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !352
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x ptr> %wide.load404, ptr %i.bf, align 8, !tbaa !352
  store <2 x ptr> %wide.load405, ptr %i.bi, align 8, !tbaa !352
  %index.next406 = add nuw i64 %index403, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next406, %n.vec401
  br i1 %i.bj, label %middle.block407, label %vector.body402, !llvm.loop !419

middle.block407:                                  ; preds = %vector.body402
  %cmp.n408 = icmp eq i64 %n.vec401, %wide.trip.count.i.i.i
  br i1 %cmp.n408, label %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph398.preheader

scalar.ph398.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block407
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec401, %middle.block407 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph398.prol.loopexit, label %scalar.ph398.prol

scalar.ph398.prol:                                ; preds = %scalar.ph398.preheader, %scalar.ph398.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph398.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph398.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph398.prol ], [ 0, %scalar.ph398.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i.i.prol
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !352
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !352
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph398.prol.loopexit, label %scalar.ph398.prol, !llvm.loop !420

scalar.ph398.prol.loopexit:                       ; preds = %scalar.ph398.prol, %scalar.ph398.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph398.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph398.prol ]
  %i.bn = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph398

scalar.ph398:                                     ; preds = %scalar.ph398.prol.loopexit, %scalar.ph398
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph398 ], [ %indvars.iv.i.i.i.unr, %scalar.ph398.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !352
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !352
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !352
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !352
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i.i.i.1
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !352
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !352
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i.i.i.2
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !352
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !352
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph398, !llvm.loop !421

_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIPiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.thread.i.i: ; preds = %scalar.ph398.prol.loopexit, %scalar.ph398, %middle.block407, %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.i.i
  %i.cb = load i8, ptr %i.k, align 8, !tbaa !99, !range !135, !noundef !144
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.g, label %_ZN20btAlignedObjectArrayIPiE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bc)
  %.pre2.pre.pre.i = load i32, ptr %i.h, align 4, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIPiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPiE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.i.i
  %.pre2.i = phi i32 [ %i.ba, %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.g ], [ %i.ba, %_ZNK20btAlignedObjectArrayIPiE4copyEiiPS0_.exit.thread.i.i ]
  store i8 1, ptr %i.k, align 8, !tbaa !99
  store ptr %.0.i.i.i, ptr %i.j, align 8, !tbaa !100
  store i32 %i.av, ptr %i.i, align 8, !tbaa !102
  br label %_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit: ; preds = %bb.c, %bb.d, %_ZN20btAlignedObjectArrayIPiE10deallocateEv.exit.i.i
  %i.cd = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPiE10deallocateEv.exit.i.i ], [ %i.ar, %bb.d ], [ %i.ar, %bb.c ] ; 2 uses
  %i.ce = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  store ptr %i.ap, ptr %i.cg, align 8, !tbaa !352
  %i.ch = add nsw i32 %i.cd, 1
  store i32 %i.ch, ptr %i.h, align 4, !tbaa !101
  %i.ci = icmp sgt i32 %i.ai, 0
  br i1 %i.ci, label %.lr.ph, label %.loopexit212

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit
  %i.cj = mul i32 %i.ai, 3                        ; 2 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !338
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %i.ck, i64 %indvars.iv260
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !346 ; 7 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %min.iters.check384 = icmp slt i32 %i.cj, 8
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.aq
  %diff.check382 = icmp ugt i64 %i.cp, -32
  %or.cond412.a = select i1 %min.iters.check384, i1 true, i1 %diff.check382
  br i1 %or.cond412.a, label %scalar.ph383.preheader, label %vector.ph385

vector.ph385:                                     ; preds = %.lr.ph
  %n.vec386 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body387, %vector.ph385
  %index388 = phi i64 [ 0, %vector.ph385 ], [ %index.next391, %vector.body387 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index388 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load389 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !422
  %wide.load390 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !422
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index388 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> %wide.load389, ptr %i.cs, align 4, !tbaa !199
  store <4 x i32> %wide.load390, ptr %i.ct, align 4, !tbaa !199
  %index.next391 = add nuw i64 %index388, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next391, %n.vec386
  br i1 %i.cu, label %middle.block392, label %vector.body387, !llvm.loop !424

middle.block392:                                  ; preds = %vector.body387
  %cmp.n393 = icmp eq i64 %n.vec386, %wide.trip.count
  br i1 %cmp.n393, label %.loopexit212, label %scalar.ph383.preheader

scalar.ph383.preheader:                           ; preds = %.lr.ph, %middle.block392
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec386, %middle.block392 ] ; 3 uses
  %xtraiter420 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
end_hunk_0
begin_hunk_1_@_ZN24btCollisionWorldImporter19createMeshInterfaceER27btStridingMeshInterfaceData:bb.a
  %i.dx = sext i32 %i.dv to i64
  %i.dy = shl nsw i64 %i.dx, 3
  %i.dz = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dy, i32 noundef 16)
  %.pre.i109 = load i32, ptr %i.l, align 4, !tbaa !105
  br label %_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i: ; preds = %bb.l, %bb.k
  %i.ea = phi i32 [ %.pre.i109, %bb.l ], [ %i.dr, %bb.k ] ; 5 uses
  %.0.i.i.i110 = phi ptr [ %i.dz, %bb.l ], [ null, %bb.k ] ; 8 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  %i.ec = load ptr, ptr %i.n, align 8, !tbaa !104 ; 9 uses
  br i1 %i.eb, label %.lr.ph.i.i.i114, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i114:                                  ; preds = %_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i
  %i.ed = ptrtoaddr ptr %i.ec to i64
  %.0.i.i.i110367 = ptrtoaddr ptr %.0.i.i.i110 to i64
  %wide.trip.count.i.i.i115 = zext nneg i32 %i.ea to i64 ; 5 uses
  %min.iters.check370 = icmp ult i32 %i.ea, 4
  %i.ee = sub i64 %i.ed, %.0.i.i.i110367
  %diff.check368 = icmp ugt i64 %i.ee, -32
  %or.cond413.a = select i1 %min.iters.check370, i1 true, i1 %diff.check368
  br i1 %or.cond413.a, label %scalar.ph369.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph.i.i.i114
  %n.vec372 = and i64 %wide.trip.count.i.i.i115, 2147483644 ; 3 uses
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next377, %vector.body373 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i110, i64 %index374 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %index374 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load375 = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !354
  %wide.load376 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !354
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x ptr> %wide.load375, ptr %i.ef, align 8, !tbaa !354
  store <2 x ptr> %wide.load376, ptr %i.ei, align 8, !tbaa !354
  %index.next377 = add nuw i64 %index374, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next377, %n.vec372
  br i1 %i.ej, label %middle.block378, label %vector.body373, !llvm.loop !427

middle.block378:                                  ; preds = %vector.body373
  %cmp.n379 = icmp eq i64 %n.vec372, %wide.trip.count.i.i.i115
  br i1 %cmp.n379, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph369.preheader

scalar.ph369.preheader:                           ; preds = %.lr.ph.i.i.i114, %middle.block378
  %indvars.iv.i.i.i116.ph = phi i64 [ 0, %.lr.ph.i.i.i114 ], [ %n.vec372, %middle.block378 ] ; 3 uses
  %xtraiter423 = and i64 %wide.trip.count.i.i.i115, 3 ; 2 uses
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod424.not, label %scalar.ph369.prol.loopexit, label %scalar.ph369.prol

scalar.ph369.prol:                                ; preds = %scalar.ph369.preheader, %scalar.ph369.prol
  %indvars.iv.i.i.i116.prol = phi i64 [ %indvars.iv.next.i.i.i117.prol, %scalar.ph369.prol ], [ %indvars.iv.i.i.i116.ph, %scalar.ph369.preheader ] ; 3 uses
  %prol.iter425 = phi i64 [ %prol.iter425.next, %scalar.ph369.prol ], [ 0, %scalar.ph369.preheader ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i110, i64 %indvars.iv.i.i.i116.prol
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i.i.i116.prol
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !354
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !354
  %indvars.iv.next.i.i.i117.prol = add nuw nsw i64 %indvars.iv.i.i.i116.prol, 1 ; 2 uses
  %prol.iter425.next = add i64 %prol.iter425, 1   ; 2 uses
  %prol.iter425.cmp.not = icmp eq i64 %prol.iter425.next, %xtraiter423
  br i1 %prol.iter425.cmp.not, label %scalar.ph369.prol.loopexit, label %scalar.ph369.prol, !llvm.loop !428

scalar.ph369.prol.loopexit:                       ; preds = %scalar.ph369.prol, %scalar.ph369.preheader
  %indvars.iv.i.i.i116.unr = phi i64 [ %indvars.iv.i.i.i116.ph, %scalar.ph369.preheader ], [ %indvars.iv.next.i.i.i117.prol, %scalar.ph369.prol ]
  %i.en = sub nsw i64 %indvars.iv.i.i.i116.ph, %wide.trip.count.i.i.i115
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph369

scalar.ph369:                                     ; preds = %scalar.ph369.prol.loopexit, %scalar.ph369
  %indvars.iv.i.i.i116 = phi i64 [ %indvars.iv.next.i.i.i117.3, %scalar.ph369 ], [ %indvars.iv.i.i.i116.unr, %scalar.ph369.prol.loopexit ] ; 6 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i110, i64 %indvars.iv.i.i.i116
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i.i.i116
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !354
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !354
  %indvars.iv.next.i.i.i117 = add nuw nsw i64 %indvars.iv.i.i.i116, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i110, i64 %indvars.iv.next.i.i.i117
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next.i.i.i117
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !354
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !354
  %indvars.iv.next.i.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i.i116, 2 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i110, i64 %indvars.iv.next.i.i.i117.1
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next.i.i.i117.1
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !354
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !354
  %indvars.iv.next.i.i.i117.2 = add nuw nsw i64 %indvars.iv.i.i.i116, 3 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i110, i64 %indvars.iv.next.i.i.i117.2
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next.i.i.i117.2
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !354
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !354
  %indvars.iv.next.i.i.i117.3 = add nuw nsw i64 %indvars.iv.i.i.i116, 4 ; 2 uses
  %exitcond.not.i.i.i118.3 = icmp eq i64 %indvars.iv.next.i.i.i117.3, %wide.trip.count.i.i.i115
  br i1 %exitcond.not.i.i.i118.3, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph369, !llvm.loop !429

_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i
  %.not.i5.i.i111 = icmp eq ptr %i.ec, null
  br i1 %.not.i5.i.i111, label %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i: ; preds = %scalar.ph369.prol.loopexit, %scalar.ph369, %middle.block378, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i
  %i.fb = load i8, ptr %i.o, align 8, !tbaa !103, !range !135, !noundef !144
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.m, label %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ec)
  %.pre2.pre.pre.i113 = load i32, ptr %i.l, align 4, !tbaa !105
  br label %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i: ; preds = %bb.m, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i
  %.pre2.i112 = phi i32 [ %i.ea, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %.pre2.pre.pre.i113, %bb.m ], [ %i.ea, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i ]
  store i8 1, ptr %i.o, align 8, !tbaa !103
  store ptr %.0.i.i.i110, ptr %i.n, align 8, !tbaa !104
  store i32 %i.dv, ptr %i.m, align 8, !tbaa !106
  br label %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit: ; preds = %bb.i, %bb.j, %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i
  %i.fd = phi i32 [ %.pre2.i112, %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i ], [ %i.dr, %bb.j ], [ %i.dr, %bb.i ] ; 2 uses
  %i.fe = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.ff = sext i32 %i.fd to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.ff
  store ptr %i.dq, ptr %i.fg, align 8, !tbaa !354
  %i.fh = add nsw i32 %i.fd, 1
  store i32 %i.fh, ptr %i.l, align 4, !tbaa !105
  %i.fi = icmp sgt i32 %i.ai, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !338   ; 4 uses
  br i1 %i.fi, label %.lr.ph218, label %.loopexit214

.lr.ph218:                                        ; preds = %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit
  %i.fj = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv260
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !347 ; 3 uses
  %wide.trip.count237 = zext nneg i32 %i.ai to i64 ; 2 uses
  %xtraiter426 = and i64 %wide.trip.count237, 1
  %i.fm = icmp eq i32 %i.ai, 1
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph218.new

.lr.ph218.new:                                    ; preds = %.lr.ph218
  %unroll_iter = and i64 %wide.trip.count237, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph218.new
  %indvars.iv234 = phi i64 [ 0, %.lr.ph218.new ], [ %indvars.iv.next235.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph218.new ], [ %niter.next.1, %bb.n ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv234 ; 3 uses
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !430
  %.idx = mul nuw nsw i64 %indvars.iv234, 6
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx ; 3 uses
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !430
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !430
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !430
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !430
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !430
  %indvars.iv.next235 = or disjoint i64 %indvars.iv234, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next235 ; 3 uses
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !430
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next235, 6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx.1 ; 3 uses
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !430
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !430
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !430
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !430
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !430
  %indvars.iv.next235.1 = add nuw nsw i64 %indvars.iv234, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit214.loopexit.unr-lcssa, label %bb.n, !llvm.loop !432

.loopexit214.loopexit.unr-lcssa:                  ; preds = %bb.n
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %.loopexit214, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit214.loopexit.unr-lcssa, %.lr.ph218
  %indvars.iv234.epil.init = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next235.1, %.loopexit214.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod428 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod428)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv234.epil.init ; 3 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !430
  %.idx.epil = mul nuw nsw i64 %indvars.iv234.epil.init, 6
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx.epil ; 3 uses
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !430
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !430
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !430
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !430
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !430
  br label %.loopexit214

.loopexit214:                                     ; preds = %.epil.preheader, %.loopexit214.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit, %bb.h
  %i.go = phi ptr [ %i.af, %bb.h ], [ %.pre, %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit ], [ %.pre, %.loopexit214.loopexit.unr-lcssa ], [ %.pre, %.epil.preheader ] ; 2 uses
  %.sroa.17.1 = phi i32 [ 2, %bb.h ], [ 3, %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit ], [ 3, %.loopexit214.loopexit.unr-lcssa ], [ 3, %.epil.preheader ]
  %.sroa.12207.0 = phi ptr [ undef, %bb.h ], [ %i.dq, %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit ], [ %i.dq, %.loopexit214.loopexit.unr-lcssa ], [ %i.dq, %.epil.preheader ]
  %i.gp = getelementptr inbounds nuw [56 x i8], ptr %i.go, i64 %indvars.iv260
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !348
  %.not104 = icmp eq ptr %i.gr, null
  br i1 %.not104, label %.loopexit213, label %bb.o

bb.o:                                             ; preds = %.loopexit214
  %i.gs = sext i32 %i.ai to i64
  %i.gt = mul nsw i64 %i.gs, 6
  %i.gu = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.gt, i32 noundef 16) ; 12 uses
  %i.gv = load i32, ptr %i.l, align 4, !tbaa !105 ; 7 uses
  %i.gw = load i32, ptr %i.m, align 8, !tbaa !106
  %i.gx = icmp eq i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.p, label %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135

bb.p:                                             ; preds = %bb.o
  %.not.i.i119 = icmp eq i32 %i.gv, 0
  %i.gy = shl nsw i32 %i.gv, 1
  %i.gz = select i1 %.not.i.i119, i32 1, i32 %i.gy ; 4 uses
  %i.ha = icmp slt i32 %i.gv, %i.gz
  br i1 %i.ha, label %bb.q, label %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i120 = icmp eq i32 %i.gz, 0
  br i1 %.not.i.i.i120, label %_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i122, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hb = sext i32 %i.gz to i64
  %i.hc = shl nsw i64 %i.hb, 3
  %i.hd = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.hc, i32 noundef 16)
  %.pre.i121 = load i32, ptr %i.l, align 4, !tbaa !105
  br label %_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i122

_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i122: ; preds = %bb.r, %bb.q
  %i.he = phi i32 [ %.pre.i121, %bb.r ], [ %i.gv, %bb.q ] ; 5 uses
  %.0.i.i.i123 = phi ptr [ %i.hd, %bb.r ], [ null, %bb.q ] ; 8 uses
  %i.hf = icmp sgt i32 %i.he, 0
  %i.hg = load ptr, ptr %i.n, align 8, !tbaa !104 ; 9 uses
  br i1 %i.hf, label %.lr.ph.i.i.i130, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i124

.lr.ph.i.i.i130:                                  ; preds = %_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i122
  %i.hh = ptrtoaddr ptr %i.hg to i64
  %.0.i.i.i123352 = ptrtoaddr ptr %.0.i.i.i123 to i64
  %wide.trip.count.i.i.i131 = zext nneg i32 %i.he to i64 ; 5 uses
  %min.iters.check355 = icmp ult i32 %i.he, 4
  %i.hi = sub i64 %i.hh, %.0.i.i.i123352
  %diff.check353 = icmp ugt i64 %i.hi, -32
  %or.cond414.a = select i1 %min.iters.check355, i1 true, i1 %diff.check353
  br i1 %or.cond414.a, label %scalar.ph354.preheader, label %vector.ph356

vector.ph356:                                     ; preds = %.lr.ph.i.i.i130
  %n.vec357 = and i64 %wide.trip.count.i.i.i131, 2147483644 ; 3 uses
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next362, %vector.body358 ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i123, i64 %index359 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %index359 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %wide.load360 = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !354
  %wide.load361 = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !354
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <2 x ptr> %wide.load360, ptr %i.hj, align 8, !tbaa !354
  store <2 x ptr> %wide.load361, ptr %i.hm, align 8, !tbaa !354
  %index.next362 = add nuw i64 %index359, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next362, %n.vec357
  br i1 %i.hn, label %middle.block363, label %vector.body358, !llvm.loop !433

middle.block363:                                  ; preds = %vector.body358
  %cmp.n364 = icmp eq i64 %n.vec357, %wide.trip.count.i.i.i131
  br i1 %cmp.n364, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i126, label %scalar.ph354.preheader

scalar.ph354.preheader:                           ; preds = %.lr.ph.i.i.i130, %middle.block363
  %indvars.iv.i.i.i132.ph = phi i64 [ 0, %.lr.ph.i.i.i130 ], [ %n.vec357, %middle.block363 ] ; 3 uses
  %xtraiter429 = and i64 %wide.trip.count.i.i.i131, 3 ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %scalar.ph354.prol.loopexit, label %scalar.ph354.prol

scalar.ph354.prol:                                ; preds = %scalar.ph354.preheader, %scalar.ph354.prol
  %indvars.iv.i.i.i132.prol = phi i64 [ %indvars.iv.next.i.i.i133.prol, %scalar.ph354.prol ], [ %indvars.iv.i.i.i132.ph, %scalar.ph354.preheader ] ; 3 uses
  %prol.iter431 = phi i64 [ %prol.iter431.next, %scalar.ph354.prol ], [ 0, %scalar.ph354.preheader ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i123, i64 %indvars.iv.i.i.i132.prol
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i.i.i132.prol
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !354
  store ptr %i.hq, ptr %i.ho, align 8, !tbaa !354
  %indvars.iv.next.i.i.i133.prol = add nuw nsw i64 %indvars.iv.i.i.i132.prol, 1 ; 2 uses
  %prol.iter431.next = add i64 %prol.iter431, 1   ; 2 uses
  %prol.iter431.cmp.not = icmp eq i64 %prol.iter431.next, %xtraiter429
  br i1 %prol.iter431.cmp.not, label %scalar.ph354.prol.loopexit, label %scalar.ph354.prol, !llvm.loop !434

scalar.ph354.prol.loopexit:                       ; preds = %scalar.ph354.prol, %scalar.ph354.preheader
  %indvars.iv.i.i.i132.unr = phi i64 [ %indvars.iv.i.i.i132.ph, %scalar.ph354.preheader ], [ %indvars.iv.next.i.i.i133.prol, %scalar.ph354.prol ]
  %i.hr = sub nsw i64 %indvars.iv.i.i.i132.ph, %wide.trip.count.i.i.i131
  %i.hs = icmp ugt i64 %i.hr, -4
  br i1 %i.hs, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i126, label %scalar.ph354

scalar.ph354:                                     ; preds = %scalar.ph354.prol.loopexit, %scalar.ph354
  %indvars.iv.i.i.i132 = phi i64 [ %indvars.iv.next.i.i.i133.3, %scalar.ph354 ], [ %indvars.iv.i.i.i132.unr, %scalar.ph354.prol.loopexit ] ; 6 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i123, i64 %indvars.iv.i.i.i132
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i.i.i132
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !354
  store ptr %i.hv, ptr %i.ht, align 8, !tbaa !354
  %indvars.iv.next.i.i.i133 = add nuw nsw i64 %indvars.iv.i.i.i132, 1 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i123, i64 %indvars.iv.next.i.i.i133
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next.i.i.i133
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !354
  store ptr %i.hy, ptr %i.hw, align 8, !tbaa !354
  %indvars.iv.next.i.i.i133.1 = add nuw nsw i64 %indvars.iv.i.i.i132, 2 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i123, i64 %indvars.iv.next.i.i.i133.1
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next.i.i.i133.1
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !354
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !354
  %indvars.iv.next.i.i.i133.2 = add nuw nsw i64 %indvars.iv.i.i.i132, 3 ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i123, i64 %indvars.iv.next.i.i.i133.2
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next.i.i.i133.2
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !354
  store ptr %i.ie, ptr %i.ic, align 8, !tbaa !354
  %indvars.iv.next.i.i.i133.3 = add nuw nsw i64 %indvars.iv.i.i.i132, 4 ; 2 uses
  %exitcond.not.i.i.i134.3 = icmp eq i64 %indvars.iv.next.i.i.i133.3, %wide.trip.count.i.i.i131
  br i1 %exitcond.not.i.i.i134.3, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i126, label %scalar.ph354, !llvm.loop !435

_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i124: ; preds = %_ZN20btAlignedObjectArrayIPsE8allocateEi.exit.i.i122
  %.not.i5.i.i125 = icmp eq ptr %i.hg, null
  br i1 %.not.i5.i.i125, label %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i127, label %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i126

_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i126: ; preds = %scalar.ph354.prol.loopexit, %scalar.ph354, %middle.block363, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i124
  %i.if = load i8, ptr %i.o, align 8, !tbaa !103, !range !135, !noundef !144
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.s, label %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i127

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i126
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hg)
  %.pre2.pre.pre.i129 = load i32, ptr %i.l, align 4, !tbaa !105
  br label %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i127

_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i127: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i126, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i124
  %.pre2.i128 = phi i32 [ %i.he, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i124 ], [ %.pre2.pre.pre.i129, %bb.s ], [ %i.he, %_ZNK20btAlignedObjectArrayIPsE4copyEiiPS0_.exit.thread.i.i126 ]
  store i8 1, ptr %i.o, align 8, !tbaa !103
  store ptr %.0.i.i.i123, ptr %i.n, align 8, !tbaa !104
  store i32 %i.gz, ptr %i.m, align 8, !tbaa !106
  br label %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135

_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135: ; preds = %bb.o, %bb.p, %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i127
  %i.ih = phi i32 [ %.pre2.i128, %_ZN20btAlignedObjectArrayIPsE10deallocateEv.exit.i.i127 ], [ %i.gv, %bb.p ], [ %i.gv, %bb.o ] ; 2 uses
  %i.ii = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.ij = sext i32 %i.ih to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.ij
  store ptr %i.gu, ptr %i.ik, align 8, !tbaa !354
  %i.il = add nsw i32 %i.ih, 1
  store i32 %i.il, ptr %i.l, align 4, !tbaa !105
  %i.im = icmp sgt i32 %i.ai, 0
  %.pre263 = load ptr, ptr %1, align 8, !tbaa !338 ; 4 uses
  br i1 %i.im, label %.lr.ph220, label %.loopexit213

.lr.ph220:                                        ; preds = %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135
  %i.in = mul i32 %i.ai, 3                        ; 2 uses
  %i.io = getelementptr inbounds nuw [56 x i8], ptr %.pre263, i64 %indvars.iv260
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !348 ; 9 uses
  %smax242 = tail call i32 @llvm.smax.i32(i32 %i.in, i32 1)
  %wide.trip.count243 = zext nneg i32 %smax242 to i64 ; 7 uses
  %min.iters.check341 = icmp slt i32 %i.in, 9
  br i1 %min.iters.check341, label %scalar.ph340.preheader, label %vector.memcheck337

vector.memcheck337:                               ; preds = %.lr.ph220
  %i.ir = shl nuw nsw i64 %wide.trip.count243, 1
  %scevgep = getelementptr i8, ptr %i.gu, i64 %i.ir
  %scevgep338 = getelementptr i8, ptr %i.iq, i64 -2
  %i.is = shl nuw nsw i64 %wide.trip.count243, 2
  %scevgep339 = getelementptr i8, ptr %scevgep338, i64 %i.is
  %bound0 = icmp ult ptr %i.gu, %scevgep339
  %bound1 = icmp ult ptr %i.iq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph340.preheader, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck337
  %i.it = and i64 %wide.trip.count243, 7          ; 2 uses
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = select i1 %i.iu, i64 8, i64 %i.it
  %n.vec343 = sub nsw i64 %wide.trip.count243, %i.iv ; 2 uses
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next348, %vector.body344 ] ; 4 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index345
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index345
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.vec = load <8 x i16>, ptr %i.iw, align 2, !tbaa !436, !alias.scope !438
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec346 = load <8 x i16>, ptr %i.iy, align 2, !tbaa !436, !alias.scope !438
  %strided.vec347 = shufflevector <8 x i16> %wide.vec346, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %index345 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store <4 x i16> %strided.vec, ptr %i.iz, align 2, !tbaa !430, !alias.scope !441, !noalias !438
  store <4 x i16> %strided.vec347, ptr %i.ja, align 2, !tbaa !430, !alias.scope !441, !noalias !438
  %index.next348 = add nuw i64 %index345, 8       ; 2 uses
  %i.jb = icmp eq i64 %index.next348, %n.vec343
  br i1 %i.jb, label %scalar.ph340.preheader, label %vector.body344, !llvm.loop !443

scalar.ph340.preheader:                           ; preds = %vector.body344, %vector.memcheck337, %.lr.ph220
  %indvars.iv239.ph = phi i64 [ 0, %vector.memcheck337 ], [ 0, %.lr.ph220 ], [ %n.vec343, %vector.body344 ] ; 4 uses
  %i.jc = sub nsw i64 %wide.trip.count243, %indvars.iv239.ph
  %xtraiter432 = and i64 %i.jc, 3                 ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %scalar.ph340.prol.loopexit, label %scalar.ph340.prol

scalar.ph340.prol:                                ; preds = %scalar.ph340.preheader, %scalar.ph340.prol
  %indvars.iv239.prol = phi i64 [ %indvars.iv.next240.prol, %scalar.ph340.prol ], [ %indvars.iv239.ph, %scalar.ph340.preheader ] ; 3 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %scalar.ph340.prol ], [ 0, %scalar.ph340.preheader ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv239.prol
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !436
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %indvars.iv239.prol
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !430
  %indvars.iv.next240.prol = add nuw nsw i64 %indvars.iv239.prol, 1 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %scalar.ph340.prol.loopexit, label %scalar.ph340.prol, !llvm.loop !444

scalar.ph340.prol.loopexit:                       ; preds = %scalar.ph340.prol, %scalar.ph340.preheader
  %indvars.iv239.unr = phi i64 [ %indvars.iv239.ph, %scalar.ph340.preheader ], [ %indvars.iv.next240.prol, %scalar.ph340.prol ]
  %i.jg = sub nsw i64 %indvars.iv239.ph, %wide.trip.count243
  %i.jh = icmp ugt i64 %i.jg, -4
  br i1 %i.jh, label %.loopexit213, label %scalar.ph340

scalar.ph340:                                     ; preds = %scalar.ph340.prol.loopexit, %scalar.ph340
  %indvars.iv239 = phi i64 [ %indvars.iv.next240.3, %scalar.ph340 ], [ %indvars.iv239.unr, %scalar.ph340.prol.loopexit ] ; 6 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv239
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !436
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %indvars.iv239
  store i16 %i.jj, ptr %i.jk, align 2, !tbaa !430
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next240
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !436
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %indvars.iv.next240
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !430
  %indvars.iv.next240.1 = add nuw nsw i64 %indvars.iv239, 2 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next240.1
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !436
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %indvars.iv.next240.1
  store i16 %i.jp, ptr %i.jq, align 2, !tbaa !430
  %indvars.iv.next240.2 = add nuw nsw i64 %indvars.iv239, 3 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next240.2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !436
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %indvars.iv.next240.2
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !430
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 2 uses
  %exitcond244.not.3 = icmp eq i64 %indvars.iv.next240.3, %wide.trip.count243
  br i1 %exitcond244.not.3, label %.loopexit213, label %scalar.ph340, !llvm.loop !445

.loopexit213:                                     ; preds = %scalar.ph340.prol.loopexit, %scalar.ph340, %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135, %.loopexit214
  %i.ju = phi ptr [ %i.go, %.loopexit214 ], [ %.pre263, %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135 ], [ %.pre263, %scalar.ph340 ], [ %.pre263, %scalar.ph340.prol.loopexit ]
  %.sroa.17.2.a = phi i32 [ %.sroa.17.1, %.loopexit214 ], [ 3, %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135 ], [ 3, %scalar.ph340 ], [ 3, %scalar.ph340.prol.loopexit ]
  %.sroa.12207.1 = phi ptr [ %.sroa.12207.0, %.loopexit214 ], [ %i.gu, %_ZN20btAlignedObjectArrayIPsE9push_backERKS0_.exit135 ], [ %i.gu, %scalar.ph340 ], [ %i.gu, %scalar.ph340.prol.loopexit ]
  %i.jv = getelementptr inbounds nuw [56 x i8], ptr %i.ju, i64 %indvars.iv260
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !349
  %.not105 = icmp eq ptr %i.jx, null
  br i1 %.not105, label %.loopexit212, label %bb.t

bb.t:                                             ; preds = %.loopexit213
  %i.jy = sext i32 %i.ai to i64
  %i.jz = mul nsw i64 %i.jy, 3
  %i.ka = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.jz, i32 noundef 16) ; 4 uses
  %i.kb = load i32, ptr %i.p, align 4, !tbaa !109 ; 7 uses
  %i.kc = load i32, ptr %i.q, align 8, !tbaa !110
  %i.kd = icmp eq i32 %i.kb, %i.kc
  br i1 %i.kd, label %bb.u, label %_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit

bb.u:                                             ; preds = %bb.t
  %.not.i.i136 = icmp eq i32 %i.kb, 0
  %i.ke = shl nsw i32 %i.kb, 1
  %i.kf = select i1 %.not.i.i136, i32 1, i32 %i.ke ; 4 uses
  %i.kg = icmp slt i32 %i.kb, %i.kf
  br i1 %i.kg, label %bb.v, label %_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i137 = icmp eq i32 %i.kf, 0
  br i1 %.not.i.i.i137, label %_ZN20btAlignedObjectArrayIPhE8allocateEi.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kh = sext i32 %i.kf to i64
  %i.ki = shl nsw i64 %i.kh, 3
  %i.kj = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ki, i32 noundef 16)
  %.pre.i138 = load i32, ptr %i.p, align 4, !tbaa !109
  br label %_ZN20btAlignedObjectArrayIPhE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPhE8allocateEi.exit.i.i: ; preds = %bb.w, %bb.v
  %i.kk = phi i32 [ %.pre.i138, %bb.w ], [ %i.kb, %bb.v ] ; 5 uses
  %.0.i.i.i139 = phi ptr [ %i.kj, %bb.w ], [ null, %bb.v ] ; 8 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  %i.km = load ptr, ptr %i.r, align 8, !tbaa !108 ; 9 uses
  br i1 %i.kl, label %.lr.ph.i.i.i143, label %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i143:                                  ; preds = %_ZN20btAlignedObjectArrayIPhE8allocateEi.exit.i.i
  %i.kn = ptrtoaddr ptr %i.km to i64
  %.0.i.i.i139323 = ptrtoaddr ptr %.0.i.i.i139 to i64
  %wide.trip.count.i.i.i144 = zext nneg i32 %i.kk to i64 ; 5 uses
  %min.iters.check326 = icmp ult i32 %i.kk, 4
  %i.ko = sub i64 %i.kn, %.0.i.i.i139323
  %diff.check324 = icmp ugt i64 %i.ko, -32
  %or.cond415.a = select i1 %min.iters.check326, i1 true, i1 %diff.check324
  br i1 %or.cond415.a, label %scalar.ph325.preheader, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph.i.i.i143
  %n.vec328 = and i64 %wide.trip.count.i.i.i144, 2147483644 ; 3 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next333, %vector.body329 ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i139, i64 %index330 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %index330 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %wide.load331 = load <2 x ptr>, ptr %i.kq, align 8, !tbaa !178
  %wide.load332 = load <2 x ptr>, ptr %i.kr, align 8, !tbaa !178
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store <2 x ptr> %wide.load331, ptr %i.kp, align 8, !tbaa !178
  store <2 x ptr> %wide.load332, ptr %i.ks, align 8, !tbaa !178
  %index.next333 = add nuw i64 %index330, 4       ; 2 uses
  %i.kt = icmp eq i64 %index.next333, %n.vec328
  br i1 %i.kt, label %middle.block334, label %vector.body329, !llvm.loop !446

middle.block334:                                  ; preds = %vector.body329
  %cmp.n335 = icmp eq i64 %n.vec328, %wide.trip.count.i.i.i144
  br i1 %cmp.n335, label %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph325.preheader

scalar.ph325.preheader:                           ; preds = %.lr.ph.i.i.i143, %middle.block334
  %indvars.iv.i.i.i145.ph = phi i64 [ 0, %.lr.ph.i.i.i143 ], [ %n.vec328, %middle.block334 ] ; 3 uses
  %xtraiter435 = and i64 %wide.trip.count.i.i.i144, 3 ; 2 uses
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %scalar.ph325.prol.loopexit, label %scalar.ph325.prol

scalar.ph325.prol:                                ; preds = %scalar.ph325.preheader, %scalar.ph325.prol
  %indvars.iv.i.i.i145.prol = phi i64 [ %indvars.iv.next.i.i.i146.prol, %scalar.ph325.prol ], [ %indvars.iv.i.i.i145.ph, %scalar.ph325.preheader ] ; 3 uses
  %prol.iter437 = phi i64 [ %prol.iter437.next, %scalar.ph325.prol ], [ 0, %scalar.ph325.preheader ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i139, i64 %indvars.iv.i.i.i145.prol
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.i.i.i145.prol
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !178
  store ptr %i.kw, ptr %i.ku, align 8, !tbaa !178
  %indvars.iv.next.i.i.i146.prol = add nuw nsw i64 %indvars.iv.i.i.i145.prol, 1 ; 2 uses
  %prol.iter437.next = add i64 %prol.iter437, 1   ; 2 uses
  %prol.iter437.cmp.not = icmp eq i64 %prol.iter437.next, %xtraiter435
  br i1 %prol.iter437.cmp.not, label %scalar.ph325.prol.loopexit, label %scalar.ph325.prol, !llvm.loop !447

scalar.ph325.prol.loopexit:                       ; preds = %scalar.ph325.prol, %scalar.ph325.preheader
  %indvars.iv.i.i.i145.unr = phi i64 [ %indvars.iv.i.i.i145.ph, %scalar.ph325.preheader ], [ %indvars.iv.next.i.i.i146.prol, %scalar.ph325.prol ]
  %i.kx = sub nsw i64 %indvars.iv.i.i.i145.ph, %wide.trip.count.i.i.i144
  %i.ky = icmp ugt i64 %i.kx, -4
  br i1 %i.ky, label %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph325

scalar.ph325:                                     ; preds = %scalar.ph325.prol.loopexit, %scalar.ph325
  %indvars.iv.i.i.i145 = phi i64 [ %indvars.iv.next.i.i.i146.3, %scalar.ph325 ], [ %indvars.iv.i.i.i145.unr, %scalar.ph325.prol.loopexit ] ; 6 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i139, i64 %indvars.iv.i.i.i145
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.i.i.i145
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !178
  store ptr %i.lb, ptr %i.kz, align 8, !tbaa !178
  %indvars.iv.next.i.i.i146 = add nuw nsw i64 %indvars.iv.i.i.i145, 1 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i139, i64 %indvars.iv.next.i.i.i146
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.next.i.i.i146
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !178
  store ptr %i.le, ptr %i.lc, align 8, !tbaa !178
  %indvars.iv.next.i.i.i146.1 = add nuw nsw i64 %indvars.iv.i.i.i145, 2 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i139, i64 %indvars.iv.next.i.i.i146.1
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.next.i.i.i146.1
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !178
  store ptr %i.lh, ptr %i.lf, align 8, !tbaa !178
  %indvars.iv.next.i.i.i146.2 = add nuw nsw i64 %indvars.iv.i.i.i145, 3 ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i139, i64 %indvars.iv.next.i.i.i146.2
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.next.i.i.i146.2
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !178
  store ptr %i.lk, ptr %i.li, align 8, !tbaa !178
  %indvars.iv.next.i.i.i146.3 = add nuw nsw i64 %indvars.iv.i.i.i145, 4 ; 2 uses
  %exitcond.not.i.i.i147.3 = icmp eq i64 %indvars.iv.next.i.i.i146.3, %wide.trip.count.i.i.i144
  br i1 %exitcond.not.i.i.i147.3, label %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph325, !llvm.loop !448

_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPhE8allocateEi.exit.i.i
  %.not.i5.i.i140 = icmp eq ptr %i.km, null
  br i1 %.not.i5.i.i140, label %_ZN20btAlignedObjectArrayIPhE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.thread.i.i: ; preds = %scalar.ph325.prol.loopexit, %scalar.ph325, %middle.block334, %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.i.i
  %i.ll = load i8, ptr %i.s, align 8, !tbaa !107, !range !135, !noundef !144
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.x, label %_ZN20btAlignedObjectArrayIPhE10deallocateEv.exit.i.i

bb.x:                                             ; preds = %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.km)
  %.pre2.pre.pre.i142 = load i32, ptr %i.p, align 4, !tbaa !109
  br label %_ZN20btAlignedObjectArrayIPhE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPhE10deallocateEv.exit.i.i: ; preds = %bb.x, %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.i.i
  %.pre2.i141 = phi i32 [ %i.kk, %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.i.i ], [ %.pre2.pre.pre.i142, %bb.x ], [ %i.kk, %_ZNK20btAlignedObjectArrayIPhE4copyEiiPS0_.exit.thread.i.i ]
  store i8 1, ptr %i.s, align 8, !tbaa !107
  store ptr %.0.i.i.i139, ptr %i.r, align 8, !tbaa !108
  store i32 %i.kf, ptr %i.q, align 8, !tbaa !110
  br label %_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit: ; preds = %bb.t, %bb.u, %_ZN20btAlignedObjectArrayIPhE10deallocateEv.exit.i.i
  %i.ln = phi i32 [ %.pre2.i141, %_ZN20btAlignedObjectArrayIPhE10deallocateEv.exit.i.i ], [ %i.kb, %bb.u ], [ %i.kb, %bb.t ] ; 2 uses
  %i.lo = load ptr, ptr %i.r, align 8, !tbaa !108
  %i.lp = sext i32 %i.ln to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.lp
  store ptr %i.ka, ptr %i.lq, align 8, !tbaa !178
  %i.lr = add nsw i32 %i.ln, 1
  store i32 %i.lr, ptr %i.p, align 4, !tbaa !109
  %i.ls = icmp sgt i32 %i.ai, 0
  br i1 %i.ls, label %.lr.ph222.preheader, label %.loopexit212

.lr.ph222.preheader:                              ; preds = %_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit
  %wide.trip.count248 = zext nneg i32 %i.ai to i64
  br label %.lr.ph222

.lr.ph222:                                        ; preds = %.lr.ph222.preheader, %.lr.ph222
  %indvars.iv245 = phi i64 [ 0, %.lr.ph222.preheader ], [ %indvars.iv.next246, %.lr.ph222 ] ; 5 uses
  %i.lt = load ptr, ptr %1, align 8, !tbaa !338
  %i.lu = getelementptr inbounds nuw [56 x i8], ptr %i.lt, i64 %indvars.iv260
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !349
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv245
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !141
  %i.lz = mul nuw nsw i64 %indvars.iv245, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.lz ; 3 uses
  store i8 %i.ly, ptr %i.ma, align 1, !tbaa !141
  %i.mb = load ptr, ptr %1, align 8, !tbaa !338
  %i.mc = getelementptr inbounds nuw [56 x i8], ptr %i.mb, i64 %indvars.iv260
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !349
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv245
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !141
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !141
  %i.mj = load ptr, ptr %1, align 8, !tbaa !338
  %i.mk = getelementptr inbounds nuw [56 x i8], ptr %i.mj, i64 %indvars.iv260
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !349
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv245
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !141
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !141
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %.loopexit212, label %.lr.ph222, !llvm.loop !449

.loopexit212:                                     ; preds = %scalar.ph383.prol.loopexit, %scalar.ph383, %.lr.ph222, %middle.block392, %_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit, %_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit, %.loopexit213
  %.sroa.31.2 = phi i32 [ %.sroa.17.2.a, %.loopexit213 ], [ 5, %_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit ], [ 2, %_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit ], [ 2, %middle.block392 ], [ 5, %.lr.ph222 ], [ 2, %scalar.ph383 ], [ 2, %scalar.ph383.prol.loopexit ] ; 2 uses
  %.sroa.17.3 = phi i32 [ 6, %.loopexit213 ], [ 3, %_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit ], [ 12, %_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit ], [ 12, %middle.block392 ], [ 3, %.lr.ph222 ], [ 12, %scalar.ph383 ], [ 12, %scalar.ph383.prol.loopexit ]
  %.sroa.12207.2 = phi ptr [ %.sroa.12207.1, %.loopexit213 ], [ %i.ka, %_ZN20btAlignedObjectArrayIPhE9push_backERKS0_.exit ], [ %i.ap, %_ZN20btAlignedObjectArrayIPiE9push_backERKS0_.exit ], [ %i.ap, %middle.block392 ], [ %i.ka, %.lr.ph222 ], [ %i.ap, %scalar.ph383 ], [ %i.ap, %scalar.ph383.prol.loopexit ] ; 2 uses
  %i.mr = load ptr, ptr %1, align 8, !tbaa !338
  %i.ms = getelementptr inbounds nuw [56 x i8], ptr %i.mr, i64 %indvars.iv260
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !339
  %.not106 = icmp eq ptr %i.mt, null
  %i.mu = sext i32 %i.ak to i64                   ; 2 uses
  br i1 %.not106, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %.loopexit212
  %i.mv = shl nsw i64 %i.mu, 4
  %i.mw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.mv, i32 noundef 16) ; 7 uses
  %i.mx = load i32, ptr %i.t, align 4, !tbaa !113 ; 7 uses
  %i.my = load i32, ptr %i.u, align 8, !tbaa !114
  %i.mz = icmp eq i32 %i.mx, %i.my
  br i1 %i.mz, label %bb.z, label %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit

bb.z:                                             ; preds = %bb.y
  %.not.i.i148 = icmp eq i32 %i.mx, 0
  %i.na = shl nsw i32 %i.mx, 1
  %i.nb = select i1 %.not.i.i148, i32 1, i32 %i.na ; 4 uses
  %i.nc = icmp slt i32 %i.mx, %i.nb
  br i1 %i.nc, label %bb.aa, label %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i149 = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i.i149, label %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE8allocateEi.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nd = sext i32 %i.nb to i64
  %i.ne = shl nsw i64 %i.nd, 3
  %i.nf = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ne, i32 noundef 16)
  %.pre.i150 = load i32, ptr %i.t, align 4, !tbaa !113
  br label %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP18btVector3FloatDataE8allocateEi.exit.i.i: ; preds = %bb.ab, %bb.aa
  %i.ng = phi i32 [ %.pre.i150, %bb.ab ], [ %i.mx, %bb.aa ] ; 5 uses
  %.0.i.i.i151 = phi ptr [ %i.nf, %bb.ab ], [ null, %bb.aa ] ; 8 uses
  %i.nh = icmp sgt i32 %i.ng, 0
  %i.ni = load ptr, ptr %i.v, align 8, !tbaa !112 ; 9 uses
  br i1 %i.nh, label %.lr.ph.i.i.i155, label %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i155:                                  ; preds = %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE8allocateEi.exit.i.i
  %i.nj = ptrtoaddr ptr %i.ni to i64
  %.0.i.i.i151308 = ptrtoaddr ptr %.0.i.i.i151 to i64
  %wide.trip.count.i.i.i156 = zext nneg i32 %i.ng to i64 ; 5 uses
  %min.iters.check311 = icmp ult i32 %i.ng, 4
  %i.nk = sub i64 %i.nj, %.0.i.i.i151308
  %diff.check309 = icmp ugt i64 %i.nk, -32
  %or.cond416 = select i1 %min.iters.check311, i1 true, i1 %diff.check309
  br i1 %or.cond416, label %scalar.ph310.preheader, label %vector.ph312

vector.ph312:                                     ; preds = %.lr.ph.i.i.i155
  %n.vec313 = and i64 %wide.trip.count.i.i.i156, 2147483644 ; 3 uses
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph312
  %index315 = phi i64 [ 0, %vector.ph312 ], [ %index.next318, %vector.body314 ] ; 3 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i151, i64 %index315 ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %index315 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %wide.load316 = load <2 x ptr>, ptr %i.nm, align 8, !tbaa !358
  %wide.load317 = load <2 x ptr>, ptr %i.nn, align 8, !tbaa !358
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <2 x ptr> %wide.load316, ptr %i.nl, align 8, !tbaa !358
  store <2 x ptr> %wide.load317, ptr %i.no, align 8, !tbaa !358
  %index.next318 = add nuw i64 %index315, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next318, %n.vec313
  br i1 %i.np, label %middle.block319, label %vector.body314, !llvm.loop !450

middle.block319:                                  ; preds = %vector.body314
  %cmp.n320 = icmp eq i64 %n.vec313, %wide.trip.count.i.i.i156
  br i1 %cmp.n320, label %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph310.preheader

scalar.ph310.preheader:                           ; preds = %.lr.ph.i.i.i155, %middle.block319
  %indvars.iv.i.i.i157.ph = phi i64 [ 0, %.lr.ph.i.i.i155 ], [ %n.vec313, %middle.block319 ] ; 3 uses
  %xtraiter438 = and i64 %wide.trip.count.i.i.i156, 3 ; 2 uses
  %lcmp.mod439.not = icmp eq i64 %xtraiter438, 0
  br i1 %lcmp.mod439.not, label %scalar.ph310.prol.loopexit, label %scalar.ph310.prol

scalar.ph310.prol:                                ; preds = %scalar.ph310.preheader, %scalar.ph310.prol
  %indvars.iv.i.i.i157.prol = phi i64 [ %indvars.iv.next.i.i.i158.prol, %scalar.ph310.prol ], [ %indvars.iv.i.i.i157.ph, %scalar.ph310.preheader ] ; 3 uses
  %prol.iter440 = phi i64 [ %prol.iter440.next, %scalar.ph310.prol ], [ 0, %scalar.ph310.preheader ]
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i151, i64 %indvars.iv.i.i.i157.prol
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv.i.i.i157.prol
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !358
  store ptr %i.ns, ptr %i.nq, align 8, !tbaa !358
  %indvars.iv.next.i.i.i158.prol = add nuw nsw i64 %indvars.iv.i.i.i157.prol, 1 ; 2 uses
  %prol.iter440.next = add i64 %prol.iter440, 1   ; 2 uses
  %prol.iter440.cmp.not = icmp eq i64 %prol.iter440.next, %xtraiter438
  br i1 %prol.iter440.cmp.not, label %scalar.ph310.prol.loopexit, label %scalar.ph310.prol, !llvm.loop !451

scalar.ph310.prol.loopexit:                       ; preds = %scalar.ph310.prol, %scalar.ph310.preheader
  %indvars.iv.i.i.i157.unr = phi i64 [ %indvars.iv.i.i.i157.ph, %scalar.ph310.preheader ], [ %indvars.iv.next.i.i.i158.prol, %scalar.ph310.prol ]
  %i.nt = sub nsw i64 %indvars.iv.i.i.i157.ph, %wide.trip.count.i.i.i156
  %i.nu = icmp ugt i64 %i.nt, -4
  br i1 %i.nu, label %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph310

scalar.ph310:                                     ; preds = %scalar.ph310.prol.loopexit, %scalar.ph310
  %indvars.iv.i.i.i157 = phi i64 [ %indvars.iv.next.i.i.i158.3, %scalar.ph310 ], [ %indvars.iv.i.i.i157.unr, %scalar.ph310.prol.loopexit ] ; 6 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i151, i64 %indvars.iv.i.i.i157
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv.i.i.i157
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !358
  store ptr %i.nx, ptr %i.nv, align 8, !tbaa !358
  %indvars.iv.next.i.i.i158 = add nuw nsw i64 %indvars.iv.i.i.i157, 1 ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i151, i64 %indvars.iv.next.i.i.i158
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv.next.i.i.i158
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !358
  store ptr %i.oa, ptr %i.ny, align 8, !tbaa !358
  %indvars.iv.next.i.i.i158.1 = add nuw nsw i64 %indvars.iv.i.i.i157, 2 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i151, i64 %indvars.iv.next.i.i.i158.1
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv.next.i.i.i158.1
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !358
  store ptr %i.od, ptr %i.ob, align 8, !tbaa !358
  %indvars.iv.next.i.i.i158.2 = add nuw nsw i64 %indvars.iv.i.i.i157, 3 ; 2 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i151, i64 %indvars.iv.next.i.i.i158.2
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv.next.i.i.i158.2
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !358
  store ptr %i.og, ptr %i.oe, align 8, !tbaa !358
  %indvars.iv.next.i.i.i158.3 = add nuw nsw i64 %indvars.iv.i.i.i157, 4 ; 2 uses
  %exitcond.not.i.i.i159.3 = icmp eq i64 %indvars.iv.next.i.i.i158.3, %wide.trip.count.i.i.i156
  br i1 %exitcond.not.i.i.i159.3, label %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph310, !llvm.loop !452

_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE8allocateEi.exit.i.i
  %.not.i5.i.i152 = icmp eq ptr %i.ni, null
  br i1 %.not.i5.i.i152, label %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph310.prol.loopexit, %scalar.ph310, %middle.block319, %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.i.i
  %i.oh = load i8, ptr %i.w, align 8, !tbaa !111, !range !135, !noundef !144
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %bb.ac, label %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE10deallocateEv.exit.i.i

bb.ac:                                            ; preds = %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ni)
  %.pre2.pre.pre.i154 = load i32, ptr %i.t, align 4, !tbaa !113
  br label %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP18btVector3FloatDataE10deallocateEv.exit.i.i: ; preds = %bb.ac, %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.i.i
  %.pre2.i153 = phi i32 [ %i.ng, %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i154, %bb.ac ], [ %i.ng, %_ZNK20btAlignedObjectArrayIP18btVector3FloatDataE4copyEiiPS1_.exit.thread.i.i ]
  store i8 1, ptr %i.w, align 8, !tbaa !111
  store ptr %.0.i.i.i151, ptr %i.v, align 8, !tbaa !112
  store i32 %i.nb, ptr %i.u, align 8, !tbaa !114
  br label %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit: ; preds = %bb.y, %bb.z, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE10deallocateEv.exit.i.i
  %i.oj = phi i32 [ %.pre2.i153, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE10deallocateEv.exit.i.i ], [ %i.mx, %bb.z ], [ %i.mx, %bb.y ] ; 2 uses
  %i.ok = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.ol = sext i32 %i.oj to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ok, i64 %i.ol
  store ptr %i.mw, ptr %i.om, align 8, !tbaa !358
  %i.on = add nsw i32 %i.oj, 1
  store i32 %i.on, ptr %i.t, align 4, !tbaa !113
  %i.oo = icmp sgt i32 %i.ak, 0
  br i1 %i.oo, label %.lr.ph224, label %.loopexit

.lr.ph224:                                        ; preds = %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit
  %i.op = load ptr, ptr %1, align 8, !tbaa !338
  %i.oq = getelementptr inbounds nuw [56 x i8], ptr %i.op, i64 %indvars.iv260
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !339 ; 3 uses
  %wide.trip.count253 = zext nneg i32 %i.ak to i64 ; 2 uses
  %xtraiter442 = and i64 %wide.trip.count253, 1
  %i.os = icmp eq i32 %i.ak, 1
  br i1 %i.os, label %.epil.preheader441, label %.lr.ph224.new

.lr.ph224.new:                                    ; preds = %.lr.ph224
  %unroll_iter445 = and i64 %wide.trip.count253, 2147483646
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph224.new
  %indvars.iv250 = phi i64 [ 0, %.lr.ph224.new ], [ %indvars.iv.next251.1, %bb.ad ] ; 4 uses
  %niter446 = phi i64 [ 0, %.lr.ph224.new ], [ %niter446.next.1, %bb.ad ]
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %indvars.iv250 ; 4 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !202
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.mw, i64 %indvars.iv250 ; 4 uses
  store float %i.ou, ptr %i.ov, align 4, !tbaa !202
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !202
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  store float %i.ox, ptr %i.oy, align 4, !tbaa !202
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !202
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store float %i.pa, ptr %i.pb, align 4, !tbaa !202
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !202
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  store float %i.pd, ptr %i.pe, align 4, !tbaa !202
  %indvars.iv.next251 = or disjoint i64 %indvars.iv250, 1 ; 2 uses
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %indvars.iv.next251 ; 4 uses
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !202
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.mw, i64 %indvars.iv.next251 ; 4 uses
  store float %i.pg, ptr %i.ph, align 4, !tbaa !202
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !202
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store float %i.pj, ptr %i.pk, align 4, !tbaa !202
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !202
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store float %i.pm, ptr %i.pn, align 4, !tbaa !202
  %i.po = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  %i.pp = load float, ptr %i.po, align 4, !tbaa !202
end_hunk_1
begin_hunk_2_@_ZN24btCollisionWorldImporter19createMeshInterfaceER27btStridingMeshInterfaceData:bb.a
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store <2 x ptr> %wide.load, ptr %i.qh, align 8, !tbaa !360
  store <2 x ptr> %wide.load306, ptr %i.qk, align 8, !tbaa !360
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ql = icmp eq i64 %index.next, %n.vec
  br i1 %i.ql, label %middle.block, label %vector.body, !llvm.loop !454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i168
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i167, %middle.block
  %indvars.iv.i.i.i169.ph = phi i64 [ 0, %.lr.ph.i.i.i167 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter447 = and i64 %wide.trip.count.i.i.i168, 3 ; 2 uses
  %lcmp.mod448.not = icmp eq i64 %xtraiter447, 0
  br i1 %lcmp.mod448.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i169.prol = phi i64 [ %indvars.iv.next.i.i.i170.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i169.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter449 = phi i64 [ %prol.iter449.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i163, i64 %indvars.iv.i.i.i169.prol
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.i.i.i169.prol
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !360
  store ptr %i.qo, ptr %i.qm, align 8, !tbaa !360
  %indvars.iv.next.i.i.i170.prol = add nuw nsw i64 %indvars.iv.i.i.i169.prol, 1 ; 2 uses
  %prol.iter449.next = add i64 %prol.iter449, 1   ; 2 uses
  %prol.iter449.cmp.not = icmp eq i64 %prol.iter449.next, %xtraiter447
  br i1 %prol.iter449.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !455

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i169.unr = phi i64 [ %indvars.iv.i.i.i169.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i170.prol, %scalar.ph.prol ]
  %i.qp = sub nsw i64 %indvars.iv.i.i.i169.ph, %wide.trip.count.i.i.i168
  %i.qq = icmp ugt i64 %i.qp, -4
  br i1 %i.qq, label %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i169 = phi i64 [ %indvars.iv.next.i.i.i170.3, %scalar.ph ], [ %indvars.iv.i.i.i169.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i163, i64 %indvars.iv.i.i.i169
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.i.i.i169
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !360
  store ptr %i.qt, ptr %i.qr, align 8, !tbaa !360
  %indvars.iv.next.i.i.i170 = add nuw nsw i64 %indvars.iv.i.i.i169, 1 ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i163, i64 %indvars.iv.next.i.i.i170
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.next.i.i.i170
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !360
  store ptr %i.qw, ptr %i.qu, align 8, !tbaa !360
  %indvars.iv.next.i.i.i170.1 = add nuw nsw i64 %indvars.iv.i.i.i169, 2 ; 2 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i163, i64 %indvars.iv.next.i.i.i170.1
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.next.i.i.i170.1
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !360
  store ptr %i.qz, ptr %i.qx, align 8, !tbaa !360
  %indvars.iv.next.i.i.i170.2 = add nuw nsw i64 %indvars.iv.i.i.i169, 3 ; 2 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i163, i64 %indvars.iv.next.i.i.i170.2
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %indvars.iv.next.i.i.i170.2
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !360
  store ptr %i.rc, ptr %i.ra, align 8, !tbaa !360
  %indvars.iv.next.i.i.i170.3 = add nuw nsw i64 %indvars.iv.i.i.i169, 4 ; 2 uses
  %exitcond.not.i.i.i171.3 = icmp eq i64 %indvars.iv.next.i.i.i170.3, %wide.trip.count.i.i.i168
  br i1 %exitcond.not.i.i.i171.3, label %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !456

_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE8allocateEi.exit.i.i
  %.not.i5.i.i164 = icmp eq ptr %i.qe, null
  br i1 %.not.i5.i.i164, label %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.i.i
  %i.rd = load i8, ptr %i.aa, align 8, !tbaa !115, !range !135, !noundef !144
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.ai, label %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE10deallocateEv.exit.i.i

bb.ai:                                            ; preds = %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.qe)
  %.pre2.pre.pre.i166 = load i32, ptr %i.x, align 4, !tbaa !117
  br label %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE10deallocateEv.exit.i.i: ; preds = %bb.ai, %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.i.i
  %.pre2.i165 = phi i32 [ %i.qc, %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i166, %bb.ai ], [ %i.qc, %_ZNK20btAlignedObjectArrayIP19btVector3DoubleDataE4copyEiiPS1_.exit.thread.i.i ]
  store i8 1, ptr %i.aa, align 8, !tbaa !115
  store ptr %.0.i.i.i163, ptr %i.z, align 8, !tbaa !116
  store i32 %i.px, ptr %i.y, align 8, !tbaa !118
  br label %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit: ; preds = %bb.ae, %bb.af, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE10deallocateEv.exit.i.i
  %i.rf = phi i32 [ %.pre2.i165, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE10deallocateEv.exit.i.i ], [ %i.pt, %bb.af ], [ %i.pt, %bb.ae ] ; 2 uses
  %i.rg = load ptr, ptr %i.z, align 8, !tbaa !116
  %i.rh = sext i32 %i.rf to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.rh
  store ptr %i.ps, ptr %i.ri, align 8, !tbaa !360
  %i.rj = add nsw i32 %i.rf, 1
  store i32 %i.rj, ptr %i.x, align 4, !tbaa !117
  %i.rk = icmp sgt i32 %i.ak, 0
  br i1 %i.rk, label %.lr.ph226, label %.loopexit

.lr.ph226:                                        ; preds = %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit
  %i.rl = load ptr, ptr %1, align 8, !tbaa !338
  %i.rm = getelementptr inbounds nuw [56 x i8], ptr %i.rl, i64 %indvars.iv260
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !345 ; 3 uses
  %wide.trip.count258 = zext nneg i32 %i.ak to i64 ; 2 uses
  %xtraiter451 = and i64 %wide.trip.count258, 1
  %i.rp = icmp eq i32 %i.ak, 1
  br i1 %i.rp, label %.epil.preheader450, label %.lr.ph226.new

.lr.ph226.new:                                    ; preds = %.lr.ph226
  %unroll_iter454 = and i64 %wide.trip.count258, 2147483646
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph226.new
  %indvars.iv255 = phi i64 [ 0, %.lr.ph226.new ], [ %indvars.iv.next256.1, %bb.aj ] ; 4 uses
  %niter455 = phi i64 [ 0, %.lr.ph226.new ], [ %niter455.next.1, %bb.aj ]
  %i.rq = getelementptr inbounds nuw [32 x i8], ptr %i.ro, i64 %indvars.iv255 ; 4 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !201
  %i.rs = getelementptr inbounds nuw [32 x i8], ptr %i.ps, i64 %indvars.iv255 ; 4 uses
  store double %i.rr, ptr %i.rs, align 8, !tbaa !201
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !201
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store double %i.ru, ptr %i.rv, align 8, !tbaa !201
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !201
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store double %i.rx, ptr %i.ry, align 8, !tbaa !201
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !201
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  store double %i.sa, ptr %i.sb, align 8, !tbaa !201
  %indvars.iv.next256 = or disjoint i64 %indvars.iv255, 1 ; 2 uses
  %i.sc = getelementptr inbounds nuw [32 x i8], ptr %i.ro, i64 %indvars.iv.next256 ; 4 uses
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !201
  %i.se = getelementptr inbounds nuw [32 x i8], ptr %i.ps, i64 %indvars.iv.next256 ; 4 uses
  store double %i.sd, ptr %i.se, align 8, !tbaa !201
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !201
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store double %i.sg, ptr %i.sh, align 8, !tbaa !201
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.sj = load double, ptr %i.si, align 8, !tbaa !201
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  store double %i.sj, ptr %i.sk, align 8, !tbaa !201
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !201
  %i.sn = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  store double %i.sm, ptr %i.sn, align 8, !tbaa !201
  %indvars.iv.next256.1 = add nuw nsw i64 %indvars.iv255, 2 ; 2 uses
  %niter455.next.1 = add i64 %niter455, 2         ; 2 uses
  %niter455.ncmp.1 = icmp eq i64 %niter455.next.1, %unroll_iter454
  br i1 %niter455.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !457

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aj
  %lcmp.mod452.not = icmp eq i64 %xtraiter451, 0
  br i1 %lcmp.mod452.not, label %.loopexit, label %.epil.preheader450

.epil.preheader450:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph226
  %indvars.iv255.epil.init = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next256.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod453 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod453)
  %i.so = getelementptr inbounds nuw [32 x i8], ptr %i.ro, i64 %indvars.iv255.epil.init ; 4 uses
  %i.sp = load double, ptr %i.so, align 8, !tbaa !201
  %i.sq = getelementptr inbounds nuw [32 x i8], ptr %i.ps, i64 %indvars.iv255.epil.init ; 4 uses
  store double %i.sp, ptr %i.sq, align 8, !tbaa !201
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !201
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store double %i.ss, ptr %i.st, align 8, !tbaa !201
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sv = load double, ptr %i.su, align 8, !tbaa !201
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store double %i.sv, ptr %i.sw, align 8, !tbaa !201
  %i.sx = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !201
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 24
  store double %i.sy, ptr %i.sz, align 8, !tbaa !201
  br label %.loopexit

.loopexit.loopexit418.unr-lcssa:                  ; preds = %bb.ad
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %.loopexit, label %.epil.preheader441

.epil.preheader441:                               ; preds = %.loopexit.loopexit418.unr-lcssa, %.lr.ph224
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next251.1, %.loopexit.loopexit418.unr-lcssa ] ; 2 uses
  %lcmp.mod444 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod444)
  %i.ta = getelementptr inbounds nuw [16 x i8], ptr %i.or, i64 %indvars.iv250.epil.init ; 4 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !202
  %i.tc = getelementptr inbounds nuw [16 x i8], ptr %i.mw, i64 %indvars.iv250.epil.init ; 4 uses
  store float %i.tb, ptr %i.tc, align 4, !tbaa !202
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.te = load float, ptr %i.td, align 4, !tbaa !202
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  store float %i.te, ptr %i.tf, align 4, !tbaa !202
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.th = load float, ptr %i.tg, align 4, !tbaa !202
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store float %i.th, ptr %i.ti, align 4, !tbaa !202
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ta, i64 12
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !202
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  store float %i.tk, ptr %i.tl, align 4, !tbaa !202
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader441, %.loopexit.loopexit418.unr-lcssa, %.epil.preheader450, %.loopexit.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit
  %.sroa.37.0 = phi i32 [ 1, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ 0, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ 1, %.epil.preheader450 ], [ 1, %.loopexit.loopexit.unr-lcssa ], [ 0, %.loopexit.loopexit418.unr-lcssa ], [ 0, %.epil.preheader441 ]
  %.sroa.29.0 = phi i32 [ 32, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ 16, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ 32, %.epil.preheader450 ], [ 32, %.loopexit.loopexit.unr-lcssa ], [ 16, %.loopexit.loopexit418.unr-lcssa ], [ 16, %.epil.preheader441 ]
  %.sroa.26.0 = phi ptr [ %i.ps, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ %i.mw, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ %i.ps, %.epil.preheader450 ], [ %i.ps, %.loopexit.loopexit.unr-lcssa ], [ %i.mw, %.loopexit.loopexit418.unr-lcssa ], [ %i.mw, %.epil.preheader441 ] ; 2 uses
  %i.tm = icmp ne ptr %.sroa.12207.2, null
  %i.tn = icmp ne ptr %.sroa.26.0, null
  %or.cond = and i1 %i.tm, %i.tn
  br i1 %or.cond, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %.loopexit
  %i.to = load i32, ptr %i.ab, align 4, !tbaa !458 ; 7 uses
  %i.tp = load i32, ptr %i.ac, align 8, !tbaa !462
  %i.tq = icmp eq i32 %i.to, %i.tp
  br i1 %i.tq, label %bb.al, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i172 = icmp eq i32 %i.to, 0
  %i.tr = shl nsw i32 %i.to, 1
  %i.ts = select i1 %.not.i.i.i172, i32 1, i32 %i.tr ; 4 uses
  %i.tt = icmp slt i32 %i.to, %i.ts
  br i1 %i.tt, label %bb.am, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i.i = icmp eq i32 %i.ts, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.tu = sext i32 %i.ts to i64
  %i.tv = mul nsw i64 %i.tu, 48
  %i.tw = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.tv, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.ab, align 4, !tbaa !458
  br label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i: ; preds = %bb.an, %bb.am
  %i.tx = phi i32 [ %.pre.i.i, %bb.an ], [ %i.to, %bb.am ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.tw, %bb.an ], [ null, %bb.am ] ; 4 uses
  %i.ty = icmp sgt i32 %i.tx, 0
  br i1 %i.ty, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.tx to i64 ; 2 uses
  %xtraiter457 = and i64 %wide.trip.count.i.i.i.i, 1
  %i.tz = icmp eq i32 %i.tx, 1
  br i1 %i.tz, label %.epil.preheader456, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter460 = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.ao ] ; 4 uses
  %niter461 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter461.next.1, %bb.ao ]
  %i.ua = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ub = load ptr, ptr %i.ad, align 8, !tbaa !463
  %i.uc = getelementptr inbounds nuw [48 x i8], ptr %i.ub, i64 %indvars.iv.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ua, ptr noundef nonnull align 8 dereferenceable(48) %i.uc, i64 48, i1 false), !tbaa.struct !464
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ud = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.ue = load ptr, ptr %i.ad, align 8, !tbaa !463
  %i.uf = getelementptr inbounds nuw [48 x i8], ptr %i.ue, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ud, ptr noundef nonnull align 8 dereferenceable(48) %i.uf, i64 48, i1 false), !tbaa.struct !464
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter461.next.1 = add i64 %niter461, 2         ; 2 uses
  %niter461.ncmp.1 = icmp eq i64 %niter461.next.1, %unroll_iter460
  br i1 %niter461.ncmp.1, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !467

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, label %.epil.preheader456

.epil.preheader456:                               ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod459 = trunc i32 %i.tx to i1
  tail call void @llvm.assume(i1 %lcmp.mod459)
  %i.ug = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.uh = load ptr, ptr %i.ad, align 8, !tbaa !463
  %i.ui = getelementptr inbounds nuw [48 x i8], ptr %i.uh, i64 %indvars.iv.i.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ug, ptr noundef nonnull align 8 dereferenceable(48) %i.ui, i64 48, i1 false), !tbaa.struct !464
  br label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader456, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %i.uj = load ptr, ptr %i.ad, align 8, !tbaa !463 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.uj, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  %i.uk = load i8, ptr %i.ae, align 8, !tbaa !468, !range !135, !noundef !144
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %bb.aq, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.uj)
  br label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  store i8 1, ptr %i.ae, align 8, !tbaa !468
  store ptr %.0.i.i.i.i, ptr %i.ad, align 8, !tbaa !463
  store i32 %i.ts, ptr %i.ac, align 8, !tbaa !462
  %.pre2.i.i = load i32, ptr %i.ab, align 4, !tbaa !458
  br label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit: ; preds = %bb.ak, %bb.al, %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i
  %i.um = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i ], [ %i.to, %bb.al ], [ %i.to, %bb.ak ]
  %i.un = load ptr, ptr %i.ad, align 8, !tbaa !463 ; 2 uses
  %i.uo = sext i32 %i.um to i64
  %i.up = getelementptr inbounds [48 x i8], ptr %i.un, i64 %i.uo ; 8 uses
  store i32 %i.ai, ptr %i.up, align 8, !tbaa !199
  %.sroa.12207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  store ptr %.sroa.12207.2, ptr %.sroa.12207.0..sroa_idx, align 8, !tbaa !178
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  store i32 %.sroa.17.3, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !199
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 20
  store i32 %i.ak, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !199
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  store ptr %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !178
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 32
  store i32 %.sroa.29.0, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !199
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 36
  store i32 %.sroa.31.2, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !465
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.up, i64 40
  store i32 %.sroa.37.0, ptr %.sroa.37.0..sroa_idx, align 8, !tbaa !465
  %i.uq = load i32, ptr %i.ab, align 4, !tbaa !458 ; 2 uses
  %i.ur = add nsw i32 %i.uq, 1
  store i32 %i.ur, ptr %i.ab, align 4, !tbaa !458
  %i.us = sext i32 %i.uq to i64
  %i.ut = getelementptr inbounds [48 x i8], ptr %i.un, i64 %i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 36
  store i32 %.sroa.31.2, ptr %i.uu, align 4, !tbaa !469
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit, %.loopexit
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %i.uv = load i32, ptr %i.e, align 8, !tbaa !337
  %i.uw = sext i32 %i.uv to i64
  %i.ux = icmp slt i64 %indvars.iv.next261, %i.uw
  br i1 %i.ux, label %bb.b, label %._crit_edge, !llvm.loop !471
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN24btCollisionWorldImporter31createStridingMeshInterfaceDataEP27btStridingMeshInterfaceData(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1336) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !472
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !337  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.e, ptr %i.f, align 8, !tbaa !337
  %i.g = sext i32 %i.e to i64                     ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 56) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #28 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !338
  %i.m = icmp sgt i32 %i.e, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !93   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !94
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

bb.b:                                             ; preds = %._crit_edge
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.s = shl nsw i32 %i.o, 1
  %i.t = select i1 %.not.i.i, i32 1, i32 %i.s     ; 4 uses
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %bb.c, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.w, i32 noundef 16)
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !93
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.y = phi i32 [ %.pre.i, %bb.d ], [ %i.o, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.x, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !92 ; 9 uses
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %.0.i.i.i75 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  %i.ad = sub i64 %i.ac, %.0.i.i.i75
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x ptr>, ptr %i.af, align 8, !tbaa !335
  %wide.load76 = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !335
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x ptr> %wide.load, ptr %i.ae, align 8, !tbaa !335
  store <2 x ptr> %wide.load76, ptr %i.ah, align 8, !tbaa !335
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.prol
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !335
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !335
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !474

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !335
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !335
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !335
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !335
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.1
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !335
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !335
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.2
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !335
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !335
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !475

_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !91, !range !135, !noundef !144
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.e, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  %.pre2.pre.pre.i = load i32, ptr %i.n, align 4, !tbaa !93
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.y, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.y, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.bd, align 8, !tbaa !91
  store ptr %.0.i.i.i, ptr %i.aa, align 8, !tbaa !92
  store i32 %i.t, ptr %i.p, align 8, !tbaa !94
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit: ; preds = %._crit_edge, %bb.b, %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i
  %i.be = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i ], [ %i.o, %bb.b ], [ %i.o, %._crit_edge ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !92
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  store ptr %i.a, ptr %i.bi, align 8, !tbaa !335
  %i.bj = add nsw i32 %i.be, 1
  store i32 %i.bj, ptr %i.n, align 4, !tbaa !93
  ret ptr %i.a
end_hunk_2
