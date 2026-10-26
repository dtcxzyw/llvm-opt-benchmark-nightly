Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/NeverExtractAttr?download=true
inline.NumInlined: 53
inline.NumDeleted: 20
begin_hunk_0_@l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___lam__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2_:bb.a
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !12
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___lam__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2____boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___lam__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___lam__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !12
  %i.e = ptrtoint ptr %2 to i64
  %i.f = and i64 %i.e, 1
  %.not.i7 = icmp eq i64 %i.f, 0
  br i1 %.not.i7, label %bb.c, label %lean_dec.exit8

bb.c:                                             ; preds = %l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___lam__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2_.exit
  %i.g = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit8

bb.e:                                             ; preds = %bb.c
  %.not.i9 = icmp eq i32 %i.g, 0
  br i1 %.not.i9, label %lean_dec.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #3
  br label %lean_dec.exit8

lean_dec.exit8:                                   ; preds = %bb.f, %bb.e, %bb.d, %l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___lam__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2_.exit
  %i.j = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %lean_dec.exit8
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit13

bb.h:                                             ; preds = %lean_dec.exit8
  %.not.i12 = icmp eq i32 %i.j, 0
  br i1 %.not.i12, label %lean_dec_ref.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #3
  br label %lean_dec_ref.exit13

lean_dec_ref.exit13:                              ; preds = %bb.g, %bb.h, %bb.i
  %i.m = ptrtoint ptr %0 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec_ref.exit13
  %i.o = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i10 = icmp eq i32 %i.o, 0
  br i1 %.not.i10, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec_ref.exit13
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2_() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_registerTagAttribute(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__2_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__3_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 5 to ptr)) #3
  ret ptr %i.a
}

declare ptr @l_Lean_registerTagAttribute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2____boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_registerTagAttribute(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__2_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__3_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 5 to ptr)) #3
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_docString__1() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_addBuiltinDocString(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_docString__1___closed__0_value) #3
  ret ptr %i.a
}

declare ptr @l_Lean_addBuiltinDocString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_docString__1___boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_addBuiltinDocString(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_docString__1___closed__0_value) #3
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_declRange__3() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_addBuiltinDeclarationRanges(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_declRange__3___closed__6_value) #3
  ret ptr %i.a
}

declare ptr @l_Lean_addBuiltinDeclarationRanges(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_declRange__3___boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_addBuiltinDeclarationRanges(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_declRange__3___closed__6_value) #3
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_hasNeverExtractAttribute_visit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %lean_dec_ref.exit35

lean_dec_ref.exit35:                              ; preds = %lean_dec_ref.exit35.backedge, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.t, %lean_dec_ref.exit35.backedge ] ; 16 uses
  %i.a = load ptr, ptr @l_Lean_neverExtractAttr, align 8, !tbaa !12
  %i.b = ptrtoint ptr %.020 to i64
  %i.c = and i64 %i.b, 1
  %.not.i36 = icmp eq i64 %i.c, 0                 ; 4 uses
  br i1 %.not.i36, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %lean_dec_ref.exit35
  %.val.i.i = load i32, ptr %.020, align 4, !tbaa !10 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %.020, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw add ptr %.020, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %lean_dec_ref.exit35
  %.val.i.i37 = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.g = icmp sgt i32 %.val.i.i37, 0
  br i1 %i.g, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_inc.exit
  %i.h = add nuw i32 %.val.i.i37, 1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %lean_inc_ref.exit39

bb.g:                                             ; preds = %lean_inc.exit
  %.not.i.i38 = icmp eq i32 %.val.i.i37, 0
  br i1 %.not.i.i38, label %lean_inc_ref.exit39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit39

lean_inc_ref.exit39:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = tail call zeroext i8 @l_Lean_TagAttribute_hasTag(ptr noundef %i.a, ptr noundef nonnull %0, ptr noundef %.020) #3 ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.w

bb.i:                                             ; preds = %lean_inc_ref.exit39
  %i.l = tail call zeroext i8 @l_Lean_Name_isInternal(ptr noundef %.020) #3
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i36, label %bb.k, label %lean_dec.exit26

bb.k:                                             ; preds = %bb.j
  %i.n = load i32, ptr %.020, align 4, !tbaa !10  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %.020, align 4, !tbaa !10
  br label %lean_dec.exit26

bb.m:                                             ; preds = %bb.k
  %.not.i27 = icmp eq i32 %i.n, 0
  br i1 %.not.i27, label %lean_dec.exit26, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.020) #3
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.q = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %lean_dec.exit26
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %0, align 4, !tbaa !10
  br label %bb.ae

bb.p:                                             ; preds = %lean_dec.exit26
  %.not.i34 = icmp eq i32 %i.q, 0
  br i1 %.not.i34, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #3
  br label %bb.ae

bb.r:                                             ; preds = %bb.i
  %i.t = tail call ptr @l_Lean_Name_getPrefix(ptr noundef %.020) #3
  br i1 %.not.i36, label %bb.s, label %lean_dec_ref.exit35.backedge

lean_dec_ref.exit35.backedge:                     ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  br label %lean_dec_ref.exit35

bb.s:                                             ; preds = %bb.r
  %i.u = load i32, ptr %.020, align 4, !tbaa !10  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %.020, align 4, !tbaa !10
  br label %lean_dec_ref.exit35.backedge

bb.u:                                             ; preds = %bb.s
  %.not.i28 = icmp eq i32 %i.u, 0
  br i1 %.not.i28, label %lean_dec_ref.exit35.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.020) #3
  br label %lean_dec_ref.exit35.backedge

bb.w:                                             ; preds = %lean_inc_ref.exit39
  br i1 %.not.i36, label %bb.x, label %lean_dec.exit

bb.x:                                             ; preds = %bb.w
  %i.x = load i32, ptr %.020, align 4, !tbaa !10  ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %.020, align 4, !tbaa !10
  br label %lean_dec.exit

bb.z:                                             ; preds = %bb.x
  %.not.i30 = icmp eq i32 %i.x, 0
  br i1 %.not.i30, label %lean_dec.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.020) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  %i.aa = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %lean_dec.exit
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %0, align 4, !tbaa !10
  br label %bb.ae

bb.ac:                                            ; preds = %lean_dec.exit
  %.not.i32 = icmp eq i32 %i.aa, 0
  br i1 %.not.i32, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #3
  br label %bb.ae

bb.ae:                                            ; preds = %bb.q, %bb.o, %bb.p, %bb.ab, %bb.ac, %bb.ad
  ret i8 %i.j
}

declare zeroext i8 @l_Lean_TagAttribute_hasTag(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @l_Lean_Name_isInternal(ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Name_getPrefix(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_hasNeverExtractAttribute_visit___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_hasNeverExtractAttribute_visit(ptr noundef %0, ptr noundef %1)
  %i.b = zext i8 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = inttoptr i64 %i.d to ptr
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Lean_hasNeverExtractAttribute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_hasNeverExtractAttribute_visit(ptr noundef %0, ptr noundef %1)
  ret i8 %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_hasNeverExtractAttribute___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_hasNeverExtractAttribute_visit(ptr noundef %0, ptr noundef %1)
  %i.b = zext i8 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = inttoptr i64 %i.d to ptr
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Lean_Compiler_NeverExtractAttr(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_runtime_initialized, align 1
  %i.c = tail call ptr @runtime_initialize_Lean_Attributes(i8 noundef zeroext %0) #3 ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val22 = load i32, ptr %i.d, align 4
  %.mask.i = and i32 %.val22, -16777216
  %i.e = icmp eq i32 %.mask.i, 16777216
  br i1 %i.e, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !10
  br label %lean_dec_ref.exit19

bb.g:                                             ; preds = %bb.e
  %.not.i18 = icmp eq i32 %i.f, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #3
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.i = tail call ptr @l_Lean_registerTagAttribute(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__2_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__3_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__0_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 5 to ptr)) #3 ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val21 = load i32, ptr %i.j, align 4
  %.mask.i24 = and i32 %.val21, -16777216
  %i.k = icmp eq i32 %.mask.i24, 16777216
  br i1 %i.k, label %bb.v, label %bb.i

bb.i:                                             ; preds = %lean_dec_ref.exit19
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val23 = load ptr, ptr %i.l, align 8, !tbaa !12 ; 2 uses
  store ptr %.val23, ptr @l_Lean_neverExtractAttr, align 8, !tbaa !12
  tail call void @lean_mark_persistent(ptr noundef %.val23) #3
  %i.m = load i32, ptr %i.i, align 8, !tbaa !10   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %i.i, align 8, !tbaa !10
  br label %lean_dec_ref.exit17

bb.k:                                             ; preds = %bb.i
  %.not.i16 = icmp eq i32 %i.m, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #3
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.p = tail call ptr @l_Lean_addBuiltinDocString(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_docString__1___closed__0_value) #3 ; 5 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val20 = load i32, ptr %i.q, align 4
  %.mask.i25 = and i32 %.val20, -16777216
  %i.r = icmp eq i32 %.mask.i25, 16777216
  br i1 %i.r, label %bb.v, label %bb.m

bb.m:                                             ; preds = %lean_dec_ref.exit17
  %i.s = load i32, ptr %i.p, align 4, !tbaa !10   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !10
  br label %lean_dec_ref.exit15

bb.o:                                             ; preds = %bb.m
  %.not.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i14, label %lean_dec_ref.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #3
  br label %lean_dec_ref.exit15

lean_dec_ref.exit15:                              ; preds = %bb.n, %bb.o, %bb.p
  %i.v = tail call ptr @l_Lean_addBuiltinDeclarationRanges(ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_initFn___closed__6_00___x40_Lean_Compiler_NeverExtractAttr_1636298006____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Compiler_NeverExtractAttr_0__Lean_neverExtractAttr___regBuiltin_Lean_neverExtractAttr_declRange__3___closed__6_value) #3 ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val = load i32, ptr %i.w, align 4
  %.mask.i26 = and i32 %.val, -16777216
  %i.x = icmp eq i32 %.mask.i26, 16777216
  br i1 %i.x, label %bb.v, label %bb.q

bb.q:                                             ; preds = %lean_dec_ref.exit15
  %i.y = load i32, ptr %i.v, align 4, !tbaa !10   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.s:                                             ; preds = %bb.q
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #3
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.r, %bb.s, %bb.t
  tail call void @lean_inc_heartbeat() #3
  %i.ab = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

.sink.split:                                      ; preds = %lean_dec_ref.exit, %bb.b
  %.sink39 = phi ptr [ %i.a, %bb.b ], [ %i.ab, %lean_dec_ref.exit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink39, i64 4
  store i32 1, ptr %.sink39, align 4, !tbaa !10
  store i32 65552, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink39, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %lean_dec_ref.exit15, %lean_dec_ref.exit17, %lean_dec_ref.exit19, %bb.d
  %.0 = phi ptr [ %i.p, %lean_dec_ref.exit17 ], [ %i.v, %lean_dec_ref.exit15 ], [ %i.c, %bb.d ], [ %i.i, %lean_dec_ref.exit19 ], [ %.sink39, %.sink.split ]
  ret ptr %.0
}

declare ptr @runtime_initialize_Lean_Attributes(i8 noundef zeroext) local_unnamed_addr #1

declare void @lean_mark_persistent(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @meta_initialize_Lean_Compiler_NeverExtractAttr(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
end_hunk_0
