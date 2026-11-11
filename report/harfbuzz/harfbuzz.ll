Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@hb_map_values:bb.a
  %.val2 = load ptr, ptr %i.b, align 8, !tbaa !1078 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %i.c = add i32 %.val, 1                         ; 3 uses
  %.not15.i.i.i.i.i.i = icmp ult i32 %i.c, 2
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i: ; preds = %bb.a
  %i.d = zext i32 %.val to i64
  %i.e = mul nuw nsw i64 %i.d, 12
  %i.f = getelementptr i8, ptr %.val2, i64 %i.e
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 12
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i
  %.sroa.5.sroa.5.0.i.i = phi i32 [ %i.k, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ], [ 0, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.5.sroa.0.0.i.i = phi i32 [ %i.j, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ], [ %i.c, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.02.0.i.i = phi ptr [ %i.l, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ], [ %.val2, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noalias !2614
  %i.i = trunc i32 %i.h to i1
  br i1 %i.i, label %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i
  %i.j = add i32 %.sroa.5.sroa.0.0.i.i, -1        ; 2 uses
  %i.k = add nuw i32 %.sroa.5.sroa.5.0.i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 12
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i, !llvm.loop !82

_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i
  %.sroa.5.sroa.5.1.ph.i.i = phi i32 [ %.sroa.5.sroa.5.0.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i ], [ %i.c, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ]
  %.sroa.5.sroa.0.1.ph.i.i = phi i32 [ %.sroa.5.sroa.0.0.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ]
  %.sroa.02.1.ph.i.i = phi ptr [ %.sroa.02.0.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i ], [ %scevgep.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i ]
  %i.n = zext i32 %.sroa.5.sroa.5.1.ph.i.i to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = zext i32 %.sroa.5.sroa.0.1.ph.i.i to i64
  %i.q = or disjoint i64 %i.o, %i.p
  br label %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit

_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit:         ; preds = %bb.a, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i
  %.sroa.02.1.i.i = phi ptr [ %.val2, %bb.a ], [ %.sroa.02.1.ph.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i ]
  %.sroa.5.sroa.0.0.insert.insert.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %_ZNK12hb_hashmap_tIjjLb1EE10iter_itemsEv.exit.loopexit.i.i ]
  store ptr %.sroa.02.1.i.i, ptr %2, align 8, !alias.scope !2613
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.5.sroa.0.0.insert.insert.i.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !2613
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 ptrtoint (ptr @_ZNK12hb_hashmap_tIjjLb1EE6item_t7is_realEv to i64), ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !2613
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.65.0..sroa_idx.i, align 8, !alias.scope !2613
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_ZL11hb_identity, ptr %.sroa.76.0..sroa_idx.i, align 8, !alias.scope !2613
  %.sroa.87.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 ptrtoint (ptr @_ZN12hb_hashmap_tIjjLb1EE6item_t9get_valueEv to i64), ptr %.sroa.87.0..sroa_idx.i, align 8, !alias.scope !2613
  %.sroa.98.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %.sroa.98.0..sroa_idx.i, align 8, !alias.scope !2613
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @_ZL12hb_ridentity, ptr %i.r, align 8, !tbaa !1087, !alias.scope !2615
  call fastcc void @"_Z7hb_copyI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK3$_8LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK3$_9LSH_0ELSC_0EER8hb_set_tEvOT_OT0_"(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(72) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z12hb_parse_intPPKcS0_Pib(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.c = load ptr, ptr %0, align 8, !tbaa !629    ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 31)
  %i.h = zext nneg i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.i = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef %i.c, i64 noundef %i.h) #59 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store ptr %i.a, ptr %i.b, align 8, !tbaa !629
  %i.k = tail call ptr @__errno_location() #63    ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !322
  %i.l = call noundef i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 10) #59
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %2, align 4, !tbaa !322
  %i.n = load i32, ptr %i.k, align 4, !tbaa !322
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !266

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !629  ; 3 uses
  %i.p = icmp ne ptr %i.a, %i.o                   ; 2 uses
  %brmerge.not.i = and i1 %3, %i.p
  br i1 %brmerge.not.i, label %.split.i, label %bb.c, !prof !702

.split.i:                                         ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !629    ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u
  %.not22.i = icmp eq i64 %i.s, %i.v
  br i1 %.not22.i, label %bb.d, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !670

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge.i, label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit", !prof !670

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !629
  %.pre23.i = ptrtoint ptr %i.o to i64
  %.pre24.i = ptrtoint ptr %i.a to i64
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.split.i
  %.pre-phi27.i = phi i64 [ %.pre26.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %.split.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre-phi27.i
  store ptr %i.x, ptr %0, align 8, !tbaa !629
  br label %"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit"

"_ZL13_parse_numberIiZ12hb_parse_intPPKcS1_PibE3$_0EbS2_S1_PT_bT0_.exit": ; preds = %bb.a, %.split.i, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %.split.i ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z13hb_parse_uintPPKcS0_Pjbi(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.c = load ptr, ptr %0, align 8, !tbaa !629    ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 31)
  %i.h = zext nneg i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.i = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef %i.c, i64 noundef %i.h) #59 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store ptr %i.a, ptr %i.b, align 8, !tbaa !629
  %i.k = tail call ptr @__errno_location() #63    ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !322
  %i.l = call noundef i64 @__isoc23_strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %4) #59
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %2, align 4, !tbaa !322
  %i.n = load i32, ptr %i.k, align 4, !tbaa !322
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.b, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !266

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !629  ; 3 uses
  %i.p = icmp ne ptr %i.a, %i.o                   ; 2 uses
  %brmerge.not.i = and i1 %3, %i.p
  br i1 %brmerge.not.i, label %.split.i, label %bb.c, !prof !702

.split.i:                                         ; preds = %bb.b
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !629    ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u
  %.not22.i = icmp eq i64 %i.s, %i.v
  br i1 %.not22.i, label %bb.d, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !670

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %._crit_edge.i, label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit", !prof !670

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !629
  %.pre23.i = ptrtoint ptr %i.o to i64
  %.pre24.i = ptrtoint ptr %i.a to i64
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.split.i
  %.pre-phi27.i = phi i64 [ %.pre26.i, %._crit_edge.i ], [ %i.s, %.split.i ]
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.t, %.split.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre-phi27.i
  store ptr %i.x, ptr %0, align 8, !tbaa !629
  br label %"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit"

"_ZL13_parse_numberIjZ13hb_parse_uintPPKcS1_PjbiE3$_0EbS2_S1_PT_bT0_.exit": ; preds = %bb.a, %.split.i, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %.split.i ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !629    ; 6 uses
  %4 = ptrtoaddr ptr %i.a to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = icmp ult ptr %i.a, %1
  br i1 %i.c, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = sub i64 %i.b, %4
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.078155.i = phi ptr [ %i.f, %bb.b ], [ %i.a, %.lr.ph.preheader.i ] ; 3 uses
  %i.e = load i8, ptr %.078155.i, align 1, !tbaa !278
  switch i8 %i.e, label %.critedge.loopexit.i [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 11, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.078155.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.f, %1
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !2616

.critedge.loopexit.i:                             ; preds = %bb.b, %.lr.ph.i
  %.078.lcssa.ph.i = phi ptr [ %scevgep.i, %bb.b ], [ %.078155.i, %.lr.ph.i ] ; 2 uses
  %.pre.i = ptrtoaddr ptr %.078.lcssa.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.a
  %.078.lcssa158.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %4, %bb.a ]
  %.078.lcssa.i = phi ptr [ %.078.lcssa.ph.i, %.critedge.loopexit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.g = icmp eq ptr %.078.lcssa.i, %1
  br i1 %i.g, label %_ZL9strtod_rlPKcPS0_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.critedge.i
  %i.h = sub i64 %i.b, %.078.lcssa158.pre-phi.i
  %scevgep159.i = getelementptr i8, ptr %.078.lcssa.i, i64 %i.h
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %.preheader.preheader.i
  %.179.i = phi ptr [ %i.ba, %bb.m ], [ %.078.lcssa.i, %.preheader.preheader.i ] ; 3 uses
  %.074.i = phi double [ %.175.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 8 uses
  %.071.i = phi double [ %.172.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 9 uses
  %.068.i = phi double [ %.169.i, %bb.m ], [ 0.000000e+00, %.preheader.preheader.i ] ; 8 uses
  %.065.i = phi i32 [ %.166.i, %bb.m ], [ 0, %.preheader.preheader.i ] ; 9 uses
  %.062.i = phi i1 [ %.163.i, %bb.m ], [ false, %.preheader.preheader.i ] ; 7 uses
  %.059.i = phi i8 [ %.160.i, %bb.m ], [ 0, %.preheader.preheader.i ] ; 7 uses
  %.058.i = phi i1 [ %.1.i, %bb.m ], [ false, %.preheader.preheader.i ] ; 8 uses
  %.0.i = phi i32 [ %i.ai, %bb.m ], [ 1, %.preheader.preheader.i ] ; 2 uses
  %i.i = shl nsw i32 %.0.i, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr @_ZL25_double_parser_trans_keys, i64 %i.j ; 2 uses
  %i.l = sext i32 %.0.i to i64                    ; 2 uses
  %i.m = getelementptr inbounds i8, ptr @_ZL28_double_parser_index_offsets, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !278
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL23_double_parser_indicies, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr @_ZL24_double_parser_key_spans, i64 %i.l
  %i.r = load i8, ptr %i.q, align 1, !tbaa !278
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %i.k, align 2, !tbaa !278
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = load i8, ptr %.179.i, align 1, !tbaa !278
  %i.w = sext i8 %i.v to i32                      ; 6 uses
  %.not.i = icmp sgt i32 %i.u, %i.w
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !278
  %i.z = zext i8 %i.y to i32
  %.not88.i = icmp samesign ugt i32 %i.w, %i.z
  %i.aa = sub nuw nsw i32 %i.w, %i.u
  %spec.select.i = select i1 %.not88.i, i32 %i.s, i32 %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %i.ab = phi i32 [ %i.s, %.preheader.i ], [ %spec.select.i, %bb.c ]
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.p, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !278 ; 2 uses
  %i.af = sext i8 %i.ae to i64                    ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr @_ZL26_double_parser_trans_targs, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !278
  %i.ai = sext i8 %i.ah to i32
  %i.aj = shl nuw i64 1, %i.af
  %i.ak = and i64 %i.aj, 587
  %.not89.i = icmp eq i64 %i.ak, 0
  br i1 %.not89.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds i8, ptr @_ZL28_double_parser_trans_actions, i64 %i.af
  %i.am = load i8, ptr %i.al, align 1, !tbaa !278
  switch i8 %i.am, label %bb.l [
    i8 1, label %bb.f
    i8 4, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 5, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.an = add nsw i32 %i.w, -48
  %i.ao = sitofp i32 %i.an to double
  %i.ap = tail call double @llvm.fmuladd.f64(double %.074.i, double 1.000000e+01, double %i.ao)
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.aq = fcmp ugt double %.071.i, f0x42F9999999999990
  br i1 %i.aq, label %bb.l, label %bb.j, !prof !265

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.w, -48
  %i.as = sitofp i32 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %.071.i, double 1.000000e+01, double %i.as)
  %i.au = fadd double %.068.i, 1.000000e+00
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.av = mul i32 %.065.i, 10
  %i.aw = add i32 %i.av, -48
  %i.ax = add i32 %i.aw, %i.w                     ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 2047                ; 2 uses
  %..065.i = select i1 %i.ay, i32 %.065.i, i32 %i.ax, !prof !265
  %.058..i = select i1 %i.ay, i1 true, i1 %.058.i, !prof !265
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.175.i = phi double [ %.074.i, %bb.d ], [ %.074.i, %bb.e ], [ %.074.i, %bb.f ], [ %.074.i, %bb.g ], [ %i.ap, %bb.h ], [ %.074.i, %bb.j ], [ %.074.i, %bb.i ], [ %.074.i, %bb.k ] ; 3 uses
  %.172.i = phi double [ %.071.i, %bb.d ], [ %.071.i, %bb.e ], [ %.071.i, %bb.f ], [ %.071.i, %bb.g ], [ %.071.i, %bb.h ], [ %i.at, %bb.j ], [ %.071.i, %bb.i ], [ %.071.i, %bb.k ] ; 2 uses
  %.169.i = phi double [ %.068.i, %bb.d ], [ %.068.i, %bb.e ], [ %.068.i, %bb.f ], [ %.068.i, %bb.g ], [ %.068.i, %bb.h ], [ %i.au, %bb.j ], [ %.068.i, %bb.i ], [ %.068.i, %bb.k ] ; 3 uses
  %.166.i = phi i32 [ %.065.i, %bb.d ], [ %.065.i, %bb.e ], [ %.065.i, %bb.f ], [ %.065.i, %bb.g ], [ %.065.i, %bb.h ], [ %.065.i, %bb.j ], [ %.065.i, %bb.i ], [ %..065.i, %bb.k ] ; 4 uses
  %.163.i = phi i1 [ %.062.i, %bb.d ], [ %.062.i, %bb.e ], [ true, %bb.f ], [ %.062.i, %bb.g ], [ %.062.i, %bb.h ], [ %.062.i, %bb.j ], [ %.062.i, %bb.i ], [ %.062.i, %bb.k ] ; 4 uses
  %.160.i = phi i8 [ %.059.i, %bb.d ], [ %.059.i, %bb.e ], [ %.059.i, %bb.f ], [ 1, %bb.g ], [ %.059.i, %bb.h ], [ %.059.i, %bb.j ], [ %.059.i, %bb.i ], [ %.059.i, %bb.k ] ; 3 uses
  %.1.i = phi i1 [ %.058.i, %bb.d ], [ %.058.i, %bb.e ], [ %.058.i, %bb.f ], [ %.058.i, %bb.g ], [ %.058.i, %bb.h ], [ %.058.i, %bb.j ], [ %.058.i, %bb.i ], [ %.058..i, %bb.k ] ; 2 uses
  %i.az = icmp eq i8 %i.ae, 1
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.179.i, i64 1 ; 2 uses
  %.not90.i = icmp eq ptr %i.ba, %1
  br i1 %.not90.i, label %bb.n, label %.preheader.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.280.i = phi ptr [ %scevgep159.i, %bb.m ], [ %.179.i, %bb.l ] ; 6 uses
  %i.bb = fcmp une double %.169.i, 0.000000e+00
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = fptoui double %.169.i to i32            ; 2 uses
  %i.bd = and i32 %i.bc, 256
  %.not9.i.i = icmp eq i32 %i.bd, 0
  %.1.i.i = select i1 %.not9.i.i, double 1.000000e+00, double 1.000000e+256 ; 2 uses
  %i.be = fmul nnan double %.1.i.i, 1.000000e+128
  %i.bf = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %i.bg = shufflevector <8 x i32> %i.bf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bh = and <8 x i32> %i.bg, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.bi = icmp eq <8 x i32> %i.bh, zeroinitializer ; 8 uses
  %i.bj = extractelement <8 x i1> %i.bi, i64 7
  %.1.1.i.i = select i1 %i.bj, double %.1.i.i, double %i.be ; 2 uses
  %i.bk = fmul nnan double %.1.1.i.i, 1.000000e+64
  %i.bl = extractelement <8 x i1> %i.bi, i64 6
  %.1.2.i.i = select i1 %i.bl, double %.1.1.i.i, double %i.bk ; 2 uses
  %i.bm = fmul nnan double %.1.2.i.i, 1.000000e+32
  %i.bn = extractelement <8 x i1> %i.bi, i64 5
  %.1.3.i.i = select i1 %i.bn, double %.1.2.i.i, double %i.bm ; 2 uses
  %i.bo = fmul nnan double %.1.3.i.i, 1.000000e+16
  %i.bp = extractelement <8 x i1> %i.bi, i64 4
  %.1.4.i.i = select i1 %i.bp, double %.1.3.i.i, double %i.bo ; 2 uses
  %i.bq = fmul nnan double %.1.4.i.i, 1.000000e+08
  %i.br = extractelement <8 x i1> %i.bi, i64 3
  %.1.5.i.i = select i1 %i.br, double %.1.4.i.i, double %i.bq ; 2 uses
  %i.bs = fmul double %.1.5.i.i, 1.000000e+04
  %i.bt = extractelement <8 x i1> %i.bi, i64 2
  %.1.6.i.i = select i1 %i.bt, double %.1.5.i.i, double %i.bs ; 2 uses
  %i.bu = fmul double %.1.6.i.i, 1.000000e+02
  %i.bv = extractelement <8 x i1> %i.bi, i64 1
  %.1.7.i.i = select i1 %i.bv, double %.1.6.i.i, double %i.bu ; 2 uses
  %i.bw = fmul double %.1.7.i.i, 1.000000e+01
  %i.bx = extractelement <8 x i1> %i.bi, i64 0
  %.1.8.i.i = select i1 %i.bx, double %.1.7.i.i, double %i.bw
  %i.by = fdiv double %.172.i, %.1.8.i.i
  %i.bz = fadd double %.175.i, %i.by
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3.i = phi double [ %i.bz, %bb.o ], [ %.175.i, %bb.n ] ; 3 uses
  %i.ca = fneg double %.3.i
  %.4.i = select i1 %.163.i, double %i.ca, double %.3.i ; 4 uses
  br i1 %.1.i, label %bb.q, label %bb.u, !prof !2617

bb.q:                                             ; preds = %bb.p
  %i.cb = fcmp oeq double %.3.i, 0.000000e+00
  br i1 %i.cb, label %_ZL9strtod_rlPKcPS0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = trunc nuw i8 %.160.i to i1
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = select i1 %.163.i, double f0x8010000000000000, double f0x0010000000000000
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.t:                                             ; preds = %bb.r
  %i.ce = select i1 %.163.i, double f0xFFEFFFFFFFFFFFFF, double f0x7FEFFFFFFFFFFFFF
  br label %_ZL9strtod_rlPKcPS0_.exit

bb.u:                                             ; preds = %bb.p
  %.not91.i = icmp eq i32 %.166.i, 0
  br i1 %.not91.i, label %_ZL9strtod_rlPKcPS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = trunc nuw i8 %.160.i to i1
  %i.cg = and i32 %.166.i, 256
  %.not9.i92.i = icmp eq i32 %i.cg, 0
  %.1.i93.i = select i1 %.not9.i92.i, double 1.000000e+00, double 1.000000e+256 ; 2 uses
  %i.ch = insertelement <8 x i32> poison, i32 %.166.i, i64 0
  %i.ci = shufflevector <8 x i32> %i.ch, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cj = and <8 x i32> %i.ci, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.ck = fmul nnan double %.1.i93.i, 1.000000e+128
  %i.cl = icmp eq <8 x i32> %i.cj, zeroinitializer ; 8 uses
  %i.cm = extractelement <8 x i1> %i.cl, i64 7
  %.1.1.i95.i = select i1 %i.cm, double %.1.i93.i, double %i.ck ; 2 uses
  %i.cn = fmul nnan double %.1.1.i95.i, 1.000000e+64
  %i.co = extractelement <8 x i1> %i.cl, i64 6
  %.1.2.i97.i = select i1 %i.co, double %.1.1.i95.i, double %i.cn ; 2 uses
  %i.cp = fmul nnan double %.1.2.i97.i, 1.000000e+32
  %i.cq = extractelement <8 x i1> %i.cl, i64 5
  %.1.3.i99.i = select i1 %i.cq, double %.1.2.i97.i, double %i.cp ; 2 uses
end_hunk_0
begin_hunk_1_@hb_ot_metrics_get_y_variation:bb.a
  br i1 %.not10.i.i.i.i, label %bb.c, label %bb.d, !prof !265

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %hb_ot_metrics_get_variation.exit, label %bb.e, !prof !266

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT4MVARE22hb_table_lazy_loader_tIS1_Lj22ELb1EE9hb_face_tLj22E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %hb_ot_metrics_get_variation.exit, !prof !267

hb_ot_metrics_get_variation.exit:                 ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %.07.i.i.i.i, %bb.d ], [ %i.j, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !273
  %i.m = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !274
  %i.o = icmp ult i32 %i.n, 12
  %spec.select.i.i.i.i.i.i = select i1 %i.o, ptr @_hb_NullPool, ptr %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !307
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.s = load i32, ptr %i.r, align 4, !tbaa !308
  %i.t = tail call noundef float @_ZNK2OT4MVAR7get_varEjPKij(ptr noundef nonnull align 1 dereferenceable(13) %spec.select.i.i.i.i.i.i, i32 noundef %1, ptr noundef %i.q, i32 noundef %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.v = load float, ptr %i.u, align 4, !tbaa !616
  %i.w = fmul float %i.t, %i.v
  %i.x = fadd float %i.w, 5.000000e-01
  %i.y = tail call noundef float @llvm.floor.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  ret i32 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_ot_name_list_names(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !263

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !264
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.b, !prof !265

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj8EE11call_createIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS4_Lj8EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %bb.c, label %bb.d, !prof !265

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, label %bb.e, !prof !266

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit, !prof !267

_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i = phi ptr [ %i.c, %bb.a ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.h, %bb.e ], [ %.07.i.i.i, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1348
  store i32 %i.j, ptr %1, align 4, !tbaa !322
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1349
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_ot_name_get_utf8(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, !prof !263

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !264
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, label %bb.b, !prof !265

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj8EE11call_createIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS4_Lj8EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i.i, label %bb.c, label %bb.d, !prof !265

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, label %bb.e, !prof !266

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, !prof !267

_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i, %bb.a
  %.19.ph.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %.07.i.i.i.i, %bb.d ], [ %i.j, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ] ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.f, label %hb_language_from_string.exit.i

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i16 28261, ptr %i.a, align 16, !alias.scope !2739
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.k, align 2, !tbaa !278
  %i.l = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.not11.i.i = icmp eq ptr %i.l, null
  br i1 %.not11.i.i, label %hb_language_from_string.exit.i, label %bb.g, !prof !265

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !698
  br label %hb_language_from_string.exit.i

hb_language_from_string.exit.i:                   ; preds = %bb.g, %bb.f, %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i
  %.021.i = phi ptr [ %2, %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i ], [ %i.n, %bb.g ], [ null, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.o = call noundef i32 @_ZNK2OT4name13accelerator_t9get_indexEjPK18hb_language_impl_tPj(ptr noundef nonnull align 8 dereferenceable(40) %.19.ph.i.i.i.i, i32 noundef %1, ptr noundef %.021.i, ptr noundef nonnull %i.b) ; 3 uses
  %.not27.i = icmp eq i32 %i.o, -1
  br i1 %.not27.i, label %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t9hb_utf8_tEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, label %bb.h

bb.h:                                             ; preds = %hb_language_from_string.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !270  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !273
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !274
  %i.v = icmp ult i32 %i.u, 6
  %spec.select.i.i1.i.i.i.i = select i1 %i.v, ptr @_hb_NullPool, ptr %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 2
  %i.y = load i16, ptr %i.x, align 1, !tbaa !281
  %i.z = call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  %.not.i.i.i30.i = icmp ult i32 %i.o, %i.aa
  %i.ab = zext i32 %i.o to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.ab
  %.0.i.i.i.i = select i1 %.not.i.i.i30.i, ptr %i.ac, ptr @_hb_NullPool, !prof !266 ; 2 uses
  %i.ad = load ptr, ptr %.19.ph.i.i.i.i, align 8, !tbaa !1350
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1351
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 10
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !281
  %i.ai = call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !281
  %i.am = call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32
  %storemerge.i.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.af, i32 %i.aj)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i, i32 %i.an) ; 2 uses
  %i.ao = zext i16 %i.ai to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ao ; 7 uses
  %.sroa.3.8.insert.ext.i.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i.i to i64 ; 3 uses
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !322
  switch i32 %i.aq, label %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t9hb_utf8_tEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i [
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = call noundef i32 @_ZN2OT22hb_ot_name_convert_utfI13hb_utf16_xe_tINS_7NumTypeILb1EtLj2EEEE9hb_utf8_tEEj10hb_array_tIKcEPjPNT0_11codepoint_tE(ptr %i.ap, i64 %.sroa.3.8.insert.ext.i.i.i.i, ptr noundef %3, ptr noundef %4)
  br label %_ZL18hb_ot_name_get_utfI9hb_utf8_tEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

bb.j:                                             ; preds = %bb.h
  %i.as = ptrtoaddr ptr %i.ap to i64              ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.3.8.insert.ext.i.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i32, ptr %3, align 4, !tbaa !322   ; 2 uses
  %.not44.i.i = icmp eq i32 %i.au, 0
  br i1 %.not44.i.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = add i32 %i.au, -1                       ; 3 uses
  store i32 %i.av, ptr %3, align 4, !tbaa !322
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.aw ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = icmp ne i32 %.sroa.speculated.i.i.i.i, 0
  %i.ba = icmp ne i32 %i.av, 0
  %i.bb = and i1 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i
  %.03350.i.i = phi ptr [ %.032.i.i.i, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i ], [ %4, %bb.l ] ; 12 uses
  %.03449.i.i = phi ptr [ %i.bf, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i ], [ %i.ap, %bb.l ] ; 4 uses
  %i.bc = load i8, ptr %.03449.i.i, align 1, !tbaa !278 ; 4 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = icmp slt i8 %i.bc, 0                    ; 2 uses
  %spec.select.i.i.i = select i1 %i.be, i32 65533, i32 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03449.i.i, i64 1 ; 3 uses
  %i.bg = icmp samesign ult i32 %spec.select.i.i.i, 128
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bh = trunc nuw nsw i32 %spec.select.i.i.i to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.03350.i.i, i64 1
  store i8 %i.bh, ptr %.03350.i.i, align 1, !tbaa !278
  br label %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bj = ptrtoint ptr %.03350.i.i to i64
  %i.bk = sub i64 %i.ay, %i.bj                    ; 2 uses
  br i1 %i.be, label %.thread39.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.loopexit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bm = lshr i8 %i.bc, 6
  %i.bn = or disjoint i8 %i.bm, -64
  %i.bo = getelementptr inbounds nuw i8, ptr %.03350.i.i, i64 1
  store i8 %i.bn, ptr %.03350.i.i, align 1, !tbaa !278
  %i.bp = and i8 %i.bc, 63
  %i.bq = or disjoint i8 %i.bp, -128
  %i.br = getelementptr inbounds nuw i8, ptr %.03350.i.i, i64 2
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !278
  br label %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i

.thread39.i.i.i:                                  ; preds = %bb.n
  %i.bs = icmp sgt i64 %i.bk, 2
  br i1 %i.bs, label %bb.q, label %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.loopexit.i.i

bb.q:                                             ; preds = %.thread39.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.03350.i.i, i64 1
  store i8 -17, ptr %.03350.i.i, align 1, !tbaa !278
  %i.bu = getelementptr inbounds nuw i8, ptr %.03350.i.i, i64 2
  store i8 -65, ptr %i.bt, align 1, !tbaa !278
  %i.bv = getelementptr inbounds nuw i8, ptr %.03350.i.i, i64 3
  store i8 -67, ptr %i.bu, align 1, !tbaa !278
  br label %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i

_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i:             ; preds = %bb.q, %bb.p, %bb.m
  %.032.i.i.i = phi ptr [ %i.bi, %bb.m ], [ %i.br, %bb.p ], [ %i.bv, %bb.q ] ; 3 uses
  %i.bw = icmp ult ptr %i.bf, %i.at
  %i.bx = icmp ult ptr %.032.i.i.i, %i.ax
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph.i.i, label %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.loopexit.i.i

_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.loopexit.i.i: ; preds = %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i, %.thread39.i.i.i, %bb.o
  %.034.lcssa.ph.i.i = phi ptr [ %i.bf, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i ], [ %.03449.i.i, %bb.o ], [ %.03449.i.i, %.thread39.i.i.i ] ; 2 uses
  %.033.lcssa.ph.i.i = phi ptr [ %.032.i.i.i, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.i.i ], [ %.03350.i.i, %bb.o ], [ %.03350.i.i, %.thread39.i.i.i ]
  %.pre61.i.i = ptrtoaddr ptr %.034.lcssa.ph.i.i to i64
  br label %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.i.i

_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.i.i:      ; preds = %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.loopexit.i.i, %bb.l
  %.pre.pre-phi.i.i = phi i64 [ %.pre61.i.i, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.loopexit.i.i ], [ %i.as, %bb.l ]
  %.034.lcssa.i.i = phi ptr [ %.034.lcssa.ph.i.i, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.loopexit.i.i ], [ %i.ap, %bb.l ]
  %.033.lcssa.i.i = phi ptr [ %.033.lcssa.ph.i.i, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.loopexit.i.i ], [ %4, %bb.l ] ; 3 uses
  %i.bz = ptrtoint ptr %.033.lcssa.i.i to i64
  %i.ca = ptrtoint ptr %4 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  store i32 %i.cc, ptr %3, align 4, !tbaa !322
  store i8 0, ptr %.033.lcssa.i.i, align 1, !tbaa !278
  br label %bb.r

bb.r:                                             ; preds = %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.i.i, %bb.k, %bb.j
  %.33760.pre-phi.i.i = phi i64 [ %.pre.pre-phi.i.i, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.i.i ], [ %i.as, %bb.k ], [ %i.as, %bb.j ]
  %.337.i.i = phi ptr [ %.034.lcssa.i.i, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.i.i ], [ %i.ap, %bb.k ], [ %i.ap, %bb.j ] ; 5 uses
  %.3.i.i = phi ptr [ %.033.lcssa.i.i, %_ZN9hb_utf8_t6encodeEPhPKhj.exit.thread.i.i ], [ %4, %bb.k ], [ %4, %bb.j ]
  %i.cd = ptrtoint ptr %.3.i.i to i64
  %i.ce = ptrtoint ptr %4 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = icmp ult ptr %.337.i.i, %i.at
  br i1 %i.ch, label %_ZN9hb_utf8_t10encode_lenEj.exit.preheader.i.i, label %_ZL18hb_ot_name_get_utfI9hb_utf8_tEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

_ZN9hb_utf8_t10encode_lenEj.exit.preheader.i.i:   ; preds = %bb.r
  %i.ci = add i64 %.sroa.3.8.insert.ext.i.i.i.i, %i.as
  %i.cj = sub i64 %i.ci, %.33760.pre-phi.i.i      ; 4 uses
  %scevgep.i.i = getelementptr i8, ptr %.337.i.i, i64 %i.cj
  %min.iters.check = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check, label %_ZN9hb_utf8_t10encode_lenEj.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN9hb_utf8_t10encode_lenEj.exit.preheader.i.i
  %n.vec = and i64 %i.cj, -8                      ; 3 uses
  %i.ck = getelementptr i8, ptr %.337.i.i, i64 %n.vec
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cg, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cl, %vector.ph ], [ %i.cr, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cs, %vector.body ]
  %next.gep = getelementptr i8, ptr %.337.i.i, i64 %index ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !278
  %wide.load14 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !278
  %i.cn = icmp sgt <4 x i8> %wide.load, splat (i8 -1)
  %i.co = icmp sgt <4 x i8> %wide.load14, splat (i8 -1)
  %i.cp = select <4 x i1> %i.cn, <4 x i32> splat (i32 1), <4 x i32> splat (i32 3)
  %i.cq = select <4 x i1> %i.co, <4 x i32> splat (i32 1), <4 x i32> splat (i32 3)
  %i.cr = add <4 x i32> %i.cp, %vec.phi           ; 2 uses
  %i.cs = add <4 x i32> %i.cq, %vec.phi13         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !2737

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cs, %i.cr
  %i.cu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZL18hb_ot_name_get_utfI9hb_utf8_tEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit, label %_ZN9hb_utf8_t10encode_lenEj.exit.i.i.preheader

_ZN9hb_utf8_t10encode_lenEj.exit.i.i.preheader:   ; preds = %_ZN9hb_utf8_t10encode_lenEj.exit.preheader.i.i, %middle.block
  %.058.i.i.ph = phi i32 [ %i.cg, %_ZN9hb_utf8_t10encode_lenEj.exit.preheader.i.i ], [ %i.cu, %middle.block ]
  %.457.i.i.ph = phi ptr [ %.337.i.i, %_ZN9hb_utf8_t10encode_lenEj.exit.preheader.i.i ], [ %i.ck, %middle.block ]
  br label %_ZN9hb_utf8_t10encode_lenEj.exit.i.i

_ZN9hb_utf8_t10encode_lenEj.exit.i.i:             ; preds = %_ZN9hb_utf8_t10encode_lenEj.exit.i.i.preheader, %_ZN9hb_utf8_t10encode_lenEj.exit.i.i
  %.058.i.i = phi i32 [ %i.cy, %_ZN9hb_utf8_t10encode_lenEj.exit.i.i ], [ %.058.i.i.ph, %_ZN9hb_utf8_t10encode_lenEj.exit.i.i.preheader ]
  %.457.i.i = phi ptr [ %i.cw, %_ZN9hb_utf8_t10encode_lenEj.exit.i.i ], [ %.457.i.i.ph, %_ZN9hb_utf8_t10encode_lenEj.exit.i.i.preheader ] ; 2 uses
  %i.cv = load i8, ptr %.457.i.i, align 1, !tbaa !278
  %i.cw = getelementptr inbounds nuw i8, ptr %.457.i.i, i64 1 ; 2 uses
  %i.cx = icmp sgt i8 %i.cv, -1
  %.0.i.i.i = select i1 %i.cx, i32 1, i32 3
  %i.cy = add i32 %.0.i.i.i, %.058.i.i            ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.cw, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %_ZL18hb_ot_name_get_utfI9hb_utf8_tEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit, label %_ZN9hb_utf8_t10encode_lenEj.exit.i.i, !llvm.loop !2738

_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t9hb_utf8_tEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i: ; preds = %bb.h, %hb_language_from_string.exit.i
  %.not28.i = icmp eq ptr %3, null
  br i1 %.not28.i, label %_ZL18hb_ot_name_get_utfI9hb_utf8_tEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t9hb_utf8_tEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i
  %i.cz = load i32, ptr %3, align 4, !tbaa !322
  %.not29.i = icmp eq i32 %i.cz, 0
  br i1 %.not29.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %4, align 1, !tbaa !278
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 0, ptr %3, align 4, !tbaa !322
  br label %_ZL18hb_ot_name_get_utfI9hb_utf8_tEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

_ZL18hb_ot_name_get_utfI9hb_utf8_tEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit: ; preds = %_ZN9hb_utf8_t10encode_lenEj.exit.i.i, %middle.block, %bb.i, %bb.r, %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t9hb_utf8_tEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, %bb.u
  %.1.i = phi i32 [ 0, %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t9hb_utf8_tEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i ], [ 0, %bb.u ], [ %i.ar, %bb.i ], [ %i.cg, %bb.r ], [ %i.cu, %middle.block ], [ %i.cy, %_ZN9hb_utf8_t10encode_lenEj.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  ret i32 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_ot_name_get_utf16(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, !prof !263

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !264
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, label %bb.b, !prof !265

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj8EE11call_createIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS4_Lj8EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i.i, label %bb.c, label %bb.d, !prof !265

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, label %bb.e, !prof !266

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, !prof !267

_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i, %bb.a
  %.19.ph.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %.07.i.i.i.i, %bb.d ], [ %i.j, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ] ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.f, label %hb_language_from_string.exit.i

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i16 28261, ptr %i.a, align 16, !alias.scope !2743
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.k, align 2, !tbaa !278
  %i.l = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.not11.i.i = icmp eq ptr %i.l, null
  br i1 %.not11.i.i, label %hb_language_from_string.exit.i, label %bb.g, !prof !265

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !698
  br label %hb_language_from_string.exit.i

hb_language_from_string.exit.i:                   ; preds = %bb.g, %bb.f, %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i
  %.021.i = phi ptr [ %2, %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i ], [ %i.n, %bb.g ], [ null, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.o = call noundef i32 @_ZNK2OT4name13accelerator_t9get_indexEjPK18hb_language_impl_tPj(ptr noundef nonnull align 8 dereferenceable(40) %.19.ph.i.i.i.i, i32 noundef %1, ptr noundef %.021.i, ptr noundef nonnull %i.b) ; 3 uses
  %.not27.i = icmp eq i32 %i.o, -1
  br i1 %.not27.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %hb_language_from_string.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !270  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !273
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !274
  %i.v = icmp ult i32 %i.u, 6
  %spec.select.i.i1.i.i.i.i = select i1 %i.v, ptr @_hb_NullPool, ptr %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 2
  %i.y = load i16, ptr %i.x, align 1, !tbaa !281
  %i.z = call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  %.not.i.i.i30.i = icmp ult i32 %i.o, %i.aa
  %i.ab = zext i32 %i.o to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.ab
  %.0.i.i.i.i = select i1 %.not.i.i.i30.i, ptr %i.ac, ptr @_hb_NullPool, !prof !266 ; 2 uses
  %i.ad = load ptr, ptr %.19.ph.i.i.i.i, align 8, !tbaa !1350
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1351
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 10
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !281
  %i.ai = call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !281
  %i.am = call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32
  %storemerge.i.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.af, i32 %i.aj)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i, i32 %i.an) ; 3 uses
  %i.ao = zext i16 %i.ai to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ao ; 7 uses
  %.sroa.3.8.insert.ext.i.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i.i to i64 ; 2 uses
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !322
  switch i32 %i.aq, label %bb.m [
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = call noundef i32 @_ZN2OT22hb_ot_name_convert_utfI13hb_utf16_xe_tINS_7NumTypeILb1EtLj2EEEES1_ItEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE(ptr %i.ap, i64 %.sroa.3.8.insert.ext.i.i.i.i, ptr noundef %3, ptr noundef %4)
  br label %_ZL18hb_ot_name_get_utfI13hb_utf16_xe_tItEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

bb.j:                                             ; preds = %bb.h
  %5 = ptrtoaddr ptr %i.ap to i64                 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.3.8.insert.ext.i.i.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf16_xe_tItEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %3, align 4, !tbaa !322   ; 2 uses
  %.not44.i.i = icmp eq i32 %i.at, 0
  br i1 %.not44.i.i, label %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf16_xe_tItEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add i32 %i.at, -1                       ; 3 uses
  store i32 %i.au, ptr %3, align 4, !tbaa !322
  %i.av = zext i32 %i.au to i64
  %.idx.i.i = shl nuw nsw i64 %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i.i
  %i.ax = icmp ne i32 %.sroa.speculated.i.i.i.i, 0
  %i.ay = icmp ne i32 %i.au, 0
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %_ZN13hb_utf16_xe_tItE6encodeEPtPKtj.exit.i.i, label %._crit_edge.i.i

_ZN13hb_utf16_xe_tItE6encodeEPtPKtj.exit.i.i:     ; preds = %bb.l, %_ZN13hb_utf16_xe_tItE6encodeEPtPKtj.exit.i.i
  %.03348.i.i = phi ptr [ %i.bf, %_ZN13hb_utf16_xe_tItE6encodeEPtPKtj.exit.i.i ], [ %4, %bb.l ] ; 2 uses
  %.03447.i.i = phi ptr [ %i.bc, %_ZN13hb_utf16_xe_tItE6encodeEPtPKtj.exit.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %i.ba = load i8, ptr %.03447.i.i, align 1, !tbaa !278 ; 2 uses
  %i.bb = icmp slt i8 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.03447.i.i, i64 1 ; 4 uses
  %i.bd = zext i8 %i.ba to i16
  %i.be = select i1 %i.bb, i16 -3, i16 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.03348.i.i, i64 2 ; 3 uses
  store i16 %i.be, ptr %.03348.i.i, align 2, !tbaa !645
  %i.bg = icmp ult ptr %i.bc, %i.as
  %i.bh = icmp ult ptr %i.bf, %i.aw
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %_ZN13hb_utf16_xe_tItE6encodeEPtPKtj.exit.i.i, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN13hb_utf16_xe_tItE6encodeEPtPKtj.exit.i.i
  %.pre58.i.i = ptrtoaddr ptr %i.bc to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.l
  %.pre.pre-phi.i.i = phi i64 [ %.pre58.i.i, %._crit_edge.loopexit.i.i ], [ %5, %bb.l ]
  %.034.lcssa.i.i = phi ptr [ %i.bc, %._crit_edge.loopexit.i.i ], [ %i.ap, %bb.l ]
  %.033.lcssa.i.i = phi ptr [ %i.bf, %._crit_edge.loopexit.i.i ], [ %4, %bb.l ] ; 3 uses
  %i.bj = ptrtoint ptr %.033.lcssa.i.i to i64
  %i.bk = ptrtoint ptr %4 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 1
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %3, align 4, !tbaa !322
  store i16 0, ptr %.033.lcssa.i.i, align 2, !tbaa !645
  br label %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf16_xe_tItEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i

_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf16_xe_tItEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i: ; preds = %._crit_edge.i.i, %bb.k, %bb.j
  %.33757.pre-phi.i.i = phi i64 [ %.pre.pre-phi.i.i, %._crit_edge.i.i ], [ %5, %bb.k ], [ %5, %bb.j ]
  %.337.i.i = phi ptr [ %.034.lcssa.i.i, %._crit_edge.i.i ], [ %i.ap, %bb.k ], [ %i.ap, %bb.j ]
  %.3.i.i = phi ptr [ %.033.lcssa.i.i, %._crit_edge.i.i ], [ %4, %bb.k ], [ %4, %bb.j ]
  %i.bo = ptrtoint ptr %.3.i.i to i64
  %i.bp = ptrtoint ptr %4 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr i64 %i.bq, 1
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp ult ptr %.337.i.i, %i.as
  %i.bu = trunc i64 %5 to i32
  %i.bv = add i32 %.sroa.speculated.i.i.i.i, %i.bu
  %i.bw = trunc i64 %.33757.pre-phi.i.i to i32
  %i.bx = sub i32 %i.bv, %i.bw
  %i.by = select i1 %i.bt, i32 %i.bx, i32 0
  %.0.lcssa.i.i = add i32 %i.by, %i.bs
  br label %_ZL18hb_ot_name_get_utfI13hb_utf16_xe_tItEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

bb.m:                                             ; preds = %bb.h, %hb_language_from_string.exit.i
  %.not28.i = icmp eq ptr %3, null
  br i1 %.not28.i, label %_ZL18hb_ot_name_get_utfI13hb_utf16_xe_tItEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load i32, ptr %3, align 4, !tbaa !322
  %.not29.i = icmp eq i32 %i.bz, 0
  br i1 %.not29.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i16 0, ptr %4, align 2, !tbaa !645
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 0, ptr %3, align 4, !tbaa !322
  br label %_ZL18hb_ot_name_get_utfI13hb_utf16_xe_tItEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

_ZL18hb_ot_name_get_utfI13hb_utf16_xe_tItEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit: ; preds = %bb.i, %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf16_xe_tItEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, %bb.m, %bb.p
  %.1.i = phi i32 [ 0, %bb.m ], [ 0, %bb.p ], [ %.0.lcssa.i.i, %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf16_xe_tItEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i ], [ %i.ar, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  ret i32 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @hb_ot_name_get_utf32(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, !prof !263

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !264
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, label %bb.b, !prof !265

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj8EE11call_createIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS4_Lj8EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i.i, label %bb.c, label %bb.d, !prof !265

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.h = cmpxchg weak ptr %i.c, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, label %bb.e, !prof !266

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i.i)
  %i.j = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i, !prof !267

_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i, %bb.a
  %.19.ph.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %.07.i.i.i.i, %bb.d ], [ %i.j, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ] ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.f, label %hb_language_from_string.exit.i

bb.f:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i16 28261, ptr %i.a, align 16, !alias.scope !2748
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.k, align 2, !tbaa !278
  %i.l = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.not11.i.i = icmp eq ptr %i.l, null
  br i1 %.not11.i.i, label %hb_language_from_string.exit.i, label %bb.g, !prof !265

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !698
  br label %hb_language_from_string.exit.i

hb_language_from_string.exit.i:                   ; preds = %bb.g, %bb.f, %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i
  %.021.i = phi ptr [ %2, %_ZNK16hb_lazy_loader_tIN2OT18name_accelerator_tE21hb_face_lazy_loader_tIS1_Lj8EE9hb_face_tLj8ES1_EdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS8_v.exit.i ], [ %i.n, %bb.g ], [ null, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.o = call noundef i32 @_ZNK2OT4name13accelerator_t9get_indexEjPK18hb_language_impl_tPj(ptr noundef nonnull align 8 dereferenceable(40) %.19.ph.i.i.i.i, i32 noundef %1, ptr noundef %.021.i, ptr noundef nonnull %i.b) ; 3 uses
  %.not27.i = icmp eq i32 %i.o, -1
  br i1 %.not27.i, label %_ZN2OT22hb_ot_name_convert_utfI13hb_utf16_xe_tINS_7NumTypeILb1EtLj2EEEE13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, label %bb.h

bb.h:                                             ; preds = %hb_language_from_string.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !270  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !273
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !274
  %i.v = icmp ult i32 %i.u, 6
  %spec.select.i.i1.i.i.i.i = select i1 %i.v, ptr @_hb_NullPool, ptr %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i.i, i64 2
  %i.y = load i16, ptr %i.x, align 1, !tbaa !281
  %i.z = call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  %.not.i.i.i30.i = icmp ult i32 %i.o, %i.aa
  %i.ab = zext i32 %i.o to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.ab
  %.0.i.i.i.i = select i1 %.not.i.i.i30.i, ptr %i.ac, ptr @_hb_NullPool, !prof !266 ; 2 uses
  %i.ad = load ptr, ptr %.19.ph.i.i.i.i, align 8, !tbaa !1350
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1351
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 10
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !281
  %i.ai = call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !281
  %i.am = call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32
  %storemerge.i.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.af, i32 %i.aj)
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i, i32 %i.an) ; 3 uses
  %i.ao = zext i16 %i.ai to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ao ; 11 uses
  %.sroa.3.8.insert.ext.i.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i.i to i64 ; 2 uses
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !322
  switch i32 %i.aq, label %_ZN2OT22hb_ot_name_convert_utfI13hb_utf16_xe_tINS_7NumTypeILb1EtLj2EEEE13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i [
    i32 2, label %bb.i
    i32 1, label %bb.r
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = and i64 %.sroa.3.8.insert.ext.i.i.i.i, 65534 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar ; 5 uses
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load i32, ptr %3, align 4, !tbaa !322   ; 2 uses
  %.not44.i.i = icmp eq i32 %i.at, 0
  br i1 %.not44.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = add i32 %i.at, -1                       ; 2 uses
  %i.av = zext i32 %i.au to i64
  %.idx.i.i = shl nuw nsw i64 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i.i
  %i.ax = icmp ne i64 %i.ar, 0
  %i.ay = icmp ne i32 %i.au, 0
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i
  %.03354.i.i = phi ptr [ %i.bw, %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i ], [ %4, %bb.k ] ; 2 uses
  %.03453.i.i = phi ptr [ %.1.i52.i.i, %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i ], [ %i.ap, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03453.i.i, i64 2 ; 5 uses
  %i.bb = load i16, ptr %.03453.i.i, align 1, !tbaa !281
  %i.bc = call noundef i16 @llvm.bswap.i16(i16 %i.bb) ; 2 uses
  %i.bd = zext i16 %i.bc to i32                   ; 3 uses
  %i.be = and i32 %i.bd, 63488
  %i.bf = icmp eq i32 %i.be, 55296
  br i1 %i.bf, label %bb.l, label %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit.i.i, !prof !265

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bg = icmp ult i16 %i.bc, -9216
  %i.bh = icmp ult ptr %i.ba, %i.as
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false, !prof !266
  br i1 %i.bi, label %bb.m, label %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i, !prof !266

bb.m:                                             ; preds = %bb.l
  %i.bj = load i16, ptr %i.ba, align 1, !tbaa !281
  %i.bk = call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = and i32 %i.bl, 64512
  %i.bn = icmp eq i32 %i.bm, 56320
  br i1 %i.bn, label %.thread.i.i.i, label %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i, !prof !266

.thread.i.i.i:                                    ; preds = %bb.m
  %i.bo = shl nuw nsw i32 %i.bd, 10
  %i.bp = add nsw i32 %i.bo, -56613888
  %i.bq = add nuw nsw i32 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %.03453.i.i, i64 4
  br label %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit.i.i

_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit.i.i: ; preds = %.thread.i.i.i, %.lr.ph.i.i
  %.049.i.i = phi i32 [ %i.bq, %.thread.i.i.i ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %.1.i.i.i = phi ptr [ %i.br, %.thread.i.i.i ], [ %i.ba, %.lr.ph.i.i ] ; 2 uses
  %i.bs = icmp samesign ugt i32 %.049.i.i, 55295
  %i.bt = add nsw i32 %.049.i.i, -1114112
  %i.bu = icmp ult i32 %i.bt, -1056768
  %i.bv = and i1 %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i, !prof !1352

bb.n:                                             ; preds = %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit.i.i
  br label %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i

_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i: ; preds = %bb.n, %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit.i.i, %bb.m, %bb.l
  %.1.i52.i.i = phi ptr [ %.1.i.i.i, %bb.n ], [ %.1.i.i.i, %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit.i.i ], [ %i.ba, %bb.m ], [ %i.ba, %bb.l ] ; 3 uses
  %.0.i.i.i = phi i32 [ 65533, %bb.n ], [ %.049.i.i, %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit.i.i ], [ 65533, %bb.m ], [ 65533, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.03354.i.i, i64 4 ; 3 uses
  store i32 %.0.i.i.i, ptr %.03354.i.i, align 4, !tbaa !322
  %i.bx = icmp ult ptr %.1.i52.i.i, %i.as
  %i.by = icmp ult ptr %i.bw, %i.aw
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i, %bb.k
  %.034.lcssa.i.i = phi ptr [ %i.ap, %bb.k ], [ %.1.i52.i.i, %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i ]
  %.033.lcssa.i.i = phi ptr [ %4, %bb.k ], [ %i.bw, %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i.i ] ; 3 uses
  %i.ca = ptrtoint ptr %.033.lcssa.i.i to i64
  %i.cb = ptrtoint ptr %4 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 2
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %3, align 4, !tbaa !322
  store i32 0, ptr %.033.lcssa.i.i, align 4, !tbaa !322
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i, %bb.j, %bb.i
  %.337.i.i = phi ptr [ %.034.lcssa.i.i, %._crit_edge.i.i ], [ %i.ap, %bb.j ], [ %i.ap, %bb.i ] ; 2 uses
  %.3.i.i = phi ptr [ %.033.lcssa.i.i, %._crit_edge.i.i ], [ %4, %bb.j ], [ %4, %bb.i ]
  %i.cf = ptrtoint ptr %.3.i.i to i64
  %i.cg = ptrtoint ptr %4 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = lshr exact i64 %i.ch, 2
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = icmp ult ptr %.337.i.i, %i.as
  br i1 %i.ck, label %.lr.ph59.i.i, label %_ZL18hb_ot_name_get_utfI13hb_utf32_xe_tIjLb1EEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

.lr.ph59.i.i:                                     ; preds = %bb.o, %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i
  %.057.i.i = phi i32 [ %i.cx, %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i ], [ %i.cj, %bb.o ]
  %.456.i.i = phi ptr [ %.1.i45.i.i, %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i ], [ %.337.i.i, %bb.o ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.456.i.i, i64 2 ; 5 uses
  %i.cm = load i16, ptr %.456.i.i, align 1, !tbaa !281
  %i.cn = call noundef i16 @llvm.bswap.i16(i16 %i.cm) ; 2 uses
  %i.co = and i16 %i.cn, -2048
  %i.cp = icmp eq i16 %i.co, -10240
  br i1 %i.cp, label %bb.p, label %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i, !prof !265

bb.p:                                             ; preds = %.lr.ph59.i.i
  %i.cq = icmp samesign ult i16 %i.cn, -9216
  %i.cr = icmp ult ptr %i.cl, %i.as
  %i.cs = select i1 %i.cq, i1 %i.cr, i1 false, !prof !266
  br i1 %i.cs, label %bb.q, label %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i, !prof !266

bb.q:                                             ; preds = %bb.p
  %i.ct = load i16, ptr %i.cl, align 1, !tbaa !281
  %i.cu = and i16 %i.ct, 252
  %i.cv = icmp eq i16 %i.cu, 220
  %i.cw = getelementptr inbounds nuw i8, ptr %.456.i.i, i64 4
  %spec.select.i.i = select i1 %i.cv, ptr %i.cw, ptr %i.cl, !prof !266
  br label %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i

_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i: ; preds = %bb.q, %bb.p, %.lr.ph59.i.i
  %.1.i45.i.i = phi ptr [ %i.cl, %bb.p ], [ %i.cl, %.lr.ph59.i.i ], [ %spec.select.i.i, %bb.q ] ; 2 uses
  %i.cx = add i32 %.057.i.i, 1                    ; 2 uses
  %i.cy = icmp ult ptr %.1.i45.i.i, %i.as
  br i1 %i.cy, label %.lr.ph59.i.i, label %_ZL18hb_ot_name_get_utfI13hb_utf32_xe_tIjLb1EEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit, !llvm.loop !2747

bb.r:                                             ; preds = %bb.h
  %5 = ptrtoaddr ptr %i.ap to i64                 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.3.8.insert.ext.i.i.i.i ; 2 uses
  %.not.i31.i = icmp eq ptr %3, null
  br i1 %.not.i31.i, label %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = load i32, ptr %3, align 4, !tbaa !322   ; 2 uses
  %.not44.i32.i = icmp eq i32 %i.da, 0
  br i1 %.not44.i32.i, label %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = add i32 %i.da, -1                       ; 3 uses
  store i32 %i.db, ptr %3, align 4, !tbaa !322
  %i.dc = zext i32 %i.db to i64
  %.idx.i33.i = shl nuw nsw i64 %i.dc, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i33.i
  %i.de = icmp ne i32 %.sroa.speculated.i.i.i.i, 0
  %i.df = icmp ne i32 %i.db, 0
  %i.dg = and i1 %i.de, %i.df
  br i1 %i.dg, label %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i40.i, label %._crit_edge.i34.i

_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i40.i: ; preds = %bb.t, %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i40.i
  %.03348.i.i = phi ptr [ %i.dl, %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i40.i ], [ %4, %bb.t ] ; 2 uses
  %.03447.i.i = phi ptr [ %i.dh, %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i40.i ], [ %i.ap, %bb.t ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.03447.i.i, i64 1 ; 4 uses
  %i.di = load i8, ptr %.03447.i.i, align 1, !tbaa !278 ; 2 uses
  %i.dj = icmp slt i8 %i.di, 0
  %i.dk = zext i8 %i.di to i32
  %spec.select.i.i.i = select i1 %i.dj, i32 65533, i32 %i.dk
  %i.dl = getelementptr inbounds nuw i8, ptr %.03348.i.i, i64 4 ; 3 uses
  store i32 %spec.select.i.i.i, ptr %.03348.i.i, align 4, !tbaa !322
  %i.dm = icmp ult ptr %i.dh, %i.cz
  %i.dn = icmp ult ptr %i.dl, %i.dd
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i40.i, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN13hb_utf32_xe_tIjLb1EE6encodeEPjPKjj.exit.i40.i
  %.pre59.i.i = ptrtoaddr ptr %i.dh to i64
  br label %._crit_edge.i34.i

._crit_edge.i34.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.t
  %.pre.pre-phi.i.i = phi i64 [ %.pre59.i.i, %._crit_edge.loopexit.i.i ], [ %5, %bb.t ]
  %.034.lcssa.i35.i = phi ptr [ %i.dh, %._crit_edge.loopexit.i.i ], [ %i.ap, %bb.t ]
  %.033.lcssa.i36.i = phi ptr [ %i.dl, %._crit_edge.loopexit.i.i ], [ %4, %bb.t ] ; 3 uses
  %i.dp = ptrtoint ptr %.033.lcssa.i36.i to i64
  %i.dq = ptrtoint ptr %4 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 2
  %i.dt = trunc i64 %i.ds to i32
  store i32 %i.dt, ptr %3, align 4, !tbaa !322
  store i32 0, ptr %.033.lcssa.i36.i, align 4, !tbaa !322
  br label %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i

_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i: ; preds = %._crit_edge.i34.i, %bb.s, %bb.r
  %.33758.pre-phi.i.i = phi i64 [ %.pre.pre-phi.i.i, %._crit_edge.i34.i ], [ %5, %bb.s ], [ %5, %bb.r ]
  %.337.i37.i = phi ptr [ %.034.lcssa.i35.i, %._crit_edge.i34.i ], [ %i.ap, %bb.s ], [ %i.ap, %bb.r ]
  %.3.i38.i = phi ptr [ %.033.lcssa.i36.i, %._crit_edge.i34.i ], [ %4, %bb.s ], [ %4, %bb.r ]
  %i.du = ptrtoint ptr %.3.i38.i to i64
  %i.dv = ptrtoint ptr %4 to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = lshr i64 %i.dw, 2
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = icmp ult ptr %.337.i37.i, %i.cz
  %i.ea = trunc i64 %5 to i32
  %i.eb = add i32 %.sroa.speculated.i.i.i.i, %i.ea
  %i.ec = trunc i64 %.33758.pre-phi.i.i to i32
  %i.ed = sub i32 %i.eb, %i.ec
  %i.ee = select i1 %i.dz, i32 %i.ed, i32 0
  %.0.lcssa.i39.i = add i32 %i.ee, %i.dy
  br label %_ZL18hb_ot_name_get_utfI13hb_utf32_xe_tIjLb1EEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

_ZN2OT22hb_ot_name_convert_utfI13hb_utf16_xe_tINS_7NumTypeILb1EtLj2EEEE13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i: ; preds = %bb.h, %hb_language_from_string.exit.i
  %.not28.i = icmp eq ptr %3, null
  br i1 %.not28.i, label %_ZL18hb_ot_name_get_utfI13hb_utf32_xe_tIjLb1EEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2OT22hb_ot_name_convert_utfI13hb_utf16_xe_tINS_7NumTypeILb1EtLj2EEEE13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i
  %i.ef = load i32, ptr %3, align 4, !tbaa !322
  %.not29.i = icmp eq i32 %i.ef, 0
  br i1 %.not29.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %4, align 4, !tbaa !322
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i32 0, ptr %3, align 4, !tbaa !322
  br label %_ZL18hb_ot_name_get_utfI13hb_utf32_xe_tIjLb1EEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit

_ZL18hb_ot_name_get_utfI13hb_utf32_xe_tIjLb1EEEjP9hb_face_tjPK18hb_language_impl_tPjPNT_11codepoint_tE.exit: ; preds = %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i, %bb.o, %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, %_ZN2OT22hb_ot_name_convert_utfI13hb_utf16_xe_tINS_7NumTypeILb1EtLj2EEEE13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i, %bb.w
  %.1.i = phi i32 [ 0, %_ZN2OT22hb_ot_name_convert_utfI13hb_utf16_xe_tINS_7NumTypeILb1EtLj2EEEE13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i ], [ 0, %bb.w ], [ %.0.lcssa.i39.i, %_ZN2OT22hb_ot_name_convert_utfI10hb_ascii_t13hb_utf32_xe_tIjLb1EEEEj10hb_array_tIKcEPjPNT0_11codepoint_tE.exit.i ], [ %i.cj, %bb.o ], [ %i.cx, %_ZN13hb_utf16_xe_tIN2OT7NumTypeILb1EtLj2EEEE4nextEPKS2_S5_Pjj.exit47.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z54_hb_ot_shape_fallback_mark_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !605  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !587
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.b to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.e = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %.val = load i16, ptr %i.f, align 4, !tbaa !278 ; 4 uses
  %i.g = and i16 %.val, 31
  %i.h = icmp eq i16 %i.g, 12
  br i1 %i.h, label %bb.b, label %bb.m

bb.b:                                             ; preds = %.lr.ph
  %i.i = lshr i16 %.val, 8                        ; 3 uses
  %i.j = zext nneg i16 %i.i to i32                ; 2 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !635  ; 3 uses
  %i.l = icmp ugt i16 %.val, -14337
  br i1 %i.l, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, -256
  %i.n = icmp eq i32 %i.m, 3584
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i16 %i.i, 0
  br i1 %i.o, label %bb.e, label %bb.f, !prof !265

bb.e:                                             ; preds = %bb.d
  %switch.tableidx = add nsw i32 %i.k, -3633      ; 2 uses
  %i.p = icmp ult i32 %switch.tableidx, 157
  br i1 %i.p, label %switch.lookup, label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %i.k, 3642
  %spec.select.i = select i1 %i.q, i32 222, i32 %i.j
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %spec.select.i, %bb.f ] ; 2 uses
  %trunc.i = trunc nuw i32 %.0.i to i8
  switch i8 %trunc.i, label %.thread.i [
    i8 22, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 15, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 16, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 17, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 23, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 18, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 19, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 20, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 21, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 24, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 25, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 13, label %bb.h
    i8 10, label %bb.i
    i8 11, label %bb.j
    i8 14, label %bb.j
    i8 26, label %bb.k
    i8 -125, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 28, label %bb.k
    i8 29, label %bb.k
    i8 31, label %bb.k
    i8 32, label %bb.k
    i8 27, label %bb.k
    i8 34, label %bb.k
    i8 35, label %bb.k
    i8 36, label %bb.k
    i8 30, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 33, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 3, label %bb.l
    i8 107, label %bb.i
    i8 118, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 122, label %bb.k
    i8 -127, label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
    i8 -124, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit

bb.i:                                             ; preds = %bb.g, %bb.g
  br label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit

bb.j:                                             ; preds = %bb.g, %bb.g
  br label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit

bb.k:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  br label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit

bb.l:                                             ; preds = %bb.g
  br label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit

switch.lookup:                                    ; preds = %bb.e
  %i.r = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._Z54_hb_ot_shape_fallback_mark_position_recategorize_marksPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t, i64 %i.r
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.thread.i

.thread.i:                                        ; preds = %switch.lookup, %bb.e, %bb.g
  %.013.i = phi i32 [ %.0.i, %bb.g ], [ %switch.ext, %switch.lookup ], [ 0, %bb.e ]
  %i.s = trunc nuw nsw i32 %.013.i to i16
  br label %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit

_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit: ; preds = %bb.b, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.thread.i
  %.09.i = phi i16 [ 220, %bb.g ], [ %i.s, %.thread.i ], [ %i.i, %bb.b ], [ 214, %bb.h ], [ 232, %bb.i ], [ 228, %bb.j ], [ 230, %bb.k ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 222, %bb.l ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ], [ 220, %bb.g ]
  %i.t = and i16 %.val, 236
  %i.u = shl nuw i16 %.09.i, 8
  %i.v = or disjoint i16 %i.u, %i.t
  store i16 %i.v, ptr %i.f, align 4, !tbaa !278
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZL43_hb_glyph_info_set_modified_combining_classP15hb_glyph_info_tj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2749
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z35_hb_ot_shape_fallback_mark_positionPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.30)
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.c = load i32, ptr %i.b, align 8, !tbaa !605  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !587
  %i.f = icmp ugt i32 %i.c, 1
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.c to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %.028.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %.critedge ] ; 2 uses
  %i.g = sub i32 %i.c, %.028.lcssa
  %i.h = icmp ult i32 %i.g, 2
  br i1 %i.h, label %_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjjb.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call fastcc void @_ZL21position_cluster_implPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjjb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %.028.lcssa, i32 noundef %i.c, i1 noundef zeroext %3)
  br label %_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjjb.exit

_ZL16position_clusterPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_tjjb.exit: ; preds = %._crit_edge, %bb.c
  %i.i = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %2, ptr noundef %1, ptr noundef nonnull @.str.31) ; 0 uses
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.02833 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %.critedge ] ; 4 uses
  %indvars35 = trunc i64 %indvars.iv to i32       ; 4 uses
  %i.j = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL26_output_with_dotted_circleP11hb_buffer_t:bb.a
  %.not.i.i = icmp eq i32 %i.bf, 0
  %i.bg = load i32, ptr %i.d, align 8
  %i.bh = icmp ult i32 %i.bf, %i.bg
  %i.bi = select i1 %.not.i.i, i1 true, i1 %i.bh
  br i1 %i.bi, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i, label %_ZN11hb_buffer_t6ensureEj.exit.i, !prof !266

_ZN11hb_buffer_t6ensureEj.exit.i:                 ; preds = %._crit_edge.i
  %i.bj = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.bf)
  br i1 %i.bj, label %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, label %_ZN11hb_buffer_t10next_glyphEv.exit, !prof !316

_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i
  %.pre3.i = load ptr, ptr %i.ba, align 8, !tbaa !587
  %.pre4.i = load ptr, ptr %i.ap, align 8, !tbaa !634
  %.pre5.i = load i32, ptr %i.a, align 4, !tbaa !633
  %.pre = load i32, ptr %i.bd, align 4, !tbaa !651
  br label %_ZN11hb_buffer_t6ensureEj.exit.thread.i

_ZN11hb_buffer_t6ensureEj.exit.thread.i:          ; preds = %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i, %._crit_edge.i
  %i.bk = phi i32 [ %.pre, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.be, %._crit_edge.i ]
  %i.bl = phi i32 [ %.pre5.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.bc, %._crit_edge.i ]
  %i.bm = phi ptr [ %.pre4.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.az, %._crit_edge.i ]
  %i.bn = phi ptr [ %.pre3.i, %_ZN11hb_buffer_t6ensureEj.exit._ZN11hb_buffer_t6ensureEj.exit.thread_crit_edge.i ], [ %i.bb, %._crit_edge.i ]
  %i.bo = zext i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [20 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = zext i32 %i.bl to i64
  %i.br = getelementptr inbounds nuw [20 x i8], ptr %i.bm, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.br, ptr noundef nonnull align 4 dereferenceable(20) %i.bp, i64 20, i1 false), !tbaa.struct !608
  %.pre7.i = load i32, ptr %i.a, align 4, !tbaa !633
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i, %bb.h
  %i.bs = phi i32 [ %.pre7.i, %_ZN11hb_buffer_t6ensureEj.exit.thread.i ], [ %i.bc, %bb.h ]
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !633
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZL21_output_dotted_circleP11hb_buffer_t.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !651
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !651
  br label %_ZN11hb_buffer_t10next_glyphEv.exit

_ZN11hb_buffer_t10next_glyphEv.exit:              ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hb_ot_tags_from_script(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 2, ptr %i.a, align 4, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  call void @hb_ot_tags_from_script_and_language(i32 noundef %0, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !322  ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr %i.b, align 4
  %i.e = select i1 %.not, i32 1145457748, i32 %i.d
  store i32 %i.e, ptr %1, align 4, !tbaa !322
  %i.f = icmp ugt i32 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.f, i32 %i.h, i32 1145457748
  store i32 %i.i, ptr %2, align 4, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, -536870912) i32 @hb_ot_tag_to_script(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = and i32 %0, 254
  %i.b = icmp eq i32 %i.a, 50
  br i1 %i.b, label %bb.b, label %bb.c, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, -206
  %i.d = tail call fastcc noundef i32 @_ZL23hb_ot_new_tag_to_scriptj(i32 noundef %i.c)
  br label %_ZL23hb_ot_old_tag_to_scriptj.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %bb.e [
    i32 1145457748, label %_ZL23hb_ot_old_tag_to_scriptj.exit
    i32 1835103336, label %bb.d
  ], !prof !1423

bb.d:                                             ; preds = %bb.c
  br label %_ZL23hb_ot_old_tag_to_scriptj.exit

bb.e:                                             ; preds = %bb.c
  %i.e = and i32 %0, 65280
  %i.f = icmp eq i32 %i.e, 8192
  br i1 %i.f, label %bb.f, label %bb.g, !prof !265

bb.f:                                             ; preds = %bb.e
  %i.g = lshr i32 %0, 8
  %i.h = and i32 %i.g, 57088
  %i.i = or disjoint i32 %i.h, %0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i32 [ %i.i, %bb.f ], [ %0, %bb.e ]  ; 4 uses
  %i.j = and i32 %.0.i, 255
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %bb.h, label %bb.i, !prof !265

bb.h:                                             ; preds = %bb.g
  %i.l = lshr i32 %.0.i, 8
  %i.m = and i32 %i.l, 223
  %i.n = or disjoint i32 %i.m, %.0.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i32 [ %i.n, %bb.h ], [ %.0.i, %bb.g ]
  %i.o = and i32 %.1.i, -536870913
  br label %_ZL23hb_ot_old_tag_to_scriptj.exit

_ZL23hb_ot_old_tag_to_scriptj.exit:               ; preds = %bb.i, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.o, %bb.i ], [ 1517122664, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 1113943655, 1517976187) i32 @_ZL23hb_ot_new_tag_to_scriptj(i32 noundef range(i32 0, -205) %0) unnamed_addr #4 {
bb.a:
  switch i32 %0, label %bb.k [
    i32 1651402546, label %bb.l
    i32 1684370994, label %bb.b
    i32 1735029298, label %bb.c
    i32 1735750194, label %bb.d
    i32 1802396722, label %bb.e
    i32 1835822386, label %bb.f
    i32 1869773106, label %bb.g
    i32 1953328178, label %bb.h
    i32 1952803890, label %bb.i
    i32 1836674354, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1517976186, %bb.k ], [ 1299803506, %bb.j ], [ 1147500129, %bb.b ], [ 1198877298, %bb.c ], [ 1198879349, %bb.d ], [ 1265525857, %bb.e ], [ 1298954605, %bb.f ], [ 1332902241, %bb.g ], [ 1415671148, %bb.h ], [ 1415933045, %bb.i ], [ 1113943655, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hb_ot_tag_from_language(ptr noundef %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 1, ptr %i.a, align 4, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  call void @hb_ot_tags_from_script_and_language(i32 noundef 1517976186, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !322
  %.not = icmp eq i32 %i.c, 0
  %i.d = load i32, ptr %i.b, align 4
  %i.e = select i1 %.not, i32 1684434036, i32 %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL24hb_ot_tags_from_languagePKcS0_PjS1_(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly %3) unnamed_addr #19 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 10 uses
  %i.b = alloca [4 x i8], align 4                 ; 9 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 13 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = icmp sgt i64 %i.e, 6
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #64 ; 12 uses
  %.not.i = icmp eq ptr %i.g, null
  %.not1031.i = icmp uge ptr %i.g, %1
  %or.cond.not1523.i = or i1 %.not.i, %.not1031.i
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = icmp slt i64 %i.i, 5
  %or.cond1034.i = or i1 %or.cond.not1523.i, %i.j
  br i1 %or.cond1034.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.i, 4294967288
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread1294.i, label %.preheader.i.i, !prof !266

.preheader.i.i:                                   ; preds = %bb.c, %bb.d
  %.014.i.i = phi ptr [ %i.n, %bb.d ], [ %i.g, %bb.c ]
  %i.m = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.014.i.i, ptr noundef nonnull dereferenceable(1) @.str.152) #64 ; 3 uses
  %.not.i.i = icmp ne ptr %i.m, null
  %.not17.i.i = icmp ult ptr %i.m, %1
  %or.cond.i.i = and i1 %.not.i.i, %.not17.i.i
  br i1 %or.cond.i.i, label %bb.d, label %.preheader.i1035.i

bb.d:                                             ; preds = %.preheader.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !278   ; 2 uses
  %i.p = and i8 %i.o, -33
  %i.q = add i8 %i.p, -65
  %or.cond11.i.i.i = icmp ult i8 %i.q, 26
  %i.r = add i8 %i.o, -48
  %i.s = icmp ult i8 %i.r, 10
  %i.t = or i1 %i.s, %or.cond11.i.i.i
  br i1 %i.t, label %.preheader.i.i, label %_ZL14subtag_matchesPKcS0_S0_j.exit.i

_ZL14subtag_matchesPKcS0_S0_j.exit.i:             ; preds = %bb.d
  store i32 1095782472, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.preheader.i1035.i:                               ; preds = %.preheader.i.i, %bb.e
  %.014.i1036.i = phi ptr [ %i.v, %bb.e ], [ %i.g, %.preheader.i.i ]
  %i.u = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.014.i1036.i, ptr noundef nonnull dereferenceable(1) @.str.153) #64 ; 3 uses
  %.not.i1037.i = icmp ne ptr %i.u, null
  %.not17.i1038.i = icmp ult ptr %i.u, %1
  %or.cond.i1039.i = and i1 %.not.i1037.i, %.not17.i1038.i
  br i1 %or.cond.i1039.i, label %bb.e, label %.preheader.i1043.i

bb.e:                                             ; preds = %.preheader.i1035.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !278   ; 2 uses
  %i.x = and i8 %i.w, -33
  %i.y = add i8 %i.x, -65
  %or.cond11.i.i1041.i = icmp ult i8 %i.y, 26
  %i.z = add i8 %i.w, -48
  %i.aa = icmp ult i8 %i.z, 10
  %i.ab = or i1 %i.aa, %or.cond11.i.i1041.i
  br i1 %i.ab, label %.preheader.i1035.i, label %_ZL14subtag_matchesPKcS0_S0_j.exit1042.i

_ZL14subtag_matchesPKcS0_S0_j.exit1042.i:         ; preds = %bb.e
  store i32 1346851360, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.preheader.i1043.i:                               ; preds = %.preheader.i1035.i, %bb.f
  %.014.i1044.i = phi ptr [ %i.ad, %bb.f ], [ %i.g, %.preheader.i1035.i ]
  %i.ac = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.014.i1044.i, ptr noundef nonnull dereferenceable(1) @.str.154) #64 ; 3 uses
  %.not.i1045.i = icmp ne ptr %i.ac, null
  %.not17.i1046.i = icmp ult ptr %i.ac, %1
  %or.cond.i1047.i = and i1 %.not.i1045.i, %.not17.i1046.i
  br i1 %or.cond.i1047.i, label %bb.f, label %.preheader.i1051.i

bb.f:                                             ; preds = %.preheader.i1043.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !278 ; 2 uses
  %i.af = and i8 %i.ae, -33
  %i.ag = add i8 %i.af, -65
  %or.cond11.i.i1049.i = icmp ult i8 %i.ag, 26
  %i.ah = add i8 %i.ae, -48
  %i.ai = icmp ult i8 %i.ah, 10
  %i.aj = or i1 %i.ai, %or.cond11.i.i1049.i
  br i1 %i.aj, label %.preheader.i1043.i, label %_ZL14subtag_matchesPKcS0_S0_j.exit1050.i

_ZL14subtag_matchesPKcS0_S0_j.exit1050.i:         ; preds = %bb.f
  store i32 1213809952, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.preheader.i1051.i:                               ; preds = %.preheader.i1043.i, %bb.g
  %.014.i1052.i = phi ptr [ %i.al, %bb.g ], [ %i.g, %.preheader.i1043.i ]
  %i.ak = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.014.i1052.i, ptr noundef nonnull dereferenceable(1) @.str.155) #64 ; 3 uses
  %.not.i1053.i = icmp ne ptr %i.ak, null
  %.not17.i1054.i = icmp ult ptr %i.ak, %1
  %or.cond.i1055.i = and i1 %.not.i1053.i, %.not17.i1054.i
  br i1 %or.cond.i1055.i, label %bb.g, label %.thread1294.i

bb.g:                                             ; preds = %.preheader.i1051.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !278 ; 2 uses
  %i.an = and i8 %i.am, -33
  %i.ao = add i8 %i.an, -65
  %or.cond11.i.i1057.i = icmp ult i8 %i.ao, 26
  %i.ap = add i8 %i.am, -48
  %i.aq = icmp ult i8 %i.ap, 10
  %i.ar = or i1 %i.aq, %or.cond11.i.i1057.i
  br i1 %i.ar, label %.preheader.i1051.i, label %_ZL14subtag_matchesPKcS0_S0_j.exit1058.i

_ZL14subtag_matchesPKcS0_S0_j.exit1058.i:         ; preds = %bb.g
  store i32 1347571488, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.thread1294.i:                                    ; preds = %.preheader.i1051.i, %bb.c
  %i.as = trunc i64 %i.i to i32                   ; 2 uses
  %i.at = icmp ult i32 %i.as, 7
  br i1 %i.at, label %.loopexit, label %.preheader.i174, !prof !266

.preheader.i174:                                  ; preds = %.thread1294.i, %bb.h
  %.014.i175 = phi ptr [ %i.av, %bb.h ], [ %i.g, %.thread1294.i ]
  %i.au = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.014.i175, ptr noundef nonnull dereferenceable(1) @.str.156) #64 ; 3 uses
  %.not.i176 = icmp ne ptr %i.au, null
  %.not17.i177 = icmp ult ptr %i.au, %1
  %or.cond.i178 = and i1 %.not.i176, %.not17.i177
  br i1 %or.cond.i178, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.preheader.i174
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 7 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !278 ; 2 uses
  %i.ax = and i8 %i.aw, -33
  %i.ay = add i8 %i.ax, -65
  %or.cond11.i.i180 = icmp ult i8 %i.ay, 26
  %i.az = add i8 %i.aw, -48
  %i.ba = icmp ult i8 %i.az, 10
  %i.bb = or i1 %i.ba, %or.cond11.i.i180
  br i1 %i.bb, label %.preheader.i174, label %_ZL14subtag_matchesPKcS0_S0_j.exit181

_ZL14subtag_matchesPKcS0_S0_j.exit181:            ; preds = %bb.h
  store i32 1230000200, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.loopexit:                                        ; preds = %.preheader.i174, %.thread1294.i
  %i.bc = icmp ult i32 %i.as, 5
  br i1 %i.bc, label %.thread212, label %.preheader.i166, !prof !266

.preheader.i166:                                  ; preds = %.loopexit, %bb.i
  %.014.i167 = phi ptr [ %i.be, %bb.i ], [ %i.g, %.loopexit ]
  %i.bd = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.014.i167, ptr noundef nonnull dereferenceable(1) @.str.157) #64 ; 3 uses
  %.not.i168 = icmp ne ptr %i.bd, null
  %.not17.i169 = icmp ult ptr %i.bd, %1
  %or.cond.i170 = and i1 %.not.i168, %.not17.i169
  br i1 %or.cond.i170, label %bb.i, label %.preheader.i158

bb.i:                                             ; preds = %.preheader.i166
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 5 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !278 ; 2 uses
  %i.bg = and i8 %i.bf, -33
  %i.bh = add i8 %i.bg, -65
  %or.cond11.i.i172 = icmp ult i8 %i.bh, 26
  %i.bi = add i8 %i.bf, -48
  %i.bj = icmp ult i8 %i.bi, 10
  %i.bk = or i1 %i.bj, %or.cond11.i.i172
  br i1 %i.bk, label %.preheader.i166, label %_ZL14subtag_matchesPKcS0_S0_j.exit173

_ZL14subtag_matchesPKcS0_S0_j.exit173:            ; preds = %bb.i
  store i32 1262961952, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.preheader.i158:                                  ; preds = %.preheader.i166, %bb.j
  %.014.i159 = phi ptr [ %i.bm, %bb.j ], [ %i.g, %.preheader.i166 ]
  %i.bl = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.014.i159, ptr noundef nonnull dereferenceable(1) @.str.158) #64 ; 3 uses
  %.not.i160 = icmp ne ptr %i.bl, null
  %.not17.i161 = icmp ult ptr %i.bl, %1
  %or.cond.i162 = and i1 %.not.i160, %.not17.i161
  br i1 %or.cond.i162, label %bb.j, label %.preheader.i

bb.j:                                             ; preds = %.preheader.i158
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 5 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !278 ; 2 uses
  %i.bo = and i8 %i.bn, -33
  %i.bp = add i8 %i.bo, -65
  %or.cond11.i.i164 = icmp ult i8 %i.bp, 26
  %i.bq = add i8 %i.bn, -48
  %i.br = icmp ult i8 %i.bq, 10
  %i.bs = or i1 %i.br, %or.cond11.i.i164
  br i1 %i.bs, label %.preheader.i158, label %_ZL14subtag_matchesPKcS0_S0_j.exit165

_ZL14subtag_matchesPKcS0_S0_j.exit165:            ; preds = %bb.j
  store i32 1398362693, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.preheader.i:                                     ; preds = %.preheader.i158, %bb.k
  %.014.i = phi ptr [ %i.bu, %bb.k ], [ %i.g, %.preheader.i158 ]
  %i.bt = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.014.i, ptr noundef nonnull dereferenceable(1) @.str.159) #64 ; 3 uses
  %.not.i155 = icmp ne ptr %i.bt, null
  %.not17.i = icmp ult ptr %i.bt, %1
  %or.cond.i156 = and i1 %.not.i155, %.not17.i
  br i1 %or.cond.i156, label %bb.k, label %.thread212

bb.k:                                             ; preds = %.preheader.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 5 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZL24hb_ot_tags_from_languagePKcS0_PjS1_:bb.a
  switch i8 %i.abi, label %sub_11555.i.thread [
    i8 45, label %bb.ia
    i8 0, label %bb.ia
  ]

bb.ia:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1276.i, %_ZL12lang_matchesPKcS0_S0_j.exit1276.i
  store i32 1514689312, ptr %3, align 4, !tbaa !322
  br label %.critedge106

bb.ib:                                            ; preds = %bb.m
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 8 uses
  %i.abk = ptrtoint ptr %i.abj to i64
  %i.abl = sub i64 %i.c, %i.abk
  %i.abm = trunc i64 %i.abl to i32                ; 2 uses
  %i.abn = icmp ult i32 %i.abm, 9
  br i1 %i.abn, label %_ZL12lang_matchesPKcS0_S0_j.exit1282.thread.i, label %bb.ic, !prof !266

bb.ic:                                            ; preds = %bb.ib
  %i.abo = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.abj, ptr noundef nonnull dereferenceable(10) @.str.286, i64 noundef 9) #64
  %i.abp = icmp eq i32 %i.abo, 0
  br i1 %i.abp, label %_ZL12lang_matchesPKcS0_S0_j.exit1279.i, label %.thread1512.i

_ZL12lang_matchesPKcS0_S0_j.exit1279.i:           ; preds = %bb.ic
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !278
  switch i8 %i.abr, label %.thread1512.i [
    i8 45, label %bb.id
    i8 0, label %bb.id
  ]

bb.id:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1279.i, %_ZL12lang_matchesPKcS0_S0_j.exit1279.i
  store i32 1514686496, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.thread1512.i:                                    ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1279.i, %bb.ic
  %i.abs = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.abj, ptr noundef nonnull dereferenceable(10) @.str.287, i64 noundef 9) #64
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %_ZL12lang_matchesPKcS0_S0_j.exit1282.i, label %_ZL12lang_matchesPKcS0_S0_j.exit1282.thread.i

_ZL12lang_matchesPKcS0_S0_j.exit1282.i:           ; preds = %.thread1512.i
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !278
  switch i8 %i.abv, label %_ZL12lang_matchesPKcS0_S0_j.exit1282.thread.i [
    i8 45, label %.preheader1644.i
    i8 0, label %.preheader1644.i
  ]

.preheader1644.i:                                 ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1282.i, %_ZL12lang_matchesPKcS0_S0_j.exit1282.i
  %i.abw = load i32, ptr %2, align 4, !tbaa !322
  %.not1766.i = icmp eq i32 %i.abw, 0
  br i1 %.not1766.i, label %.critedge106, label %bb.ie

bb.ie:                                            ; preds = %.preheader1644.i
  store i32 1514689613, ptr %3, align 4, !tbaa !322
  %i.abx = load i32, ptr %2, align 4, !tbaa !322
  %i.aby = icmp ugt i32 %i.abx, 1
  br i1 %i.aby, label %bb.if, label %.critedge106

bb.if:                                            ; preds = %bb.ie
  %i.abz = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1514686496, ptr %i.abz, align 4, !tbaa !322
  br label %.critedge106

_ZL12lang_matchesPKcS0_S0_j.exit1282.thread.i:    ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1282.i, %.thread1512.i, %bb.ib
  %i.aca = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.abj, ptr noundef nonnull dereferenceable(10) @.str.289) #64
  %i.acb = icmp eq i32 %i.aca, 0
  br i1 %i.acb, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1282.thread.i
  store i32 1514689312, ptr %3, align 4, !tbaa !322
  br label %.critedge106

bb.ih:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1282.thread.i
  %i.acc = icmp ult i32 %i.abm, 6
  br i1 %i.acc, label %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i, label %bb.ii, !prof !266

bb.ii:                                            ; preds = %bb.ih
  %i.acd = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.abj, ptr noundef nonnull dereferenceable(7) @.str.290, i64 noundef 6) #64
  %i.ace = icmp eq i32 %i.acd, 0
  br i1 %i.ace, label %_ZL12lang_matchesPKcS0_S0_j.exit1285.i, label %.thread1516.i

_ZL12lang_matchesPKcS0_S0_j.exit1285.i:           ; preds = %bb.ii
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !278
  switch i8 %i.acg, label %.thread1516.i [
    i8 45, label %bb.ij
    i8 0, label %bb.ij
  ]

bb.ij:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1285.i, %_ZL12lang_matchesPKcS0_S0_j.exit1285.i
  store i32 1514689312, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.thread1516.i:                                    ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1285.i, %bb.ii
  %i.ach = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.abj, ptr noundef nonnull dereferenceable(7) @.str.291, i64 noundef 6) #64
  %i.aci = icmp eq i32 %i.ach, 0
  br i1 %i.aci, label %_ZL12lang_matchesPKcS0_S0_j.exit1288.i, label %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i

_ZL12lang_matchesPKcS0_S0_j.exit1288.i:           ; preds = %.thread1516.i
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !278
  switch i8 %i.ack, label %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i [
    i8 45, label %bb.ik
    i8 0, label %bb.ik
  ]

bb.ik:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1288.i, %_ZL12lang_matchesPKcS0_S0_j.exit1288.i
  store i32 1514689568, ptr %3, align 4, !tbaa !322
  br label %.critedge106

_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i:    ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1288.i, %.thread1516.i, %bb.ih
  %i.acl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.abj, ptr noundef nonnull dereferenceable(6) @.str.292) #64
  %i.acm = icmp eq i32 %i.acl, 0
  br i1 %i.acm, label %bb.il, label %sub_01606.i

bb.il:                                            ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i
  store i32 1514689312, ptr %3, align 4, !tbaa !322
  br label %.critedge106

sub_01606.i:                                      ; preds = %_ZL12lang_matchesPKcS0_S0_j.exit1288.thread.i
  %i.acn = load i8, ptr %i.abj, align 1
  %.not1683.i = icmp eq i8 %i.acn, 104
  br i1 %.not1683.i, label %.tail1605.i, label %sub_11555.i.thread

.tail1605.i:                                      ; preds = %sub_01606.i
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.acp = load i8, ptr %i.aco, align 1
  %i.acq = icmp eq i8 %i.acp, 45
  br i1 %i.acq, label %bb.im, label %sub_11555.i.thread

bb.im:                                            ; preds = %.tail1605.i
  %i.acr = tail call fastcc noundef zeroext i1 @_ZL14subtag_matchesPKcS0_S0_j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.202, i32 noundef 3)
  br i1 %i.acr, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  store i32 1514686496, ptr %3, align 4, !tbaa !322
  br label %.critedge106

bb.io:                                            ; preds = %bb.im
  %i.acs = tail call fastcc noundef zeroext i1 @_ZL14subtag_matchesPKcS0_S0_j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.203, i32 noundef 3)
  br i1 %i.acs, label %.preheader1643.preheader.i, label %bb.iq

.preheader1643.preheader.i:                       ; preds = %bb.io
  %i.act = load i32, ptr %2, align 4, !tbaa !322
  %.not1767.i = icmp eq i32 %i.act, 0
  br i1 %.not1767.i, label %.critedge106, label %.preheader1643.1.i

.preheader1643.1.i:                               ; preds = %.preheader1643.preheader.i
  store i32 1514689613, ptr %3, align 4, !tbaa !322
  %i.acu = load i32, ptr %2, align 4, !tbaa !322
  %i.acv = icmp ugt i32 %i.acu, 1
  br i1 %i.acv, label %bb.ip, label %.critedge106

bb.ip:                                            ; preds = %.preheader1643.1.i
  %i.acw = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1514686496, ptr %i.acw, align 4, !tbaa !322
  br label %.critedge106

bb.iq:                                            ; preds = %bb.io
  %i.acx = tail call fastcc noundef zeroext i1 @_ZL14subtag_matchesPKcS0_S0_j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull @.str.205, i32 noundef 3)
  br i1 %i.acx, label %bb.ir, label %sub_11555.i.thread

bb.ir:                                            ; preds = %bb.iq
  store i32 1514689568, ptr %3, align 4, !tbaa !322
  br label %.critedge106

sub_11555.i.thread:                               ; preds = %.preheader.i1242.i, %sub_11581.i, %sub_11550.i, %_ZL12lang_matchesPKcS0_S0_j.exit1229.thread.tail.i, %bb.gd, %.tail1548.i, %bb.ct, %.tail1605.i, %sub_11530.i, %bb.bp, %.tail.i, %sub_11525.i, %sub_1.i, %bb.bj, %_ZL12lang_matchesPKcS0_S0_j.exit1151.thread.tail.i, %sub_01558.i, %sub_01562.i, %sub_11573.i, %bb.eq, %bb.hy, %bb.iq, %_ZL12lang_matchesPKcS0_S0_j.exit1276.i, %_ZL12lang_matchesPKcS0_S0_j.exit1261.thread.tail.i, %bb.hw, %_ZL12lang_matchesPKcS0_S0_j.exit1217.thread.tail.i, %bb.hj, %.tail1593.i, %.tail1566.i, %bb.gv, %.tail1584.i, %bb.gf, %.tail1571.i, %bb.fq, %bb.fc, %_ZL12lang_matchesPKcS0_S0_j.exit1166.thread.tail.i, %bb.ew, %.tail1553.i, %bb.dn, %bb.m, %bb.cz, %bb.n, %_ZL12lang_matchesPKcS0_S0_j.exit1273.thread.tail.i, %sub_11568.i, %sub_11563.i, %bb.ek, %sub_01576.i, %sub_01597.i, %sub_01601.i, %bb.hz, %sub_11602.i, %sub_01606.i, %sub_0.i, %sub_11559.i, %_ZL12lang_matchesPKcS0_S0_j.exit1202.thread.tail.i, %sub_11577.i, %sub_01580.i, %sub_01594.i, %sub_11598.i, %bb.cn, %.tail1543.i, %sub_11545.i, %bb.ch, %.tail1538.i, %sub_11540.i, %bb.cb, %.tail1533.i, %sub_11535.i, %bb.bv, %.tail1528.i
  %i.acy = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #64 ; 4 uses
  %.not = icmp ne ptr %i.acy, null                ; 2 uses
  %i.acz = icmp sgt i64 %i.e, 5
  %or.cond = and i1 %i.acz, %.not
  br i1 %or.cond, label %bb.is, label %bb.ix

bb.is:                                            ; preds = %sub_11555.i.thread
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 1 ; 4 uses
  %i.adb = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ada, i32 noundef 45) #64 ; 2 uses
  %.not89 = icmp eq ptr %i.adb, null
  br i1 %.not89, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.adc = ptrtoint ptr %i.adb to i64
  %i.add = ptrtoint ptr %i.acy to i64
  %i.ade = xor i64 %i.add, -1
  %i.adf = add i64 %i.adc, %i.ade
  br label %bb.iv

bb.iu:                                            ; preds = %bb.is
  %i.adg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ada) #64
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.adh = phi i64 [ %i.adf, %bb.it ], [ %i.adg, %bb.iu ]
  %i.adi = icmp eq i64 %i.adh, 3
  br i1 %i.adi, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.adj = load i8, ptr %i.ada, align 1, !tbaa !278
  %i.adk = and i8 %i.adj, -33
  %i.adl = add i8 %i.adk, -65
  %i.adm = icmp ult i8 %i.adl, 26
  %spec.select = select i1 %i.adm, ptr %i.ada, ptr %0 ; 2 uses
  %.pre = ptrtoint ptr %spec.select to i64
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %sub_11555.i.thread
  %.pre-phi = phi i64 [ %.pre, %bb.iw ], [ %i.d, %bb.iv ], [ %i.d, %sub_11555.i.thread ] ; 2 uses
  %.181 = phi ptr [ %spec.select, %bb.iw ], [ %0, %bb.iv ], [ %0, %sub_11555.i.thread ] ; 11 uses
  %i.adn = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.181, i32 noundef 45) #64 ; 2 uses
  %.not90 = icmp eq ptr %i.adn, null
  %i.ado = ptrtoint ptr %i.adn to i64
  %.v = select i1 %.not90, i64 %i.c, i64 %i.ado
  %i.adp = sub i64 %.v, %.pre-phi
  %i.adq = trunc i64 %i.adp to i32                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %.not231 = icmp eq i32 %i.adq, 0
  br i1 %.not231, label %hb_tag_from_string.exit.thread, label %bb.iy

hb_tag_from_string.exit.thread:                   ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit

bb.iy:                                            ; preds = %bb.ix
  %i.adr = load i8, ptr %.181, align 1, !tbaa !278
  %.not.i107 = icmp eq i8 %i.adr, 0
  br i1 %.not.i107, label %hb_tag_from_string.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.adq, i32 4) ; 4 uses
  %i.ads = load i8, ptr %.181, align 1, !tbaa !278 ; 2 uses
  %.not23.i = icmp eq i8 %i.ads, 0
  br i1 %.not23.i, label %.critedge.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  store i8 %i.ads, ptr %i.b, align 4, !tbaa !278
  %exitcond.not.i = icmp eq i32 %i.adq, 1
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.adt = getelementptr inbounds nuw i8, ptr %.181, i64 1
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !278 ; 2 uses
  %.not23.i.1 = icmp eq i8 %i.adu, 0
  br i1 %.not23.i.1, label %.critedge.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.adv = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.adu, ptr %i.adv, align 1, !tbaa !278
  %exitcond.not.i.1 = icmp eq i32 %i.adq, 2
  br i1 %exitcond.not.i.1, label %.critedge.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.adw = getelementptr inbounds nuw i8, ptr %.181, i64 2
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !278 ; 2 uses
  %.not23.i.2 = icmp eq i8 %i.adx, 0
  br i1 %.not23.i.2, label %.critedge.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.ady = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.adx, ptr %i.ady, align 2, !tbaa !278
  %exitcond.not.i.2 = icmp eq i32 %i.adq, 3
  br i1 %exitcond.not.i.2, label %.critedge.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.adz = getelementptr inbounds nuw i8, ptr %.181, i64 3
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !278 ; 2 uses
  %.not23.i.3 = icmp eq i8 %i.aea, 0
  br i1 %.not23.i.3, label %.critedge.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.aea, ptr %i.aeb, align 1, !tbaa !278
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ja, %bb.jc, %bb.je, %bb.jg, %bb.iz, %bb.jb, %bb.jd, %bb.jf
  %.0.lcssa.i = phi i32 [ 3, %bb.jf ], [ 0, %bb.iz ], [ 1, %bb.jb ], [ 2, %bb.jd ], [ %spec.store.select.i, %bb.jg ], [ %spec.store.select.i, %bb.je ], [ %spec.store.select.i, %bb.jc ], [ %spec.store.select.i, %bb.ja ] ; 3 uses
  %i.aec = icmp ult i32 %.0.lcssa.i, 4
  br i1 %i.aec, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.aed = zext nneg i32 %.0.lcssa.i to i64
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.aed
  %narrow.i = sub nuw nsw i32 4, %.0.lcssa.i
  %i.aee = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 32, i64 range(i64 0, 5) %i.aee, i1 false), !tbaa !278
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.critedge.i
  %i.aef = load i32, ptr %i.b, align 4
  %i.aeg = tail call i32 @llvm.bswap.i32(i32 %i.aef)
  br label %hb_tag_from_string.exit

hb_tag_from_string.exit:                          ; preds = %bb.iy, %._crit_edge.i
  %.019.i = phi i32 [ %i.aeg, %._crit_edge.i ], [ 0, %bb.iy ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  switch i32 %i.adq, label %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit [
    i32 2, label %bb.jh
    i32 3, label %bb.jq
  ]

bb.jh:                                            ; preds = %hb_tag_from_string.exit
  %i.aeh = load atomic i32, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E14last_tag_idx_2.0 monotonic, align 4 ; 3 uses
  %i.aei = icmp ult i32 %i.aeh, 204
  br i1 %i.aei, label %bb.ji, label %.lr.ph.i.i.i.preheader, !prof !266

bb.ji:                                            ; preds = %bb.jh
  %i.aej = zext nneg i32 %i.aeh to i64
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %i.aej
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !1425
  %i.aem = icmp eq i32 %i.ael, %.019.i
  br i1 %i.aem, label %.critedge, label %.lr.ph.i.i.i.preheader, !prof !266

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ji, %bb.jh
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.jm
  %.0203.i.i.i = phi i32 [ %.2.i.i.i, %bb.jm ], [ 203, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0212.i.i.i = phi i32 [ %.223.i.i.i, %bb.jm ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aen = add i32 %.0212.i.i.i, %.0203.i.i.i
  %i.aeo = lshr i32 %i.aen, 1                     ; 4 uses
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = shl nuw nsw i64 %i.aep, 3
  %i.aer = getelementptr inbounds nuw i8, ptr @_ZL13ot_languages2, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 8, !tbaa !1425 ; 2 uses
  %i.aet = icmp ult i32 %.019.i, %i.aes
  br i1 %i.aet, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %.lr.ph.i.i.i
  %i.aeu = add nsw i32 %i.aeo, -1
  br label %bb.jm

bb.jk:                                            ; preds = %.lr.ph.i.i.i
  %.not28.i.i.i = icmp eq i32 %.019.i, %i.aes
  br i1 %.not28.i.i.i, label %.critedge, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aev = add nuw nsw i32 %i.aeo, 1
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jj
  %.223.i.i.i = phi i32 [ %i.aev, %bb.jl ], [ %.0212.i.i.i, %bb.jj ] ; 2 uses
  %.2.i.i.i = phi i32 [ %.0203.i.i.i, %bb.jl ], [ %i.aeu, %bb.jj ] ; 2 uses
  %.not.not.i.i.i = icmp sgt i32 %.223.i.i.i, %.2.i.i.i
  br i1 %.not.not.i.i.i, label %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %.lr.ph.i.i.i, !llvm.loop !3059

.critedge:                                        ; preds = %bb.jk, %bb.ji
  %.0207 = phi i32 [ %i.aeh, %bb.ji ], [ %i.aeo, %bb.jk ] ; 4 uses
  store atomic i32 %.0207, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E14last_tag_idx_2.0 monotonic, align 4
  %.not92314 = icmp eq i32 %.0207, 0
  br i1 %.not92314, label %.critedge3, label %.lr.ph316

bb.jn:                                            ; preds = %.lr.ph316
  %.not92 = icmp eq i32 %i.aez, 0
  br i1 %.not92, label %.critedge3, label %.lr.ph316, !llvm.loop !3060

.lr.ph316:                                        ; preds = %.critedge, %bb.jn
  %.1208315 = phi i32 [ %i.aez, %bb.jn ], [ %.0207, %.critedge ] ; 3 uses
  %i.aew = zext nneg i32 %.1208315 to i64
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !1425
  %i.aez = add nsw i32 %.1208315, -1              ; 4 uses
  %i.afa = zext nneg i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %i.afa
  %i.afc = load i32, ptr %i.afb, align 8, !tbaa !1425
  %i.afd = icmp eq i32 %i.aey, %i.afc
  br i1 %i.afd, label %bb.jn, label %..critedge3_crit_edge317, !llvm.loop !3060

..critedge3_crit_edge317:                         ; preds = %.lr.ph316
  br label %.critedge3, !llvm.loop !3060

.critedge3:                                       ; preds = %bb.jn, %..critedge3_crit_edge317, %.critedge
  %.1208.lcssa = phi i32 [ %.0207, %.critedge ], [ %.1208315, %..critedge3_crit_edge317 ], [ %i.aez, %bb.jn ] ; 3 uses
  %i.afe = load i32, ptr %2, align 4, !tbaa !322
  %.not250 = icmp eq i32 %i.afe, 0
  br i1 %.not250, label %.critedge106, label %.lr.ph243

.lr.ph243:                                        ; preds = %.critedge3
  %i.aff = zext i32 %.1208.lcssa to i64
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %i.aff
  %i.afh = sext i32 %.1208.lcssa to i64           ; 2 uses
  %i.afi = icmp ult i32 %.1208.lcssa, 204
  br i1 %i.afi, label %.lr.ph320.preheader, label %.critedge5.loopexit

.lr.ph320.preheader:                              ; preds = %.lr.ph243
  %invariant.gep344 = getelementptr [8 x i8], ptr @_ZL13ot_languages2, i64 %i.afh
  %i.afj = load i32, ptr %i.afg, align 8, !tbaa !1425
  br label %.lr.ph320

bb.jo:                                            ; preds = %bb.jp
  %i.afk = add nuw nsw i64 %indvars.iv.next260, %i.afh
  %i.afl = icmp ult i64 %i.afk, 204
  br i1 %i.afl, label %.lr.ph320, label %.critedge5.loopexit, !llvm.loop !3061

.lr.ph320:                                        ; preds = %.lr.ph320.preheader, %bb.jo
  %indvars.iv259319 = phi i64 [ %indvars.iv.next260, %bb.jo ], [ 0, %.lr.ph320.preheader ] ; 4 uses
  %gep345 = getelementptr [8 x i8], ptr %invariant.gep344, i64 %indvars.iv259319 ; 2 uses
  %i.afm = load i32, ptr %gep345, align 8, !tbaa !1425
  %i.afn = icmp eq i32 %i.afm, %i.afj
  br i1 %i.afn, label %bb.jp, label %.critedge5.loopexit

bb.jp:                                            ; preds = %.lr.ph320
  %i.afo = getelementptr inbounds nuw i8, ptr %gep345, i64 4
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !1426
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv259319
  store i32 %i.afp, ptr %i.afq, align 4, !tbaa !322
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259319, 1 ; 5 uses
  %i.afr = load i32, ptr %2, align 4, !tbaa !322
  %i.afs = zext i32 %i.afr to i64
  %i.aft = icmp samesign ult i64 %indvars.iv.next260, %i.afs
end_hunk_3
