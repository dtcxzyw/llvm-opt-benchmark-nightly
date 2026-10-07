Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@dump_disasm_list_with_cursor:bb.a
  %i.eq = getelementptr i8, ptr %.06, i64 48
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !108
  %i.es = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.50, i32 noundef %.0245, ptr noundef %i.ep, i32 noundef %i.er) #37 ; 0 uses
  %.0.val = load i32, ptr %i.h, align 8, !tbaa !91
  %i.et = zext i32 %.0.val to i64
  %i.eu = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !47
  %i.ew = zext i8 %i.ev to i32
  %i.ex = add i32 %.0245, %i.ew
  br label %bb.av

bb.ap:                                            ; preds = %bb.b
  %i.ey = getelementptr i8, ptr %.06, i64 24
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !111
  %i.fa = getelementptr i8, ptr %.06, i64 36
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !110
  %i.fc = getelementptr i8, ptr %.06, i64 44
  %i.fd = load i8, ptr %i.fc, align 4
  %i.fe = lshr i8 %i.fd, 3
  %i.ff = and i8 %i.fe, 1
  %i.fg = zext nneg i8 %i.ff to i32
  %i.fh = getelementptr i8, ptr %.06, i64 40
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !240
  %i.fj = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.51, i32 noundef %i.ez, i32 noundef %i.fb, i32 noundef %i.fg, i32 noundef %i.fi, ptr noundef nonnull @.str.53) #37 ; 0 uses
  br label %bb.av

bb.aq:                                            ; preds = %bb.b
  %i.fk = getelementptr i8, ptr %.06, i64 24
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !118
  %i.fm = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef %i.fl) #37 ; 0 uses
  br label %bb.av

bb.ar:                                            ; preds = %bb.b
  %i.fn = getelementptr i8, ptr %.06, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !113 ; 2 uses
  %.not27 = icmp eq ptr %i.fo, null
  br i1 %.not27, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fp = getelementptr i8, ptr %i.fo, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !111
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.fr = phi i32 [ %i.fq, %bb.as ], [ -1, %bb.ar ]
  %i.fs = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef %i.fr) #37 ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.b
  %i.ft = load i64, ptr @rb_eSyntaxError, align 8, !tbaa !63
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ft, ptr noundef nonnull @.str.56, i32 noundef %i.g) #41
  unreachable

bb.av:                                            ; preds = %bb.at, %bb.aq, %bb.ap, %insn_data_to_s_detail.exit
  %.1 = phi i32 [ %i.ex, %insn_data_to_s_detail.exit ], [ %.0245, %bb.ap ], [ %.0245, %bb.aq ], [ %.0245, %bb.at ]
  %i.fu = getelementptr i8, ptr %.06, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %i.fv, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1019

._crit_edge:                                      ; preds = %bb.av, %bb.a
  %i.fw = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.57) #37 ; 0 uses
  %i.fx = load ptr, ptr @stdout, align 8, !tbaa !1021
  %i.fy = call i32 @fflush(ptr noundef %i.fx)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

declare ptr @rb_vm_empty_cc() local_unnamed_addr #4

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #20

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #4

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #4

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #21

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_str_concat(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @rb_class_of(i64 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %bb.h
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.d, %bb.b
  %.0.in = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select, %bb.g ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !63
  ret i64 %.0
}

declare i64 @rb_id2str(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @dladdr(ptr noundef, ptr noundef) local_unnamed_addr #12

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_ary_dup(i64 noundef) local_unnamed_addr #4

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #4

declare i64 @rb_fix2uint(i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @rb_fatal(ptr noundef, ...) local_unnamed_addr #9

declare ptr @rb_vm_get_insns_address_table() local_unnamed_addr #4

declare i32 @rb_vm_insn_decode(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @access_outer_variables(ptr noundef %0, i32 noundef range(i32 1, -2147483648) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 {
ISEQ_COMPILE_DATA.exit:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr i8, ptr %i.c, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !478  ; 2 uses
  %.not29 = icmp eq i32 %i.e, 0
  %.not30 = icmp slt i32 %1, %i.e
  %or.cond = or i1 %.not29, %.not30
  br i1 %or.cond, label %bb.b, label %bb.a

bb.a:                                             ; preds = %ISEQ_COMPILE_DATA.exit
  %.pr.i = load i64, ptr @access_outer_variables.rbimpl_id, align 8, !tbaa !63 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.71, i64 noundef 5) #37 ; 3 uses
  store i64 %i.f, ptr @access_outer_variables.rbimpl_id, align 8, !tbaa !63
  %.not.i34 = icmp eq i64 %i.f, 0
  br i1 %.not.i34, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !3

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.g = icmp eq i64 %2, %.lcssa.i
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.i = getelementptr i8, ptr %i.h, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  br i1 %i.g, label %ISEQ_COMPILE_DATA.exit37, label %ISEQ_COMPILE_DATA.exit40

ISEQ_COMPILE_DATA.exit37:                         ; preds = %rbimpl_intern_const.exit
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull @.str.72)
  br label %bb.b

ISEQ_COMPILE_DATA.exit40:                         ; preds = %rbimpl_intern_const.exit
  %i.k = tail call ptr @rb_id2name(i64 noundef %2) #37
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull @.str.73, ptr noundef %i.k)
  br label %bb.b

bb.b:                                             ; preds = %ISEQ_COMPILE_DATA.exit37, %ISEQ_COMPILE_DATA.exit40, %ISEQ_COMPILE_DATA.exit
  %4 = select i1 %3, i64 20, i64 0                ; 2 uses
  br i1 %3, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.b, %bb.f
  %.042.us = phi i32 [ %i.ab, %bb.f ], [ 0, %bb.b ]
  %.02641.us = phi ptr [ %i.aa, %bb.f ], [ %0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.l = getelementptr i8, ptr %.02641.us, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr i8, ptr %i.m, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !303  ; 2 uses
  %.not31.us = icmp eq ptr %i.o, null
  br i1 %.not31.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split.us
  %i.p = call ptr @rb_id_table_create(i64 noundef 8) #37 ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.r = getelementptr i8, ptr %i.q, i64 288
  store ptr %i.p, ptr %i.r, align 8, !tbaa !303
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us
  %i.s = phi ptr [ %i.p, %bb.c ], [ %i.o, %.split.us ]
  %i.t = call i32 @rb_id_table_lookup(ptr noundef %i.s, i64 noundef %2, ptr noundef nonnull %i.a) #37
  %.not32.us = icmp eq i32 %i.t, 0
  br i1 %.not32.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.v = getelementptr i8, ptr %i.u, i64 288
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !303
  %i.x = call i32 @rb_id_table_insert(ptr noundef %i.w, i64 noundef %2, i64 noundef %4) #37 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.z = getelementptr i8, ptr %i.y, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ab = add nuw nsw i32 %.042.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %1
  br i1 %exitcond.not, label %.split44.us, label %.split.us, !llvm.loop !1022

.split44.us:                                      ; preds = %bb.f, %bb.i
  ret void

.split:                                           ; preds = %bb.b, %bb.i
  %.042 = phi i32 [ %i.as, %bb.i ], [ 0, %bb.b ]
  %.02641 = phi ptr [ %i.ar, %bb.i ], [ %0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ac = getelementptr i8, ptr %.02641, i64 16   ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.ae = getelementptr i8, ptr %i.ad, i64 288
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !303 ; 2 uses
  %.not31 = icmp eq ptr %i.af, null
  br i1 %.not31, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split
  %i.ag = call ptr @rb_id_table_create(i64 noundef 8) #37 ; 2 uses
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.ai = getelementptr i8, ptr %i.ah, i64 288
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !303
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.split
  %i.aj = phi ptr [ %i.ag, %bb.g ], [ %i.af, %.split ]
  %i.ak = call i32 @rb_id_table_lookup(ptr noundef %i.aj, i64 noundef %2, ptr noundef nonnull %i.a) #37
  %.not32.a = icmp eq i32 %i.ak, 0
  br i1 %.not32.a, label %.sink.split, label %5

5:                                                ; preds = %bb.h
  %6 = load i64, ptr %i.a, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %5
  %.sink53 = phi i64 [ 20, %5 ], [ %4, %bb.h ]
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.am = getelementptr i8, ptr %i.al, i64 288
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !303
  %i.ao = call i32 @rb_id_table_insert(ptr noundef %i.an, i64 noundef %2, i64 noundef %.sink53) #37 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %5
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.aq = getelementptr i8, ptr %i.ap, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.as = add nuw nsw i32 %.042, 1                ; 2 uses
  %exitcond46.not = icmp eq i32 %i.as, %1
  br i1 %exitcond46.not, label %.split44.us, label %.split, !llvm.loop !1022
}

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #4

declare ptr @rb_id_table_create(i64 noundef) local_unnamed_addr #4

declare i32 @rb_id_table_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_id_table_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @ruby_node_name(i32 noundef) local_unnamed_addr #4

declare i64 @rb_ary_clear(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @iseq_set_use_block(ptr nofree captures(none) %.16.val) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %.16.val, i64 16   ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 4096
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i16 %i.b, 4096
  store i16 %i.d, ptr %i.a, align 8
  %i.e = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !206
  %i.f = tail call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 4) #37
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.16.val, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !207
  %i.i = tail call i64 @rb_intern_str(i64 noundef %i.h) #37
  %i.j = getelementptr i8, ptr %i.e, i64 1304
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !231
  %i.l = tail call i32 @rb_set_insert(ptr noundef %i.k, i64 noundef %i.i) #37 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare i64 @rb_str_tmp_new(i64 noundef) local_unnamed_addr #4

declare i64 @rb_node_regx_string_val(ptr noundef) local_unnamed_addr #4

declare i64 @rb_node_rational_literal_val(ptr noundef) local_unnamed_addr #4

declare i64 @rb_node_imaginary_literal_val(ptr noundef) local_unnamed_addr #4

declare i64 @rb_node_encoding_val(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @rb_warning_category_enabled_p(i32 noundef) local_unnamed_addr #4

declare i64 @rb_intern_str(i64 noundef) local_unnamed_addr #4

declare i32 @rb_set_insert(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #4

declare i64 @rb_iseq_first_lineno(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #1 {
ISEQ_COMPILE_DATA.exit:
  %4 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 9 uses
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !172    ; 3 uses
  %i.f = lshr i64 %i.e, 15
  %i.g = trunc i64 %i.f to i32                    ; 12 uses
  %i.h = trunc i64 %i.e to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = and i32 %i.i, 127                        ; 9 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70   ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr i8, ptr %i.n, i64 128      ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !60
  %i.q = icmp eq i32 %i.p, %i.g
  %i.r = and i64 %i.e, 128
  %.not = icmp eq i64 %i.r, 0
  %or.cond = or i1 %.not, %i.q
  br i1 %or.cond, label %bb.h, label %ISEQ_COMPILE_DATA.exit1182

ISEQ_COMPILE_DATA.exit1182:                       ; preds = %ISEQ_COMPILE_DATA.exit
  store i32 %i.g, ptr %i.o, align 8, !tbaa !60
  %i.s = icmp sgt i32 %i.g, 0
  br i1 %i.s, label %bb.a, label %bb.e

bb.a:                                             ; preds = %ISEQ_COMPILE_DATA.exit1182
  %i.t = getelementptr i8, ptr %i.l, i64 216
  %i.u = load i64, ptr %i.t, align 8, !tbaa !115  ; 2 uses
  %.not1039 = icmp eq i64 %i.u, 0
  br i1 %.not1039, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !100
  %i.x = and i64 %i.w, 8192
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.v, i64 16
  br label %RARRAY_AREF.exit

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.v, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.y, %bb.c ], [ %i.aa, %bb.d ]
  %i.ab = load i64, ptr %.0.i.i, align 8, !tbaa !63
  %.not1040 = icmp eq i64 %i.ab, 0
  %spec.select = select i1 %.not1040, i32 1, i32 65537
  br label %bb.e

bb.e:                                             ; preds = %RARRAY_AREF.exit, %bb.a, %ISEQ_COMPILE_DATA.exit1182
  %.01032 = phi i32 [ 1, %ISEQ_COMPILE_DATA.exit1182 ], [ %spec.select, %RARRAY_AREF.exit ], [ 1, %bb.a ]
  %.val1175 = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.ac = getelementptr i8, ptr %.val1175, i64 96 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !37 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.ag, 40
  %i.ai = getelementptr i8, ptr %i.ad, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37 ; 4 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp samesign ugt i64 %i.ah, %i.ak
  br i1 %i.al, label %.preheader.i.i.i.i, label %new_trace_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.e
  %i.am = icmp ult i32 %i.aj, 40
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.g
  %.027.i.i.i.i = phi i32 [ %i.ao, %bb.g ], [ %i.aj, %.preheader.i.i.i.i ] ; 3 uses
  %i.an = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ap = icmp samesign ult i32 %.027.i.i.i.i, 20
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.g
  %i.aq = zext nneg i32 %i.ao to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.aj, %.preheader.i.i.i.i ], [ %i.ao, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.ak, %.preheader.i.i.i.i ], [ %i.aq, %._crit_edge.i.i.loopexit.i.i ]
  %i.ar = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.as = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ar, i64 noundef 1) #39 ; 6 uses
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !64
  store ptr %i.as, ptr %i.ac, align 8, !tbaa !64
  store ptr null, ptr %i.as, align 8, !tbaa !64
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !37
  %i.au = getelementptr i8, ptr %i.as, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.au, align 4, !tbaa !37
  br label %new_trace_body.exit

new_trace_body.exit:                              ; preds = %bb.e, %._crit_edge.i.i.i.i
  %i.av = phi i32 [ 0, %._crit_edge.i.i.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.as, %._crit_edge.i.i.i.i ], [ %i.ad, %bb.e ] ; 2 uses
  %i.aw = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.ax = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.ay = zext i32 %i.av to i64
  %i.az = getelementptr i8, ptr %i.aw, i64 %i.ay  ; 7 uses
  %i.ba = add i32 %i.av, 40
  store i32 %i.ba, ptr %i.ax, align 8, !tbaa !37
  store i32 4, ptr %i.az, align 8, !tbaa !235
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !236
  %i.bc = getelementptr i8, ptr %i.az, i64 24
  store i32 %.01032, ptr %i.bc, align 8, !tbaa !118
  %i.bd = getelementptr i8, ptr %i.az, i64 32
  store i64 0, ptr %i.bd, align 8, !tbaa !119
  %i.be = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
end_hunk_0
