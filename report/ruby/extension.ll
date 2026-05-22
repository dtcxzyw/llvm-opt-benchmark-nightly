inline.NumInlined: 144
inline.NumDeleted: 38
begin_hunk_0_@string_query_constant_p:bb.a
  br label %string_query.exit

string_query.exit:                                ; preds = %check_string.exit, %bb.e
  %.0.i = phi i64 [ 0, %bb.e ], [ 20, %check_string.exit ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @string_query_method_name_p(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.j = tail call i64 @rb_obj_class(i64 noundef %1) #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.62, i64 noundef %i.j) #11
  unreachable

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.k = and i64 %i.f, 8192
  %.not.i.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i.i, label %check_string.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  br label %check_string.exit

check_string.exit:                                ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %bb.b ]
  %i.o = getelementptr i8, ptr %i.e, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50
  %i.q = tail call ptr @rb_enc_get(i64 noundef %1) #9
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.t = tail call i32 @pm_string_query_method_name(ptr noundef %i.n, i64 noundef %i.p, ptr noundef %i.s) #9
  switch i32 %i.t, label %bb.e [
    i32 -1, label %bb.d
    i32 1, label %string_query.exit
  ]

bb.d:                                             ; preds = %check_string.exit
  %i.u = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.93) #11
  unreachable

bb.e:                                             ; preds = %check_string.exit
  br label %string_query.exit

string_query.exit:                                ; preds = %check_string.exit, %bb.e
  %.0.i = phi i64 [ 0, %bb.e ], [ 20, %check_string.exit ]
  ret i64 %.0.i
}

declare void @Init_prism_api_node() local_unnamed_addr #2

declare void @Init_prism_pack() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @string_options(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.build_options_data, align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call i32 @rb_keyword_given_p() #9
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_hash_dup(i64 noundef %i.f) #9 ; 2 uses
  %i.i = add nsw i32 %0, -1                       ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.l = icmp eq i32 %i.i, 1
  br i1 %i.l, label %rb_scan_args_set.exit, label %.thread

.thread16:                                        ; preds = %bb.b
  %i.m = icmp eq i32 %0, 1
  br i1 %i.m, label %rb_scan_args_set.exit.thread, label %.thread

rb_scan_args_set.exit.thread:                     ; preds = %.thread16
  %i.n = load i64, ptr %1, align 8, !tbaa !11
  %i.o = getelementptr i8, ptr %3, i64 40
  store i32 1, ptr %i.o, align 8, !tbaa !15
  br label %extract_options.exit

.thread:                                          ; preds = %.thread16, %bb.a, %bb.d, %bb.c
  %.1.i6 = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ], [ %0, %bb.a ], [ %0, %.thread16 ]
  tail call void @rb_error_arity(i32 noundef %.1.i6, i32 noundef 1, i32 noundef 1) #11
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.p = getelementptr i8, ptr %3, i64 40
  store i32 1, ptr %i.p, align 8, !tbaa !15
  %i.q = icmp eq i64 %i.h, 4
  br i1 %i.q, label %extract_options.exit, label %bb.e

bb.e:                                             ; preds = %rb_scan_args_set.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %3, ptr %4, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.h, ptr %i.r, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.s = ptrtoint ptr %4 to i64
  %i.t = call i64 @rb_protect(ptr noundef nonnull @build_options, i64 noundef %i.s, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !7
  %.not.i3 = icmp eq i32 %i.u, 0
  br i1 %.not.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @pm_options_free(ptr noundef nonnull %3) #9
  %i.v = load i32, ptr %i.a, align 4, !tbaa !7
  call void @rb_jump_tag(i32 noundef %i.v) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %extract_options.exit

extract_options.exit:                             ; preds = %rb_scan_args_set.exit.thread, %rb_scan_args_set.exit, %bb.g
  %i.w = phi i64 [ %i.n, %rb_scan_args_set.exit.thread ], [ %i.k, %rb_scan_args_set.exit ], [ %i.k, %bb.g ] ; 4 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i64 %i.w, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %extract_options.exit
  %i.ab = inttoptr i64 %i.w to ptr                ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 5
  br i1 %i.ae, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %extract_options.exit
  %i.af = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.ag = call i64 @rb_obj_class(i64 noundef %i.w) #9
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @.str.62, i64 noundef %i.ag) #11
  unreachable

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ah = and i64 %i.ac, 8192
  %.not.i.i = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr i8, ptr %i.ab, i64 24     ; 2 uses
  br i1 %.not.i.i, label %input_load_string.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  br label %input_load_string.exit

input_load_string.exit:                           ; preds = %bb.h, %bb.i
  %i.ak = phi ptr [ %i.aj, %bb.i ], [ %i.ai, %bb.h ]
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !50
  call void @pm_string_constant_init(ptr noundef nonnull %2, ptr noundef %i.ak, i64 noundef %i.am) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @parse_lex_input(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pm_parser, align 8          ; 14 uses
  %4 = alloca %struct.parse_lex_data_t, align 8   ; 8 uses
  %5 = alloca %struct.pm_lex_callback_t, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = tail call ptr @pm_string_source(ptr noundef nonnull %0) #9
  %i.b = tail call i64 @pm_string_length(ptr noundef nonnull %0) #9
  call void @pm_parser_init(ptr noundef nonnull %3, ptr noundef %i.a, i64 noundef %i.b, ptr noundef nonnull %1) #9
  call void @pm_parser_register_encoding_changed_callback(ptr noundef nonnull %3, ptr noundef nonnull @parse_lex_encoding_changed_callback) #9
  %i.c = call ptr @pm_string_source(ptr noundef nonnull %0) #9
  %i.d = call i64 @pm_string_length(ptr noundef nonnull %0) #9
  %i.e = call i64 @rb_str_new(ptr noundef %i.c, i64 noundef %i.d) #9 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = call i64 @rb_ary_new_capa(i64 noundef %i.g) #9 ; 3 uses
  %i.i = load i64, ptr @rb_cPrismSource, align 8, !tbaa !11
  %i.j = load i64, ptr @rb_id_source_for, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.i, i64 noundef %i.j, i32 noundef 3, i64 noundef %i.e, i64 noundef %i.o, i64 noundef %i.h) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i64 %i.p, ptr %4, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = call i64 @rb_ary_new() #9
  store i64 %i.r, ptr %i.q, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = call nonnull ptr @rb_utf8_encoding() #9
  store ptr %i.t, ptr %i.s, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = getelementptr i8, ptr %1, i64 97         ; 6 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !43, !range !44, !noundef !45
  store i8 %i.w, ptr %i.u, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.x, i8 0, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %4, ptr %5, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @parse_lex_token, ptr %i.y, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 544
  store ptr %5, ptr %i.z, align 8, !tbaa !65
  %i.aa = call ptr @pm_parse(ptr noundef nonnull %3) #9 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 520
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = call ptr @rb_enc_find(ptr noundef %i.ae) #9
  %i.ag = call i64 @rb_enc_associate(i64 noundef %i.e, ptr noundef %i.af) #9 ; 0 uses
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !54
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 624
  br label %bb.b

._crit_edge:                                      ; preds = %rb_ulong2num_inline.exit, %bb.a
  %i.aj = load i8, ptr %i.v, align 1, !tbaa !43, !range !44, !noundef !45
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %rb_ulong2num_inline.exit
  %.035 = phi i64 [ 0, %.lr.ph ], [ %i.at, %rb_ulong2num_inline.exit ] ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %.035
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 4611686018427387904
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = shl nuw nsw i64 %i.an, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %rb_ulong2num_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.ar = call i64 @rb_uint2big(i64 noundef %i.an) #9
  br label %rb_ulong2num_inline.exit

rb_ulong2num_inline.exit:                         ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.aq, %bb.c ], [ %i.ar, %bb.d ]
  %i.as = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %.0.i) #9 ; 0 uses
  %i.at = add nuw i64 %.035, 1                    ; 2 uses
  %i.au = load i64, ptr %i.f, align 8, !tbaa !54
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !67

bb.e:                                             ; preds = %._crit_edge
  %i.aw = call i64 @rb_obj_freeze(i64 noundef %i.e) #9 ; 0 uses
  %i.ax = call i64 @rb_obj_freeze(i64 noundef %i.h) #9 ; 0 uses
  %i.ay = call i64 @rb_obj_freeze(i64 noundef %i.p) #9 ; 0 uses
  %i.az = load i64, ptr %i.q, align 8, !tbaa !59
  %i.ba = call i64 @rb_obj_freeze(i64 noundef %i.az) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %2, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bb = call i64 @rb_ary_new_capa(i64 noundef 2) #9 ; 4 uses
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.bd = load i8, ptr %i.v, align 1, !tbaa !43, !range !44, !noundef !45
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = call i64 @pm_ast_new(ptr noundef nonnull %3, ptr noundef %i.aa, ptr noundef %i.bc, i64 noundef %i.p, i1 noundef zeroext %i.be) #9
  %i.bg = call i64 @rb_ary_push(i64 noundef %i.bb, i64 noundef %i.bf) #9 ; 0 uses
  %i.bh = load i64, ptr %i.q, align 8, !tbaa !59
  %i.bi = call i64 @rb_ary_push(i64 noundef %i.bb, i64 noundef %i.bh) #9 ; 0 uses
  %i.bj = load i8, ptr %i.v, align 1, !tbaa !43, !range !44, !noundef !45
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = call i64 @rb_obj_freeze(i64 noundef %i.bb) #9 ; 0 uses
  %.pre = load i8, ptr %i.v, align 1, !tbaa !43, !range !44
  %i.bm = trunc nuw i8 %.pre to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bn = phi i1 [ %i.bm, %bb.h ], [ false, %bb.g ]
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !60
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.q, align 8, !tbaa !59
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.br = load i8, ptr %i.v, align 1, !tbaa !43, !range !44, !noundef !45
  %i.bs = trunc nuw i8 %i.br to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink39 = phi i1 [ %i.bs, %bb.j ], [ %i.bn, %bb.i ]
  %.sink38 = phi ptr [ %i.bq, %bb.j ], [ %i.bo, %bb.i ]
  %.034 = phi i64 [ %i.bp, %bb.j ], [ %i.bb, %bb.i ]
  %.sink.in = phi ptr [ @rb_cPrismLexResult, %bb.j ], [ @rb_cPrismParseLexResult, %bb.i ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !11
  %6 = call fastcc i64 @parse_result_create(i64 noundef %.sink, ptr noundef %3, i64 noundef %.034, ptr noundef %.sink38, i64 noundef %i.p, i1 noundef zeroext %.sink39)
  call void @pm_node_destroy(ptr noundef nonnull %3, ptr noundef %i.aa) #9
  call void @pm_parser_free(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i64 %6
}

declare void @pm_string_free(ptr noundef) local_unnamed_addr #2

declare void @pm_options_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @extract_options(ptr noundef nonnull initializes((40, 44)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.build_options_data, align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = icmp eq i64 %2, 4
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %0, ptr %3, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.e = ptrtoint ptr %3 to i64
  %i.f = call i64 @rb_protect(ptr noundef nonnull @build_options, i64 noundef %i.e, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @pm_options_free(ptr noundef nonnull %0) #9
  %i.h = load i32, ptr %i.a, align 4, !tbaa !7
  call void @rb_jump_tag(i32 noundef %i.h) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.i = icmp eq i64 %1, 4
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i64 %1, 0
  %i.k = and i64 %1, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.n = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 5
  br i1 %i.q, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit
  call void @pm_options_free(ptr noundef nonnull %0) #9
  %i.r = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.s = call i64 @rb_obj_class(i64 noundef %1) #9
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.62, i64 noundef %i.s) #11
  unreachable

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.t = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.t, 0
  %i.u = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.g, %bb.h
  %i.w = phi ptr [ %i.v, %bb.h ], [ %i.u, %bb.g ]
  call void @pm_options_filepath_set(ptr noundef nonnull %0, ptr noundef %i.w) #9
  br label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit, %bb.e
  ret void
}

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_new() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rb_keyword_given_p() local_unnamed_addr #2

declare i64 @rb_protect(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @build_options(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @rb_hash_foreach(i64 noundef %i.c, ptr noundef nonnull @build_options_i, i64 noundef %i.e) #9
  ret i64 4
}

; Function Attrs: noreturn
declare void @rb_jump_tag(i32 noundef) local_unnamed_addr #3

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #2

declare void @pm_options_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @build_options_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 12 uses
  %i.b = tail call i64 @rb_sym2id(i64 noundef %0) #9 ; 10 uses
  %i.c = load i64, ptr @rb_id_option_filepath, align 8, !tbaa !11
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 4
  br i1 %i.e, label %bb.ax, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  %i.g = and i64 %1, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.j = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 5
  br i1 %i.m, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.n = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.o = tail call i64 @rb_obj_class(i64 noundef %1) #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.62, i64 noundef %i.o) #11
  unreachable

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.p = and i64 %i.k, 8192
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br i1 %.not.i.i, label %check_string.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  br label %check_string.exit

check_string.exit:                                ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @pm_options_filepath_set(ptr noundef %i.a, ptr noundef %i.s) #9
  br label %bb.ax

bb.f:                                             ; preds = %bb.a
  %i.t = load i64, ptr @rb_id_option_encoding, align 8, !tbaa !11
  %i.u = icmp eq i64 %i.b, %i.t
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  switch i64 %1, label %bb.i [
    i64 4, label %bb.ax
    i64 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @pm_options_encoding_locked_set(ptr noundef %i.a, i1 noundef zeroext true) #9
  br label %bb.ax

bb.i:                                             ; preds = %bb.g
  %i.v = tail call ptr @rb_to_encoding(i64 noundef %1) #9
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val = load ptr, ptr %i.w, align 8, !tbaa !52
  tail call void @pm_options_encoding_set(ptr noundef %i.a, ptr noundef %.val) #9
  br label %bb.ax

bb.j:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_id_option_line, align 8, !tbaa !11
  %i.y = icmp eq i64 %i.b, %i.x
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.z = icmp eq i64 %1, 4
  br i1 %i.z, label %bb.ax, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = trunc i64 %1 to i1
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
end_hunk_0
