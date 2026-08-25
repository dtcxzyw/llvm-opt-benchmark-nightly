Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btQuantizedBvh?download=true
inline.NumInlined: 552
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN14btQuantizedBvh20updateSubtreeHeadersEii:bb.a
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
  %.sroa.0.0.copyload.i = load float, ptr %2, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.13.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.13.0.copyload.i14 = load float, ptr %.sroa.13.0..sroa_idx.i13, align 4
  %i.j = load <3 x float>, ptr %i.f, align 8, !tbaa !40 ; 2 uses
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.l = load <3 x float>, ptr %i.g, align 8, !tbaa !40 ; 2 uses
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.n = load <3 x float>, ptr %i.h, align 8, !tbaa !40 ; 2 uses
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.p = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4 ; 2 uses
  %i.q = shufflevector <3 x float> %i.j, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.r = fcmp olt <2 x float> %i.p, %i.q
  %i.s = select <2 x i1> %i.r, <2 x float> %i.q, <2 x float> %i.p ; 2 uses
  %i.t = shufflevector <3 x float> %i.l, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.u = fcmp olt <2 x float> %i.t, %i.s
  %i.v = select <2 x i1> %i.u, <2 x float> %i.t, <2 x float> %i.s
  %i.w = fsub <2 x float> %i.v, %i.q
  %i.x = shufflevector <3 x float> %i.n, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.y = fmul <2 x float> %i.w, %i.x
  %i.z = fptoui <2 x float> %i.y to <2 x i16>
  %i.aa = and <2 x i16> %i.z, splat (i16 -2)      ; 3 uses
  %4 = load <4 x float>, ptr %3, align 4
  %i.ab = insertelement <4 x float> poison, float %.sroa.13.0.copyload.i14, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %.sroa.0.0.copyload.i, i64 3
  %i.ad = shufflevector <4 x float> %4, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ae = fcmp olt <4 x float> %i.ad, %i.k
  %i.af = select <4 x i1> %i.ae, <4 x float> %i.k, <4 x float> %i.ad ; 2 uses
  %i.ag = fcmp olt <4 x float> %i.m, %i.af
  %i.ah = select <4 x i1> %i.ag, <4 x float> %i.m, <4 x float> %i.af
  %i.ai = fsub <4 x float> %i.ah, %i.k
  %i.aj = fmul <4 x float> %i.ai, %i.o
  %i.ak = fadd <4 x float> %i.aj, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.al = fptoui <4 x float> %i.ak to <4 x i16>   ; 2 uses
  %i.am = or <4 x i16> %i.al, <i16 1, i16 1, i16 1, i16 poison> ; 3 uses
  %i.an = and <4 x i16> %i.al, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.ao = shufflevector <4 x i16> %i.am, <4 x i16> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 3 uses
  %i.ap = shufflevector <2 x i16> %i.aa, <2 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aq = shufflevector <4 x i16> %i.ao, <4 x i16> %i.ap, <2 x i32> <i32 3, i32 4>
  store <2 x i16> %i.aq, ptr %i.a, align 4, !tbaa !50
  %i.ar = extractelement <2 x i16> %i.aa, i64 1
  store i16 %i.ar, ptr %i.i, align 4, !tbaa !50
  %i.as = shufflevector <4 x i16> %i.am, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i16> %i.as, ptr %i.b, align 4, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.au = extractelement <4 x i16> %i.am, i64 2
  store i16 %i.au, ptr %i.at, align 4, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !34
  switch i32 %i.aw, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit [
    i32 0, label %bb.c
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !48 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.037.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 5 uses
  %.03136.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bc, %bb.h ]
  %.03235.i = phi i32 [ 0, %.lr.ph.i ], [ %.133.i, %bb.h ] ; 2 uses
  %i.bc = add nuw nsw i32 %.03136.i, 1            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.be = load <2 x i16>, ptr %i.bd, align 2, !tbaa !50
  %i.bf = icmp ule <2 x i16> %i.aa, %i.be         ; 2 uses
  %i.bg = load <4 x i16>, ptr %.037.i, align 2, !tbaa !50 ; 2 uses
  %i.bh = icmp uge <4 x i16> %i.ao, %i.bg
  %i.bi = icmp ule <4 x i16> %i.ao, %i.bg
  %i.bj = shufflevector <4 x i1> %i.bh, <4 x i1> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bk = bitcast <4 x i1> %i.bj to i4
  %i.bl = icmp eq i4 %i.bk, -1
  %i.bm = extractelement <2 x i1> %i.bf, i64 1
  %op.rdx = and i1 %i.bl, %i.bm
  %i.bn = extractelement <2 x i1> %i.bf, i64 0
  %op.rdx37 = and i1 %op.rdx, %i.bn               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.037.i, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !54 ; 5 uses
  %i.bq = icmp sgt i32 %i.bp, -1                  ; 2 uses
  %or.cond.i = and i1 %i.bq, %op.rdx37
  br i1 %or.cond.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.br = lshr i32 %i.bp, 21
  %i.bs = and i32 %i.bp, 2097151
  %i.bt = load ptr, ptr %1, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.br, i32 noundef %i.bs), !inline_history !61
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %or.cond3.i = or i1 %op.rdx37, %i.bq
  br i1 %or.cond3.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.bx = add nuw nsw i32 %.03235.i, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.by = sub nsw i32 0, %i.bp
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.037.i, i64 %i.bz
  %i.cb = sub nsw i32 %.03235.i, %i.bp
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.133.i = phi i32 [ %i.bx, %bb.f ], [ %i.cb, %bb.g ] ; 2 uses
  %.1.i = phi ptr [ %i.bw, %bb.f ], [ %i.ca, %bb.g ]
  %i.cc = icmp slt i32 %.133.i, %i.ay
  br i1 %i.cc, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %.031.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.bc, %bb.h ] ; 2 uses
  %i.cd = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.ce = icmp slt i32 %i.cd, %.031.lcssa.i
  br i1 %i.ce, label %bb.i, label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.i:                                             ; preds = %._crit_edge.i
  store i32 %.031.lcssa.i, ptr @maxIterations, align 4, !tbaa !4
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.j:                                             ; preds = %bb.b
  call void @_ZNK14btQuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21btNodeOverlapCallbackPtS2_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

bb.k:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  call void @_ZNK14btQuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18btQuantizedBvhNodeP21btNodeOverlapCallbackPtS5_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull %i.cg, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit

_ZNK14btQuantizedBvh26walkStacklessQuantizedTreeEP21btNodeOverlapCallbackPtS2_ii.exit: ; preds = %bb.i, %._crit_edge.i, %bb.b, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNK14btQuantizedBvh17walkStacklessTreeEP21btNodeOverlapCallbackRK9btVector3S4_.exit

bb.l:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !48 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i22, label %._crit_edge.i21

.lr.ph.i22:                                       ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %.lr.ph.i22
  %.pre29 = phi i32 [ %i.ci, %.lr.ph.i22 ], [ %.pre30, %bb.x ] ; 2 uses
  %i.cq = phi i32 [ %i.ci, %.lr.ph.i22 ], [ %i.em, %bb.x ]
  %.032.i = phi i32 [ 0, %.lr.ph.i22 ], [ %i.cr, %bb.x ]
  %.02631.i = phi i32 [ 0, %.lr.ph.i22 ], [ %.1.i25, %bb.x ] ; 2 uses
  %.02730.i = phi ptr [ %i.cl, %.lr.ph.i22 ], [ %.128.i, %bb.x ] ; 12 uses
  %i.cr = add nuw nsw i32 %.032.i, 1              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.02730.i, i64 16
  %i.ct = load float, ptr %2, align 4, !tbaa !40
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !40
  %i.cv = fcmp ogt float %i.ct, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = load float, ptr %3, align 4, !tbaa !40
  %i.cx = load float, ptr %.02730.i, align 4, !tbaa !40
  %i.cy = fcmp olt float %i.cw, %i.cx
  br i1 %i.cy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cz = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.m ]
  %i.da = load float, ptr %i.cm, align 4, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %.02730.i, i64 24
  %i.dc = load float, ptr %i.db, align 4, !tbaa !40
  %i.dd = fcmp ogt float %i.da, %i.dc
  br i1 %i.dd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = load float, ptr %i.cn, align 4, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %.02730.i, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !40
  %i.dh = fcmp olt float %i.de, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.di = phi i1 [ %i.cz, %bb.r ], [ false, %bb.q ], [ false, %bb.p ] ; 2 uses
  %i.dj = load float, ptr %i.co, align 4, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %.02730.i, i64 20
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !40
  %i.dm = fcmp ogt float %i.dj, %i.dl
  br i1 %i.dm, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = load float, ptr %i.cp, align 4, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %.02730.i, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !40
  %i.dq = fcmp olt float %i.dn, %i.dp
  br i1 %i.dq, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i, label %_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i

_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.thread.i: ; preds = %bb.t, %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %.02730.i, i64 32
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !59 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br label %bb.u

_Z20TestAabbAgainstAabb2RK9btVector3S1_S1_S1_.exit.i: ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %.02730.i, i64 32
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !59 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, -1                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.aw = fcmp oeq float %i.ao, 0.000000e+00
  %i.ax = fdiv float 1.000000e+00, %i.ao
  %i.ay = select i1 %i.aw, float f0x5D5E0B6B, float %i.ax ; 3 uses
  %i.az = fcmp uge <2 x float> %i.av, zeroinitializer ; 2 uses
  %i.ba = fcmp uge float %i.ay, 0.000000e+00      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !27
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %.0102 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.g ]
  %.041101 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.042100 = phi ptr [ %i.bf, %.lr.ph ], [ %.143, %bb.g ] ; 12 uses
  %i.bg = add nuw nsw i32 %.0102, 1               ; 2 uses
  %.sroa.7.0..042100.sroa_idx = getelementptr inbounds nuw i8, ptr %.042100, i64 4
  %.sroa.11.0..042100.sroa_idx = getelementptr inbounds nuw i8, ptr %.042100, i64 8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..042100.sroa_idx, align 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.042100, i64 16
  %.sroa.20.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.042100, i64 20
  %i.bi = load <2 x float>, ptr %.042100, align 4 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..042100.sroa_idx, align 4
  %i.bj = load <2 x float>, ptr %i.bh, align 4    ; 3 uses
  %.sroa.20.16.copyload = load float, ptr %.sroa.20.16..sroa_idx, align 4
  %.sroa.24.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.042100, i64 24
  %.sroa.24.16.copyload = load float, ptr %.sroa.24.16..sroa_idx, align 4 ; 2 uses
  %i.bk = load float, ptr %i.f, align 4, !tbaa !40
  %i.bl = fadd float %i.bk, %.sroa.11.0.copyload  ; 2 uses
  %i.bm = load float, ptr %i.k, align 4, !tbaa !40
  %i.bn = fadd float %i.bm, %.sroa.24.16.copyload ; 2 uses
  %i.bo = extractelement <2 x float> %i.bj, i64 0
  %i.bp = fcmp ogt float %i.ab, %i.bo
  %i.bq = extractelement <2 x float> %i.bi, i64 0
  %i.br = fcmp olt float %i.ad, %i.bq
  %i.bs = fcmp ogt float %i.o, %.sroa.24.16.copyload
  %i.bt = fcmp olt float %i.p, %.sroa.11.0.copyload
  %or.cond143 = select i1 %i.bs, i1 true, i1 %i.bt
  %i.bu = select i1 %or.cond143, i1 true, i1 %i.bp
  %.not = select i1 %i.bu, i1 true, i1 %i.br
  %i.bv = fcmp ogt float %i.ac, %.sroa.20.16.copyload
  %i.bw = fcmp olt float %i.ae, %.sroa.7.0.copyload
  %brmerge = or i1 %.not, %i.bw
  %or.cond144 = select i1 %i.bv, i1 true, i1 %brmerge
  br i1 %or.cond144, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = load <2 x float>, ptr %5, align 4, !tbaa !40 ; 2 uses
  %i.by = load <2 x float>, ptr %4, align 4, !tbaa !40 ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ca = shufflevector <2 x float> %i.bj, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.cb = fadd <2 x float> %i.bz, %i.ca           ; 2 uses
  %i.cc = shufflevector <2 x float> %i.by, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3>
  %i.cd = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.ce = fadd <2 x float> %i.cc, %i.cd           ; 2 uses
  %i.cf = select <2 x i1> %i.az, <2 x float> %i.cb, <2 x float> %i.ce
  %i.cg = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 2 uses
  %i.ch = fsub <2 x float> %i.cf, %i.cg
  %i.ci = fmul <2 x float> %i.av, %i.ch           ; 3 uses
  %i.cj = select <2 x i1> %i.az, <2 x float> %i.ce, <2 x float> %i.cb
  %i.ck = fsub <2 x float> %i.cj, %i.cg
  %i.cl = fmul <2 x float> %i.av, %i.ck           ; 3 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0 ; 2 uses
  %i.cn = extractelement <2 x float> %i.cl, i64 1 ; 2 uses
  %i.co = fcmp ogt float %i.cm, %i.cn
  %i.cp = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.cq = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cr = fcmp ogt float %i.cq, %i.cp
  %or.cond.i = select i1 %i.co, i1 true, i1 %i.cr
  br i1 %or.cond.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cs = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = fcmp olt <2 x float> %i.cl, %i.cs       ; 2 uses
  %i.cu = extractelement <2 x i1> %i.ct, i64 0
  %i.cv = select i1 %i.cu, float %i.cq, float %i.cm ; 3 uses
  %i.cw = extractelement <2 x i1> %i.ct, i64 1
  %.0.i = select i1 %i.cw, float %i.cn, float %i.cp ; 3 uses
  %.sroa.speculated122 = select i1 %i.ba, float %i.bl, float %i.bn
  %i.cx = load float, ptr %.sroa.1393.0..sroa_idx, align 4, !tbaa !40 ; 2 uses
  %i.cy = fsub float %.sroa.speculated122, %i.cx
  %i.cz = fmul float %i.ay, %i.cy                 ; 3 uses
  %.sroa.speculated = select i1 %i.ba, float %i.bn, float %i.bl
  %i.da = fsub float %.sroa.speculated, %i.cx
  %i.db = fmul float %i.ay, %i.da                 ; 3 uses
  %i.dc = fcmp ogt float %i.cv, %i.db
  %i.dd = fcmp ogt float %i.cz, %.0.i
  %or.cond60.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond60.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit:    ; preds = %bb.c
  %i.de = fcmp ogt float %i.cz, %i.cv
  %i.df = select i1 %i.de, float %i.cz, float %i.cv
  %i.dg = fcmp olt float %i.db, %.0.i
  %.1.i = select i1 %i.dg, float %i.db, float %.0.i
  %i.dh = fcmp olt float %i.df, %i.as
  %i.di = fcmp ogt float %.1.i, 0.000000e+00
  %i.dj = select i1 %i.dh, i1 %i.di, i1 false     ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.042100, i64 32 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !59
  %i.dm = icmp eq i32 %i.dl, -1                   ; 2 uses
  %or.cond = and i1 %i.dj, %i.dm
  br i1 %or.cond, label %.thread, label %bb.d

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread: ; preds = %bb.b, %bb.c, %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %.042100, i64 32 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !59
  %i.dp = icmp eq i32 %i.do, -1
  br label %bb.d

.thread:                                          ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.042100, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !62
  %i.ds = getelementptr inbounds nuw i8, ptr %.042100, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !63
  %i.du = load ptr, ptr %1, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dr, i32 noundef %i.dt)
  br label %bb.e

bb.d:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.dx = phi i1 [ %i.dp, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dm, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ]
  %i.dy = phi ptr [ %i.dn, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dk, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ]
  %i.dz = phi i1 [ false, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dj, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ]
  %or.cond3 = or i1 %i.dx, %i.dz
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.ea = getelementptr inbounds nuw i8, ptr %.042100, i64 64
  %i.eb = add nsw i32 %.041101, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ec = load i32, ptr %i.dy, align 4, !tbaa !59 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [64 x i8], ptr %.042100, i64 %i.ed
  %i.ef = add nsw i32 %i.ec, %.041101
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.143 = phi ptr [ %i.ea, %bb.e ], [ %i.ee, %bb.f ]
  %.1 = phi i32 [ %i.eb, %bb.e ], [ %i.ef, %bb.f ] ; 2 uses
  %i.eg = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.eh = icmp slt i32 %.1, %i.eg
  br i1 %i.eh, label %bb.a, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.0.lcssa = phi i32 [ 0, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %i.bg, %bb.g ] ; 2 uses
  %i.ei = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.ej = icmp slt i32 %i.ei, %.0.lcssa
  br i1 %i.ej, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store i32 %.0.lcssa, ptr @maxIterations, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !40 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !40 ; 4 uses
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %i.f = load <2 x float>, ptr %3, align 4, !tbaa !40 ; 5 uses
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 5 uses
  %i.h = fsub <2 x float> %i.f, %i.g              ; 5 uses
  %foldExtExtBinop204 = fmul <2 x float> %i.h, %i.h
  %i.i = extractelement <2 x float> %foldExtExtBinop204, i64 1
  %i.j = extractelement <2 x float> %i.h, i64 0   ; 3 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call noundef float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.k)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.l)
  %i.m = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.h, %i.o              ; 4 uses
  %i.q = fmul float %i.e, %i.m                    ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.h, %i.p
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.s = extractelement <2 x float> %i.p, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.j, float %i.r)
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.e, float %i.t)
  %i.v = fcmp oeq <2 x float> %i.p, zeroinitializer
  %i.w = fdiv <2 x float> splat (float 1.000000e+00), %i.p
  %i.x = select <2 x i1> %i.v, <2 x float> splat (float f0x5D5E0B6B), <2 x float> %i.w ; 3 uses
  %i.y = fcmp oeq float %i.q, 0.000000e+00
  %i.z = fdiv float 1.000000e+00, %i.q
  %i.aa = select i1 %i.y, float f0x5D5E0B6B, float %i.z ; 3 uses
  %i.ab = load float, ptr %4, align 4, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = shufflevector <2 x float> %i.g, <2 x float> %i.f, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.al = insertelement <4 x float> %i.ak, float %i.d, i64 2
  %i.am = shufflevector <2 x float> %i.f, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.an = insertelement <4 x float> %i.am, float %i.b, i64 2
  %i.ao = fcmp olt <4 x float> %i.al, %i.an
  %i.ap = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.aq = insertelement <4 x float> %i.ap, float %i.b, i64 2
  %i.ar = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.as = insertelement <4 x float> %i.ar, float %i.d, i64 2
  %i.at = select <4 x i1> %i.ao, <4 x float> %i.aq, <4 x float> %i.as
  %8 = load <4 x float>, ptr %5, align 4
  %i.au = insertelement <4 x float> poison, float %i.ae, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.ab, i64 3
  %i.aw = shufflevector <4 x float> %8, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ax = fadd <4 x float> %i.at, %i.aw           ; 2 uses
  %i.ay = load <3 x float>, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.az = shufflevector <3 x float> %i.ay, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.ba = load <3 x float>, ptr %i.ah, align 8, !tbaa !40 ; 2 uses
  %i.bb = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bc = load <3 x float>, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.bd = shufflevector <3 x float> %i.bc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.be = fcmp olt <4 x float> %i.ax, %i.az
  %i.bf = select <4 x i1> %i.be, <4 x float> %i.az, <4 x float> %i.ax ; 2 uses
  %i.bg = fcmp olt <4 x float> %i.bb, %i.bf
  %i.bh = select <4 x i1> %i.bg, <4 x float> %i.bb, <4 x float> %i.bf
  %i.bi = fsub <4 x float> %i.bh, %i.az
  %i.bj = fmul <4 x float> %i.bi, %i.bd
  %i.bk = fadd <4 x float> %i.bj, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.bl = fptoui <4 x float> %i.bk to <4 x i16>   ; 2 uses
  %i.bm = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = insertelement <2 x float> %i.bm, float %i.b, i64 1 ; 2 uses
  %i.bo = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bp = insertelement <2 x float> %i.bo, float %i.d, i64 1 ; 2 uses
  %i.bq = fcmp olt <2 x float> %i.bn, %i.bp
  %i.br = select <2 x i1> %i.bq, <2 x float> %i.bn, <2 x float> %i.bp
  %i.bs = load <2 x float>, ptr %i.ac, align 4, !tbaa !40
  %i.bt = fadd <2 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = shufflevector <3 x float> %i.ay, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bv = fcmp olt <2 x float> %i.bt, %i.bu
  %i.bw = select <2 x i1> %i.bv, <2 x float> %i.bu, <2 x float> %i.bt ; 2 uses
  %i.bx = shufflevector <3 x float> %i.ba, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.by = fcmp olt <2 x float> %i.bx, %i.bw
  %i.bz = select <2 x i1> %i.by, <2 x float> %i.bx, <2 x float> %i.bw
  %i.ca = fsub <2 x float> %i.bz, %i.bu
  %i.cb = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cc = fmul <2 x float> %i.ca, %i.cb
  %i.cd = fptoui <2 x float> %i.cc to <2 x i16>
  %i.ce = and <2 x i16> %i.cd, splat (i16 -2)
  %i.cf = or <4 x i16> %i.bl, <i16 1, i16 1, i16 1, i16 poison>
  %i.cg = and <4 x i16> %i.bl, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.ch = shufflevector <4 x i16> %i.cf, <4 x i16> %i.cg, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ci = icmp slt i32 %6, %7
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.cj = fcmp uge float %i.aa, 0.000000e+00      ; 2 uses
  %i.ck = fcmp uge <2 x float> %i.x, zeroinitializer ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !31
  %i.cn = sext i32 %6 to i64
  %i.co = getelementptr inbounds [16 x i8], ptr %i.cm, i64 %i.cn
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %.0159 = phi i32 [ %6, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.048158 = phi i32 [ 0, %.lr.ph ], [ %i.cp, %bb.g ]
  %.049156 = phi ptr [ %i.co, %.lr.ph ], [ %.150, %bb.g ] ; 9 uses
  %i.cp = add nuw nsw i32 %.048158, 1             ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.049156, i64 8
  %i.cr = load <2 x i16>, ptr %i.cq, align 2, !tbaa !50
  %i.cs = icmp ugt <2 x i16> %i.ce, %i.cr         ; 2 uses
  %i.ct = load <4 x i16>, ptr %.049156, align 2, !tbaa !50 ; 2 uses
  %i.cu = icmp ult <4 x i16> %i.ch, %i.ct
  %i.cv = icmp ugt <4 x i16> %i.ch, %i.ct
  %i.cw = shufflevector <4 x i1> %i.cu, <4 x i1> %i.cv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cx = bitcast <4 x i1> %i.cw to i4
  %i.cy = icmp ne i4 %i.cx, 0
  %i.cz = extractelement <2 x i1> %i.cs, i64 1
  %op.rdx = or i1 %i.cy, %i.cz
  %i.da = extractelement <2 x i1> %i.cs, i64 0
  %op.rdx202 = or i1 %op.rdx, %i.da
  %i.db = getelementptr inbounds nuw i8, ptr %.049156, i64 12 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !54
  %i.dd = icmp sgt i32 %i.dc, -1                  ; 2 uses
  br i1 %op.rdx202, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %.049156, i64 6
  %i.df = load <2 x i16>, ptr %.049156, align 4, !tbaa !50
  %i.dg = uitofp <2 x i16> %i.df to <2 x float>
  %i.dh = load <2 x float>, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.di = fdiv <2 x float> %i.dg, %i.dh
  %i.dj = load <2 x float>, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.dk = fadd <2 x float> %i.di, %i.dj
  %i.dl = load <2 x float>, ptr %4, align 4, !tbaa !40
  %i.dm = fadd <2 x float> %i.dl, %i.dk           ; 2 uses
  %i.dn = load <2 x float>, ptr %5, align 4, !tbaa !40
  %i.do = load <2 x i16>, ptr %i.de, align 2, !tbaa !50
  %i.dp = uitofp <2 x i16> %i.do to <2 x float>
  %i.dq = fdiv <2 x float> %i.dp, %i.dh
  %i.dr = fadd <2 x float> %i.dj, %i.dq
  %i.ds = fadd <2 x float> %i.dn, %i.dr           ; 2 uses
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> %i.dm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.du = shufflevector <2 x float> %i.dm, <2 x float> %i.ds, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dv = select <2 x i1> %i.ck, <2 x float> %i.dt, <2 x float> %i.du
  %i.dw = load <2 x float>, ptr %2, align 4, !tbaa !40 ; 2 uses
  %i.dx = fsub <2 x float> %i.dv, %i.dw
  %i.dy = fmul <2 x float> %i.x, %i.dx            ; 3 uses
  %i.dz = select <2 x i1> %i.ck, <2 x float> %i.du, <2 x float> %i.dt
  %i.ea = fsub <2 x float> %i.dz, %i.dw
  %i.eb = fmul <2 x float> %i.x, %i.ea            ; 3 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.ed = extractelement <2 x float> %i.eb, i64 1 ; 2 uses
  %i.ee = fcmp ogt float %i.ec, %i.ed
  %i.ef = extractelement <2 x float> %i.dy, i64 0 ; 2 uses
  %i.eg = extractelement <2 x float> %i.dy, i64 1 ; 2 uses
  %i.eh = fcmp ogt float %i.eg, %i.ef
  %or.cond.i = select i1 %i.ee, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ei = getelementptr inbounds nuw i8, ptr %.049156, i64 4
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !50
  %i.ek = insertelement <2 x i16> poison, i16 %i.ej, i64 0
  %i.el = getelementptr inbounds nuw i8, ptr %.049156, i64 10
  %i.em = load i16, ptr %i.el, align 2, !tbaa !50
  %i.en = insertelement <2 x i16> %i.ek, i16 %i.em, i64 1
  %i.eo = uitofp <2 x i16> %i.en to <2 x float>
  %9 = load <4 x float>, ptr %i.aj, align 8
  %i.ep = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fdiv <2 x float> %i.eo, %i.ep
  %10 = load <4 x float>, ptr %i.ag, align 8
  %i.er = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer
  %i.es = fadd <2 x float> %i.eq, %i.er
  %11 = load <4 x float>, ptr %4, align 4
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.et = load float, ptr %i.ad, align 4, !tbaa !40
  %i.eu = insertelement <2 x float> %12, float %i.et, i64 1
  %i.ev = fadd <2 x float> %i.eu, %i.es           ; 2 uses
  %i.ew = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ex = fcmp olt <2 x float> %i.eb, %i.ew       ; 2 uses
  %i.ey = extractelement <2 x i1> %i.ex, i64 0
  %i.ez = select i1 %i.ey, float %i.eg, float %i.ec ; 3 uses
  %i.fa = extractelement <2 x i1> %i.ex, i64 1
  %.0.i = select i1 %i.fa, float %i.ed, float %i.ef ; 3 uses
  %.sroa.12.0.vec.extract = extractelement <2 x float> %i.ev, i64 0 ; 2 uses
  %.sroa.26.0.vec.extract = extractelement <2 x float> %i.ev, i64 1 ; 2 uses
  %i.fb = select i1 %i.cj, float %.sroa.12.0.vec.extract, float %.sroa.26.0.vec.extract
  %i.fc = load float, ptr %i.c, align 4, !tbaa !40 ; 2 uses
  %i.fd = fsub float %i.fb, %i.fc
  %i.fe = fmul float %i.aa, %i.fd                 ; 3 uses
  %i.ff = select i1 %i.cj, float %.sroa.26.0.vec.extract, float %.sroa.12.0.vec.extract
  %i.fg = fsub float %i.ff, %i.fc
  %i.fh = fmul float %i.aa, %i.fg                 ; 3 uses
  %i.fi = fcmp ogt float %i.ez, %i.fh
  %i.fj = fcmp ogt float %i.fe, %.0.i
  %or.cond60.i = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond60.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fk = fcmp ogt float %i.fe, %i.ez
  %i.fl = select i1 %i.fk, float %i.fe, float %i.ez
  %i.fm = fcmp olt float %i.fh, %.0.i
  %.1.i = select i1 %i.fm, float %i.fh, float %.0.i
  %i.fn = fcmp olt float %i.fl, %i.u
  %i.fo = fcmp ogt float %.1.i, 0.000000e+00
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false     ; 2 uses
  %or.cond = and i1 %i.dd, %i.fp
  br i1 %or.cond, label %.thread142, label %.thread

.thread142:                                       ; preds = %bb.d
  %i.fq = load i32, ptr %i.db, align 4, !tbaa !54 ; 2 uses
  %i.fr = ashr i32 %i.fq, 21
  %i.fs = and i32 %i.fq, 2097151
  %i.ft = load ptr, ptr %1, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  tail call void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.fr, i32 noundef %i.fs)
  br label %bb.e

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.051138 = phi i1 [ %i.fp, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  %or.cond3 = or i1 %i.dd, %.051138
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread142, %.thread
  %i.fw = getelementptr inbounds nuw i8, ptr %.049156, i64 16
  %i.fx = add nsw i32 %.0159, 1
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.fy = load i32, ptr %i.db, align 4, !tbaa !54 ; 2 uses
  %i.fz = sub nsw i32 0, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [16 x i8], ptr %.049156, i64 %i.ga
  %i.gc = sub nsw i32 %.0159, %i.fy
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.150 = phi ptr [ %i.fw, %bb.e ], [ %i.gb, %bb.f ]
  %.1 = phi i32 [ %i.fx, %bb.e ], [ %i.gc, %bb.f ] ; 2 uses
  %i.gd = icmp slt i32 %.1, %7
  br i1 %i.gd, label %bb.a, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %.048.lcssa = phi i32 [ 0, %_Z8btSetMinIfEvRT_RKS0_.exit.i ], [ %i.cp, %bb.g ] ; 2 uses
  %i.ge = load i32, ptr @maxIterations, align 4, !tbaa !4
  %i.gf = icmp slt i32 %i.ge, %.048.lcssa
  br i1 %i.gf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store i32 %.048.lcssa, ptr @maxIterations, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 5 uses
  %5 = alloca %class.btVector3, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48
  call void @_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr noundef nonnull readonly align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i32 noundef 0, i32 noundef %i.e)
  br label %_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr noundef nonnull readonly align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i32 poison, i32 poison)
  br label %_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_.exit

_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48
  tail call void @_ZNK14btQuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 0, i32 noundef %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK14btQuantizedBvh27walkStacklessTreeAgainstRayEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_ii(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 poison, i32 poison)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN14btQuantizedBvh32getAlignmentSerializationPaddingEv() local_unnamed_addr #11 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN14btQuantizedBvh28calculateSerializeBufferSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !25, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load i32, ptr %i.f, align 4
  %.pn.v = select i1 %i.e, i32 4, i32 6
  %.pn = shl i32 %i.g, %.pn.v
  %i.h = shl i32 %i.b, 5
  %i.i = add i32 %i.h, 248
  %.0 = add i32 %i.i, %.pn
  ret i32 %.0
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN14btQuantizedBvh9serializeEPvjb(ptr nofree noundef nonnull align 8 dereferenceable(244) initializes((240, 244)) %0, ptr noundef initializes((0, 65), (76, 84), (88, 97), (108, 116), (120, 129), (140, 148), (152, 161), (172, 180), (184, 193), (200, 204), (212, 220), (224, 233), (240, 244)) %1, i32 %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV14btQuantizedBvh, i64 16), ptr %1, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 275, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 1, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %i.j, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 0, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  store i8 1, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 8 uses
  store ptr null, ptr %i.m, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  store i32 0, ptr %i.n, align 4, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr null, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i32 0, ptr %i.r, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  store i8 1, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  store ptr null, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !32
end_hunk_1
