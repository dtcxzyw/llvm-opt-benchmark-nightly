Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyConcaveCollisionAlgorithm?download=true
inline.NumInlined: 428
inline.NumDeleted: 163
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii:bb.a
  resume { ptr, i32 } %i.oj
}

declare void @_ZN17btConvexHullShapeC1EPKfii(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E6insertERKS2_RKS1_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !174    ; 3 uses
  %i.b = shl i32 %i.a, 15
  %i.c = xor i32 %i.b, -1
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = lshr i32 %i.d, 10
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, 9                          ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = xor i32 %i.h, %i.g                       ; 2 uses
  %i.j = shl i32 %i.i, 11
  %i.k = xor i32 %i.j, -1
  %i.l = add i32 %i.i, %i.k                       ; 2 uses
  %i.m = lshr i32 %i.l, 16
  %i.n = xor i32 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49   ; 8 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = and i32 %i.n, %i.q                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44
  %.not.i = icmp ult i32 %i.r, %i.t
  br i1 %.not.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %.012.i = load i32, ptr %i.x, align 4, !tbaa !175 ; 2 uses
  %.not1113.i = icmp eq i32 %.012.i, -1
  br i1 %.not1113.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.014.i = phi i32 [ %.012.i, %.lr.ph.i ], [ %.0.i, %bb.d ]
  %i.ac = sext i32 %.014.i to i64                 ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !174
  %i.af = icmp eq i32 %i.a, %i.ae
  br i1 %i.af, label %_ZNK9btHashMapI9btHashKeyI10btTriIndexES1_E9findIndexERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  %.0.i = load i32, ptr %i.ag, align 4, !tbaa !175 ; 2 uses
  %.not11.i = icmp eq i32 %.0.i, -1
  br i1 %.not11.i, label %.loopexit, label %bb.c, !llvm.loop !3

_ZNK9btHashMapI9btHashKeyI10btTriIndexES1_E9findIndexERKS2_.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !213
  br label %bb.q

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !48 ; 4 uses
  %i.am = icmp eq i32 %i.al, %i.p
  br i1 %i.am, label %bb.e, label %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit

bb.e:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.p, 0
  %i.an = shl nsw i32 %i.p, 1
  %i.ao = select i1 %.not.i.i, i32 1, i32 %i.an   ; 4 uses
  %i.ap = icmp slt i32 %i.p, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI10btTriIndexE8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = sext i32 %i.ao to i64
  %i.ar = shl nsw i64 %i.aq, 4
  %i.as = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ar, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ak, align 4, !tbaa !48
  br label %_ZN20btAlignedObjectArrayI10btTriIndexE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI10btTriIndexE8allocateEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.at = phi i32 [ %.pre.i, %bb.g ], [ %i.p, %bb.f ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.as, %bb.g ], [ null, %bb.f ] ; 4 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI10btTriIndexE8allocateEi.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.at to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.aw = icmp eq i32 %i.at, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !213
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !213
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !208

_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod46 = trunc i32 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !213
  br label %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI10btTriIndexE8allocateEi.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI10btTriIndexE10deallocateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !46, !range !169, !noundef !180
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %_ZN20btAlignedObjectArrayI10btTriIndexE10deallocateEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bh)
  br label %_ZN20btAlignedObjectArrayI10btTriIndexE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI10btTriIndexE10deallocateEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK20btAlignedObjectArrayI10btTriIndexE4copyEiiPS0_.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.bl, align 8, !tbaa !46
  store ptr %.0.i.i.i, ptr %i.bg, align 8, !tbaa !47
  store i32 %i.ao, ptr %i.o, align 8, !tbaa !49
  %.pre2.i = load i32, ptr %i.ak, align 4, !tbaa !48
  br label %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit: ; preds = %.loopexit, %bb.e, %_ZN20btAlignedObjectArrayI10btTriIndexE10deallocateEv.exit.i.i
  %i.bm = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI10btTriIndexE10deallocateEv.exit.i.i ], [ %i.p, %bb.e ], [ %i.al, %.loopexit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !213
  %i.br = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.ak, align 4, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !52 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !53
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.k, label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit
  %.not.i.i16 = icmp eq i32 %i.bu, 0
  %i.by = shl nsw i32 %i.bu, 1
  %i.bz = select i1 %.not.i.i16, i32 1, i32 %i.by ; 4 uses
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i17 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i17, label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE8allocateEi.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = sext i32 %i.bz to i64
  %i.cc = shl nsw i64 %i.cb, 2
  %i.cd = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cc, i32 noundef 16)
  %.pre.i18 = load i32, ptr %i.bt, align 4, !tbaa !52
  br label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE8allocateEi.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ce = phi i32 [ %.pre.i18, %bb.m ], [ %i.bu, %bb.l ] ; 3 uses
  %.0.i.i.i19 = phi ptr [ %i.cd, %bb.m ], [ null, %bb.l ] ; 8 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !51 ; 9 uses
  br i1 %i.cf, label %.lr.ph.i.i.i22, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i22:                                   ; preds = %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE8allocateEi.exit.i.i
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %.0.i.i.i1943 = ptrtoaddr ptr %.0.i.i.i19 to i64
  %wide.trip.count.i.i.i23 = zext nneg i32 %i.ce to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ce, 8
  %i.cj = sub i64 %i.ci, %.0.i.i.i1943
  %diff.check = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i22
  %n.vec = and i64 %wide.trip.count.i.i.i23, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <4 x i32>, ptr %i.cl, align 4, !tbaa !175
  %wide.load44 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !175
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x i32> %wide.load, ptr %i.ck, align 4, !tbaa !175
  store <4 x i32> %wide.load44, ptr %i.cn, align 4, !tbaa !175
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i23
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i22, %middle.block
  %indvars.iv.i.i.i24.ph = phi i64 [ 0, %.lr.ph.i.i.i22 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter47 = and i64 %wide.trip.count.i.i.i23, 3 ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i24.prol = phi i64 [ %indvars.iv.next.i.i.i25.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i24.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.i.i.i24.prol
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i24.prol
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !175
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25.prol = add nuw nsw i64 %indvars.iv.i.i.i24.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter47
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !210

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i24.unr = phi i64 [ %indvars.iv.i.i.i24.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i25.prol, %scalar.ph.prol ]
  %i.cs = sub nsw i64 %indvars.iv.i.i.i24.ph, %wide.trip.count.i.i.i23
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i24 = phi i64 [ %indvars.iv.next.i.i.i25.3, %scalar.ph ], [ %indvars.iv.i.i.i24.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.i.i.i24
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i24
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !175
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25 = add nuw nsw i64 %indvars.iv.i.i.i24, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i25
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i25
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !175
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25.1 = add nuw nsw i64 %indvars.iv.i.i.i24, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i25.1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i25.1
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !175
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25.2 = add nuw nsw i64 %indvars.iv.i.i.i24, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i19, i64 %indvars.iv.next.i.i.i25.2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i.i.i25.2
  %i.df = load i32, ptr %i.de, align 4, !tbaa !175
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !175
  %indvars.iv.next.i.i.i25.3 = add nuw nsw i64 %indvars.iv.i.i.i24, 4 ; 2 uses
  %exitcond.not.i.i.i26.3 = icmp eq i64 %indvars.iv.next.i.i.i25.3, %wide.trip.count.i.i.i23
  br i1 %exitcond.not.i.i.i26.3, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !211

_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE8allocateEi.exit.i.i
  %.not.i5.i.i20 = icmp eq ptr %i.ch, null
  br i1 %.not.i5.i.i20, label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !50, !range !169, !noundef !180
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.n, label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ch)
  br label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i: ; preds = %bb.n, %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE4copyEiiPS2_.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.dj, align 8, !tbaa !50
  store ptr %.0.i.i.i19, ptr %i.cg, align 8, !tbaa !51
  store i32 %i.bz, ptr %i.bv, align 8, !tbaa !53
  %.pre2.i21 = load i32, ptr %i.bt, align 4, !tbaa !52
  br label %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit: ; preds = %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit, %bb.k, %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i
  %i.dk = phi i32 [ %.pre2.i21, %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE10deallocateEv.exit.i.i ], [ %i.bu, %bb.k ], [ %i.bu, %_ZN20btAlignedObjectArrayI10btTriIndexE9push_backERKS0_.exit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !51
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %1, align 4, !tbaa !175
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !175
  %i.dq = load i32, ptr %i.bt, align 4, !tbaa !52
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.bt, align 4, !tbaa !52
  %i.ds = load i32, ptr %i.o, align 8, !tbaa !49
  %i.dt = icmp slt i32 %i.p, %i.ds
  br i1 %i.dt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit
  tail call void @_ZN9btHashMapI9btHashKeyI10btTriIndexES1_E10growTablesERKS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.du = load i32, ptr %1, align 4, !tbaa !174   ; 2 uses
  %i.dv = shl i32 %i.du, 15
  %i.dw = xor i32 %i.dv, -1
  %i.dx = add i32 %i.du, %i.dw                    ; 2 uses
  %i.dy = lshr i32 %i.dx, 10
  %i.dz = xor i32 %i.dy, %i.dx
  %i.ea = mul i32 %i.dz, 9                        ; 2 uses
  %i.eb = lshr i32 %i.ea, 6
  %i.ec = xor i32 %i.eb, %i.ea                    ; 2 uses
  %i.ed = shl i32 %i.ec, 11
  %i.ee = xor i32 %i.ed, -1
  %i.ef = add i32 %i.ec, %i.ee                    ; 2 uses
  %i.eg = lshr i32 %i.ef, 16
  %i.eh = xor i32 %i.eg, %i.ef
  %i.ei = load i32, ptr %i.o, align 8, !tbaa !49
  %i.ej = add nsw i32 %i.ei, -1
  %i.ek = and i32 %i.eh, %i.ej
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit
  %.0 = phi i32 [ %i.ek, %bb.o ], [ %i.r, %_ZN20btAlignedObjectArrayI9btHashKeyI10btTriIndexEE9push_backERKS2_.exit ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !43
  %i.en = sext i32 %.0 to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !175
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !43
  %i.es = sext i32 %i.al to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  store i32 %i.ep, ptr %i.et, align 4, !tbaa !175
  store i32 %i.al, ptr %i.eo, align 4, !tbaa !175
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK9btHashMapI9btHashKeyI10btTriIndexES1_E9findIndexERKS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26btSoftBodyTriangleCallback22setTimeStepAndCountersEfPK24btCollisionObjectWrapperRK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(220) initializes((24, 64), (72, 84)) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %4) local_unnamed_addr #8 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %6 = alloca %class.btVector3, align 16          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %3, ptr %i.a, align 8, !tbaa !41
  %i.b = fadd float %1, 6.000000e-02
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store float %i.b, ptr %i.c, align 8, !tbaa !218
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.d, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(2064) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !219, !nonnull !180, !align !220 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.q = load float, ptr %i.n, align 4, !tbaa !172, !noalias !221 ; 4 uses
  %i.r = load float, ptr %i.o, align 4, !tbaa !172, !noalias !221 ; 3 uses
  %i.s = load float, ptr %i.p, align 4, !tbaa !172, !noalias !221 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.w = fmul float %i.r, 0.000000e+00            ; 2 uses
  %i.x = fadd float %i.q, %i.w
  %i.y = call noundef float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.x)
  %i.z = call float @llvm.fmuladd.f32(float %i.q, float 0.000000e+00, float %i.r)
  %i.aa = call noundef float @llvm.fmuladd.f32(float %i.s, float 0.000000e+00, float %i.z)
  %i.ab = call float @llvm.fmuladd.f32(float %i.q, float 0.000000e+00, float %i.w)
  %i.ac = fadd float %i.s, %i.ab
  %i.ad = load float, ptr %i.c, align 8, !tbaa !218
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = call noundef float @llvm.fabs.f32(float %i.y)
  %i.ah = call noundef float @llvm.fabs.f32(float %i.aa)
  %i.ai = call noundef float @llvm.fabs.f32(float %i.ac)
  %i.aj = load <3 x float>, ptr %6, align 16, !tbaa !172 ; 2 uses
  %i.ak = load <3 x float>, ptr %5, align 16, !tbaa !172 ; 2 uses
  %i.al = fsub <3 x float> %i.aj, %i.ak
  %i.am = fmul <3 x float> %i.al, splat (float 5.000000e-01)
  %i.an = fadd <3 x float> %i.aj, %i.ak
  %i.ao = fmul <3 x float> %i.an, splat (float 5.000000e-01) ; 4 uses
  %i.ap = load <2 x float>, ptr %i.k, align 4, !tbaa !172, !noalias !221 ; 5 uses
  %i.aq = load <2 x float>, ptr %i.l, align 4, !tbaa !172, !noalias !221 ; 4 uses
  %i.ar = load <2 x float>, ptr %i.m, align 4, !tbaa !172, !noalias !221 ; 5 uses
  %i.as = load float, ptr %i.t, align 4, !tbaa !172, !noalias !222
  %i.at = fneg float %i.as                        ; 2 uses
  %i.au = load float, ptr %i.u, align 4, !tbaa !172, !noalias !222
  %i.av = fneg float %i.au                        ; 2 uses
  %i.aw = load float, ptr %i.v, align 4, !tbaa !172, !noalias !222
  %i.ax = fneg float %i.aw                        ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.av, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.aq, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bc, <2 x float> %i.ba)
  %i.be = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = fmul <2 x float> %i.aq, zeroinitializer ; 2 uses
  %i.bi = fadd <2 x float> %i.ap, %i.bh
  %i.bj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> zeroinitializer, <2 x float> %i.bi)
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> zeroinitializer, <2 x float> %i.aq)
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> zeroinitializer, <2 x float> %i.bk)
  %i.bm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> zeroinitializer, <2 x float> %i.bh)
  %i.bn = fadd <2 x float> %i.ar, %i.bm
  %i.bo = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bp = fmul <2 x float> %i.bo, %i.aq
  %i.bq = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.ap, <2 x float> %i.bp)
  %i.bs = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ar, <2 x float> %i.br)
  %i.bu = insertelement <2 x float> %i.bo, float %i.av, i64 1
  %i.bv = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bu, %i.bw
  %i.by = insertelement <2 x float> %i.bq, float %i.at, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bx)
  %i.cc = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cd = insertelement <2 x float> %i.cc, float %i.ax, i64 1
  %i.ce = insertelement <2 x float> poison, float %i.s, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cb) ; 2 uses
  %i.ch = fadd <2 x float> %i.bt, %i.bg           ; 2 uses
  %shift = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cg, %shift
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cj = insertelement <3 x float> poison, float %i.ad, i64 0
  %i.ck = shufflevector <3 x float> %i.cj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cl = fadd <3 x float> %i.am, %i.ck           ; 6 uses
  %i.cm = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bj)
  %i.cn = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bl)
  %i.co = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bn)
  %i.cp = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = fmul <2 x float> %i.cn, %i.cp
  %i.cr = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cm, <2 x float> %i.cq)
  %i.ct = shufflevector <3 x float> %i.cl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.co, <2 x float> %i.cs) ; 2 uses
  %i.cv = extractelement <3 x float> %i.cl, i64 1
  %i.cw = fmul float %i.ah, %i.cv
  %i.cx = extractelement <3 x float> %i.cl, i64 0
  %i.cy = call float @llvm.fmuladd.f32(float %i.cx, float %i.ag, float %i.cw)
  %i.cz = extractelement <3 x float> %i.cl, i64 2
  %i.da = call noundef float @llvm.fmuladd.f32(float %i.cz, float %i.ai, float %i.cy) ; 2 uses
  %i.db = fsub <2 x float> %i.ch, %i.cu
  %i.dc = fsub float %i.ci, %i.da
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dc, i64 0
  store <2 x float> %i.db, ptr %i.ae, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !184
  %i.dd = fadd <2 x float> %i.ch, %i.cu
  %i.de = fadd float %i.ci, %i.da
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  store <2 x float> %i.dd, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %.sroa.4.0..sroa_idx.i22, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSoftBodyConcaveCollisionAlgorithm10clearCacheEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN26btSoftBodyTriangleCallback10clearCacheEv.exit

end_hunk_0
