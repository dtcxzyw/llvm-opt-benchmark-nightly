inline.NumInlined: 81
inline.NumDeleted: 25
begin_hunk_0_@Init_ripper:bb.a
  store i64 %i.c, ptr @id_gets, align 8, !tbaa !10
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 2) #5
  store i64 %i.d, ptr @id_assoc, align 8, !tbaa !10
  tail call void @InitVM_ripper()
  ret void
}

declare void @ripper_init_eventids1() local_unnamed_addr #3

declare void @ripper_init_eventids2() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @InitVM_ripper() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str.5, i64 noundef %i.a) #5 ; 39 uses
  %i.c = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.7, i64 noundef 5) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.6, i64 noundef %i.c) #5
  tail call void @rb_define_alloc_func(i64 noundef %i.b, ptr noundef nonnull @ripper_s_allocate) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.8, ptr noundef nonnull @ripper_initialize, i32 noundef -1) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.9, ptr noundef nonnull @ripper_parse, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.10, ptr noundef nonnull @ripper_column, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.11, ptr noundef nonnull @ripper_filename, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.12, ptr noundef nonnull @ripper_lineno, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.13, ptr noundef nonnull @ripper_state, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.14, ptr noundef nonnull @ripper_token, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.15, ptr noundef nonnull @ripper_parser_end_seen_p, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.16, ptr noundef nonnull @ripper_parser_encoding, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.17, ptr noundef nonnull @ripper_parser_get_yydebug, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.18, ptr noundef nonnull @ripper_parser_set_yydebug, i32 noundef 1) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.19, ptr noundef nonnull @ripper_parser_get_debug_output, i32 noundef 0) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.20, ptr noundef nonnull @ripper_parser_set_debug_output, i32 noundef 1) #5
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.21, ptr noundef nonnull @ripper_error_p, i32 noundef 0) #5
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.22, ptr noundef nonnull @parser_dedent_string, i32 noundef 2) #5
  tail call void @rb_define_private_method(i64 noundef %i.b, ptr noundef nonnull @.str.22, ptr noundef nonnull @parser_dedent_string, i32 noundef 2) #5
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.23, ptr noundef nonnull @ripper_lex_state_name, i32 noundef 1) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.24, i64 noundef 3) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.25, i64 noundef 5) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.26, i64 noundef 9) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.27, i64 noundef 17) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.28, i64 noundef 33) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.29, i64 noundef 65) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.30, i64 noundef 129) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.31, i64 noundef 257) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.32, i64 noundef 513) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.33, i64 noundef 1025) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.34, i64 noundef 2049) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.35, i64 noundef 4097) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.36, i64 noundef 8193) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.37, i64 noundef 3) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.38, i64 noundef 1155) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.39, i64 noundef 97) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.40, i64 noundef 29) #5
  tail call void @rb_define_const(i64 noundef %i.b, ptr noundef nonnull @.str.41, i64 noundef 1) #5
  tail call void @ripper_init_eventids1_table(i64 noundef %i.b) #5
  tail call void @ripper_init_eventids2_table(i64 noundef %i.b) #5
  ret void
}

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @ripper_s_allocate(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 32, ptr noundef nonnull @parser_data_type) #5 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  %i.i = tail call ptr @rb_ruby_ripper_parser_allocate() #5 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !19
  tail call void @rb_ruby_parser_set_value(ptr noundef %i.i, i64 noundef %i.a) #5
  ret i64 %i.a
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i64 @ripper_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e                         ; 2 uses
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !24

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @parser_data_type to i64)
  br i1 %i.r, label %ripper_parser_params.exit.thread, label %.preheader.i.i, !prof !25

ripper_parser_params.exit.thread:                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !19
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.u, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.v = icmp eq ptr %i.u, @parser_data_type
  br i1 %i.v, label %ripper_parser_params.exit, label %.preheader.i.i, !llvm.loop !31

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @parser_data_type) #5
  br label %ripper_parser_params.exit

ripper_parser_params.exit:                        ; preds = %bb.d, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.w, %.critedge.i.i ], [ %i.q, %bb.d ]
  %i.x = load ptr, ptr %.1.i.i, align 8, !tbaa !19 ; 2 uses
  br i1 %i.f, label %.critedge.i, label %ripper_parser_params.exit.rbimpl_RB_TYPE_P_fastpath.exit.i_crit_edge, !prof !32

ripper_parser_params.exit.rbimpl_RB_TYPE_P_fastpath.exit.i_crit_edge: ; preds = %ripper_parser_params.exit
  %.pre = inttoptr i64 %2 to ptr
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %ripper_parser_params.exit.rbimpl_RB_TYPE_P_fastpath.exit.i_crit_edge, %ripper_parser_params.exit.thread
  %.pre-phi = phi ptr [ %.pre, %ripper_parser_params.exit.rbimpl_RB_TYPE_P_fastpath.exit.i_crit_edge ], [ %i.g, %ripper_parser_params.exit.thread ] ; 3 uses
  %i.y = phi ptr [ %i.x, %ripper_parser_params.exit.rbimpl_RB_TYPE_P_fastpath.exit.i_crit_edge ], [ %i.s, %ripper_parser_params.exit.thread ] ; 4 uses
  %i.z = load i64, ptr %.pre-phi, align 8, !tbaa !23
  %i.aa = and i64 %i.z, 95
  %or.cond.not.i = icmp eq i64 %i.aa, 76
  br i1 %or.cond.not.i, label %bb.e, label %.critedge.i, !prof !24

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.ad = and i64 %i.ac, -2                       ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = trunc i64 %i.ac to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 32 ; 2 uses
  br i1 %i.af, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.f, %bb.e
  %i.ai = phi ptr [ %i.ah, %bb.f ], [ %i.ag, %bb.e ] ; 2 uses
  %i.aj = icmp eq i64 %i.ad, ptrtoint (ptr @parser_data_type to i64)
  br i1 %i.aj, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !25

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.g
  %.016.i = phi ptr [ %i.al, %bb.g ], [ %i.ae, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i20 = icmp eq ptr %.016.i, null
  br i1 %.not.i20, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.am = icmp eq ptr %i.al, @parser_data_type
  br i1 %i.am, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !31

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %ripper_parser_params.exit
  %i.an = phi ptr [ %i.x, %ripper_parser_params.exit ], [ %i.y, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.y, %.preheader.i ]
  %i.ao = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @parser_data_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.g, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %i.ap = phi ptr [ %i.an, %.critedge.i ], [ %i.y, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.y, %bb.g ] ; 3 uses
  %.1.i = phi ptr [ %i.ao, %.critedge.i ], [ %i.ai, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.ai, %bb.g ] ; 6 uses
  %i.aq = icmp slt i32 %0, 1
  br i1 %i.aq, label %bb.m, label %.preheader

.preheader:                                       ; preds = %rbimpl_check_typeddata.exit
  %i.ar = load i64, ptr %1, align 8, !tbaa !10    ; 8 uses
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !10
  %.not42 = icmp eq i32 %0, 1
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10 ; 2 uses
  store i64 %i.at, ptr %i.b, align 8, !tbaa !10
  %i.au = icmp eq i64 %i.at, 4
  br label %bb.j

bb.i:                                             ; preds = %.preheader
  store i64 4, ptr %i.b, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = phi i1 [ %i.au, %bb.h ], [ true, %bb.i ]
  %.286.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]    ; 4 uses
  %i.aw = icmp samesign ult i32 %.286.i, %0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = zext nneg i32 %.286.i to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.ba = add nuw nsw i32 %.286.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.043 = phi i64 [ %i.az, %bb.k ], [ 4, %bb.j ]  ; 4 uses
  %.286.i.1 = phi i32 [ %i.ba, %bb.k ], [ %.286.i, %bb.j ]
  %i.bb = icmp eq i32 %.286.i.1, %0
  br i1 %i.bb, label %rb_scan_args_set.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %rbimpl_check_typeddata.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.l
  %i.bc = icmp eq i64 %i.ar, 0
  %i.bd = and i64 %i.ar, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_scan_args_set.exit
  %i.bg = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23
  %i.bi = and i64 %i.bh, 31
  %i.bj = icmp eq i64 %i.bi, 11
  br i1 %i.bj, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store i32 1, ptr %i.bk, align 8, !tbaa !33
  br label %.sink.split

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rb_scan_args_set.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bl = load i64, ptr @id_gets, align 8, !tbaa !10
  %i.bm = tail call i32 @rb_respond_to(i64 noundef %i.ar, i64 noundef %i.bl) #5
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store i32 2, ptr %i.bn, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  store i64 %i.ar, ptr %i.bo, align 8, !tbaa !34
  %i.bp = inttoptr i64 %i.ar to ptr
  br label %bb.q

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bq = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store i32 0, ptr %i.br, align 8, !tbaa !33
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.p
  %.sink44 = phi i64 [ 24, %bb.p ], [ 16, %bb.n ]
  %.sink = phi i64 [ 0, %bb.p ], [ %i.ar, %bb.n ]
  %.019.ph = phi ptr [ @ripper_lex_get_str, %bb.p ], [ @ripper_lex_io_get, %bb.n ]
  %.0.ph = phi ptr [ %i.bt, %bb.p ], [ %i.bg, %bb.n ]
  %3 = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.sink44
  store i64 %.sink, ptr %3, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  %.019 = phi ptr [ @ripper_lex_get_generic, %bb.o ], [ %.019.ph, %.sink.split ]
  %.0 = phi ptr [ %i.bp, %bb.o ], [ %.0.ph, %.sink.split ]
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call ptr @rb_ruby_parser_enc(ptr noundef %i.ap) #5
  %i.bv = call i64 @rb_enc_str_new_static(ptr noundef nonnull @.str.44, i64 noundef 8, ptr noundef %i.bu) #5 ; 2 uses
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !10
  call void @rb_obj_freeze_inline(i64 noundef %i.bv) #5
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bw = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !10
  %i.by = call i64 @rb_str_new_frozen(i64 noundef %i.bx) #5
  store i64 %i.by, ptr %i.b, align 8, !tbaa !10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @rb_ruby_ripper_parser_initialize(ptr noundef %i.ap) #5
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !23
  %i.cc = and i64 %i.cb, 8192
  %.not.i21 = icmp eq i64 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  br i1 %.not.i21, label %RSTRING_PTR.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !34
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.t, %bb.u
  %i.cf = phi ptr [ %i.ce, %bb.u ], [ %i.cd, %bb.t ]
  %i.cg = icmp eq i64 %.043, 4
  br i1 %i.cg, label %bb.y, label %bb.v

bb.v:                                             ; preds = %RSTRING_PTR.exit
  %i.ch = trunc i64 %.043 to i1
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = call i64 @rb_fix2int(i64 noundef %.043) #5
  br label %rb_num2int_inline.exit

bb.x:                                             ; preds = %bb.v
  %i.cj = call i64 @rb_num2int(i64 noundef %.043) #5
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.w, %bb.x
  %.0.i22 = phi i64 [ %i.ci, %bb.w ], [ %i.cj, %bb.x ]
  %i.ck = trunc i64 %.0.i22 to i32
  %i.cl = add nsw i32 %i.ck, -1
  br label %bb.y

bb.y:                                             ; preds = %RSTRING_PTR.exit, %rb_num2int_inline.exit
  %i.cm = phi i32 [ %i.cl, %rb_num2int_inline.exit ], [ 0, %RSTRING_PTR.exit ]
  call void @rb_ruby_parser_ripper_initialize(ptr noundef %i.ap, ptr noundef nonnull %.019, ptr noundef %.0, i64 noundef %i.bz, ptr noundef %i.cf, i32 noundef %i.cm) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal i64 @ripper_parse(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !10
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !24

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @parser_data_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !25

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = icmp eq ptr %i.t, @parser_data_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !31

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @parser_data_type) #5
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.d ]
  %i.w = load ptr, ptr %.1.i.i, align 8, !tbaa !19 ; 4 uses
  %i.x = tail call i32 @rb_ruby_ripper_initialized_p(ptr noundef %i.w) #5
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.e, label %ripper_parser_params.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.45) #6
  unreachable

ripper_parser_params.exit:                        ; preds = %rbimpl_check_typeddata.exit.i
  %i.z = tail call i64 @rb_ruby_parser_parsing_thread(ptr noundef %i.w) #5
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %ripper_parser_params.exit
  %i.ab = tail call i64 @rb_ruby_parser_parsing_thread(ptr noundef %i.w) #5
  %i.ac = tail call i64 @rb_thread_current() #5
  %i.ad = icmp eq i64 %i.ab, %i.ac
  %i.ae = load i64, ptr @rb_eArgError, align 8, !tbaa !10 ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.47) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.48) #6
  unreachable

bb.i:                                             ; preds = %ripper_parser_params.exit
  %i.af = tail call i64 @rb_thread_current() #5
  tail call void @rb_ruby_parser_set_parsing_thread(ptr noundef %i.w, i64 noundef %i.af) #5
  %i.ag = tail call i64 @rb_ensure(ptr noundef nonnull @ripper_parse0, i64 noundef %0, ptr noundef nonnull @ripper_ensure, i64 noundef %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr %i.a, ptr %i.b, align 8, !tbaa !35
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #5, !srcloc !37
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.ai = load volatile i64, ptr %i.ah, align 8, !tbaa !10 ; 0 uses
  ret i64 %i.ag
}

; Function Attrs: nounwind uwtable
define internal i64 @ripper_column(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !24

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @parser_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !25

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
end_hunk_0
