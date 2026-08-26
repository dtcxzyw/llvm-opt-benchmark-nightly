Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ruby_parser?download=true
inline.NumInlined: 97
inline.NumDeleted: 45
begin_hunk_0_@rb_node_imaginary_literal_val:bb.a
  %i.p = icmp ult i32 %i.o, -2
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.k, i64 range(i64 3458764513820540929, 3458764513820540928) %i.k, i64 3)
  %i.r = and i64 %i.q, -4
  %i.s = or disjoint i64 %i.r, 2
  br label %rb_float_new_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.k, 0
  br i1 %i.t, label %rb_float_new_inline.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.u = tail call i64 @rb_float_new_in_heap(double noundef %i.j) #13
  br label %rb_float_new_inline.exit

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  %i.x = getelementptr i8, ptr %0, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = getelementptr i8, ptr %0, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !90
  %i.ab = tail call fastcc i64 @rational_value(ptr noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa)
  br label %rb_float_new_inline.exit

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.2) #16
  unreachable

rb_float_new_inline.exit:                         ; preds = %bb.g, %bb.f, %bb.e, %bb.h, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ %i.ab, %bb.h ], [ %i.s, %bb.e ], [ %i.u, %bb.g ], [ -9223372036854775806, %bb.f ]
  %i.ac = tail call i64 @rb_complex_raw(i64 noundef 1, i64 noundef %.0) #13 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !91
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rb_float_new_inline.exit
  %i.af = tail call fastcc i64 @negative_numeric(i64 noundef %i.ac)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %rb_float_new_inline.exit
  %.1 = phi i64 [ %i.af, %bb.j ], [ %i.ac, %rb_float_new_inline.exit ]
  ret i64 %.1
}

declare i64 @rb_complex_raw(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_node_str_string_val(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = tail call i64 @rb_enc_literal_str(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h) #13 ; 2 uses
  %i.j = tail call i32 @rb_enc_str_coderange(i64 noundef %i.i) #13 ; 0 uses
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_node_sym_string_val(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = tail call i64 @rb_intern3(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h) #13
  %i.j = tail call i64 @rb_id2sym(i64 noundef %i.i) #13
  ret i64 %i.j
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_intern3(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_node_dstr_string_val(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = tail call i64 @rb_enc_literal_str(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h) #13 ; 2 uses
  %i.j = tail call i32 @rb_enc_str_coderange(i64 noundef %i.i) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.i, %bb.b ], [ 4, %bb.a ]
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_node_dregx_string_val(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = tail call i64 @rb_enc_literal_str(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h) #13 ; 2 uses
  %i.j = tail call i32 @rb_enc_str_coderange(i64 noundef %i.i) #13 ; 0 uses
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_node_regx_string_val(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = tail call i64 @rb_enc_str_new(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h) #13
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !102
  %i.l = tail call i64 @rb_reg_compile(i64 noundef %i.i, i32 noundef %i.k, ptr noundef null, i32 noundef 0) #13
  ret i64 %i.l
}

declare i64 @rb_reg_compile(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i64 1, 0) i64 @rb_node_line_lineno_val(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !103
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_node_file_path_val(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = tail call i64 @rb_enc_literal_str(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %i.h) #13 ; 2 uses
  %i.j = tail call i32 @rb_enc_str_coderange(i64 noundef %i.i) #13 ; 0 uses
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_node_encoding_val(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = tail call i64 @rb_enc_from_encoding(ptr noundef %i.b) #13
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_ruby_ast_new(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 32, ptr noundef nonnull @ast_data_type) #13 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 5 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %i.h, i64 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx, i8 0, i64 3, i1 false)
  store ptr %0, ptr %i.i, align 8, !tbaa !108
  %.sroa.3.0..sroa_idx.a = getelementptr i8, ptr %i.h, i64 16
  store ptr null, ptr %.sroa.3.0..sroa_idx.a, align 8, !tbaa !110
  %.sroa.4.0..sroa_idx.a = getelementptr i8, ptr %i.h, i64 24
  store i32 0, ptr %.sroa.4.0..sroa_idx.a, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx.a = getelementptr i8, ptr %i.h, i64 28
  store i8 15, ptr %.sroa.9.0..sroa_idx.a, align 4, !tbaa !33
  ret i64 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_ruby_ast_data_get(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %rbimpl_check_typeddata.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !20

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.c, label %.critedge.i, !prof !22

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @ast_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !23

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.e
  %.016.i = phi ptr [ %i.s, %bb.e ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.r = getelementptr i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ast_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !29

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ast_data_type) #13
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.e, %.critedge.i, %RTYPEDDATA_GET_DATA.exit.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @parser_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @rb_ruby_parser_mark(ptr noundef %i.a) #13
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  %switch = icmp ult i32 %i.c, 3
  br i1 %switch, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  tail call void @rb_gc_mark(i64 noundef %i.e) #13
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @parser_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @rb_ruby_parser_free(ptr noundef %i.a) #13
  tail call void @ruby_xfree(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @parser_memsize(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = tail call i64 @rb_ruby_parser_memsize(ptr noundef %i.a) #13
  ret i64 %i.b
}

declare void @rb_ruby_parser_mark(ptr noundef) local_unnamed_addr #1

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #1

declare void @rb_ruby_parser_free(ptr noundef) local_unnamed_addr #1

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

declare i64 @rb_ruby_parser_memsize(ptr noundef) local_unnamed_addr #1

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @parser_compile(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_parser_compile(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #13 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112  ; 4 uses
  %i.d = icmp eq i64 %2, 4
  %i.e = icmp eq ptr %i.c, null
  %or.cond.not.i = or i1 %i.d, %i.e
  br i1 %or.cond.not.i, label %parser_aset_script_lines_for.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.pr.i.i = load i64, ptr @parser_aset_script_lines_for.rbimpl_id, align 8, !tbaa !37 ; 2 uses
  %.not1.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not1.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 14) #13 ; 3 uses
  store i64 %i.f, ptr @parser_aset_script_lines_for.rbimpl_id, align 8, !tbaa !37
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !50

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.b
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.b ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %i.g = load i64, ptr @rb_cObject, align 8, !tbaa !37
  %i.h = tail call i32 @rb_const_defined_at(i64 noundef %i.g, i64 noundef %.lcssa.i.i) #13
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %parser_aset_script_lines_for.exit, label %bb.c

bb.c:                                             ; preds = %rbimpl_intern_const.exit.i
  %i.i = load i64, ptr @rb_cObject, align 8, !tbaa !37
  %i.j = tail call i64 @rb_const_get_at(i64 noundef %i.i, i64 noundef %.lcssa.i.i) #13 ; 5 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i64 %i.j, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %parser_aset_script_lines_for.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.o = inttoptr i64 %i.j to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %parser_aset_script_lines_for.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.s = tail call i64 @rb_hash_lookup(i64 noundef %i.j, i64 noundef %2) #13
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %parser_aset_script_lines_for.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %.not18.i.i = icmp eq i32 %i.u, 2
  br i1 %.not18.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.1, i32 noundef %i.u) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.c, i64 16       ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !54
  %i.x = tail call i64 @rb_ary_new_capa(i64 noundef %i.w) #13 ; 2 uses
  %i.y = load i64, ptr %i.v, align 8, !tbaa !54
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i14.i, label %rb_parser_build_script_lines_from.exit.i

.lr.ph.i14.i:                                     ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.c, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i14.i
  %i.ab = phi i64 [ 0, %.lr.ph.i14.i ], [ %i.ao, %bb.h ]
  %.01419.i.i = phi i32 [ 0, %.lr.ph.i14.i ], [ %i.an, %bb.h ]
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57
  %i.ah = getelementptr i8, ptr %i.ae, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.aj = getelementptr i8, ptr %i.ae, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.al = tail call i64 @rb_enc_str_new(ptr noundef %i.ag, i64 noundef %i.ai, ptr noundef %i.ak) #13
  %i.am = tail call i64 @rb_ary_push(i64 noundef %i.x, i64 noundef %i.al) #13 ; 0 uses
end_hunk_0
