Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Syntax?download=true
inline.NumInlined: 5737
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@l_Lean_Elab_Command_elabDeclareSyntaxCat:bb.a
  %.7 = phi ptr [ %i.mv, %lean_dec.exit642 ], [ %i.bs, %lean_alloc_ctor.exit780 ], [ %i.mv, %bb.ek ], [ %i.mv, %bb.ej ], [ %i.mv, %bb.ei ], [ %i.ov, %lean_dec.exit624 ], [ %.0503, %bb.mp ], [ %i.vf, %lean_alloc_ctor.exit956 ], [ %i.nx, %lean_dec.exit614 ], [ %i.sc, %lean_alloc_ctor.exit943 ], [ %i.th, %lean_alloc_ctor.exit947 ]
  ret ptr %.7
}

declare ptr @l_Lean_Syntax_getOptional_x3f(ptr noundef) local_unnamed_addr #2

declare ptr @l_Array_append___redArg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Elab_Command_elabDeclareSyntaxCat___closed__1() #1 {
bb.a:
  %i.a = tail call ptr @l_String_toRawSubstring_x27(ptr noundef nonnull @l_Lean_Elab_Command_elabDeclareSyntaxCat___closed__0_value) #7
  ret ptr %i.a
}

declare ptr @l_Lean_Syntax_node6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Array_mkArray1___redArg(ptr noundef) local_unnamed_addr #2

declare ptr @lean_name_append_after(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Parser_registerParserCategory(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Command_elabDeclareSyntaxCat___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Command_elabDeclareSyntaxCat(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = and i64 %i.b, 1
  %.not.i7 = icmp eq i64 %i.c, 0
  br i1 %.not.i7, label %bb.b, label %lean_dec.exit8

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit8

bb.d:                                             ; preds = %bb.b
  %.not.i9 = icmp eq i32 %i.d, 0
  br i1 %.not.i9, label %lean_dec.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit8

lean_dec.exit8:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %lean_dec.exit8
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit13

bb.g:                                             ; preds = %lean_dec.exit8
  %.not.i12 = icmp eq i32 %i.g, 0
  br i1 %.not.i12, label %lean_dec_ref.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit13

lean_dec_ref.exit13:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %0 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit13
  %i.l = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i10 = icmp eq i32 %i.l, 0
  br i1 %.not.i10, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit13
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat__1() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @l_Lean_Elab_Command_commandElabAttribute, align 8, !tbaa !15
  %i.b = tail call ptr @lean_alloc_object(i64 noundef 24) #7 ; 6 uses
  store i32 1, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = or disjoint i32 %i.e, -184549376
  store i32 %i.f, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_Lean_Elab_Command_elabDeclareSyntaxCat___boxed, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 4, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 0, ptr %i.i, align 2, !tbaa !27
  %i.j = tail call ptr @l_Lean_KeyedDeclsAttribute_addBuiltin___redArg(ptr noundef %i.a, ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat__1___closed__1_value, ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat__1___closed__3_value, ptr noundef nonnull %i.b) #7
  ret ptr %i.j
}

declare ptr @l_Lean_KeyedDeclsAttribute_addBuiltin___redArg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat__1___boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @l_Lean_Elab_Command_commandElabAttribute, align 8, !tbaa !15
  %i.b = tail call ptr @lean_alloc_object(i64 noundef 24) #7 ; 6 uses
  store i32 1, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = or disjoint i32 %i.e, -184549376
  store i32 %i.f, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_Lean_Elab_Command_elabDeclareSyntaxCat___boxed, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 4, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 0, ptr %i.i, align 2, !tbaa !27
  %i.j = tail call ptr @l_Lean_KeyedDeclsAttribute_addBuiltin___redArg(ptr noundef %i.a, ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat__1___closed__1_value, ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat__1___closed__3_value, ptr noundef nonnull %i.b) #7
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat_declRange__3() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_addBuiltinDeclarationRanges(ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat__1___closed__3_value, ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat_declRange__3___closed__6_value) #7
  ret ptr %i.a
}

declare ptr @l_Lean_addBuiltinDeclarationRanges(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat_declRange__3___boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_addBuiltinDeclarationRanges(ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat__1___closed__3_value, ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_elabDeclareSyntaxCat___regBuiltin_Lean_Elab_Command_elabDeclareSyntaxCat_declRange__3___closed__6_value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_String_mapAux___at___00__private_Lean_Elab_Syntax_0__Lean_Elab_Command_mkNameFromParserSyntax_visit_spec__1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  br label %lean_dec.exit55.a

lean_dec.exit55.a:                                ; preds = %lean_dec.exit55.backedge, %bb.a
  %.044 = phi ptr [ %1, %bb.a ], [ %.044.be, %lean_dec.exit55.backedge ] ; 15 uses
  %.042 = phi ptr [ %0, %bb.a ], [ %i.v, %lean_dec.exit55.backedge ] ; 4 uses
  %i.a = getelementptr i8, ptr %.042, i64 8       ; 2 uses
  %.042.val = load i64, ptr %i.a, align 8, !tbaa !12
  %i.b = shl i64 %.042.val, 1
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = ptrtoint ptr %.044 to i64                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i62.a = icmp eq i64 %i.f, 0               ; 4 uses
  br i1 %.not.i62.a, label %lean_nat_eq.exit, label %lean_nat_eq.exit.thread, !prof !9

lean_nat_eq.exit:                                 ; preds = %lean_dec.exit55.a
  %i.g = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.044, ptr noundef nonnull %i.d) #7
  br i1 %i.g, label %bb.e, label %bb.b

lean_nat_eq.exit.thread:                          ; preds = %lean_dec.exit55.a
  %.not = icmp eq ptr %.044, %i.d
  br i1 %.not, label %.thread70, label %bb.b

bb.b:                                             ; preds = %lean_nat_eq.exit.thread, %lean_nat_eq.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %i.i = lshr i64 %i.e, 1                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20    ; 3 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.k to i32
  br label %lean_string_utf8_get_fast.exit

bb.d:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !12
  %i.n = tail call i32 @lean_string_utf8_get_fast_cold(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef %.val.i, i8 noundef zeroext %i.k) #7
  br label %lean_string_utf8_get_fast.exit

lean_string_utf8_get_fast.exit:                   ; preds = %bb.c, %bb.d
  %.0.i65 = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  %.0.i65.fr = freeze i32 %.0.i65                 ; 2 uses
  %switch.tableidx = add i32 %.0.i65.fr, -9       ; 2 uses
  %i.o = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388627, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.o, i1 %switch.lobit, i1 false
  %.046 = select i1 %or.cond, i32 95, i32 %.0.i65.fr ; 2 uses
  br i1 %.not.i62.a, label %bb.i, label %lean_inc.exit

bb.e:                                             ; preds = %lean_nat_eq.exit
  %i.p = load i32, ptr %.044, align 4, !tbaa !10  ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %.044, align 4, !tbaa !10
  br label %.thread70

bb.g:                                             ; preds = %bb.e
  %.not.i57 = icmp eq i32 %i.p, 0
  br i1 %.not.i57, label %.thread70, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.044) #7
  br label %.thread70

bb.i:                                             ; preds = %lean_string_utf8_get_fast.exit
  %.val.i.i = load i32, ptr %.044, align 4, !tbaa !10 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i, 0
  br i1 %i.s, label %bb.j, label %bb.k, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.t = add nuw i32 %.val.i.i, 1
  store i32 %i.t, ptr %.044, align 4, !tbaa !10
  br label %lean_inc.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = atomicrmw sub ptr %.044, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_string_utf8_get_fast.exit
  %i.v = tail call ptr @lean_string_utf8_set(ptr noundef nonnull %.042, ptr noundef %.044, i32 noundef %.046) #7
  %i.w = tail call ptr @l_Char_utf8Size(i32 noundef %.046) #7 ; 6 uses
  %.pre89 = ptrtoint ptr %i.w to i64              ; 2 uses
  %.pre = and i64 %.pre89, 1
  %i.x = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i62.a, label %lean_nat_add.exit, label %bb.m, !prof !9

bb.m:                                             ; preds = %lean_inc.exit
  br i1 %i.x, label %lean_nat_add.exit.thread103, label %bb.n, !prof !9

lean_nat_add.exit.thread103:                      ; preds = %bb.m
  %i.y = tail call ptr @lean_nat_big_add(ptr noundef %.044, ptr noundef %i.w) #7
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.z = lshr i64 %.pre89, 1
  %i.aa = add nuw i64 %i.z, %i.i                  ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %bb.o, label %bb.p, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.ac = shl nuw i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, 1
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %lean_dec.exit55.backedge

bb.p:                                             ; preds = %bb.n
  %i.af = tail call ptr @lean_big_usize_to_nat(i64 noundef %i.aa) #7
  br label %lean_dec.exit55.backedge

lean_dec.exit55.backedge:                         ; preds = %bb.p, %bb.o, %lean_dec.exit53, %bb.u, %bb.v, %bb.w
  %.044.be = phi ptr [ %i.ah, %lean_dec.exit53 ], [ %.0.i102107, %bb.u ], [ %.0.i102107, %bb.v ], [ %.0.i102107, %bb.w ], [ %i.ae, %bb.o ], [ %i.af, %bb.p ]
  br label %lean_dec.exit55.a

lean_nat_add.exit:                                ; preds = %lean_inc.exit
  %i.ag = tail call ptr @lean_nat_big_add(ptr noundef %.044, ptr noundef %i.w) #7 ; 2 uses
  br i1 %i.x, label %bb.q, label %lean_dec.exit53.thread

bb.q:                                             ; preds = %lean_nat_add.exit.thread103, %lean_nat_add.exit
  %i.ah = phi ptr [ %i.y, %lean_nat_add.exit.thread103 ], [ %i.ag, %lean_nat_add.exit ] ; 2 uses
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !10  ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.w, align 4, !tbaa !10
  br label %lean_dec.exit53

bb.s:                                             ; preds = %bb.q
  %.not.i58 = icmp eq i32 %i.ai, 0
  br i1 %.not.i58, label %lean_dec.exit53, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #7
  br label %lean_dec.exit53

lean_dec.exit53:                                  ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i62.a, label %lean_dec.exit53.thread, label %lean_dec.exit55.backedge

lean_dec.exit53.thread:                           ; preds = %lean_nat_add.exit, %lean_dec.exit53
  %.0.i102107 = phi ptr [ %i.ah, %lean_dec.exit53 ], [ %i.ag, %lean_nat_add.exit ] ; 3 uses
  %i.al = load i32, ptr %.044, align 4, !tbaa !10 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %lean_dec.exit53.thread
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %.044, align 4, !tbaa !10
  br label %lean_dec.exit55.backedge

bb.v:                                             ; preds = %lean_dec.exit53.thread
  %.not.i60 = icmp eq i32 %i.al, 0
  br i1 %.not.i60, label %lean_dec.exit55.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.044) #7
  br label %lean_dec.exit55.backedge

.thread70:                                        ; preds = %lean_nat_eq.exit.thread, %bb.h, %bb.g, %bb.f
  ret ptr %.042
}

declare ptr @lean_string_utf8_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @l_Char_utf8Size(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_mkNameFromParserSyntax_visit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Syntax_0__Lean_Elab_Command_mkNameFromParserSyntax_visit_spec__0.exit, %bb.a
  %.0107 = phi ptr [ %0, %bb.a ], [ %i.df, %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Syntax_0__Lean_Elab_Command_mkNameFromParserSyntax_visit_spec__0.exit ] ; 5 uses
  %i.a = tail call ptr @l_Lean_Syntax_isStrLit_x3f(ptr noundef %.0107) #7 ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i148 = icmp eq i64 %i.c, 0
  br i1 %.not.i148, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.c, %bb.d
  %.0.i149 = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i149, 0
  br i1 %i.h, label %bb.e, label %bb.l

bb.e:                                             ; preds = %lean_obj_tag.exit
  %i.i = ptrtoint ptr %.0107 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i150 = icmp eq i64 %i.j, 0
  br i1 %.not.i150, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i64 %i.i, 1
  %i.l = trunc i64 %i.k to i32
  br label %lean_obj_tag.exit153

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %.0107, i64 4
  %.val.i152 = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.val.i152, 24
  br label %lean_obj_tag.exit153

lean_obj_tag.exit153:                             ; preds = %bb.f, %bb.g
  %.0.i151 = phi i32 [ %i.l, %bb.f ], [ %i.n, %bb.g ]
  %cond = icmp eq i32 %.0.i151, 1
  br i1 %cond, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %lean_obj_tag.exit153
  %i.o = getelementptr inbounds nuw i8, ptr %.0107, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0107, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 3 uses
  %i.s = tail call zeroext i8 @lean_name_eq(ptr noundef %i.p, ptr noundef nonnull @l_Lean_Elab_Term_checkLeftRec___closed__2_value) #7
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call zeroext i8 @lean_name_eq(ptr noundef %i.p, ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Term_toParserDescr_process___closed__10_value) #7
  %i.v = icmp eq i8 %i.u, 0
  %.phi.trans.insert = getelementptr i8, ptr %i.r, i64 8
  %.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !12 ; 2 uses
  %i.w = and i64 %.val.pre, 9223372036854775806
  %.not = icmp eq i64 %i.w, 0
  %or.cond = select i1 %i.v, i1 true, i1 %.not
  br i1 %or.cond, label %lean_nat_lt.exit142, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Syntax_0__Lean_Elab_Command_mkNameFromParserSyntax_visit_spec__0.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_string_append(ptr noundef %1, ptr noundef nonnull @l___private_Lean_Elab_Syntax_0__Lean_Elab_Command_mkNameFromParserSyntax_visit___closed__0_value) #7
  br label %.loopexit

end_hunk_0
