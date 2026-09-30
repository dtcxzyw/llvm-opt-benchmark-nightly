Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN10ImDrawList19_OnChangedVtxOffsetEv:bb.a
  %.sroa.0.i.sroa.0.0.copyload = load <4 x float>, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i32, ptr %i.l, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !30
  %i.r = icmp eq i32 %i.d, %i.q
  br i1 %i.r, label %bb.c, label %_ZN10ImDrawList10AddDrawCmdEv.exit

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.d, 1
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sdiv i32 %i.d, 2
  %i.u = add nsw i32 %i.t, %i.d
  br label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.v = phi i32 [ %i.u, %bb.d ], [ 8, %bb.c ]
  %i.w = tail call noundef i32 @llvm.smax.i32(i32 %i.v, i32 %i.s) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, 56
  %i.z = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.y) ; 3 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  %i.ab = load i32, ptr %0, align 8, !tbaa !32
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !31
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  store ptr %i.z, ptr %i.b, align 8, !tbaa !31
  store i32 %i.w, ptr %i.p, align 4, !tbaa !30
  %.pre3.i.i = load i32, ptr %0, align 8, !tbaa !32
  %.pre = sext i32 %.pre3.i.i to i64
  br label %_ZN10ImDrawList10AddDrawCmdEv.exit

_ZN10ImDrawList10AddDrawCmdEv.exit:               ; preds = %bb.b, %bb.f
  %.pre-phi = phi i64 [ %i.e, %bb.b ], [ %.pre, %bb.f ]
  %i.af = phi ptr [ %i.c, %bb.b ], [ %i.z, %bb.f ]
  %i.ag = getelementptr inbounds [56 x i8], ptr %i.af, i64 %.pre-phi ; 5 uses
  store <4 x float> %.sroa.0.i.sroa.0.0.copyload, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 %i.o, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.ah = load i32, ptr %0, align 8, !tbaa !32
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %0, align 8, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !75
  %i.al = getelementptr i8, ptr %i.f, i64 -32
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !285
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN10ImDrawList10AddDrawCmdEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local noundef range(i32 0, 513) i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(196) %0, float noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = fadd float %1, f0x3F7FFFEF
  %i.b = fptosi float %i.a to i32                 ; 2 uses
  %i.c = icmp slt i32 %i.b, 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !26
  %i.j = zext i8 %i.i to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load float, ptr %i.k, align 8, !tbaa !25 ; 2 uses
  %i.m = fcmp olt float %i.l, %1
  %i.n = select i1 %i.m, float %i.l, float %1
  %i.o = fdiv float %i.n, %1
  %i.p = fsub float 1.000000e+00, %i.o
  %i.q = tail call float @acosf(float noundef %i.p) #40
  %i.r = fdiv float f0x40490FDB, %i.q
  %i.s = tail call float @llvm.ceil.f32(float %i.r)
  %i.t = fptosi float %i.s to i32
  %i.u = add nsw i32 %i.t, 1
  %i.v = sdiv i32 %i.u, 2
  %i.w = shl nsw i32 %i.v, 1
  %i.x = tail call i32 @llvm.smax.i32(i32 %i.w, i32 4)
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.x, i32 512)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.y, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList12PushClipRectE6ImVec2S0_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, <2 x float> %1, <2 x float> %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.05.4.vec.extract = extractelement <2 x float> %2, i64 1
  %.sroa.05.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  %i.b = load <2 x float>, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.c = fcmp olt <2 x float> %1, %i.b
  %i.d = select <2 x i1> %i.c, <2 x float> %i.b, <2 x float> %1 ; 2 uses
  %i.e = fcmp ogt float %.sroa.05.0.vec.extract, %.sroa.7.0.copyload
  %.sroa.12.0 = select i1 %i.e, float %.sroa.7.0.copyload, float %.sroa.05.0.vec.extract
  %i.f = fcmp ogt float %.sroa.05.4.vec.extract, %.sroa.9.0.copyload
  %i.g = insertelement <2 x float> %2, float %.sroa.12.0, i64 0 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = insertelement <2 x float> %i.g, float %.sroa.9.0.copyload, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.i = phi <2 x float> [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %i.j = phi <2 x float> [ %i.h, %bb.c ], [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  br label %_ZN8ImVectorI6ImVec4E9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.l, 1
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sdiv i32 %i.l, 2
  %i.r = add nsw i32 %i.q, %i.l
  br label %_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i:  ; preds = %bb.f, %bb.e
  %i.s = phi i32 [ %i.r, %bb.f ], [ 8, %bb.e ]
  %i.t = tail call noundef i32 @llvm.smax.i32(i32 %i.s, i32 %i.p) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 4
  %i.w = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.v) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.y, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i
  %i.z = load i32, ptr %i.k, align 8, !tbaa !60
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.w, ptr nonnull align 4 %i.y, i64 %i.ab, i1 false)
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !59
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ac)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i
  store ptr %i.w, ptr %i.x, align 8, !tbaa !59
  store i32 %i.t, ptr %i.m, align 4, !tbaa !58
  %.pre3.i = load i32, ptr %i.k, align 8, !tbaa !60
  br label %_ZN8ImVectorI6ImVec4E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec4E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i, %bb.h
  %i.ad = phi i32 [ %i.l, %._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.ae = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i ], [ %i.w, %bb.h ]
  %i.af = fcmp oge <2 x float> %i.i, %i.j
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.ag
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.12.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = select <2 x i1> %i.af, <2 x float> %i.i, <2 x float> %i.j ; 2 uses
  %5 = shufflevector <2 x float> %i.i, <2 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %i.ah, align 4
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !60
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !60
  store <2 x float> %i.i, ptr %4, align 8, !tbaa !15
  store <2 x float> %i.ai, ptr %.sroa.12.0..sroa_idx13, align 8, !tbaa !15
  tail call void @_ZN10ImDrawList18_OnChangedClipRectEv(ptr noundef nonnull align 8 dereferenceable(196) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList22PushClipRectFullScreenEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !15
  tail call void @_ZN10ImDrawList12PushClipRectE6ImVec2S0_b(ptr noundef nonnull align 8 dereferenceable(196) %0, <2 x float> %i.d, <2 x float> %i.f, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList11PopClipRectEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) initializes((136, 152)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = add nsw i32 %i.b, -1                     ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !60
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = sext i32 %i.c to i64
  %i.k = getelementptr [16 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %i.m = select i1 %i.d, ptr %i.g, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !16
  tail call void @_ZN10ImDrawList18_OnChangedClipRectEv(ptr noundef nonnull align 8 dereferenceable(196) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList13PushTextureIDEPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) initializes((152, 160)) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i:     ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  br label %_ZN8ImVectorIPvE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sdiv i32 %i.b, 2
  %i.h = add nsw i32 %i.g, %i.b
  br label %_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i

_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i:       ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %i.h, %bb.c ], [ 8, %bb.b ]
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %i.f) ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i
  %i.p = load i32, ptr %i.a, align 8, !tbaa !63
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr nonnull align 8 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !62
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorIPvE14_grow_capacityEi.exit.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !62
  store i32 %i.j, ptr %i.c, align 4, !tbaa !61
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !63
  br label %_ZN8ImVectorIPvE9push_backERKS0_.exit

_ZN8ImVectorIPvE9push_backERKS0_.exit:            ; preds = %._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i, %bb.e
  %i.t = phi i32 [ %i.b, %._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i, %._ZN8ImVectorIPvE7reserveEi.exit_crit_edge.i ], [ %i.m, %bb.e ]
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = load i32, ptr %i.a, align 8, !tbaa !63
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.a, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %1, ptr %i.aa, align 8, !tbaa !74
  tail call void @_ZN10ImDrawList19_OnChangedTextureIDEv(ptr noundef nonnull align 8 dereferenceable(196) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList12PopTextureIDEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) initializes((152, 160)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  %i.c = add nsw i32 %i.b, -1                     ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !63
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = sext i32 %i.c to i64
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %i.l, align 8, !tbaa !74
  tail call void @_ZN10ImDrawList19_OnChangedTextureIDEv(ptr noundef nonnull align 8 dereferenceable(196) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList11PrimReserveEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = add i32 %i.b, %2
  %i.d = icmp ugt i32 %i.c, 65535
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = and i32 %i.f, 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.i, ptr %i.j, align 8, !tbaa !75
  tail call void @_ZN10ImDrawList19_OnChangedVtxOffsetEv(ptr noundef nonnull align 8 dereferenceable(196) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = load i32, ptr %0, align 8, !tbaa !77
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [56 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -24      ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !80
  %i.r = add i32 %i.q, %1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !84   ; 2 uses
  %i.u = add nsw i32 %i.t, %2                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40   ; 4 uses
  %i.x = icmp sgt i32 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %._ZN8ImVectorI10ImDrawVertE6resizeEi.exit_crit_edge

._ZN8ImVectorI10ImDrawVertE6resizeEi.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = sdiv i32 %i.w, 2
  %i.z = add nsw i32 %i.y, %i.w
  br label %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i

_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i: ; preds = %bb.f, %bb.e
  %i.aa = phi i32 [ %i.z, %bb.f ], [ 8, %bb.e ]
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 %i.u) ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, 20
  %i.ae = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ad) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ag, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g
end_hunk_0
