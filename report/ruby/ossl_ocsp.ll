inline.NumInlined: 220
inline.NumDeleted: 32
begin_hunk_0_@ossl_ocspreq_initialize:bb.a
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.b, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.a
  %.not21 = icmp eq i32 %0, 0
  br i1 %.not21, label %rb_scan_args_set.exit.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.d = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.e = icmp eq i32 %0, 1
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
  %i.ab = tail call i64 @ossl_to_der_if_possible(i64 noundef %i.d) #5
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
  br i1 %i.e, label %bb.c, label %bb.h

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
  br i1 %.not11, label %bb.g, label %3

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.z, ptr noundef nonnull @.str.70) #6
  unreachable

3:                                                ; preds = %rbimpl_check_typeddata.exit
  %4 = tail call i32 @OCSP_request_add1_nonce(ptr noundef nonnull %.1.i13, ptr noundef null, i32 noundef -1) #5
  br label %bb.p

bb.h:                                             ; preds = %rb_scan_args_set.exit
  %i.aa = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ab = icmp eq i64 %2, 0
  %i.ac = and i64 %2, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %.critedge.i17, label %rbimpl_RB_TYPE_P_fastpath.exit.i15, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i15:               ; preds = %bb.h
  %i.af = inttoptr i64 %2 to ptr                  ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = and i64 %i.ag, 95
  %or.cond.not.i16 = icmp eq i64 %i.ah, 76
  br i1 %or.cond.not.i16, label %bb.i, label %.critedge.i17, !prof !20

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.ak = and i64 %i.aj, -2                       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = trunc i64 %i.aj to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  br i1 %i.am, label %RTYPEDDATA_GET_DATA.exit.i19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i19

RTYPEDDATA_GET_DATA.exit.i19:                     ; preds = %bb.j, %bb.i
  %i.ap = phi ptr [ %i.ao, %bb.j ], [ %i.an, %bb.i ] ; 2 uses
  %i.aq = icmp eq i64 %i.ak, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.aq, label %rbimpl_check_typeddata.exit23, label %.preheader.i20, !prof !22

.preheader.i20:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i19, %bb.k
  %.016.i21 = phi ptr [ %i.as, %bb.k ], [ %i.al, %RTYPEDDATA_GET_DATA.exit.i19 ] ; 2 uses
  %.not.i22 = icmp eq ptr %.016.i21, null
  br i1 %.not.i22, label %.critedge.i17, label %bb.k

bb.k:                                             ; preds = %.preheader.i20
  %i.ar = getelementptr inbounds nuw i8, ptr %.016.i21, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %i.at = icmp eq ptr %i.as, @ossl_ocsp_request_type
  br i1 %i.at, label %rbimpl_check_typeddata.exit23, label %.preheader.i20, !llvm.loop !28

.critedge.i17:                                    ; preds = %.preheader.i20, %rbimpl_RB_TYPE_P_fastpath.exit.i15, %bb.h
  %i.au = call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit23

rbimpl_check_typeddata.exit23:                    ; preds = %bb.k, %RTYPEDDATA_GET_DATA.exit.i19, %.critedge.i17
  %.1.i18 = phi ptr [ %i.au, %.critedge.i17 ], [ %i.ap, %RTYPEDDATA_GET_DATA.exit.i19 ], [ %i.ap, %bb.k ] ; 2 uses
  %.not = icmp eq ptr %.1.i18, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit23
  %i.av = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.av, ptr noundef nonnull @.str.70) #6
  unreachable

bb.m:                                             ; preds = %rbimpl_check_typeddata.exit23
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.az = and i64 %i.ay, 8192
  %.not.i24 = icmp eq i64 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  br i1 %.not.i24, label %RSTRING_PTR.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.m, %bb.n
  %i.bc = phi ptr [ %i.bb, %bb.n ], [ %i.ba, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !33 ; 3 uses
  %i.bf = add i64 %i.be, 2147483648
  %.not.i.i = icmp ult i64 %i.bf, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit
  call void @rb_out_of_int(i64 noundef %i.be) #7
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit
  %i.bg = trunc nsw i64 %i.be to i32
  %5 = call i32 @OCSP_request_add1_nonce(ptr noundef nonnull %.1.i18, ptr noundef %i.bc, i32 noundef %i.bg) #5
  br label %bb.p

bb.p:                                             ; preds = %RSTRING_LENINT.exit, %3
  %.0 = phi i32 [ %4, %3 ], [ %5, %RSTRING_LENINT.exit ]
  %.not12 = icmp eq i32 %.0, 0
  br i1 %.not12, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr @eOCSPError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bh, ptr noundef null) #6
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @ossl_ocspreq_check_nonce(i64 noundef %0, i64 noundef %1) #0 {
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
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ocsp_request_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.70) #6
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
  %i.ak = icmp eq i64 %i.ae, ptrtoint (ptr @ossl_ocsp_basicresp_type to i64)
  br i1 %i.ak, label %rbimpl_check_typeddata.exit16, label %.preheader.i13, !prof !22

.preheader.i13:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i12, %bb.i
  %.016.i14 = phi ptr [ %i.am, %bb.i ], [ %i.af, %RTYPEDDATA_GET_DATA.exit.i12 ] ; 2 uses
  %.not.i15 = icmp eq ptr %.016.i14, null
  br i1 %.not.i15, label %.critedge.i10, label %bb.i

bb.i:                                             ; preds = %.preheader.i13
  %i.al = getelementptr inbounds nuw i8, ptr %.016.i14, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %i.an = icmp eq ptr %i.am, @ossl_ocsp_basicresp_type
  br i1 %i.an, label %rbimpl_check_typeddata.exit16, label %.preheader.i13, !llvm.loop !28

.critedge.i10:                                    ; preds = %.preheader.i13, %rbimpl_RB_TYPE_P_fastpath.exit.i8, %bb.f
  %i.ao = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5
  br label %rbimpl_check_typeddata.exit16

rbimpl_check_typeddata.exit16:                    ; preds = %bb.i, %RTYPEDDATA_GET_DATA.exit.i12, %.critedge.i10
  %.1.i11 = phi ptr [ %i.ao, %.critedge.i10 ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i12 ], [ %i.aj, %bb.i ] ; 2 uses
  %.not7 = icmp eq ptr %.1.i11, null
  br i1 %.not7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit16
  %i.ap = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.75) #6
  unreachable

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit16
  %i.aq = tail call i32 @OCSP_check_nonce(ptr noundef nonnull %.1.i, ptr noundef nonnull %.1.i11) #5
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  ret i64 %i.at
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspreq_add_certid(i64 noundef returned %0, i64 noundef %1) #0 {
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
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ocsp_request_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ocsp_request_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_request_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.70) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = icmp eq i64 %1, 0
  %i.w = and i64 %1, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
end_hunk_0
begin_hunk_1_@ossl_ocspbres_copy_nonce:bb.a
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
  br i1 %i.e, label %bb.c, label %bb.h

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
  %i.u = icmp eq i64 %i.o, ptrtoint (ptr @ossl_ocsp_basicresp_type to i64)
  br i1 %i.u, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.f
  %.016.i = phi ptr [ %i.w, %bb.f ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i14 = icmp eq ptr %.016.i, null
  br i1 %.not.i14, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.x = icmp eq ptr %i.w, @ossl_ocsp_basicresp_type
  br i1 %i.x, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.y = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i13 = phi ptr [ %i.y, %.critedge.i ], [ %i.t, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.t, %bb.f ] ; 2 uses
  %.not11 = icmp eq ptr %.1.i13, null
  br i1 %.not11, label %bb.g, label %3

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.z, ptr noundef nonnull @.str.75) #6
  unreachable

3:                                                ; preds = %rbimpl_check_typeddata.exit
  %4 = tail call i32 @OCSP_basic_add1_nonce(ptr noundef nonnull %.1.i13, ptr noundef null, i32 noundef -1) #5
  br label %bb.p

bb.h:                                             ; preds = %rb_scan_args_set.exit
  %i.aa = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.ab = icmp eq i64 %2, 0
  %i.ac = and i64 %2, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %.critedge.i17, label %rbimpl_RB_TYPE_P_fastpath.exit.i15, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i15:               ; preds = %bb.h
  %i.af = inttoptr i64 %2 to ptr                  ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = and i64 %i.ag, 95
  %or.cond.not.i16 = icmp eq i64 %i.ah, 76
  br i1 %or.cond.not.i16, label %bb.i, label %.critedge.i17, !prof !20

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.ak = and i64 %i.aj, -2                       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = trunc i64 %i.aj to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  br i1 %i.am, label %RTYPEDDATA_GET_DATA.exit.i19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i19

RTYPEDDATA_GET_DATA.exit.i19:                     ; preds = %bb.j, %bb.i
  %i.ap = phi ptr [ %i.ao, %bb.j ], [ %i.an, %bb.i ] ; 2 uses
  %i.aq = icmp eq i64 %i.ak, ptrtoint (ptr @ossl_ocsp_basicresp_type to i64)
  br i1 %i.aq, label %rbimpl_check_typeddata.exit23, label %.preheader.i20, !prof !22

.preheader.i20:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i19, %bb.k
  %.016.i21 = phi ptr [ %i.as, %bb.k ], [ %i.al, %RTYPEDDATA_GET_DATA.exit.i19 ] ; 2 uses
  %.not.i22 = icmp eq ptr %.016.i21, null
  br i1 %.not.i22, label %.critedge.i17, label %bb.k

bb.k:                                             ; preds = %.preheader.i20
  %i.ar = getelementptr inbounds nuw i8, ptr %.016.i21, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %i.at = icmp eq ptr %i.as, @ossl_ocsp_basicresp_type
  br i1 %i.at, label %rbimpl_check_typeddata.exit23, label %.preheader.i20, !llvm.loop !28

.critedge.i17:                                    ; preds = %.preheader.i20, %rbimpl_RB_TYPE_P_fastpath.exit.i15, %bb.h
  %i.au = call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5
  br label %rbimpl_check_typeddata.exit23

rbimpl_check_typeddata.exit23:                    ; preds = %bb.k, %RTYPEDDATA_GET_DATA.exit.i19, %.critedge.i17
  %.1.i18 = phi ptr [ %i.au, %.critedge.i17 ], [ %i.ap, %RTYPEDDATA_GET_DATA.exit.i19 ], [ %i.ap, %bb.k ] ; 2 uses
  %.not = icmp eq ptr %.1.i18, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit23
  %i.av = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.av, ptr noundef nonnull @.str.75) #6
  unreachable

bb.m:                                             ; preds = %rbimpl_check_typeddata.exit23
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.az = and i64 %i.ay, 8192
  %.not.i24 = icmp eq i64 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  br i1 %.not.i24, label %RSTRING_PTR.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.m, %bb.n
  %i.bc = phi ptr [ %i.bb, %bb.n ], [ %i.ba, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !33 ; 3 uses
  %i.bf = add i64 %i.be, 2147483648
  %.not.i.i = icmp ult i64 %i.bf, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit
  call void @rb_out_of_int(i64 noundef %i.be) #7
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit
  %i.bg = trunc nsw i64 %i.be to i32
  %5 = call i32 @OCSP_basic_add1_nonce(ptr noundef nonnull %.1.i18, ptr noundef %i.bc, i32 noundef %i.bg) #5
  br label %bb.p

bb.p:                                             ; preds = %RSTRING_LENINT.exit, %3
  %.0 = phi i32 [ %4, %3 ], [ %5, %RSTRING_LENINT.exit ]
  %.not12 = icmp eq i32 %.0, 0
  br i1 %.not12, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr @eOCSPError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bh, ptr noundef null) #6
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ocspbres_add_status(i64 noundef returned %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !6
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !20

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @ossl_ocsp_basicresp_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_ocsp_basicresp_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !28

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ocsp_basicresp_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.v, ptr noundef nonnull @.str.75) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = icmp eq i64 %1, 0
  %i.x = and i64 %1, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %.critedge.i70, label %rbimpl_RB_TYPE_P_fastpath.exit.i68, !prof !30

rbimpl_RB_TYPE_P_fastpath.exit.i68:               ; preds = %bb.f
  %i.aa = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ac = and i64 %i.ab, 95
  %or.cond.not.i69 = icmp eq i64 %i.ac, 76
  br i1 %or.cond.not.i69, label %bb.g, label %.critedge.i70, !prof !20

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = and i64 %i.ae, -2                       ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = trunc i64 %i.ae to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  br i1 %i.ah, label %RTYPEDDATA_GET_DATA.exit.i72, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i72

RTYPEDDATA_GET_DATA.exit.i72:                     ; preds = %bb.h, %bb.g
  %i.ak = phi ptr [ %i.aj, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %i.al = icmp eq i64 %i.af, ptrtoint (ptr @ossl_ocsp_certid_type to i64)
  br i1 %i.al, label %rbimpl_check_typeddata.exit76, label %.preheader.i73, !prof !22

.preheader.i73:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i72, %bb.i
  %.016.i74 = phi ptr [ %i.an, %bb.i ], [ %i.ag, %RTYPEDDATA_GET_DATA.exit.i72 ] ; 2 uses
  %.not.i75 = icmp eq ptr %.016.i74, null
  br i1 %.not.i75, label %.critedge.i70, label %bb.i

bb.i:                                             ; preds = %.preheader.i73
  %i.am = getelementptr inbounds nuw i8, ptr %.016.i74, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23 ; 2 uses
  %i.ao = icmp eq ptr %i.an, @ossl_ocsp_certid_type
  br i1 %i.ao, label %rbimpl_check_typeddata.exit76, label %.preheader.i73, !llvm.loop !28

.critedge.i70:                                    ; preds = %.preheader.i73, %rbimpl_RB_TYPE_P_fastpath.exit.i68, %bb.f
  %i.ap = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @ossl_ocsp_certid_type) #5
  br label %rbimpl_check_typeddata.exit76

rbimpl_check_typeddata.exit76:                    ; preds = %bb.i, %RTYPEDDATA_GET_DATA.exit.i72, %.critedge.i70
  %.1.i71 = phi ptr [ %i.ap, %.critedge.i70 ], [ %i.ak, %RTYPEDDATA_GET_DATA.exit.i72 ], [ %i.ak, %bb.i ] ; 2 uses
  %.not59 = icmp eq ptr %.1.i71, null
  br i1 %.not59, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit76
  %i.aq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.77) #6
  unreachable

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit76
  %i.ar = trunc i64 %2 to i1
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = tail call i64 @rb_fix2int(i64 noundef %2) #5
  br label %rb_num2int_inline.exit

bb.m:                                             ; preds = %bb.k
  %i.at = tail call i64 @rb_num2int(i64 noundef %2) #5
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.l, %bb.m
  %.0.i = phi i64 [ %i.as, %bb.l ], [ %i.at, %bb.m ]
  %i.au = trunc i64 %.0.i to i32                  ; 2 uses
  %i.av = icmp eq i64 %7, 4
  br i1 %i.av, label %.loopexit95, label %bb.n

bb.n:                                             ; preds = %rb_num2int_inline.exit
  %i.aw = tail call i64 @rb_check_array_type(i64 noundef %7) #5 ; 3 uses
  %i.ax = inttoptr i64 %i.aw to ptr               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %.045 = phi i64 [ 0, %bb.n ], [ %i.bu, %bb.s ]  ; 5 uses
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !17 ; 2 uses
  %i.bb = and i64 %i.ba, 8192
  %.not.i77 = icmp eq i64 %i.bb, 0
  br i1 %.not.i77, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.o
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !31
  %i.bd = icmp slt i64 %.045, %i.bc
  br i1 %i.bd, label %bb.p, label %.loopexit95

rb_array_len.exit.thread:                         ; preds = %bb.o
  %i.be = lshr i64 %i.ba, 15
  %i.bf = and i64 %i.be, 127
  %i.bg = icmp samesign ult i64 %.045, %i.bf
  br i1 %i.bg, label %rb_array_const_ptr.exit, label %.loopexit95

bb.p:                                             ; preds = %rb_array_len.exit
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !31
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %rb_array_len.exit.thread, %bb.p
  %.0.i80 = phi ptr [ %i.bh, %bb.p ], [ %i.ay, %rb_array_len.exit.thread ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0.i80, i64 %.045
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bk = load i64, ptr @cX509Ext, align 8, !tbaa !10
  %i.bl = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.bj, i64 noundef %i.bk) #5
  %.not60 = icmp eq i64 %i.bl, 0
  br i1 %.not60, label %bb.q, label %bb.s

bb.q:                                             ; preds = %rb_array_const_ptr.exit
  %i.bm = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.bo = and i64 %i.bn, 8192
  %.not.i81 = icmp eq i64 %i.bo, 0
  br i1 %.not.i81, label %bb.r, label %rb_array_const_ptr.exit83

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.az, align 8, !tbaa !31
  br label %rb_array_const_ptr.exit83

rb_array_const_ptr.exit83:                        ; preds = %bb.q, %bb.r
  %.0.i82 = phi ptr [ %i.bp, %bb.r ], [ %i.ay, %bb.q ]
end_hunk_1
