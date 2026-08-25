Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3QuantizedBvh?download=true
inline.NumInlined: 607
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN14b3QuantizedBvh21mergeInternalNodeAabbEiRK9b3Vector3S2_:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 28 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !60
  %i.da = load float, ptr %i.cy, align 4, !tbaa !60 ; 2 uses
  %i.db = fcmp olt float %i.cz, %i.da
  br i1 %i.db, label %bb.v, label %_ZN9b3Vector36setMaxERKS_.exit

bb.v:                                             ; preds = %_Z8b3SetMaxIfEvRT_RKS0_.exit6.i
  store float %i.da, ptr %i.cx, align 4, !tbaa !60
  br label %_ZN9b3Vector36setMaxERKS_.exit

_ZN9b3Vector36setMaxERKS_.exit:                   ; preds = %bb.l, %bb.m, %bb.v, %_Z8b3SetMaxIfEvRT_RKS0_.exit6.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14b3QuantizedBvh20updateSubtreeHeadersEii(ptr noundef nonnull align 16 dereferenceable(252) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %class.b3BvhSubtreeInfo, align 16   ; 3 uses
  %4 = alloca %class.b3BvhSubtreeInfo, align 16   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54   ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  %i.h = sub nsw i32 0, %i.f
  %spec.select = select i1 %i.g, i32 1, i32 %i.h  ; 2 uses
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54   ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  %i.n = sub nsw i32 0, %i.l
  %i.o = select i1 %i.m, i32 1, i32 %i.n          ; 2 uses
  %i.p = icmp samesign ult i32 %spec.select, 129
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.r = call noundef nonnull align 16 dereferenceable(32) ptr @_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %3) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.s = load i16, ptr %i.d, align 16, !tbaa !50
  store i16 %i.s, ptr %i.r, align 16, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %i.u, ptr %i.v, align 2, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.x = load i16, ptr %i.w, align 4, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i16 %i.x, ptr %i.y, align 4, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i16 %i.ad, ptr %i.ae, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %1, ptr %i.ai, align 4, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 %spec.select, ptr %i.aj, align 16, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = icmp samesign ult i32 %i.o, 129
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.am = call noundef nonnull align 16 dereferenceable(32) ptr @_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.al, ptr noundef nonnull align 16 dereferenceable(32) %4) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.an = load i16, ptr %i.j, align 16, !tbaa !50
  store i16 %i.an, ptr %i.am, align 16, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 %i.as, ptr %i.at, align 4, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i16 %i.ay, ptr %i.az, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %2, ptr %i.bd, align 4, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 %i.o, ptr %i.be, align 16, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN14b3QuantizedBvh13swapLeafNodesEii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.sroa.0 = alloca %struct.b3QuantizedBvhNodeData, align 16 ; 4 uses
  %3 = alloca %struct.b3OptimizedBvhNode, align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !32  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.j = load ptr, ptr %i.f, align 16, !tbaa !32
  %i.k = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !28  ; 2 uses
  %i.n = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.d ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.n, i64 64, i1 false), !tbaa.struct !57
  %i.o = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(64) %i.o, i64 64, i1 false), !tbaa.struct !57
  %i.p = load ptr, ptr %i.l, align 16, !tbaa !28
  %i.q = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.q, ptr noundef nonnull align 16 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK14b3QuantizedBvh26reportAabbOverlappingNodexEP21b3NodeOverlapCallbackRK9b3Vector3S4_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [3 x i16], align 4                ; 6 uses
  %i.b = alloca [3 x i16], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !26, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %.sroa.0.0.copyload.i = load float, ptr %2, align 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.13.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.13.0.copyload.i14 = load float, ptr %.sroa.13.0..sroa_idx.i13, align 8
  %i.j = load <3 x float>, ptr %i.f, align 16, !tbaa !60 ; 2 uses
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.l = load <3 x float>, ptr %i.g, align 16, !tbaa !60 ; 2 uses
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.n = load <3 x float>, ptr %i.h, align 16, !tbaa !41 ; 2 uses
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
  %4 = load <2 x float>, ptr %3, align 16
  %i.ab = insertelement <4 x float> poison, float %.sroa.13.0.copyload.i14, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %.sroa.0.0.copyload.i, i64 3
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ad = shufflevector <4 x float> %5, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
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
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = load i32, ptr %i.av, align 16, !tbaa !35
  switch i32 %i.aw, label %_ZNK14b3QuantizedBvh26walkStacklessQuantizedTreeEP21b3NodeOverlapCallbackPtS2_ii.exit [
    i32 0, label %bb.c
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !49 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !32
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
  %i.bt = load ptr, ptr %1, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.br, i32 noundef %i.bs), !inline_history !70
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
  br i1 %i.cc, label %bb.d, label %._crit_edge.i, !llvm.loop !71

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %.031.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.bc, %bb.h ] ; 2 uses
  %i.cd = load i32, ptr @_ZL17b3s_maxIterations, align 4, !tbaa !58
  %i.ce = icmp slt i32 %i.cd, %.031.lcssa.i
  br i1 %i.ce, label %bb.i, label %_ZNK14b3QuantizedBvh26walkStacklessQuantizedTreeEP21b3NodeOverlapCallbackPtS2_ii.exit

bb.i:                                             ; preds = %._crit_edge.i
  store i32 %.031.lcssa.i, ptr @_ZL17b3s_maxIterations, align 4, !tbaa !58
  br label %_ZNK14b3QuantizedBvh26walkStacklessQuantizedTreeEP21b3NodeOverlapCallbackPtS2_ii.exit

bb.j:                                             ; preds = %bb.b
  call void @_ZNK14b3QuantizedBvh39walkStacklessQuantizedTreeCacheFriendlyEP21b3NodeOverlapCallbackPtS2_(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14b3QuantizedBvh26walkStacklessQuantizedTreeEP21b3NodeOverlapCallbackPtS2_ii.exit

bb.k:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !32
  call void @_ZNK14b3QuantizedBvh42walkRecursiveQuantizedTreeAgainstQueryAabbEPK18b3QuantizedBvhNodeP21b3NodeOverlapCallbackPtS5_(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef nonnull %i.cg, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %_ZNK14b3QuantizedBvh26walkStacklessQuantizedTreeEP21b3NodeOverlapCallbackPtS2_ii.exit

_ZNK14b3QuantizedBvh26walkStacklessQuantizedTreeEP21b3NodeOverlapCallbackPtS2_ii.exit: ; preds = %bb.i, %._crit_edge.i, %bb.b, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNK14b3QuantizedBvh17walkStacklessTreeEP21b3NodeOverlapCallbackRK9b3Vector3S4_.exit

bb.l:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !49 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i22, label %._crit_edge.i21

.lr.ph.i22:                                       ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cl = load ptr, ptr %i.ck, align 16, !tbaa !28
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
  %i.ct = load float, ptr %2, align 16, !tbaa !60
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !60
  %i.cv = fcmp ogt float %i.ct, %i.cu
  br i1 %i.cv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = load float, ptr %3, align 16, !tbaa !60
  %i.cx = load float, ptr %.02730.i, align 4, !tbaa !60
  %i.cy = fcmp olt float %i.cw, %i.cx
  br i1 %i.cy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cz = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.m ]
  %i.da = load float, ptr %i.cm, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw i8, ptr %.02730.i, i64 24
  %i.dc = load float, ptr %i.db, align 4, !tbaa !60
  %i.dd = fcmp ogt float %i.da, %i.dc
  br i1 %i.dd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = load float, ptr %i.cn, align 8, !tbaa !60
  %i.df = getelementptr inbounds nuw i8, ptr %.02730.i, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !60
  %i.dh = fcmp olt float %i.de, %i.dg
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.di = phi i1 [ %i.cz, %bb.r ], [ false, %bb.q ], [ false, %bb.p ] ; 2 uses
  %i.dj = load float, ptr %i.co, align 4, !tbaa !60
  %i.dk = getelementptr inbounds nuw i8, ptr %.02730.i, i64 20
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !60
  %i.dm = fcmp ogt float %i.dj, %i.dl
  br i1 %i.dm, label %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = load float, ptr %i.cp, align 4, !tbaa !60
  %i.do = getelementptr inbounds nuw i8, ptr %.02730.i, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !60
  %i.dq = fcmp olt float %i.dn, %i.dp
  br i1 %i.dq, label %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread.i, label %_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.i

_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.thread.i: ; preds = %bb.t, %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %.02730.i, i64 32
  %i.ds = load i32, ptr %i.dr, align 16, !tbaa !63 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br label %bb.u

_Z22b3TestAabbAgainstAabb2RK9b3Vector3S1_S1_S1_.exit.i: ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %.02730.i, i64 32
  %i.dv = load i32, ptr %i.du, align 16, !tbaa !63 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, -1                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK14b3QuantizedBvh27walkStacklessTreeAgainstRayEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_ii:_Z8b3SetMinIfEvRT_RKS0_.exit.i
  %i.ax = fdiv float 1.000000e+00, %i.ao
  %i.ay = select i1 %i.aw, float f0x5D5E0B6B, float %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !49
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z8b3SetMinIfEvRT_RKS0_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !28
  %i.be = fcmp uge float %i.ay, 0.000000e+00      ; 2 uses
  %i.bf = fcmp uge <2 x float> %i.av, zeroinitializer ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %.0101 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.g ]
  %.041100 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.04299 = phi ptr [ %i.bd, %.lr.ph ], [ %.143, %bb.g ] ; 12 uses
  %i.bg = add nuw nsw i32 %.0101, 1               ; 2 uses
  %.sroa.7.0..04299.sroa_idx = getelementptr inbounds nuw i8, ptr %.04299, i64 4
  %.sroa.11.0..04299.sroa_idx = getelementptr inbounds nuw i8, ptr %.04299, i64 8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..04299.sroa_idx, align 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04299, i64 16
  %.sroa.20.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.04299, i64 20
  %i.bi = load <2 x float>, ptr %.04299, align 16 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..04299.sroa_idx, align 4
  %i.bj = load <2 x float>, ptr %i.bh, align 16   ; 3 uses
  %.sroa.20.16.copyload = load float, ptr %.sroa.20.16..sroa_idx, align 4
  %.sroa.24.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.04299, i64 24
  %.sroa.24.16.copyload = load float, ptr %.sroa.24.16..sroa_idx, align 8 ; 2 uses
  %i.bk = load float, ptr %i.n, align 8, !tbaa !41
  %i.bl = fsub float %.sroa.11.0.copyload, %i.bk  ; 2 uses
  %i.bm = load float, ptr %i.h, align 8, !tbaa !41
  %i.bn = fsub float %.sroa.24.16.copyload, %i.bm ; 2 uses
  %i.bo = extractelement <2 x float> %i.bj, i64 0
  %i.bp = fcmp ogt float %i.ab, %i.bo
  %i.bq = extractelement <2 x float> %i.bi, i64 0
  %i.br = fcmp olt float %i.ad, %i.bq
  %i.bs = fcmp ogt float %i.j, %.sroa.24.16.copyload
  %i.bt = fcmp olt float %i.p, %.sroa.11.0.copyload
  %or.cond142 = select i1 %i.bs, i1 true, i1 %i.bt
  %i.bu = select i1 %or.cond142, i1 true, i1 %i.bp
  %.not = select i1 %i.bu, i1 true, i1 %i.br
  %i.bv = fcmp ogt float %i.ac, %.sroa.20.16.copyload
  %i.bw = fcmp olt float %i.ae, %.sroa.7.0.copyload
  %brmerge = or i1 %.not, %i.bw
  %or.cond143 = select i1 %i.bv, i1 true, i1 %brmerge
  br i1 %or.cond143, label %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = load <2 x float>, ptr %4, align 16, !tbaa !41 ; 2 uses
  %i.by = load <2 x float>, ptr %5, align 16, !tbaa !41 ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bj, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.ca = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.cb = fsub <2 x float> %i.bz, %i.ca           ; 2 uses
  %i.cc = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3>
  %i.ce = fsub <2 x float> %i.cc, %i.cd           ; 2 uses
  %i.cf = select <2 x i1> %i.bf, <2 x float> %i.cb, <2 x float> %i.ce
  %i.cg = load <2 x float>, ptr %2, align 16, !tbaa !60 ; 2 uses
  %i.ch = fsub <2 x float> %i.cf, %i.cg
  %i.ci = fmul <2 x float> %i.av, %i.ch           ; 3 uses
  %i.cj = select <2 x i1> %i.bf, <2 x float> %i.ce, <2 x float> %i.cb
  %i.ck = fsub <2 x float> %i.cj, %i.cg
  %i.cl = fmul <2 x float> %i.av, %i.ck           ; 3 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0 ; 2 uses
  %i.cn = extractelement <2 x float> %i.cl, i64 1 ; 2 uses
  %i.co = fcmp ogt float %i.cm, %i.cn
  %i.cp = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.cq = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cr = fcmp ogt float %i.cq, %i.cp
  %or.cond.i = select i1 %i.co, i1 true, i1 %i.cr
  br i1 %or.cond.i, label %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cs = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = fcmp olt <2 x float> %i.cl, %i.cs       ; 2 uses
  %i.cu = extractelement <2 x i1> %i.ct, i64 0
  %i.cv = select i1 %i.cu, float %i.cq, float %i.cm ; 3 uses
  %i.cw = extractelement <2 x i1> %i.ct, i64 1
  %.0.i = select i1 %i.cw, float %i.cn, float %i.cp ; 3 uses
  %.sroa.speculated121 = select i1 %i.be, float %i.bl, float %i.bn
  %i.cx = load float, ptr %.sroa.1392.0..sroa_idx, align 8, !tbaa !60 ; 2 uses
  %i.cy = fsub float %.sroa.speculated121, %i.cx
  %i.cz = fmul float %i.ay, %i.cy                 ; 3 uses
  %.sroa.speculated = select i1 %i.be, float %i.bn, float %i.bl
  %i.da = fsub float %.sroa.speculated, %i.cx
  %i.db = fmul float %i.ay, %i.da                 ; 3 uses
  %i.dc = fcmp ogt float %i.cv, %i.db
  %i.dd = fcmp ogt float %i.cz, %.0.i
  %or.cond60.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond60.i, label %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit.thread, label %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit

_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit:    ; preds = %bb.c
  %i.de = fcmp ogt float %i.cz, %i.cv
  %i.df = select i1 %i.de, float %i.cz, float %i.cv
  %i.dg = fcmp olt float %i.db, %.0.i
  %.1.i = select i1 %i.dg, float %i.db, float %.0.i
  %i.dh = fcmp olt float %i.df, %i.as
  %i.di = fcmp ogt float %.1.i, 0.000000e+00
  %i.dj = select i1 %i.dh, i1 %i.di, i1 false     ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.04299, i64 32 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 16, !tbaa !63
  %i.dm = icmp eq i32 %i.dl, -1                   ; 2 uses
  %or.cond = and i1 %i.dj, %i.dm
  br i1 %or.cond, label %.thread, label %bb.d

_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit.thread: ; preds = %bb.b, %bb.c, %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %.04299, i64 32 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 16, !tbaa !63
  %i.dp = icmp eq i32 %i.do, -1
  br label %bb.d

.thread:                                          ; preds = %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.04299, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.ds = getelementptr inbounds nuw i8, ptr %.04299, i64 40
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !73
  %i.du = load ptr, ptr %1, align 8, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dr, i32 noundef %i.dt)
  br label %bb.e

bb.d:                                             ; preds = %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit.thread, %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit
  %i.dx = phi i1 [ %i.dp, %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dm, %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit ]
  %i.dy = phi ptr [ %i.dn, %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dk, %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit ]
  %i.dz = phi i1 [ false, %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit.thread ], [ %i.dj, %_Z10b3RayAabb2RK9b3Vector3S1_PKjPS0_Rfff.exit ]
  %or.cond3 = or i1 %i.dx, %i.dz
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.ea = getelementptr inbounds nuw i8, ptr %.04299, i64 64
  %i.eb = add nsw i32 %.041100, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ec = load i32, ptr %i.dy, align 16, !tbaa !63 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [64 x i8], ptr %.04299, i64 %i.ed
  %i.ef = add nsw i32 %i.ec, %.041100
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.143 = phi ptr [ %i.ea, %bb.e ], [ %i.ee, %bb.f ]
  %.1 = phi i32 [ %i.eb, %bb.e ], [ %i.ef, %bb.f ] ; 2 uses
  %i.eg = load i32, ptr %i.az, align 4, !tbaa !49
  %i.eh = icmp slt i32 %.1, %i.eg
  br i1 %i.eh, label %bb.a, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.g, %_Z8b3SetMinIfEvRT_RKS0_.exit.i
  %.0.lcssa = phi i32 [ 0, %_Z8b3SetMinIfEvRT_RKS0_.exit.i ], [ %i.bg, %bb.g ] ; 2 uses
  %i.ei = load i32, ptr @_ZL17b3s_maxIterations, align 4, !tbaa !58
  %i.ej = icmp slt i32 %i.ei, %.0.lcssa
  br i1 %i.ej, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store i32 %.0.lcssa, ptr @_ZL17b3s_maxIterations, align 4, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK14b3QuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_ii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 align 2 {
_Z8b3SetMinIfEvRT_RKS0_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load float, ptr %i.a, align 8, !tbaa !41 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !41 ; 4 uses
  %i.e = fsub float %i.b, %i.d                    ; 4 uses
  %i.f = load <2 x float>, ptr %3, align 16, !tbaa !41 ; 5 uses
  %i.g = load <2 x float>, ptr %2, align 16, !tbaa !41 ; 5 uses
  %i.h = fsub <2 x float> %i.f, %i.g              ; 5 uses
  %foldExtExtBinop200 = fmul <2 x float> %i.h, %i.h
  %i.i = extractelement <2 x float> %foldExtExtBinop200, i64 1
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
  %i.ab = load float, ptr %4, align 16, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = shufflevector <2 x float> %i.g, <2 x float> %i.f, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.am = insertelement <4 x float> %i.al, float %i.d, i64 2
  %i.an = shufflevector <2 x float> %i.f, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ao = insertelement <4 x float> %i.an, float %i.b, i64 2
  %i.ap = fcmp olt <4 x float> %i.am, %i.ao
  %i.aq = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.ar = insertelement <4 x float> %i.aq, float %i.b, i64 2
  %i.as = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.at = insertelement <4 x float> %i.as, float %i.d, i64 2
  %i.au = select <4 x i1> %i.ap, <4 x float> %i.ar, <4 x float> %i.at
  %8 = load <2 x float>, ptr %5, align 16, !tbaa !41
  %i.av = insertelement <4 x float> poison, float %i.af, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.ab, i64 3
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %9, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ay = fadd <4 x float> %i.au, %i.ax           ; 2 uses
  %i.az = load <3 x float>, ptr %i.ag, align 16, !tbaa !60 ; 2 uses
  %i.ba = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.bb = load <3 x float>, ptr %i.ai, align 16, !tbaa !60 ; 2 uses
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bd = load <3 x float>, ptr %i.aj, align 16, !tbaa !41 ; 2 uses
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bf = fcmp olt <4 x float> %i.ay, %i.ba
  %i.bg = select <4 x i1> %i.bf, <4 x float> %i.ba, <4 x float> %i.ay ; 2 uses
  %i.bh = fcmp olt <4 x float> %i.bc, %i.bg
  %i.bi = select <4 x i1> %i.bh, <4 x float> %i.bc, <4 x float> %i.bg
  %i.bj = fsub <4 x float> %i.bi, %i.ba
  %i.bk = fmul <4 x float> %i.bj, %i.be
  %i.bl = fadd <4 x float> %i.bk, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.bm = fptoui <4 x float> %i.bl to <4 x i16>   ; 2 uses
  %i.bn = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bo = insertelement <2 x float> %i.bn, float %i.b, i64 1 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bq = insertelement <2 x float> %i.bp, float %i.d, i64 1 ; 2 uses
  %i.br = fcmp olt <2 x float> %i.bo, %i.bq
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.bo, <2 x float> %i.bq
  %i.bt = load <2 x float>, ptr %i.ac, align 4, !tbaa !41
  %i.bu = fadd <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bw = fcmp olt <2 x float> %i.bu, %i.bv
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.bv, <2 x float> %i.bu ; 2 uses
  %i.by = shufflevector <3 x float> %i.bb, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bz = fcmp olt <2 x float> %i.by, %i.bx
  %i.ca = select <2 x i1> %i.bz, <2 x float> %i.by, <2 x float> %i.bx
  %i.cb = fsub <2 x float> %i.ca, %i.bv
  %i.cc = shufflevector <3 x float> %i.bd, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = fptoui <2 x float> %i.cd to <2 x i16>
  %i.cf = and <2 x i16> %i.ce, splat (i16 -2)
  %i.cg = or <4 x i16> %i.bm, <i16 1, i16 1, i16 1, i16 poison>
  %i.ch = and <4 x i16> %i.bm, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.ci = shufflevector <4 x i16> %i.cg, <4 x i16> %i.ch, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.cj = icmp slt i32 %6, %7
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z8b3SetMinIfEvRT_RKS0_.exit.i
  %i.ck = fcmp uge float %i.aa, 0.000000e+00      ; 2 uses
  %i.cl = fcmp uge <2 x float> %i.x, zeroinitializer ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cn = load ptr, ptr %i.cm, align 16, !tbaa !32
  %i.co = sext i32 %6 to i64
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.cn, i64 %i.co
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %.0155 = phi i32 [ %6, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.048154 = phi i32 [ 0, %.lr.ph ], [ %i.cq, %bb.g ]
  %.049152 = phi ptr [ %i.cp, %.lr.ph ], [ %.150, %bb.g ] ; 9 uses
  %i.cq = add nuw nsw i32 %.048154, 1             ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.049152, i64 8
  %i.cs = load <2 x i16>, ptr %i.cr, align 2, !tbaa !50
  %i.ct = icmp ugt <2 x i16> %i.cf, %i.cs         ; 2 uses
  %i.cu = load <4 x i16>, ptr %.049152, align 2, !tbaa !50 ; 2 uses
  %i.cv = icmp ult <4 x i16> %i.ci, %i.cu
  %i.cw = icmp ugt <4 x i16> %i.ci, %i.cu
  %i.cx = shufflevector <4 x i1> %i.cv, <4 x i1> %i.cw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cy = bitcast <4 x i1> %i.cx to i4
  %i.cz = icmp ne i4 %i.cy, 0
  %i.da = extractelement <2 x i1> %i.ct, i64 1
  %op.rdx = or i1 %i.cz, %i.da
  %i.db = extractelement <2 x i1> %i.ct, i64 0
  %op.rdx198 = or i1 %op.rdx, %i.db
  %i.dc = getelementptr inbounds nuw i8, ptr %.049152, i64 12 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !54
  %i.de = icmp sgt i32 %i.dd, -1                  ; 2 uses
  br i1 %op.rdx198, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %.049152, i64 6
  %i.dg = load <2 x i16>, ptr %.049152, align 4, !tbaa !50
  %i.dh = uitofp <2 x i16> %i.dg to <2 x float>
  %i.di = load <2 x float>, ptr %i.aj, align 16, !tbaa !60 ; 2 uses
  %i.dj = fdiv <2 x float> %i.dh, %i.di
  %i.dk = load <2 x float>, ptr %i.ag, align 16, !tbaa !41 ; 2 uses
  %i.dl = fadd <2 x float> %i.dj, %i.dk
  %i.dm = load <2 x float>, ptr %5, align 16, !tbaa !41
  %i.dn = fsub <2 x float> %i.dl, %i.dm           ; 2 uses
  %i.do = load <2 x float>, ptr %4, align 16, !tbaa !41
  %i.dp = load <2 x i16>, ptr %i.df, align 2, !tbaa !50
  %i.dq = uitofp <2 x i16> %i.dp to <2 x float>
  %i.dr = fdiv <2 x float> %i.dq, %i.di
  %i.ds = fadd <2 x float> %i.dk, %i.dr
  %i.dt = fsub <2 x float> %i.ds, %i.do           ; 2 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> %i.dn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dv = shufflevector <2 x float> %i.dn, <2 x float> %i.dt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dw = select <2 x i1> %i.cl, <2 x float> %i.du, <2 x float> %i.dv
  %i.dx = load <2 x float>, ptr %2, align 16, !tbaa !60 ; 2 uses
  %i.dy = fsub <2 x float> %i.dw, %i.dx
  %i.dz = fmul <2 x float> %i.x, %i.dy            ; 3 uses
  %i.ea = select <2 x i1> %i.cl, <2 x float> %i.dv, <2 x float> %i.du
  %i.eb = fsub <2 x float> %i.ea, %i.dx
  %i.ec = fmul <2 x float> %i.x, %i.eb            ; 3 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.ee = extractelement <2 x float> %i.ec, i64 1 ; 2 uses
  %i.ef = fcmp ogt float %i.ed, %i.ee
  %i.eg = extractelement <2 x float> %i.dz, i64 0 ; 2 uses
  %i.eh = extractelement <2 x float> %i.dz, i64 1 ; 2 uses
  %i.ei = fcmp ogt float %i.eh, %i.eg
  %or.cond.i = select i1 %i.ef, i1 true, i1 %i.ei
  br i1 %or.cond.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ej = getelementptr inbounds nuw i8, ptr %.049152, i64 4
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !50
  %i.el = insertelement <2 x i16> poison, i16 %i.ek, i64 0
  %i.em = getelementptr inbounds nuw i8, ptr %.049152, i64 10
  %i.en = load i16, ptr %i.em, align 2, !tbaa !50
  %i.eo = insertelement <2 x i16> %i.el, i16 %i.en, i64 1
  %i.ep = uitofp <2 x i16> %i.eo to <2 x float>
  %10 = load float, ptr %i.ak, align 8, !tbaa !60
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %i.eq = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fdiv <2 x float> %i.ep, %i.eq
  %12 = load float, ptr %i.ah, align 8, !tbaa !41
  %13 = insertelement <2 x float> poison, float %12, i64 0
  %i.es = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fadd <2 x float> %i.er, %i.es
  %14 = load float, ptr %i.ae, align 8, !tbaa !41
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %i.eu = load float, ptr %i.ad, align 8, !tbaa !41
  %i.ev = insertelement <2 x float> %15, float %i.eu, i64 1
  %i.ew = fsub <2 x float> %i.et, %i.ev           ; 2 uses
  %i.ex = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ey = fcmp olt <2 x float> %i.ec, %i.ex       ; 2 uses
  %i.ez = extractelement <2 x i1> %i.ey, i64 0
  %i.fa = select i1 %i.ez, float %i.eh, float %i.ed ; 3 uses
  %i.fb = extractelement <2 x i1> %i.ey, i64 1
  %.0.i = select i1 %i.fb, float %i.ee, float %i.eg ; 3 uses
  %.sroa.12.0.vec.extract = extractelement <2 x float> %i.ew, i64 0 ; 2 uses
  %.sroa.26.0.vec.extract = extractelement <2 x float> %i.ew, i64 1 ; 2 uses
  %i.fc = select i1 %i.ck, float %.sroa.12.0.vec.extract, float %.sroa.26.0.vec.extract
  %i.fd = load float, ptr %i.c, align 8, !tbaa !60 ; 2 uses
  %i.fe = fsub float %i.fc, %i.fd
  %i.ff = fmul float %i.aa, %i.fe                 ; 3 uses
  %i.fg = select i1 %i.ck, float %.sroa.26.0.vec.extract, float %.sroa.12.0.vec.extract
  %i.fh = fsub float %i.fg, %i.fd
  %i.fi = fmul float %i.aa, %i.fh                 ; 3 uses
  %i.fj = fcmp ogt float %i.fa, %i.fi
  %i.fk = fcmp ogt float %i.ff, %.0.i
  %or.cond60.i = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond60.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fl = fcmp ogt float %i.ff, %i.fa
  %i.fm = select i1 %i.fl, float %i.ff, float %i.fa
  %i.fn = fcmp olt float %i.fi, %.0.i
  %.1.i = select i1 %i.fn, float %i.fi, float %.0.i
  %i.fo = fcmp olt float %i.fm, %i.u
  %i.fp = fcmp ogt float %.1.i, 0.000000e+00
  %i.fq = select i1 %i.fo, i1 %i.fp, i1 false     ; 2 uses
  %or.cond = and i1 %i.de, %i.fq
  br i1 %or.cond, label %.thread138, label %.thread

.thread138:                                       ; preds = %bb.d
  %i.fr = load i32, ptr %i.dc, align 4, !tbaa !54 ; 2 uses
  %i.fs = ashr i32 %i.fr, 21
  %i.ft = and i32 %i.fr, 2097151
  %i.fu = load ptr, ptr %1, align 8, !tbaa !9
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.fs, i32 noundef %i.ft)
  br label %bb.e

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.051134 = phi i1 [ %i.fq, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  %or.cond3 = or i1 %i.de, %.051134
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread138, %.thread
  %i.fx = getelementptr inbounds nuw i8, ptr %.049152, i64 16
  %i.fy = add nsw i32 %.0155, 1
  br label %bb.g

bb.f:                                             ; preds = %.thread
  %i.fz = load i32, ptr %i.dc, align 4, !tbaa !54 ; 2 uses
  %i.ga = sub nsw i32 0, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [16 x i8], ptr %.049152, i64 %i.gb
  %i.gd = sub nsw i32 %.0155, %i.fz
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.150 = phi ptr [ %i.fx, %bb.e ], [ %i.gc, %bb.f ]
  %.1 = phi i32 [ %i.fy, %bb.e ], [ %i.gd, %bb.f ] ; 2 uses
  %i.ge = icmp slt i32 %.1, %7
  br i1 %i.ge, label %bb.a, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.g, %_Z8b3SetMinIfEvRT_RKS0_.exit.i
  %.048.lcssa = phi i32 [ 0, %_Z8b3SetMinIfEvRT_RKS0_.exit.i ], [ %i.cq, %bb.g ] ; 2 uses
  %i.gf = load i32, ptr @_ZL17b3s_maxIterations, align 4, !tbaa !58
  %i.gg = icmp slt i32 %i.gf, %.048.lcssa
  br i1 %i.gg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  store i32 %.048.lcssa, ptr @_ZL17b3s_maxIterations, align 4, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK14b3QuantizedBvh25reportRayOverlappingNodexEP21b3NodeOverlapCallbackRK9b3Vector3S4_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %class.b3Vector3, align 16          ; 5 uses
  %5 = alloca %class.b3Vector3, align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49
  call void @_ZNK14b3QuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_ii(ptr noundef nonnull readonly align 16 dereferenceable(252) %0, ptr noundef %1, ptr noundef nonnull readonly align 16 dereferenceable(16) %2, ptr noundef nonnull readonly align 16 dereferenceable(16) %3, ptr noundef nonnull readonly align 16 dereferenceable(16) %4, ptr noundef nonnull readonly align 16 dereferenceable(16) %5, i32 noundef 0, i32 noundef %i.e)
  br label %_ZNK14b3QuantizedBvh29reportBoxCastOverlappingNodexEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK14b3QuantizedBvh27walkStacklessTreeAgainstRayEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_ii(ptr noundef nonnull readonly align 16 dereferenceable(252) %0, ptr noundef %1, ptr noundef nonnull readonly align 16 dereferenceable(16) %2, ptr noundef nonnull readonly align 16 dereferenceable(16) %3, ptr noundef nonnull readonly align 16 dereferenceable(16) %4, ptr noundef nonnull readonly align 16 dereferenceable(16) %5, i32 poison, i32 poison)
  br label %_ZNK14b3QuantizedBvh29reportBoxCastOverlappingNodexEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_.exit

_ZNK14b3QuantizedBvh29reportBoxCastOverlappingNodexEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK14b3QuantizedBvh29reportBoxCastOverlappingNodexEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !26, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49
  tail call void @_ZNK14b3QuantizedBvh36walkStacklessQuantizedTreeAgainstRayEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_ii(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, i32 noundef 0, i32 noundef %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK14b3QuantizedBvh27walkStacklessTreeAgainstRayEP21b3NodeOverlapCallbackRK9b3Vector3S4_S4_S4_ii(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, i32 poison, i32 poison)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN14b3QuantizedBvh32getAlignmentSerializationPaddingEv() local_unnamed_addr #11 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK14b3QuantizedBvh28calculateSerializeBufferSizeEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !26, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = load i32, ptr %i.f, align 4
  %.pn.v = select i1 %i.e, i32 4, i32 6
  %.pn = shl i32 %i.g, %.pn.v
  %i.h = shl i32 %i.b, 5
  %i.i = add i32 %i.h, 256
  %.0 = add i32 %i.i, %.pn
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK14b3QuantizedBvh9serializeEPvjb(ptr nofree noundef nonnull align 16 dereferenceable(252) initializes((248, 252)) %0, ptr noundef initializes((0, 8), (16, 73), (84, 92), (96, 105), (116, 124), (128, 137), (148, 156), (160, 169), (180, 188), (192, 201), (208, 212), (220, 228), (232, 241), (248, 252)) %1, i32 %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV14b3QuantizedBvh, i64 16), ptr %1, align 16, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 300, ptr %i.d, align 16, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 1, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr null, ptr %i.g, align 16, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 0, ptr %i.h, align 4, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  store i8 1, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 8 uses
  store ptr null, ptr %i.k, align 16, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 3 uses
  store i32 0, ptr %i.l, align 4, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i8 1, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr null, ptr %i.o, align 16, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 148
  store i32 0, ptr %i.p, align 4, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 0, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  store i8 1, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  store ptr null, ptr %i.s, align 16, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store i32 0, ptr %i.u, align 8, !tbaa !34
end_hunk_1
