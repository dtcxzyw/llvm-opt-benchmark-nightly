Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1645
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yoga15calculateLayoutEPNS0_4NodeEffNS0_9DirectionE:bb.a
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit87

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit83.thread: ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit71.thread, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit83
  %i.tm = fcmp uno float %2, 0.000000e+00
  %i.tn = zext i1 %i.tm to i32
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit87

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit87: ; preds = %bb.bo, %bb.bn, %bb.bm, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit83.thread, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit77
  %.057 = phi float [ %i.pq, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit77 ], [ %2, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit83.thread ], [ +qnan, %bb.bm ], [ %i.tl, %bb.bo ], [ %i.rt, %bb.bn ]
  %.0 = phi i32 [ 0, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit77 ], [ %i.tn, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit83.thread ], [ 2, %bb.bm ], [ 2, %bb.bo ], [ 2, %bb.bn ]
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !75
  %i.tq = call noundef zeroext i1 @_ZNK8facebook4yoga6Config28isExperimentalFeatureEnabledENS0_19ExperimentalFeatureE(ptr noundef nonnull align 8 dereferenceable(48) %i.tp, i8 noundef zeroext 1)
  br i1 %i.tq, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit87
  %i.tr = load atomic i32, ptr @_ZN8facebook4yoga23gCurrentGenerationCountE monotonic, align 4
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit87, %bb.bp
  %i.ts = phi i32 [ %i.tr, %bb.bp ], [ %i.b, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit87 ]
  %i.tt = call noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %0, float noundef %.059, float noundef %.057, i8 noundef zeroext %3, i32 noundef %.058, i32 noundef %.0, float noundef %1, float noundef %2, i1 noundef zeroext true, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(60) %7, i32 noundef 0, i32 noundef %i.ts)
  br i1 %i.tt, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.tv = load i8, ptr %i.tu, align 4
  %i.tw = and i8 %i.tv, 3
  call void @_ZN8facebook4yoga4Node11setPositionENS0_9DirectionEff(ptr noundef nonnull align 8 dereferenceable(744) %0, i8 noundef zeroext %i.tw, float noundef %1, float noundef %2)
  call void @_ZN8facebook4yoga29roundLayoutResultsToPixelGridEPNS0_4NodeEdd(ptr noundef nonnull %0, double noundef 0.000000e+00, double noundef 0.000000e+00)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %7, ptr %8, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %8, ptr %4, align 8, !tbaa !83
  call void @_ZN8facebook4yoga5Event7publishEPK6YGNodeNS1_4TypeERKNS1_4DataE(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret void
}

declare void @_ZN8facebook4yoga4Node17processDimensionsEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #3

declare noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK8facebook4yoga6Config28isExperimentalFeatureEnabledENS0_19ExperimentalFeatureE(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node11setPositionENS0_9DirectionEff(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext, float noundef, float noundef) local_unnamed_addr #3

declare void @_ZN8facebook4yoga29roundLayoutResultsToPixelGridEPNS0_4NodeEdd(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %1, float noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i16 %1, 7
  switch i16 %i.a, label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit [
    i16 1, label %bb.b
    i16 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i16 %1, 8
  %.not.i = icmp eq i16 %i.b, 0
  %i.c = lshr i16 %1, 4                           ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i16 %i.c to i64                ; 2 uses
  %i.e = icmp ult i16 %1, 64
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.d
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %i.j = add nsw i64 %i.d, -4                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.j, %i.q
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.j, i64 noundef %i.q) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i:               ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, %bb.d
  %.0.in.i.i = phi ptr [ %i.g, %bb.d ], [ %i.r, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i ]
  %.0.i4.i = load float, ptr %.0.in.i.i, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

bb.g:                                             ; preds = %bb.b
  %i.s = and i16 %i.c, 2047
  %i.t = zext nneg i16 %i.s to i32                ; 2 uses
  %i.u = sub nsw i32 0, %i.t
  %.not.i3.i = icmp slt i16 %1, 0
  %i.v = select i1 %.not.i3.i, i32 %i.u, i32 %i.t
  %i.w = sitofp i32 %i.v to float
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

bb.h:                                             ; preds = %bb.a
  %i.x = and i16 %1, 8
  %.not.i3 = icmp eq i16 %i.x, 0
  %i.y = lshr i16 %1, 4                           ; 2 uses
  br i1 %.not.i3, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = zext nneg i16 %i.y to i64                ; 2 uses
  %i.aa = icmp ult i16 %1, 64
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !101 ; 2 uses
  %i.af = add nsw i64 %i.z, -4                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !105 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i.i.i.i4 = icmp ult i64 %i.af, %i.am
  br i1 %.not.i.i.i.i4, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.af, i64 noundef %i.am) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5:              ; preds = %bb.k
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.af
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5, %bb.j
  %.0.in.i.i7 = phi ptr [ %i.ac, %bb.j ], [ %i.an, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5 ]
  %.0.i4.i8 = load float, ptr %.0.in.i.i7, align 4, !tbaa !17
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10

bb.m:                                             ; preds = %bb.h
  %i.ao = and i16 %i.y, 2047
  %i.ap = zext nneg i16 %i.ao to i32              ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %.not.i3.i9 = icmp slt i16 %1, 0
  %i.ar = select i1 %.not.i3.i9, i32 %i.aq, i32 %i.ap
  %i.as = sitofp i32 %i.ar to float
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10

_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10: ; preds = %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6, %bb.m
  %i.at = phi float [ %.0.i4.i8, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6 ], [ %i.as, %bb.m ]
  %i.au = fmul float %2, %i.at
  %i.av = fmul float %i.au, f0x3C23D70A
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit: ; preds = %bb.a, %bb.g, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i, %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10
  %.sroa.014.0 = phi float [ %i.w, %bb.g ], [ %i.av, %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10 ], [ %.0.i4.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i ], [ +qnan, %bb.a ]
  ret float %.sroa.014.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK8facebook4yoga5Style35computePaddingAndBorderForDimensionENS0_9DirectionENS0_9DimensionEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float noundef %3) local_unnamed_addr #0 comdat align 2 {
_ZNK8facebook4yoga5Style32computeFlexStartPaddingAndBorderENS0_13FlexDirectionENS0_9DirectionEf.exit:
  %i.a = icmp ne i8 %2, 0                         ; 2 uses
  %spec.select = zext i1 %i.a to i32              ; 2 uses
  %i.b = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %spec.select, i8 noundef zeroext %1)
  %i.c = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %i.b, float noundef %3)
  %i.d = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %spec.select, i8 noundef zeroext %1)
  %i.e = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %i.d, float noundef 0.000000e+00)
  %spec.select11 = select i1 %i.a, i32 3, i32 2   ; 2 uses
  %i.f = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %spec.select11, i8 noundef zeroext %1)
  %i.g = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %i.f, float noundef %3)
  %i.h = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %spec.select11, i8 noundef zeroext %1)
  %i.i = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %i.h, float noundef 0.000000e+00)
  %i.j = insertelement <4 x float> poison, float %i.c, i64 0
  %i.k = insertelement <4 x float> %i.j, float %i.e, i64 1
  %i.l = insertelement <4 x float> %i.k, float %i.g, i64 2
  %i.m = insertelement <4 x float> %i.l, float %i.i, i64 3 ; 2 uses
  %i.n = fcmp oge <4 x float> %i.m, zeroinitializer
  %i.o = select <4 x i1> %i.n, <4 x float> %i.m, <4 x float> zeroinitializer ; 4 uses
  %shift = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.o, %shift
  %shift13 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop14 = fadd <4 x float> %i.o, %shift13
  %shift16 = shufflevector <4 x float> %foldExtExtBinop14, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop17 = fadd <4 x float> %foldExtExtBinop, %shift16
  %i.p = extractelement <4 x float> %foldExtExtBinop17, i64 0
  ret float %i.p
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49
  switch i8 %2, label %bb.e [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.c = load i16, ptr %i.b, align 1, !tbaa !77   ; 2 uses
  %i.d = and i16 %i.c, 7
  %.not14.i = icmp eq i16 %i.d, 0
  br i1 %.not14.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.f = load i16, ptr %i.e, align 1, !tbaa !77   ; 2 uses
  %i.g = and i16 %i.f, 7
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = load i16, ptr %i.a, align 1, !tbaa !77   ; 2 uses
  %i.i = and i16 %i.h, 7
  %.not15.i = icmp eq i16 %i.i, 0
  br i1 %.not15.i, label %bb.f, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.k = load i16, ptr %i.j, align 1, !tbaa !77   ; 2 uses
  %i.l = and i16 %i.k, 7
  %.not16.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65
  %.val.i = load i16, ptr %i.m, align 1
  %.sroa.0.0.pre.i = select i1 %.not16.i, i16 %.val.i, i16 %i.k
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 2 uses
  %i.o = load i16, ptr %i.n, align 1, !tbaa !77
  %i.p = and i16 %i.o, 7
  %.not.i3 = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = and i16 %i.r, 7
  %.not7.i = icmp eq i16 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 65
  %spec.select.i = select i1 %.not7.i, ptr %i.t, ptr %i.q
  %.sroa.0.0.in.i = select i1 %.not.i3, ptr %spec.select.i, ptr %i.n
  %.sroa.0.0.i4 = load i16, ptr %.sroa.0.0.in.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.h:                                             ; preds = %bb.a
  switch i8 %2, label %bb.k [
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.v = load i16, ptr %i.u, align 1, !tbaa !77   ; 2 uses
  %i.w = and i16 %i.v, 7
  %.not14.i11 = icmp eq i16 %i.w, 0
  br i1 %.not14.i11, label %bb.k, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.y = load i16, ptr %i.x, align 1, !tbaa !77   ; 2 uses
  %i.z = and i16 %i.y, 7
  %.not.i5 = icmp eq i16 %i.z, 0
  br i1 %.not.i5, label %bb.k, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !77 ; 2 uses
  %i.ac = and i16 %i.ab, 7
  %.not15.i7 = icmp eq i16 %i.ac, 0
  br i1 %.not15.i7, label %bb.l, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !77 ; 2 uses
  %i.af = and i16 %i.ae, 7
  %.not16.i8 = icmp eq i16 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 65
  %.val.i9 = load i16, ptr %i.ag, align 1
  %.sroa.0.0.pre.i10 = select i1 %.not16.i8, i16 %.val.i9, i16 %i.ae
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.m:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 55 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !77
  %i.aj = and i16 %i.ai, 7
  %.not.i12 = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = and i16 %i.al, 7
  %.not7.i13 = icmp eq i16 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 65
  %spec.select.i14 = select i1 %.not7.i13, ptr %i.an, ptr %i.ak
  %.sroa.0.0.in.i15 = select i1 %.not.i12, ptr %spec.select.i14, ptr %i.ah
  %.sroa.0.0.i16 = load i16, ptr %.sroa.0.0.in.i15, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.m, %bb.g
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.i16, %bb.m ], [ %.sroa.0.0.i4, %bb.g ], [ %i.h, %bb.e ], [ %.sroa.0.0.pre.i, %bb.f ], [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.0.0.pre.i10, %bb.l ], [ %i.v, %bb.i ], [ %i.y, %bb.j ], [ %i.ab, %bb.k ]
  ret i16 %.sroa.0.0
}

; Function Attrs: noreturn
declare void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 67
  switch i8 %2, label %bb.e [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.c = load i16, ptr %i.b, align 1, !tbaa !77   ; 2 uses
  %i.d = and i16 %i.c, 7
  %.not14.i = icmp eq i16 %i.d, 0
  br i1 %.not14.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.f = load i16, ptr %i.e, align 1, !tbaa !77   ; 2 uses
  %i.g = and i16 %i.f, 7
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = load i16, ptr %i.a, align 1, !tbaa !77   ; 2 uses
  %i.i = and i16 %i.h, 7
  %.not15.i = icmp eq i16 %i.i, 0
  br i1 %.not15.i, label %bb.f, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.k = load i16, ptr %i.j, align 1, !tbaa !77   ; 2 uses
  %i.l = and i16 %i.k, 7
  %.not16.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 83
  %.val.i = load i16, ptr %i.m, align 1
  %.sroa.0.0.pre.i = select i1 %.not16.i, i16 %.val.i, i16 %i.k
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 2 uses
  %i.o = load i16, ptr %i.n, align 1, !tbaa !77
  %i.p = and i16 %i.o, 7
  %.not.i3 = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = and i16 %i.r, 7
  %.not7.i = icmp eq i16 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 83
  %spec.select.i = select i1 %.not7.i, ptr %i.t, ptr %i.q
  %.sroa.0.0.in.i = select i1 %.not.i3, ptr %spec.select.i, ptr %i.n
  %.sroa.0.0.i4 = load i16, ptr %.sroa.0.0.in.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.h:                                             ; preds = %bb.a
  switch i8 %2, label %bb.k [
    i8 1, label %bb.i
    i8 2, label %bb.j
end_hunk_0
