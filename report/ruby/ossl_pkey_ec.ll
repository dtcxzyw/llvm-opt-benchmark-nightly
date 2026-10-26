Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ossl_pkey_ec?download=true
inline.NumInlined: 109
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ossl_s_builtin_curves:bb.a
bb.c:                                             ; preds = %rb_long2int_inline.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 16, i64 noundef range(i64 -2147483648, 2147483648) %i.a) #9
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %rb_long2int_inline.exit
  %i.d = shl nuw nsw i64 %i.a, 4
  %i.e = alloca i8, i64 %i.d, align 16            ; 2 uses
  %i.f = call i64 @EC_get_builtin_curves(ptr noundef nonnull %i.e, i64 noundef %i.a) #7
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.g = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.g, ptr noundef nonnull @.str.55) #9
  unreachable

bb.e:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.h = call i64 @rb_ary_new_capa(i64 noundef %i.a) #7 ; 2 uses
  %.not24 = icmp eq i64 %i.a, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 16, !tbaa !34
  %i.k = call ptr @OBJ_nid2sn(i32 noundef %i.j) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = call i64 @rb_ary_new_capa(i64 noundef 2) #7 ; 3 uses
  %i.o = call i64 @rb_str_new_cstr(ptr noundef %i.k) #7
  %i.p = call i64 @rb_ary_push(i64 noundef %i.n, i64 noundef %i.o) #7 ; 0 uses
  %.not22 = icmp eq ptr %i.m, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.q = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.m) #7
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.r = phi i64 [ %i.q, %bb.f ], [ 4, %.lr.ph ]
  %i.s = call i64 @rb_ary_push(i64 noundef %i.n, i64 noundef %i.r) #7 ; 0 uses
  %i.t = call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %i.n) #7 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.g, %bb.e
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ec_key_s_generate(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_alloc(i64 noundef %0) #7 ; 2 uses
  %i.b = tail call fastcc ptr @ec_key_new_from_group(i64 noundef %1) ; 3 uses
  %i.c = tail call ptr @EVP_PKEY_new() #7         ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @EVP_PKEY_assign(ptr noundef nonnull %i.c, i32 noundef 408, ptr noundef nonnull %i.b) #7
  %.not10 = icmp eq i32 %i.d, 1
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @EVP_PKEY_free(ptr noundef %i.c) #7
  tail call void @EC_KEY_free(ptr noundef nonnull %i.b) #7
  %i.e = load i64, ptr @ePKeyError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.e, ptr noundef nonnull @.str.56) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.c, ptr %i.g, align 8, !tbaa !18
  %i.h = tail call i32 @EC_KEY_generate_key(ptr noundef nonnull %i.b) #7
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr @ePKeyError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.i, ptr noundef nonnull @.str.57) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  ret i64 %i.a
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ec_key_initialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22   ; 2 uses
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
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @ossl_evp_pkey_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !23

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i32 = icmp eq ptr %.015.i, null
  br i1 %.not.i32, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_evp_pkey_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i31 = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ]
  %.not = icmp eq ptr %.1.i31, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eTypeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.61) #9
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = icmp slt i32 %0, 0
  br i1 %i.w, label %bb.j, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %.not49 = icmp eq i32 %0, 0
  br i1 %.not49, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %.preheader.preheader
  %i.x = load i64, ptr %1, align 8, !tbaa !12
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.g
  %.sink.a = phi i64 [ %i.x, %bb.g ], [ 4, %.preheader.preheader ] ; 5 uses
  %.286.i = phi i32 [ 1, %bb.g ], [ 0, %.preheader.preheader ] ; 4 uses
  store i64 %.sink.a, ptr %i.a, align 8, !tbaa !12
  %i.y = icmp samesign ult i32 %.286.i, %0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.1
  %i.z = zext nneg i32 %.286.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.ac = add nuw nsw i32 %.286.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.preheader.1, %bb.h
  %i.ad = phi i64 [ %i.ab, %bb.h ], [ 4, %.preheader.1 ]
  %.286.i.1 = phi i32 [ %i.ac, %bb.h ], [ %.286.i, %.preheader.1 ]
  %i.ae = icmp eq i32 %.286.i.1, %0
  br i1 %i.ae, label %rb_scan_args_set.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #9
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.i
  %i.af = icmp eq i64 %.sink.a, 4
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rb_scan_args_set.exit
  %i.ag = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ag, ptr noundef nonnull @.str.63) #9
  unreachable

bb.l:                                             ; preds = %rb_scan_args_set.exit
  %i.ah = load i64, ptr @cEC_GROUP, align 8, !tbaa !12
  %i.ai = tail call i64 @rb_obj_is_kind_of(i64 noundef %.sink.a, i64 noundef %i.ah) #7
  %.not26 = icmp eq i64 %i.ai, 0
  br i1 %.not26, label %bb.m, label %3

3:                                                ; preds = %bb.l
  %4 = tail call fastcc ptr @ec_key_new_from_group(i64 noundef %.sink.a)
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i64 @ossl_pem_passwd_value(i64 noundef %i.ad) #7
  %i.ak = tail call i64 @ossl_to_der_if_possible(i64 noundef %.sink.a) #7
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !12
  %i.al = call ptr @ossl_obj2bio(ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.am = call ptr @ossl_pkey_read_generic(ptr noundef %i.al, i64 noundef %i.aj) #7 ; 4 uses
  %i.an = call i32 @BIO_free(ptr noundef %i.al) #7 ; 0 uses
  %.not27 = icmp eq ptr %i.am, null
  br i1 %.not27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ossl_clear_error() #7
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !12
  %5 = call fastcc ptr @ec_key_new_from_group(i64 noundef %i.ao)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ap = call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %i.am) #7 ; 2 uses
  %.not28 = icmp eq i32 %i.ap, 408
  br i1 %.not28, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @EVP_PKEY_free(ptr noundef nonnull %i.am) #7
  %i.aq = load i64, ptr @ePKeyError, align 8, !tbaa !12
  %i.ar = call ptr @OBJ_nid2sn(i32 noundef %i.ap) #7
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.64, ptr noundef %i.ar) #9
  unreachable

bb.q:                                             ; preds = %bb.n, %3
  %.0 = phi ptr [ %4, %3 ], [ %5, %bb.n ]         ; 2 uses
  %i.as = call ptr @EVP_PKEY_new() #7             ; 4 uses
  %.not29 = icmp eq ptr %i.as, null
  br i1 %.not29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = call i32 @EVP_PKEY_assign(ptr noundef nonnull %i.as, i32 noundef 408, ptr noundef nonnull %.0) #7
  %.not30 = icmp eq i32 %i.at, 1
  br i1 %.not30, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @EVP_PKEY_free(ptr noundef %i.as) #7
  call void @EC_KEY_free(ptr noundef nonnull %.0) #7
  %i.au = load i64, ptr @ePKeyError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.au, ptr noundef nonnull @.str.56) #9
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.o
  %.sink51 = phi ptr [ %i.am, %bb.o ], [ %i.as, %bb.r ]
  %i.av = inttoptr i64 %2 to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %.sink51, ptr %i.aw, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ec_key_get_group(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
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
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_evp_pkey_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !23

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_evp_pkey_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.65) #9
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #7
  %.not11 = icmp eq i32 %i.v, 408
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.w, ptr noundef nonnull @.str.66) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @EVP_PKEY_get0_EC_KEY(ptr noundef nonnull %.1.i) #7 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr @ePKeyError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.z, ptr noundef nonnull @.str.67) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call ptr @EC_KEY_get0_group(ptr noundef nonnull %i.x) #7 ; 2 uses
  %.not12 = icmp eq ptr %i.aa, null
  br i1 %.not12, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr @cEC_GROUP, align 8, !tbaa !12
  %i.ac = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.ab, ptr noundef null, ptr noundef nonnull @ossl_ec_group_type) #7 ; 2 uses
  %i.ad = tail call ptr @EC_GROUP_dup(ptr noundef nonnull %i.aa) #7 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %bb.l, label %ec_group_new.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr @eEC_GROUP, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.68) #9
  unreachable

ec_group_new.exit:                                ; preds = %bb.k
  %i.af = inttoptr i64 %i.ac to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %ec_group_new.exit
  %.0 = phi i64 [ %i.ac, %ec_group_new.exit ], [ 4, %bb.j ]
  ret i64 %.0
}

; Function Attrs: noreturn nounwind uwtable
define internal noundef i64 @ossl_ec_key_set_group(i64 %0, i64 %1) #2 {
bb.a:
  %i.a = load i64, ptr @ePKeyError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.69) #9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ec_key_get_private_key(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
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
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_evp_pkey_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !23

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_evp_pkey_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.65) #9
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #7
  %.not10 = icmp eq i32 %i.v, 408
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.w, ptr noundef nonnull @.str.66) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @EVP_PKEY_get0_EC_KEY(ptr noundef nonnull %.1.i) #7 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
end_hunk_0
begin_hunk_1_@ossl_ec_group_set_seed:bb.a
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.ae = phi ptr [ %i.ad, %bb.g ], [ %i.ac, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !30
  %i.ah = call i64 @EC_GROUP_set_seed(ptr noundef nonnull %.1.i, ptr noundef %i.ae, i64 noundef %i.ag) #7
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !30
  %.not = icmp eq i64 %i.ah, %i.al
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %RSTRING_PTR.exit
  %i.am = load i64, ptr @eEC_GROUP, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.am, ptr noundef nonnull @.str.92) #9
  unreachable

bb.i:                                             ; preds = %RSTRING_PTR.exit
  ret i64 %i.ai
}

; Function Attrs: nounwind uwtable
define internal range(i64 -4294967295, 4294967296) i64 @ossl_ec_group_get_degree(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
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
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ec_group_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !23

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ec_group_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ec_group_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = icmp eq ptr %.1.i, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @eEC_GROUP, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.v, ptr noundef nonnull @.str.58) #9
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EC_GROUP_get_degree(ptr noundef nonnull %.1.i) #7
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 1
  %i.z = or disjoint i64 %i.y, 1
  ret i64 %i.z
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ec_group_to_pem(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i64 @ossl_ec_group_to_string(i64 noundef %0, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ec_group_to_der(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i64 @ossl_ec_group_to_string(i64 noundef %0, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ec_group_to_text(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
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
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ec_group_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !23

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ec_group_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ec_group_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = icmp eq ptr %.1.i, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @eEC_GROUP, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.v, ptr noundef nonnull @.str.58) #9
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call ptr @BIO_s_mem() #7
  %i.x = tail call ptr @BIO_new(ptr noundef %i.w) #7 ; 4 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr @eEC_GROUP, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.y, ptr noundef nonnull @.str.93) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = tail call i32 @ECPKParameters_print(ptr noundef nonnull %i.x, ptr noundef nonnull %.1.i, i32 noundef 0) #7
  %.not7 = icmp eq i32 %i.z, 0
  br i1 %.not7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i32 @BIO_free(ptr noundef nonnull %i.x) #7 ; 0 uses
  %i.ab = load i64, ptr @eEC_GROUP, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ab, ptr noundef null) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = tail call i64 @ossl_membio2str(ptr noundef nonnull %i.x) #7
  ret i64 %i.ac
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ec_point_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_ec_point_type) #7
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ec_point_initialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22   ; 2 uses
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
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @ossl_ec_point_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !23

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i34 = icmp eq ptr %.015.i, null
  br i1 %.not.i34, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_ec_point_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_ec_point_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i33 = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ]
  %.not = icmp eq ptr %.1.i33, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @eEC_POINT, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.95) #9
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = icmp slt i32 %0, 1
  br i1 %i.w, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.x = load i64, ptr %1, align 8, !tbaa !12     ; 8 uses
  %.not50 = icmp eq i32 %0, 1                     ; 2 uses
  br i1 %.not50, label %rb_scan_args_set.exit, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !12   ; 2 uses
  %i.aa = icmp eq i32 %0, 2
  store i64 %i.z, ptr %i.a, align 8, !tbaa !12
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #9
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  store i64 4, ptr %i.a, align 8, !tbaa !12
  %i.ab = load i64, ptr @cEC_POINT, align 8, !tbaa !12
  %i.ac = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.x, i64 noundef %i.ab) #7
  %.not26 = icmp eq i64 %i.ac, 0
  br i1 %.not26, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %3 = load i64, ptr @cEC_POINT, align 8, !tbaa !12
  %4 = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.x, i64 noundef %3) #7
  %.not2696 = icmp eq i64 %4, 0
  br i1 %.not2696, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.97) #9
  unreachable

bb.k:                                             ; preds = %rb_scan_args_set.exit
  %i.ae = tail call i64 @ossl_ec_point_initialize_copy(i64 noundef %2, i64 noundef %i.x) ; 0 uses
  br label %bb.ac

bb.l:                                             ; preds = %bb.i, %rb_scan_args_set.exit
  %5 = phi i64 [ %i.z, %bb.i ], [ 4, %rb_scan_args_set.exit ]
  %i.af = icmp eq i64 %i.x, 0
  %i.ag = and i64 %i.x, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %.critedge.i37, label %rbimpl_RB_TYPE_P_fastpath.exit.i35, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i35:               ; preds = %bb.l
  %i.aj = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20
  %i.al = and i64 %i.ak, 95
  %or.cond.not.i36 = icmp eq i64 %i.al, 76
  br i1 %or.cond.not.i36, label %bb.m, label %.critedge.i37, !prof !21

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i35
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !22 ; 2 uses
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = trunc i64 %i.an to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  br i1 %i.aq, label %RTYPEDDATA_GET_DATA.exit.i39, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i39

RTYPEDDATA_GET_DATA.exit.i39:                     ; preds = %bb.n, %bb.m
  %i.at = phi ptr [ %i.as, %bb.n ], [ %i.ar, %bb.m ] ; 2 uses
  %i.au = icmp eq i64 %i.ao, ptrtoint (ptr @ossl_ec_group_type to i64)
  br i1 %i.au, label %rbimpl_check_typeddata.exit43, label %.preheader.i40, !prof !23

.preheader.i40:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i39, %bb.o
  %.015.i41 = phi ptr [ %i.aw, %bb.o ], [ %i.ap, %RTYPEDDATA_GET_DATA.exit.i39 ] ; 2 uses
  %.not.i42 = icmp eq ptr %.015.i41, null
  br i1 %.not.i42, label %.critedge.i37, label %bb.o

bb.o:                                             ; preds = %.preheader.i40
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i41, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, @ossl_ec_group_type
  br i1 %i.ax, label %rbimpl_check_typeddata.exit43, label %.preheader.i40, !llvm.loop !0

.critedge.i37:                                    ; preds = %.preheader.i40, %rbimpl_RB_TYPE_P_fastpath.exit.i35, %bb.l
  %i.ay = tail call ptr @rb_check_typeddata(i64 noundef %i.x, ptr noundef nonnull @ossl_ec_group_type) #7
  br label %rbimpl_check_typeddata.exit43

rbimpl_check_typeddata.exit43:                    ; preds = %bb.o, %RTYPEDDATA_GET_DATA.exit.i39, %.critedge.i37
  %.1.i38 = phi ptr [ %i.ay, %.critedge.i37 ], [ %i.at, %RTYPEDDATA_GET_DATA.exit.i39 ], [ %i.at, %bb.o ] ; 5 uses
  %i.az = icmp eq ptr %.1.i38, null
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rbimpl_check_typeddata.exit43
  %i.ba = load i64, ptr @eEC_GROUP, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ba, ptr noundef nonnull @.str.58) #9
  unreachable

bb.q:                                             ; preds = %rbimpl_check_typeddata.exit43
  br i1 %.not50, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bb = tail call ptr @EC_POINT_new(ptr noundef nonnull %.1.i38) #7 ; 2 uses
  %.not31 = icmp eq ptr %i.bb, null
  br i1 %.not31, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bc = load i64, ptr @eEC_POINT, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bc, ptr noundef nonnull @.str.98) #9
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bd = load i64, ptr @cBN, align 8, !tbaa !12
  %i.be = tail call i64 @rb_obj_is_kind_of(i64 noundef %5, i64 noundef %i.bd) #7
  %.not27 = icmp eq i64 %i.be, 0
  br i1 %.not27, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = call ptr @ossl_bn_value_ptr(ptr noundef nonnull %i.a) #7
  %i.bg = call ptr @ossl_bn_ctx_get() #7
  %i.bh = call ptr @EC_POINT_bn2point(ptr noundef nonnull %.1.i38, ptr noundef %i.bf, ptr noundef null, ptr noundef %i.bg) #7 ; 2 uses
  %.not30 = icmp eq ptr %i.bh, null
  br i1 %.not30, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bi = load i64, ptr @eEC_POINT, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bi, ptr noundef nonnull @.str.99) #9
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bj = call i64 @rb_string_value(ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.bk = call ptr @EC_POINT_new(ptr noundef nonnull %.1.i38) #7 ; 4 uses
  %.not28 = icmp eq ptr %i.bk, null
  br i1 %.not28, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = load i64, ptr @eEC_POINT, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bl, ptr noundef nonnull @.str.98) #9
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !12
  %i.bn = inttoptr i64 %i.bm to ptr               ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.bp = and i64 %i.bo, 8192
  %.not.i44 = icmp eq i64 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  br i1 %.not.i44, label %RSTRING_PTR.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.y, %bb.z
  %i.bs = phi ptr [ %i.br, %bb.z ], [ %i.bq, %bb.y ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !30
  %i.bv = call ptr @ossl_bn_ctx_get() #7
  %i.bw = call i32 @EC_POINT_oct2point(ptr noundef nonnull %.1.i38, ptr noundef nonnull %i.bk, ptr noundef %i.bs, i64 noundef %i.bu, ptr noundef %i.bv) #7
  %.not29 = icmp eq i32 %i.bw, 0
  br i1 %.not29, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %RSTRING_PTR.exit
  call void @EC_POINT_free(ptr noundef nonnull %i.bk) #7
  %i.bx = load i64, ptr @eEC_POINT, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bx, ptr noundef nonnull @.str.100) #9
  unreachable

bb.ab:                                            ; preds = %bb.u, %RSTRING_PTR.exit, %bb.r
  %.0 = phi ptr [ %i.bb, %bb.r ], [ %i.bh, %bb.u ], [ %i.bk, %RSTRING_PTR.exit ]
  %i.by = inttoptr i64 %2 to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store ptr %.0, ptr %i.bz, align 8, !tbaa !18
  %i.ca = load i64, ptr @id_i_group, align 8, !tbaa !12
  %i.cb = call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.ca, i64 noundef %i.x) #7 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ec_point_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
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
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_ec_point_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !23

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_ec_point_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_ec_point_type) #7
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ]
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @eEC_POINT, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.101) #9
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = icmp eq i64 %1, 0
  %i.w = and i64 %1, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %.critedge.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i17, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i17:               ; preds = %bb.f
  %i.z = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ab = and i64 %i.aa, 95
  %or.cond.not.i18 = icmp eq i64 %i.ab, 76
  br i1 %or.cond.not.i18, label %bb.g, label %.critedge.i19, !prof !21

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %i.ae = and i64 %i.ad, -2                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = trunc i64 %i.ad to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  br i1 %i.ag, label %RTYPEDDATA_GET_DATA.exit.i21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18
  br label %RTYPEDDATA_GET_DATA.exit.i21

RTYPEDDATA_GET_DATA.exit.i21:                     ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ak = icmp eq i64 %i.ae, ptrtoint (ptr @ossl_ec_point_type to i64)
  br i1 %i.ak, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !prof !23

.preheader.i22:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i21, %bb.i
  %.015.i23 = phi ptr [ %i.am, %bb.i ], [ %i.af, %RTYPEDDATA_GET_DATA.exit.i21 ] ; 2 uses
  %.not.i24 = icmp eq ptr %.015.i23, null
  br i1 %.not.i24, label %.critedge.i19, label %bb.i

bb.i:                                             ; preds = %.preheader.i22
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i23, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27 ; 2 uses
  %i.an = icmp eq ptr %i.am, @ossl_ec_point_type
  br i1 %i.an, label %rbimpl_check_typeddata.exit25, label %.preheader.i22, !llvm.loop !0

.critedge.i19:                                    ; preds = %.preheader.i22, %rbimpl_RB_TYPE_P_fastpath.exit.i17, %bb.f
  %i.ao = tail call ptr @rb_check_typeddata(i64 noundef %1, ptr noundef nonnull @ossl_ec_point_type) #7
  br label %rbimpl_check_typeddata.exit25

rbimpl_check_typeddata.exit25:                    ; preds = %bb.i, %RTYPEDDATA_GET_DATA.exit.i21, %.critedge.i19
  %.1.i20 = phi ptr [ %i.ao, %.critedge.i19 ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i21 ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ap = icmp eq ptr %.1.i20, null
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.aq = load i64, ptr @eEC_POINT, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.85) #9
  unreachable

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit25
  %i.ar = load i64, ptr @id_i_group, align 8, !tbaa !12
  %i.as = tail call i64 @rb_attr_get(i64 noundef %1, i64 noundef %i.ar) #7
  %i.at = tail call i64 @rb_obj_dup(i64 noundef %i.as) #7 ; 5 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = and i64 %i.at, 7
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = or i1 %i.au, %i.aw
  br i1 %i.ax, label %.critedge.i28, label %rbimpl_RB_TYPE_P_fastpath.exit.i26, !prof !19

rbimpl_RB_TYPE_P_fastpath.exit.i26:               ; preds = %bb.k
  %i.ay = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.ba = and i64 %i.az, 95
  %or.cond.not.i27 = icmp eq i64 %i.ba, 76
  br i1 %or.cond.not.i27, label %bb.l, label %.critedge.i28, !prof !21
end_hunk_1
