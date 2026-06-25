inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_call_method_missing_body:bb.a
  %i.bm = and i8 %i.bl, 15
  %i.bn = icmp eq i8 %i.bm, 7
  br i1 %i.bn, label %bb.w, label %rb_callable_method_entry_without_refinements.exit

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br label %rb_callable_method_entry_without_refinements.exit

search_method_protect.exit.thread.fold.split.i.i: ; preds = %bb.s
  br label %rb_callable_method_entry_without_refinements.exit

rb_callable_method_entry_without_refinements.exit: ; preds = %rb_class_of.exit, %bb.r, %bb.s, %bb.v, %bb.w, %search_method_protect.exit.thread.fold.split.i.i
  %.1.i.i = phi ptr [ null, %bb.w ], [ %i.bi, %bb.v ], [ null, %bb.s ], [ null, %rb_class_of.exit ], [ null, %bb.r ], [ %i.bd, %search_method_protect.exit.thread.fold.split.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !11
  %i.bq = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.bp, i64 noundef 2913, ptr noundef %.1.i.i, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !187
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @vm_call_general, ptr %i.br, align 8, !tbaa !234
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %i.bs, align 8, !tbaa !443
  %i.bt = getelementptr i8, ptr %2, i64 8
  store ptr %7, ptr %i.bt, align 8, !tbaa !233
  %i.bu = call fastcc i64 @vm_call_method(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i64 %i.bu
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @vm_raise_method_missing(ptr noundef initializes((136, 144)) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef range(i32 0, 32) %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  store i64 0, ptr %i.a, align 8, !tbaa !441
  %i.b = or disjoint i32 %4, 32
  tail call fastcc void @raise_method_missing(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %i.b) #58
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @raise_method_missing(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !11 ; 4 uses
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.161) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !11     ; 5 uses
  %i.e = and i64 %i.d, 255
  %i.f = icmp eq i64 %i.e, 12
  br i1 %i.f, label %RB_SYMBOL_P.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %i.d, 0
  %i.h = and i64 %i.d, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %RB_SYMBOL_P.exit.thread23, label %RB_SYMBOL_P.exit, !prof !353

RB_SYMBOL_P.exit:                                 ; preds = %bb.d
  %i.k = inttoptr i64 %i.d to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 20
  br i1 %i.n, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread23, !prof !823

RB_SYMBOL_P.exit.thread23:                        ; preds = %bb.d, %RB_SYMBOL_P.exit
  %i.o = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  %i.p = tail call i64 @rb_obj_class(i64 noundef %i.d) #23
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.165, i64 noundef %i.p) #42
  unreachable

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.c, %RB_SYMBOL_P.exit
  %i.q = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !63
  %i.s = and i8 %i.r, 2
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %bb.e, label %stack_check.exit

bb.e:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.t = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.q, align 8, !tbaa !63
  %i.v = or i8 %i.u, 2
  store i8 %i.v, ptr %i.q, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %RB_SYMBOL_P.exit.thread, %bb.e
  %i.w = and i32 %4, 1
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %stack_check.exit
  %i.x = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.166, i64 noundef 41) #23
  br label %bb.n

bb.h:                                             ; preds = %stack_check.exit
  %i.y = and i32 %4, 2
  %.not18 = icmp eq i32 %i.y, 0
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.167, i64 noundef 43) #23
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aa = and i32 %4, 8
  %.not19 = icmp eq i32 %i.aa, 0
  br i1 %.not19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.168, i64 noundef 54) #23
  %i.ac = load i64, ptr @rb_eNameError, align 8, !tbaa !11
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ad = and i32 %4, 16
  %.not20 = icmp eq i32 %i.ad, 0
  br i1 %.not20, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.ae = and i32 %4, 4
  %i.af = load i64, ptr %2, align 8, !tbaa !11
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.169, i64 noundef 47) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.k, %bb.g
  %.016 = phi i64 [ %i.x, %bb.g ], [ %i.z, %bb.i ], [ %i.ab, %bb.k ], [ %i.ag, %bb.m ] ; 2 uses
  %.0 = phi i64 [ %i.a, %bb.g ], [ %i.a, %bb.i ], [ %i.ac, %bb.k ], [ %i.a, %bb.m ] ; 2 uses
  %i.ah = and i32 %4, 12                          ; 2 uses
  %i.ai = load i64, ptr %2, align 8, !tbaa !11    ; 2 uses
  %.not.i22 = icmp eq i64 %.016, 0
  br i1 %.not.i22, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread, %bb.n
  %i.aj = phi i64 [ %i.af, %.thread ], [ %i.ai, %bb.n ]
  %i.ak = phi i32 [ %i.ae, %.thread ], [ %i.ah, %bb.n ]
  %.028 = phi i64 [ %i.a, %.thread ], [ %.0, %bb.n ]
  %i.al = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.57, i64 noundef 36) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.am = phi i64 [ %i.ai, %bb.n ], [ %i.aj, %bb.o ] ; 2 uses
  %i.an = phi i32 [ %i.ah, %bb.n ], [ %i.ak, %bb.o ]
  %.027 = phi i64 [ %.0, %bb.n ], [ %.028, %bb.o ]
  %.013.i = phi i64 [ %.016, %bb.n ], [ %i.al, %bb.o ] ; 2 uses
  %i.ao = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !11
  %i.ap = icmp eq i64 %.027, %i.ao
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = add i32 %1, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %2, i64 8
  %i.at = tail call i64 @rb_ary_new_from_values(i64 noundef %i.ar, ptr noundef %i.as) #23
  %i.au = tail call i64 @rb_nomethod_err_new(i64 noundef %.013.i, i64 noundef %3, i64 noundef %i.am, i64 noundef %i.at, i32 noundef %i.an) #23
  br label %rb_make_no_method_exception.exit

bb.r:                                             ; preds = %bb.p
  %i.av = tail call i64 @rb_name_err_new(i64 noundef %.013.i, i64 noundef %3, i64 noundef %i.am) #23
  br label %rb_make_no_method_exception.exit

rb_make_no_method_exception.exit:                 ; preds = %bb.q, %bb.r
  %.0.i = phi i64 [ %i.au, %bb.q ], [ %i.av, %bb.r ]
  %i.aw = and i32 %4, 32
  %.not21 = icmp eq i32 %i.aw, 0
  br i1 %.not21, label %bb.s, label %bb.t

bb.s:                                             ; preds = %rb_make_no_method_exception.exit
  tail call void @rb_vm_pop_cfunc_frame()
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %rb_make_no_method_exception.exit
  tail call void @rb_exc_raise(i64 noundef %.0.i) #42
  unreachable
}

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #4

declare i64 @rb_gvar_defined(i64 noundef) local_unnamed_addr #4

declare i64 @rb_cvar_defined(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_search_normal_superclass(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77   ; 5 uses
  %i.e = and i64 %i.d, 31
  %i.f = icmp eq i64 %i.e, 28
  br i1 %i.f, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !61   ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77   ; 3 uses
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 3
  br i1 %i.p, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.q = and i64 %i.n, 8192
  %.not = icmp eq i64 %i.q, 0                     ; 2 uses
  %spec.select = select i1 %.not, i64 %0, i64 %i.h
  %1 = select i1 %.not, i64 %i.d, i64 %i.n
  %.pre = inttoptr i64 %spec.select to ptr
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.a
  %.pre-phi = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ], [ %i.c, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.c, %bb.a ] ; 6 uses
  %i.r = phi i64 [ %i.d, %bb.b ], [ %1, %bb.c ], [ %i.d, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.d, %bb.a ]
  %i.s = and i64 %i.r, 65536
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.t = getelementptr i8, ptr %.pre-phi, i64 160 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !192
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.d

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.w = getelementptr i8, ptr %.pre-phi, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.x = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.split.i, label %bb.e

.split.i:                                         ; preds = %bb.d
  %i.y = getelementptr i8, ptr %.pre-phi, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.x, i64 128
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.split7.i, label %bb.h

.split7.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ac = load i64, ptr %.pre-phi, align 8, !tbaa !77
  %i.ad = and i64 %i.ac, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.af = load i64, ptr %i.x, align 8, !tbaa !196
  %i.ag = call i32 @rb_st_lookup(ptr noundef nonnull %i.ae, i64 noundef %i.af, ptr noundef nonnull %i.b) #23
  %.not5.i.i13.i = icmp eq i32 %i.ag, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.g, %bb.f, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.ai, %bb.g ], [ null, %bb.f ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.aj = getelementptr i8, ptr %.pre-phi, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.aj, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.h:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %.pre-phi, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.h
  %.0.i6 = phi ptr [ %i.w, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ak, %bb.h ], [ %i.y, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.al = getelementptr i8, ptr %.0.i6, i64 96
  %i.am = load i64, ptr %i.al, align 8, !tbaa !406
  %i.an = inttoptr i64 %i.am to ptr               ; 7 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77
  %i.ap = and i64 %i.ao, 65536
  %.not.i.i7 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i7, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8:         ; preds = %RCLASS_EXT_READABLE.exit
  %i.aq = getelementptr i8, ptr %i.an, i64 160    ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !192
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, label %bb.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8, %RCLASS_EXT_READABLE.exit
  %i.at = getelementptr i8, ptr %i.an, i64 24
  br label %RCLASS_EXT_READABLE.exit26

bb.i:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i8
  %i.au = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i9 = icmp eq ptr %i.au, null
  br i1 %.not.i9, label %.split.i20, label %bb.j

.split.i20:                                       ; preds = %bb.i
  %i.av = getelementptr i8, ptr %i.an, i64 24
  br label %RCLASS_EXT_READABLE.exit26

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr i8, ptr %i.au, i64 128
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.split7.i11, label %bb.m

.split7.i11:                                      ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.az = load i64, ptr %i.an, align 8, !tbaa !77
  %i.ba = and i64 %i.az, 65536
  %.not.i.i.i10.i12 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i10.i12, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i13

RCLASS_CLASSEXT_TBL.exit.i.i11.i13:               ; preds = %.split7.i11
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i14 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i12.i14, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %bb.k

bb.k:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i13
  %i.bc = load i64, ptr %i.au, align 8, !tbaa !196
  %i.bd = call i32 @rb_st_lookup(ptr noundef nonnull %i.bb, i64 noundef %i.bc, ptr noundef nonnull %i.a) #23
  %.not5.i.i13.i15 = icmp eq i32 %i.bd, 0
  br i1 %.not5.i.i13.i15, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i64, ptr %i.a, align 8, !tbaa !11
  %i.bf = inttoptr i64 %i.be to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16

RCLASS_EXT_READABLE_LOOKUP.exit17.i16:            ; preds = %bb.l, %bb.k, %RCLASS_CLASSEXT_TBL.exit.i.i11.i13, %.split7.i11
  %.0.i.i14.i17 = phi ptr [ %i.bf, %bb.l ], [ null, %bb.k ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i13 ], [ null, %.split7.i11 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i18 = icmp eq ptr %.0.i.i14.i17, null
  %i.bg = getelementptr i8, ptr %i.an, i64 24
  %.0.i16.i19 = select i1 %.not.i15.i18, ptr %i.bg, ptr %.0.i.i14.i17
  br label %RCLASS_EXT_READABLE.exit26

bb.m:                                             ; preds = %bb.j
  %i.bh = getelementptr i8, ptr %i.an, i64 24
  br label %RCLASS_EXT_READABLE.exit26

RCLASS_EXT_READABLE.exit26:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, %.split.i20, %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, %bb.m
  %.0.i10 = phi ptr [ %i.at, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25 ], [ %i.bh, %bb.m ], [ %i.av, %.split.i20 ], [ %.0.i16.i19, %RCLASS_EXT_READABLE_LOOKUP.exit17.i16 ]
  %i.bi = getelementptr i8, ptr %.0.i10, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !197
  ret i64 %i.bj
}

declare i64 @rb_reg_last_defined(i64 noundef) local_unnamed_addr #4

declare i64 @rb_reg_nth_defined(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #4

declare i64 @rb_check_to_array(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_concat(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @check_match(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 4) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %5 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %6 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %7 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !11
  switch i32 %3, label %default.unreachable20 [
    i32 1, label %rb_vm_call_with_refinements.exit
    i32 3, label %bb.b
    i32 2, label %bb.d
    i32 0, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_cModule, align 8, !tbaa !11
  %i.d = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.c) #23
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.174) #42
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.f = icmp eq i64 %1, 0
  %i.g = and i64 %1, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %1 to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 8
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.d
  switch i64 %1, label %bb.i [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.g
    i64 20, label %bb.h
  ]
end_hunk_0
