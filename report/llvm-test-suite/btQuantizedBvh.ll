inline.NumInlined: 552
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN14btQuantizedBvh20updateSubtreeHeadersEii:bb.a
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !37 ; 9 uses
  br i1 %i.bs, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !38
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.k, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit36

bb.k:                                             ; preds = %bb.j
  %.not.i.i22 = icmp eq i32 %i.bu, 0
  %i.by = shl nsw i32 %i.bu, 1
  %i.bz = select i1 %.not.i.i22, i32 1, i32 %i.by ; 4 uses
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit36

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i23 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i23, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = sext i32 %i.bz to i64
  %i.cc = shl nsw i64 %i.cb, 5
  %i.cd = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cc, i32 noundef 16)
  %.pre.i24 = load i32, ptr %i.bt, align 4, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25: ; preds = %bb.m, %bb.l
  %i.ce = phi i32 [ %.pre.i24, %bb.m ], [ %i.bu, %bb.l ] ; 4 uses
  %.0.i.i.i26 = phi ptr [ %i.cd, %bb.m ], [ null, %bb.l ] ; 4 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i.i31, label %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27

.lr.ph.i.i.i31:                                   ; preds = %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %wide.trip.count.i.i.i32 = zext nneg i32 %i.ce to i64 ; 2 uses
  %xtraiter48 = and i64 %wide.trip.count.i.i.i32, 1
  %i.ch = icmp eq i32 %i.ce, 1
  br i1 %i.ch, label %.epil.preheader47, label %.lr.ph.i.i.i31.new

.lr.ph.i.i.i31.new:                               ; preds = %.lr.ph.i.i.i31
  %unroll_iter51 = and i64 %wide.trip.count.i.i.i32, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i31.new
  %indvars.iv.i.i.i33 = phi i64 [ 0, %.lr.ph.i.i.i31.new ], [ %indvars.iv.next.i.i.i34.1, %bb.n ] ; 4 uses
  %niter52 = phi i64 [ 0, %.lr.ph.i.i.i31.new ], [ %niter52.next.1, %bb.n ]
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i26, i64 %indvars.iv.i.i.i33
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !36
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ci, ptr noundef nonnull align 4 dereferenceable(32) %i.ck, i64 32, i1 false), !tbaa.struct !49
  %indvars.iv.next.i.i.i34 = or disjoint i64 %indvars.iv.i.i.i33, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i26, i64 %indvars.iv.next.i.i.i34
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !36
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %indvars.iv.next.i.i.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cl, ptr noundef nonnull align 4 dereferenceable(32) %i.cn, i64 32, i1 false), !tbaa.struct !49
  %indvars.iv.next.i.i.i34.1 = add nuw nsw i64 %indvars.iv.i.i.i33, 2 ; 2 uses
  %niter52.next.1 = add i64 %niter52, 2           ; 2 uses
  %niter52.ncmp.1 = icmp eq i64 %niter52.next.1, %unroll_iter51
  br i1 %niter52.ncmp.1, label %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa, label %bb.n

_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27, label %.epil.preheader47

.epil.preheader47:                                ; preds = %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa, %.lr.ph.i.i.i31
  %indvars.iv.i.i.i33.epil.init = phi i64 [ 0, %.lr.ph.i.i.i31 ], [ %indvars.iv.next.i.i.i34.1, %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i32 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i26, i64 %indvars.iv.i.i.i33.epil.init
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %indvars.iv.i.i.i33.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.co, ptr noundef nonnull align 4 dereferenceable(32) %i.cq, i64 32, i1 false), !tbaa.struct !49
  br label %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27

_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27: ; preds = %.epil.preheader47, %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i25
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !36 ; 2 uses
  %.not.i5.i.i28 = icmp eq ptr %i.cs, null
  br i1 %.not.i5.i.i28, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i29, label %bb.o

bb.o:                                             ; preds = %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !35, !range !44, !noundef !45
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.p, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i29

bb.p:                                             ; preds = %bb.o
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cs)
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i29

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i29: ; preds = %bb.p, %bb.o, %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i27
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.cw, align 8, !tbaa !35
  store ptr %.0.i.i.i26, ptr %i.cr, align 8, !tbaa !36
  store i32 %i.bz, ptr %i.bv, align 8, !tbaa !38
  %.pre4.i30 = load i32, ptr %i.bt, align 4, !tbaa !37
  br label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit36

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit36: ; preds = %bb.j, %bb.k, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i29
  %i.cx = phi i32 [ %.pre4.i30, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i29 ], [ %i.bu, %bb.k ], [ %i.bu, %bb.j ]
  %i.cy = add nsw i32 %i.cx, 1                    ; 2 uses
  store i32 %i.cy, ptr %i.bt, align 4, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.da = sext i32 %i.bu to i64
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !36
  %i.dc = getelementptr inbounds [32 x i8], ptr %i.db, i64 %i.da ; 8 uses
  %i.dd = load i16, ptr %i.j, align 4, !tbaa !50
  store i16 %i.dd, ptr %i.dc, align 4, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !50
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.di = load i16, ptr %i.dh, align 4, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i16 %i.di, ptr %i.dj, align 4, !tbaa !50
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.do = load i16, ptr %i.dn, align 4, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i16 %i.do, ptr %i.dp, align 4, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 10
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 %2, ptr %i.dt, align 4, !tbaa !52
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i32 %i.o, ptr %i.du, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit36
  %i.dv = phi i32 [ %i.cy, %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit36 ], [ %i.bu, %bb.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %i.dv, ptr %i.dw, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN14btQuantizedBvh13swapLeafNodesEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %3 = alloca %struct.btQuantizedBvhNode, align 4 ; 4 uses
  %4 = alloca %struct.btOptimizedBvhNode, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !42
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !42
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.k = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.n = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.n, i64 64, i1 false), !tbaa.struct !57
  %i.o = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.n, ptr noundef nonnull align 4 dereferenceable(64) %i.o, i64 64, i1 false), !tbaa.struct !57
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.q = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [3 x i16], align 4                ; 6 uses
  %i.b = alloca [3 x i16], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !25, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.0.0.copyload.i10 = load float, ptr %3, align 4
  %.sroa.8.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %7 = load <2 x float>, ptr %2, align 4
  %8 = load <3 x float>, ptr %i.f, align 8, !tbaa !40 ; 3 uses
  %9 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 3 uses
  %10 = load <3 x float>, ptr %4, align 8, !tbaa !40 ; 2 uses
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 2 uses
  %12 = load <2 x float>, ptr %i.g, align 8, !tbaa !40
  %13 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %14 = insertelement <4 x float> %13, float %.sroa.13.0.copyload.i, i64 1
  %15 = insertelement <4 x float> %14, float %.sroa.0.0.copyload.i10, i64 3 ; 2 uses
  %16 = fcmp olt <4 x float> %15, %9
  %17 = select <4 x i1> %16, <4 x float> %9, <4 x float> %15 ; 2 uses
  %18 = fcmp olt <4 x float> %11, %17
  %19 = select <4 x i1> %18, <4 x float> %11, <4 x float> %17
  %20 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %22 = fsub <4 x float> %19, %21                 ; 2 uses
  %23 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %24 = shufflevector <4 x float> %9, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %25 = fsub <4 x float> %22, %24
  %26 = fmul <4 x float> %22, %24
  %27 = shufflevector <4 x float> %25, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %28 = insertelement <4 x float> %23, float 1.000000e+00, i64 3
  %29 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i11, align 4 ; 2 uses
  %30 = load <2 x float>, ptr %5, align 4, !tbaa !40 ; 2 uses
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %32 = shufflevector <4 x float> %28, <4 x float> %31, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %33 = fmul <4 x float> %27, %32
  %34 = fadd <4 x float> %27, %32
  %35 = shufflevector <4 x float> %33, <4 x float> %34, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %36 = fptoui <4 x float> %35 to <4 x i16>       ; 2 uses
  %37 = and <4 x i16> %36, <i16 -2, i16 -2, i16 -2, i16 poison> ; 3 uses
  %38 = or <4 x i16> %36, <i16 poison, i16 poison, i16 poison, i16 1>
  %39 = shufflevector <4 x i16> %37, <4 x i16> %38, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  %40 = shufflevector <4 x i16> %37, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i16> %40, ptr %i.a, align 4, !tbaa !50
  %41 = extractelement <4 x i16> %37, i64 1
  store i16 %41, ptr %6, align 4, !tbaa !50
  %42 = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.h = fcmp olt <2 x float> %29, %42
  %i.i = select <2 x i1> %i.h, <2 x float> %42, <2 x float> %29 ; 2 uses
  %43 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.j = fcmp olt <2 x float> %43, %i.i
  %i.k = select <2 x i1> %i.j, <2 x float> %43, <2 x float> %i.i
  %i.l = fsub <2 x float> %i.k, %42
  %i.m = fmul <2 x float> %30, %i.l
  %i.n = fadd <2 x float> %i.m, splat (float 1.000000e+00)
  %i.o = fptoui <2 x float> %i.n to <2 x i16>
  %i.p = or <2 x i16> %i.o, splat (i16 1)         ; 3 uses
  %44 = shufflevector <2 x i16> %i.p, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %45 = shufflevector <4 x i16> %39, <4 x i16> %44, <2 x i32> <i32 3, i32 4>
  store <2 x i16> %45, ptr %i.b, align 4, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %46 = extractelement <2 x i16> %i.p, i64 1
  store i16 %46, ptr %i.q, align 4, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load i32, ptr %i.r, align 8, !tbaa !34
  switch i32 %i.s, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit [
    i32 0, label %bb.c
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.y, %bb.h ]
  %.03235.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 7 uses
  %i.y = add nuw nsw i32 %.03136.i, 1             ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03235.i, i64 6
  %i.aa = load i16, ptr %.03235.i, align 2, !tbaa !50
  %47 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 10
  %i.ab = load i16, ptr %47, align 2, !tbaa !50
  %48 = load <2 x i16>, ptr %i.z, align 2, !tbaa !50
  %49 = shufflevector <2 x i16> %48, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %50 = insertelement <4 x i16> %49, i16 %i.ab, i64 1
  %51 = insertelement <4 x i16> %50, i16 %i.aa, i64 3 ; 2 uses
  %52 = icmp ule <4 x i16> %39, %51
  %53 = icmp uge <4 x i16> %39, %51
  %54 = shufflevector <4 x i1> %52, <4 x i1> %53, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %55 = bitcast <4 x i1> %54 to i4
  %56 = icmp eq i4 %55, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %.03235.i, i64 2
  %57 = load <2 x i16>, ptr %i.ac, align 2, !tbaa !50
  %58 = icmp uge <2 x i16> %i.p, %57              ; 2 uses
  %59 = extractelement <2 x i1> %58, i64 1
  %op.rdx = and i1 %56, %59
  %60 = extractelement <2 x i1> %58, i64 0
  %.not13.not.i.i = and i1 %op.rdx, %60           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03235.i, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54 ; 5 uses
  %i.af = icmp sgt i32 %i.ae, -1                  ; 2 uses
  %or.cond.i = and i1 %i.af, %.not13.not.i.i
  br i1 %or.cond.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.ag = lshr i32 %i.ae, 21
  %i.ah = and i32 %i.ae, 2097151
  %i.ai = load ptr, ptr %1, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ag, i32 noundef %i.ah), !inline_history !61
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond3.i = or i1 %.not13.not.i.i, %i.af
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %.03235.i, i64 16
  %i.am = add nuw nsw i32 %.037.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = sub nsw i32 0, %i.ae
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.03235.i, i64 %i.ao
  %i.aq = sub nsw i32 %.037.i, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.133.i = phi ptr [ %i.al, %bb.f ], [ %i.ap, %bb.g ]
  %.1.i = phi i32 [ %i.am, %bb.f ], [ %i.aq, %bb.g ] ; 2 uses
  %i.ar = icmp slt i32 %.1.i, %i.u
  br i1 %i.ar, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %.031.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.y, %bb.h ] ; 2 uses
  %i.as = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.at = icmp slt i32 %i.as, %.031.lcssa.i
  br i1 %i.at, label %bb.i, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.i:                                             ; preds = %._crit_edge.i
  store i32 %.031.lcssa.i, ptr @maxIterations, align 4, !tbaa !4
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.j:                                             ; preds = %bb.b
  call void @_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.k:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  call void @_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull %i.av, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit: ; preds = %bb.i, %._crit_edge.i, %bb.b, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit

bb.l:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !48 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i22, label %._crit_edge.i21

.lr.ph.i22:                                       ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %.lr.ph.i22
  %.pre29 = phi i32 [ %i.ax, %.lr.ph.i22 ], [ %.pre30, %bb.x ] ; 2 uses
  %i.bf = phi i32 [ %i.ax, %.lr.ph.i22 ], [ %i.db, %bb.x ]
  %.032.i = phi ptr [ %i.ba, %.lr.ph.i22 ], [ %.1.i25, %bb.x ] ; 12 uses
  %.02631.i = phi i32 [ 0, %.lr.ph.i22 ], [ %.127.i, %bb.x ] ; 2 uses
  %.02830.i = phi i32 [ 0, %.lr.ph.i22 ], [ %i.bg, %bb.x ]
  %i.bg = add nuw nsw i32 %.02830.i, 1            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  %i.bi = load float, ptr %2, align 4, !tbaa !40
  %i.bj = load float, ptr %i.bh, align 4, !tbaa !40
  %i.bk = fcmp ogt float %i.bi, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = load float, ptr %3, align 4, !tbaa !40
  %i.bm = load float, ptr %.032.i, align 4, !tbaa !40
  %i.bn = fcmp olt float %i.bl, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bo = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.m ]
  %i.bp = load float, ptr %i.bb, align 4, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %.032.i, i64 24
  %i.br = load float, ptr %i.bq, align 4, !tbaa !40
  %i.bs = fcmp ogt float %i.bp, %i.br
  br i1 %i.bs, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load float, ptr %i.bc, align 4, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !40
  %i.bw = fcmp olt float %i.bt, %i.bv
  br i1 %i.bw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bx = phi i1 [ %i.bo, %bb.r ], [ false, %bb.q ], [ false, %bb.p ] ; 2 uses
  %i.by = load float, ptr %i.bd, align 4, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %.032.i, i64 20
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !40
  %i.cb = fcmp ogt float %i.by, %i.ca
  br i1 %i.cb, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load float, ptr %i.be, align 4, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %.032.i, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !40
  %i.cf = fcmp olt float %i.cc, %i.ce
  br i1 %i.cf, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i

_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i: ; preds = %bb.t, %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.032.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !59 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, -1
  br label %bb.u

_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i: ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %.032.i, i64 32
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, -1                   ; 2 uses
  %or.cond.i23 = and i1 %i.bx, %i.cl
  br i1 %or.cond.i23, label %.thread.i26, label %bb.u

.thread.i26:                                      ; preds = %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.032.i, i64 36
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !62
  %i.co = getelementptr inbounds nuw i8, ptr %.032.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !63
  %i.cq = load ptr, ptr %1, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cn, i32 noundef %i.cp), !inline_history !64
  %.pre.pre = load i32, ptr %i.aw, align 4, !tbaa !48
  br label %bb.v

bb.u:                                             ; preds = %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i
  %i.ct = phi i32 [ %i.ch, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i ], [ %i.ck, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i ] ; 2 uses
  %i.cu = phi i1 [ %i.ci, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i ], [ %i.cl, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i ]
  %i.cv = phi i1 [ false, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i ], [ %i.bx, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i ]
  %or.cond3.i24 = or i1 %i.cu, %i.cv
  br i1 %or.cond3.i24, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.thread.i26
  %.pre = phi i32 [ %.pre29, %bb.u ], [ %.pre.pre, %.thread.i26 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.032.i, i64 64
  %i.cx = add nsw i32 %.02631.i, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cy = sext i32 %i.ct to i64
  %i.cz = getelementptr inbounds [64 x i8], ptr %.032.i, i64 %i.cy
  %i.da = add nsw i32 %i.ct, %.02631.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre30 = phi i32 [ %.pre, %bb.v ], [ %.pre29, %bb.w ]
  %i.db = phi i32 [ %.pre, %bb.v ], [ %i.bf, %bb.w ] ; 2 uses
  %.127.i = phi i32 [ %i.cx, %bb.v ], [ %i.da, %bb.w ] ; 2 uses
  %.1.i25 = phi ptr [ %i.cw, %bb.v ], [ %i.cz, %bb.w ]
  %i.dc = icmp slt i32 %.127.i, %i.db
  br i1 %i.dc, label %bb.m, label %._crit_edge.i21

._crit_edge.i21:                                  ; preds = %bb.x, %bb.l
  %.028.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.bg, %bb.x ] ; 2 uses
  %i.dd = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.de = icmp slt i32 %i.dd, %.028.lcssa.i
  br i1 %i.de, label %bb.y, label %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit

bb.y:                                             ; preds = %._crit_edge.i21
  store i32 %.028.lcssa.i, ptr @maxIterations, align 4, !tbaa !4
  br label %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit

_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit: ; preds = %bb.y, %._crit_edge.i21, %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 align 2 {
end_hunk_0
