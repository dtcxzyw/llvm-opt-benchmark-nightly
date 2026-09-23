Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Setup?download=true
inline.NumInlined: 3291
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@l_Lean_instHashableImport_hash___boxed:bb.a
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
define nonnull ptr @l_Lean_instCoeNameImport___lam__0(ptr noundef %0) #0 {
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
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
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
  %i.q = icmp eq i8 %i.k, 0
  %l_Lean_instToStringImport___lam__0___closed__1_value.l_Lean_instToStringImport___lam__0___closed__4_value = select i1 %i.q, ptr @l_Lean_instToStringImport___lam__0___closed__1_value, ptr @l_Lean_instToStringImport___lam__0___closed__4_value ; 3 uses
  %i.r = icmp eq i8 %i.m, 0
  %.038 = select i1 %i.r, ptr @l_Lean_instToStringImport___lam__0___closed__1_value, ptr @l_Lean_instToStringImport___lam__0___closed__3_value
  %.val.i.i43 = load i32, ptr %l_Lean_instToStringImport___lam__0___closed__1_value.l_Lean_instToStringImport___lam__0___closed__4_value, align 8, !tbaa !12 ; 2 uses
  %i.s = icmp sgt i32 %.val.i.i43, 0
  br i1 %i.s, label %lean_inc_ref.exit45, label %bb.i, !prof !13

bb.i:                                             ; preds = %lean_dec_ref.exit42
  %.not.i.i44 = icmp eq i32 %.val.i.i43, 0
  br i1 %.not.i.i44, label %lean_inc_ref.exit45, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = atomicrmw sub ptr %l_Lean_instToStringImport___lam__0___closed__1_value.l_Lean_instToStringImport___lam__0___closed__4_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit45

lean_inc_ref.exit45:                              ; preds = %lean_dec_ref.exit42, %bb.i, %bb.j
  %i.u = tail call ptr @lean_string_append(ptr noundef nonnull %l_Lean_instToStringImport___lam__0___closed__1_value.l_Lean_instToStringImport___lam__0___closed__4_value, ptr noundef nonnull %.038) #8
  %i.v = tail call ptr @lean_string_append(ptr noundef %i.u, ptr noundef nonnull @l_Lean_instToStringImport___lam__0___closed__0_value) #8
  %i.w = icmp eq i8 %i.i, 0
  %.036 = select i1 %i.w, ptr @l_Lean_instToStringImport___lam__0___closed__1_value, ptr @l_Lean_instToStringImport___lam__0___closed__2_value
  %i.x = tail call ptr @lean_string_append(ptr noundef %i.v, ptr noundef nonnull %.036) #8
  %i.y = tail call ptr @l_Lean_Name_toStringWithToken___at___00Lean_Name_toString_spec__0(ptr noundef %i.b, i8 noundef zeroext 1) #8 ; 4 uses
  %i.z = tail call ptr @lean_string_append(ptr noundef %i.x, ptr noundef %i.y) #8
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !12  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %lean_inc_ref.exit45
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.l:                                             ; preds = %lean_inc_ref.exit45
  %.not.i40 = icmp eq i32 %i.aa, 0
  br i1 %.not.i40, label %lean_dec_ref.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.k, %bb.l, %bb.m
  ret ptr %i.z
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
l_Lean_IRPhases_ctorIdx.exit:
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

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
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
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
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
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
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

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
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
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
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

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit11

bb.h:                                             ; preds = %bb.f
  %.not.i.i9 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i9, label %lean_dec.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #8
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.d, %bb.a, %bb.g, %bb.h, %bb.i
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit11
  %i.k = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.k, %bb.l, %bb.m, %lean_dec.exit11
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_IRPhases_runtime_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
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
end_hunk_0
begin_hunk_1_@l_Lean_IRPhases_comptime_elim___boxed:bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

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
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.g, %bb.h, %bb.i
  ret ptr %3
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_IRPhases_all_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
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
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_IRPhases_all_elim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
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
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
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

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_IRPhases_all_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

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
define noundef ptr @l_Lean_IRPhases_all_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i6 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i6, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

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
  br i1 %i.g, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.g, %bb.h, %bb.i
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_instBEqIRPhases_beq(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
lean_dec.exit:
  %switch.selectcmp4.i = icmp eq i8 %0, 0         ; 2 uses
  %switch.selectcmp.i = icmp ne i8 %0, 1
  %switch.selectcmp4.i13 = icmp eq i8 %1, 0
  %i.a = icmp eq i8 %1, 1
  %2 = xor i1 %switch.selectcmp.i, %i.a
  %not.switch.selectcmp4.i = xor i1 %switch.selectcmp4.i, true
  %3 = and i1 %2, %not.switch.selectcmp4.i
  %4 = select i1 %switch.selectcmp4.i13, i1 %switch.selectcmp4.i, i1 %3
  %i.b = zext i1 %4 to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_instBEqIRPhases_beq___boxed(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8                     ; 2 uses
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0     ; 2 uses
  %switch.selectcmp.i.i = icmp ne i8 %i.c, 1
  %switch.selectcmp4.i13.i = icmp eq i8 %i.f, 0
  %switch.selectcmp.i11.i = icmp eq i8 %i.f, 1
  %2 = xor i1 %switch.selectcmp.i.i, %switch.selectcmp.i11.i
  %not.switch.selectcmp4.i.i = xor i1 %switch.selectcmp4.i.i, true
  %3 = and i1 %2, %not.switch.selectcmp4.i.i
  %4 = select i1 %switch.selectcmp4.i13.i, i1 %switch.selectcmp4.i.i, i1 %3
  %5 = select i1 %4, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_instReprIRPhases_repr(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 1
  %.not99 = icmp eq i64 %i.b, 0                   ; 3 uses
  switch i8 %0, label %bb.p [
    i8 0, label %bb.b
    i8 1, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit, label %.split, !prof !20

.split:                                           ; preds = %bb.b
  %.not116 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not116, label %bb.c, label %bb.f

lean_nat_le.exit:                                 ; preds = %bb.b
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #8
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split, %lean_nat_le.exit
  %i.d = load atomic i32, ptr @l_Lean_instReprIRPhases_repr___closed__6_once seq_cst, align 4, !tbaa !16
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @l_Lean_instReprIRPhases_repr___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__6, ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_instReprIRPhases_repr___closed__6) #8
  br label %lean_obj_once.exit

bb.f:                                             ; preds = %.split, %lean_nat_le.exit
  %i.h = load atomic i32, ptr @l_Lean_instReprIRPhases_repr___closed__7_once seq_cst, align 4, !tbaa !16
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @l_Lean_instReprIRPhases_repr___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__7, ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_instReprIRPhases_repr___closed__7) #8
  br label %lean_obj_once.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit69, label %.split106, !prof !20

.split106:                                        ; preds = %bb.i
  %.not = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not, label %bb.j, label %bb.m

lean_nat_le.exit69:                               ; preds = %bb.i
  %i.l = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #8
  br i1 %i.l, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.split106, %lean_nat_le.exit69
  %i.m = load atomic i32, ptr @l_Lean_instReprIRPhases_repr___closed__6_once seq_cst, align 4, !tbaa !16
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr @l_Lean_instReprIRPhases_repr___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit78

bb.l:                                             ; preds = %bb.j
  %i.p = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__6, ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_instReprIRPhases_repr___closed__6) #8
  br label %lean_obj_once.exit78

bb.m:                                             ; preds = %.split106, %lean_nat_le.exit69
  %i.q = load atomic i32, ptr @l_Lean_instReprIRPhases_repr___closed__7_once seq_cst, align 4, !tbaa !16
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.s = load ptr, ptr @l_Lean_instReprIRPhases_repr___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit78

bb.o:                                             ; preds = %bb.m
  %i.t = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__7, ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_instReprIRPhases_repr___closed__7) #8
  br label %lean_obj_once.exit78

bb.p:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit73, label %.split107, !prof !20

.split107:                                        ; preds = %bb.p
  %.not117 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not117, label %bb.q, label %bb.t

lean_nat_le.exit73:                               ; preds = %bb.p
  %i.u = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #8
  br i1 %i.u, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.split107, %lean_nat_le.exit73
  %i.v = load atomic i32, ptr @l_Lean_instReprIRPhases_repr___closed__6_once seq_cst, align 4, !tbaa !16
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.x = load ptr, ptr @l_Lean_instReprIRPhases_repr___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit82

bb.s:                                             ; preds = %bb.q
  %i.y = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__6, ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_instReprIRPhases_repr___closed__6) #8
  br label %lean_obj_once.exit82

bb.t:                                             ; preds = %.split107, %lean_nat_le.exit73
  %i.z = load atomic i32, ptr @l_Lean_instReprIRPhases_repr___closed__7_once seq_cst, align 4, !tbaa !16
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.ab = load ptr, ptr @l_Lean_instReprIRPhases_repr___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit82

bb.v:                                             ; preds = %bb.t
  %i.ac = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__7, ptr noundef nonnull @l_Lean_instReprIRPhases_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_instReprIRPhases_repr___closed__7) #8
  br label %lean_obj_once.exit82

lean_obj_once.exit:                               ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.057 = phi ptr [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.j, %bb.g ], [ %i.k, %bb.h ] ; 5 uses
  %i.ad = ptrtoint ptr %.057 to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i63 = icmp eq i64 %i.ae, 0
  br i1 %.not.i63, label %bb.w, label %lean_inc.exit64

bb.w:                                             ; preds = %lean_obj_once.exit
  %.val.i.i = load i32, ptr %.057, align 4, !tbaa !12 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i, 0
  br i1 %i.af, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.ag = add nuw i32 %.val.i.i, 1
  store i32 %i.ag, ptr %.057, align 4, !tbaa !12
  br label %lean_inc.exit64

bb.y:                                             ; preds = %bb.w
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit64, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ah = atomicrmw sub ptr %.057, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit64

lean_inc.exit64:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #8
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.aa, label %lean_alloc_ctor.exit

bb.aa:                                            ; preds = %lean_inc.exit64
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !12
  store i32 67239960, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.057, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr @l_Lean_instReprIRPhases_repr___closed__1_value, ptr %i.am, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.an = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.ab, label %lean_alloc_ctor.exit85

bb.ab:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_obj_once.exit78:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.058 = phi ptr [ %i.p, %bb.l ], [ %i.o, %bb.k ], [ %i.s, %bb.n ], [ %i.t, %bb.o ] ; 5 uses
  %i.ap = ptrtoint ptr %.058 to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i61 = icmp eq i64 %i.aq, 0
  br i1 %.not.i61, label %bb.ac, label %lean_inc.exit62

bb.ac:                                            ; preds = %lean_obj_once.exit78
  %.val.i.i86 = load i32, ptr %.058, align 4, !tbaa !12 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i86, 0
  br i1 %i.ar, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.as = add nuw i32 %.val.i.i86, 1
  store i32 %i.as, ptr %.058, align 4, !tbaa !12
  br label %lean_inc.exit62

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i87 = icmp eq i32 %.val.i.i86, 0
  br i1 %.not.i.i87, label %lean_inc.exit62, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = atomicrmw sub ptr %.058, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit62
end_hunk_1
