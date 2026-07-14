inline.NumInlined: 552
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN14btQuantizedBvh20updateSubtreeHeadersEii:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
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
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load float, ptr %i.g, align 8, !tbaa !40   ; 6 uses
  %5 = fcmp olt float %.sroa.13.0.copyload.i, %4
  %.sroa.13.0.i = select i1 %5, float %4, float %.sroa.13.0.copyload.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = load float, ptr %i.i, align 8, !tbaa !40   ; 4 uses
  %7 = fcmp olt float %6, %.sroa.13.0.i
  %.sroa.13.1.i = select i1 %7, float %6, float %.sroa.13.0.i
  %8 = fsub float %.sroa.13.1.i, %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = load float, ptr %10, align 8, !tbaa !40   ; 2 uses
  %12 = fmul float %8, %11
  %13 = fptoui float %12 to i16
  %14 = and i16 %13, -2                           ; 2 uses
  %i.j = load <2 x float>, ptr %2, align 4        ; 2 uses
  %15 = load <2 x float>, ptr %i.f, align 8, !tbaa !40 ; 6 uses
  %i.k = fcmp olt <2 x float> %i.j, %15
  %i.l = select <2 x i1> %i.k, <2 x float> %15, <2 x float> %i.j ; 2 uses
  %16 = load <2 x float>, ptr %i.h, align 8, !tbaa !40 ; 4 uses
  %i.m = fcmp olt <2 x float> %16, %i.l
  %i.n = select <2 x i1> %i.m, <2 x float> %16, <2 x float> %i.l
  %i.o = fsub <2 x float> %i.n, %15
  %17 = load <2 x float>, ptr %9, align 8, !tbaa !40 ; 2 uses
  %i.p = fmul <2 x float> %i.o, %17
  %i.q = fptoui <2 x float> %i.p to <2 x i16>
  %i.r = and <2 x i16> %i.q, splat (i16 -2)       ; 3 uses
  store <2 x i16> %i.r, ptr %i.a, align 4, !tbaa !50
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %14, ptr %18, align 4, !tbaa !50
  %.sroa.13.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.13.0.copyload.i14 = load float, ptr %.sroa.13.0..sroa_idx.i13, align 4 ; 2 uses
  %19 = fcmp olt float %.sroa.13.0.copyload.i14, %4
  %.sroa.13.0.i17 = select i1 %19, float %4, float %.sroa.13.0.copyload.i14 ; 2 uses
  %20 = fcmp olt float %6, %.sroa.13.0.i17
  %.sroa.13.1.i20 = select i1 %20, float %6, float %.sroa.13.0.i17
  %21 = fsub float %.sroa.13.1.i20, %4
  %22 = fmul float %11, %21
  %23 = fadd float %22, 1.000000e+00
  %24 = fptoui float %23 to i16
  %25 = or i16 %24, 1                             ; 2 uses
  %26 = load <2 x float>, ptr %3, align 4         ; 2 uses
  %27 = fcmp olt <2 x float> %26, %15
  %28 = select <2 x i1> %27, <2 x float> %15, <2 x float> %26 ; 2 uses
  %29 = fcmp olt <2 x float> %16, %28
  %30 = select <2 x i1> %29, <2 x float> %16, <2 x float> %28
  %31 = fsub <2 x float> %30, %15
  %32 = fmul <2 x float> %17, %31
  %33 = fadd <2 x float> %32, splat (float 1.000000e+00)
  %34 = fptoui <2 x float> %33 to <2 x i16>
  %35 = or <2 x i16> %34, splat (i16 1)           ; 3 uses
  store <2 x i16> %35, ptr %i.b, align 4, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %25, ptr %i.s, align 4, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load i32, ptr %i.t, align 8, !tbaa !34
  switch i32 %i.u, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit [
    i32 0, label %bb.c
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !48   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %36 = extractelement <2 x i16> %i.r, i64 0
  %37 = extractelement <2 x i16> %i.r, i64 1
  %38 = extractelement <2 x i16> %35, i64 0
  %39 = extractelement <2 x i16> %35, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aa, %bb.h ]
  %.03235.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 9 uses
  %i.aa = add nuw nsw i32 %.03136.i, 1            ; 2 uses
  %40 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 6
  %41 = load i16, ptr %40, align 2, !tbaa !50
  %42 = icmp ule i16 %36, %41
  %43 = load i16, ptr %.03235.i, align 2, !tbaa !50
  %44 = icmp uge i16 %38, %43
  %.not23.not32.i.i = and i1 %42, %44
  %i.ab = getelementptr inbounds nuw i8, ptr %.03235.i, i64 10
  %45 = load i16, ptr %i.ab, align 2, !tbaa !50
  %46 = icmp ule i16 %14, %45
  %.not21.not29.i.i = and i1 %.not23.not32.i.i, %46
  %47 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 4
  %48 = load i16, ptr %47, align 2, !tbaa !50
  %49 = icmp uge i16 %25, %48
  %.not18.not27.i.i = and i1 %.not21.not29.i.i, %49
  %50 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 8
  %51 = load i16, ptr %50, align 2, !tbaa !50
  %52 = icmp ule i16 %37, %51
  %.not16.not25.i.i = and i1 %.not18.not27.i.i, %52
  %53 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 2
  %54 = load i16, ptr %53, align 2, !tbaa !50
  %55 = icmp uge i16 %39, %54
  %.not13.not.i.i = and i1 %.not16.not25.i.i, %55 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03235.i, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !54 ; 5 uses
  %i.ae = icmp sgt i32 %i.ad, -1                  ; 2 uses
  %or.cond.i = and i1 %i.ae, %.not13.not.i.i
  br i1 %or.cond.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.af = lshr i32 %i.ad, 21
  %i.ag = and i32 %i.ad, 2097151
  %i.ah = load ptr, ptr %1, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.af, i32 noundef %i.ag), !inline_history !61
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond3.i = or i1 %.not13.not.i.i, %i.ae
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.03235.i, i64 16
  %i.al = add nuw nsw i32 %.037.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.am = sub nsw i32 0, %i.ad
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.03235.i, i64 %i.an
  %i.ap = sub nsw i32 %.037.i, %i.ad
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.133.i = phi ptr [ %i.ak, %bb.f ], [ %i.ao, %bb.g ]
  %.1.i = phi i32 [ %i.al, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  %i.aq = icmp slt i32 %.1.i, %i.w
  br i1 %i.aq, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %.031.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.aa, %bb.h ] ; 2 uses
  %i.ar = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.as = icmp slt i32 %i.ar, %.031.lcssa.i
  br i1 %i.as, label %bb.i, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.i:                                             ; preds = %._crit_edge.i
  store i32 %.031.lcssa.i, ptr @maxIterations, align 4, !tbaa !4
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.j:                                             ; preds = %bb.b
  call void @_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.k:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  call void @_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull %i.au, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit: ; preds = %bb.i, %._crit_edge.i, %bb.b, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !48 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i22, label %._crit_edge.i21

.lr.ph.i22:                                       ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %.lr.ph.i22
  %.pre29 = phi i32 [ %i.aw, %.lr.ph.i22 ], [ %.pre30, %bb.x ] ; 2 uses
  %i.be = phi i32 [ %i.aw, %.lr.ph.i22 ], [ %i.da, %bb.x ]
  %.032.i = phi ptr [ %i.az, %.lr.ph.i22 ], [ %.1.i25, %bb.x ] ; 12 uses
  %.02631.i = phi i32 [ 0, %.lr.ph.i22 ], [ %.127.i, %bb.x ] ; 2 uses
  %.02830.i = phi i32 [ 0, %.lr.ph.i22 ], [ %i.bf, %bb.x ]
  %i.bf = add nuw nsw i32 %.02830.i, 1            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  %i.bh = load float, ptr %2, align 4, !tbaa !40
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !40
  %i.bj = fcmp ogt float %i.bh, %i.bi
  br i1 %i.bj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load float, ptr %3, align 4, !tbaa !40
  %i.bl = load float, ptr %.032.i, align 4, !tbaa !40
  %i.bm = fcmp olt float %i.bk, %i.bl
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bn = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.m ]
  %i.bo = load float, ptr %i.ba, align 4, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %.032.i, i64 24
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !40
  %i.br = fcmp ogt float %i.bo, %i.bq
  br i1 %i.br, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load float, ptr %i.bb, align 4, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !40
  %i.bv = fcmp olt float %i.bs, %i.bu
  br i1 %i.bv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bw = phi i1 [ %i.bn, %bb.r ], [ false, %bb.q ], [ false, %bb.p ] ; 2 uses
  %i.bx = load float, ptr %i.bc, align 4, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %.032.i, i64 20
  %i.bz = load float, ptr %i.by, align 4, !tbaa !40
  %i.ca = fcmp ogt float %i.bx, %i.bz
  br i1 %i.ca, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = load float, ptr %i.bd, align 4, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %.032.i, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !40
  %i.ce = fcmp olt float %i.cb, %i.cd
  br i1 %i.ce, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i

_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i: ; preds = %bb.t, %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.032.i, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br label %bb.u

_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i: ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %.032.i, i64 32
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -1                   ; 2 uses
  %or.cond.i23 = and i1 %i.bw, %i.ck
  br i1 %or.cond.i23, label %.thread.i26, label %bb.u

.thread.i26:                                      ; preds = %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.032.i, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %.032.i, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !63
  %i.cp = load ptr, ptr %1, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cm, i32 noundef %i.co), !inline_history !64
  %.pre.pre = load i32, ptr %i.av, align 4, !tbaa !48
  br label %bb.v

bb.u:                                             ; preds = %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i
  %i.cs = phi i32 [ %i.cg, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i ], [ %i.cj, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i ] ; 2 uses
  %i.ct = phi i1 [ %i.ch, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i ], [ %i.ck, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i ]
  %i.cu = phi i1 [ false, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i ], [ %i.bw, %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i ]
  %or.cond3.i24 = or i1 %i.ct, %i.cu
  br i1 %or.cond3.i24, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.thread.i26
  %.pre = phi i32 [ %.pre29, %bb.u ], [ %.pre.pre, %.thread.i26 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.032.i, i64 64
  %i.cw = add nsw i32 %.02631.i, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cx = sext i32 %i.cs to i64
  %i.cy = getelementptr inbounds [64 x i8], ptr %.032.i, i64 %i.cx
  %i.cz = add nsw i32 %i.cs, %.02631.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre30 = phi i32 [ %.pre, %bb.v ], [ %.pre29, %bb.w ]
  %i.da = phi i32 [ %.pre, %bb.v ], [ %i.be, %bb.w ] ; 2 uses
  %.127.i = phi i32 [ %i.cw, %bb.v ], [ %i.cz, %bb.w ] ; 2 uses
  %.1.i25 = phi ptr [ %i.cv, %bb.v ], [ %i.cy, %bb.w ]
  %i.db = icmp slt i32 %.127.i, %i.da
  br i1 %i.db, label %bb.m, label %._crit_edge.i21

._crit_edge.i21:                                  ; preds = %bb.x, %bb.l
  %.028.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.bf, %bb.x ] ; 2 uses
  %i.dc = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.dd = icmp slt i32 %i.dc, %.028.lcssa.i
  br i1 %i.dd, label %bb.y, label %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit

bb.y:                                             ; preds = %._crit_edge.i21
  store i32 %.028.lcssa.i, ptr @maxIterations, align 4, !tbaa !4
  br label %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit

_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit: ; preds = %bb.y, %._crit_edge.i21, %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp slt i32 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = sext i32 %4 to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.037 = phi i32 [ %4, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %.03136 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.f ]
  %.03235 = phi ptr [ %i.e, %.lr.ph ], [ %.133, %bb.f ] ; 9 uses
  %i.i = add nuw nsw i32 %.03136, 1               ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.03235, i64 6
  %i.j = load i16, ptr %2, align 2, !tbaa !50
  %i.k = load i16, ptr %7, align 2, !tbaa !50
  %8 = icmp ule i16 %i.j, %i.k
  %9 = load i16, ptr %3, align 2, !tbaa !50
  %i.l = load i16, ptr %.03235, align 2, !tbaa !50
  %10 = icmp uge i16 %9, %i.l
  %.not23.not32.i = and i1 %8, %10
  %i.m = load i16, ptr %i.f, align 2, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %.03235, i64 10
  %i.o = load i16, ptr %i.n, align 2, !tbaa !50
  %i.p = icmp ule i16 %i.m, %i.o
  %.not21.not29.i = and i1 %.not23.not32.i, %i.p
  %11 = load i16, ptr %i.g, align 2, !tbaa !50
  %12 = getelementptr inbounds nuw i8, ptr %.03235, i64 4
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = icmp uge i16 %11, %13
  %.not18.not27.i = and i1 %.not21.not29.i, %14
  %15 = load i16, ptr %i.h, align 2, !tbaa !50
  %16 = getelementptr inbounds nuw i8, ptr %.03235, i64 8
  %17 = load i16, ptr %16, align 2, !tbaa !50
  %18 = icmp ule i16 %15, %17
  %.not16.not25.i = and i1 %.not18.not27.i, %18
  %19 = load i16, ptr %6, align 2, !tbaa !50
  %20 = getelementptr inbounds nuw i8, ptr %.03235, i64 2
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = icmp uge i16 %19, %21
  %.not13.not.i = and i1 %.not16.not25.i, %22     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03235, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !54   ; 5 uses
  %i.s = icmp sgt i32 %i.r, -1                    ; 2 uses
  %or.cond = and i1 %i.s, %.not13.not.i
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.t = lshr i32 %i.r, 21
  %i.u = and i32 %i.r, 2097151
  %i.v = load ptr, ptr %1, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.t, i32 noundef %i.u)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %or.cond3 = or i1 %.not13.not.i, %i.s
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.03235, i64 16
  %i.z = add nsw i32 %.037, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = sub nsw i32 0, %i.r
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.03235, i64 %i.ab
  %i.ad = sub nsw i32 %.037, %i.r
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.133 = phi ptr [ %i.y, %bb.d ], [ %i.ac, %bb.e ]
  %.1 = phi i32 [ %i.z, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ae = icmp slt i32 %.1, %5
  br i1 %i.ae, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %bb.f ] ; 2 uses
  %i.af = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.ag = icmp slt i32 %i.af, %.031.lcssa
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  store i32 %.031.lcssa, ptr @maxIterations, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %indvars.iv ; 5 uses
  %i.k = load i16, ptr %2, align 2, !tbaa !50
  %i.l = load i16, ptr %i.e, align 2, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.n = load i16, ptr %i.m, align 2, !tbaa !50
  %i.o = icmp ugt i16 %i.l, %i.n
  %i.p = load i16, ptr %i.f, align 2, !tbaa !50
  %i.q = load i16, ptr %i.g, align 2, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i16, ptr %i.r, align 2, !tbaa !50
  %i.t = icmp ugt i16 %i.q, %i.s
  %i.u = load <2 x i16>, ptr %3, align 2, !tbaa !50
  %i.v = load <4 x i16>, ptr %i.j, align 2, !tbaa !50 ; 2 uses
  %i.w = shufflevector <2 x i16> %i.u, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.x = shufflevector <4 x i16> %i.w, <4 x i16> %i.v, <4 x i32> <i32 0, i32 poison, i32 1, i32 7>
  %i.y = insertelement <4 x i16> %i.x, i16 %i.p, i64 1
  %i.z = shufflevector <4 x i16> %i.v, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.aa = insertelement <4 x i16> %i.z, i16 %i.k, i64 3
  %i.ab = icmp ult <4 x i16> %i.y, %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp ne i4 %i.ac, 0
  %op.rdx.a = or i1 %i.ad, %i.o
  %op.rdx25.a = or i1 %op.rdx.a, %i.t
  br i1 %op.rdx25.a, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !52 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  %i.ai = add nsw i32 %i.ah, %i.af
  %i.aj = icmp sgt i32 %i.ah, 0
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.al = sext i32 %i.af to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi i32 [ %i.af, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %bb.h ]
  %.03235.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 9 uses
  %i.an = add nuw nsw i32 %.03136.i, 1            ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 6
  %i.ao = load i16, ptr %2, align 2, !tbaa !50
  %i.ap = load i16, ptr %5, align 2, !tbaa !50
  %6 = icmp ule i16 %i.ao, %i.ap
  %7 = load i16, ptr %3, align 2, !tbaa !50
  %i.aq = load i16, ptr %.03235.i, align 2, !tbaa !50
  %8 = icmp uge i16 %7, %i.aq
  %.not23.not32.i.i = and i1 %6, %8
  %i.ar = load i16, ptr %i.e, align 2, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %.03235.i, i64 10
  %i.at = load i16, ptr %i.as, align 2, !tbaa !50
  %i.au = icmp ule i16 %i.ar, %i.at
  %.not21.not29.i.i = and i1 %.not23.not32.i.i, %i.au
  %9 = load i16, ptr %i.f, align 2, !tbaa !50
  %10 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 4
  %11 = load i16, ptr %10, align 2, !tbaa !50
  %12 = icmp uge i16 %9, %11
  %.not18.not27.i.i = and i1 %.not21.not29.i.i, %12
  %13 = load i16, ptr %i.g, align 2, !tbaa !50
  %14 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 8
  %15 = load i16, ptr %14, align 2, !tbaa !50
  %16 = icmp ule i16 %13, %15
  %.not16.not25.i.i = and i1 %.not18.not27.i.i, %16
  %17 = load i16, ptr %4, align 2, !tbaa !50
  %18 = getelementptr inbounds nuw i8, ptr %.03235.i, i64 2
  %19 = load i16, ptr %18, align 2, !tbaa !50
  %20 = icmp uge i16 %17, %19
  %.not13.not.i.i = and i1 %.not16.not25.i.i, %20 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.03235.i, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !54 ; 5 uses
  %i.ax = icmp sgt i32 %i.aw, -1                  ; 2 uses
  %or.cond.i = and i1 %i.ax, %.not13.not.i.i
  br i1 %or.cond.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.ay = lshr i32 %i.aw, 21
  %i.az = and i32 %i.aw, 2097151
  %i.ba = load ptr, ptr %1, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ay, i32 noundef %i.az), !inline_history !61
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond3.i = or i1 %.not13.not.i.i, %i.ax
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.03235.i, i64 16
  %i.be = add nsw i32 %.037.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bf = sub nsw i32 0, %i.aw
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.03235.i, i64 %i.bg
  %i.bi = sub nsw i32 %.037.i, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.133.i = phi ptr [ %i.bd, %bb.f ], [ %i.bh, %bb.g ]
  %.1.i = phi i32 [ %i.be, %bb.f ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bj = icmp slt i32 %.1.i, %i.ai
  br i1 %i.bj, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %.031.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.an, %bb.h ] ; 2 uses
  %i.bk = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.bl = icmp slt i32 %i.bk, %.031.lcssa.i
  br i1 %i.bl, label %bb.i, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.i:                                             ; preds = %._crit_edge.i
  store i32 %.031.lcssa.i, ptr @maxIterations, align 4, !tbaa !4
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit: ; preds = %bb.i, %._crit_edge.i, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !37
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(244) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr32 = phi ptr [ %1, %bb.a ], [ %i.an, %bb.d ] ; 7 uses
  %i.d = load i16, ptr %3, align 2, !tbaa !50
  %i.e = load i16, ptr %i.a, align 2, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %.tr32, i64 10
  %i.g = load i16, ptr %i.f, align 2, !tbaa !50
  %i.h = icmp ugt i16 %i.e, %i.g
  %i.i = load i16, ptr %i.b, align 2, !tbaa !50
  %i.j = load i16, ptr %i.c, align 2, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %.tr32, i64 8
  %i.l = load i16, ptr %i.k, align 2, !tbaa !50
  %i.m = icmp ugt i16 %i.j, %i.l
  %i.n = load <2 x i16>, ptr %4, align 2, !tbaa !50
  %i.o = load <4 x i16>, ptr %.tr32, align 2, !tbaa !50 ; 2 uses
  %i.p = shufflevector <2 x i16> %i.n, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.q = shufflevector <4 x i16> %i.p, <4 x i16> %i.o, <4 x i32> <i32 0, i32 poison, i32 1, i32 7>
  %i.r = insertelement <4 x i16> %i.q, i16 %i.i, i64 1
  %i.s = shufflevector <4 x i16> %i.o, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.t = insertelement <4 x i16> %i.s, i16 %i.d, i64 3
  %i.u = icmp ult <4 x i16> %i.r, %i.t
  %i.v = bitcast <4 x i1> %i.u to i4
  %i.w = icmp ne i4 %i.v, 0
  %op.rdx = or i1 %i.w, %i.h
  %op.rdx37 = or i1 %op.rdx, %i.m
  br i1 %op.rdx37, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.x = getelementptr inbounds nuw i8, ptr %.tr32, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54   ; 3 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = lshr i32 %i.y, 21
  %i.ab = and i32 %i.y, 2097151
  %i.ac = load ptr, ptr %2, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.aa, i32 noundef %i.ab)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.tr32, i64 16 ; 2 uses
  tail call void @_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull %i.af, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr32, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr32, i64 32
  %i.aj = sub nsw i32 0, %i.ah
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ak
  %i.am = icmp slt i32 %i.ah, 0
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.ai
  br label %tailrecurse

.loopexit:                                        ; preds = %tailrecurse, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.032 = phi ptr [ %i.e, %.lr.ph ], [ %.1, %bb.m ] ; 12 uses
  %.02631 = phi i32 [ 0, %.lr.ph ], [ %.127, %bb.m ] ; 2 uses
  %.02830 = phi i32 [ 0, %.lr.ph ], [ %i.j, %bb.m ]
  %i.j = add nuw nsw i32 %.02830, 1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.l = load float, ptr %2, align 4, !tbaa !40
  %i.m = load float, ptr %i.k, align 4, !tbaa !40
  %i.n = fcmp ogt float %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load float, ptr %3, align 4, !tbaa !40
  %i.p = load float, ptr %.032, align 4, !tbaa !40
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.r = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.s = load float, ptr %i.f, align 4, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %.032, i64 24
  %i.u = load float, ptr %i.t, align 4, !tbaa !40
  %i.v = fcmp ogt float %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load float, ptr %i.g, align 4, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !40
  %i.z = fcmp olt float %i.w, %i.y
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = phi i1 [ %i.r, %bb.g ], [ false, %bb.f ], [ false, %bb.e ] ; 2 uses
  %i.ab = load float, ptr %i.h, align 4, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %.032, i64 20
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !40
  %i.ae = fcmp ogt float %i.ab, %i.ad
  br i1 %i.ae, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load float, ptr %i.i, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !40
  %i.ai = fcmp olt float %i.af, %i.ah
  br i1 %i.ai, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit

_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread: ; preds = %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.032, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59
  %i.al = icmp eq i32 %i.ak, -1
  br label %bb.j

end_hunk_0
