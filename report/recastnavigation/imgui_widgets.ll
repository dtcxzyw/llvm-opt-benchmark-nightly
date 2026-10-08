Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
inline.NumInlined: 1793
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5ImGui22MultiSelectAddSetRangeEP24ImGuiMultiSelectTempDatabixx:bb.a
}

declare noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui25DebugNodeMultiSelectStateEP21ImGuiMultiSelectState(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !505
  %i.c = tail call noundef i32 @_ZN5ImGui13GetFrameCountEv() #36
  %i.d = add nsw i32 %i.c, -2
  %.not = icmp slt i32 %i.b, %i.d                 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 1) #36
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.e) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !504  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %0, align 8, !tbaa !506    ; 2 uses
  %.not15 = icmp eq ptr %i.j, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !787
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ @.str.110, %bb.c ]
  %i.n = select i1 %.not, ptr @.str.111, ptr @.str
  %i.o = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.i, ptr noundef nonnull @.str.109, i32 noundef %i.g, ptr noundef %i.m, ptr noundef nonnull %i.n)
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !268  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i8, ptr %i.r, align 4, !tbaa !269
  %i.t = sext i8 %i.s to i32
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.112, i64 noundef %i.q, i64 noundef %i.q, i32 noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !284  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.x = load i8, ptr %i.w, align 1, !tbaa !285
  %i.y = sext i8 %i.x to i32
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.113, i64 noundef %i.v, i64 noundef %i.v, i32 noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !281
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.114, i32 noundef %i.aa)
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

declare noundef i32 @_ZN5ImGui13GetFrameCountEv() local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN26ImGuiSelectionBasicStorageC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 5), (8, 28), (32, 48)) %0) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 0, ptr %0, align 8, !tbaa !517
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.b, align 4, !tbaa !518
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !788
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @"_ZZN26ImGuiSelectionBasicStorageC1EvEN3$_08__invokeEPS_i", ptr %i.d, align 8, !tbaa !519
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !520
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN26ImGuiSelectionBasicStorage5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 4), (24, 28)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !517
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !520
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !521
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN8ImVectorI16ImGuiStoragePairE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) #36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !522  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.h, null
  br i1 %.not6.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !523
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.f, ptr nonnull align 8 %i.h, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !522
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.l) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.f, ptr %i.g, align 8, !tbaa !522
  store i32 0, ptr %i.c, align 4, !tbaa !521
  br label %_ZN8ImVectorI16ImGuiStoragePairE6resizeEi.exit

_ZN8ImVectorI16ImGuiStoragePairE6resizeEi.exit:   ; preds = %bb.a, %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !523
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN26ImGuiSelectionBasicStorage4SwapERS_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !211
  %i.b = load i32, ptr %1, align 8, !tbaa !211
  store i32 %i.b, ptr %0, align 8, !tbaa !211
  store i32 %i.a, ptr %1, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !211
  %i.f = load i32, ptr %i.d, align 8, !tbaa !211
  store i32 %i.f, ptr %i.c, align 8, !tbaa !211
  store i32 %i.e, ptr %i.d, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load <2 x i32>, ptr %i.h, align 8, !tbaa !211
  %i.j = load <2 x i32>, ptr %i.g, align 8, !tbaa !211
  store <2 x i32> %i.j, ptr %i.h, align 8, !tbaa !211
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !211
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !522
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !522
  store ptr %i.n, ptr %i.k, align 8, !tbaa !522
  store ptr %i.l, ptr %i.m, align 8, !tbaa !522
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef 0) #36
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !790    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !791  ; 5 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !524  ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !518, !range !187, !noundef !188
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = icmp eq ptr %i.a, null                   ; 2 uses
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  %i.l = icmp ne ptr %i.d, null
  %or.cond3 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.b, label %_ZL7ImQsortPvmmPFiPKvS1_E.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i32 %i.e, 1
  br i1 %i.m, label %bb.c, label %_ZL7ImQsortPvmmPFiPKvS1_E.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @qsort(ptr noundef nonnull %i.d, i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef 16, ptr noundef nonnull @_ZL22PairComparerByValueIntPKvS0_) #36
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !791
  br label %_ZL7ImQsortPvmmPFiPKvS1_E.exit.thread

_ZL7ImQsortPvmmPFiPKvS1_E.exit:                   ; preds = %bb.a
  %spec.select = select i1 %i.k, ptr %i.d, ptr %i.a
  br label %_ZL7ImQsortPvmmPFiPKvS1_E.exit.thread

_ZL7ImQsortPvmmPFiPKvS1_E.exit.thread:            ; preds = %_ZL7ImQsortPvmmPFiPKvS1_E.exit, %bb.c, %bb.b
  %.0 = phi ptr [ %spec.select, %_ZL7ImQsortPvmmPFiPKvS1_E.exit ], [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %.not27 = icmp eq ptr %.0, %i.g
  br i1 %.not27, label %.thread, label %.preheader

.thread:                                          ; preds = %_ZL7ImQsortPvmmPFiPKvS1_E.exit.thread
  store ptr %.0, ptr %1, align 8, !tbaa !790
  br label %bb.d

.preheader:                                       ; preds = %_ZL7ImQsortPvmmPFiPKvS1_E.exit.thread, %.preheader
  %.1 = phi ptr [ %i.s, %.preheader ], [ %.0, %_ZL7ImQsortPvmmPFiPKvS1_E.exit.thread ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !330
  %i.p = icmp eq i32 %i.o, 0
  %i.q = icmp ult ptr %.1, %i.g
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 16
  br i1 %i.r, label %.preheader, label %.loopexit, !llvm.loop !789

.loopexit:                                        ; preds = %.preheader
  %.not33 = icmp eq ptr %.1, %i.g                 ; 2 uses
  %.idx = select i1 %.not33, i64 0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 %.idx
  store ptr %i.t, ptr %1, align 8, !tbaa !790
  br i1 %.not33, label %bb.d, label %.thread.a

.thread.a:                                        ; preds = %.loopexit
  %i.u = load i32, ptr %.1, align 8, !tbaa !526
  store i32 %i.u, ptr %2, align 4, !tbaa !211
  br label %bb.f

bb.d:                                             ; preds = %.thread, %.loopexit
  store i32 0, ptr %2, align 4, !tbaa !211
  %i.v = load i8, ptr %i.h, align 4, !tbaa !518, !range !187, !noundef !188
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN12ImGuiStorage14BuildSortByKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %bb.f

bb.f:                                             ; preds = %.thread.a, %bb.e, %bb.d
  %3 = phi i1 [ true, %.thread.a ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL22PairComparerByValueIntPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !330
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !330
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

declare void @_ZN12ImGuiStorage14BuildSortByKeyEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN26ImGuiSelectionBasicStorage15SetItemSelectedEjb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef 0) #36 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !211
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %2, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !520  ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !520
  br label %.sink.split

.critedge:                                        ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.c
  %.sink = phi i32 [ %i.f, %bb.c ], [ 0, %.critedge ]
  %.sink8 = phi i32 [ 1, %bb.c ], [ -1, %.critedge ]
  store i32 %.sink, ptr %i.b, align 4, !tbaa !211
  %i.h = load i32, ptr %0, align 8, !tbaa !517
  %i.i = add nsw i32 %i.h, %.sink8
  store i32 %i.i, ptr %0, align 8, !tbaa !517
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %.critedge
  ret void
}

declare noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = mul nsw i64 %i.d, 24
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %.not79 = icmp eq i32 %i.c, 0
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  br label %bb.b

._crit_edge83:                                    ; preds = %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph82, %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit
  %.04880 = phi ptr [ %i.b, %.lr.ph82 ], [ %i.gc, %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit ] ; 9 uses
  %i.l = load i32, ptr %.04880, align 8, !tbaa !509
  switch i32 %i.l, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit [
    i32 1, label %bb.c
    i32 2, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8, !tbaa !517
  store i32 1, ptr %i.g, align 8, !tbaa !520
  %i.m = load i32, ptr %i.j, align 4, !tbaa !521  ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %_ZN26ImGuiSelectionBasicStorage5ClearEv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) #36 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !522  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.f, align 8, !tbaa !523
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !522
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.o, ptr %i.i, align 8, !tbaa !522
  store i32 0, ptr %i.j, align 4, !tbaa !521
  br label %_ZN26ImGuiSelectionBasicStorage5ClearEv.exit

_ZN26ImGuiSelectionBasicStorage5ClearEv.exit:     ; preds = %bb.c, %bb.f
  %i.u = phi i32 [ %i.m, %bb.c ], [ 0, %bb.f ]
  store i32 0, ptr %i.f, align 8, !tbaa !523
  %i.v = getelementptr inbounds nuw i8, ptr %.04880, i64 4 ; 3 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !510, !range !187, !noundef !188
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit

bb.g:                                             ; preds = %_ZN26ImGuiSelectionBasicStorage5ClearEv.exit
  %i.y = load i32, ptr %i.k, align 4, !tbaa !527  ; 4 uses
  %.not.i = icmp sgt i32 %i.y, %i.u
  br i1 %.not.i, label %bb.h, label %_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aa) #36 ; 2 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !522 ; 2 uses
  %.not6.i = icmp eq ptr %i.ac, null
  br i1 %.not6.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !523
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ab, ptr nonnull align 8 %i.ac, i64 %i.af, i1 false)
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !522
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ag) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !522
  store i32 %i.y, ptr %i.j, align 4, !tbaa !521
  %.pre = load i32, ptr %i.f, align 8, !tbaa !524
  %.pre84 = load i32, ptr %i.k, align 4, !tbaa !527
  br label %_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit

_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit:  ; preds = %bb.g, %bb.j
  %i.ah = phi i32 [ %i.y, %bb.g ], [ %.pre84, %bb.j ]
  %i.ai = phi i32 [ 0, %bb.g ], [ %.pre, %bb.j ]  ; 2 uses
  %i.aj = icmp sgt i32 %i.ah, 0
  br i1 %i.aj, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit
  %i.ak = sext i32 %i.ai to i64                   ; 2 uses
  br label %bb.l

._crit_edge78:                                    ; preds = %_ZL47ImGuiSelectionBasicStorage_BatchSetItemSelectedP26ImGuiSelectionBasicStoragejbii.exit, %_ZN8ImVectorI16ImGuiStoragePairE7reserveEi.exit
  %i.al = load i8, ptr %i.v, align 4, !tbaa !510, !range !187, !noundef !188
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.k, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit

bb.k:                                             ; preds = %._crit_edge78
  %i.an = load i32, ptr %0, align 8, !tbaa !517
  %.not.i53 = icmp eq i32 %i.an, %i.ai
  br i1 %.not.i53, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit.sink.split

bb.l:                                             ; preds = %.lr.ph77, %_ZL47ImGuiSelectionBasicStorage_BatchSetItemSelectedP26ImGuiSelectionBasicStoragejbii.exit
  %.04776 = phi i32 [ 0, %.lr.ph77 ], [ %i.ci, %_ZL47ImGuiSelectionBasicStorage_BatchSetItemSelectedP26ImGuiSelectionBasicStoragejbii.exit ] ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !519
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.04776) #36, !inline_history !792 ; 3 uses
  %i.aq = load i8, ptr %i.v, align 4, !tbaa !510, !range !187, !noundef !188 ; 2 uses
  %i.ar = trunc nuw i8 %i.aq to i1                ; 3 uses
  %i.as = load i32, ptr %i.g, align 8, !tbaa !520 ; 2 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !796 ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.ak
  %i.av = tail call noundef ptr @_Z12ImLowerBoundP16ImGuiStoragePairS0_j(ptr noundef %i.at, ptr noundef %i.au, i32 noundef %i.ap) #36 ; 4 uses
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !796 ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ak
  %.not24.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not24.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !526
  %i.az = icmp eq i32 %i.ay, %i.ap
  br i1 %i.az, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !330
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %.not26.i = phi i1 [ true, %bb.m ], [ false, %bb.n ], [ true, %bb.l ] ; 2 uses
  %i.be = phi i32 [ 0, %bb.m ], [ %i.bd, %bb.n ], [ 0, %bb.l ]
  %i.bf = zext nneg i8 %i.aq to i32
end_hunk_0
