Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i:bb.a
  %i.l = load i8, ptr %i.k, align 1, !tbaa !721, !range !100, !noundef !236
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !890
  %i.p = and i32 %i.o, 64
  %.not27 = icmp eq i32 %i.p, 0
  br i1 %.not27, label %.thread.thread, label %.thread

.thread:                                          ; preds = %bb.d
  %i.q = load float, ptr %1, align 4, !tbaa !249
  %i.r = fcmp ole float %i.q, 0.000000e+00
  %i.s = select i1 %i.r, i8 2, i8 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %i.s, ptr %i.t, align 8, !tbaa !612
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !890
  %i.w = and i32 %i.v, 64
  %.not28 = icmp eq i32 %i.w, 0
  br i1 %.not28, label %bb.f, label %bb.e

.sink.split:                                      ; preds = %._crit_edge, %bb.c
  %i.x = load float, ptr %1, align 4, !tbaa !249
  %i.y = fcmp ole float %i.x, 0.000000e+00
  %i.z = select i1 %i.y, i8 2, i8 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %i.z, ptr %i.aa, align 8, !tbaa !612
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %.thread.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !250
  %i.ad = fcmp ole float %i.ac, 0.000000e+00
  %i.ae = select i1 %i.ad, i8 2, i8 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !611
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload = load float, ptr %i.ag, align 8, !tbaa !75 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !75 ; 2 uses
  %i.ah = load float, ptr %1, align 4, !tbaa !249 ; 2 uses
  %i.ai = fcmp ugt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 234
  store i8 0, ptr %i.aj, align 2, !tbaa !617
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ak = fptosi float %i.ah to i32
  %i.al = sitofp i32 %i.ak to float               ; 2 uses
  store float %i.al, ptr %i.ag, align 8, !tbaa !725
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = phi float [ %i.al, %bb.h ], [ %.sroa.0.0.copyload, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !250 ; 2 uses
  %i.ap = fcmp ugt float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 234
  store i8 0, ptr %i.aq, align 2, !tbaa !617
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = fptosi float %i.ao to i32
  %i.as = sitofp i32 %i.ar to float               ; 2 uses
  store float %i.as, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !910
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = phi float [ %i.as, %bb.k ], [ %.sroa.4.0.copyload, %bb.j ]
  %i.au = fcmp une float %.sroa.0.0.copyload, %i.am
  %i.av = fcmp une float %.sroa.4.0.copyload, %i.at
  %or.cond = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond, label %bb.m, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.ax = and i32 %i.h, 256
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.n, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 10068 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !573
  %i.ba = fcmp ugt float %i.az, 0.000000e+00
  br i1 %i.ba, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !720
  store float %i.bc, ptr %i.ay, align 4, !tbaa !573
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit: ; preds = %bb.l, %bb.o, %bb.n, %bb.m, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 239
  %.pre = load i32, ptr %.phi.trans.insert, align 1 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ashr i32 %.pre, 24
  %i.b = and i32 %i.a, %2
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 239
  %i.e = and i32 %.pre, -234881025
  store i32 %i.e, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !913, !range !100, !noundef !236
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 207 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !613, !range !100 ; 2 uses
  br i1 %i.h, label %bb.c, label %._crit_edge8

bb.c:                                             ; preds = %._crit_edge
  %i.k = xor i8 %i.j, 1                           ; 2 uses
  store i8 %i.k, ptr %i.i, align 1, !tbaa !613
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %._crit_edge, %bb.c
  %i.l = phi i8 [ %i.k, %bb.c ], [ %i.j, %._crit_edge ]
  %i.m = zext i1 %1 to i8
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = zext i1 %i.n to i8
  store i8 %i.o, ptr %i.f, align 8, !tbaa !913
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui29BeginDisabledOverrideReenableEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3220 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !916
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5264
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !497
  %i.g = load i32, ptr %i.d, align 8, !tbaa !499
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [120 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  store float %i.c, ptr %i.j, align 8, !tbaa !897
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 9852
  %i.l = load float, ptr %i.k, align 4, !tbaa !917
  store float %i.l, ptr %i.b, align 4, !tbaa !916
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7784 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !792
  %i.o = and i32 %i.n, -65
  store i32 %i.o, ptr %i.m, align 8, !tbaa !792
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8120
  tail call void @_ZN8ImVectorIiE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 9856 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !884
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 8, !tbaa !884
  ret void
}

declare void @_ZN10ImDrawList17_ResetForNewFrameEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5ImGui17SetWindowViewportEP11ImGuiWindowP14ImGuiViewportP(ptr nofree noundef writeonly captures(none) initializes((32, 40)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !922
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5ImGui11GetKeyOwnerE8ImGuiKey(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = add i32 %0, -512                         ; 2 uses
  %or.cond.i = icmp ult i32 %i.a, 155
  %.pre = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.b = icmp eq i32 %.pre, 1                     ; 2 uses
  br i1 %or.cond.i, label %._crit_edge, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.a
  br i1 %i.b, label %switch.early.test.split.i, label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

switch.early.test.split.i:                        ; preds = %switch.early.test.i
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.d = and i32 %i.c, 28
  %switch.i = icmp eq i32 %i.d, 12
  br i1 %switch.i, label %._crit_edge, label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

._crit_edge:                                      ; preds = %bb.a, %switch.early.test.split.i
  %.pre-phi = phi i1 [ true, %switch.early.test.split.i ], [ %i.b, %bb.a ]
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.f = and i32 %0, 61440
  %.not.i = icmp ne i32 %i.f, 0
  %or.cond.i15 = select i1 %.not.i, i1 %.pre-phi, i1 false
  br i1 %or.cond.i15, label %.split.i.i, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit

.split.i.i:                                       ; preds = %._crit_edge
  %i.g = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.h = and i32 %i.g, 28
  %i.i = icmp eq i32 %i.h, 12
  %switch.offset.i.i = add nuw nsw i32 %i.g, 651
  %spec.select.i.i = select i1 %i.i, i32 %switch.offset.i.i, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit: ; preds = %._crit_edge, %.split.i.i
  %.0.i = phi i32 [ %0, %._crit_edge ], [ %spec.select.i.i, %.split.i.i ]
  %i.j = sext i32 %.0.i to i64
  %i.k = getelementptr [12 x i8], ptr %i.e, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -580
  %i.m = load i32, ptr %i.l, align 4, !tbaa !524  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 7772
  %i.o = load i8, ptr %i.n, align 4, !tbaa !548, !range !100, !noundef !236
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 5428
  %i.r = load i32, ptr %i.q, align 4, !tbaa !652
  %i.s = icmp ne i32 %i.m, %i.r
  %i.t = icmp ne i32 %i.m, 0
  %or.cond = and i1 %i.t, %i.s
  %or.cond3 = icmp ult i32 %i.a, 120
  %or.cond14 = and i1 %or.cond3, %or.cond
  br i1 %or.cond14, label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit
  br label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit:        ; preds = %switch.early.test.split.i, %switch.early.test.i, %bb.c, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ %i.m, %bb.c ], [ -1, %switch.early.test.i ], [ -1, %switch.early.test.split.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #39 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = and i32 %0, 61440
  %.not.i = icmp ne i32 %i.b, 0
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.d = icmp eq i32 %i.c, 1
  %or.cond.i = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %or.cond.i, label %.split.i.i, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit

.split.i.i:                                       ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.f = and i32 %i.e, 28
  %i.g = icmp eq i32 %i.f, 12
  %switch.offset.i.i = add nuw nsw i32 %i.e, 651
  %spec.select.i.i = select i1 %i.g, i32 %switch.offset.i.i, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit: ; preds = %bb.a, %.split.i.i
  %.0.i = phi i32 [ %0, %bb.a ], [ %spec.select.i.i, %.split.i.i ]
  %i.h = sext i32 %.0.i to i64
  %i.i = getelementptr [12 x i8], ptr %i.a, i64 %i.h ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -580
  %i.k = getelementptr i8, ptr %i.i, i64 -576
  store i32 %1, ptr %i.k, align 4, !tbaa !523
  store i32 %1, ptr %i.j, align 4, !tbaa !524
  %i.l = getelementptr i8, ptr %i.i, i64 -571
  %i.m = lshr i32 %2, 21
  %i.n = trunc i32 %i.m to i8
  %i.o = and i8 %i.n, 1                           ; 2 uses
  store i8 %i.o, ptr %i.l, align 1, !tbaa !525
  %i.p = and i32 %2, 1048576
  %.not = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not, i8 %i.o, i8 1
  %i.r = getelementptr i8, ptr %i.i, i64 -572
  store i8 %i.q, ptr %i.r, align 4, !tbaa !526
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !614
  %i.d = and i32 %i.c, 256
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 10068 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !573
  %i.g = fcmp ugt float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.i = load float, ptr %i.h, align 4, !tbaa !720
  store float %i.i, ptr %i.e, align 4, !tbaa !573
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !496    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !495
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge

._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !494
  br label %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.a, 1
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sdiv i32 %i.a, 2
  %i.g = add nsw i32 %i.f, %i.a
  br label %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit

_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit: ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 8, %bb.b ]
  %i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.h, i32 %i.e) ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !226
  %i.m = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  %i.n = tail call noundef ptr %i.l(i64 noundef %i.k, ptr noundef %i.m), !inline_history !48 ; 3 uses
  %i.o = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10596 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !228  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 10608 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 10604 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !229  ; 2 uses
  %i.v = sext i16 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !231
  %.not.i.i.i = icmp eq i32 %i.x, %i.r
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !232
  %i.y = add i16 %.pre.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = sext i16 %i.u to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = srem i32 %i.aa, 6                       ; 2 uses
  %i.ac = trunc nsw i32 %i.ab to i16
  store i16 %i.ac, ptr %i.t, align 4, !tbaa !229
  %i.ad = sext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ad ; 3 uses
  store i32 %i.r, ptr %i.ae, align 4, !tbaa !231
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i16 0, ptr %i.af, align 2, !tbaa !233
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i16 0, ptr %i.ag, align 4, !tbaa !232
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ah = phi i16 [ 1, %bb.e ], [ %i.y, %._crit_edge.i ]
  %i.ai = phi i64 [ %i.ad, %bb.e ], [ %i.v, %._crit_edge.i ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 %i.ah, ptr %i.ak, align 4, !tbaa !232
  %i.al = load i32, ptr %i.p, align 4, !tbaa !234
end_hunk_0
