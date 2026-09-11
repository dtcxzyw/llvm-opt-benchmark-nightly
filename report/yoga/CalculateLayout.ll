Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/CalculateLayout?download=true
inline.NumInlined: 1590
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook4yoga4Node15setLayoutMarginEfNS0_12PhysicalEdgeE

declare void @_ZN8facebook4yoga4Node15setLayoutBorderEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node16setLayoutPaddingEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook4yoga4Node19getLayoutChildCountEv(ptr noundef nonnull align 8 dereferenceable(744) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 15 uses
  %2 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84, !noalias !185
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !85, !noalias !185 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread36, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %1, align 8, !tbaa !92, !alias.scope !185
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !185
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !25, !noalias !185
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  %i.t = load i8, ptr %i.s, align 4, !noalias !185
  %i.u = and i8 %i.t, 12
  %i.v = icmp eq i8 %i.u, 8
  br i1 %i.v, label %bb.e, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, !prof !93

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !94, !alias.scope !185 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i3.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.f, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24 ], [ %i.x, %bb.f ], [ %i.x, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread36: ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !185
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %bb.e
  %.pre = load ptr, ptr %1, align 8, !tbaa !92
  %.pre30 = load i64, ptr %i.p, align 8
  %i.aa = icmp ne ptr %.pre, null
  %i.ab = icmp ne i64 %.pre30, 0
  %i.ac = select i1 %i.aa, i1 true, i1 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.ac, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %i.ae = phi ptr [ %i.w, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.ad, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.g

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread36, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.06.lcssa = phi i64 [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread36 ], [ %i.aj, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not12.i.i.i10, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge, %.lr.ph.i.i.i11
  %.013.i.i.i12 = phi ptr [ %i.ai, %.lr.ph.i.i.i11 ], [ %i.ah, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge ] ; 2 uses
  %i.ai = load ptr, ptr %.013.i.i.i12, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i12, i64 noundef 24) #16
  %.not.i.i.i13 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i13, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14, label %.lr.ph.i.i.i11, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14: ; preds = %.lr.ph.i.i.i11, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19
  %.0629 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19 ]
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = add i64 %.0629, 1                       ; 2 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i15 = icmp eq ptr %i.ak, null
  br i1 %.not12.i.i.i15, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.h, %.lr.ph.i.i.i16
  %.013.i.i.i17 = phi ptr [ %i.al, %.lr.ph.i.i.i16 ], [ %i.ak, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %.013.i.i.i17, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i17, i64 noundef 24) #16
  %.not.i.i.i18 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i18, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19, label %.lr.ph.i.i.i16, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit19: ; preds = %.lr.ph.i.i.i16, %bb.h
  %i.am = load ptr, ptr %1, align 8, !tbaa !92
  %.not.i9 = icmp ne ptr %i.am, null
  %i.an = load i64, ptr %i.ae, align 8
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = select i1 %.not.i9, i1 true, i1 %i.ao
  br i1 %i.ap, label %bb.g, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit._crit_edge, !llvm.loop !184

bb.i:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not12.i.i.i20, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %bb.i, %.lr.ph.i.i.i21
  %.013.i.i.i22 = phi ptr [ %i.at, %.lr.ph.i.i.i21 ], [ %i.as, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %.013.i.i.i22, align 8, !tbaa !94 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i22, i64 noundef 24) #16
  %.not.i.i.i23 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i23, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24, label %.lr.ph.i.i.i21, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit24: ; preds = %.lr.ph.i.i.i21, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %common.resume

bb.j:                                             ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14, %bb.b
  %.07 = phi i64 [ %i.k, %bb.b ], [ %.06.lcssa, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit14 ]
  ret i64 %.07
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare i32 @__gxx_personality_v0(...)

declare void @_ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm(ptr dead_on_unwind writable sret(%"struct.facebook::yoga::FlexLine") align 8, ptr noundef, i8 noundef zeroext, float noundef, float noundef, float noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

declare noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %1, float %3, float noundef %4, float noundef %5) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.c = and i8 %1, -2
  %i.d = icmp eq i8 %i.c, 2                       ; 2 uses
  %i.e = icmp eq i8 %2, 2                         ; 2 uses
  %i.f = select i1 %i.e, i32 2, i32 0
  %.0.i.i.i.i = select i1 %i.d, i32 %i.f, i32 1   ; 2 uses
  %i.g = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %2)
  %i.h = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.g, float noundef %5)
  %i.i = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %2)
  %i.j = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.i, float noundef 0.000000e+00)
  %i.k = select i1 %i.e, i32 0, i32 2
  %.0.i.i.i7.i = select i1 %i.d, i32 %i.k, i32 3  ; 2 uses
  %i.l = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %2)
  %i.m = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.l, float noundef %5)
  %i.n = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %2)
  %i.o = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.n, float noundef 0.000000e+00)
  %i.p = insertelement <4 x float> poison, float %i.h, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.j, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.m, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 4 uses
  %i.t = fcmp ord <4 x float> %i.s, zeroinitializer
  %i.u = fcmp uno <4 x float> %i.s, zeroinitializer
  %i.v = fcmp olt <4 x float> %i.s, zeroinitializer
  %i.w = select <4 x i1> %i.t, <4 x i1> %i.v, <4 x i1> %i.u
  %i.x = select <4 x i1> %i.w, <4 x float> zeroinitializer, <4 x float> %i.s ; 2 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.z = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %6 = fadd <2 x float> %i.y, %i.z                ; 2 uses
  %shift = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %6, %shift
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %or.cond.i = fcmp ord float %i.a, %7
  %i.aa = fcmp uno float %i.a, 0.000000e+00
  %i.ab = fcmp olt float %i.a, %7
  %.sink.i = select i1 %or.cond.i, i1 %i.ab, i1 %i.aa
  %i.ac = select i1 %.sink.i, float %7, float %i.a
  ret float %i.ac
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 24
  %i.d = trunc nuw i32 %i.c to i8
  %i.e = and i8 %i.d, 15                          ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8
  %i.i = lshr i32 %i.h, 20
  %i.j = trunc i32 %i.i to i8
  %i.k = and i8 %i.j, 15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i8 [ %i.k, %bb.b ], [ %i.e, %bb.a ]  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 12
  %i.p = icmp eq i8 %i.o, 0
  %i.q = icmp eq i8 %i.l, 5
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 8
  %.not.not = icmp eq i32 %i.t, 0
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i8 [ %i.l, %bb.e ], [ 1, %bb.d ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr float @_ZNK8facebook4yoga5Style11aspectRatioEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 103
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 1, !tbaa !12 ; 5 uses
  %i.b = and i16 %.sroa.0.0.copyload, 7
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK8facebook4yoga14StyleValuePool9getNumberENS0_16StyleValueHandleE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %.sroa.0.0.copyload, 8
  %.not.i = icmp eq i16 %i.d, 0
  %i.e = lshr i16 %.sroa.0.0.copyload, 4          ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i16 %i.e to i64                ; 2 uses
  %i.g = icmp ult i16 %.sroa.0.0.copyload, 64
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 2 uses
  %i.l = add nsw i64 %i.f, -4                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.l, %i.s
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.l, i64 noundef %i.s) #14
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i:               ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, %bb.d
  %.0.in.i.i = phi ptr [ %i.i, %bb.d ], [ %i.t, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i ]
  %.0.i7.i = load float, ptr %.0.in.i.i, align 4, !tbaa !19
  br label %_ZNK8facebook4yoga14StyleValuePool9getNumberENS0_16StyleValueHandleE.exit

bb.g:                                             ; preds = %bb.b
  %i.u = and i16 %i.e, 2047
  %i.v = zext nneg i16 %i.u to i32                ; 2 uses
  %i.w = sub nsw i32 0, %i.v
  %.not.i6.i = icmp slt i16 %.sroa.0.0.copyload, 0
  %i.x = select i1 %.not.i6.i, i32 %i.w, i32 %i.v
  %i.y = sitofp i32 %i.x to float
  br label %_ZNK8facebook4yoga14StyleValuePool9getNumberENS0_16StyleValueHandleE.exit

_ZNK8facebook4yoga14StyleValuePool9getNumberENS0_16StyleValueHandleE.exit: ; preds = %bb.a, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i, %bb.g
  %.sroa.05.0.i = phi float [ +qnan, %bb.a ], [ %.0.i7.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i ], [ %i.y, %bb.g ]
  ret float %.sroa.05.0.i
}

declare noundef float @_ZN8facebook4yoga4Node19dimensionWithMarginENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext, float noundef) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN8facebook4yoga16isBaselineLayoutEPKNS0_4NodeE(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN8facebook4yoga4Node24isLayoutDimensionDefinedENS0_13FlexDirectionE(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext) local_unnamed_addr #3

declare noundef float @_ZN8facebook4yoga17calculateBaselineEPKNS0_4NodeE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind noalias writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !94
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.noexc.i.i
  %.07.i.i.i = phi ptr [ %i.e, %.noexc.i.i ], [ %i.a, %bb.a ]
  %.sroa.03.06.i.i.i = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc.i.i unwind label %bb.b ; 4 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store ptr %i.e, ptr %.07.i.i.i, align 8, !tbaa !94
  %i.h = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !0

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i3, %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.aw, %.lr.ph.i.i.i3 ], [ %i.aw, %bb.d ], [ %i.j, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit: ; preds = %.noexc.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !95
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 696
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 704
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !85   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not11.i.i = icmp ult i64 %i.o, %i.x
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, %tailrecurse.i.i
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !96   ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !75

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !98
  store ptr %i.ab, ptr %1, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !99
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !95
end_hunk_0
begin_hunk_1_@_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE9_M_assignISt24_Fwd_list_const_iteratorIS6_EEEvT_SC_St17integral_constantIbLb1EE:bb.a

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store ptr %i.m, ptr %.07.i.i.i, align 8, !tbaa !94
  %i.p = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.q = icmp eq ptr %i.p, %2
  br i1 %i.q, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i = load ptr, ptr %.sroa.0.i, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, null
  br i1 %.not12.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.body.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i: ; preds = %.noexc.i.i
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..pr.i = load ptr, ptr %.sroa.0.i, align 8, !tbaa !94 ; 3 uses
  %i.t = icmp eq ptr %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..pr.i, null
  br i1 %i.t, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE12insert_afterISt24_Fwd_list_const_iteratorIS6_EvEESt18_Fwd_list_iteratorIS6_ESB_T_SE_.exit, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i, %thread-pre-split.i
  %i.u = phi ptr [ %.pr13.i, %thread-pre-split.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..pr.i, %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i ] ; 2 uses
  %.pr13.i = load ptr, ptr %i.u, align 8, !tbaa !94 ; 2 uses
  %.not14.i.i = icmp eq ptr %.pr13.i, null
  br i1 %.not14.i.i, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE15_M_splice_afterESt24_Fwd_list_const_iteratorIS6_ESA_SA_.exit.i, label %thread-pre-split.i, !llvm.loop !200

.body.i:                                          ; preds = %.lr.ph.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  resume { ptr, i32 } %i.r

_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE15_M_splice_afterESt24_Fwd_list_const_iteratorIS6_ESA_SA_.exit.i: ; preds = %thread-pre-split.i
  %i.v = load ptr, ptr %.sroa.013.0.lcssa, align 8, !tbaa !94
  store ptr %i.v, ptr %i.u, align 8, !tbaa !94
  store ptr %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..pr.i, ptr %.sroa.013.0.lcssa, align 8, !tbaa !94
  br label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE12insert_afterISt24_Fwd_list_const_iteratorIS6_EvEESt18_Fwd_list_iteratorIS6_ESB_T_SE_.exit

_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE12insert_afterISt24_Fwd_list_const_iteratorIS6_EvEESt18_Fwd_list_iteratorIS6_ESB_T_SE_.exit: ; preds = %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EEC2ISt24_Fwd_list_const_iteratorIS6_EvEET_SC_RKS7_.exit.i, %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE15_M_splice_afterESt24_Fwd_list_const_iteratorIS6_ESA_SA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.e

.critedge.thread:                                 ; preds = %.lr.ph
  %i.w = load ptr, ptr %.sroa.013.025, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.w, null
  br i1 %.not12.i.i, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE11erase_afterESt24_Fwd_list_const_iteratorIS6_ESA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.thread, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.w, %.critedge.thread ] ; 2 uses
  %i.x = load ptr, ptr %.013.i.i, align 8, !tbaa !94 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i, i64 noundef 24) #16
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE11erase_afterESt24_Fwd_list_const_iteratorIS6_ESA_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE11erase_afterESt24_Fwd_list_const_iteratorIS6_ESA_.exit: ; preds = %.lr.ph.i.i, %.critedge.thread
  store ptr null, ptr %.sroa.013.025, align 8, !tbaa !94
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE11erase_afterESt24_Fwd_list_const_iteratorIS6_ESA_.exit, %_ZNSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE12insert_afterISt24_Fwd_list_const_iteratorIS6_EvEESt18_Fwd_list_iteratorIS6_ESB_T_SE_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 31
  switch i8 %2, label %bb.e [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.c = load i16, ptr %i.b, align 1, !tbaa !18   ; 2 uses
  %i.d = and i16 %i.c, 7
  %.not14.i = icmp eq i16 %i.d, 0
  br i1 %.not14.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.f = load i16, ptr %i.e, align 1, !tbaa !18   ; 2 uses
  %i.g = and i16 %i.f, 7
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = load i16, ptr %i.a, align 1, !tbaa !18   ; 2 uses
  %i.i = and i16 %i.h, 7
  %.not15.i = icmp eq i16 %i.i, 0
  br i1 %.not15.i, label %bb.f, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 43 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !18
  %i.l = and i16 %i.k, 7
  %.not16.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 47
  %spec.select.i = select i1 %.not16.i, ptr %i.m, ptr %i.j
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.o = load i16, ptr %i.n, align 1, !tbaa !18
  %i.p = and i16 %i.o, 7
  %.not.i3 = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 45 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = and i16 %i.r, 7
  %.not7.i = icmp eq i16 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 47
  %spec.select.i4 = select i1 %.not7.i, ptr %i.t, ptr %i.q
  %.sroa.0.0.in.i = select i1 %.not.i3, ptr %spec.select.i4, ptr %i.n
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split

bb.h:                                             ; preds = %bb.a
  switch i8 %2, label %bb.k [
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.v = load i16, ptr %i.u, align 1, !tbaa !18   ; 2 uses
  %i.w = and i16 %i.v, 7
  %.not14.i12 = icmp eq i16 %i.w, 0
  br i1 %.not14.i12, label %bb.k, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.y = load i16, ptr %i.x, align 1, !tbaa !18   ; 2 uses
  %i.z = and i16 %i.y, 7
  %.not.i6 = icmp eq i16 %i.z, 0
  br i1 %.not.i6, label %bb.k, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !18 ; 2 uses
  %i.ac = and i16 %i.ab, 7
  %.not15.i8 = icmp eq i16 %i.ac, 0
  br i1 %.not15.i8, label %bb.l, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 43 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !18
  %i.af = and i16 %i.ae, 7
  %.not16.i9 = icmp eq i16 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 47
  %spec.select.i10 = select i1 %.not16.i9, ptr %i.ag, ptr %i.ad
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split

bb.m:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !18
  %i.aj = and i16 %i.ai, 7
  %.not.i13 = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 45 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = and i16 %i.al, 7
  %.not7.i14 = icmp eq i16 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 47
  %spec.select.i15 = select i1 %.not7.i14, ptr %i.an, ptr %i.ak
  %.sroa.0.0.in.i16 = select i1 %.not.i13, ptr %spec.select.i15, ptr %i.ah
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split: ; preds = %bb.g, %bb.m, %bb.f, %bb.l
  %spec.select.i10.sink = phi ptr [ %spec.select.i10, %bb.l ], [ %spec.select.i, %bb.f ], [ %.sroa.0.0.in.i16, %bb.m ], [ %.sroa.0.0.in.i, %bb.g ]
  %.sroa.0.0.pre.i11 = load i16, ptr %spec.select.i10.sink, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit: ; preds = %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split, %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i16 [ %i.ab, %bb.k ], [ %i.v, %bb.i ], [ %i.h, %bb.e ], [ %i.y, %bb.j ], [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.0.0.pre.i11, %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split ]
  ret i16 %.sroa.0.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { noreturn }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { "function-inline-cost-multiplier"="2" }
attributes #18 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !78}
!1 = distinct !{!1, !78}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN8facebook4yoga10SizingModeE", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN8facebook4yoga16StyleValueHandleE", !11, i64 0}
!18 = !{!17, !11, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"any p2 pointer", !20, i64 0}
!22 = !{!"p2 _ZTSN8facebook4yoga4NodeE", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTSN8facebook4yoga4NodeE", !20, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"bool", !7, i64 0}
!27 = !{!"_ZTSN8facebook4yoga8NodeTypeE", !7, i64 0}
!28 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !15, i64 0}
!29 = !{!"_ZTSN8facebook4yoga9DirectionE", !7, i64 0}
!30 = !{!"_ZTSN8facebook4yoga13FlexDirectionE", !7, i64 0}
!31 = !{!"_ZTSN8facebook4yoga7JustifyE", !7, i64 0}
!32 = !{!"_ZTSN8facebook4yoga5AlignE", !7, i64 0}
!33 = !{!"_ZTSN8facebook4yoga12PositionTypeE", !7, i64 0}
!34 = !{!"_ZTSN8facebook4yoga4WrapE", !7, i64 0}
!35 = !{!"_ZTSN8facebook4yoga8OverflowE", !7, i64 0}
!36 = !{!"_ZTSN8facebook4yoga7DisplayE", !7, i64 0}
!37 = !{!"_ZTSN8facebook4yoga9BoxSizingE", !7, i64 0}
!38 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm9EE", !7, i64 0}
!39 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm3EE", !7, i64 0}
!40 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm2EE", !7, i64 0}
!41 = !{!"p1 _ZTSN8facebook4yoga13GridTrackSizeE", !20, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EE", !44, i64 0}
!46 = !{!"_ZTSN8facebook4yoga12GridLineTypeE", !7, i64 0}
!47 = !{!"_ZTSN8facebook4yoga8GridLineE", !46, i64 0, !8, i64 4}
!48 = !{!"_ZTSSt5arrayIjLm4EE", !7, i64 0}
!49 = !{!"long", !7, i64 0}
!50 = !{!"_ZTSSt12_Base_bitsetILm1EE", !49, i64 0}
!51 = !{!"_ZTSSt6bitsetILm4EE", !50, i64 0}
!52 = !{!"p1 _ZTSN8facebook4yoga16SmallValueBufferILm4EE8OverflowE", !20, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook4yoga16SmallValueBufferILm4EE8OverflowELb0EE", !52, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !53, i64 0}
!55 = !{!"_ZTSSt5tupleIJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !55, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_ELb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !57, i64 0}
!59 = !{!"_ZTSN8facebook4yoga16SmallValueBufferILm4EEE", !11, i64 0, !48, i64 4, !51, i64 24, !58, i64 32}
!60 = !{!"_ZTSN8facebook4yoga14StyleValuePoolE", !59, i64 0}
!61 = !{!"_ZTSN8facebook4yoga5StyleE", !29, i64 0, !30, i64 0, !31, i64 0, !31, i64 1, !31, i64 1, !32, i64 2, !32, i64 2, !32, i64 3, !33, i64 3, !34, i64 3, !35, i64 4, !36, i64 4, !37, i64 4, !17, i64 5, !17, i64 7, !17, i64 9, !17, i64 11, !38, i64 13, !38, i64 31, !38, i64 49, !38, i64 67, !39, i64 85, !40, i64 91, !40, i64 95, !40, i64 99, !17, i64 103, !45, i64 112, !45, i64 136, !45, i64 160, !45, i64 184, !47, i64 208, !47, i64 216, !47, i64 224, !47, i64 232, !60, i64 240}
!62 = !{!"_ZTSSt5arrayIN8facebook4yoga17CachedMeasurementELm8EE", !7, i64 0}
!63 = !{!"_ZTSN8facebook4yoga17CachedMeasurementE", !15, i64 0, !15, i64 4, !13, i64 8, !13, i64 12, !15, i64 16, !15, i64 20}
!64 = !{!"_ZTSSt5arrayIfLm2EE", !7, i64 0}
!65 = !{!"_ZTSSt5arrayIfLm4EE", !7, i64 0}
!66 = !{!"_ZTSN8facebook4yoga13LayoutResultsE", !8, i64 0, !28, i64 4, !28, i64 8, !8, i64 12, !8, i64 16, !29, i64 20, !8, i64 24, !62, i64 28, !63, i64 220, !29, i64 244, !26, i64 244, !64, i64 248, !64, i64 256, !64, i64 264, !65, i64 272, !65, i64 288, !65, i64 304, !65, i64 320}
!67 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorIPN8facebook4yoga4NodeESaIS3_EE", !69, i64 0}
!71 = !{!"p1 _ZTSN8facebook4yoga6ConfigE", !20, i64 0}
!72 = !{!"_ZTSSt5arrayIN8facebook4yoga15StyleSizeLengthELm2EE", !7, i64 0}
!73 = !{!"_ZTSN8facebook4yoga4NodeE", !26, i64 0, !26, i64 0, !26, i64 0, !26, i64 0, !27, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !28, i64 32, !28, i64 36, !20, i64 40, !20, i64 48, !61, i64 56, !66, i64 336, !49, i64 672, !49, i64 680, !24, i64 688, !70, i64 696, !71, i64 720, !72, i64 728}
!74 = !{!73, !49, i64 680}
!75 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!76 = !{!73, !71, i64 720}
!77 = !{!73, !20, i64 16}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!7, !7, i64 0}
!80 = !{!"_ZTSSt5arrayIiLm9EE", !7, i64 0}
!81 = !{!"_ZTSN8facebook4yoga10LayoutDataE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !80, i64 24}
!82 = !{!"_ZTSN8facebook4yoga5Event4DataE", !20, i64 0}
!83 = !{!82, !20, i64 0}
!84 = !{!67, !22, i64 8}
!85 = !{!67, !22, i64 0}
!86 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !20, i64 0}
!87 = !{!"_ZTSSt19_Fwd_list_node_base", !86, i64 0}
!88 = !{!"_ZTSNSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE14_Fwd_list_implE", !87, i64 0}
!89 = !{!"_ZTSSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !88, i64 0}
!90 = !{!"_ZTSSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !89, i64 0}
!91 = !{!"_ZTSN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorE", !24, i64 0, !49, i64 8, !90, i64 16}
!92 = !{!91, !24, i64 0}
!93 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!94 = !{!87, !86, i64 0}
!95 = !{!91, !49, i64 8}
!96 = !{!89, !86, i64 0}
!97 = !{!"_ZTSSt4pairIPKN8facebook4yoga4NodeEmE", !24, i64 0, !49, i64 8}
!98 = !{!97, !24, i64 0}
!99 = !{!97, !49, i64 8}
!100 = !{ptr @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv}
!101 = !{!52, !52, i64 0}
!102 = !{!"p1 int", !20, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 8}
!105 = !{!103, !102, i64 0}
!106 = !{!73, !20, i64 24}
!107 = distinct !{!107, !78}
!108 = distinct !{!108, !78}
!109 = !{!66, !8, i64 12}
!110 = !{!66, !8, i64 16}
!111 = !{!66, !29, i64 20}
!112 = !{!66, !8, i64 24}
!113 = !{!66, !13, i64 228}
!114 = !{!66, !13, i64 232}
!115 = !{!66, !15, i64 220}
!116 = !{!66, !15, i64 224}
!117 = !{!66, !15, i64 236}
!118 = !{!66, !15, i64 240}
!119 = !{!63, !13, i64 8}
!120 = !{!63, !15, i64 0}
!121 = !{!63, !13, i64 12}
!122 = !{!63, !15, i64 4}
!123 = !{!63, !15, i64 16}
!124 = !{!63, !15, i64 20}
!125 = !{!81, !8, i64 8}
!126 = !{!"_ZTSN8facebook4yoga10LayoutTypeE", !7, i64 0}
!127 = !{!"_ZTSN8facebook4yoga5Event9TypedDataILNS1_4TypeE2EEE", !126, i64 0}
!128 = !{!127, !126, i64 0}
!129 = distinct !{!129, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!130 = distinct !{!130, !129, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!131 = distinct !{null}
!132 = distinct !{!132, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!133 = distinct !{!133, !132, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!134 = distinct !{null, null}
!135 = distinct !{!135, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!136 = distinct !{!136, !135, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!137 = distinct !{null, null}
!138 = distinct !{!138, !78}
!139 = distinct !{!139, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!140 = distinct !{!140, !139, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!141 = distinct !{!141, !78}
!142 = distinct !{!142, !"_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi"}
!143 = distinct !{!143, !142, !"_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi: argument 0"}
!144 = distinct !{!144, !78}
!145 = distinct !{!145, !78}
!146 = distinct !{!146, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!147 = distinct !{!147, !146, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!148 = distinct !{!148, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!149 = distinct !{!149, !148, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!150 = !{!81, !8, i64 20}
!151 = !{!"_ZTS13YGMeasureMode", !7, i64 0}
!152 = !{!"_ZTSN8facebook4yoga16LayoutPassReasonE", !7, i64 0}
!153 = !{!"_ZTSN8facebook4yoga5Event9TypedDataILNS1_4TypeE6EEE", !15, i64 0, !151, i64 4, !15, i64 8, !151, i64 12, !15, i64 16, !15, i64 20, !152, i64 24}
!154 = !{!153, !15, i64 0}
!155 = !{!153, !151, i64 4}
!156 = !{!153, !15, i64 8}
!157 = !{!153, !151, i64 12}
!158 = !{!153, !152, i64 24}
!159 = !{!130}
!160 = !{!133}
!161 = !{!28, !15, i64 0}
!162 = !{!66, !8, i64 0}
!163 = !{!136}
!164 = !{!"_ZTSN8facebook4yoga21FlexLineRunningLayoutE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16}
!165 = !{!"_ZTSN8facebook4yoga8FlexLineE", !70, i64 0, !15, i64 24, !49, i64 32, !164, i64 40}
!166 = !{!165, !15, i64 40}
!167 = !{!165, !15, i64 24}
!168 = !{!165, !15, i64 48}
!169 = !{!165, !15, i64 44}
!170 = !{!165, !49, i64 32}
!171 = !{!165, !15, i64 52}
!172 = !{!165, !15, i64 56}
!173 = !{!67, !22, i64 16}
!174 = !{!140}
!175 = !{!73, !49, i64 672}
end_hunk_1
