Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/UnusedVariables?download=true
inline.NumInlined: 4077
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__1_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2_:bb.a
  br i1 %.not.i328, label %lean_dec_ref.exit329, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec_ref.exit329

lean_dec_ref.exit329:                             ; preds = %bb.io, %bb.ip, %bb.iq
  %i.lw = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.lx = icmp sgt i32 %i.lw, 1
  br i1 %i.lx, label %bb.ir, label %bb.is, !prof !17

bb.ir:                                            ; preds = %lean_dec_ref.exit329
  %i.ly = add nsw i32 %i.lw, -1
  store i32 %i.ly, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit327

bb.is:                                            ; preds = %lean_dec_ref.exit329
  %.not.i326 = icmp eq i32 %i.lw, 0
  br i1 %.not.i326, label %lean_dec_ref.exit327, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit327

lean_dec_ref.exit327:                             ; preds = %bb.ir, %bb.is, %bb.it
  %i.lz = ptrtoint ptr %1 to i64
  %i.ma = and i64 %i.lz, 1
  %.not.i232 = icmp eq i64 %i.ma, 0
  br i1 %.not.i232, label %bb.iu, label %.thread

bb.iu:                                            ; preds = %lean_dec_ref.exit327
  %i.mb = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.iv, label %bb.iw, !prof !17

bb.iv:                                            ; preds = %bb.iu
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %1, align 4, !tbaa !11
  br label %.thread

bb.iw:                                            ; preds = %bb.iu
  %.not.i324 = icmp eq i32 %i.mb, 0
  br i1 %.not.i324, label %.thread, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %.thread

.thread:                                          ; preds = %lean_dec_ref.exit327, %bb.iv, %bb.iw, %bb.ix
  %i.me = tail call ptr @l_Lean_throwAttrMustBeGlobal___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__4___redArg(ptr noundef %4, i8 noundef zeroext %7, ptr noundef %8, ptr noundef %9)
  br label %lean_dec.exit268

lean_dec.exit268:                                 ; preds = %bb.ay, %bb.ax, %bb.aw, %lean_dec_ref.exit349, %.thread, %lean_dec.exit248, %lean_alloc_ctor.exit445, %lean_dec.exit238, %lean_dec_ref.exit345, %bb.bp, %bb.bq, %bb.br, %lean_inc.exit219, %bb.eq, %bb.ep, %lean_dec.exit264
  %.9 = phi ptr [ %i.lj, %lean_alloc_ctor.exit445 ], [ %i.a, %lean_dec_ref.exit345 ], [ %i.me, %.thread ], [ %i.ad, %bb.ay ], [ %i.hr, %lean_inc.exit219 ], [ %i.fi, %lean_dec.exit264 ], [ %.0213, %bb.ep ], [ %i.gy, %bb.eq ], [ %i.a, %bb.br ], [ %i.a, %bb.bq ], [ %i.a, %bb.bp ], [ %i.hv, %lean_dec.exit238 ], [ %i.jr, %lean_dec.exit248 ], [ %i.ad, %lean_dec_ref.exit349 ], [ %i.ad, %bb.aw ], [ %i.ad, %bb.ax ]
  ret ptr %.9
}

declare ptr @l_Lean_Attribute_Builtin_ensureNoArgs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_ensureAttrDeclIsMeta(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_PersistentEnvExtension_addEntry___redArg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_io_error_to_string(ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_mkConst(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Name_mkStr3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Expr_app___override(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_declareBuiltin(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @l_Lean_instBEqAttributeKind_beq(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__1_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2____boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree readnone captures(none) %10) #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %7 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = tail call ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__1_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2_(i8 noundef zeroext %i.c, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %i.f, ptr noundef %8, ptr noundef %9)
  %i.h = ptrtoint ptr %9 to i64
  %i.i = and i64 %i.h, 1
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %9, align 4, !tbaa !11     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %9, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i14 = icmp eq i32 %i.j, 0
  br i1 %.not.i14, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = load i32, ptr %8, align 4, !tbaa !11     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %lean_dec.exit
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %8, align 4, !tbaa !11
  br label %lean_dec_ref.exit16

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.m, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #10
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2_(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc_n.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 2
  store i32 %i.d, ptr %1, align 4, !tbaa !11
  br label %lean_inc_n.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_n.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %1, i32 -2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.f = tail call ptr @lean_alloc_object(i64 noundef 32) #10 ; 7 uses
  store i32 1, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 65535
  %i.j = or disjoint i32 %i.i, -184549376
  store i32 %i.j, ptr %i.g, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__0_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2____boxed, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i16 5, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  store i16 1, ptr %i.m, align 2, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %1, ptr %i.n, align 8, !tbaa !15
  %i.o = zext i8 %0 to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call ptr @lean_alloc_object(i64 noundef 64) #10 ; 11 uses
  store i32 1, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 65535
  %i.w = or disjoint i32 %i.v, -184549376
  store i32 %i.w, ptr %i.t, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__1_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2____boxed, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i16 11, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  store i16 5, ptr %i.z, align 2, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___closed__5_00___x40_Lean_Linter_UnusedVariables_745145867____hygCtx___hyg_4__value, ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___closed__6_00___x40_Lean_Linter_UnusedVariables_745145867____hygCtx___hyg_4__value, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr %1, ptr %i.ae, align 8, !tbaa !15
  %i.af = icmp eq i8 %0, 0
  %l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__23_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value.l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__24_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value = select i1 %i.af, ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__23_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value, ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__24_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value ; 3 uses
  %.val.i.i40 = load i32, ptr %l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__23_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value.l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__24_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value, align 8, !tbaa !11 ; 2 uses
  %2 = icmp sgt i32 %.val.i.i40, 0
  br i1 %2, label %lean_inc_ref.exit, label %3, !prof !17

3:                                                ; preds = %lean_inc_n.exit
  %.not.i.i41 = icmp eq i32 %.val.i.i40, 0
  br i1 %.not.i.i41, label %lean_inc_ref.exit, label %4

4:                                                ; preds = %3
  %5 = atomicrmw add ptr %l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__23_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value.l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__24_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %lean_inc_n.exit, %3, %4
  %6 = tail call ptr @lean_string_append(ptr noundef nonnull %l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__23_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value.l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__24_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__22_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value) #10
  tail call void @lean_inc_heartbeat() #10
  %7 = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #10 ; 8 uses
  %8 = icmp eq ptr %7, null
  br i1 %8, label %bb.f, label %lean_alloc_ctor.exit

bb.f:                                             ; preds = %lean_inc_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.ah, align 8, !tbaa !13
  store i32 1, ptr %7, align 8, !tbaa !11
  store i32 196648, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2___closed__21_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.ak, align 8, !tbaa !15
  tail call void @lean_inc_heartbeat() #10
  %i.al = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #10 ; 7 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.g, label %lean_alloc_ctor.exit42

bb.g:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit42:                           ; preds = %lean_alloc_ctor.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !11
  store i32 196640, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %7, ptr %i.ao, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.s, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.f, ptr %i.aq, align 8, !tbaa !15
  %i.ar = tail call ptr @l_Lean_registerBuiltinAttribute(ptr noundef nonnull %i.al) #10
  ret ptr %i.ar
}

declare ptr @l_Lean_registerBuiltinAttribute(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2____boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2_(i8 noundef zeroext %i.c, ptr noundef %1)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2_() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2_(i8 noundef zeroext 1, ptr noundef nonnull @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___closed__1_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value) ; 8 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

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
  br i1 %i.h, label %bb.d, label %bb.m

bb.d:                                             ; preds = %lean_obj_tag.exit
  %.val.i8 = load i32, ptr %i.a, align 4, !tbaa !11 ; 4 uses
  %i.i = icmp eq i32 %.val.i8, 1
  br i1 %i.i, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 1
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %lean_dec.exit.i

bb.e:                                             ; preds = %.preheader.i
  %i.n = load i32, ptr %i.k, align 4, !tbaa !11   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i7.i = icmp eq i32 %i.n, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #10
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.h, %bb.g, %bb.f, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #10
  br label %lean_dec_ref_known.exit

bb.i:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %.val.i8, 1
  br i1 %i.q, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %.val.i8, -1
  store i32 %i.r, ptr %i.a, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %bb.i
  %.not.i8.i = icmp eq i32 %.val.i8, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #10
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.j, %bb.k, %bb.l
  %i.s = tail call ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___lam__2_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2_(i8 noundef zeroext 0, ptr noundef nonnull @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn___closed__3_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__value)
  br label %bb.m

bb.m:                                             ; preds = %lean_obj_tag.exit, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.s, %lean_dec_ref_known.exit ], [ %i.a, %lean_obj_tag.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2____boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2_()
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwError___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__0(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_throwError___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__0___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwError___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__0___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_throwError___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__0___redArg(ptr noundef %1, ptr noundef readonly %2, ptr noundef %3)
  %i.b = ptrtoint ptr %3 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %lean_dec.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit9

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwAttrDeclNotOfExpectedType___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__3(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_throwAttrDeclNotOfExpectedType___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__3___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwAttrDeclNotOfExpectedType___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__3___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_throwAttrDeclNotOfExpectedType___at___00__private_Lean_Linter_UnusedVariables_0__Lean_Linter_initFn_00___x40_Lean_Linter_UnusedVariables_1088826556____hygCtx___hyg_2__spec__3___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, ptr noundef %6)
  %i.b = ptrtoint ptr %6 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %6, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i10 = icmp eq i32 %i.d, 0
  br i1 %.not.i10, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
