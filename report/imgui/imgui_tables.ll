Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj:bb.a
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.ao, %_ZN6ImPoolI10ImGuiTableE3AddEv.exit ]
  ret ptr %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN18ImGuiTableTempDataD2Ev(ptr noundef nonnull align 8 dead_on_return(172) dereferenceable(172) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN18ImDrawListSplitterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.c)
          to label %_ZN18ImDrawListSplitterD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN18ImDrawListSplitterD2Ev.exit:                 ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !192  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN18ImDrawListSplitterD2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.i)
          to label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZN8ImVectorI29ImGuiTableReconcileColumnDataED2Ev.exit: ; preds = %_ZN18ImDrawListSplitterD2Ev.exit, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !193  ; 2 uses
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %_ZN8ImVectorI20ImGuiTableHeaderDataED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN8ImVectorI29ImGuiTableReconcileColumnDataED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.m)
          to label %_ZN8ImVectorI20ImGuiTableHeaderDataED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable

_ZN8ImVectorI20ImGuiTableHeaderDataED2Ev.exit:    ; preds = %_ZN8ImVectorI29ImGuiTableReconcileColumnDataED2Ev.exit, %bb.h
  ret void
}

declare noundef i32 @_ZN5ImGui13GetIDWithSeedEij(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5ImGui13GetIDWithSeedEPKcS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN5ImGui19SetNextWindowScrollERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2ii(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui14PushOverrideIDEj(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui8DebugLogEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui20TableBeginInitMemoryEP10ImGuiTablei(ptr nofree noundef captures(none) initializes((8, 16), (24, 96)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 31
  %i.b = mul i32 %1, 120
  %i.c = shl i32 %1, 1
  %i.d = mul i32 %1, 122
  %i.e = shl i32 %1, 3                            ; 2 uses
  %i.f = add nsw i32 %i.d, 2                      ; 2 uses
  %i.g = and i32 %i.f, -4
  %i.h = add nsw i32 %i.f, %i.e                   ; 2 uses
  %i.i = ashr i32 %i.a, 3
  %i.j = and i32 %i.i, -4                         ; 3 uses
  %i.k = and i32 %i.h, -4
  %i.l = add nsw i32 %i.h, %i.j                   ; 2 uses
  %i.m = and i32 %i.l, -4
  %i.n = add nsw i32 %i.l, %i.j
  %i.o = and i32 %i.n, -4                         ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !273
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.q, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !273  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = sext i32 %i.b to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !271
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !270
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = sext i32 %i.c to i64
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  store ptr %i.w, ptr %i.y, align 8, !tbaa !275
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !276
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = sext i32 %i.g to i64
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 %i.ad ; 2 uses
  %i.af = sext i32 %i.e to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !277
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !278
  %i.ai = sext i32 %i.k to i64
  %i.aj = getelementptr inbounds i8, ptr %i.t, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !279
  %i.al = sext i32 %i.m to i64
  %i.am = getelementptr inbounds i8, ptr %i.t, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.am, ptr %i.an, align 8, !tbaa !280
  %i.ao = sext i32 %i.o to i64
  %i.ap = getelementptr inbounds i8, ptr %i.t, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5ImGui18TableResetSettingsEP10ImGuiTable(ptr nofree noundef writeonly captures(none) initializes((96, 100), (571, 572), (577, 579), (581, 582)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.a, align 2, !tbaa !284
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 571
  store i8 1, ptr %i.b, align 1, !tbaa !282
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 581
  store i8 0, ptr %i.c, align 1, !tbaa !283
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 577
  store i8 0, ptr %i.d, align 1, !tbaa !285
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.e, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui17TableLoadSettingsEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !217
  %i.d = and i32 %i.c, 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 577
  store i8 0, ptr %i.e, align 1, !tbaa !285
  br label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !287  ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 8, !tbaa !218
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 10120
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 10128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !310  ; 4 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i, %.lr.ph.i.preheader
  %.0812.i = phi ptr [ %i.s, %select.unfold.i ], [ %i.m, %.lr.ph.i.preheader ] ; 6 uses
  %i.n = load i32, ptr %.0812.i, align 4, !tbaa !312
  %i.o = icmp eq i32 %i.n, %i.i
  br i1 %i.o, label %_ZN5ImGui21TableSettingsFindByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !299
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %.0812.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.j, align 8, !tbaa !313
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = icmp eq ptr %i.s, %i.w
  br i1 %i.x, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i

_ZN5ImGui21TableSettingsFindByIDEj.exit:          ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0812.i, i64 12
  %i.z = load i16, ptr %i.y, align 4, !tbaa !314
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !221
  %.not19 = icmp eq i32 %i.ac, %i.aa
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 1, ptr %i.ad, align 2, !tbaa !284
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5ImGui21TableSettingsFindByIDEj.exit
  %i.ae = ptrtoint ptr %.0812.i to i64
  %i.af = ptrtoint ptr %i.l to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !287
  br label %bb.g

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 10128
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !310
  %i.ak = sext i32 %i.g to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit, %bb.f
  %.0 = phi ptr [ %.0812.i, %bb.f ], [ %i.al, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !315
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !286
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !316
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 228
  store float %i.aq, ptr %i.ar, align 4, !tbaa !317
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 10064
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.au = load i16, ptr %i.as, align 8, !tbaa !302
  store i16 %i.au, ptr %i.at, align 4, !tbaa !302
  br label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

_ZN5ImGui21TableSettingsFindByIDEj.exit.thread:   ; preds = %select.unfold.i, %bb.d, %bb.g, %bb.b
  ret void
}

declare noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui24TableApplyQueuedRequestsEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !216
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 530 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !293  ; 3 uses
  %i.f = sext i16 %i.e to i32
  %.not = icmp eq i16 %i.e, -1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.h = load float, ptr %i.g, align 4, !tbaa !323 ; 2 uses
  %i.i = fcmp une float %i.h, f0x7F7FFFFF
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui19TableSetColumnWidthEif(i32 noundef %i.f, float noundef %i.h)
  %.pre = load i16, ptr %i.d, align 2, !tbaa !293
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = phi i16 [ %.pre, %bb.d ], [ %i.e, %bb.c ], [ -1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 532
  store i16 %i.j, ptr %i.k, align 4, !tbaa !292
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220
  store float f0x7F7FFFFF, ptr %i.l, align 4, !tbaa !323
  store i16 -1, ptr %i.d, align 2, !tbaa !293
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !296  ; 3 uses
  %.not55 = icmp eq i16 %i.n, -1
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271
  %i.r = sext i16 %i.n to i64
  %i.s = getelementptr inbounds [120 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !306
  tail call void @_ZN5ImGui19TableSetColumnWidthEif(i32 noundef %i.o, float noundef %i.u)
  store i16 -1, ptr %i.m, align 8, !tbaa !296
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pr = load i16, ptr %i.a, align 8, !tbaa !216
  %i.v = icmp eq i16 %.pr, 0
  br i1 %i.v, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 534 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !324
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i16 %i.x, ptr %i.y, align 8, !tbaa !325
  store i16 -1, ptr %i.w, align 2, !tbaa !324
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 538 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !295 ; 2 uses
  %.not56 = icmp eq i16 %i.aa, -1
  br i1 %.not56, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !294 ; 5 uses
  %.not57 = icmp eq i16 %i.ac, -1
  br i1 %.not57, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !271 ; 7 uses
  %i.af = sext i16 %i.aa to i64
  %i.ag = getelementptr inbounds [120 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 90 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !305 ; 3 uses
  %i.aj = icmp eq i16 %i.ac, %i.ai
  br i1 %i.aj, label %_ZN5ImGui26TableSetColumnDisplayOrderEP10ImGuiTableii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = sext i16 %i.ai to i32
  %i.al = icmp slt i16 %i.ac, %i.ai
  %i.am = select i1 %i.al, i32 -1, i32 1          ; 3 uses
  store i16 %i.ac, ptr %i.ah, align 2, !tbaa !305
  %i.an = add nsw i32 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !275 ; 6 uses
  %i.aq = trunc nsw i32 %i.am to i16
  %i.ar = sext i32 %i.an to i64
  %i.as = sext i32 %i.am to i64
  %sext.i = sext i16 %i.ac to i64
  br label %bb.l

.preheader.i:                                     ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.au = load i32, ptr %i.at, align 4, !tbaa !221 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.au to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.aw = icmp ult i32 %i.au, 4
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.n

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %i.ar, %bb.k ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !300
  %i.az = sext i16 %i.ay to i64
  %i.ba = getelementptr inbounds [120 x i8], ptr %i.ae, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 90 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !305
  %i.bd = sub i16 %i.bc, %i.aq
  store i16 %i.bd, ptr %i.bb, align 2, !tbaa !305
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.as
  %i.be = icmp eq i64 %indvars.iv.i, %sext.i
  br i1 %i.be, label %.preheader.i, label %bb.l, !llvm.loop !0

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader
end_hunk_0
begin_hunk_1_@_ZN5ImGui23TableAngledHeadersRowExEjffPK20ImGuiTableHeaderDatai:bb.a
  br i1 %i.ay, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lc = fcmp ole float %i.kl, 0.000000e+00
  %i.ld = select i1 %i.lc, float 0.000000e+00, float %i.kl
  %i.le = fsub float %i.gh, %i.ld                 ; 2 uses
  %i.lf = fmul float %i.ba, %i.le
  %i.lg = fmul float %i.bb, %i.le
  %i.lh = fadd float %i.lf, %i.la
  %i.li = fadd float %i.lg, %i.lb
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %storemerge = phi float [ %i.li, %bb.ac ], [ %i.lb, %bb.ab ]
  %i.lj = phi float [ %i.lh, %bb.ac ], [ %i.la, %bb.ab ]
  store float %storemerge, ptr %i.gt, align 4, !tbaa !229
  %i.lk = fadd float %i.ir, %i.kz
  %i.ll = select i1 %i.ay, float %i.lk, float %i.kz
  %i.lm = fadd float %i.ll, %i.lj
  store float %i.lm, ptr %13, align 4, !tbaa !228
  call void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef nonnull %i.g, i32 noundef %i.kg, i32 noundef %i.kj, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.bf, float noundef %i.bg, ptr noundef nonnull align 4 dereferenceable(8) %13)
  %i.ln = getelementptr inbounds nuw i8, ptr %spec.select.us, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  %i.lo = icmp ult ptr %i.ln, %i.ip
  br i1 %i.lo, label %bb.ab, label %.loopexit.us, !llvm.loop !668

.loopexit.us:                                     ; preds = %bb.ad, %bb.w
  %.2.us = phi float [ %.1228.us, %bb.w ], [ %i.id, %bb.ad ] ; 2 uses
  br i1 %i.hf, label %bb.ae, label %.loopexit.us.thread

bb.ae:                                            ; preds = %.loopexit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.lp = load <2 x float>, ptr %9, align 16, !tbaa !177
  %i.lq = fadd <2 x float> %i.lp, <float -5.000000e-01, float -0.000000e+00>
  store <2 x float> %i.lq, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #4
  %i.lr = load <2 x float>, ptr %i.gc, align 8, !tbaa !177
  %i.ls = fadd <2 x float> %i.lr, <float -5.000000e-01, float -0.000000e+00>
  store <2 x float> %i.ls, ptr %15, align 8
  %i.lt = load i16, ptr %i.gv, align 4, !tbaa !297
  %i.lu = icmp eq i16 %i.hh, %i.lt
  %i.lv = load i16, ptr %i.gw, align 2, !tbaa !293
  %i.lw = icmp eq i16 %i.hh, %i.lv
  br i1 %i.lw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lx = load i16, ptr %i.gx, align 2, !tbaa !290
  %i.ly = load i16, ptr %i.gy, align 8, !tbaa !216
  %i.lz = icmp eq i16 %i.lx, %i.ly
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ma = phi i1 [ false, %bb.ae ], [ %i.lz, %bb.af ] ; 2 uses
  %or.cond.i.us = select i1 %i.ma, i1 true, i1 %i.lu
  br i1 %or.cond.i.us, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mb = load i16, ptr %i.dy, align 2, !tbaa !370
  %i.mc = add nuw nsw i64 %indvars.iv, 1
  %i.md = sext i16 %i.mb to i64
  %i.me = icmp eq i64 %i.mc, %i.md
  br i1 %i.me, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mf = load i32, ptr %i.gz, align 4, !tbaa !217
  %i.mg = and i32 %i.mf, 6144
  %.not.i199.us = icmp eq i32 %i.mg, 0
  br i1 %.not.i199.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.mh = load i32, ptr %i.ha, align 8, !tbaa !262
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.mi = load i32, ptr %i.hb, align 4, !tbaa !261
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

bb.al:                                            ; preds = %bb.ag
  %i.mj = select i1 %i.ma, i32 30, i32 29
  %i.mk = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.mj, float noundef 1.000000e+00)
  br label %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us

_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us: ; preds = %bb.al, %bb.ak, %bb.aj
  %.0.i.us = phi i32 [ %i.mk, %bb.al ], [ %i.mi, %bb.ak ], [ %i.mh, %bb.aj ]
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %.0.i.us, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us, %.loopexit.us
  %.2.us247 = phi float [ %.2.us, %.loopexit.us ], [ %.2.us, %_ZL23TableGetColumnBorderColP10ImGuiTableii.exit.us ], [ %i.id, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.w, !llvm.loop !669

.lr.ph.us:                                        ; preds = %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit.us
  %i.ml = add nsw i32 %i.is, -1
  %i.mm = sitofp i32 %i.ml to float
  %i.mn = fmul float %i.ir, %i.mm
  %i.mo = select i1 %i.ay, float %i.mn, float 0.000000e+00
  %i.mp = fsub float %i.jj, %i.fw
  %i.mq = fadd float %i.mo, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.hk, i64 44
  %i.ms = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.mt = fneg float %i.ir
  %i.mu = select i1 %i.ay, float %i.mt, float %i.ir
  br label %bb.ab

._crit_edge.us:                                   ; preds = %.loopexit.us.thread
  br i1 %i.he, label %.preheader.us, label %.split.us, !llvm.loop !670

.split.us:                                        ; preds = %._crit_edge.us, %_ZN5ImGui15TableSetBgColorEiji.exit
  %.us-phi = phi float [ f0xFF7FFFFF, %_ZN5ImGui15TableSetBgColorEiji.exit ], [ %.2.us247, %._crit_edge.us ]
  call void @_ZN5ImGui11PopClipRectEv()
  call void @_ZN5ImGui11PopClipRectEv()
  %i.mv = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.mw = load i16, ptr %i.mv, align 8, !tbaa !354
  %i.mx = load ptr, ptr %i.fz, align 8, !tbaa !271
  %i.my = sext i16 %i.mw to i64
  %i.mz = getelementptr inbounds [120 x i8], ptr %i.mx, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  %i.nb = load float, ptr %i.na, align 4, !tbaa !374
  %i.nc = fsub float %.us-phi, %i.nb              ; 2 uses
  %i.nd = fcmp ole float %i.nc, 0.000000e+00
  %i.ne = select i1 %i.nd, float 0.000000e+00, float %i.nc
  %i.nf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !207
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  store float %i.ne, ptr %i.nh, align 4, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.am

bb.am:                                            ; preds = %.split.us, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

declare void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui11KeepAliveIDEj(i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList13AddQuadFilledERK6ImVec2S2_S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z16ImTextCountLinesPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @_ZN5ImGui22ShadeVertsTransformPosEP10ImDrawListiiRK6ImVec2ffS4_(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11PopClipRectEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ImGui7EndMenuEv() local_unnamed_addr #2

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #2

declare void @_ZN5ImGui12PushItemFlagEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11PopItemFlagEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10120 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !310  ; 4 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i, %.lr.ph.i.preheader
  %.0812.i = phi ptr [ %i.k, %select.unfold.i ], [ %i.e, %.lr.ph.i.preheader ] ; 12 uses
  %i.f = load i32, ptr %.0812.i, align 4, !tbaa !312
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %_ZN5ImGui21TableSettingsFindByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !299
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %.0812.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !313
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = icmp eq ptr %i.k, %i.o
  br i1 %i.p, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, label %.lr.ph.i

_ZN5ImGui21TableSettingsFindByIDEj.exit:          ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0812.i, i64 14 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !461  ; 6 uses
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %.not21 = icmp sgt i32 %1, %i.s
  br i1 %.not21, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.0812.i, i8 0, i64 20, i1 false)
  %i.t = icmp sgt i16 %i.r, 0
  br i1 %i.t, label %.lr.ph.preheader.i, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %.0812.i, i64 20 ; 2 uses
  %i.v = icmp eq i16 %i.r, 1
  br i1 %i.v, label %.lr.ph.i22.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.s, 32766
  br label %.lr.ph.i22

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i22
  %i.w = and i16 %i.r, 1
  %lcmp.mod.not = icmp eq i16 %i.w, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i22.epil.preheader

.lr.ph.i22.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %.01517.i.epil.init = phi ptr [ %i.u, %.lr.ph.preheader.i ], [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ] ; 6 uses
  %lcmp.mod49 = trunc i16 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  store float 0.000000e+00, ptr %.01517.i.epil.init, align 4, !tbaa !412
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !411
  %i.y = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 8
  store i16 -1, ptr %i.y, align 4, !tbaa !462
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 12
  store i16 -1, ptr %i.z, align 4, !tbaa !413
  %i.aa = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 10
  store i16 -1, ptr %i.aa, align 2, !tbaa !463
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 14 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = and i8 %i.ac, -64
  %i.ae = or disjoint i8 %i.ad, 12
  store i8 %i.ae, ptr %i.ab, align 2
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i22.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0812.i, i64 18
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2
  %i.af = or i8 %.pre.i, 1
  br label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit

.lr.ph.i22:                                       ; preds = %.lr.ph.i22, %.lr.ph.preheader.i.new
  %.01517.i = phi ptr [ %i.u, %.lr.ph.preheader.i.new ], [ %i.ax, %.lr.ph.i22 ] ; 13 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i22 ]
  store float 0.000000e+00, ptr %.01517.i, align 4, !tbaa !412
  %i.ag = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !411
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  store i16 -1, ptr %i.ah, align 4, !tbaa !462
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i, i64 12
  store i16 -1, ptr %i.ai, align 4, !tbaa !413
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i, i64 10
  store i16 -1, ptr %i.aj, align 2, !tbaa !463
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i, i64 14 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2
  %i.am = and i8 %i.al, -64
  %i.an = or disjoint i8 %i.am, 12
  store i8 %i.an, ptr %i.ak, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !412
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i, i64 20
  store i32 0, ptr %i.ap, align 4, !tbaa !411
  %i.aq = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24
  store i16 -1, ptr %i.aq, align 4, !tbaa !462
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i, i64 28
  store i16 -1, ptr %i.ar, align 4, !tbaa !413
  %i.as = getelementptr inbounds nuw i8, ptr %.01517.i, i64 26
  store i16 -1, ptr %i.as, align 2, !tbaa !463
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i, i64 30 ; 2 uses
  %i.au = load i8, ptr %i.at, align 2
  %i.av = and i8 %i.au, -64
  %i.aw = or disjoint i8 %i.av, 12
  store i8 %i.aw, ptr %i.at, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i22, !llvm.loop !683

_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit: ; preds = %.critedge, %._crit_edge.loopexit.i
  %i.ay = phi i8 [ %i.af, %._crit_edge.loopexit.i ], [ 1, %.critedge ]
  store i32 %0, ptr %.0812.i, align 4, !tbaa !312
  %i.az = trunc i32 %1 to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0812.i, i64 12
  store i16 %i.az, ptr %i.ba, align 4, !tbaa !314
  store i16 %i.r, ptr %i.q, align 2, !tbaa !461
  %i.bb = getelementptr inbounds nuw i8, ptr %.0812.i, i64 18
  store i8 %i.ay, ptr %i.bb, align 2
  br label %bb.g

bb.b:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit
  store i32 0, ptr %.0812.i, align 4, !tbaa !312
  br label %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread

_ZN5ImGui21TableSettingsFindByIDEj.exit.thread:   ; preds = %select.unfold.i, %bb.a, %bb.b
  %i.bc = shl i32 %1, 4
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !313 ; 2 uses
  %i.be = add i32 %i.bc, 24                       ; 2 uses
  %i.bf = add nsw i32 %i.bd, %i.be                ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 10124 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !318 ; 4 uses
  %i.bi = icmp sgt i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.c, label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

bb.c:                                             ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread
  %.not.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = sdiv i32 %i.bh, 2
  %i.bk = add nsw i32 %i.bj, %i.bh
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.d, %bb.c
  %i.bl = phi i32 [ %i.bk, %bb.d ], [ 8, %bb.c ]
  %i.bm = tail call noundef i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bf) ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bn) ; 3 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !319 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.bq = load i32, ptr %i.b, align 8, !tbaa !320
  %i.br = sext i32 %i.bq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.bp, i64 %i.br, i1 false)
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !319
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bs)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  store ptr %i.bo, ptr %i.c, align 8, !tbaa !319
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !318
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit

_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit: ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread, %bb.f
  %i.bt = phi ptr [ %i.bo, %bb.f ], [ %i.d, %_ZN5ImGui21TableSettingsFindByIDEj.exit.thread ]
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !320
  %i.bu = sext i32 %i.bd to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu ; 7 uses
  store i32 %i.be, ptr %i.bv, align 4, !tbaa !299
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i8 0, i64 20, i1 false)
  %i.bx = icmp sgt i32 %1, 0
  br i1 %i.bx, label %.lr.ph.preheader.i25, label %_ZL17TableSettingsInitP18ImGuiTableSettingsjii.exit33

.lr.ph.preheader.i25:                             ; preds = %_ZN13ImChunkStreamI18ImGuiTableSettingsE11alloc_chunkEm.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %xtraiter50 = and i32 %1, 1
  %i.bz = icmp eq i32 %1, 1
  br i1 %i.bz, label %.lr.ph.i26.epil.preheader, label %.lr.ph.preheader.i25.new

.lr.ph.preheader.i25.new:                         ; preds = %.lr.ph.preheader.i25
  %unroll_iter53 = and i32 %1, 2147483646
  br label %.lr.ph.i26

._crit_edge.loopexit.i30.unr-lcssa:               ; preds = %.lr.ph.i26
  %lcmp.mod51.not = icmp eq i32 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %._crit_edge.loopexit.i30.unr-lcssa, %.lr.ph.preheader.i25
  %.01517.i28.epil.init = phi ptr [ %i.by, %.lr.ph.preheader.i25 ], [ %i.da, %._crit_edge.loopexit.i30.unr-lcssa ] ; 6 uses
  %lcmp.mod52 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  store float 0.000000e+00, ptr %.01517.i28.epil.init, align 4, !tbaa !412
  %i.ca = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 4
  store i32 0, ptr %i.ca, align 4, !tbaa !411
  %i.cb = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 8
  store i16 -1, ptr %i.cb, align 4, !tbaa !462
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 12
  store i16 -1, ptr %i.cc, align 4, !tbaa !413
  %i.cd = getelementptr inbounds nuw i8, ptr %.01517.i28.epil.init, i64 10
  store i16 -1, ptr %i.cd, align 2, !tbaa !463
end_hunk_1
