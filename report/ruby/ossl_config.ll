inline.NumInlined: 69
inline.NumDeleted: 35
begin_hunk_0_@Init_ossl_config:bb.a
  %i.ac = load i64, ptr @cConfig, align 8, !tbaa !27
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.14, ptr noundef nonnull @config_inspect, i32 noundef 0) #7
  %i.ad = tail call ptr @CONF_get1_default_config_file() #7 ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #9 ; 3 uses
  %i.af = add i64 %i.ae, 2147483648
  %.not.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i, label %rb_long2int_inline.exit, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  tail call void @rb_out_of_int(i64 noundef %i.ae) #10
  unreachable

rb_long2int_inline.exit:                          ; preds = %rb_class_of.exit
  %i.ag = trunc nsw i64 %i.ae to i32
  %i.ah = tail call i64 @ossl_buf2str(ptr noundef nonnull %i.ad, i32 noundef %i.ag) #7
  %i.ai = tail call i64 @rb_obj_freeze(i64 noundef %i.ah) #7
  %i.aj = load i64, ptr @cConfig, align 8, !tbaa !27
  tail call void @rb_define_const(i64 noundef %i.aj, ptr noundef nonnull @.str.15, i64 noundef %i.ai) #7
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_include_module(i64 noundef, i64 noundef) local_unnamed_addr #3

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @config_s_parse(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !27
  %i.c = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_config_type) #7 ; 6 uses
  %i.d = tail call ptr @NCONF_new(ptr noundef null) #7 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %config_s_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @eConfigError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.e, ptr noundef nonnull @.str.19) #8
  unreachable

config_s_alloc.exit:                              ; preds = %bb.a
  %i.f = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !18
  %i.h = icmp eq i64 %i.c, 0
  %i.i = and i64 %i.c, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !10

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %config_s_alloc.exit
  %i.l = load i64, ptr %i.f, align 8, !tbaa !11
  %i.m = and i64 %i.l, 95
  %or.cond.not.i.i = icmp eq i64 %i.m, 76
  br i1 %or.cond.not.i.i, label %RTYPEDDATA_GET_DATA.exit.i.i, label %.critedge.i.i, !prof !14

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = trunc i64 %i.o to i1
  %spec.select = select i1 %i.q, ptr %i.g, ptr %i.d ; 2 uses
  %i.r = icmp eq i64 %i.p, ptrtoint (ptr @ossl_config_type to i64)
  br i1 %i.r, label %GetConfig.exit, label %.preheader.i.i.preheader, !prof !19

.preheader.i.i.preheader:                         ; preds = %RTYPEDDATA_GET_DATA.exit.i.i
  %i.s = inttoptr i64 %i.p to ptr
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.c
  %.016.i.i = phi ptr [ %i.u, %bb.c ], [ %i.s, %.preheader.i.i.preheader ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %i.v = icmp eq ptr %i.u, @ossl_config_type
  br i1 %i.v, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !25

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %config_s_alloc.exit
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @ossl_config_type) #7
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.c, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.w, %.critedge.i.i ], [ %spec.select, %bb.c ] ; 2 uses
  %.not.i5 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i5, label %bb.d, label %GetConfig.exit

bb.d:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str) #8
  unreachable

GetConfig.exit:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %rbimpl_check_typeddata.exit.i
  %.1.i.i9 = phi ptr [ %.1.i.i, %rbimpl_check_typeddata.exit.i ], [ %spec.select, %RTYPEDDATA_GET_DATA.exit.i.i ]
  %i.y = call ptr @ossl_obj2bio(ptr noundef nonnull %i.b) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 -1, ptr %i.a, align 8, !tbaa !27
  %i.z = call i32 @NCONF_load_bio(ptr noundef nonnull %.1.i.i9, ptr noundef %i.y, ptr noundef nonnull %i.a) #7
  %.not.i6 = icmp eq i32 %i.z, 0
  %i.aa = call i32 @BIO_free(ptr noundef %i.y) #7 ; 0 uses
  br i1 %.not.i6, label %bb.e, label %config_load_bio.exit

bb.e:                                             ; preds = %GetConfig.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1
  %i.ad = load i64, ptr @eConfigError, align 8, !tbaa !27 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.17) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.18, i64 noundef %i.ab) #8
  unreachable

config_load_bio.exit:                             ; preds = %GetConfig.exit
  call void @ossl_clear_error() #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ae = call i64 @rb_obj_freeze(i64 noundef %i.c) #7 ; 0 uses
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal i64 @config_s_parse_config(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @config_s_parse(i64 noundef %0, i64 noundef %1) ; 2 uses
  %i.b = tail call i64 @config_get_sections(i64 noundef %i.a) ; 2 uses
  %i.c = tail call i64 @rb_hash_new() #7          ; 2 uses
  %i.d = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.e ]     ; 3 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %i.f, 15
  %i.i = and i64 %i.h, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !28
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  %i.k = icmp slt i64 %.0, %.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_array_len.exit
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.b, i64 noundef %.0) #9 ; 2 uses
  %i.m = tail call i64 @config_get_section(i64 noundef %i.a, i64 noundef %i.l)
  %i.n = tail call i64 @rb_hash_aset(i64 noundef %i.c, i64 noundef %i.l, i64 noundef %i.m) #7 ; 0 uses
  %i.o = add nuw nsw i64 %.0, 1
  br label %bb.b, !llvm.loop !29

bb.f:                                             ; preds = %rb_array_len.exit
  ret i64 %i.c
}

declare void @rb_define_alias(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @config_s_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_config_type) #7 ; 2 uses
  %i.b = tail call ptr @NCONF_new(ptr noundef null) #7 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @eConfigError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.c, ptr noundef nonnull @.str.19) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !18
  ret i64 %i.a
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i64 1, -7) i64 @config_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7                            ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !10

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !14

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15   ; 2 uses
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
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @ossl_config_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !19

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %i.u = icmp eq ptr %i.t, @ossl_config_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !25

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_config_type) #7
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i8 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i8, label %bb.e, label %GetConfig.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str) #8
  unreachable

GetConfig.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.x = icmp slt i32 %0, 0
  br i1 %i.x, label %bb.f, label %.preheader.split.split

.preheader.split.split:                           ; preds = %GetConfig.exit
  %.not18 = icmp eq i32 %0, 0
  br i1 %.not18, label %.split.us.thread, label %.split.us

.split.us.thread:                                 ; preds = %.preheader.split.split
  store i64 4, ptr %i.b, align 8, !tbaa !27
  br label %rb_scan_args_set.exit

.split.us:                                        ; preds = %.preheader.split.split
  %i.y = load i64, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.z = icmp eq i32 %0, 1
  store i64 %i.y, ptr %i.b, align 8, !tbaa !27
  br i1 %i.z, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %.split.us, %GetConfig.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #8
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us.thread, %.split.us
  %i.aa = phi i64 [ 4, %.split.us.thread ], [ %i.y, %.split.us ]
  %i.ab = icmp ne i64 %2, 0
  %i.ac = icmp eq i64 %i.d, 0
  %.not3.i.i = and i1 %i.ab, %i.ac
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !30

RB_OBJ_FROZEN.exit.i:                             ; preds = %rb_scan_args_set.exit
  %i.ad = inttoptr i64 %2 to ptr
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11 ; 3 uses
  %i.af = and i64 %i.ae, 2048
  %.not.i9 = icmp eq i64 %i.af, 0
  br i1 %.not.i9, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !31

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %rb_scan_args_set.exit
  tail call void @rb_error_frozen_object(i64 noundef %2) #8
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.ag = and i64 %i.ae, 31
  %i.ah = icmp ne i64 %i.ag, 5
  %i.ai = and i64 %i.ae, 49152
  %.not8.i = icmp eq i64 %i.ai, 0
  %or.cond.i = or i1 %i.ah, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.g, !prof !32

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %2) #7
  %.pre = load i64, ptr %i.b, align 8, !tbaa !27
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.g
  %3 = phi i64 [ %i.aa, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.g ]
  %i.aj = icmp eq i64 %3, 4
  br i1 %i.aj, label %bb.n, label %bb.h

bb.h:                                             ; preds = %rb_check_frozen_inline.exit
  %i.ak = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #7
  %i.al = call ptr @BIO_new_file(ptr noundef %i.ak, ptr noundef nonnull @.str.21) #7 ; 3 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr @eConfigError, align 8, !tbaa !27
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.am, ptr noundef nonnull @.str.22) #8
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 -1, ptr %i.a, align 8, !tbaa !27
  %i.an = call i32 @NCONF_load_bio(ptr noundef nonnull %.1.i.i, ptr noundef nonnull %i.al, ptr noundef nonnull %i.a) #7
  %.not.i10 = icmp eq i32 %i.an, 0
  %i.ao = call i32 @BIO_free(ptr noundef nonnull %i.al) #7 ; 0 uses
  br i1 %.not.i10, label %bb.k, label %config_load_bio.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.aq = icmp slt i64 %i.ap, 1
  %i.ar = load i64, ptr @eConfigError, align 8, !tbaa !27 ; 2 uses
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.17) #8
  unreachable

bb.m:                                             ; preds = %bb.k
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.18, i64 noundef %i.ap) #8
  unreachable

config_load_bio.exit:                             ; preds = %bb.j
  call void @ossl_clear_error() #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.n

bb.n:                                             ; preds = %config_load_bio.exit, %rb_check_frozen_inline.exit
  %i.as = call i64 @rb_obj_freeze(i64 noundef %2) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, -7) i64 @config_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7                            ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !10

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !14

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15   ; 2 uses
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
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @ossl_config_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !19

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %i.u = icmp eq ptr %i.t, @ossl_config_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !25

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_config_type) #7
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.v, %.critedge.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %GetConfig.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str) #8
  unreachable

GetConfig.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.pr.i = load i64, ptr @config_initialize_copy.rbimpl_id, align 8, !tbaa !27 ; 2 uses
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %GetConfig.exit, %.lr.ph.i
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.12, i64 noundef 4) #7 ; 3 uses
  store i64 %i.x, ptr @config_initialize_copy.rbimpl_id, align 8, !tbaa !27
  %.not.i7 = icmp eq i64 %i.x, 0
  br i1 %.not.i7, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !33

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %GetConfig.exit
  %.lcssa.i = phi i64 [ %.pr.i, %GetConfig.exit ], [ %i.x, %.lr.ph.i ]
  %i.y = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef %.lcssa.i, i32 noundef 0) #7
  store i64 %i.y, ptr %i.b, align 8, !tbaa !27
  %i.z = icmp ne i64 %0, 0
  %i.aa = icmp eq i64 %i.d, 0
  %.not3.i.i = and i1 %i.z, %i.aa
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !30

RB_OBJ_FROZEN.exit.i:                             ; preds = %rbimpl_intern_const.exit
  %i.ab = inttoptr i64 %0 to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11 ; 3 uses
  %i.ad = and i64 %i.ac, 2048
  %.not.i8 = icmp eq i64 %i.ad, 0
  br i1 %.not.i8, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !31

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %rbimpl_intern_const.exit
  tail call void @rb_error_frozen_object(i64 noundef %0) #8
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.ae = and i64 %i.ac, 31
  %i.af = icmp ne i64 %i.ae, 5
  %i.ag = and i64 %i.ac, 49152
  %.not8.i = icmp eq i64 %i.ag, 0
  %or.cond.i = or i1 %i.af, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.f, !prof !32

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #7
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f
  %i.ah = call ptr @ossl_obj2bio(ptr noundef nonnull %i.b) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 -1, ptr %i.a, align 8, !tbaa !27
  %i.ai = call i32 @NCONF_load_bio(ptr noundef nonnull %.1.i.i, ptr noundef %i.ah, ptr noundef nonnull %i.a) #7
  %.not.i9 = icmp eq i32 %i.ai, 0
  %i.aj = call i32 @BIO_free(ptr noundef %i.ah) #7 ; 0 uses
  br i1 %.not.i9, label %bb.g, label %config_load_bio.exit

bb.g:                                             ; preds = %rb_check_frozen_inline.exit
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.al = icmp slt i64 %i.ak, 1
  %i.am = load i64, ptr @eConfigError, align 8, !tbaa !27 ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.am, ptr noundef nonnull @.str.17) #8
  unreachable

bb.i:                                             ; preds = %bb.g
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.am, ptr noundef nonnull @.str.18, i64 noundef %i.ak) #8
  unreachable

config_load_bio.exit:                             ; preds = %rb_check_frozen_inline.exit
  call void @ossl_clear_error() #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.an = call i64 @rb_obj_freeze(i64 noundef %0) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @config_get_value(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  store i64 %2, ptr %i.b, align 8, !tbaa !27
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !10

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i = icmp eq i64 %i.i, 76
end_hunk_0
