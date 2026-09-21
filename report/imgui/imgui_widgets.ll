Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ffRK6ImVec2:bb.a
  %i.go = fadd float %i.gl, %i.gn
  %i.gp = insertelement <2 x float> %i.z, float %i.go, i64 0
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.gp, ptr noundef %1, ptr noundef %i.j, i1 noundef zeroext false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.y

bb.y:                                             ; preds = %bb.d, %bb.x
  %.0134 = phi i32 [ %.1, %bb.x ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.y
  %.1135 = phi i32 [ %.0134, %bb.y ], [ -1, %bb.a ]
  ret i32 %.1135
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, float noundef %6, <2 x float> %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.ImVec2, align 8             ; 2 uses
  %10 = alloca %struct.ImGuiPlotArrayGetterData, align 8 ; 5 uses
  store <2 x float> %7, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store ptr %1, ptr %10, align 8, !tbaa !541
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %8, ptr %i.a, align 8, !tbaa !542
  %i.b = call noundef i32 @_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ffRK6ImVec2(i32 noundef 0, ptr noundef %0, ptr noundef nonnull @_ZL16Plot_ArrayGetterPvi, ptr noundef nonnull %10, i32 noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, float noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @_ZL16Plot_ArrayGetterPvi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !541
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !542
  %i.e = sext i32 %i.d to i64
  %i.f = mul nsw i64 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !190
  ret float %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, float noundef %6, float noundef %7, <2 x float> %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.ImVec2, align 8             ; 2 uses
  store <2 x float> %8, ptr %9, align 8
  %i.a = call noundef i32 @_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ffRK6ImVec2(i32 noundef 0, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, float noundef %6, float noundef %7, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, float noundef %6, <2 x float> %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.ImVec2, align 8             ; 2 uses
  %10 = alloca %struct.ImGuiPlotArrayGetterData, align 8 ; 5 uses
  store <2 x float> %7, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store ptr %1, ptr %10, align 8, !tbaa !541
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %8, ptr %i.a, align 8, !tbaa !542
  %i.b = call noundef i32 @_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ffRK6ImVec2(i32 noundef 1, ptr noundef %0, ptr noundef nonnull @_ZL16Plot_ArrayGetterPvi, ptr noundef nonnull %10, i32 noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, float noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, float noundef %6, float noundef %7, <2 x float> %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.ImVec2, align 8             ; 2 uses
  store <2 x float> %8, ptr %9, align 8
  %i.a = call noundef i32 @_ZN5ImGui6PlotExE13ImGuiPlotTypePKcPFfPviES3_iiS2_ffRK6ImVec2(i32 noundef 1, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, float noundef %6, float noundef %7, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui5ValueEPKcb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = select i1 %1, ptr @.str.121, ptr @.str.122
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.120, ptr noundef %0, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui5ValueEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.123, ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui5ValueEPKcj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.123, ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui5ValueEPKcfS1_(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.124, ptr noundef nonnull %2) ; 0 uses
  %i.c = fpext float %1 to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull %i.a, ptr noundef %0, double noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fpext float %1 to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.125, ptr noundef %0, double noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN16ImGuiMenuColumns6UpdateEfb(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((0, 10), (12, 18)) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #15 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !219
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre3 = load i16, ptr %.phi.trans.insert2, align 4, !tbaa !219
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %.pre5 = load i16, ptr %.phi.trans.insert4, align 2, !tbaa !219
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre7 = load i16, ptr %.phi.trans.insert6, align 4, !tbaa !219
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.a = phi i16 [ %.pre7, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi i16 [ %.pre5, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.c = phi i16 [ %.pre3, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.d = phi i16 [ %.pre, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.e = fptoui float %1 to i16                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.e, ptr %i.f, align 4, !tbaa !837
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = icmp ne i16 %i.d, 0
  %i.i = icmp ne i16 %i.c, 0
  %or.cond.us.1.i = select i1 %i.h, i1 %i.i, i1 false
  %i.j = select i1 %or.cond.us.1.i, i16 %i.e, i16 0
  %spec.select.1.i = add i16 %i.j, %i.d           ; 2 uses
  %i.k = or i16 %i.c, %i.d                        ; 2 uses
  %i.l = icmp ne i16 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %spec.select.1.i, ptr %i.m, align 4, !tbaa !543
  %i.p = add i16 %spec.select.1.i, %i.c
  %i.q = icmp ne i16 %i.b, 0
  %or.cond.us.2.i = select i1 %i.l, i1 %i.q, i1 false
  %i.r = select i1 %or.cond.us.2.i, i16 %i.e, i16 0
  %spec.select.2.i = add i16 %i.p, %i.r           ; 2 uses
  %i.s = or i16 %i.b, %i.k
  %i.t = icmp ne i16 %i.s, 0
  store i16 %spec.select.2.i, ptr %i.n, align 2, !tbaa !544
  %i.u = add i16 %spec.select.2.i, %i.b
  %i.v = icmp ne i16 %i.a, 0
  %or.cond.us.3.i = select i1 %i.t, i1 %i.v, i1 false
  %i.w = select i1 %or.cond.us.3.i, i16 %i.e, i16 0
  %spec.select.3.i = add i16 %i.u, %i.w           ; 2 uses
  store i16 %spec.select.3.i, ptr %i.o, align 4, !tbaa !545
  %i.x = add i16 %spec.select.3.i, %i.a
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 0, ptr %i.g, align 2
  store i32 %i.y, ptr %0, align 4, !tbaa !546
  store i32 0, ptr %i.z, align 4, !tbaa !547
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN16ImGuiMenuColumns18CalcNextTotalWidthEb(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((4, 8)) %0, i1 noundef zeroext %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 4              ; 5 uses
  %i.d = load i16, ptr %i.a, align 2, !tbaa !219  ; 3 uses
  %i.e = icmp ne i16 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i16, ptr %i.f, align 4, !tbaa !219  ; 4 uses
  %i.h = icmp ne i16 %i.g, 0
  %or.cond.us.1 = select i1 %i.e, i1 %i.h, i1 false
  %i.i = select i1 %or.cond.us.1, i16 %i.c, i16 0
  %spec.select.1 = add i16 %i.i, %i.d             ; 3 uses
  %i.j = or i16 %i.d, %i.g                        ; 3 uses
  %i.k = icmp ne i16 %i.j, 0                      ; 2 uses
  br i1 %1, label %.split26.us.loopexit, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.l = add i16 %spec.select.1, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.n = load i16, ptr %i.m, align 2, !tbaa !219  ; 3 uses
  %i.o = icmp ne i16 %i.n, 0
  %or.cond.2 = select i1 %i.k, i1 %i.o, i1 false
  %i.p = select i1 %or.cond.2, i16 %i.c, i16 0
  %spec.select27.2 = add i16 %i.p, %i.l
  %i.q = or i16 %i.j, %i.n
  %i.r = icmp ne i16 %i.q, 0
  %i.s = add i16 %spec.select27.2, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i16, ptr %i.t, align 4, !tbaa !219  ; 2 uses
  %i.v = icmp ne i16 %i.u, 0
  %or.cond.3 = select i1 %i.r, i1 %i.v, i1 false
  %i.w = select i1 %or.cond.3, i16 %i.c, i16 0
  %spec.select27.3 = add i16 %i.w, %i.s
  %i.x = add i16 %spec.select27.3, %i.u
  br label %.split26.us

.split26.us.loopexit:                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %spec.select.1, ptr %i.y, align 4, !tbaa !543
  %i.ab = add i16 %spec.select.1, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !219 ; 3 uses
  %i.ae = icmp ne i16 %i.ad, 0
  %or.cond.us.2 = select i1 %i.k, i1 %i.ae, i1 false
  %i.af = select i1 %or.cond.us.2, i16 %i.c, i16 0
  %spec.select.2 = add i16 %i.af, %i.ab           ; 2 uses
  %i.ag = or i16 %i.j, %i.ad
  %i.ah = icmp ne i16 %i.ag, 0
  store i16 %spec.select.2, ptr %i.z, align 2, !tbaa !544
  %i.ai = add i16 %spec.select.2, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !219 ; 2 uses
  %i.al = icmp ne i16 %i.ak, 0
  %or.cond.us.3 = select i1 %i.ah, i1 %i.al, i1 false
  %i.am = select i1 %or.cond.us.3, i16 %i.c, i16 0
  %spec.select.3 = add i16 %i.am, %i.ai           ; 2 uses
  store i16 %spec.select.3, ptr %i.aa, align 4, !tbaa !545
  %i.an = add i16 %spec.select.3, %i.ak
  br label %.split26.us

.split26.us:                                      ; preds = %.split.preheader, %.split26.us.loopexit
  %.us-phi = phi i16 [ %i.an, %.split26.us.loopexit ], [ %i.x, %.split.preheader ]
  %i.ao = zext i16 %.us-phi to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !547
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef float @_ZN16ImGuiMenuColumns11DeclColumnsEffff(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((4, 8)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = insertelement <4 x float> poison, float %1, i64 0
  %i.c = insertelement <4 x float> %i.b, float %2, i64 1
  %i.d = insertelement <4 x float> %i.c, float %3, i64 2
  %i.e = insertelement <4 x float> %i.d, float %4, i64 3
  %i.f = fptoui <4 x float> %i.e to <4 x i16>
  %i.g = load <4 x i16>, ptr %i.a, align 2, !tbaa !219
  %i.h = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.g, <4 x i16> %i.f) ; 5 uses
  store <4 x i16> %i.h, ptr %i.a, align 2, !tbaa !219
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i16, ptr %i.i, align 4              ; 3 uses
  %i.k = extractelement <4 x i16> %i.h, i64 0     ; 3 uses
  %i.l = icmp ne i16 %i.k, 0
  %i.m = extractelement <4 x i16> %i.h, i64 1     ; 3 uses
  %i.n = icmp ne i16 %i.m, 0
  %or.cond.us.1.i = and i1 %i.l, %i.n
  %i.o = select i1 %or.cond.us.1.i, i16 %i.j, i16 0
  %i.p = or i16 %i.m, %i.k                        ; 2 uses
  %i.q = icmp ne i16 %i.p, 0
  %i.r = extractelement <4 x i16> %i.h, i64 2     ; 3 uses
  %i.s = icmp ne i16 %i.r, 0
  %or.cond.2.i = and i1 %i.q, %i.s
  %i.t = select i1 %or.cond.2.i, i16 %i.j, i16 0
  %i.u = or i16 %i.r, %i.p
  %i.v = icmp ne i16 %i.u, 0
  %i.w = extractelement <4 x i16> %i.h, i64 3     ; 2 uses
  %i.x = icmp ne i16 %i.w, 0
  %or.cond.3.i = and i1 %i.v, %i.x
  %i.y = select i1 %or.cond.3.i, i16 %i.j, i16 0
  %spec.select.1.i = add i16 %i.m, %i.k
  %i.z = add i16 %spec.select.1.i, %i.r
  %spec.select27.2.i = add i16 %i.z, %i.w
  %i.aa = add i16 %spec.select27.2.i, %i.o
  %spec.select27.3.i = add i16 %i.aa, %i.t
  %i.ab = add i16 %spec.select27.3.i, %i.y
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !547
  %i.ae = load i32, ptr %0, align 4, !tbaa !546
  %i.af = tail call noundef i32 @llvm.umax.i32(i32 %i.ae, i32 %i.ac)
  %i.ag = uitofp i32 %i.af to float
  ret float %i.ag
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !245
  %i.j = and i32 %i.i, 1024
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv()
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.126)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.l = load float, ptr %i.k, align 4, !tbaa !244 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.n = load float, ptr %i.m, align 8, !tbaa !838 ; 2 uses
  %i.o = fneg float %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.r = load float, ptr %i.q, align 4, !tbaa !241
  %i.s = fadd float %i.n, %i.r                    ; 3 uses
  %i.t = load float, ptr %i.p, align 8, !tbaa !240 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.v = load float, ptr %i.u, align 8, !tbaa !839
  %i.w = fadd float %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.y = load float, ptr %i.x, align 4, !tbaa !548
  %i.z = fadd float %i.s, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !251 ; 2 uses
  %i.ac = fmul float %i.l, 5.000000e-01           ; 2 uses
  %i.ad = fcmp oge float %i.ab, %i.ac
  %i.ae = select i1 %i.ad, float %i.ab, float %i.ac
  %i.af = fsub float %i.w, %i.ae                  ; 2 uses
  %i.ag = fcmp oge float %i.t, %i.af
  %i.ah = select i1 %i.ag, float %i.t, float %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  %i.ak = insertelement <2 x float> poison, float %i.l, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %i.o, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.t, i64 1
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> splat (float 5.000000e-01), <2 x float> %i.an) ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0 ; 2 uses
  %i.aq = fcmp oge float %i.ap, 0.000000e+00
  %i.ar = select i1 %i.aq, float %i.ap, float 0.000000e+00
  %i.as = fadd float %i.s, %i.ar
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.au = insertelement <2 x float> %i.at, float %i.as, i64 1
  %i.av = fadd <2 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fptosi <2 x float> %i.av to <2 x i32>
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>   ; 2 uses
  %i.ay = load <2 x float>, ptr %i.aj, align 8, !tbaa !190 ; 2 uses
  %i.az = fcmp ole <2 x float> %i.ay, %i.ax
  %i.ba = select <2 x i1> %i.az, <2 x float> %i.ax, <2 x float> %i.ay
  store <2 x float> %i.ba, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.bc = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.z, i64 1
  %i.be = fadd <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fptosi <2 x float> %i.be to <2 x i32>
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>   ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bb, align 8, !tbaa !190 ; 2 uses
  %i.bi = fcmp ogt <2 x float> %i.bh, %i.bg
  %i.bj = select <2 x i1> %i.bi, <2 x float> %i.bg, <2 x float> %i.bh
  store <2 x float> %i.bj, ptr %i.ai, align 8
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.ai, i1 noundef zeroext false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !549
  %i.bn = fadd float %i.t, %i.bm                  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !840
  %i.bq = fadd float %i.s, %i.bp                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store float %i.bn, ptr %i.br, align 8
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  store float %i.bq, ptr %.sroa_idx26, align 4
  store float %i.bn, ptr %i.bk, align 8
  %.sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.bq, ptr %.sroa_idx25, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  store i32 0, ptr %i.bs, align 4, !tbaa !315
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.bt, align 8, !tbaa !316
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store i32 1, ptr %i.bu, align 8, !tbaa !348
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 379
  store i8 1, ptr %i.bv, align 1, !tbaa !550
  %i.bw = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5312
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !158 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 206
  store i8 1, ptr %i.bz, align 2, !tbaa !182
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 209
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !183, !range !184, !noundef !185
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5ImGui23AlignTextToFramePaddingEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 324 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !309 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4568
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !205
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 3288
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !234 ; 3 uses
  %i.cj = call float @llvm.fmuladd.f32(float %i.ci, float 2.000000e+00, float %i.cg) ; 2 uses
  %i.ck = fcmp oge float %i.ce, %i.cj
  %i.cl = select i1 %i.ck, float %i.ce, float %i.cj
  store float %i.cl, ptr %i.cd, align 4, !tbaa !309
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 336 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !188 ; 2 uses
  %i.co = fcmp oge float %i.cn, %i.ci
  %i.cp = select i1 %i.co, float %i.cn, float %i.ci
  store float %i.cp, ptr %i.cm, align 8, !tbaa !188
  br label %_ZN5ImGui23AlignTextToFramePaddingEv.exit

_ZN5ImGui23AlignTextToFramePaddingEv.exit:        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_ZN5ImGui23AlignTextToFramePaddingEv.exit
  %.0 = phi i1 [ false, %bb.a ], [ true, %_ZN5ImGui23AlignTextToFramePaddingEv.exit ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10EndMenuBarEv() local_unnamed_addr #5 {
end_hunk_0
