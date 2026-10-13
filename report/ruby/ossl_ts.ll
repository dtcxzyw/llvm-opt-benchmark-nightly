Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ossl_ts?download=true
inline.NumInlined: 115
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ossl_ts_resp_to_der:bb.a
bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @ossl_ts_resp_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !25

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_ts_resp_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ts_resp_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #8
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.w = tail call i32 @i2d_TS_RESP(ptr noundef nonnull %.1.i, ptr noundef null) #7, !callees !40, !inline_history !1 ; 2 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr @eTimestampError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.y, ptr noundef nonnull @.str.55) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %i.z) #7, !callees !2, !inline_history !1 ; 3 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ad = and i64 %i.ac, 8192
  %.not.i.i = icmp eq i64 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 4 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %i.af, %bb.i ], [ %i.ae, %bb.h ]
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !41
  %i.ah = call i32 @i2d_TS_RESP(ptr noundef nonnull %.1.i, ptr noundef nonnull %i.a) #7, !callees !40, !inline_history !1
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %RSTRING_PTR.exit.i
  %i.aj = load i64, ptr @eTimestampError, align 8, !tbaa !14
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.55) #8
  unreachable

bb.k:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.am = and i64 %i.al, 8192
  %.not.i9.i = icmp eq i64 %i.am, 0
  br i1 %.not.i9.i, label %asn1_to_der.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !32
  br label %asn1_to_der.exit

asn1_to_der.exit:                                 ; preds = %bb.k, %bb.l
  %i.ao = phi ptr [ %i.an, %bb.l ], [ %i.ae, %bb.k ]
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @rb_str_set_len(i64 noundef %i.aa, i64 noundef %i.ar) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %i.aa
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ts_resp_to_text(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !21

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !23

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ts_resp_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !25

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ts_resp_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ts_resp_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #8
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = tail call ptr @BIO_s_mem() #7
  %i.w = tail call ptr @BIO_new(ptr noundef %i.v) #7 ; 4 uses
  %.not7 = icmp eq ptr %i.w, null
  br i1 %.not7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @eTimestampError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef null) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call i32 @TS_RESP_print_bio(ptr noundef nonnull %i.w, ptr noundef nonnull %.1.i) #7
  %.not8 = icmp eq i32 %i.y, 0
  br i1 %.not8, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = tail call i32 @BIO_free(ptr noundef nonnull %i.w) #7 ; 0 uses
  %i.aa = load i64, ptr @eTimestampError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef null) #8
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call i64 @ossl_membio2str(ptr noundef nonnull %i.w) #7
  ret i64 %i.ab
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ts_resp_verify(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp slt i32 %0, 2
  br i1 %i.b, label %bb.c, label %.preheader58

.preheader58:                                     ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !14     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %.not83 = icmp eq i32 %0, 2
  br i1 %.not83, label %3, label %bb.b

bb.b:                                             ; preds = %.preheader58
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp eq i32 %0, 3
  br label %3

3:                                                ; preds = %.preheader58, %bb.b
  %4 = phi i64 [ %i.g, %bb.b ], [ 4, %.preheader58 ] ; 2 uses
  %.185.i.lcssa = phi i1 [ %i.h, %bb.b ], [ true, %.preheader58 ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %3, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef 3) #8
  unreachable

rb_scan_args_set.exit:                            ; preds = %3
  %i.i = icmp eq i64 %2, 0
  %i.j = and i64 %2, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !21

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_scan_args_set.exit
  %i.m = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = and i64 %i.n, 95
  %or.cond.not.i = icmp eq i64 %i.o, 76
  br i1 %or.cond.not.i, label %bb.d, label %.critedge.i, !prof !23

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = and i64 %i.q, -2                         ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = trunc i64 %i.q to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  br i1 %i.t, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %i.v, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %i.x = icmp eq i64 %i.r, ptrtoint (ptr @ossl_ts_resp_type to i64)
  br i1 %i.x, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !25

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.f
  %.015.i = phi ptr [ %i.z, %bb.f ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i48 = icmp eq ptr %.015.i, null
  br i1 %.not.i48, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %i.aa = icmp eq ptr %i.z, @ossl_ts_resp_type
  br i1 %i.aa, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_scan_args_set.exit
  %i.ab = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ts_resp_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i47 = phi ptr [ %i.ab, %.critedge.i ], [ %i.w, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.w, %bb.f ] ; 3 uses
  %.not = icmp eq ptr %.1.i47, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ac = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.49) #8
  unreachable

bb.h:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ad = icmp eq i64 %i.c, 0
  %i.ae = and i64 %i.c, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %.critedge.i51, label %rbimpl_RB_TYPE_P_fastpath.exit.i49, !prof !21

rbimpl_RB_TYPE_P_fastpath.exit.i49:               ; preds = %bb.h
  %i.ah = inttoptr i64 %i.c to ptr                ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.aj = and i64 %i.ai, 95
  %or.cond.not.i50 = icmp eq i64 %i.aj, 76
  br i1 %or.cond.not.i50, label %bb.i, label %.critedge.i51, !prof !23

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24 ; 2 uses
  %i.am = and i64 %i.al, -2                       ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = trunc i64 %i.al to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  br i1 %i.ao, label %RTYPEDDATA_GET_DATA.exit.i53, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i53

RTYPEDDATA_GET_DATA.exit.i53:                     ; preds = %bb.j, %bb.i
  %i.ar = phi ptr [ %i.aq, %bb.j ], [ %i.ap, %bb.i ] ; 2 uses
  %i.as = icmp eq i64 %i.am, ptrtoint (ptr @ossl_ts_req_type to i64)
  br i1 %i.as, label %rbimpl_check_typeddata.exit57, label %.preheader.i54, !prof !25

.preheader.i54:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i53, %bb.k
  %.015.i55 = phi ptr [ %i.au, %bb.k ], [ %i.an, %RTYPEDDATA_GET_DATA.exit.i53 ] ; 2 uses
  %.not.i56 = icmp eq ptr %.015.i55, null
  br i1 %.not.i56, label %.critedge.i51, label %bb.k

bb.k:                                             ; preds = %.preheader.i54
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i55, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30 ; 2 uses
  %i.av = icmp eq ptr %i.au, @ossl_ts_req_type
  br i1 %i.av, label %rbimpl_check_typeddata.exit57, label %.preheader.i54, !llvm.loop !0

.critedge.i51:                                    ; preds = %.preheader.i54, %rbimpl_RB_TYPE_P_fastpath.exit.i49, %bb.h
  %i.aw = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @ossl_ts_req_type) #7
  br label %rbimpl_check_typeddata.exit57

rbimpl_check_typeddata.exit57:                    ; preds = %bb.k, %RTYPEDDATA_GET_DATA.exit.i53, %.critedge.i51
  %.1.i52 = phi ptr [ %i.aw, %.critedge.i51 ], [ %i.ar, %RTYPEDDATA_GET_DATA.exit.i53 ], [ %i.ar, %bb.k ] ; 2 uses
  %.not39 = icmp eq ptr %.1.i52, null
  br i1 %.not39, label %bb.l, label %bb.m

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit57
  %i.ax = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ax, ptr noundef nonnull @.str.57) #8
  unreachable

bb.m:                                             ; preds = %rbimpl_check_typeddata.exit57
  %i.ay = tail call ptr @GetX509StorePtr(i64 noundef %i.e) #7 ; 2 uses
  %i.az = tail call ptr @TS_REQ_to_TS_VERIFY_CTX(ptr noundef nonnull %.1.i52, ptr noundef null) #7 ; 11 uses
  %.not40 = icmp eq ptr %i.az, null
  br i1 %.not40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = load i64, ptr @eTimestampError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ba, ptr noundef nonnull @.str.58) #8
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bb = icmp eq i64 %4, 4
  br i1 %i.bb, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = call ptr @ossl_protect_x509_ary2sk(i64 noundef %4, ptr noundef nonnull %i.a) #7
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !12
  %.not41 = icmp eq i32 %i.bd, 0
  br i1 %.not41, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @TS_VERIFY_CTX_free(ptr noundef nonnull %i.az) #7
  %i.be = load i32, ptr %i.a, align 4, !tbaa !12
  call void @rb_jump_tag(i32 noundef %i.be) #8
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bf = tail call ptr @OPENSSL_sk_new_null() #7 ; 2 uses
  %.not42 = icmp eq ptr %i.bf, null
  br i1 %.not42, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @TS_VERIFY_CTX_free(ptr noundef nonnull %i.az) #7
  %i.bg = load i64, ptr @eTimestampError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bg, ptr noundef nonnull @.str.59) #8
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.p
  %.033 = phi ptr [ %i.bf, %bb.r ], [ %i.bc, %bb.p ] ; 5 uses
  %i.bh = call ptr @TS_RESP_get_token(ptr noundef nonnull %.1.i47) #7 ; 2 uses
  %.not43 = icmp eq ptr %i.bh, null
  br i1 %.not43, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bm = call i32 @OPENSSL_sk_num(ptr noundef %i.bl) #7
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

bb.u:                                             ; preds = %bb.t
  call void @TS_VERIFY_CTX_free(ptr noundef nonnull %i.az) #7
  call void @OPENSSL_sk_pop_free(ptr noundef %.033, ptr noundef nonnull @X509_free) #7
  %i.bo = load i64, ptr @eTimestampError, align 8, !tbaa !14
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bo, ptr noundef nonnull @.str.60) #8
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.w
  %.065 = phi i32 [ %i.bw, %bb.w ], [ 0, %.preheader ] ; 2 uses
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.bs = call ptr @OPENSSL_sk_value(ptr noundef %i.br, i32 noundef %.065) #7 ; 2 uses
  %i.bt = call i32 @OPENSSL_sk_push(ptr noundef %.033, ptr noundef %i.bs) #7
  %.not46 = icmp eq i32 %i.bt, 0
  br i1 %.not46, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  call void @OPENSSL_sk_pop_free(ptr noundef %.033, ptr noundef nonnull @X509_free) #7
  call void @TS_VERIFY_CTX_free(ptr noundef nonnull %i.az) #7
  %i.bu = load i64, ptr @eTimestampError, align 8, !tbaa !14
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bu, ptr noundef nonnull @.str.61) #8
  unreachable

bb.w:                                             ; preds = %.lr.ph
  %i.bv = call i32 @X509_up_ref(ptr noundef %i.bs) #7 ; 0 uses
  %i.bw = add nuw nsw i32 %.065, 1                ; 2 uses
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !50
  %i.ca = call i32 @OPENSSL_sk_num(ptr noundef %i.bz) #7
  %i.cb = icmp slt i32 %i.bw, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.w, %.preheader
  %i.cc = call i32 @X509_STORE_up_ref(ptr noundef %i.ay) #7
  %.not44 = icmp eq i32 %i.cc, 0
  br i1 %.not44, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  call void @OPENSSL_sk_pop_free(ptr noundef %.033, ptr noundef nonnull @X509_free) #7
  call void @TS_VERIFY_CTX_free(ptr noundef nonnull %i.az) #7
  %i.cd = load i64, ptr @eTimestampError, align 8, !tbaa !14
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.cd, ptr noundef nonnull @.str.62) #8
  unreachable

bb.y:                                             ; preds = %._crit_edge
  %i.ce = call ptr @TS_VERIFY_CTX_set_certs(ptr noundef nonnull %i.az, ptr noundef %.033) #7 ; 0 uses
  %i.cf = call ptr @TS_VERIFY_CTX_set_store(ptr noundef nonnull %i.az, ptr noundef %i.ay) #7 ; 0 uses
  %i.cg = call i32 @TS_VERIFY_CTX_add_flags(ptr noundef nonnull %i.az, i32 noundef 1) #7 ; 0 uses
  %i.ch = call i32 @TS_RESP_verify_response(ptr noundef nonnull %i.az, ptr noundef nonnull %.1.i47) #7
  call void @TS_VERIFY_CTX_free(ptr noundef nonnull %i.az) #7
  %.not45 = icmp eq i32 %i.ch, 0
  br i1 %.not45, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ci = load i64, ptr @eTimestampError, align 8, !tbaa !14
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ci, ptr noundef nonnull @.str.63) #8
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ts_token_info_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_ts_token_info_type) #7 ; 2 uses
  %i.b = tail call ptr @TS_TST_INFO_new() #7      ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @eTimestampError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.c, ptr noundef null) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !18
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ts_token_info_initialize(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  store ptr %i.e, ptr %i.b, align 8, !tbaa !52
  %i.f = tail call i64 @ossl_to_der_if_possible(i64 noundef %1) #7
  store i64 %i.f, ptr %i.a, align 8, !tbaa !14
  %i.g = call ptr @ossl_obj2bio(ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.h = call ptr @d2i_TS_TST_INFO_bio(ptr noundef %i.g, ptr noundef nonnull %i.b) #7
  store ptr %i.h, ptr %i.b, align 8, !tbaa !52
  %i.i = call i32 @BIO_free(ptr noundef %i.g) #7  ; 0 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.d, align 8, !tbaa !20
  %i.k = load i64, ptr @eTimestampError, align 8, !tbaa !14
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.k, ptr noundef nonnull @.str.65) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ts_token_info_get_version(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !21

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !23

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ts_token_info_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !25

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ts_token_info_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ts_token_info_type) #7
end_hunk_0
