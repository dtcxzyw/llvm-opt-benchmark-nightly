inline.NumInlined: 63
inline.NumDeleted: 22
begin_hunk_0_@ossl_x509extfactory_set_crl:bb.a
bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = tail call i64 @rb_iv_set(i64 noundef %0, ptr noundef nonnull @.str.35, i64 noundef %1) #5 ; 0 uses
  %i.w = tail call ptr @GetX509CRLPtr(i64 noundef %1) #5
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !37
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_x509extfactory_create_ext(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = icmp slt i32 %0, 2
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.e, ptr %i.a, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  store i64 %i.g, ptr %i.b, align 8, !tbaa !10
  switch i32 %0, label %bb.b [
    i32 2, label %rb_scan_args_set.exit.thread
    i32 3, label %rb_scan_args_set.exit
  ]

rb_scan_args_set.exit.thread:                     ; preds = %.preheader
  %i.h = call i64 @rb_string_value(ptr noundef nonnull %i.b) #5 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %.preheader, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef 3) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10   ; 2 uses
  %i.k = call i64 @rb_string_value(ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.l = icmp eq i64 %i.j, 4
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_scan_args_set.exit.thread, %rb_scan_args_set.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_scan_args_set.exit
  %i.m = phi i64 [ 0, %bb.c ], [ %i.j, %rb_scan_args_set.exit ]
  %i.n = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.o = call i32 @OBJ_ln2nid(ptr noundef %i.n) #5 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call ptr @OBJ_nid2sn(i32 noundef %i.o) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.p, %bb.e ], [ %i.n, %bb.d ]
  %i.q = and i64 %i.m, -5
  %.not28 = icmp eq i64 %i.q, 0
  %i.r = select i1 %.not28, ptr @.str.38, ptr @.str.37
  %i.s = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.r) #5 ; 2 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !10
  %i.t = load i64, ptr %i.b, align 8, !tbaa !10
  %i.u = call i64 @rb_str_append(i64 noundef %i.s, i64 noundef %i.t) #5 ; 0 uses
  %i.v = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.c) #5 ; 0 uses
  %i.w = icmp eq i64 %2, 0
  %i.x = and i64 %2, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !16

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.f
  %i.aa = inttoptr i64 %2 to ptr                  ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ac = and i64 %i.ab, 95
  %or.cond.not.i = icmp eq i64 %i.ac, 76
  br i1 %or.cond.not.i, label %bb.g, label %.critedge.i, !prof !18

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = and i64 %i.ae, -2                       ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = trunc i64 %i.ae to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  br i1 %i.ah, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.h, %bb.g
  %i.ak = phi ptr [ %i.aj, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %i.al = icmp eq i64 %i.af, ptrtoint (ptr @ossl_x509extfactory_type to i64)
  br i1 %i.al, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !20

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.i
  %.016.i = phi ptr [ %i.an, %bb.i ], [ %i.ag, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i26 = icmp eq ptr %.016.i, null
  br i1 %.not.i26, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %i.ao = icmp eq ptr %i.an, @ossl_x509extfactory_type
  br i1 %i.ao, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f
  %i.ap = call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_x509extfactory_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.i, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i25 = phi ptr [ %i.ap, %.critedge.i ], [ %i.ak, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.ak, %bb.i ] ; 4 uses
  %.not23 = icmp eq ptr %.1.i25, null
  br i1 %.not23, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.aq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.31) #6
  unreachable

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ar = load i64, ptr @cX509Ext, align 8, !tbaa !10
  %i.as = call i64 @rb_data_typed_object_wrap(i64 noundef %i.ar, ptr noundef null, ptr noundef nonnull @ossl_x509ext_type) #5 ; 2 uses
  %i.at = call i64 @rb_iv_get(i64 noundef %2, ptr noundef nonnull @.str.28) #5 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = call ptr @GetConfig(i64 noundef %i.at) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aw = phi ptr [ %i.av, %bb.l ], [ null, %bb.k ] ; 2 uses
  call void @X509V3_set_nconf(ptr noundef nonnull %.1.i25, ptr noundef %i.aw) #5
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !10
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = and i64 %i.az, 8192
  %.not.i27 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  br i1 %.not.i27, label %RSTRING_PTR.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !38
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.m, %bb.n
  %i.bd = phi ptr [ %i.bc, %bb.n ], [ %i.bb, %bb.m ]
  %i.be = call ptr @X509V3_EXT_nconf(ptr noundef %i.aw, ptr noundef nonnull %.1.i25, ptr noundef %.0, ptr noundef %i.bd) #5 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i25, i64 48
  store ptr null, ptr %i.bf, align 8, !tbaa !39
  %.not24 = icmp eq ptr %i.be, null
  br i1 %.not24, label %bb.o, label %bb.p

bb.o:                                             ; preds = %RSTRING_PTR.exit
  %i.bg = load i64, ptr @eX509ExtError, align 8, !tbaa !10
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !10
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bg, ptr noundef nonnull @.str.39, i64 noundef %i.bh, i64 noundef %i.bi) #6
  unreachable

bb.p:                                             ; preds = %RSTRING_PTR.exit
  %i.bj = inttoptr i64 %i.as to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %i.as
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_x509ext_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_x509ext_type) #5 ; 2 uses
  %i.b = tail call ptr @X509_EXTENSION_new() #5   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @eX509ExtError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.c, ptr noundef null) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !12
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_x509ext_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = icmp eq i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !16

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.h = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17
  %i.j = and i64 %i.i, 95
  %or.cond.not.i = icmp eq i64 %i.j, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !18

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = trunc i64 %i.l to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  br i1 %i.o, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.s = icmp eq i64 %i.m, ptrtoint (ptr @ossl_x509ext_type to i64)
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !20

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.u, %bb.d ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i16 = icmp eq ptr %.016.i, null
  br i1 %.not.i16, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.v = icmp eq ptr %i.u, @ossl_x509ext_type
  br i1 %i.v, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.w = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_x509ext_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i15 = phi ptr [ %i.w, %.critedge.i ], [ %i.r, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  store ptr %.1.i15, ptr %i.c, align 8, !tbaa !40
  %.not = icmp eq ptr %.1.i15, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.1) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.y = icmp slt i32 %0, 1
  br i1 %i.y, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.z = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %.not51 = icmp eq i32 %0, 1
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %i.ac = phi i64 [ %i.ab, %bb.g ], [ 4, %.preheader ]
  %.286.i = phi i32 [ 2, %bb.g ], [ 1, %.preheader ] ; 4 uses
  %i.ad = icmp samesign ult i32 %.286.i, %0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = zext nneg i32 %.286.i to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ah = add nuw nsw i32 %.286.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ai = phi i64 [ %i.ag, %bb.i ], [ 4, %bb.h ]
  %.286.i.1 = phi i32 [ %i.ah, %bb.i ], [ %.286.i, %bb.h ]
  %i.aj = icmp eq i32 %.286.i.1, %0
  br i1 %i.aj, label %rb_scan_args_set.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.j
  %i.ak = icmp eq i32 %0, 1
  br i1 %i.ak, label %bb.l, label %bb.o

bb.l:                                             ; preds = %rb_scan_args_set.exit
  %i.al = tail call i64 @ossl_to_der_if_possible(i64 noundef %i.z) #5
  store i64 %i.al, ptr %i.a, align 8, !tbaa !10
  %i.am = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.aq = and i64 %i.ap, 8192
  %.not.i17 = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  br i1 %.not.i17, label %RSTRING_PTR.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.l, %bb.m
  %i.at = phi ptr [ %i.as, %bb.m ], [ %i.ar, %bb.l ]
  store ptr %i.at, ptr %i.b, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !43
  %i.aw = call ptr @d2i_X509_EXTENSION(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef %i.av) #5
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ay = inttoptr i64 %2 to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !45
  %.not14 = icmp eq ptr %i.aw, null
  br i1 %.not14, label %bb.n, label %bb.q

bb.n:                                             ; preds = %RSTRING_PTR.exit
  %i.ba = load i64, ptr @eX509ExtError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ba, ptr noundef null) #6
  unreachable

bb.o:                                             ; preds = %rb_scan_args_set.exit
  %.pr.i = load i64, ptr @ossl_x509ext_initialize.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.bb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 4) #5 ; 3 uses
  store i64 %i.bb, ptr @ossl_x509ext_initialize.rbimpl_id, align 8, !tbaa !10
  %.not.i18 = icmp eq i64 %i.bb, 0
  br i1 %.not.i18, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !47

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.o
  %.lcssa.i = phi i64 [ %.pr.i, %bb.o ], [ %i.bb, %.lr.ph.i ]
  %i.bc = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef %i.z) #5 ; 0 uses
  %.pr.i19 = load i64, ptr @ossl_x509ext_initialize.rbimpl_id.41, align 8, !tbaa !10 ; 2 uses
  %.not4.i20 = icmp eq i64 %.pr.i19, 0
  br i1 %.not4.i20, label %.lr.ph.i22, label %rbimpl_intern_const.exit24

.lr.ph.i22:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i22
  %i.bd = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 6) #5 ; 3 uses
  store i64 %i.bd, ptr @ossl_x509ext_initialize.rbimpl_id.41, align 8, !tbaa !10
  %.not.i23 = icmp eq i64 %i.bd, 0
  br i1 %.not.i23, label %.lr.ph.i22, label %rbimpl_intern_const.exit24, !llvm.loop !47

rbimpl_intern_const.exit24:                       ; preds = %.lr.ph.i22, %rbimpl_intern_const.exit
  %.lcssa.i21 = phi i64 [ %.pr.i19, %rbimpl_intern_const.exit ], [ %i.bd, %.lr.ph.i22 ]
  %i.be = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %.lcssa.i21, i32 noundef 1, i64 noundef %i.ac) #5 ; 0 uses
  %i.bf = icmp samesign ugt i32 %0, 2
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rbimpl_intern_const.exit24
  %.pr.i25 = load i64, ptr @ossl_x509ext_initialize.rbimpl_id.42, align 8, !tbaa !10 ; 2 uses
  %.not4.i26 = icmp eq i64 %.pr.i25, 0
  br i1 %.not4.i26, label %.lr.ph.i28, label %rbimpl_intern_const.exit30

.lr.ph.i28:                                       ; preds = %bb.p, %.lr.ph.i28
  %i.bg = tail call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 9) #5 ; 3 uses
  store i64 %i.bg, ptr @ossl_x509ext_initialize.rbimpl_id.42, align 8, !tbaa !10
  %.not.i29 = icmp eq i64 %i.bg, 0
  br i1 %.not.i29, label %.lr.ph.i28, label %rbimpl_intern_const.exit30, !llvm.loop !47

rbimpl_intern_const.exit30:                       ; preds = %.lr.ph.i28, %bb.p
  %.lcssa.i27 = phi i64 [ %.pr.i25, %bb.p ], [ %i.bg, %.lr.ph.i28 ]
  %i.bh = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %.lcssa.i27, i32 noundef 1, i64 noundef %i.ai) #5 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %rbimpl_intern_const.exit24, %rbimpl_intern_const.exit30, %RSTRING_PTR.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @ossl_x509ext_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !48

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !49

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #6
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i15, label %bb.b, !prof !50

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #5
  %.pre = load i64, ptr %i.d, align 8, !tbaa !17
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i15

rbimpl_RB_TYPE_P_fastpath.exit.i15:               ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.k = and i64 %i.j, 95
  %or.cond.not.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i, label %bb.c, label %.critedge.i, !prof !18

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
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
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @ossl_x509ext_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !20

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.e
  %.016.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i16 = icmp eq ptr %.016.i, null
  br i1 %.not.i16, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.w = icmp eq ptr %i.v, @ossl_x509ext_type
  br i1 %i.w, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i15
  %i.x = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_x509ext_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.x, %.critedge.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.y = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.y, ptr noundef nonnull @.str.1) #6
  unreachable

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = icmp eq i64 %1, 0
  %i.aa = and i64 %1, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %.critedge.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i17, !prof !16

rbimpl_RB_TYPE_P_fastpath.exit.i17:               ; preds = %bb.g
  %i.ad = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = and i64 %i.ae, 95
  %or.cond.not.i18 = icmp eq i64 %i.af, 76
  br i1 %or.cond.not.i18, label %bb.h, label %.critedge.i19, !prof !18

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
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
  %i.ao = icmp eq i64 %i.ai, ptrtoint (ptr @ossl_x509ext_type to i64)
  br i1 %i.ao, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !prof !20

.preheader.i22:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i21, %bb.j
  %.016.i23 = phi ptr [ %i.aq, %bb.j ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i21 ] ; 2 uses
  %.not.i24 = icmp eq ptr %.016.i23, null
  br i1 %.not.i24, label %.critedge.i19, label %bb.j

bb.j:                                             ; preds = %.preheader.i22
  %i.ap = getelementptr inbounds nuw i8, ptr %.016.i23, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, @ossl_x509ext_type
  br i1 %i.ar, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !llvm.loop !26

.critedge.i19:                                    ; preds = %.preheader.i22, %rbimpl_RB_TYPE_P_fastpath.exit.i17, %bb.g
  %i.as = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @ossl_x509ext_type) #5
  br label %rbimpl_check_typeddata.exit25

rbimpl_check_typeddata.exit25:                    ; preds = %bb.j, %RTYPEDDATA_GET_DATA.exit.i21, %.critedge.i19
  %.1.i20 = phi ptr [ %i.as, %.critedge.i19 ], [ %i.an, %RTYPEDDATA_GET_DATA.exit.i21 ], [ %i.an, %bb.j ] ; 2 uses
  %.not13 = icmp eq ptr %.1.i20, null
  br i1 %.not13, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.at = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.at, ptr noundef nonnull @.str.1) #6
  unreachable

bb.l:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.au = tail call ptr @X509_EXTENSION_dup(ptr noundef nonnull %.1.i20) #5 ; 2 uses
  %.not14 = icmp eq ptr %i.au, null
  br i1 %.not14, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load i64, ptr @eX509ExtError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.av, ptr noundef nonnull @.str) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !12
  tail call void @X509_EXTENSION_free(ptr noundef nonnull %.1.i) #5
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_x509ext_set_oid(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
end_hunk_0
