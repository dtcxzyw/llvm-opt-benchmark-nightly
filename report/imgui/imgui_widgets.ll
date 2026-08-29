Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui22TreeNodeUpdateNextOpenEji:bb.a
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !642
  %i.aq = icmp slt i32 %i.an, %i.ap
  %spec.select = select i1 %i.aq, i8 1, i8 %.1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi i8 [ %.1, %bb.i ], [ %spec.select, %bb.j ]
  %i.ar = trunc nuw i8 %.2 to i1
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.024 = phi i1 [ %i.ar, %bb.k ], [ true, %bb.a ]
  ret i1 %.024
}

declare noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %0, float noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8184 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !633  ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8188 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !643  ; 4 uses
  %.not30 = icmp slt i32 %i.e, %i.h
  br i1 %.not30, label %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge, label %bb.b

._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8192
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !632
  br label %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sdiv i32 %i.h, 2
  %i.j = add nsw i32 %i.i, %i.h
  br label %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i: ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %i.j, %bb.c ], [ 8, %bb.b ]
  %i.l = tail call noundef i32 @llvm.smax.i32(i32 %i.k, i32 %i.f) ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.m, 40
  %i.o = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.n) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8192 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !644  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i
  %i.r = load i32, ptr %i.d, align 8, !tbaa !645
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.o, ptr nonnull align 4 %i.q, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !644
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.u)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI22ImGuiTreeNodeStackDataE14_grow_capacityEi.exit.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !644
  store i32 %i.l, ptr %i.g, align 4, !tbaa !643
  br label %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit

_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit: ; preds = %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge, %bb.e
  %i.v = phi ptr [ %.pre, %._ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit_crit_edge ], [ %i.o, %bb.e ]
  store i32 %i.f, ptr %i.d, align 8, !tbaa !645
  %i.w = sext i32 %i.f to i64
  %i.x = getelementptr [40 x i8], ptr %i.v, i64 %i.w ; 8 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -40
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !191
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !646
  %i.ab = getelementptr i8, ptr %i.x, i64 -36
  store i32 %0, ptr %i.ab, align 4, !tbaa !647
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7852
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !256
  %i.ae = getelementptr i8, ptr %i.x, i64 -32
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !648
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 7876
  %i.ag = getelementptr i8, ptr %i.x, i64 -28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !231
  %i.ah = and i32 %0, 1572864
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !189
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 5.000000e-01, float %1)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.am = load float, ptr %i.al, align 4, !tbaa !357
  %i.an = fadd float %i.ak, %i.am
  %i.ao = getelementptr i8, ptr %i.x, i64 -12
  store float %i.an, ptr %i.ao, align 4, !tbaa !649
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !285 ; 2 uses
  %.not28 = icmp eq ptr %i.aq, null
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !286
  %i.at = trunc i32 %i.as to i16
  br label %bb.h

.critedge:                                        ; preds = %_ZN8ImVectorI22ImGuiTreeNodeStackDataE6resizeEi.exit
  %i.au = getelementptr i8, ptr %i.x, i64 -12
  store float f0x7F7FFFFF, ptr %i.au, align 4, !tbaa !649
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.f, %bb.g
  %i.av = phi i16 [ %i.at, %bb.g ], [ -1, %bb.f ], [ -1, %.critedge ]
  %i.aw = getelementptr i8, ptr %i.x, i64 -4
  store i16 %i.av, ptr %i.aw, align 4, !tbaa !650
  %i.ax = getelementptr i8, ptr %i.x, i64 -8
  store float f0xFF7FFFFF, ptr %i.ax, align 4, !tbaa !634
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !631
  %i.ba = shl nuw i32 1, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 420 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !651
  %i.bd = or i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !651
  %i.be = and i32 %0, 1048576
  %.not29 = icmp eq i32 %i.be, 0
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 424 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !630
  %i.bh = or i32 %i.bg, %i.ba
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !630
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui18TreePushOverrideIDEj(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 416 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !631
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !631
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0)
  ret void
}

declare void @_ZN5ImGui26TablePushBackgroundChannelEv() local_unnamed_addr #3

declare void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui20NavMoveRequestCancelEv() local_unnamed_addr #3

declare void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN5ImGui25TablePopBackgroundChannelEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui27TreeNodeDrawLineToChildNodeERK6ImVec2(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.e = load i32, ptr %i.d, align 8, !tbaa !631  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 420
  %i.h = load i32, ptr %i.g, align 4, !tbaa !651
  %i.i = add nsw i32 %i.e, -1
  %i.j = shl nuw i32 1, %i.i
  %i.k = and i32 %i.h, %i.j
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8184
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !632
  %i.p = load i32, ptr %i.m, align 8, !tbaa !633
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [40 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -12
  %i.t = load float, ptr %i.s, align 4, !tbaa !649
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = sitofp i32 %i.u to float                 ; 3 uses
  %i.w = load float, ptr %0, align 4, !tbaa !176
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3308
  %i.y = load float, ptr %i.x, align 4, !tbaa !412
  %i.z = fsub float %i.w, %i.y
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = sitofp i32 %i.aa to float               ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !181
  %i.ae = fptosi float %i.ad to i32
  %i.af = sitofp i32 %i.ae to float               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 3424
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !652 ; 3 uses
  %i.ai = fcmp ogt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = fsub float %i.ab, %i.v                  ; 2 uses
  %i.ak = fcmp olt float %i.aj, %i.ah
  %i.al = select i1 %i.ak, float %i.aj, float %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.am = phi float [ %i.al, %bb.d ], [ 0.000000e+00, %bb.c ] ; 4 uses
  %i.an = getelementptr i8, ptr %i.r, i64 -8      ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !634 ; 2 uses
  %i.ap = fsub float %i.af, %i.am                 ; 3 uses
  %i.aq = fcmp oge float %i.ao, %i.ap
  %i.ar = select i1 %i.aq, float %i.ao, float %i.ap
  store float %i.ar, ptr %i.an, align 4, !tbaa !634
  %2 = icmp slt i32 %i.u, %i.aa
  br i1 %2, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.as = fcmp ogt float %i.am, 0.000000e+00
  br i1 %i.as, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.at = fadd float %i.am, 5.000000e-01
  %i.au = fadd float %i.at, %i.v                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store float %i.au, ptr %1, align 4, !tbaa !176
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ap, ptr %i.ax, align 4, !tbaa !181
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.aw, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %i.am, i32 noundef 6, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.ay = fcmp olt float %i.au, %i.ab
  br i1 %i.ay, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !186 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 5 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !653 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 84 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !654
  %i.be = icmp eq i32 %i.bb, %i.bd
  br i1 %i.be, label %bb.i, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i: ; preds = %bb.h
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !655
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %i.bb, 1
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = sdiv i32 %i.bb, 2
  %i.bh = add nsw i32 %i.bg, %i.bb
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.bi = phi i32 [ %i.bh, %bb.j ], [ 8, %bb.i ]
  %i.bj = call noundef i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bf) ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 3
  %i.bm = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bl) ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !655 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not6.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  %i.bp = load i32, ptr %i.ba, align 8, !tbaa !653
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bm, ptr nonnull align 4 %i.bo, i64 %i.br, i1 false)
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !655
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bs)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !655
  store i32 %i.bj, ptr %i.bc, align 4, !tbaa !654
  %.pre3.i.i = load i32, ptr %i.ba, align 8, !tbaa !653
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

_ZN10ImDrawList10PathLineToERK6ImVec2.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i, %bb.l
  %i.bt = phi i32 [ %i.bb, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.l ]
  %i.bu = phi ptr [ %.pre.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %i.bm, %bb.l ]
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  store float %i.ab, ptr %i.bw, align 4
  %.sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store float %i.af, ptr %.sroa_idx44, align 4
  %i.bx = load i32, ptr %i.ba, align 8, !tbaa !653
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.ba, align 8, !tbaa !653
  br label %bb.m

bb.m:                                             ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit, %bb.g
  %i.bz = load ptr, ptr %i.av, align 8, !tbaa !186 ; 3 uses
  %i.ca = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 53, float noundef 1.000000e+00)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 3420
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !627
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 80 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !621
  %i.cg = load i32, ptr %i.cd, align 8, !tbaa !622
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bz, ptr noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.ca, float noundef %i.cc, i32 noundef 0)
  store i32 0, ptr %i.cd, align 8, !tbaa !622
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !186
  %i.cj = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 53, float noundef 1.000000e+00)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 3420
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !627
  tail call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.ci, float noundef %i.v, float noundef %i.ab, float noundef %i.af, i32 noundef %i.cj, float noundef %i.cl)
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.n, %bb.m, %bb.a, %bb.b
  ret void
}

declare void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25TreeNodeDrawLineToTreePopEPK22ImGuiTreeNodeStackData(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !656 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.g = load float, ptr %i.f, align 4, !tbaa !173 ; 2 uses
  %i.h = fcmp oge float %i.e, %i.g
  %i.i = select i1 %i.h, float %i.e, float %i.g   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load float, ptr %i.j, align 4, !tbaa !634 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !647
  %i.n = and i32 %i.m, 524288
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.p = load float, ptr %i.o, align 4, !tbaa !168 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !285  ; 2 uses
  %.not36 = icmp eq ptr %i.r, null
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load float, ptr %i.s, align 8, !tbaa !657 ; 2 uses
  %i.u = fcmp oge float %i.t, %i.p
  %i.v = select i1 %i.u, float %i.t, float %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.v, %bb.c ], [ %i.p, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3304
  %i.x = load float, ptr %i.w, align 8, !tbaa !352 ; 2 uses
  %i.y = fsub float %.0, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.aa = load float, ptr %i.z, align 8, !tbaa !189
  %i.ab = fneg float %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.000000e-01, float %i.y)
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sitofp i32 %i.ad to float               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3424
  %i.ag = load float, ptr %i.af, align 8, !tbaa !652
  %i.ah = fadd float %i.x, %i.ag
  %i.ai = fadd float %i.k, %i.ah
  %i.aj = fcmp olt float %i.ai, %i.ae
  %.030 = select i1 %i.aj, float %i.ae, float %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi float [ %.030, %bb.d ], [ %i.k, %bb.a ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  %i.al = load float, ptr %i.ak, align 4, !tbaa !183 ; 2 uses
  %i.am = fcmp olt float %.1, %i.al
  %i.an = select i1 %i.am, float %.1, float %i.al ; 2 uses
  %i.ao = fcmp ugt float %i.an, %i.i
  br i1 %i.ao, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !649
  %i.ar = fptosi float %i.aq to i32
  %i.as = sitofp i32 %i.ar to float
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.au = load i16, ptr %i.at, align 4, !tbaa !650 ; 2 uses
  %.not37 = icmp eq i16 %i.au, -1
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sext i16 %i.au to i32
  tail call void @_ZN5ImGui22TablePushColumnChannelEi(i32 noundef %i.av)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !186
  %i.ay = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 53, float noundef 1.000000e+00)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 3420
  %i.ba = load float, ptr %i.az, align 4, !tbaa !627
  tail call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.ax, float noundef %i.as, float noundef %i.i, float noundef %i.an, i32 noundef %i.ay, float noundef %i.ba)
  %i.bb = load i16, ptr %i.at, align 4, !tbaa !650
  %.not38 = icmp eq i16 %i.bb, -1
  br i1 %.not38, label %bb.j, label %bb.i

end_hunk_0
