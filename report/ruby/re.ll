Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/re?download=true
inline.NumInlined: 580
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@rb_reg_s_union_m:bb.a
rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i64 %.0.i, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_array_len.exit
  %i.i = tail call i64 @rb_ary_entry(i64 noundef %1, i64 noundef 0) #27
  %i.j = tail call i64 @rb_check_array_type(i64 noundef %i.i) #28 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %rb_array_len.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i64 [ %1, %bb.e ], [ %i.j, %bb.d ]
  %i.l = tail call fastcc i64 @rb_reg_s_union(i64 noundef %.sink)
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_s_last_match(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #2 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #29
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 1
  %i.b = tail call i64 @rb_backref_get() #28      ; 8 uses
  %i.c = icmp eq i64 %i.b, 4                      ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.j

bb.c:                                             ; preds = %rb_check_arity.exit
  br i1 %i.c, label %rb_reg_nth_match.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %1, align 8, !tbaa !19
  %i.e = tail call fastcc i32 @match_backref_number(i64 noundef %i.b, i64 noundef %i.d) ; 4 uses
  %i.f = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %match_check.exit.i

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.76) #29
  unreachable

match_check.exit.i:                               ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.f, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43   ; 2 uses
  %.not.i = icmp slt i32 %i.e, %i.k
  br i1 %.not.i, label %bb.f, label %rb_reg_nth_match.exit

bb.f:                                             ; preds = %match_check.exit.i
  %i.l = icmp slt i32 %i.e, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = add i32 %i.k, %i.e                       ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %rb_reg_nth_match.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.020.i = phi i32 [ %i.m, %bb.g ], [ %i.e, %bb.f ]
  %i.o = getelementptr i8, ptr %i.f, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = zext nneg i32 %.020.i to i64             ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19   ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %rb_reg_nth_match.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %i.f, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.q
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = sub i64 %i.x, %i.s
  %i.z = getelementptr i8, ptr %i.f, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ab = tail call i64 @rb_str_subseq(i64 noundef %i.aa, i64 noundef %i.s, i64 noundef %i.y) #28
  br label %rb_reg_nth_match.exit

bb.j:                                             ; preds = %rb_check_arity.exit
  br i1 %i.c, label %rb_reg_nth_match.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp ne i64 %i.b, 0
  %i.ad = and i64 %i.b, 7
  %i.ae = icmp eq i64 %i.ad, 0
  %.not4.i.i.i = and i1 %i.ac, %i.ae
  br i1 %.not4.i.i.i, label %bb.l, label %rb_reg_nth_match.exit

bb.l:                                             ; preds = %bb.k
  %i.af = inttoptr i64 %i.b to ptr                ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37
  %i.ah = or i64 %i.ag, 16384
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !37
  br label %rb_reg_nth_match.exit

rb_reg_nth_match.exit:                            ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %match_check.exit.i, %bb.c
  %.1 = phi i64 [ 4, %bb.g ], [ 4, %bb.c ], [ %i.ab, %bb.i ], [ 4, %bb.h ], [ 4, %match_check.exit.i ], [ 4, %bb.j ], [ %i.b, %bb.k ], [ %i.b, %bb.l ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_s_try_convert(i64 %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call i64 @rb_check_convert_type(i64 noundef %1, i32 noundef 6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.109) #28
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_reg_s_linear_time_p(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.reg_init_args, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = call fastcc i64 @reg_extract_args(i32 noundef %0, ptr noundef %1, ptr noundef %3) ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = inttoptr i64 %i.b to ptr
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cRegexp, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !44
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.d, i64 noundef 6, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = load i64, ptr %3, align 8, !tbaa !99
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !102
  %i.o = call fastcc i64 @reg_init_args(i64 noundef %i.g, i64 noundef %i.j, ptr noundef %i.l, i32 noundef %i.n) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi ptr [ %.pre, %._crit_edge ], [ %i.h, %bb.b ]
  %i.p = getelementptr i8, ptr %.pre-phi, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = call i32 @onig_check_linear_time(ptr noundef %i.q) #28
  %.not = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not, i64 0, i64 20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %i.s
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_reg_initialize_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #2 {
bb.a:
  %3 = alloca %struct.reg_init_args, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = call fastcc i64 @reg_extract_args(i32 noundef %0, ptr noundef %1, ptr noundef %3) ; 2 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !102
  %i.h = call fastcc i64 @reg_init_args(i64 noundef %2, i64 noundef %i.c, ptr noundef %i.e, i32 noundef %i.g) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call fastcc i64 @reg_copy(i64 noundef %2, i64 noundef %i.a) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = inttoptr i64 %2 to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !103  ; 3 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %set_timeout.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call double @rb_num2dbl(i64 noundef %i.n) #28
  %.fr.i = freeze double %i.p                     ; 3 uses
  %i.q = fcmp ugt double %.fr.i, 0.000000e+00
  br i1 %i.q, label %.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.117, i64 noundef %i.n) #29
  unreachable

.split.i:                                         ; preds = %bb.e
  %4 = fcmp ult double %.fr.i, f0x43E0000000000000
  br i1 %4, label %.thread12.i, label %set_timeout.exit

.thread12.i:                                      ; preds = %.split.i
  %i.s = fmul double %.fr.i, 1.000000e+09
  %i.t = fptoui double %i.s to i64
  br label %set_timeout.exit

set_timeout.exit:                                 ; preds = %bb.d, %.split.i, %.thread12.i
  %5 = phi i64 [ -1, %.split.i ], [ 0, %bb.d ], [ %i.t, %.thread12.i ]
  %i.u = getelementptr i8, ptr %i.l, i64 440
  store i64 %5, ptr %i.u, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_reg_init_copy(i64 noundef returned %0, i64 noundef %1) #2 {
bb.a:
  %.not = icmp eq i64 %0, %1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_obj_init_copy(i64 noundef %0, i64 noundef %1) #28 ; 0 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %.not3.i = icmp eq i64 %i.f, 0
  br i1 %.not3.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = and i64 %i.h, 8192
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.k, %bb.e ], [ %i.j, %bb.d ]
  %.not4.i = icmp eq ptr %i.l, null
  br i1 %.not4.i, label %bb.f, label %rb_reg_check.exit

bb.f:                                             ; preds = %RREGEXP_SRC_PTR.exit.i, %bb.c, %bb.b
  %i.m = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  %i.n = tail call fastcc i64 @reg_copy(i64 noundef %0, i64 noundef %1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %rb_reg_check.exit
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_reg_eqq(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %RB_SYMBOL_P.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.b
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = and i64 %i.h, 31
  switch i64 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i64 20, label %RB_SYMBOL_P.exit.thread.i
    i64 5, label %reg_operand.exit
  ]

RB_SYMBOL_P.exit.thread.i:                        ; preds = %RB_SYMBOL_P.exit.i, %bb.a
  %i.j = tail call i64 @rb_sym2str(i64 noundef %1) #28
  br label %reg_operand.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %RB_SYMBOL_P.exit.i, %bb.b
  %i.k = tail call i64 @rb_check_string_type(i64 noundef %1) #28
  br label %reg_operand.exit

reg_operand.exit:                                 ; preds = %RB_SYMBOL_P.exit.i, %RB_SYMBOL_P.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.j, %RB_SYMBOL_P.exit.thread.i ], [ %1, %RB_SYMBOL_P.exit.i ], [ %i.k, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 2 uses
  %i.l = icmp eq i64 %.0.i, 4
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %reg_operand.exit
  tail call void @rb_backref_set(i64 noundef 4) #28
  br label %bb.e

bb.d:                                             ; preds = %reg_operand.exit
  %i.m = tail call fastcc range(i64 -1, -9223372036854775808) i64 @rb_reg_search_set_match(i64 noundef %0, i64 noundef %.0.i, i64 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null)
  %.inv = icmp slt i64 %i.m, 0
  %i.n = select i1 %.inv, i64 0, i64 20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %i.n, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_match_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 4, ptr %i.a, align 8, !tbaa !19
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !19     ; 8 uses
  %.not14 = icmp eq i32 %0, 1
  br i1 %.not14, label %rb_num2long_inline.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = icmp eq i32 %0, 2
  br i1 %i.f, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #29
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.g = trunc i64 %i.e to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.h = ashr i64 %i.e, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.i = tail call i64 @rb_num2long(i64 noundef %i.e) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %.preheader, %bb.e, %bb.d
  %.0 = phi i64 [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ 0, %.preheader ] ; 4 uses
  %i.j = icmp eq i64 %i.c, 4
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_num2long_inline.exit
  tail call void @rb_backref_set(i64 noundef 4) #28
  br label %reg_match_pos.exit.thread

bb.g:                                             ; preds = %rb_num2long_inline.exit
  %i.k = and i64 %i.c, 255
  %i.l = icmp eq i64 %i.k, 12
  br i1 %i.l, label %RB_SYMBOL_P.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %i.c, 0
  %i.n = and i64 %i.c, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %RB_SYMBOL_P.exit.i.i

RB_SYMBOL_P.exit.i.i:                             ; preds = %bb.h
  %i.q = inttoptr i64 %i.c to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37
  %i.s = and i64 %i.r, 31
  switch i64 %i.s, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i64 20, label %RB_SYMBOL_P.exit.thread.i.i
    i64 5, label %reg_operand.exit.i
  ]

RB_SYMBOL_P.exit.thread.i.i:                      ; preds = %RB_SYMBOL_P.exit.i.i, %bb.g
  %i.t = tail call i64 @rb_sym2str(i64 noundef %i.c) #28
  br label %reg_operand.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %RB_SYMBOL_P.exit.i.i, %bb.h
  %i.u = tail call i64 @rb_str_to_str(i64 noundef %i.c) #28
  br label %reg_operand.exit.i

reg_operand.exit.i:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %RB_SYMBOL_P.exit.thread.i.i, %RB_SYMBOL_P.exit.i.i
  %.0.i.i = phi i64 [ %i.t, %RB_SYMBOL_P.exit.thread.i.i ], [ %i.c, %RB_SYMBOL_P.exit.i.i ], [ %i.u, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ] ; 3 uses
  %.not.i6 = icmp eq i64 %.0, 0
  br i1 %.not.i6, label %reg_match_pos.exit, label %bb.i

bb.i:                                             ; preds = %reg_operand.exit.i
  %i.v = icmp slt i64 %.0, 0
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i64 @rb_str_length(i64 noundef %.0.i.i) #28 ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = tail call i64 @rb_fix2int(i64 noundef %i.w) #28
  br label %rb_num2int_inline.exit.i

bb.l:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@rb_reg_fixed_encoding_p:bb.a
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i = and i1 %i.a, %i.c
  br i1 %.not5.i, label %RB_FL_TEST.exit, label %RB_FL_TEST.exit.thread

RB_FL_TEST.exit:                                  ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %.fr4 = freeze i64 %i.e
  %i.f = and i64 %.fr4, 65536
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %RB_FL_TEST.exit.thread, label %bb.b

RB_FL_TEST.exit.thread:                           ; preds = %bb.a, %RB_FL_TEST.exit
  br label %bb.b

bb.b:                                             ; preds = %RB_FL_TEST.exit, %RB_FL_TEST.exit.thread
  %i.g = phi i64 [ 0, %RB_FL_TEST.exit.thread ], [ 20, %RB_FL_TEST.exit ]
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_names(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not3.i = icmp eq i64 %i.e, 0
  br i1 %.not3.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = and i64 %i.g, 8192
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.e, label %rb_reg_check.exit

bb.e:                                             ; preds = %RREGEXP_SRC_PTR.exit.i, %bb.b, %bb.a
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  %i.m = tail call i32 @onig_number_of_names(ptr noundef nonnull %i.c) #28
  %i.n = sext i32 %i.m to i64
  %i.o = tail call i64 @rb_ary_new_capa(i64 noundef %i.n) #28 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.q = inttoptr i64 %i.o to ptr
  %i.r = tail call i32 @onig_foreach_name(ptr noundef %i.p, ptr noundef nonnull @reg_names_iter, ptr noundef %i.q) #28 ; 0 uses
  ret i64 %i.o
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_named_captures(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not3.i = icmp eq i64 %i.e, 0
  br i1 %.not3.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = and i64 %i.g, 8192
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.e, label %rb_reg_check.exit

bb.e:                                             ; preds = %RREGEXP_SRC_PTR.exit.i, %bb.b, %bb.a
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  %i.m = tail call i32 @onig_number_of_names(ptr noundef nonnull %i.c) #28
  %i.n = sext i32 %i.m to i64
  %i.o = tail call i64 @rb_hash_new_with_size(i64 noundef %i.n) #28 ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call i32 @onig_foreach_name(ptr noundef nonnull %i.c, ptr noundef nonnull @reg_named_captures_iter, ptr noundef %i.p) #28 ; 0 uses
  ret i64 %i.o
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_timeout_get(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not3.i = icmp eq i64 %i.e, 0
  br i1 %.not3.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = and i64 %i.g, 8192
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.e, label %rb_reg_check.exit

bb.e:                                             ; preds = %RREGEXP_SRC_PTR.exit.i, %bb.b, %bb.a
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  %i.m = getelementptr i8, ptr %i.c, i64 440
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  %i.o = uitofp i64 %i.n to double
  %i.p = fdiv double %i.o, 1.000000e+09           ; 2 uses
  %i.q = fcmp oeq double %i.p, 0.000000e+00
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_reg_check.exit
  %i.r = tail call i64 @rb_float_new(double noundef %i.p) #28
  br label %bb.g

bb.g:                                             ; preds = %rb_reg_check.exit, %bb.f
  %.0 = phi i64 [ %i.r, %bb.f ], [ 4, %rb_reg_check.exit ]
  ret i64 %.0
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_s_timeout_get(i64 %0) #2 {
bb.a:
  %i.a = load i64, ptr @rb_reg_match_time_limit, align 8, !tbaa !19
  %i.b = uitofp i64 %i.a to double
  %i.c = fdiv double %i.b, 1.000000e+09           ; 2 uses
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_float_new(double noundef %i.c) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_reg_s_timeout_set(i64 %0, i64 noundef returned %1) #2 {
bb.a:
  tail call void @rb_ractor_ensure_main_ractor(ptr noundef nonnull @.str.119) #28
  %i.a = icmp eq i64 %1, 4
  br i1 %i.a, label %set_timeout.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @rb_num2dbl(i64 noundef %1) #28
  %.fr.i = freeze double %i.b                     ; 3 uses
  %i.c = fcmp ugt double %.fr.i, 0.000000e+00
  br i1 %i.c, label %.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.117, i64 noundef %1) #29
  unreachable

.split.i:                                         ; preds = %bb.b
  %2 = fcmp ult double %.fr.i, f0x43E0000000000000
  br i1 %2, label %.thread12.i, label %set_timeout.exit

.thread12.i:                                      ; preds = %.split.i
  %i.e = fmul double %.fr.i, 1.000000e+09
  %i.f = fptoui double %i.e to i64
  br label %set_timeout.exit

set_timeout.exit:                                 ; preds = %bb.a, %.split.i, %.thread12.i
  %3 = phi i64 [ -1, %.split.i ], [ 0, %bb.a ], [ %i.f, %.thread12.i ]
  store i64 %3, ptr @rb_reg_match_time_limit, align 8, !tbaa !19
  ret i64 %1
}

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_global_variable(ptr noundef) local_unnamed_addr #4

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @match_init_copy(i64 noundef returned %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i64 %0, %1
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_obj_init_copy(i64 noundef %0, i64 noundef %1) #28 ; 0 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !75   ; 4 uses
  store i64 %i.h, ptr %i.e, align 8, !tbaa !19
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rb_obj_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.h) #28
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.b, %bb.c
  %i.m = getelementptr i8, ptr %i.d, i64 24
  %i.n = getelementptr i8, ptr %i.f, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34   ; 4 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !19
  %i.p = icmp eq i64 %i.o, 0
  %i.q = and i64 %i.o, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %rb_obj_write.exit24, label %bb.d

bb.d:                                             ; preds = %rb_obj_write.exit
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.o) #28
  br label %rb_obj_write.exit24

rb_obj_write.exit24:                              ; preds = %rb_obj_write.exit, %bb.d
  %i.t = getelementptr i8, ptr %i.d, i64 32       ; 4 uses
  %i.u = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  tail call void @onig_region_copy(ptr noundef %i.t, ptr noundef %i.u) #28
  %i.v = load i32, ptr %i.t, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_obj_write.exit24
  tail call void @rb_gc() #28
  tail call void @onig_region_copy(ptr noundef nonnull %i.t, ptr noundef %i.u) #28
  %i.w = load i32, ptr %i.t, align 8, !tbaa !31
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %rb_reg_region_copy.exit, label %bb.f

rb_reg_region_copy.exit:                          ; preds = %bb.e
  tail call void @rb_memerror() #31
  unreachable

bb.f:                                             ; preds = %rb_obj_write.exit24, %bb.e
  %i.x = getelementptr i8, ptr %i.f, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !104
  %.not23 = icmp eq i32 %i.y, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.d, i64 64       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !104
  %i.ab = getelementptr i8, ptr %i.d, i64 36      ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105 ; 3 uses
  %i.ad = icmp slt i32 %i.aa, %i.ac
  %i.ae = getelementptr i8, ptr %i.d, i64 56      ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !106 ; 2 uses
  br i1 %i.ad, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ag = sext i32 %i.ac to i64
  %i.ah = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.af, i64 noundef %i.ag, i64 noundef 16) #35 ; 2 uses
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !106
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  store i32 %i.ai, ptr %i.z, align 8, !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.aj = phi i32 [ %i.ai, %bb.h ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ak = phi ptr [ %i.ah, %bb.h ], [ %i.af, %bb.g ]
  %i.al = getelementptr i8, ptr %i.f, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !106
  %i.an = sext i32 %i.aj to i64                   ; 2 uses
  %i.ao = icmp slt i32 %i.aj, 0
  br i1 %i.ao, label %bb.i, label %rbimpl_size_mul_or_raise.exit, !prof !107

bb.i:                                             ; preds = %._crit_edge
  tail call void @ruby_malloc_size_overflow(i64 noundef 16, i64 noundef %i.an) #29
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %._crit_edge
  %.not.i25 = icmp eq i32 %i.aj, 0
  br i1 %.not.i25, label %ruby_nonempty_memcpy.exit, label %bb.j

bb.j:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ap = shl nuw nsw i64 %i.an, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull readonly align 1 %i.am, i64 noundef range(i64 1, 0) %i.ap, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.a, ptr %i.b, align 8, !tbaa !66
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #28, !srcloc !108
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ar = load volatile i64, ptr %i.aq, align 8, !tbaa !19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %ruby_nonempty_memcpy.exit, %bb.a
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @match_regexp(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  switch i64 %i.c, label %rb_obj_write.exit [
    i64 0, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.76) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %0, 4
  br i1 %i.e, label %rb_reg_nth_match.exit, label %match_check.exit.i

match_check.exit.i:                               ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43
  %.not.i9 = icmp sgt i32 %i.g, 0
  br i1 %.not.i9, label %bb.d, label %rb_reg_nth_match.exit

bb.d:                                             ; preds = %match_check.exit.i
  %i.h = getelementptr i8, ptr %i.a, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %rb_reg_nth_match.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.a, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = sub i64 %i.n, %i.j
  %i.p = getelementptr i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75
  %i.r = tail call i64 @rb_str_subseq(i64 noundef %i.q, i64 noundef %i.j, i64 noundef %i.o) #28
  br label %rb_reg_nth_match.exit

rb_reg_nth_match.exit:                            ; preds = %bb.c, %match_check.exit.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.r, %bb.e ], [ 4, %bb.c ], [ 4, %match_check.exit.i ], [ 4, %bb.d ]
  %i.s = tail call i64 @rb_reg_quote(i64 noundef %.0.i)
  %i.t = tail call i64 @rb_reg_regcomp(i64 noundef %i.s) ; 6 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !19
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %rb_obj_write.exit, label %bb.f

bb.f:                                             ; preds = %rb_reg_nth_match.exit
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.t) #28
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.a, %bb.f, %rb_reg_nth_match.exit
  %.0 = phi i64 [ %i.c, %bb.a ], [ %i.t, %rb_reg_nth_match.exit ], [ %i.t, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @match_names(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  switch i64 %i.c, label %bb.d [
end_hunk_1
