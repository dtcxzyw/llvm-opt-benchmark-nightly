inline.NumInlined: 220
inline.NumDeleted: 32
begin_hunk_0_@Init_ossl_ocsp:bb.a
  tail call void @rb_define_const(i64 noundef %i.cq, ptr noundef nonnull @.str.65, i64 noundef 1) #5
  %i.cr = load i64, ptr @mOCSP, align 8, !tbaa !10
  tail call void @rb_define_const(i64 noundef %i.cr, ptr noundef nonnull @.str.66, i64 noundef 3) #5
  %i.cs = load i64, ptr @mOCSP, align 8, !tbaa !10
  tail call void @rb_define_const(i64 noundef %i.cs, ptr noundef nonnull @.str.67, i64 noundef 5) #5
  %i.ct = load i64, ptr @mOCSP, align 8, !tbaa !10
  tail call void @rb_define_const(i64 noundef %i.ct, ptr noundef nonnull @.str.68, i64 noundef 1) #5
  %i.cu = load i64, ptr @mOCSP, align 8, !tbaa !10
  tail call void @rb_define_const(i64 noundef %i.cu, ptr noundef nonnull @.str.69, i64 noundef 3) #5
  ret void
}

declare i64 @rb_define_module_under(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ocspreq_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_ocsp_request_type) #5 ; 2 uses
  %i.b = tail call ptr @OCSP_REQUEST_new() #5     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @eOCSPError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.c, ptr noundef null) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !12
  ret i64 %i.a
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @ossl_ocspreq_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !16

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #6
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i15, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #5
  %.pre = load i64, ptr %i.d, align 8, !tbaa !17
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i15

rbimpl_RB_TYPE_P_fastpath.exit.i15:               ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.k = and i64 %i.j, 95
  %or.cond.not.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i, label %bb.c, label %.critedge.i, !prof !20

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.e
  %.016.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i16 = icmp eq ptr %.016.i, null
  br i1 %.not.i16, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = icmp eq ptr %i.v, @ossl_ocsp_request_type
  br i1 %i.w, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.x = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.x, %.critedge.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.y = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.y, ptr noundef nonnull @.str.70) #6
  unreachable

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = icmp eq i64 %1, 0
  %i.aa = and i64 %1, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %.critedge.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i17, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i17:               ; preds = %bb.g
  %i.ad = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = and i64 %i.ae, 95
  %or.cond.not.i18 = icmp eq i64 %i.af, 76
  br i1 %or.cond.not.i18, label %bb.h, label %.critedge.i19, !prof !20

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = and i64 %i.ah, -2                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = trunc i64 %i.ah to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  br i1 %i.ak, label %RTYPEDDATA_GET_DATA.exit.i21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i21

RTYPEDDATA_GET_DATA.exit.i21:                     ; preds = %bb.i, %bb.h
  %i.an = phi ptr [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %i.ao = icmp eq i64 %i.ai, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.ao, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !prof !22

.preheader.i22:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i21, %bb.j
  %.016.i23 = phi ptr [ %i.aq, %bb.j ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i21 ] ; 2 uses
  %.not.i24 = icmp eq ptr %.016.i23, null
  br i1 %.not.i24, label %.critedge.i19, label %bb.j

bb.j:                                             ; preds = %.preheader.i22
  %i.ap = getelementptr inbounds nuw i8, ptr %.016.i23, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, @ossl_ocsp_request_type
  br i1 %i.ar, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !llvm.loop !28

.critedge.i19:                                    ; preds = %.preheader.i22, %rbimpl_RB_TYPE_P_fastpath.exit.i17, %bb.g
  %i.as = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit25

rbimpl_check_typeddata.exit25:                    ; preds = %bb.j, %RTYPEDDATA_GET_DATA.exit.i21, %.critedge.i19
  %.1.i20 = phi ptr [ %i.as, %.critedge.i19 ], [ %i.an, %RTYPEDDATA_GET_DATA.exit.i21 ], [ %i.an, %bb.j ] ; 2 uses
  %.not13 = icmp eq ptr %.1.i20, null
  br i1 %.not13, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.at = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.at, ptr noundef nonnull @.str.70) #6
  unreachable

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.au = tail call ptr @OCSP_REQUEST_it() #5
  %i.av = tail call ptr @ASN1_item_dup(ptr noundef %i.au, ptr noundef nonnull %.1.i20) #5 ; 2 uses
  %.not14 = icmp eq ptr %i.av, null
  br i1 %.not14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = load i64, ptr @eOCSPError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aw, ptr noundef nonnull @.str.72) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !12
  tail call void @OCSP_REQUEST_free(ptr noundef nonnull %.1.i) #5
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspreq_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.b, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.a
  %.not21 = icmp eq i32 %0, 0
  br i1 %.not21, label %rb_scan_args_set.exit.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.d = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.e = icmp eq i32 %0, 1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !10
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %rb_scan_args_set.exit.thread, label %bb.c

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.g = icmp eq i64 %2, 0
  %i.h = and i64 %2, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.k = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = and i64 %i.l, 95
  %or.cond.not.i = icmp eq i64 %i.m, 76
  br i1 %or.cond.not.i, label %bb.d, label %.critedge.i, !prof !20

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = trunc i64 %i.o to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  br i1 %i.r, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.v = icmp eq i64 %i.p, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.v, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.f
  %.016.i = phi ptr [ %i.x, %bb.f ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %.016.i, null
  br i1 %.not.i12, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = icmp eq ptr %i.x, @ossl_ocsp_request_type
  br i1 %i.y, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.z = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i11 = phi ptr [ %i.z, %.critedge.i ], [ %i.u, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.u, %bb.f ] ; 2 uses
  %.not = icmp eq ptr %.1.i11, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.aa = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.70) #6
  unreachable

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit
  %3 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ab = tail call i64 @ossl_to_der_if_possible(i64 noundef %3) #5
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !10
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = and i64 %i.af, 8192
  %.not.i13 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  br i1 %.not.i13, label %RSTRING_PTR.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.h, %bb.i
  %i.aj = phi ptr [ %i.ai, %bb.i ], [ %i.ah, %bb.h ]
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.am = call ptr @d2i_OCSP_REQUEST(ptr noundef null, ptr noundef nonnull %i.b, i64 noundef %i.al) #5 ; 2 uses
  %.not10 = icmp eq ptr %i.am, null
  br i1 %.not10, label %bb.j, label %bb.k

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %i.an = load i64, ptr @eOCSPError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.an, ptr noundef nonnull @.str.74) #6
  unreachable

bb.k:                                             ; preds = %RSTRING_PTR.exit
  %i.ao = inttoptr i64 %2 to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !12
  call void @OCSP_REQUEST_free(ptr noundef nonnull %.1.i11) #5
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split, %bb.k, %rb_scan_args_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspreq_add_nonce(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.b, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.a
  %.not32 = icmp eq i32 %0, 0
  br i1 %.not32, label %rb_scan_args_set.exit.thread, label %.split.us

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split
  store i64 4, ptr %i.a, align 8, !tbaa !10
  br label %bb.c

.split.us:                                        ; preds = %.preheader.split.split
  %i.c = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.d = icmp eq i32 %0, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !10
  br i1 %i.d, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.e = icmp eq i64 %i.c, 4
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %rb_scan_args_set.exit.thread, %rb_scan_args_set.exit
  %i.f = icmp eq i64 %2, 0
  %i.g = and i64 %2, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = and i64 %i.k, 95
  %or.cond.not.i = icmp eq i64 %i.l, 76
  br i1 %or.cond.not.i, label %bb.d, label %.critedge.i, !prof !20

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = and i64 %i.n, -2                         ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = trunc i64 %i.n to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  br i1 %i.q, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.s, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = icmp eq i64 %i.o, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.u, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.f
  %.016.i = phi ptr [ %i.w, %bb.f ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i14 = icmp eq ptr %.016.i, null
  br i1 %.not.i14, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = icmp eq ptr %i.w, @ossl_ocsp_request_type
  br i1 %i.x, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.y = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i13 = phi ptr [ %i.y, %.critedge.i ], [ %i.t, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.t, %bb.f ] ; 2 uses
  %.not11 = icmp eq ptr %.1.i13, null
  br i1 %.not11, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.z, ptr noundef nonnull @.str.70) #6
  unreachable

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.aa = tail call i32 @OCSP_request_add1_nonce(ptr noundef nonnull %.1.i13, ptr noundef null, i32 noundef -1) #5
  br label %bb.q

bb.i:                                             ; preds = %rb_scan_args_set.exit
  %i.ab = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ac = icmp eq i64 %2, 0
  %i.ad = and i64 %2, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %.critedge.i17, label %rbimpl_RB_TYPE_P_fastpath.exit.i15, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i15:               ; preds = %bb.i
  %i.ag = inttoptr i64 %2 to ptr                  ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = and i64 %i.ah, 95
  %or.cond.not.i16 = icmp eq i64 %i.ai, 76
  br i1 %or.cond.not.i16, label %bb.j, label %.critedge.i17, !prof !20

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = and i64 %i.ak, -2                       ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = trunc i64 %i.ak to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  br i1 %i.an, label %RTYPEDDATA_GET_DATA.exit.i19, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i19

RTYPEDDATA_GET_DATA.exit.i19:                     ; preds = %bb.k, %bb.j
  %i.aq = phi ptr [ %i.ap, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %i.ar = icmp eq i64 %i.al, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.ar, label %rbimpl_check_typeddata.exit23, label %.preheader.i20, !prof !22

.preheader.i20:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i19, %bb.l
  %.016.i21 = phi ptr [ %i.at, %bb.l ], [ %i.am, %RTYPEDDATA_GET_DATA.exit.i19 ] ; 2 uses
  %.not.i22 = icmp eq ptr %.016.i21, null
  br i1 %.not.i22, label %.critedge.i17, label %bb.l

bb.l:                                             ; preds = %.preheader.i20
  %i.as = getelementptr inbounds nuw i8, ptr %.016.i21, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.au = icmp eq ptr %i.at, @ossl_ocsp_request_type
  br i1 %i.au, label %rbimpl_check_typeddata.exit23, label %.preheader.i20, !llvm.loop !28

.critedge.i17:                                    ; preds = %.preheader.i20, %rbimpl_RB_TYPE_P_fastpath.exit.i15, %bb.i
  %i.av = call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit23

rbimpl_check_typeddata.exit23:                    ; preds = %bb.l, %RTYPEDDATA_GET_DATA.exit.i19, %.critedge.i17
  %.1.i18 = phi ptr [ %i.av, %.critedge.i17 ], [ %i.aq, %RTYPEDDATA_GET_DATA.exit.i19 ], [ %i.aq, %bb.l ] ; 2 uses
  %.not = icmp eq ptr %.1.i18, null
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rbimpl_check_typeddata.exit23
  %i.aw = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aw, ptr noundef nonnull @.str.70) #6
  unreachable

bb.n:                                             ; preds = %rbimpl_check_typeddata.exit23
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = and i64 %i.az, 8192
  %.not.i24 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  br i1 %.not.i24, label %RSTRING_PTR.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@ossl_ocspres_s_create:bb.a

bb.i:                                             ; preds = %rb_num2int_inline.exit, %rbimpl_check_typeddata.exit
  %.0 = phi ptr [ %.1.i, %rbimpl_check_typeddata.exit ], [ null, %rb_num2int_inline.exit ]
  %i.aa = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_ocsp_response_type) #5 ; 2 uses
  %i.ab = tail call ptr @OCSP_response_create(i32 noundef %i.d, ptr noundef %.0) #5 ; 2 uses
  %.not12 = icmp eq ptr %i.ab, null
  br i1 %.not12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @eOCSPError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ac, ptr noundef null) #6
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = inttoptr i64 %i.aa to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !12
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ocspres_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_ocsp_response_type) #5 ; 2 uses
  %i.b = tail call ptr @OCSP_RESPONSE_new() #5    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @eOCSPError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.c, ptr noundef null) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !12
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @ossl_ocspres_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !16

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #6
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i15, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #5
  %.pre = load i64, ptr %i.d, align 8, !tbaa !17
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i15

rbimpl_RB_TYPE_P_fastpath.exit.i15:               ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.k = and i64 %i.j, 95
  %or.cond.not.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i, label %bb.c, label %.critedge.i, !prof !20

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @ossl_ocsp_response_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.e
  %.016.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i16 = icmp eq ptr %.016.i, null
  br i1 %.not.i16, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = icmp eq ptr %i.v, @ossl_ocsp_response_type
  br i1 %i.w, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.x = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_response_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.x, %.critedge.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.y = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.y, ptr noundef nonnull @.str.75) #6
  unreachable

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = icmp eq i64 %1, 0
  %i.aa = and i64 %1, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %.critedge.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i17, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i17:               ; preds = %bb.g
  %i.ad = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = and i64 %i.ae, 95
  %or.cond.not.i18 = icmp eq i64 %i.af, 76
  br i1 %or.cond.not.i18, label %bb.h, label %.critedge.i19, !prof !20

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = and i64 %i.ah, -2                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = trunc i64 %i.ah to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  br i1 %i.ak, label %RTYPEDDATA_GET_DATA.exit.i21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i21

RTYPEDDATA_GET_DATA.exit.i21:                     ; preds = %bb.i, %bb.h
  %i.an = phi ptr [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %i.ao = icmp eq i64 %i.ai, ptrtoint (ptr @ossl_ocsp_response_type to i64)
  br i1 %i.ao, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !prof !22

.preheader.i22:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i21, %bb.j
  %.016.i23 = phi ptr [ %i.aq, %bb.j ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i21 ] ; 2 uses
  %.not.i24 = icmp eq ptr %.016.i23, null
  br i1 %.not.i24, label %.critedge.i19, label %bb.j

bb.j:                                             ; preds = %.preheader.i22
  %i.ap = getelementptr inbounds nuw i8, ptr %.016.i23, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, @ossl_ocsp_response_type
  br i1 %i.ar, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !llvm.loop !28

.critedge.i19:                                    ; preds = %.preheader.i22, %rbimpl_RB_TYPE_P_fastpath.exit.i17, %bb.g
  %i.as = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @ossl_ocsp_response_type) #5
  br label %rbimpl_check_typeddata.exit25

rbimpl_check_typeddata.exit25:                    ; preds = %bb.j, %RTYPEDDATA_GET_DATA.exit.i21, %.critedge.i19
  %.1.i20 = phi ptr [ %i.as, %.critedge.i19 ], [ %i.an, %RTYPEDDATA_GET_DATA.exit.i21 ], [ %i.an, %bb.j ] ; 2 uses
  %.not13 = icmp eq ptr %.1.i20, null
  br i1 %.not13, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.at = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.at, ptr noundef nonnull @.str.75) #6
  unreachable

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.au = tail call ptr @OCSP_RESPONSE_it() #5
  %i.av = tail call ptr @ASN1_item_dup(ptr noundef %i.au, ptr noundef nonnull %.1.i20) #5 ; 2 uses
  %.not14 = icmp eq ptr %i.av, null
  br i1 %.not14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = load i64, ptr @eOCSPError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aw, ptr noundef nonnull @.str.72) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !12
  tail call void @OCSP_RESPONSE_free(ptr noundef nonnull %.1.i) #5
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspres_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.b, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.a
  %.not21 = icmp eq i32 %0, 0
  br i1 %.not21, label %rb_scan_args_set.exit.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.d = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.e = icmp eq i32 %0, 1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !10
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %rb_scan_args_set.exit.thread, label %bb.c

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.g = icmp eq i64 %2, 0
  %i.h = and i64 %2, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.k = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = and i64 %i.l, 95
  %or.cond.not.i = icmp eq i64 %i.m, 76
  br i1 %or.cond.not.i, label %bb.d, label %.critedge.i, !prof !20

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = trunc i64 %i.o to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  br i1 %i.r, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.v = icmp eq i64 %i.p, ptrtoint (ptr @ossl_ocsp_response_type to i64)
  br i1 %i.v, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.f
  %.016.i = phi ptr [ %i.x, %bb.f ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %.016.i, null
  br i1 %.not.i12, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = icmp eq ptr %i.x, @ossl_ocsp_response_type
  br i1 %i.y, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.z = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ocsp_response_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i11 = phi ptr [ %i.z, %.critedge.i ], [ %i.u, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.u, %bb.f ] ; 2 uses
  %.not = icmp eq ptr %.1.i11, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.aa = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.75) #6
  unreachable

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit
  %3 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ab = tail call i64 @ossl_to_der_if_possible(i64 noundef %3) #5
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !10
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = and i64 %i.af, 8192
  %.not.i13 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  br i1 %.not.i13, label %RSTRING_PTR.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.h, %bb.i
  %i.aj = phi ptr [ %i.ai, %bb.i ], [ %i.ah, %bb.h ]
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.am = call ptr @d2i_OCSP_RESPONSE(ptr noundef null, ptr noundef nonnull %i.b, i64 noundef %i.al) #5 ; 2 uses
  %.not10 = icmp eq ptr %i.am, null
  br i1 %.not10, label %bb.j, label %bb.k

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %i.an = load i64, ptr @eOCSPError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.an, ptr noundef nonnull @.str.86) #6
  unreachable

bb.k:                                             ; preds = %RSTRING_PTR.exit
  %i.ao = inttoptr i64 %2 to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !12
  call void @OCSP_RESPONSE_free(ptr noundef nonnull %.1.i11) #5
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split, %bb.k, %rb_scan_args_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @ossl_ocspres_status(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !20

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ocsp_response_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ocsp_response_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_response_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.75) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = tail call i32 @OCSP_response_status(ptr noundef nonnull %.1.i) #5
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  ret i64 %i.y
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ocspres_status_string(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !20

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ocsp_response_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ocsp_response_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_response_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.75) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = tail call i32 @OCSP_response_status(ptr noundef nonnull %.1.i) #5
  %i.w = sext i32 %i.v to i64
  %i.x = tail call ptr @OCSP_response_status_str(i64 noundef %i.w) #5
  %i.y = tail call i64 @rb_str_new_cstr(ptr noundef %i.x) #5
  ret i64 %i.y
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ocspres_get_basic(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !20

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

end_hunk_1
begin_hunk_2_@ossl_ocspres_to_der:bb.a
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.am = and i64 %i.al, 8192
  %.not.i12 = icmp eq i64 %i.am, 0
  br i1 %.not.i12, label %RSTRING_PTR.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !31
  br label %RSTRING_PTR.exit13

RSTRING_PTR.exit13:                               ; preds = %bb.k, %bb.l
  %i.ao = phi ptr [ %i.an, %bb.l ], [ %i.ae, %bb.k ]
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @rb_str_set_len(i64 noundef %i.aa, i64 noundef %i.ar) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ocspbres_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5 ; 2 uses
  %i.b = tail call ptr @OCSP_BASICRESP_new() #5   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @eOCSPError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.c, ptr noundef null) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !12
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @ossl_ocspbres_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !16

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #6
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i15, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #5
  %.pre = load i64, ptr %i.d, align 8, !tbaa !17
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i15

rbimpl_RB_TYPE_P_fastpath.exit.i15:               ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.k = and i64 %i.j, 95
  %or.cond.not.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i, label %bb.c, label %.critedge.i, !prof !20

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @ossl_ocsp_basicresp_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.e
  %.016.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i16 = icmp eq ptr %.016.i, null
  br i1 %.not.i16, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = icmp eq ptr %i.v, @ossl_ocsp_basicresp_type
  br i1 %i.w, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.x = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.x, %.critedge.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.y = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.y, ptr noundef nonnull @.str.75) #6
  unreachable

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = icmp eq i64 %1, 0
  %i.aa = and i64 %1, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %.critedge.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i17, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i17:               ; preds = %bb.g
  %i.ad = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = and i64 %i.ae, 95
  %or.cond.not.i18 = icmp eq i64 %i.af, 76
  br i1 %or.cond.not.i18, label %bb.h, label %.critedge.i19, !prof !20

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = and i64 %i.ah, -2                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = trunc i64 %i.ah to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  br i1 %i.ak, label %RTYPEDDATA_GET_DATA.exit.i21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i21

RTYPEDDATA_GET_DATA.exit.i21:                     ; preds = %bb.i, %bb.h
  %i.an = phi ptr [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %i.ao = icmp eq i64 %i.ai, ptrtoint (ptr @ossl_ocsp_basicresp_type to i64)
  br i1 %i.ao, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !prof !22

.preheader.i22:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i21, %bb.j
  %.016.i23 = phi ptr [ %i.aq, %bb.j ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i21 ] ; 2 uses
  %.not.i24 = icmp eq ptr %.016.i23, null
  br i1 %.not.i24, label %.critedge.i19, label %bb.j

bb.j:                                             ; preds = %.preheader.i22
  %i.ap = getelementptr inbounds nuw i8, ptr %.016.i23, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, @ossl_ocsp_basicresp_type
  br i1 %i.ar, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !llvm.loop !28

.critedge.i19:                                    ; preds = %.preheader.i22, %rbimpl_RB_TYPE_P_fastpath.exit.i17, %bb.g
  %i.as = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5
  br label %rbimpl_check_typeddata.exit25

rbimpl_check_typeddata.exit25:                    ; preds = %bb.j, %RTYPEDDATA_GET_DATA.exit.i21, %.critedge.i19
  %.1.i20 = phi ptr [ %i.as, %.critedge.i19 ], [ %i.an, %RTYPEDDATA_GET_DATA.exit.i21 ], [ %i.an, %bb.j ] ; 2 uses
  %.not13 = icmp eq ptr %.1.i20, null
  br i1 %.not13, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.at = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.at, ptr noundef nonnull @.str.75) #6
  unreachable

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.au = tail call ptr @OCSP_BASICRESP_it() #5
  %i.av = tail call ptr @ASN1_item_dup(ptr noundef %i.au, ptr noundef nonnull %.1.i20) #5 ; 2 uses
  %.not14 = icmp eq ptr %i.av, null
  br i1 %.not14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = load i64, ptr @eOCSPError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aw, ptr noundef nonnull @.str.72) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !12
  tail call void @OCSP_BASICRESP_free(ptr noundef nonnull %.1.i) #5
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspbres_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.b, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.a
  %.not21 = icmp eq i32 %0, 0
  br i1 %.not21, label %rb_scan_args_set.exit.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.d = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.e = icmp eq i32 %0, 1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !10
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %rb_scan_args_set.exit.thread, label %bb.c

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.g = icmp eq i64 %2, 0
  %i.h = and i64 %2, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.k = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = and i64 %i.l, 95
  %or.cond.not.i = icmp eq i64 %i.m, 76
  br i1 %or.cond.not.i, label %bb.d, label %.critedge.i, !prof !20

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = trunc i64 %i.o to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  br i1 %i.r, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %i.v = icmp eq i64 %i.p, ptrtoint (ptr @ossl_ocsp_basicresp_type to i64)
  br i1 %i.v, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.f
  %.016.i = phi ptr [ %i.x, %bb.f ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %.016.i, null
  br i1 %.not.i12, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = icmp eq ptr %i.x, @ossl_ocsp_basicresp_type
  br i1 %i.y, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.z = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i11 = phi ptr [ %i.z, %.critedge.i ], [ %i.u, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.u, %bb.f ] ; 2 uses
  %.not = icmp eq ptr %.1.i11, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.aa = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.75) #6
  unreachable

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit
  %3 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ab = tail call i64 @ossl_to_der_if_possible(i64 noundef %3) #5
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !10
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ag = and i64 %i.af, 8192
  %.not.i13 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  br i1 %.not.i13, label %RSTRING_PTR.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.h, %bb.i
  %i.aj = phi ptr [ %i.ai, %bb.i ], [ %i.ah, %bb.h ]
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !33
  %i.am = call ptr @d2i_OCSP_BASICRESP(ptr noundef null, ptr noundef nonnull %i.b, i64 noundef %i.al) #5 ; 2 uses
  %.not10 = icmp eq ptr %i.am, null
  br i1 %.not10, label %bb.j, label %bb.k

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %i.an = load i64, ptr @eOCSPError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.an, ptr noundef nonnull @.str.87) #6
  unreachable

bb.k:                                             ; preds = %RSTRING_PTR.exit
  %i.ao = inttoptr i64 %2 to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !12
  call void @OCSP_BASICRESP_free(ptr noundef nonnull %.1.i11) #5
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split, %bb.k, %rb_scan_args_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @ossl_ocspbres_copy_nonce(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !20

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ocsp_basicresp_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ocsp_basicresp_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.75) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = icmp eq i64 %1, 0
  %i.w = and i64 %1, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %.critedge.i10, label %rbimpl_RB_TYPE_P_fastpath.exit.i8, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i8:                ; preds = %bb.f
  %i.z = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17
  %i.ab = and i64 %i.aa, 95
  %or.cond.not.i9 = icmp eq i64 %i.ab, 76
  br i1 %or.cond.not.i9, label %bb.g, label %.critedge.i10, !prof !20

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  %i.ae = and i64 %i.ad, -2                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = trunc i64 %i.ad to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  br i1 %i.ag, label %RTYPEDDATA_GET_DATA.exit.i12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i12

RTYPEDDATA_GET_DATA.exit.i12:                     ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ak = icmp eq i64 %i.ae, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.ak, label %rbimpl_check_typeddata.exit16, label %.preheader.i13, !prof !22

.preheader.i13:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i12, %bb.i
  %.016.i14 = phi ptr [ %i.am, %bb.i ], [ %i.af, %RTYPEDDATA_GET_DATA.exit.i12 ] ; 2 uses
  %.not.i15 = icmp eq ptr %.016.i14, null
  br i1 %.not.i15, label %.critedge.i10, label %bb.i

bb.i:                                             ; preds = %.preheader.i13
  %i.al = getelementptr inbounds nuw i8, ptr %.016.i14, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %i.an = icmp eq ptr %i.am, @ossl_ocsp_request_type
  br i1 %i.an, label %rbimpl_check_typeddata.exit16, label %.preheader.i13, !llvm.loop !28

.critedge.i10:                                    ; preds = %.preheader.i13, %rbimpl_RB_TYPE_P_fastpath.exit.i8, %bb.f
  %i.ao = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit16

rbimpl_check_typeddata.exit16:                    ; preds = %bb.i, %RTYPEDDATA_GET_DATA.exit.i12, %.critedge.i10
  %.1.i11 = phi ptr [ %i.ao, %.critedge.i10 ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i12 ], [ %i.aj, %bb.i ] ; 2 uses
  %.not7 = icmp eq ptr %.1.i11, null
  br i1 %.not7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit16
  %i.ap = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.70) #6
  unreachable

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit16
  %i.aq = tail call i32 @OCSP_copy_nonce(ptr noundef nonnull %.1.i, ptr noundef nonnull %.1.i11) #5
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  ret i64 %i.at
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspbres_add_nonce(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.b, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.a
  %.not32 = icmp eq i32 %0, 0
  br i1 %.not32, label %rb_scan_args_set.exit.thread, label %.split.us

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split
  store i64 4, ptr %i.a, align 8, !tbaa !10
  br label %bb.c

.split.us:                                        ; preds = %.preheader.split.split
  %i.c = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.d = icmp eq i32 %0, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !10
  br i1 %i.d, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.e = icmp eq i64 %i.c, 4
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %rb_scan_args_set.exit.thread, %rb_scan_args_set.exit
  %i.f = icmp eq i64 %2, 0
  %i.g = and i64 %2, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
end_hunk_2
