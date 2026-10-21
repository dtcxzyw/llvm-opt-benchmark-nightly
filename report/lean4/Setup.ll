Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Setup?download=true
inline.NumInlined: 3291
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@l_Lean_instHashableImport_hash:bb.a
  %i.z = icmp eq i8 %i.d, 0
  %phi.call45.in.v = select i1 %i.z, i64 -3388917037165635139, i64 5744223435003130580
  %phi.call45.in = xor i64 %i.y, %phi.call45.in.v
  %phi.call45 = mul i64 %phi.call45.in, -4132994306676758123
  %i.aa = icmp eq i8 %i.f, 0
  %phi.call.in.v = select i1 %i.aa, i64 -3388917037165635139, i64 5744223435003130580
  %phi.call.in = xor i64 %phi.call45, %phi.call.in.v
  %phi.call = mul i64 %phi.call.in, -4132994306676758123
  %i.ab = icmp eq i8 %i.h, 0
  %.0.in.v = select i1 %i.ab, i64 -3388917037165635139, i64 5744223435003130580
  %.0.in = xor i64 %phi.call, %.0.in.v
  %.0 = mul i64 %.0.in, -4132994306676758123
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_init_l_Lean_instHashableImport_hash___closed__0() #1 {
bb.a:
  ret i64 1723
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_instHashableImport_hash___boxed(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i8, ptr %i.g, align 2, !tbaa !14
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i64 %i.i, 1
  %i.l = trunc i64 %i.k to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.b, i64 4
  %.val.i.i = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %i.o = icmp eq i32 %.0.i.i, 0
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %lean_obj_tag.exit.i
  %i.p = load atomic i32, ptr @l_Lean_instHashableImport_hash___closed__0_once seq_cst, align 4, !tbaa !16
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @l_Lean_instHashableImport_hash___closed__0, align 8, !tbaa !18
  br label %l_Lean_instHashableImport_hash.exit

bb.f:                                             ; preds = %bb.d
  %i.s = tail call i64 @lean_uint64_once_cold(ptr noundef nonnull @l_Lean_instHashableImport_hash___closed__0, ptr noundef nonnull @l_Lean_instHashableImport_hash___closed__0_once, ptr noundef nonnull @_init_l_Lean_instHashableImport_hash___closed__0) #8
  br label %l_Lean_instHashableImport_hash.exit

bb.g:                                             ; preds = %lean_obj_tag.exit.i
  %i.t = getelementptr i8, ptr %i.b, i64 24
  %.val.i = load i64, ptr %i.t, align 8, !tbaa !18
  br label %l_Lean_instHashableImport_hash.exit

l_Lean_instHashableImport_hash.exit:              ; preds = %bb.e, %bb.f, %bb.g
  %.038.i = phi i64 [ %.val.i, %bb.g ], [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  %i.u = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %l_Lean_instHashableImport_hash.exit
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.i:                                             ; preds = %l_Lean_instHashableImport_hash.exit
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.h, %bb.i, %bb.j
  tail call void @lean_inc_heartbeat() #8
  %i.x = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.k, label %lean_box_uint64.exit

bb.k:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_box_uint64.exit:                             ; preds = %lean_dec_ref.exit
  %i.z = mul i64 %.038.i, -4132994306676758123    ; 2 uses
  %i.aa = lshr i64 %i.z, 47
  %i.ab = xor i64 %i.z, %i.aa
  %i.ac = xor i64 %i.ab, -4132994306676758123
  %i.ad = mul i64 %i.ac, -4132994306676758123
  %i.ae = icmp eq i8 %i.d, 0
  %phi.call45.in.v.i = select i1 %i.ae, i64 -3388917037165635139, i64 5744223435003130580
  %phi.call45.in.i = xor i64 %i.ad, %phi.call45.in.v.i
  %phi.call45.i = mul i64 %phi.call45.in.i, -4132994306676758123
  %i.af = icmp eq i8 %i.f, 0
  %phi.call.in.v.i = select i1 %i.af, i64 -3388917037165635139, i64 5744223435003130580
  %phi.call.in.i = xor i64 %phi.call45.i, %phi.call.in.v.i
  %phi.call.i = mul i64 %phi.call.in.i, -4132994306676758123
  %i.ag = icmp eq i8 %i.h, 0
  %.0.in.v.i = select i1 %i.ag, i64 -3388917037165635139, i64 5744223435003130580
  %.0.in.i = xor i64 %phi.call.i, %.0.in.v.i
  %.0.i = mul i64 %.0.in.i, -4132994306676758123
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 1, ptr %i.x, align 4, !tbaa !12
  store i32 16, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.0.i, ptr %i.ai, align 8, !tbaa !18
  ret ptr %i.x
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Idbg_idbgClientLoop___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_idbg_client_loop(ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  ret ptr %i.a
}

declare ptr @lean_idbg_client_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_instCoeNameImport___lam__0(ptr noundef %0) #0 {
bb.a:
  tail call void @lean_inc_heartbeat() #8
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 256, ptr %i.d, align 8, !tbaa !18
  store i32 1, ptr %i.a, align 8, !tbaa !12
  store i32 65560, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_instToStringImport___lam__0(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.m = load i8, ptr %i.l, align 2, !tbaa !14
  %i.n = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_inc.exit
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit42

bb.g:                                             ; preds = %lean_inc.exit
  %.not.i41 = icmp eq i32 %i.n, 0
  br i1 %.not.i41, label %lean_dec_ref.exit42, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit42

lean_dec_ref.exit42:                              ; preds = %bb.f, %bb.g, %bb.h
  %1 = icmp eq i8 %i.k, 0
  %l_Lean_instToStringImport___lam__0___closed__1_value.l_Lean_instToStringImport___lam__0___closed__4_value = select i1 %1, ptr @l_Lean_instToStringImport___lam__0___closed__1_value, ptr @l_Lean_instToStringImport___lam__0___closed__4_value ; 3 uses
  %2 = icmp eq i8 %i.m, 0
  %.038 = select i1 %2, ptr @l_Lean_instToStringImport___lam__0___closed__1_value, ptr @l_Lean_instToStringImport___lam__0___closed__3_value
  %.val.i.i43 = load i32, ptr %l_Lean_instToStringImport___lam__0___closed__1_value.l_Lean_instToStringImport___lam__0___closed__4_value, align 8, !tbaa !12 ; 2 uses
  %3 = icmp sgt i32 %.val.i.i43, 0
  br i1 %3, label %lean_inc_ref.exit45, label %4, !prof !13

4:                                                ; preds = %lean_dec_ref.exit42
  %.not.i.i44 = icmp eq i32 %.val.i.i43, 0
  br i1 %.not.i.i44, label %lean_inc_ref.exit45, label %5

5:                                                ; preds = %4
  %6 = atomicrmw add ptr %l_Lean_instToStringImport___lam__0___closed__1_value.l_Lean_instToStringImport___lam__0___closed__4_value, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit45

lean_inc_ref.exit45:                              ; preds = %lean_dec_ref.exit42, %4, %5
  %i.q = tail call ptr @lean_string_append(ptr noundef nonnull %l_Lean_instToStringImport___lam__0___closed__1_value.l_Lean_instToStringImport___lam__0___closed__4_value, ptr noundef nonnull %.038) #8
  %i.r = tail call ptr @lean_string_append(ptr noundef %i.q, ptr noundef nonnull @l_Lean_instToStringImport___lam__0___closed__0_value) #8
  %i.s = icmp eq i8 %i.i, 0
  %.036 = select i1 %i.s, ptr @l_Lean_instToStringImport___lam__0___closed__1_value, ptr @l_Lean_instToStringImport___lam__0___closed__2_value
  %i.t = tail call ptr @lean_string_append(ptr noundef %i.r, ptr noundef nonnull %.036) #8
  %i.u = tail call ptr @l_Lean_Name_toStringWithToken___at___00Lean_Name_toString_spec__0(ptr noundef %i.b, i8 noundef zeroext 1) #8 ; 4 uses
  %i.v = tail call ptr @lean_string_append(ptr noundef %i.t, ptr noundef %i.u) #8
  %i.w = load i32, ptr %i.u, align 4, !tbaa !12   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %lean_inc_ref.exit45
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.u, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.j:                                             ; preds = %lean_inc_ref.exit45
  %.not.i40 = icmp eq i32 %i.w, 0
  br i1 %.not.i40, label %lean_dec_ref.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.i, %bb.j, %bb.k
  ret ptr %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_IRPhases_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_IRPhases_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_IRPhases_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_IRPhases_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_IRPhases_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_IRPhases_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i3 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i3, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.g, %bb.h, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_IRPhases_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %4, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_IRPhases_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i12 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i12, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %bb.f
end_hunk_0
