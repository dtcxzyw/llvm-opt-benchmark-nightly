Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList17_OnChangedTextureEv:bb.a
  br i1 %i.ax, label %bb.k, label %.thread14

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.e, i64 -108
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !94
  %i.ba = getelementptr i8, ptr %i.e, i64 -104
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !91
  %i.bc = add i32 %i.bb, %i.az
  %i.bd = getelementptr i8, ptr %i.e, i64 -36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !94
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.l, label %.thread14

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr i8, ptr %i.e, i64 -96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !93
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.m, label %.thread14

bb.m:                                             ; preds = %bb.l
  %i.bj = add nsw i32 %i.c, -1
  store i32 %i.bj, ptr %0, align 8, !tbaa !69
  br label %bb.n

.thread14:                                        ; preds = %.thread, %bb.l, %bb.k, %bb.j, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = getelementptr i8, ptr %i.e, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !108
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %.thread14, %bb.h, %_ZN10ImDrawList10AddDrawCmdEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList19_OnChangedVtxOffsetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) initializes((52, 56)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.i = alloca { %struct.ImVec4, %struct.ImTextureRef }, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.a, align 4, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !89     ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr [72 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !91
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !108
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load i32, ptr %i.k, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !68
  %i.q = icmp eq i32 %i.d, %i.p
  br i1 %i.q, label %bb.c, label %_ZN10ImDrawList10AddDrawCmdEv.exit

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %i.d, 1
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sdiv i32 %i.d, 2
  %i.t = add nsw i32 %i.s, %i.d
  br label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ %i.t, %bb.d ], [ 8, %bb.c ]
  %i.v = tail call noundef i32 @llvm.smax.i32(i32 %i.u, i32 %i.r) ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 72
  %i.y = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.x) ; 3 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  %i.aa = load i32, ptr %0, align 8, !tbaa !69
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.z, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !67
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  store ptr %i.y, ptr %i.b, align 8, !tbaa !67
  store i32 %i.v, ptr %i.o, align 4, !tbaa !68
  %.pre3.i.i = load i32, ptr %0, align 8, !tbaa !69
  %.pre = sext i32 %.pre3.i.i to i64
  br label %_ZN10ImDrawList10AddDrawCmdEv.exit

_ZN10ImDrawList10AddDrawCmdEv.exit:               ; preds = %bb.b, %bb.f
  %.pre-phi = phi i64 [ %i.e, %bb.b ], [ %.pre, %bb.f ]
  %i.ae = phi ptr [ %i.c, %bb.b ], [ %i.y, %bb.f ]
  %i.af = getelementptr inbounds [72 x i8], ptr %i.ae, i64 %.pre-phi ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store i32 %i.n, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %i.ag = load i32, ptr %0, align 8, !tbaa !69
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !111
  %i.ak = getelementptr i8, ptr %i.f, i64 -40
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !233
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN10ImDrawList10AddDrawCmdEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define noundef range(i32 0, 513) i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, float noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = fadd float %1, 9.990000e-01
  %i.b = fptosi float %i.a to i32                 ; 2 uses
  %or.cond = icmp ult i32 %i.b, 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 500
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31
  %i.i = zext i8 %i.h to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.k = load float, ptr %i.j, align 4, !tbaa !30 ; 2 uses
  %i.l = fcmp olt float %i.k, %1
  %i.m = select i1 %i.l, float %i.k, float %1
  %i.n = fdiv float %i.m, %1
  %i.o = fsub float 1.000000e+00, %i.n
  %i.p = tail call float @acosf(float noundef %i.o) #38
  %i.q = fdiv float f0x40490FDB, %i.p
  %i.r = tail call float @llvm.ceil.f32(float %i.q)
  %i.s = fptosi float %i.r to i32
  %i.t = add nsw i32 %i.s, 1
  %i.u = sdiv i32 %i.t, 2
  %i.v = shl nsw i32 %i.u, 1
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.v, i32 4)
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 512)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.x, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 3 uses
  %i.b = load float, ptr %2, align 4, !tbaa !234  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !235 ; 3 uses
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !8 ; 2 uses
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %i.g = fcmp olt <2 x float> %i.a, %i.f
  %i.h = select <2 x i1> %i.g, <2 x float> %i.f, <2 x float> %i.a ; 2 uses
  %i.i = fcmp ogt float %i.b, %.sroa.7.0.copyload
  %.sroa.12.0 = select i1 %i.i, float %.sroa.7.0.copyload, float %i.b ; 2 uses
  %i.j = fcmp ogt float %i.d, %.sroa.9.0.copyload
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.17.0 = phi float [ %.sroa.9.0.copyload, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.12.1 = phi float [ %.sroa.12.0, %bb.c ], [ %.sroa.12.0, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = phi <2 x float> [ %i.h, %bb.c ], [ %i.h, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !77   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !76
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !63
  br label %_ZN8ImVectorI6ImVec4E9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.m, 1
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sdiv i32 %i.m, 2
  %i.s = add nsw i32 %i.r, %i.m
  br label %_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i:  ; preds = %bb.f, %bb.e
  %i.t = phi i32 [ %i.s, %bb.f ], [ 8, %bb.e ]
  %i.u = tail call noundef i32 @llvm.smax.i32(i32 %i.t, i32 %i.q) ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 4
  %i.x = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.w) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.z, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !77
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.x, ptr nonnull align 4 %i.z, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !63
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ad)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI6ImVec4E14_grow_capacityEi.exit.i
  store ptr %i.x, ptr %i.y, align 8, !tbaa !63
  store i32 %i.u, ptr %i.n, align 4, !tbaa !76
  %.pre3.i = load i32, ptr %i.l, align 8, !tbaa !77
  br label %_ZN8ImVectorI6ImVec4E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec4E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i, %bb.h
  %i.ae = phi i32 [ %i.m, %._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.af = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec4E7reserveEi.exit_crit_edge.i ], [ %i.x, %bb.h ]
  %i.ag = extractelement <2 x float> %i.k, i64 1  ; 3 uses
  %i.ah = fcmp oge float %i.ag, %.sroa.17.0
  %i.ai = select i1 %i.ah, float %i.ag, float %.sroa.17.0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.k, i64 0  ; 3 uses
  %i.ak = fcmp oge float %i.aj, %.sroa.12.1
  %i.al = select i1 %i.ak, float %i.aj, float %.sroa.12.1 ; 2 uses
  %i.am = sext i32 %i.ae to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.am ; 3 uses
  store <2 x float> %i.k, ptr %i.an, align 4
  %.sroa.12.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store float %i.al, ptr %.sroa.12.0..sroa_idx15, align 4
  %.sroa.17.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store float %i.ai, ptr %.sroa.17.0..sroa_idx18, align 4
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !77
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.l, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float %i.aj, ptr %i.aq, align 8, !tbaa !8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.ag, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.al, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store float %i.ai, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !8
  tail call void @_ZN10ImDrawList18_OnChangedClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList22PushClipRectFullScreenEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !8
  store <2 x float> %i.d, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !8
  store <2 x float> %i.f, ptr %2, align 8, !tbaa !8
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11PopClipRectEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) initializes((96, 112)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %i.c = add nsw i32 %i.b, -1                     ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !77
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = sext i32 %i.c to i64
  %i.k = getelementptr [16 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %i.m = select i1 %i.d, ptr %i.g, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !10
  tail call void @_ZN10ImDrawList18_OnChangedClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11PushTextureE12ImTextureRef(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) initializes((112, 128)) %0, ptr %1, i64 %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !78
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !62
  br label %_ZN8ImVectorI12ImTextureRefE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sdiv i32 %i.b, 2
  %i.h = add nsw i32 %i.g, %i.b
  br label %_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %i.h, %bb.c ], [ 8, %bb.b ]
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %i.f) ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 4
  %i.m = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i
  %i.p = load i32, ptr %i.a, align 8, !tbaa !79
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr nonnull align 8 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !62
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i
  store ptr %i.m, ptr %i.n, align 8, !tbaa !62
  store i32 %i.j, ptr %i.c, align 4, !tbaa !78
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !79
  br label %_ZN8ImVectorI12ImTextureRefE9push_backERKS0_.exit

_ZN8ImVectorI12ImTextureRefE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i, %bb.e
  %i.t = phi i32 [ %i.b, %._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i, %._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i ], [ %i.m, %bb.e ]
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.v ; 2 uses
  store ptr %1, ptr %i.w, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %2, ptr %.sroa.3.0..sroa_idx2, align 8
  %i.x = load i32, ptr %i.a, align 8, !tbaa !79
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.a, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.z, align 8, !tbaa !109
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !110
  tail call void @_ZN10ImDrawList17_OnChangedTextureEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList10PopTextureEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) initializes((112, 128)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %1 = alloca %struct.ImTextureRef, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  %i.c = add nsw i32 %i.b, -1                     ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !236
  %i.g = sext i32 %i.c to i64
  %i.h = getelementptr [16 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !108
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  tail call void @_ZN10ImDrawList17_OnChangedTextureEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11_SetTextureE12ImTextureRef(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr %1, i64 %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !232
  %i.d = icmp eq i64 %i.c, %2
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = icmp eq ptr %i.e, %1
  %i.g = select i1 %i.d, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !109
  store i64 %2, ptr %i.b, align 8, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = load i32, ptr %i.h, align 8, !tbaa !79
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [16 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  store ptr %1, ptr %i.n, align 8, !tbaa !109
  %.sroa.4.0..sroa_idx2 = getelementptr i8, ptr %i.m, i64 -8
  store i64 %2, ptr %.sroa.4.0..sroa_idx2, align 8, !tbaa !110
  tail call void @_ZN10ImDrawList17_OnChangedTextureEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11PrimReserveEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %i.c = add i32 %i.b, %2
  %i.d = icmp ugt i32 %i.c, 65535
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74
  %i.g = and i32 %i.f, 8
end_hunk_0
