Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/DocString?download=true
inline.NumInlined: 20346
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumUnrolled: 134
begin_hunk_0_@l_Lean_Doc_SuggestionMode_interactive_elim___boxed:bb.a
bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Doc_SuggestionMode_batch_elim___redArg(ptr noundef returned %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Doc_SuggestionMode_batch_elim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Doc_SuggestionMode_batch_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Doc_SuggestionMode_batch_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext range(i8 0, 2) i8 @l_Lean_Doc_instBEqSuggestionMode_beq(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
lean_dec.exit:
  %i.a = icmp ne i8 %0, 0
  %i.b = icmp eq i8 %1, 0
  %i.c = xor i1 %i.a, %i.b
  %i.d = zext i1 %i.c to i8
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Doc_instBEqSuggestionMode_beq___boxed(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.a, 510
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i64 %i.b, 510
  %i.f = icmp eq i64 %i.e, 0
  %i.g = xor i1 %i.d, %i.f
  %i.h = select i1 %i.g, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Doc_instReprSuggestionMode_repr(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %0, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not62 = icmp eq i64 %i.c, 0                   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %.not62, label %lean_nat_le.exit, label %.split, !prof !17

.split:                                           ; preds = %bb.b
  %.not76 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not76, label %bb.c, label %bb.f

lean_nat_le.exit:                                 ; preds = %bb.b
  %i.d = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #9
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split, %lean_nat_le.exit
  %i.e = load atomic i32, ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__4_once seq_cst, align 4, !tbaa !19
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Doc_instReprSuggestionMode_repr___closed__4, ptr noundef nonnull @l_Lean_Doc_instReprSuggestionMode_repr___closed__4_once, ptr noundef nonnull @_init_l_Lean_Doc_instReprSuggestionMode_repr___closed__4) #9
  br label %lean_obj_once.exit

bb.f:                                             ; preds = %.split, %lean_nat_le.exit
  %i.i = load atomic i32, ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__5_once seq_cst, align 4, !tbaa !19
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.h:                                             ; preds = %bb.f
  %i.l = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Doc_instReprSuggestionMode_repr___closed__5, ptr noundef nonnull @l_Lean_Doc_instReprSuggestionMode_repr___closed__5_once, ptr noundef nonnull @_init_l_Lean_Doc_instReprSuggestionMode_repr___closed__5) #9
  br label %lean_obj_once.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.not62, label %lean_nat_le.exit47, label %.split67, !prof !17

.split67:                                         ; preds = %bb.i
  %.not = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not, label %bb.j, label %bb.m

lean_nat_le.exit47:                               ; preds = %bb.i
  %i.m = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #9
  br i1 %i.m, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.split67, %lean_nat_le.exit47
  %i.n = load atomic i32, ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__4_once seq_cst, align 4, !tbaa !19
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit52

bb.l:                                             ; preds = %bb.j
  %i.q = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Doc_instReprSuggestionMode_repr___closed__4, ptr noundef nonnull @l_Lean_Doc_instReprSuggestionMode_repr___closed__4_once, ptr noundef nonnull @_init_l_Lean_Doc_instReprSuggestionMode_repr___closed__4) #9
  br label %lean_obj_once.exit52

bb.m:                                             ; preds = %.split67, %lean_nat_le.exit47
  %i.r = load atomic i32, ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__5_once seq_cst, align 4, !tbaa !19
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.t = load ptr, ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit52

bb.o:                                             ; preds = %bb.m
  %i.u = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Doc_instReprSuggestionMode_repr___closed__5, ptr noundef nonnull @l_Lean_Doc_instReprSuggestionMode_repr___closed__5_once, ptr noundef nonnull @_init_l_Lean_Doc_instReprSuggestionMode_repr___closed__5) #9
  br label %lean_obj_once.exit52

lean_obj_once.exit:                               ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.038 = phi ptr [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.k, %bb.g ], [ %i.l, %bb.h ] ; 5 uses
  %i.v = ptrtoint ptr %.038 to i64
  %i.w = and i64 %i.v, 1
  %.not.i41 = icmp eq i64 %i.w, 0
  br i1 %.not.i41, label %bb.p, label %lean_inc.exit42

bb.p:                                             ; preds = %lean_obj_once.exit
  %.val.i.i = load i32, ptr %.038, align 4, !tbaa !12 ; 3 uses
  %i.x = icmp sgt i32 %.val.i.i, 0
  br i1 %i.x, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.y = add nuw i32 %.val.i.i, 1
  store i32 %i.y, ptr %.038, align 4, !tbaa !12
  br label %lean_inc.exit42

bb.r:                                             ; preds = %bb.p
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit42, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = atomicrmw sub ptr %.038, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit42

lean_inc.exit42:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #9
  %i.aa = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.t, label %lean_alloc_ctor.exit

bb.t:                                             ; preds = %lean_inc.exit42
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 1, ptr %i.aa, align 4, !tbaa !12
  store i32 67239960, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.038, ptr %i.ad, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__1_value, ptr %i.ae, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #9
  %i.af = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.u, label %lean_alloc_ctor.exit55

bb.u:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_obj_once.exit52:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.039 = phi ptr [ %i.q, %bb.l ], [ %i.p, %bb.k ], [ %i.t, %bb.n ], [ %i.u, %bb.o ] ; 5 uses
  %i.ah = ptrtoint ptr %.039 to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.v, label %lean_inc.exit

bb.v:                                             ; preds = %lean_obj_once.exit52
  %.val.i.i56 = load i32, ptr %.039, align 4, !tbaa !12 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i56, 0
  br i1 %i.aj, label %bb.w, label %bb.x, !prof !15

bb.w:                                             ; preds = %bb.v
  %i.ak = add nuw i32 %.val.i.i56, 1
  store i32 %i.ak, ptr %.039, align 4, !tbaa !12
  br label %lean_inc.exit

bb.x:                                             ; preds = %bb.v
  %.not.i.i57 = icmp eq i32 %.val.i.i56, 0
  br i1 %.not.i.i57, label %lean_inc.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.al = atomicrmw sub ptr %.039, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.y, %bb.x, %bb.w, %lean_obj_once.exit52
  tail call void @lean_inc_heartbeat() #9
  %i.am = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 6 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.z, label %lean_alloc_ctor.exit59

bb.z:                                             ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit59:                           ; preds = %lean_inc.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 1, ptr %i.am, align 4, !tbaa !12
  store i32 67239960, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.039, ptr %i.ap, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr @l_Lean_Doc_instReprSuggestionMode_repr___closed__3_value, ptr %i.aq, align 8, !tbaa !10
end_hunk_0
