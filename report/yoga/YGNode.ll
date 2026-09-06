Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/YGNode?download=true
inline.NumInlined: 495
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@YGNodeSetMinContentHeight:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %1, ptr %i.a, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @YGNodeGetMinContentWidth(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load float, ptr %i.a, align 8, !tbaa !83 ; 2 uses
  %i.b = fcmp uno float %.sroa.0.0.copyload.i, 0.000000e+00
  %i.c = select i1 %i.b, float +qnan, float %.sroa.0.0.copyload.i
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @YGNodeGetMinContentHeight(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.0.0.copyload.i = load float, ptr %i.a, align 4, !tbaa !83 ; 2 uses
  %i.b = fcmp uno float %.sroa.0.0.copyload.i, 0.000000e+00
  %i.c = select i1 %i.b, float +qnan, float %.sroa.0.0.copyload.i
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @YGNodeSetBaselineFunc(ptr nofree noundef writeonly captures(none) initializes((40, 48)) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @YGNodeHasBaselineFunc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @YGNodeSetIsReferenceBaseline(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = and i8 %i.a, 2
  %i.c = icmp ne i8 %i.b, 0
  %i.d = xor i1 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = select i1 %1, i8 2, i8 0
  %i.f = and i8 %i.a, -3
  %i.g = or disjoint i8 %i.f, %i.e
  store i8 %i.g, ptr %0, align 8
  tail call void @_ZN8facebook4yoga4Node21markDirtyAndPropagateEv(ptr noundef nonnull align 8 dereferenceable(744) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @YGNodeIsReferenceBaseline(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = and i8 %i.a, 2
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @YGNodeSetNodeType(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = load i8, ptr %0, align 8
  %i.c = shl i8 %i.a, 4
  %i.d = and i8 %i.c, 16
  %i.e = and i8 %i.b, -17
  %i.f = or disjoint i8 %i.e, %i.d
  store i8 %i.f, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @YGNodeGetNodeType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = lshr i8 %i.a, 4
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @YGNodeSetAlwaysFormsContainingBlock(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = select i1 %1, i8 8, i8 0
  %i.c = and i8 %i.a, -9
  %i.d = or disjoint i8 %i.c, %i.b
  store i8 %i.d, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @YGNodeGetAlwaysFormsContainingBlock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = and i8 %i.a, 8
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @YGNodeCanUseCachedMeasurement(i32 noundef %0, float noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %0 to i8
  %i.b = icmp ult i8 %i.a, 3
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.6) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %.mask = and i32 %0, 3
  %i.c = zext nneg i32 %.mask to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.YGNodeCanUseCachedMeasurement.3, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.d = trunc i32 %2 to i8
  %i.e = icmp ult i8 %i.d, 3
  br i1 %i.e, label %switch.lookup22, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.6) #18
  unreachable

switch.lookup22:                                  ; preds = %switch.lookup
  %.mask30 = and i32 %2, 3
  %i.f = zext nneg i32 %.mask30 to i64
  %switch.gep23 = getelementptr inbounds nuw i8, ptr @switch.table.YGNodeCanUseCachedMeasurement.3, i64 %i.f
  %switch.load24 = load i8, ptr %switch.gep23, align 1
  %i.g = trunc i32 %4 to i8
  %i.h = icmp ult i8 %i.g, 3
  br i1 %i.h, label %switch.lookup18, label %bb.d

bb.d:                                             ; preds = %switch.lookup22
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.6) #18
  unreachable

switch.lookup18:                                  ; preds = %switch.lookup22
  %i.i = trunc i32 %6 to i8
  %i.j = icmp ult i8 %i.i, 3
  br i1 %i.j, label %switch.lookup26, label %bb.e

bb.e:                                             ; preds = %switch.lookup18
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.6) #18
  unreachable

switch.lookup26:                                  ; preds = %switch.lookup18
  %.mask31 = and i32 %4, 3
  %i.k = zext nneg i32 %.mask31 to i64
  %switch.gep19 = getelementptr inbounds nuw i8, ptr @switch.table.YGNodeCanUseCachedMeasurement.3, i64 %i.k
  %switch.load20 = load i8, ptr %switch.gep19, align 1
  %switch.ext21 = zext i8 %switch.load20 to i32
  %switch.ext25 = zext i8 %switch.load24 to i32
  %switch.ext = zext i8 %switch.load to i32
  %.mask32 = and i32 %6, 3
  %i.l = zext nneg i32 %.mask32 to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table.YGNodeCanUseCachedMeasurement.3, i64 %i.l
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext29 = zext i8 %switch.load28 to i32
  %i.m = tail call noundef zeroext i1 @_ZN8facebook4yoga23canUseCachedMeasurementENS0_10SizingModeEfS1_fS1_fS1_fffffPKNS0_6ConfigE(i32 noundef %switch.ext, float noundef %1, i32 noundef %switch.ext25, float noundef %3, i32 noundef %switch.ext21, float noundef %5, i32 noundef %switch.ext29, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr noundef %12)
  ret i1 %i.m
}

declare noundef zeroext i1 @_ZN8facebook4yoga23canUseCachedMeasurementENS0_10SizingModeEfS1_fS1_fS1_fffffPKNS0_6ConfigE(i32 noundef, float noundef, i32 noundef, float noundef, i32 noundef, float noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook4yoga5StyleC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(105) %1, i64 105, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i, !prof !20

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !91
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !117
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.p
  br i1 %i.t, label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !111

_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112  ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !90   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i15, label %.noexc22, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EEC2ERKS4_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %.noexc.i.i21, label %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i16, !prof !20

.noexc.i.i21:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i21
  unreachable

_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i16: ; preds = %bb.d
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #15
          to label %.noexc22 unwind label %bb.g

.noexc22:                                         ; preds = %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i16, %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EEC2ERKS4_.exit
  %i.ae = phi ptr [ null, %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EEC2ERKS4_.exit ], [ %i.ad, %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i16 ] ; 5 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !112
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !91
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !113 ; 2 uses
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !113 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %.loopexit51, label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %.noexc22, %.lr.ph.i.i.i.i.i17
  %.08.i.i.i.i.i18 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i17 ], [ %i.ae, %.noexc22 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i19 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i17 ], [ %i.ai, %.noexc22 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i18, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i19, i64 28, i1 false), !tbaa.struct !117
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i19, i64 28 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i18, i64 28 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.aj
  br i1 %i.an, label %.loopexit51, label %.lr.ph.i.i.i.i.i17, !llvm.loop !111

.loopexit51:                                      ; preds = %.lr.ph.i.i.i.i.i17, %.noexc22
  %.0.lcssa.i.i.i.i.i20 = phi ptr [ %i.ae, %.noexc22 ], [ %i.am, %.lr.ph.i.i.i.i.i17 ]
  store ptr %.0.lcssa.i.i.i.i.i20, ptr %i.af, align 8, !tbaa !112
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %.not.i.i.i.i24 = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i.i.i24, label %.noexc32, label %bb.e

bb.e:                                             ; preds = %.loopexit51
  %i.aw = icmp ugt i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %.noexc.i.i30, label %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i25, !prof !20

.noexc.i.i30:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc31 unwind label %bb.h

.noexc31:                                         ; preds = %.noexc.i.i30
  unreachable

_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i25: ; preds = %bb.e
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #15
          to label %.noexc32 unwind label %bb.h

.noexc32:                                         ; preds = %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i25, %.loopexit51
  %i.ay = phi ptr [ null, %.loopexit51 ], [ %i.ax, %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i25 ] ; 5 uses
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !91
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !113 ; 2 uses
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !113 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %.loopexit50, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.noexc32, %.lr.ph.i.i.i.i.i26
  %.08.i.i.i.i.i27 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i26 ], [ %i.ay, %.noexc32 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i28 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i26 ], [ %i.bc, %.noexc32 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i27, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i28, i64 28, i1 false), !tbaa.struct !117
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i28, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 28 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bd
  br i1 %i.bh, label %.loopexit50, label %.lr.ph.i.i.i.i.i26, !llvm.loop !111

.loopexit50:                                      ; preds = %.lr.ph.i.i.i.i.i26, %.noexc32
  %.0.lcssa.i.i.i.i.i29 = phi ptr [ %i.ay, %.noexc32 ], [ %i.bg, %.lr.ph.i.i.i.i.i26 ]
  store ptr %.0.lcssa.i.i.i.i.i29, ptr %i.az, align 8, !tbaa !112
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !112 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %.not.i.i.i.i34 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i.i34, label %.noexc42, label %bb.f

bb.f:                                             ; preds = %.loopexit50
  %i.bq = icmp ugt i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %.noexc.i.i40, label %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i35, !prof !20

.noexc.i.i40:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc41 unwind label %bb.i

.noexc41:                                         ; preds = %.noexc.i.i40
  unreachable

_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i35: ; preds = %bb.f
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #15
          to label %.noexc42 unwind label %bb.i

.noexc42:                                         ; preds = %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i35, %.loopexit50
  %i.bs = phi ptr [ null, %.loopexit50 ], [ %i.br, %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i35 ] ; 5 uses
  store ptr %i.bs, ptr %i.bi, align 8, !tbaa !90
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !112
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !91
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !113 ; 2 uses
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !113 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.loopexit, label %.lr.ph.i.i.i.i.i36

.lr.ph.i.i.i.i.i36:                               ; preds = %.noexc42, %.lr.ph.i.i.i.i.i36
  %.08.i.i.i.i.i37 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i36 ], [ %i.bs, %.noexc42 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i38 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i36 ], [ %i.bw, %.noexc42 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.08.i.i.i.i.i37, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.07.i.i.i.i.i38, i64 28, i1 false), !tbaa.struct !117
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i38, i64 28 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i37, i64 28 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.bx
  br i1 %i.cb, label %.loopexit, label %.lr.ph.i.i.i.i.i36, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i36, %.noexc42
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %i.bs, %.noexc42 ], [ %i.ca, %.lr.ph.i.i.i.i.i36 ]
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.bt, align 8, !tbaa !112
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i16 0, ptr %i.ce, align 8, !tbaa !92
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN8facebook4yoga16SmallValueBufferILm4EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(40) %i.cf)
          to label %_ZN8facebook4yoga14StyleValuePoolC2ERKS1_.exit unwind label %.body ; 0 uses

.body:                                            ; preds = %.loopexit
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ck) #17
  %i.cl = load ptr, ptr %i.bi, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit, label %bb.j

_ZN8facebook4yoga14StyleValuePoolC2ERKS1_.exit:   ; preds = %.loopexit
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i16, %.noexc.i.i21
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit47

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i25, %.noexc.i.i30
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit45

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIN8facebook4yoga13GridTrackSizeEE8allocateEmPKv.exit.i.i.i.i35, %.noexc.i.i40
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit

bb.j:                                             ; preds = %.body
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !91
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cl to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cs) #16
  br label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit

_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit: ; preds = %bb.j, %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %i.co, %bb.i ], [ %i.cj, %.body ], [ %i.cj, %bb.j ] ; 2 uses
  %i.ct = load ptr, ptr %i.ao, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit45, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit
  %i.cu = load ptr, ptr %i.bb, align 8, !tbaa !91
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #16
  br label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit45

_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit45: ; preds = %bb.k, %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.h ], [ %.pn, %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit ], [ %.pn, %bb.k ] ; 2 uses
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !90  ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit47, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit45
  %i.cz = load ptr, ptr %i.ah, align 8, !tbaa !91
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #16
  br label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit47

_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit47: ; preds = %bb.l, %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit45, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.g ], [ %.pn.pn, %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit45 ], [ %.pn.pn, %bb.l ]
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !90  ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit49, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit47
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !91
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #16
  br label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit49

_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit49: ; preds = %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit47, %bb.m
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook4yoga5StyleD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8facebook4yoga14StyleValuePoolD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #16
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i:   ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !102  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEEclEPS4_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #16
  br label %_ZNKSt14default_deleteIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEEclEPS4_.exit.i.i.i

_ZNKSt14default_deleteIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEEclEPS4_.exit.i.i.i: ; preds = %bb.d, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #16
  br label %_ZN8facebook4yoga14StyleValuePoolD2Ev.exit

_ZN8facebook4yoga14StyleValuePoolD2Ev.exit:       ; preds = %bb.a, %_ZNKSt14default_deleteIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEEclEPS4_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook4yoga14StyleValuePoolD2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #16
  br label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit

_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit: ; preds = %_ZN8facebook4yoga14StyleValuePoolD2Ev.exit, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !90  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !91
end_hunk_0
