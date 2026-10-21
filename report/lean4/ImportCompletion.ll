Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ImportCompletion?download=true
inline.NumInlined: 824
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00ImportCompletion_find_spec__1:bb.a
  br i1 %.not.i.i, label %bb.b, label %lean_array_uget.exit

bb.b:                                             ; preds = %.lr.ph
  %.val.i.i.i = load i32, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.f, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i32 %.val.i.i.i, 1
  store i32 %i.g, ptr %i.c, align 4, !tbaa !12
  br label %lean_array_uget.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_array_uget.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = atomicrmw add ptr %i.c, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_array_uget.exit

lean_array_uget.exit:                             ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e
  %.val.i.i = load i32, ptr %.04057, align 4, !tbaa !12
  %i.i = icmp eq i32 %.val.i.i, 1
  br i1 %i.i, label %lean_ensure_exclusive_array.exit.i, label %bb.f

bb.f:                                             ; preds = %lean_array_uget.exit
  %i.j = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.04057, i1 noundef zeroext false) #4
  br label %lean_ensure_exclusive_array.exit.i

lean_ensure_exclusive_array.exit.i:               ; preds = %bb.f, %lean_array_uget.exit
  %.0.i.i = phi ptr [ %i.j, %bb.f ], [ %.04057, %lean_array_uget.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03858 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10   ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i43 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i43, label %bb.g, label %lean_array_uset.exit

bb.g:                                             ; preds = %lean_ensure_exclusive_array.exit.i
  %i.p = load i32, ptr %i.m, align 4, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !12
  br label %lean_array_uset.exit

bb.i:                                             ; preds = %bb.g
  %.not.i6.i = icmp eq i32 %i.p, 0
  br i1 %.not.i6.i, label %lean_array_uset.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #4
  br label %lean_array_uset.exit

lean_array_uset.exit:                             ; preds = %lean_ensure_exclusive_array.exit.i, %bb.h, %bb.i, %bb.j
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !tbaa !10
  %i.s = tail call ptr @l_Lean_Name_toStringWithToken___at___00Lean_Name_toString_spec__0(ptr noundef %i.c, i8 noundef zeroext %0) #4 ; 4 uses
  %i.t = tail call ptr @lean_string_append(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00ImportCompletion_find_spec__1___closed__0_value, ptr noundef %i.s) #4
  %i.u = load i32, ptr %i.s, align 4, !tbaa !12   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %lean_array_uset.exit
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.l:                                             ; preds = %lean_array_uset.exit
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.k, %bb.l, %bb.m
  tail call void @lean_inc_heartbeat() #4
  %i.x = tail call noalias ptr @mi_malloc_small(i64 noundef 72) #4 ; 9 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.n, label %lean_alloc_ctor.exit

bb.n:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 1, ptr %i.x, align 4, !tbaa !12
  store i32 524360, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.ac, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8, !tbaa !10
  %i.af = add nuw i64 %.03858, 1                  ; 2 uses
  %.val.i.i44 = load i32, ptr %.0.i.i, align 4, !tbaa !12
  %i.ag = icmp eq i32 %.val.i.i44, 1
  br i1 %i.ag, label %lean_ensure_exclusive_array.exit.i45, label %bb.o

bb.o:                                             ; preds = %lean_alloc_ctor.exit
  %i.ah = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.0.i.i, i1 noundef zeroext false) #4
  br label %lean_ensure_exclusive_array.exit.i45

lean_ensure_exclusive_array.exit.i45:             ; preds = %bb.o, %lean_alloc_ctor.exit
  %.0.i.i46 = phi ptr [ %i.ah, %bb.o ], [ %.0.i.i, %lean_alloc_ctor.exit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 24
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.03858 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10 ; 4 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 1
  %.not.i.i47 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i47, label %bb.p, label %bb.t

bb.p:                                             ; preds = %lean_ensure_exclusive_array.exit.i45
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !12 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !12
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.not.i6.i48 = icmp eq i32 %i.an, 0
  br i1 %.not.i6.i48, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %lean_ensure_exclusive_array.exit.i45
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !10
  %exitcond.not = icmp eq i64 %i.af, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %.040.lcssa = phi ptr [ %3, %bb.a ], [ %.0.i.i46, %bb.t ]
  ret ptr %.040.lcssa
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00ImportCompletion_find_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val14 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !12
  br label %lean_dec.exit10

bb.c:                                             ; preds = %bb.a
  %.not.i11 = icmp eq i32 %i.b, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit10
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit10
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.i = ptrtoint ptr %0 to i64
  %i.j = lshr i64 %i.i, 1
  %i.k = trunc i64 %i.j to i8
  %i.l = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00ImportCompletion_find_spec__1(i8 noundef zeroext %i.k, i64 noundef %.val14, i64 noundef %.val, ptr noundef %3)
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define ptr @l_ImportCompletion_find(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_ImportCompletion_AvailableImports_toImportTrie___closed__0_once seq_cst, align 4, !tbaa !17
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_ImportCompletion_AvailableImports_toImportTrie___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_ImportCompletion_AvailableImports_toImportTrie___closed__0, ptr noundef nonnull @l_ImportCompletion_AvailableImports_toImportTrie___closed__0_once, ptr noundef nonnull @_init_l_ImportCompletion_AvailableImports_toImportTrie___closed__0) #4
  br label %lean_obj_once.exit.i

lean_obj_once.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = getelementptr i8, ptr %4, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !15 ; 2 uses
  %.not25.i.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not25.i.not.i, label %l_ImportCompletion_AvailableImports_toImportTrie.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %lean_obj_once.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.01527.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.o, %bb.i ] ; 2 uses
  %.01726.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %i.n, %bb.i ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01527.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 6 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.k, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !12
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = atomicrmw add ptr %i.h, i32 -1 monotonic, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.n = tail call ptr @l_Lean_NameTrie_insert___redArg(ptr noundef %.01726.i.i, ptr noundef %i.h, ptr noundef %i.h) #4 ; 2 uses
  %i.o = add nuw i64 %.01527.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.o, %.val.i
  br i1 %exitcond.not.i.i, label %l_ImportCompletion_AvailableImports_toImportTrie.exit, label %bb.d

l_ImportCompletion_AvailableImports_toImportTrie.exit: ; preds = %bb.i, %lean_obj_once.exit.i
  %.017.lcssa.i.i = phi ptr [ %.0.i.i, %lean_obj_once.exit.i ], [ %i.n, %bb.i ] ; 3 uses
  %.val.i.i = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i, 0
  br i1 %i.p, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %l_ImportCompletion_AvailableImports_toImportTrie.exit
  %i.q = add nuw i32 %.val.i.i, 1
  store i32 %i.q, ptr %1, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.k:                                             ; preds = %l_ImportCompletion_AvailableImports_toImportTrie.exit
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.j, %bb.k, %bb.l
  %i.s = tail call ptr @l_Lean_FileMap_lspPosToUtf8Pos(ptr noundef %2, ptr noundef nonnull %1) #4 ; 16 uses
  %i.t = ptrtoint ptr %3 to i64
  %i.u = and i64 %i.t, 1
  %.not.i60 = icmp eq i64 %i.u, 0                 ; 3 uses
  br i1 %.not.i60, label %bb.m, label %lean_inc.exit61.thread

bb.m:                                             ; preds = %lean_inc_ref.exit
  %.val.i.i82 = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.v = icmp sgt i32 %.val.i.i82, 0
  br i1 %i.v, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.w = add nuw i32 %.val.i.i82, 1
  store i32 %i.w, ptr %3, align 4, !tbaa !12
  br label %lean_inc.exit61

bb.o:                                             ; preds = %bb.m
  %.not.i.i83 = icmp eq i32 %.val.i.i82, 0
  br i1 %.not.i.i83, label %lean_inc.exit61, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = atomicrmw add ptr %3, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit61

lean_inc.exit61:                                  ; preds = %bb.p, %bb.o, %bb.n
  %i.y = tail call zeroext i8 @l_ImportCompletion_isImportNameCompletionRequest(ptr noundef nonnull %3, ptr noundef %i.s)
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.q, label %bb.ak

lean_inc.exit61.thread:                           ; preds = %lean_inc_ref.exit
  %i.aa = tail call zeroext i8 @l_ImportCompletion_isImportNameCompletionRequest(ptr noundef %3, ptr noundef %i.s)
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %lean_inc.exit, label %bb.ak

bb.q:                                             ; preds = %lean_inc.exit61
  %.val.i.i85 = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.ac = icmp sgt i32 %.val.i.i85, 0
  br i1 %i.ac, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.ad = add nuw i32 %.val.i.i85, 1
  store i32 %i.ad, ptr %3, align 4, !tbaa !12
  br label %lean_inc.exit

bb.s:                                             ; preds = %bb.q
  %.not.i.i86 = icmp eq i32 %.val.i.i85, 0
  br i1 %.not.i.i86, label %lean_inc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = atomicrmw add ptr %3, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit61.thread, %bb.t, %bb.s, %bb.r
  %i.af = tail call zeroext i8 @l_ImportCompletion_isImportCmdCompletionRequest(ptr noundef %3, ptr noundef %i.s) ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %lean_inc.exit
  %i.ah = tail call ptr @l_ImportCompletion_computePartialImportCompletions(ptr noundef %3, ptr noundef %i.s, ptr noundef %.017.lcssa.i.i) ; 2 uses
  %i.ai = ptrtoint ptr %i.s to i64
  %i.aj = and i64 %i.ai, 1
  %.not.i69 = icmp eq i64 %i.aj, 0
  br i1 %.not.i69, label %bb.v, label %lean_dec.exit70

bb.v:                                             ; preds = %bb.u
  %i.ak = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.am = add nsw i32 %i.ak, -1
  store i32 %i.am, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec.exit70

bb.x:                                             ; preds = %bb.v
  %.not.i71 = icmp eq i32 %i.ak, 0
  br i1 %.not.i71, label %lean_dec.exit70, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #4
  br label %lean_dec.exit70

lean_dec.exit70:                                  ; preds = %bb.y, %bb.x, %bb.w, %bb.u
  %i.an = getelementptr i8, ptr %i.ah, i64 8
  %.val81 = load i64, ptr %i.an, align 8, !tbaa !15
  %i.ao = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00ImportCompletion_find_spec__0(i64 noundef %.val81, i64 noundef 0, ptr noundef %i.ah)
  tail call void @lean_inc_heartbeat() #4
  %i.ap = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.z, label %lean_alloc_ctor.exit

bb.z:                                             ; preds = %lean_dec.exit70
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.aa:                                            ; preds = %lean_inc.exit
  %i.ar = ptrtoint ptr %i.s to i64
  %i.as = and i64 %i.ar, 1
  %.not.i67 = icmp eq i64 %i.as, 0
  br i1 %.not.i67, label %bb.ab, label %lean_dec.exit68

bb.ab:                                            ; preds = %bb.aa
  %i.at = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec.exit68

bb.ad:                                            ; preds = %bb.ab
  %.not.i72 = icmp eq i32 %i.at, 0
  br i1 %.not.i72, label %lean_dec.exit68, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #4
  br label %lean_dec.exit68

lean_dec.exit68:                                  ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  br i1 %.not.i60, label %bb.af, label %lean_dec.exit66

bb.af:                                            ; preds = %lean_dec.exit68
  %i.aw = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit66

bb.ah:                                            ; preds = %bb.af
  %.not.i74 = icmp eq i32 %i.aw, 0
  br i1 %.not.i74, label %lean_dec.exit66, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit66

lean_dec.exit66:                                  ; preds = %bb.ai, %bb.ah, %bb.ag, %lean_dec.exit68
  %i.az = tail call ptr @l_Lean_NameTrie_toArray___redArg(ptr noundef %.017.lcssa.i.i) #4 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val80 = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.bb = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00ImportCompletion_find_spec__1(i8 noundef zeroext %i.af, i64 noundef %.val80, i64 noundef 0, ptr noundef %i.az)
  tail call void @lean_inc_heartbeat() #4
  %i.bc = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.aj, label %lean_alloc_ctor.exit

bb.aj:                                            ; preds = %lean_dec.exit66
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.ak:                                            ; preds = %lean_inc.exit61.thread, %lean_inc.exit61
  %i.be = ptrtoint ptr %i.s to i64
  %i.bf = and i64 %i.be, 1
  %.not.i63 = icmp eq i64 %i.bf, 0
  br i1 %.not.i63, label %bb.al, label %lean_dec.exit64

bb.al:                                            ; preds = %bb.ak
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.am, label %bb.an, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec.exit64

bb.an:                                            ; preds = %bb.al
  %.not.i76 = icmp eq i32 %i.bg, 0
  br i1 %.not.i76, label %lean_dec.exit64, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #4
  br label %lean_dec.exit64

lean_dec.exit64:                                  ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  br i1 %.not.i60, label %bb.ap, label %lean_dec.exit

bb.ap:                                            ; preds = %lean_dec.exit64
  %i.bj = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.ar:                                            ; preds = %bb.ap
  %.not.i78 = icmp eq i32 %i.bj, 0
  br i1 %.not.i78, label %lean_dec.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.as, %bb.ar, %bb.aq, %lean_dec.exit64
  %i.bm = tail call ptr @l_Lean_NameTrie_toArray___redArg(ptr noundef %.017.lcssa.i.i) #4 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %.val = load i64, ptr %i.bn, align 8, !tbaa !15
  %i.bo = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00ImportCompletion_find_spec__2(i8 noundef zeroext 1, i64 noundef %.val, i64 noundef 0, ptr noundef %i.bm)
  tail call void @lean_inc_heartbeat() #4
  %i.bp = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.at, label %lean_alloc_ctor.exit

bb.at:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit, %lean_dec.exit66, %lean_dec.exit70
  %.sink113 = phi ptr [ %i.bc, %lean_dec.exit66 ], [ %i.ap, %lean_dec.exit70 ], [ %i.bp, %lean_dec.exit ] ; 5 uses
  %.sink106 = phi ptr [ %i.bb, %lean_dec.exit66 ], [ %i.ao, %lean_dec.exit70 ], [ %i.bo, %lean_dec.exit ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sink113, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sink113, i64 16
  store i64 0, ptr %i.bs, align 8, !tbaa !15
  store i32 1, ptr %.sink113, align 8, !tbaa !12
  store i32 65560, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink113, i64 8
  store ptr %.sink106, ptr %i.bt, align 8, !tbaa !10
  %5 = tail call ptr @l_ImportCompletion_addCompletionItemData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %.sink113)
  ret ptr %5
}

declare ptr @l_Lean_NameTrie_toArray___redArg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_ImportCompletion_find___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_ImportCompletion_find(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit9

bb.c:                                             ; preds = %bb.a
  %.not.i8 = icmp eq i32 %i.b, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit9
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit9
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_ImportCompletion_computeCompletions(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_ImportCompletion_collectAvailableImports() ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i75 = icmp eq i64 %i.c, 0                 ; 3 uses
  br i1 %.not.i75, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.z

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 9 uses
  %.val74 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val74, 1                   ; 2 uses
  br i1 %i.k, label %lean_dec.exit62, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = and i64 %i.l, 1
  %.not.i54 = icmp eq i64 %i.m, 0
  br i1 %.not.i54, label %bb.f, label %lean_inc.exit55

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %.val.i.i, 1
  store i32 %i.o, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit55

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw add ptr %i.j, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit55

lean_inc.exit55:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i75, label %bb.j, label %lean_dec.exit62

bb.j:                                             ; preds = %lean_inc.exit55
  %i.q = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit62

bb.l:                                             ; preds = %bb.j
  %.not.i63 = icmp eq i32 %i.q, 0
  br i1 %.not.i63, label %lean_dec.exit62, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit62

lean_dec.exit62:                                  ; preds = %lean_inc.exit55, %bb.k, %bb.l, %bb.m, %bb.d
  %.053 = phi ptr [ %i.a, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit55 ]
  %.val.i.i76 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i76, 0
  br i1 %i.t, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %lean_dec.exit62
  %i.u = add nuw i32 %.val.i.i76, 1
  store i32 %i.u, ptr %1, align 4, !tbaa !12
  br label %lean_inc_ref.exit78

bb.o:                                             ; preds = %lean_dec.exit62
  %.not.i.i77 = icmp eq i32 %.val.i.i76, 0
  br i1 %.not.i.i77, label %lean_inc_ref.exit78, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit78

lean_inc_ref.exit78:                              ; preds = %bb.n, %bb.o, %bb.p
  %.val.i.i79 = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i79, 0
  br i1 %i.w, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %lean_inc_ref.exit78
  %i.x = add nuw i32 %.val.i.i79, 1
  store i32 %i.x, ptr %0, align 4, !tbaa !12
  br label %lean_inc_ref.exit81

bb.r:                                             ; preds = %lean_inc_ref.exit78
  %.not.i.i80 = icmp eq i32 %.val.i.i79, 0
  br i1 %.not.i.i80, label %lean_inc_ref.exit81, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit81

lean_inc_ref.exit81:                              ; preds = %bb.q, %bb.r, %bb.s
  %i.z = tail call ptr @l_ImportCompletion_find(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.j)
  %i.aa = ptrtoint ptr %i.j to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i59 = icmp eq i64 %i.ab, 0
  br i1 %.not.i59, label %bb.t, label %lean_dec.exit60

bb.t:                                             ; preds = %lean_inc_ref.exit81
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !12  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.j, align 4, !tbaa !12
  br label %lean_dec.exit60

bb.v:                                             ; preds = %bb.t
  %.not.i64 = icmp eq i32 %i.ac, 0
  br i1 %.not.i64, label %lean_dec.exit60, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #4
  br label %lean_dec.exit60

lean_dec.exit60:                                  ; preds = %bb.w, %bb.v, %bb.u, %lean_inc_ref.exit81
  %i.af = tail call ptr @l_ImportCompletion_addCompletionItemData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.z) ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.x

bb.x:                                             ; preds = %lean_dec.exit60
  tail call void @lean_inc_heartbeat() #4
  %i.ag = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.y, label %lean_dec.exit.sink.split.sink.split

bb.y:                                             ; preds = %bb.x
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.z:                                             ; preds = %lean_obj_tag.exit
  %i.ai = ptrtoint ptr %3 to i64
  %i.aj = and i64 %i.ai, 1
  %.not.i57 = icmp eq i64 %i.aj, 0
  br i1 %.not.i57, label %bb.aa, label %lean_dec.exit58

bb.aa:                                            ; preds = %bb.z
  %i.ak = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.am = add nsw i32 %i.ak, -1
  store i32 %i.am, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit58

bb.ac:                                            ; preds = %bb.aa
  %.not.i66 = icmp eq i32 %i.ak, 0
  br i1 %.not.i66, label %lean_dec.exit58, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit58

lean_dec.exit58:                                  ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %i.an = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %lean_dec.exit58
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit73

bb.af:                                            ; preds = %lean_dec.exit58
  %.not.i72 = icmp eq i32 %i.an, 0
  br i1 %.not.i72, label %lean_dec_ref.exit73, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit73

lean_dec_ref.exit73:                              ; preds = %bb.ae, %bb.af, %bb.ag
  %i.aq = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %lean_dec_ref.exit73
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit71

bb.ai:                                            ; preds = %lean_dec_ref.exit73
  %.not.i70 = icmp eq i32 %i.aq, 0
  br i1 %.not.i70, label %lean_dec_ref.exit71, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit71

lean_dec_ref.exit71:                              ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !12
  %i.av = icmp eq i32 %.val, 1
  br i1 %i.av, label %lean_dec.exit, label %bb.ak

bb.ak:                                            ; preds = %lean_dec_ref.exit71
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = and i64 %i.aw, 1
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %bb.al, label %lean_inc.exit

bb.al:                                            ; preds = %bb.ak
  %.val.i.i82 = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ay = icmp sgt i32 %.val.i.i82, 0
  br i1 %i.ay, label %bb.am, label %bb.an, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.az = add nuw i32 %.val.i.i82, 1
  store i32 %i.az, ptr %i.au, align 4, !tbaa !12
  br label %lean_inc.exit

bb.an:                                            ; preds = %bb.al
  %.not.i.i83 = icmp eq i32 %.val.i.i82, 0
  br i1 %.not.i.i83, label %lean_inc.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ba = atomicrmw add ptr %i.au, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  br i1 %.not.i75, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %lean_inc.exit
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %i.a, align 8, !tbaa !12
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %.not.i68 = icmp eq i32 %i.bb, 0
  br i1 %.not.i68, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %bb.at

bb.at:                                            ; preds = %lean_inc.exit, %bb.aq, %bb.ar, %bb.as
  tail call void @lean_inc_heartbeat() #4
  %i.be = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.au, label %lean_dec.exit.sink.split.sink.split

bb.au:                                            ; preds = %bb.at
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_dec.exit.sink.split.sink.split:              ; preds = %bb.at, %bb.x
  %.sink104 = phi ptr [ %i.ag, %bb.x ], [ %i.be, %bb.at ] ; 3 uses
  %.sink101 = phi i32 [ 65552, %bb.x ], [ 16842768, %bb.at ]
  %.sink.ph = phi ptr [ %i.af, %bb.x ], [ %i.au, %bb.at ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink104, i64 4
  store i32 1, ptr %.sink104, align 4, !tbaa !12
  store i32 %.sink101, ptr %i.bg, align 4
  br label %lean_dec.exit.sink.split

lean_dec.exit.sink.split:                         ; preds = %lean_dec.exit.sink.split.sink.split, %lean_dec.exit60
  %.sink100 = phi ptr [ %.053, %lean_dec.exit60 ], [ %.sink104, %lean_dec.exit.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.af, %lean_dec.exit60 ], [ %.sink.ph, %lean_dec.exit.sink.split.sink.split ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink100, i64 8
  store ptr %.sink, ptr %i.bh, align 8, !tbaa !10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %lean_dec_ref.exit71
  %.2 = phi ptr [ %i.a, %lean_dec_ref.exit71 ], [ %.sink100, %lean_dec.exit.sink.split ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @l_ImportCompletion_computeCompletions___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_ImportCompletion_computeCompletions(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Lean_Server_Completion_ImportCompletion(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_runtime_initialized, align 1
  %i.c = tail call ptr @runtime_initialize_Lean_Util_LakePath(i8 noundef zeroext %0) #4 ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
end_hunk_0
