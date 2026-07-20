inline.NumInlined: 144
inline.NumDeleted: 38
begin_hunk_0_@parse_lex_input:bb.a
  %i.bw = call fastcc i64 @parse_result_create(i64 noundef %i.br, ptr noundef %3, i64 noundef %i.bs, ptr noundef %i.bt, i64 noundef %i.p, i1 noundef zeroext %i.bv)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.034 = phi i64 [ %i.bq, %bb.i ], [ %i.bw, %bb.j ]
  call void @pm_node_destroy(ptr noundef nonnull %3, ptr noundef %i.aa) #9
  call void @pm_parser_free(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i64 %.034
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
  br i1 %i.e, label %bb.aq, label %bb.c

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
  br label %bb.aq

bb.f:                                             ; preds = %bb.a
  %i.t = load i64, ptr @rb_id_option_encoding, align 8, !tbaa !11
  %i.u = icmp eq i64 %i.b, %i.t
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  switch i64 %1, label %bb.i [
    i64 4, label %bb.aq
    i64 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @pm_options_encoding_locked_set(ptr noundef %i.a, i1 noundef zeroext true) #9
  br label %bb.aq

bb.i:                                             ; preds = %bb.g
  %i.v = tail call ptr @rb_to_encoding(i64 noundef %1) #9
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val = load ptr, ptr %i.w, align 8, !tbaa !52
  tail call void @pm_options_encoding_set(ptr noundef %i.a, ptr noundef %.val) #9
  br label %bb.aq

bb.j:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_id_option_line, align 8, !tbaa !11
  %i.y = icmp eq i64 %i.b, %i.x
  br i1 %i.y, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  switch i64 %1, label %bb.l [
    i64 4, label %bb.aq
    i64 0, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = tail call i64 @rb_fix2int(i64 noundef 1) #9
  br label %rb_num2int_inline.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = tail call i64 @rb_num2int(i64 noundef 0) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.l, %bb.m
  %.0.i = phi i64 [ %i.z, %bb.l ], [ %i.aa, %bb.m ]
  %i.ab = trunc i64 %.0.i to i32
  tail call void @pm_options_line_set(ptr noundef %i.a, i32 noundef %i.ab) #9
  br label %bb.aq

bb.n:                                             ; preds = %bb.j
  %i.ac = load i64, ptr @rb_id_option_frozen_string_literal, align 8, !tbaa !11
  %i.ad = icmp eq i64 %i.b, %i.ac
  br i1 %i.ad, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp eq i64 %1, 4
  br i1 %i.ae, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = and i64 %1, -5
  %i.ag = icmp ne i64 %i.af, 0
  tail call void @pm_options_frozen_string_literal_set(ptr noundef %i.a, i1 noundef zeroext %i.ag) #9
  br label %bb.aq

bb.q:                                             ; preds = %bb.n
  %i.ah = load i64, ptr @rb_id_option_version, align 8, !tbaa !11
  %i.ai = icmp eq i64 %i.b, %i.ah
  br i1 %i.ai, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.aj = icmp eq i64 %1, 4
  br i1 %i.aj, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call fastcc ptr @check_string(i64 noundef %1) ; 2 uses
  %i.al = inttoptr i64 %1 to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !50 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 7
  br i1 %i.ao, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ap = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(8) @.str.63, i64 noundef 7) #10
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ar = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.as = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @build_options_i.rbimpl_id, ptr noundef @.str.64) #12
  %i.at = tail call i64 @rb_const_get(i64 noundef %i.ar, i64 noundef %i.as) #9
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !47
  %i.aw = and i64 %i.av, 8192
  %.not.i = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.u, %bb.v
  %i.az = phi ptr [ %i.ay, %bb.v ], [ %i.ax, %bb.u ] ; 2 uses
  %i.ba = tail call zeroext i1 @pm_options_version_set(ptr noundef %i.a, ptr noundef %i.az, i64 noundef 3) #9
  br i1 %i.ba, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %RSTRING_PTR.exit
  %i.bb = load i64, ptr @rb_cPrismCurrentVersionError, align 8, !tbaa !11
  %i.bc = tail call i64 @rb_exc_new_cstr(i64 noundef %i.bb, ptr noundef %i.az) #9
  tail call void @rb_exc_raise(i64 noundef %i.bc) #11
  unreachable

bb.x:                                             ; preds = %bb.t, %bb.s
  %i.bd = tail call zeroext i1 @pm_options_version_set(ptr noundef %i.a, ptr noundef %i.ak, i64 noundef %i.an) #9
  br i1 %i.bd, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @.str.65, i64 noundef %1) #11
  unreachable

bb.z:                                             ; preds = %bb.q
  %i.bf = load i64, ptr @rb_id_option_scopes, align 8, !tbaa !11
  %i.bg = icmp eq i64 %i.b, %i.bf
  br i1 %i.bg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bh = icmp eq i64 %1, 4
  br i1 %i.bh, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @build_options_scopes(ptr noundef %i.a, i64 noundef %1)
  br label %bb.aq

bb.ac:                                            ; preds = %bb.z
  %i.bi = load i64, ptr @rb_id_option_command_line, align 8, !tbaa !11
  %i.bj = icmp eq i64 %i.b, %i.bi
  br i1 %i.bj, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bk = icmp eq i64 %1, 4
  br i1 %i.bk, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = tail call fastcc ptr @check_string(i64 noundef %1) ; 2 uses
  %i.bm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #10 ; 2 uses
  %.not = icmp eq i64 %i.bm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %switch.lookup, %bb.ae
  %.067.lcssa = phi i8 [ 0, %bb.ae ], [ %i.bt, %switch.lookup ]
  tail call void @pm_options_command_line_set(ptr noundef %i.a, i8 noundef zeroext %.067.lcssa) #9
  br label %bb.aq

.lr.ph:                                           ; preds = %bb.ae, %switch.lookup
  %.072 = phi i64 [ %i.bu, %switch.lookup ], [ 0, %bb.ae ] ; 2 uses
  %.06771 = phi i8 [ %i.bt, %switch.lookup ], [ 0, %bb.ae ]
  %i.bn = getelementptr i8, ptr %i.bl, i64 %.072
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !49  ; 2 uses
  %switch.tableidx = add i8 %i.bo, -97            ; 3 uses
  %i.bp = icmp ult i8 %switch.tableidx, 24
  br i1 %i.bp, label %switch.hole_check, label %bb.af

bb.af:                                            ; preds = %switch.hole_check, %.lr.ph
  %i.bq = sext i8 %i.bo to i32
  %i.br = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.br, ptr noundef nonnull @.str.66, i32 noundef %i.bq) #11
  unreachable

switch.hole_check:                                ; preds = %.lr.ph
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8431633, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.af

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bs = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.build_options_i, i64 %i.bs
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.bt = or i8 %.06771, %switch.load             ; 2 uses
  %i.bu = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.bm
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

bb.ag:                                            ; preds = %bb.ac
  %i.bv = load i64, ptr @rb_id_option_main_script, align 8, !tbaa !11
  %i.bw = icmp eq i64 %i.b, %i.bv
  br i1 %i.bw, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %1, 4
  br i1 %i.bx, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = and i64 %1, -5
  %i.bz = icmp ne i64 %i.by, 0
  tail call void @pm_options_main_script_set(ptr noundef %i.a, i1 noundef zeroext %i.bz) #9
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ag
  %i.ca = load i64, ptr @rb_id_option_partial_script, align 8, !tbaa !11
  %i.cb = icmp eq i64 %i.b, %i.ca
  br i1 %i.cb, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cc = icmp eq i64 %1, 4
  br i1 %i.cc, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = and i64 %1, -5
  %i.ce = icmp ne i64 %i.cd, 0
  tail call void @pm_options_partial_script_set(ptr noundef %i.a, i1 noundef zeroext %i.ce) #9
  br label %bb.aq

bb.am:                                            ; preds = %bb.aj
  %i.cf = load i64, ptr @rb_id_option_freeze, align 8, !tbaa !11
  %i.cg = icmp eq i64 %i.b, %i.cf
  br i1 %i.cg, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ch = icmp eq i64 %1, 4
  br i1 %i.ch, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = and i64 %1, -5
  %i.cj = icmp ne i64 %i.ci, 0
  tail call void @pm_options_freeze_set(ptr noundef %i.a, i1 noundef zeroext %i.cj) #9
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.ck = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ck, ptr noundef nonnull @.str.67, i64 noundef %0) #11
  unreachable

bb.aq:                                            ; preds = %bb.k, %bb.g, %bb.x, %RSTRING_PTR.exit, %bb.h, %bb.i, %bb.p, %bb.o, %bb.ab, %bb.aa, %bb.ai, %bb.ah, %bb.ao, %bb.an, %bb.ak, %bb.al, %bb.ad, %._crit_edge, %bb.r, %rb_num2int_inline.exit, %bb.b, %check_string.exit
  ret i32 0
}

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @check_string(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.j = tail call i64 @rb_obj_class(i64 noundef %0) #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.62, i64 noundef %i.j) #11
  unreachable

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %bb.b ]
  ret ptr %i.n
}

declare void @pm_options_encoding_locked_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @pm_options_encoding_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_to_encoding(i64 noundef) local_unnamed_addr #2

declare void @pm_options_line_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pm_options_frozen_string_literal_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

declare zeroext i1 @pm_options_version_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #3

declare i64 @rb_exc_new_cstr(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @build_options_scopes(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit69.thread, label %rbimpl_RB_TYPE_P_fastpath.exit69

rbimpl_RB_TYPE_P_fastpath.exit69:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 3 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit69.thread

rbimpl_RB_TYPE_P_fastpath.exit69.thread:          ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit69
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.j = tail call i64 @rb_obj_class(i64 noundef %1) #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.68, i64 noundef %i.j) #11
  unreachable

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit69
  %i.k = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.f, 15
  %i.m = and i64 %i.l, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !49
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i70 = phi i64 [ %i.m, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = tail call zeroext i1 @pm_options_scopes_init(ptr noundef %0, i64 noundef %.0.i70) #9
  br i1 %i.p, label %.preheader91, label %bb.e

.preheader91:                                     ; preds = %rb_array_len.exit
  %.not119 = icmp eq i64 %.0.i70, 0
  br i1 %.not119, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %.preheader91
  %i.q = getelementptr i8, ptr %0, i64 80
  br label %bb.f

bb.e:                                             ; preds = %rb_array_len.exit
  %i.r = load i64, ptr @rb_eNoMemError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.69) #11
  unreachable

._crit_edge118:                                   ; preds = %._crit_edge, %.preheader91
  ret void

bb.f:                                             ; preds = %.lr.ph117, %._crit_edge
  %.0116 = phi i64 [ 0, %.lr.ph117 ], [ %i.cs, %._crit_edge ] ; 3 uses
  %i.s = tail call i64 @rb_ary_entry(i64 noundef %1, i64 noundef %.0116) #10 ; 8 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i64 %i.s, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %rbimpl_RB_TYPE_P_fastpath.exit67.thread, label %rbimpl_RB_TYPE_P_fastpath.exit67

rbimpl_RB_TYPE_P_fastpath.exit67:                 ; preds = %bb.f
  %i.x = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 7
  br i1 %i.aa, label %.loopexit, label %rbimpl_RB_TYPE_P_fastpath.exit67.thread

rbimpl_RB_TYPE_P_fastpath.exit67.thread:          ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit67
  %i.ab = load i64, ptr @rb_cPrismScope, align 8, !tbaa !11
  %i.ac = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.s, i64 noundef %i.ab) #9
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit67.thread
  %.pr.i = load i64, ptr @build_options_scopes.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.ad = tail call i64 @rb_intern2(ptr noundef nonnull @.str.70, i64 noundef 7) #9 ; 3 uses
  store i64 %i.ad, ptr @build_options_scopes.rbimpl_id, align 8, !tbaa !11
  %.not.i71 = icmp eq i64 %i.ad, 0
  br i1 %.not.i71, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !13

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.g
  %.lcssa.i = phi i64 [ %.pr.i, %bb.g ], [ %i.ad, %.lr.ph.i ]
  %i.ae = tail call i64 @rb_ivar_get(i64 noundef %i.s, i64 noundef %.lcssa.i) #9 ; 6 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = and i64 %i.ae, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %rbimpl_RB_TYPE_P_fastpath.exit65.thread, label %rbimpl_RB_TYPE_P_fastpath.exit65

rbimpl_RB_TYPE_P_fastpath.exit65:                 ; preds = %rbimpl_intern_const.exit
  %i.aj = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.al = and i64 %i.ak, 31
  %i.am = icmp eq i64 %i.al, 7
  br i1 %i.am, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit65.thread

rbimpl_RB_TYPE_P_fastpath.exit65.thread:          ; preds = %rbimpl_intern_const.exit, %rbimpl_RB_TYPE_P_fastpath.exit65
  %i.an = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.ao = tail call i64 @rb_obj_class(i64 noundef %i.ae) #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.68, i64 noundef %i.ao) #11
  unreachable

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit65
  %.pr.i72 = load i64, ptr @build_options_scopes.rbimpl_id.71, align 8, !tbaa !11 ; 2 uses
  %.not4.i73 = icmp eq i64 %.pr.i72, 0
  br i1 %.not4.i73, label %.lr.ph.i75, label %rbimpl_intern_const.exit77

.lr.ph.i75:                                       ; preds = %bb.h, %.lr.ph.i75
  %i.ap = tail call i64 @rb_intern2(ptr noundef nonnull @.str.72, i64 noundef 11) #9 ; 3 uses
  store i64 %i.ap, ptr @build_options_scopes.rbimpl_id.71, align 8, !tbaa !11
  %.not.i76 = icmp eq i64 %i.ap, 0
  br i1 %.not.i76, label %.lr.ph.i75, label %rbimpl_intern_const.exit77, !llvm.loop !13

rbimpl_intern_const.exit77:                       ; preds = %.lr.ph.i75, %bb.h
  %.lcssa.i74 = phi i64 [ %.pr.i72, %bb.h ], [ %i.ap, %.lr.ph.i75 ]
  %i.aq = tail call i64 @rb_ivar_get(i64 noundef %i.s, i64 noundef %.lcssa.i74) #9 ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = and i64 %i.aq, 7
  %i.at = icmp ne i64 %i.as, 0
  %i.au = or i1 %i.ar, %i.at
  br i1 %i.au, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rbimpl_intern_const.exit77
  %i.av = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !47 ; 3 uses
  %i.ax = and i64 %i.aw, 31
  %i.ay = icmp eq i64 %i.ax, 7
end_hunk_0
