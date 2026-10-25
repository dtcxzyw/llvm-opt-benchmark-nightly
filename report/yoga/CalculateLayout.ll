Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1645
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yogaL30isInColumnStretchScrollSubtreeEPKNS0_4NodeE:bb.a

bb.g:                                             ; preds = %bb.f
  %i.q = and i16 %.sroa.0.0.copyload.i, 8
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.s = zext nneg i16 %i.r to i64                ; 2 uses
  %i.t = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.013, i64 300
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.013, i64 328
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101  ; 2 uses
  %i.y = add nsw i64 %i.s, -4                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !105 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.y, %i.af
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.y, i64 noundef %i.af) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i:             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit

_ZNK8facebook4yoga5Style11aspectRatioEv.exit:     ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i
  %.0.in.i.i.i = phi ptr [ %i.v, %bb.i ], [ %i.ag, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i ]
  %.0.i7.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !17
  %i.ah = fcmp ord float %.0.i7.i.i, 0.000000e+00
  br i1 %i.ah, label %.thread, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread19

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread19: ; preds = %bb.f, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit
  %.sroa.017.4.extract.shift24.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.017.4.extract.trunc.i = trunc i64 %.sroa.017.4.extract.shift24.i to i8
  switch i8 %.sroa.017.4.extract.trunc.i, label %.thread [
    i8 3, label %bb.l
    i8 0, label %bb.l
  ]

bb.l:                                             ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread19, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread19
  %i.ai = tail call fastcc noundef zeroext i1 @_ZN8facebook4yogaL23hasAutoHorizontalMarginERKNS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(280) %i.f)
  br i1 %i.ai, label %.thread, label %_ZN8facebook4yogaL19isColumnStretchEdgeEPKNS0_4NodeES3_.exit

_ZN8facebook4yogaL19isColumnStretchEdgeEPKNS0_4NodeES3_.exit: ; preds = %bb.l
  %i.aj = tail call noundef zeroext i8 @_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_(ptr noundef nonnull %.012, ptr noundef nonnull %.013)
  %i.ak = icmp eq i8 %i.aj, 4
  br i1 %i.ak, label %bb.m, label %.thread

bb.m:                                             ; preds = %_ZN8facebook4yogaL19isColumnStretchEdgeEPKNS0_4NodeES3_.exit
  %i.al = load i8, ptr %i.e, align 4
  %i.am = and i8 %i.al, 3
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %.thread, label %bb.b, !llvm.loop !187

.thread:                                          ; preds = %bb.g, %bb.d, %bb.e, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread19, %bb.l, %.critedge, %_ZN8facebook4yogaL19isColumnStretchEdgeEPKNS0_4NodeES3_.exit, %bb.b, %bb.m, %.preheader
  %.2 = phi i1 [ false, %.preheader ], [ false, %bb.d ], [ false, %bb.e ], [ false, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit ], [ false, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread19 ], [ false, %bb.l ], [ false, %.critedge ], [ false, %bb.g ], [ false, %_ZN8facebook4yogaL19isColumnStretchEdgeEPKNS0_4NodeES3_.exit ], [ false, %bb.b ], [ true, %bb.m ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN8facebook4yogaL23canSkipHeightFitContentEPKNS0_4NodeE(ptr noundef %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array.32", align 8    ; 7 uses
  %2 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 14 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.cf, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.b, i8 0, i64 504, i1 false)
  store ptr %0, ptr %1, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51, %bb.b
  %.021 = phi i64 [ 1, %bb.b ], [ %.122.lcssa, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit51 ] ; 2 uses
  %.not = icmp eq i64 %.021, 0                    ; 2 uses
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %.021, -1                        ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 33 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 149
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.j, align 1, !tbaa !12 ; 5 uses
  %i.k = and i16 %.sroa.0.0.copyload.i.i, 7       ; 3 uses
  switch i16 %i.k, label %bb.f [
    i16 0, label %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i
    i16 4, label %.fold.split.i.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i16 %i.k, 5                      ; 3 uses
  %i.m = lshr i16 %.sroa.0.0.copyload.i.i, 4      ; 5 uses
  %i.n = icmp eq i16 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i16 %i.m, 1
  %i.q = and i1 %i.l, %i.p
  br i1 %i.q, label %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp eq i16 %i.m, 2
  %i.s = and i1 %i.l, %i.r
  br i1 %i.s, label %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = and i16 %.sroa.0.0.copyload.i.i, 8
  %.not.i.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = zext nneg i16 %i.m to i64                ; 2 uses
  %i.v = icmp ult i16 %.sroa.0.0.copyload.i.i, 64
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !101  ; 2 uses
  %i.aa = add nsw i64 %i.u, -4                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !104
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.aa, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.aa, i64 noundef %i.ah) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i:             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aa
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, %bb.k
  %.0.in.i.i.i = phi ptr [ %i.x, %bb.k ], [ %i.ai, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i ]
  %.0.i2.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !17
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.aj = and i16 %i.m, 2047
  %i.ak = zext nneg i16 %i.aj to i32              ; 2 uses
  %i.al = sub nsw i32 0, %i.ak
  %.not.i13.i.i.i = icmp slt i16 %.sroa.0.0.copyload.i.i, 0
  %i.am = select i1 %.not.i13.i.i.i, i32 %i.al, i32 %i.ak
  %i.an = sitofp i32 %i.am to float
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i
  %i.ao = phi float [ %.0.i2.i.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i ], [ %i.an, %bb.n ]
  %i.ap = icmp eq i16 %i.k, 1
  %i.aq = call float @llvm.fabs.f32(float %i.ao)  ; 2 uses
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %or.cond.i.i.i.i = fcmp one float %i.aq, +inf
  %.sroa.03.0.insert.ext.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 4294967296, i64 2143289344
  br label %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i

bb.q:                                             ; preds = %bb.o
  %or.cond.i3.i.i.i = fcmp ueq float %i.aq, +inf
  %.sroa.03.0.insert.ext.i4.i.i.i = select i1 %or.cond.i3.i.i.i, i64 2143289344, i64 8589934592
  br label %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i

.fold.split.i.i.i:                                ; preds = %bb.e
  br label %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i

_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i: ; preds = %.fold.split.i.i.i, %bb.q, %bb.p, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.1.in.i.i.i = phi i64 [ %.sroa.03.0.insert.ext.i4.i.i.i, %bb.q ], [ 2143289344, %bb.e ], [ 27913093120, %bb.h ], [ 19323158528, %bb.f ], [ 23618125824, %bb.g ], [ %.sroa.03.0.insert.ext.i.i.i.i, %bb.p ], [ 15028191232, %.fold.split.i.i.i ]
  %i.ar = call i64 @_ZNK8facebook4yoga5Style9flexBasisEv(ptr noundef nonnull align 8 dereferenceable(280) %i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 89
  %.sroa.0.0.copyload.i31.i = load i16, ptr %i.as, align 1, !tbaa !12 ; 5 uses
  %i.at = and i16 %.sroa.0.0.copyload.i31.i, 7    ; 2 uses
  switch i16 %i.at, label %bb.r [
    i16 0, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.thread.i
    i16 4, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.thread.i
  ]

bb.r:                                             ; preds = %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i
  %i.au = and i16 %.sroa.0.0.copyload.i31.i, 8
  %.not.i.i34.i = icmp eq i16 %i.au, 0
  %i.av = lshr i16 %.sroa.0.0.copyload.i31.i, 4   ; 2 uses
  br i1 %.not.i.i34.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = zext nneg i16 %i.av to i64              ; 2 uses
  %i.ax = icmp ult i16 %.sroa.0.0.copyload.i31.i, 64
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !101 ; 2 uses
  %i.bc = add nsw i64 %i.aw, -4                   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !104
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !105 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 2                 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.bc, %i.bj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.bc, i64 noundef %i.bj) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i:           ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i, %bb.t
  %.0.in.i.i.i.i = phi ptr [ %i.az, %bb.t ], [ %i.bk, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i.i ]
  %.0.i11.i.i.i = load float, ptr %.0.in.i.i.i.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.i

bb.w:                                             ; preds = %bb.r
  %i.bl = and i16 %i.av, 2047
  %i.bm = zext nneg i16 %i.bl to i32              ; 2 uses
  %i.bn = sub nsw i32 0, %i.bm
  %.not.i10.i.i.i = icmp slt i16 %.sroa.0.0.copyload.i31.i, 0
  %i.bo = select i1 %.not.i10.i.i.i, i32 %i.bn, i32 %i.bm
  %i.bp = sitofp i32 %i.bo to float
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.i

_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.i: ; preds = %bb.w, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i
  %i.bq = phi float [ %.0.i11.i.i.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i.i ], [ %i.bp, %bb.w ]
  %i.br = icmp ne i16 %i.at, 1
  %i.bs = call float @llvm.fabs.f32(float %i.bq)
  %or.cond.i3.i.i35.i = fcmp one float %i.bs, +inf
  %i.bt = select i1 %i.br, i1 %or.cond.i3.i.i35.i, i1 false
  br i1 %i.bt, label %bb.as, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.thread.i

_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.thread.i: ; preds = %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.i, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 93
  %.sroa.0.0.copyload.i39.i = load i16, ptr %i.bu, align 1, !tbaa !12 ; 5 uses
  %i.bv = and i16 %.sroa.0.0.copyload.i39.i, 7    ; 2 uses
  switch i16 %i.bv, label %bb.x [
    i16 0, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.thread.i
    i16 4, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.thread.i
  ]

bb.x:                                             ; preds = %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.thread.i
  %i.bw = and i16 %.sroa.0.0.copyload.i39.i, 8
  %.not.i.i42.i = icmp eq i16 %i.bw, 0
  %i.bx = lshr i16 %.sroa.0.0.copyload.i39.i, 4   ; 2 uses
  br i1 %.not.i.i42.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = zext nneg i16 %i.bx to i64              ; 2 uses
  %i.bz = icmp ult i16 %.sroa.0.0.copyload.i39.i, 64
  br i1 %i.bz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.by
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i45.i

bb.aa:                                            ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !101 ; 2 uses
  %i.ce = add nsw i64 %i.by, -4                   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !104
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !105 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2                 ; 2 uses
  %.not.i.i.i.i.i43.i = icmp ult i64 %i.ce, %i.cl
  br i1 %.not.i.i.i.i.i43.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i44.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.ce, i64 noundef %i.cl) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i44.i:         ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ce
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i45.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i45.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i44.i, %bb.z
  %.0.in.i.i.i46.i = phi ptr [ %i.cb, %bb.z ], [ %i.cm, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i44.i ]
  %.0.i11.i.i47.i = load float, ptr %.0.in.i.i.i46.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.i

bb.ac:                                            ; preds = %bb.x
  %i.cn = and i16 %i.bx, 2047
  %i.co = zext nneg i16 %i.cn to i32              ; 2 uses
  %i.cp = sub nsw i32 0, %i.co
  %.not.i10.i.i52.i = icmp slt i16 %.sroa.0.0.copyload.i39.i, 0
  %i.cq = select i1 %.not.i10.i.i52.i, i32 %i.cp, i32 %i.co
  %i.cr = sitofp i32 %i.cq to float
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.i

_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.i: ; preds = %bb.ac, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i45.i
  %i.cs = phi float [ %.0.i11.i.i47.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i45.i ], [ %i.cr, %bb.ac ]
  %i.ct = icmp ne i16 %i.bv, 1
  %i.cu = call float @llvm.fabs.f32(float %i.cs)
  %or.cond.i3.i.i48.i = fcmp one float %i.cu, +inf
  %i.cv = select i1 %i.ct, i1 %or.cond.i3.i.i48.i, i1 false
  br i1 %i.cv, label %bb.as, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.thread.i

_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.thread.i: ; preds = %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.i, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.thread.i, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.thread.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 101
  %.sroa.0.0.copyload.i54.i = load i16, ptr %i.cw, align 1, !tbaa !12 ; 5 uses
  %i.cx = and i16 %.sroa.0.0.copyload.i54.i, 7    ; 2 uses
  switch i16 %i.cx, label %bb.ad [
    i16 0, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.thread.i
    i16 4, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.thread.i
  ]

bb.ad:                                            ; preds = %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.thread.i
  %i.cy = and i16 %.sroa.0.0.copyload.i54.i, 8
  %.not.i.i57.i = icmp eq i16 %i.cy, 0
  %i.cz = lshr i16 %.sroa.0.0.copyload.i54.i, 4   ; 2 uses
  br i1 %.not.i.i57.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = zext nneg i16 %i.cz to i64              ; 2 uses
  %i.db = icmp ult i16 %.sroa.0.0.copyload.i54.i, 64
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.da
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i60.i

bb.ag:                                            ; preds = %bb.ae
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !101 ; 2 uses
  %i.dg = add nsw i64 %i.da, -4                   ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !104
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !105 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %.not.i.i.i.i.i58.i = icmp ult i64 %i.dg, %i.dn
  br i1 %.not.i.i.i.i.i58.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i59.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.dg, i64 noundef %i.dn) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i59.i:         ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i60.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i60.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i59.i, %bb.af
  %.0.in.i.i.i61.i = phi ptr [ %i.dd, %bb.af ], [ %i.do, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i59.i ]
  %.0.i11.i.i62.i = load float, ptr %.0.in.i.i.i61.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.i

bb.ai:                                            ; preds = %bb.ad
  %i.dp = and i16 %i.cz, 2047
  %i.dq = zext nneg i16 %i.dp to i32              ; 2 uses
  %i.dr = sub nsw i32 0, %i.dq
  %.not.i10.i.i67.i = icmp slt i16 %.sroa.0.0.copyload.i54.i, 0
  %i.ds = select i1 %.not.i10.i.i67.i, i32 %i.dr, i32 %i.dq
  %i.dt = sitofp i32 %i.ds to float
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.i

_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.i: ; preds = %bb.ai, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i60.i
  %i.du = phi float [ %.0.i11.i.i62.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i60.i ], [ %i.dt, %bb.ai ]
  %i.dv = icmp ne i16 %i.cx, 1
  %i.dw = call float @llvm.fabs.f32(float %i.du)
  %or.cond.i3.i.i63.i = fcmp one float %i.dw, +inf
  %i.dx = select i1 %i.dv, i1 %or.cond.i3.i.i63.i, i1 false
  br i1 %i.dx, label %bb.as, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.thread.i

_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.thread.i: ; preds = %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.i, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.thread.i, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.thread.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 103
  %.sroa.0.0.copyload.i69.i = load i16, ptr %i.dy, align 1, !tbaa !12 ; 5 uses
  %i.dz = and i16 %.sroa.0.0.copyload.i69.i, 7    ; 2 uses
  switch i16 %i.dz, label %bb.aj [
    i16 0, label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit83.i
    i16 4, label %.fold.split.i.i70.i
  ]

bb.aj:                                            ; preds = %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.thread.i
  %i.ea = and i16 %.sroa.0.0.copyload.i69.i, 8
  %.not.i.i72.i = icmp eq i16 %i.ea, 0
  %i.eb = lshr i16 %.sroa.0.0.copyload.i69.i, 4   ; 2 uses
  br i1 %.not.i.i72.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = zext nneg i16 %i.eb to i64              ; 2 uses
  %i.ed = icmp ult i16 %.sroa.0.0.copyload.i69.i, 64
  br i1 %i.ed, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i75.i

bb.am:                                            ; preds = %bb.ak
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !101 ; 2 uses
  %i.ei = add nsw i64 %i.ec, -4                   ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !104
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !105 ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 2                 ; 2 uses
  %.not.i.i.i.i.i73.i = icmp ult i64 %i.ei, %i.ep
  br i1 %.not.i.i.i.i.i73.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i74.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.ei, i64 noundef %i.ep) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i74.i:         ; preds = %bb.am
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ei
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i75.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i75.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i74.i, %bb.al
  %.0.in.i.i.i76.i = phi ptr [ %i.ef, %bb.al ], [ %i.eq, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i74.i ]
  %.0.i11.i.i77.i = load float, ptr %.0.in.i.i.i76.i, align 4, !tbaa !17
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.er = and i16 %i.eb, 2047
  %i.es = zext nneg i16 %i.er to i32              ; 2 uses
  %i.et = sub nsw i32 0, %i.es
  %.not.i10.i.i82.i = icmp slt i16 %.sroa.0.0.copyload.i69.i, 0
  %i.eu = select i1 %.not.i10.i.i82.i, i32 %i.et, i32 %i.es
  %i.ev = sitofp i32 %i.eu to float
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i75.i
  %i.ew = phi float [ %.0.i11.i.i77.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i75.i ], [ %i.ev, %bb.ao ]
  %i.ex = icmp eq i16 %i.dz, 1
  %i.ey = call float @llvm.fabs.f32(float %i.ew)  ; 2 uses
  br i1 %i.ex, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %or.cond.i.i.i80.i = fcmp one float %i.ey, +inf
  %.sroa.03.0.insert.ext.i.i.i81.i = select i1 %or.cond.i.i.i80.i, i64 4294967296, i64 2143289344
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit83.i

bb.ar:                                            ; preds = %bb.ap
  %or.cond.i3.i.i78.i = fcmp ueq float %i.ey, +inf
  %.sroa.03.0.insert.ext.i4.i.i79.i = select i1 %or.cond.i3.i.i78.i, i64 2143289344, i64 8589934592
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit83.i

.fold.split.i.i70.i:                              ; preds = %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.thread.i
  br label %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit83.i

_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit83.i: ; preds = %.fold.split.i.i70.i, %bb.ar, %bb.aq, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.thread.i
  %.sroa.0.1.in.i.i71.i = phi i64 [ %.sroa.03.0.insert.ext.i4.i.i79.i, %bb.ar ], [ 2143289344, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.thread.i ], [ %.sroa.03.0.insert.ext.i.i.i81.i, %bb.aq ], [ 15028191232, %.fold.split.i.i70.i ]
  %i.ez = and i64 %.sroa.0.1.in.i.i71.i, 12884901888
  %i.fa = icmp eq i64 %i.ez, 8589934592
  br label %bb.as

bb.as:                                            ; preds = %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit83.i, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.i, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.i, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.i
  %i.fb = phi i1 [ true, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit68.i ], [ true, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit53.i ], [ true, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit.i ], [ %i.fa, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit83.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !76
  %.not174.i = icmp eq ptr %i.fd, null
  br i1 %.not174.i, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !106
  %.not175.i = icmp eq ptr %i.ff, null
  br i1 %.not175.i, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !192
  %.not176.i = icmp eq ptr %i.fh, null
  br i1 %.not176.i, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  %i.fi = load i8, ptr %i.g, align 8
  %i.fj = and i8 %i.fi, 2
  %.not177.i = icmp eq i8 %i.fj, 0
  br i1 %.not177.i, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %.sroa.0131.4.extract.shift178.i = lshr i64 %.sroa.0.1.in.i.i.i, 32
  %.sroa.0131.4.extract.trunc.i = trunc nuw nsw i64 %.sroa.0131.4.extract.shift178.i to i8
  switch i8 %.sroa.0131.4.extract.trunc.i, label %.critedge [
    i8 3, label %bb.ax
    i8 0, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 153
  %.sroa.0.0.copyload.i84.i = load i16, ptr %i.fk, align 1, !tbaa !12 ; 6 uses
  %i.fl = and i16 %.sroa.0.0.copyload.i84.i, 7    ; 2 uses
  switch i16 %i.fl, label %bb.ay [
    i16 0, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread148.i
    i16 4, label %.critedge
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fm = icmp eq i16 %i.fl, 5
  %i.fn = lshr i16 %.sroa.0.0.copyload.i84.i, 4   ; 3 uses
  %i.fo = and i16 %.sroa.0.0.copyload.i84.i, -25
  %or.cond160.i = icmp eq i16 %i.fo, 5
  %i.fp = icmp eq i16 %i.fn, 2
  %i.fq = and i1 %i.fm, %i.fp
  %or.cond162.i = or i1 %or.cond160.i, %i.fq
  br i1 %or.cond162.i, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fr = and i16 %.sroa.0.0.copyload.i84.i, 8
  %.not.i.i87.i = icmp eq i16 %i.fr, 0
  br i1 %.not.i.i87.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fs = zext nneg i16 %i.fn to i64              ; 2 uses
  %i.ft = icmp ult i16 %.sroa.0.0.copyload.i84.i, 64
  br i1 %i.ft, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fs
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i90.i

bb.bc:                                            ; preds = %bb.ba
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !101 ; 2 uses
  %i.fy = add nsw i64 %i.fs, -4                   ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !104
  %i.gb = load ptr, ptr %i.fx, align 8, !tbaa !105 ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 2                 ; 2 uses
  %.not.i.i.i.i88.i = icmp ult i64 %i.fy, %i.gf
  br i1 %.not.i.i.i.i88.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i89.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.fy, i64 noundef %i.gf) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i89.i:           ; preds = %bb.bc
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.fy
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i90.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i90.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i89.i, %bb.bb
  %.0.in.i.i91.i = phi ptr [ %i.fv, %bb.bb ], [ %i.gg, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i89.i ]
  %.0.i2.i92.i = load float, ptr %.0.in.i.i91.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i

bb.be:                                            ; preds = %bb.az
  %i.gh = and i16 %i.fn, 2047
  %i.gi = zext nneg i16 %i.gh to i32              ; 2 uses
  %i.gj = sub nsw i32 0, %i.gi
  %.not.i13.i.i97.i = icmp slt i16 %.sroa.0.0.copyload.i84.i, 0
  %i.gk = select i1 %.not.i13.i.i97.i, i32 %i.gj, i32 %i.gi
  %i.gl = sitofp i32 %i.gk to float
  br label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i: ; preds = %bb.be, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i90.i
  %i.gm = phi float [ %.0.i2.i92.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i90.i ], [ %i.gl, %bb.be ]
  %i.gn = call float @llvm.fabs.f32(float %i.gm)
  %.sroa.0.1.in.i.i86.i = fcmp ueq float %i.gn, +inf
  br i1 %.sroa.0.1.in.i.i86.i, label %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread148.i, label %.critedge

_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread148.i: ; preds = %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.i, %bb.ax
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 157
  %.sroa.0.0.copyload.i98.i = load i16, ptr %i.go, align 1, !tbaa !12 ; 6 uses
  %i.gp = and i16 %.sroa.0.0.copyload.i98.i, 7    ; 2 uses
  switch i16 %i.gp, label %bb.bf [
    i16 0, label %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.thread155.i
    i16 4, label %.critedge
  ]

bb.bf:                                            ; preds = %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread148.i
  %i.gq = icmp eq i16 %i.gp, 5
  %i.gr = lshr i16 %.sroa.0.0.copyload.i98.i, 4   ; 3 uses
  %i.gs = and i16 %.sroa.0.0.copyload.i98.i, -25
  %or.cond164.i = icmp eq i16 %i.gs, 5
  %i.gt = icmp eq i16 %i.gr, 2
  %i.gu = and i1 %i.gq, %i.gt
  %or.cond166.i = or i1 %or.cond164.i, %i.gu
  br i1 %or.cond166.i, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gv = and i16 %.sroa.0.0.copyload.i98.i, 8
  %.not.i.i101.i = icmp eq i16 %i.gv, 0
  br i1 %.not.i.i101.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gw = zext nneg i16 %i.gr to i64              ; 2 uses
  %i.gx = icmp ult i16 %.sroa.0.0.copyload.i98.i, 64
  br i1 %i.gx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gw
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i104.i

bb.bj:                                            ; preds = %bb.bh
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !101 ; 2 uses
  %i.hc = add nsw i64 %i.gw, -4                   ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !104
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !105 ; 2 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = ashr exact i64 %i.hi, 2                 ; 2 uses
  %.not.i.i.i.i102.i = icmp ult i64 %i.hc, %i.hj
  br i1 %.not.i.i.i.i102.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i103.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.hc, i64 noundef %i.hj) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i103.i:          ; preds = %bb.bj
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hc
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i104.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i104.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i103.i, %bb.bi
  %.0.in.i.i105.i = phi ptr [ %i.gz, %bb.bi ], [ %i.hk, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i103.i ]
  %.0.i2.i106.i = load float, ptr %.0.in.i.i105.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.i

bb.bl:                                            ; preds = %bb.bg
  %i.hl = and i16 %i.gr, 2047
  %i.hm = zext nneg i16 %i.hl to i32              ; 2 uses
  %i.hn = sub nsw i32 0, %i.hm
  %.not.i13.i.i111.i = icmp slt i16 %.sroa.0.0.copyload.i98.i, 0
  %i.ho = select i1 %.not.i13.i.i111.i, i32 %i.hn, i32 %i.hm
  %i.hp = sitofp i32 %i.ho to float
  br label %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.i

_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.i: ; preds = %bb.bl, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i104.i
  %i.hq = phi float [ %.0.i2.i106.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i104.i ], [ %i.hp, %bb.bl ]
  %i.hr = call float @llvm.fabs.f32(float %i.hq)
  %.sroa.0.1.in.i.i100.i = fcmp ueq float %i.hr, +inf
  br i1 %.sroa.0.1.in.i.i100.i, label %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.thread155.i, label %.critedge

_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.thread155.i: ; preds = %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.i, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.thread148.i
  %.sroa.0127.4.extract.shift181.i = lshr i64 %i.ar, 32
  %.sroa.0127.4.extract.trunc.i = trunc i64 %.sroa.0127.4.extract.shift181.i to i8
  switch i8 %.sroa.0127.4.extract.trunc.i, label %.critedge [
    i8 3, label %bb.bm
    i8 0, label %bb.bm
  ]

bb.bm:                                            ; preds = %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.thread155.i, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.thread155.i
  %i.hs = call fastcc noundef zeroext i1 @_ZN8facebook4yogaL14hasNonZeroFlexERKNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(744) %i.g)
  br i1 %i.hs, label %.critedge, label %bb.bn
end_hunk_0
begin_hunk_1_@_ZN8facebook4yogaL19hasPercentageLengthERKNS0_5StyleE:bb.a
  br i1 %.not.i.i135, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jx = zext nneg i16 %i.jw to i64              ; 2 uses
  %i.jy = icmp ult i16 %.sroa.0.0.copyload.i132, 64
  br i1 %i.jy, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jx
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138

bb.br:                                            ; preds = %bb.bp
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.kb = add nsw i64 %i.jx, -4                   ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !104
  %i.ke = load ptr, ptr %i.ka, align 8, !tbaa !105 ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 2                 ; 2 uses
  %.not.i.i.i.i.i136 = icmp ult i64 %i.kb, %i.ki
  br i1 %.not.i.i.i.i.i136, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i137, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.kb, i64 noundef %i.ki) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i137:          ; preds = %bb.br
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kb
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i137, %bb.bq
  %.0.in.i.i.i139 = phi ptr [ %i.jz, %bb.bq ], [ %i.kj, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i137 ]
  %.0.i11.i.i140 = load float, ptr %.0.in.i.i.i139, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit

bb.bt:                                            ; preds = %bb.bo
  %i.kk = and i16 %i.jw, 2047
  %i.kl = zext nneg i16 %i.kk to i32              ; 2 uses
  %i.km = sub nsw i32 0, %i.kl
  %.not.i10.i.i145 = icmp slt i16 %.sroa.0.0.copyload.i132, 0
  %i.kn = select i1 %.not.i10.i.i145, i32 %i.km, i32 %i.kl
  %i.ko = sitofp i32 %i.kn to float
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit:   ; preds = %bb.bt, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138
  %i.kp = phi float [ %.0.i11.i.i140, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i138 ], [ %i.ko, %bb.bt ]
  %i.kq = icmp ne i16 %i.ju, 1
  %i.kr = tail call float @llvm.fabs.f32(float %i.kp)
  %or.cond.i3.i.i141 = fcmp one float %i.kr, +inf
  %i.ks = select i1 %i.kq, i1 %or.cond.i3.i.i141, i1 false
  br i1 %i.ks, label %.critedge, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread: ; preds = %bb.bn, %bb.bn, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 87
  %.sroa.0.0.copyload.i146 = load i16, ptr %i.kt, align 1, !tbaa !12 ; 5 uses
  %i.ku = and i16 %.sroa.0.0.copyload.i146, 7     ; 2 uses
  switch i16 %i.ku, label %bb.bu [
    i16 0, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread
    i16 4, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread
  ]

bb.bu:                                            ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread
  %i.kv = and i16 %.sroa.0.0.copyload.i146, 8
  %.not.i.i149 = icmp eq i16 %i.kv, 0
  %i.kw = lshr i16 %.sroa.0.0.copyload.i146, 4    ; 2 uses
  br i1 %.not.i.i149, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kx = zext nneg i16 %i.kw to i64              ; 2 uses
  %i.ky = icmp ult i16 %.sroa.0.0.copyload.i146, 64
  br i1 %i.ky, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.kx
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152

bb.bx:                                            ; preds = %bb.bv
  %i.la = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.lb = add nsw i64 %i.kx, -4                   ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !104
  %i.le = load ptr, ptr %i.la, align 8, !tbaa !105 ; 2 uses
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = ashr exact i64 %i.lh, 2                 ; 2 uses
  %.not.i.i.i.i.i150 = icmp ult i64 %i.lb, %i.li
  br i1 %.not.i.i.i.i.i150, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i151, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.lb, i64 noundef %i.li) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i151:          ; preds = %bb.bx
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lb
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i151, %bb.bw
  %.0.in.i.i.i153 = phi ptr [ %i.kz, %bb.bw ], [ %i.lj, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i151 ]
  %.0.i11.i.i154 = load float, ptr %.0.in.i.i.i153, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160

bb.bz:                                            ; preds = %bb.bu
  %i.lk = and i16 %i.kw, 2047
  %i.ll = zext nneg i16 %i.lk to i32              ; 2 uses
  %i.lm = sub nsw i32 0, %i.ll
  %.not.i10.i.i159 = icmp slt i16 %.sroa.0.0.copyload.i146, 0
  %i.ln = select i1 %.not.i10.i.i159, i32 %i.lm, i32 %i.ll
  %i.lo = sitofp i32 %i.ln to float
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160: ; preds = %bb.bz, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152
  %i.lp = phi float [ %.0.i11.i.i154, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i152 ], [ %i.lo, %bb.bz ]
  %i.lq = icmp ne i16 %i.ku, 1
  %i.lr = tail call float @llvm.fabs.f32(float %i.lp)
  %or.cond.i3.i.i155 = fcmp one float %i.lr, +inf
  %i.ls = select i1 %i.lq, i1 %or.cond.i3.i.i155, i1 false
  br i1 %i.ls, label %.critedge, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread: ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit.thread, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 89
  %.sroa.0.0.copyload.i161 = load i16, ptr %i.lt, align 1, !tbaa !12 ; 5 uses
  %i.lu = and i16 %.sroa.0.0.copyload.i161, 7     ; 2 uses
  switch i16 %i.lu, label %bb.ca [
    i16 0, label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175
    i16 4, label %.fold.split.i.i162
  ]

bb.ca:                                            ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread
  %i.lv = and i16 %.sroa.0.0.copyload.i161, 8
  %.not.i.i164 = icmp eq i16 %i.lv, 0
  %i.lw = lshr i16 %.sroa.0.0.copyload.i161, 4    ; 2 uses
  br i1 %.not.i.i164, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lx = zext nneg i16 %i.lw to i64              ; 2 uses
  %i.ly = icmp ult i16 %.sroa.0.0.copyload.i161, 64
  br i1 %i.ly, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lx
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167

bb.cd:                                            ; preds = %bb.cb
  %i.ma = load ptr, ptr %i.b, align 8, !tbaa !101 ; 2 uses
  %i.mb = add nsw i64 %i.lx, -4                   ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !104
  %i.me = load ptr, ptr %i.ma, align 8, !tbaa !105 ; 2 uses
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = ashr exact i64 %i.mh, 2                 ; 2 uses
  %.not.i.i.i.i.i165 = icmp ult i64 %i.mb, %i.mi
  br i1 %.not.i.i.i.i.i165, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i166, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.mb, i64 noundef %i.mi) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i166:          ; preds = %bb.cd
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mb
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i166, %bb.cc
  %.0.in.i.i.i168 = phi ptr [ %i.lz, %bb.cc ], [ %i.mj, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i166 ]
  %.0.i11.i.i169 = load float, ptr %.0.in.i.i.i168, align 4, !tbaa !17
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ca
  %i.mk = and i16 %i.lw, 2047
  %i.ml = zext nneg i16 %i.mk to i32              ; 2 uses
  %i.mm = sub nsw i32 0, %i.ml
  %.not.i10.i.i174 = icmp slt i16 %.sroa.0.0.copyload.i161, 0
  %i.mn = select i1 %.not.i10.i.i174, i32 %i.mm, i32 %i.ml
  %i.mo = sitofp i32 %i.mn to float
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167
  %i.mp = phi float [ %.0.i11.i.i169, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i167 ], [ %i.mo, %bb.cf ]
  %i.mq = icmp eq i16 %i.lu, 1
  %i.mr = tail call float @llvm.fabs.f32(float %i.mp) ; 2 uses
  br i1 %i.mq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %or.cond.i.i.i172 = fcmp one float %i.mr, +inf
  %.sroa.03.0.insert.ext.i.i.i173 = select i1 %or.cond.i.i.i172, i64 4294967296, i64 2143289344
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175

bb.ci:                                            ; preds = %bb.cg
  %or.cond.i3.i.i170 = fcmp ueq float %i.mr, +inf
  %.sroa.03.0.insert.ext.i4.i.i171 = select i1 %or.cond.i3.i.i170, i64 2143289344, i64 8589934592
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175

.fold.split.i.i162:                               ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread
  br label %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175

_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175: ; preds = %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread, %bb.ch, %bb.ci, %.fold.split.i.i162
  %.sroa.0.1.in.i.i163 = phi i64 [ %.sroa.03.0.insert.ext.i4.i.i171, %bb.ci ], [ 2143289344, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160.thread ], [ %.sroa.03.0.insert.ext.i.i.i173, %bb.ch ], [ 15028191232, %.fold.split.i.i162 ]
  %i.ms = and i64 %.sroa.0.1.in.i.i163, 12884901888
  %i.mt = icmp eq i64 %i.ms, 8589934592
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga5Style6borderENS0_4EdgeE.exit, %_ZNK8facebook4yoga5Style6marginENS0_4EdgeE.exit, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit, %_ZNK8facebook4yoga5Style7paddingENS0_4EdgeE.exit, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit, %.critedge51.1, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.1, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.1, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.1, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit
  %.7 = phi i1 [ true, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit ], [ true, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit ], [ true, %.critedge51.1 ], [ %i.mt, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit175 ], [ true, %_ZNK8facebook4yoga5Style3gapENS0_6GutterE.exit160 ], [ true, %_ZNK8facebook4yoga5Style12maxDimensionENS0_9DimensionE.exit.1 ], [ true, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit.1 ], [ true, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit.1 ], [ true, %_ZNK8facebook4yoga5Style12minDimensionENS0_9DimensionE.exit ], [ true, %_ZNK8facebook4yoga5Style9dimensionENS0_9DimensionE.exit ], [ true, %_ZNK8facebook4yoga5Style7paddingENS0_4EdgeE.exit ], [ true, %_ZNK8facebook4yoga5Style8positionENS0_4EdgeE.exit ], [ true, %_ZNK8facebook4yoga5Style6marginENS0_4EdgeE.exit ], [ true, %_ZNK8facebook4yoga5Style6borderENS0_4EdgeE.exit ]
  ret i1 %.7
}

declare noundef zeroext i1 @_ZNK8facebook4yoga6Config14useWebDefaultsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !95   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.c, %i.k
  br i1 %.not.i.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef %i.k) #14
  unreachable

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.0.peel = load ptr, ptr %i.l, align 8, !tbaa !23 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.peel, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %i.q = icmp eq i8 %i.p, 8
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.peel, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.peel, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !85
  %.not.peel = icmp eq ptr %i.t, %i.u
  br i1 %.not.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.peel, align 8
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !94
  store ptr %i.x, ptr %i.v, align 8, !tbaa !94
  store ptr %i.v, ptr %i.m, align 8, !tbaa !94
  store ptr %.0.peel, ptr %0, align 8, !tbaa !92
  store i64 0, ptr %i.b, align 8, !tbaa !95
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !85   ; 2 uses
  %.not.i.i.i6.not.peel = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i6.not.peel, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7

_ZNK8facebook4yoga4Node8getChildEm.exit7:         ; preds = %bb.d, %bb.f
  %i.aa = phi ptr [ %.0, %bb.f ], [ %.0.peel, %bb.d ]
  %.0.in = phi ptr [ %i.an, %bb.f ], [ %i.z, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !23  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 12
  %i.ae = icmp eq i8 %i.ad, 8
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 696 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 704 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !85
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.aa, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !94
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !94
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !94
  store ptr %.0, ptr %0, align 8, !tbaa !92
  store i64 0, ptr %i.b, align 8, !tbaa !95
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !85 ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i6.not, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7, !llvm.loop !196

.loopexit12:                                      ; preds = %bb.f, %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 0) #14
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.c
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %_ZNK8facebook4yoga4Node8getChildEm.exit7, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !95
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not11 = icmp ult i64 %i.c, %i.l
  br i1 %.not11, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !74

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

tailrecurse:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98
  store ptr %i.q, ptr %0, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !99
  store i64 %i.s, ptr %i.a, align 8, !tbaa !95
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !94
  store ptr %i.t, ptr %i.m, align 8, !tbaa !94
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #16
  %i.u = load i64, ptr %i.a, align 8, !tbaa !95
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !84
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !85  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not = icmp ult i64 %i.v, %i.ae
  br i1 %.not, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %tailrecurse, %bb.a
  %.lcssa6 = phi i64 [ %i.c, %bb.a ], [ %i.v, %tailrecurse ] ; 2 uses
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.aa, %tailrecurse ]
  store i64 %.lcssa6, ptr %i.a, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.lcssa6
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 12
  %i.ak = icmp eq i8 %i.aj, 8
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !93

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN8facebook4yogaL25computeMinContentMainSizeEPNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEff(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = and i8 %1, -2
  %i.b = icmp eq i8 %i.a, 2                       ; 7 uses
end_hunk_1
