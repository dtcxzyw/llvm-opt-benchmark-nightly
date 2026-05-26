inline.NumInlined: 452
inline.NumDeleted: 63
begin_hunk_0_@SSL_CTX_set_ex_data
declare i32 @SSL_CTX_set_ex_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ossl_sslctx_mark(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr @ossl_sslctx_ex_ptr_idx, align 4, !tbaa !6
  %i.b = tail call ptr @SSL_CTX_get_ex_data(ptr noundef %0, i32 noundef %i.a) #11
  %i.c = ptrtoint ptr %i.b to i64
  tail call void @rb_gc_mark(i64 noundef %i.c) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ossl_sslctx_free(ptr noundef %0) #0 {
bb.a:
  tail call void @SSL_CTX_free(ptr noundef %0) #11
  ret void
}

declare ptr @SSL_CTX_get_ex_data(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_proto_version(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !10
  %i.b = icmp eq i64 %0, 4
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 6
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_integer_type_p.exit.thread8, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 10
  br i1 %i.k, label %bb.e, label %RB_SYMBOL_P.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_fix2int(i64 noundef %0) #11
  br label %rb_num2int_inline.exit

bb.e:                                             ; preds = %rb_integer_type_p.exit
  %i.m = tail call i64 @rb_num2int(i64 noundef %0) #11
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.d, %bb.e
  %.0.i6 = phi i64 [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.n = trunc i64 %.0.i6 to i32
  br label %bb.f

rb_integer_type_p.exit.thread8:                   ; preds = %bb.c
  %i.o = and i64 %0, 254
  %i.p = icmp eq i64 %i.o, 12
  br i1 %i.p, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread10

RB_SYMBOL_P.exit:                                 ; preds = %rb_integer_type_p.exit
  %i.q = inttoptr i64 %0 to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 20
  br i1 %i.t, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread10

RB_SYMBOL_P.exit.thread:                          ; preds = %rb_integer_type_p.exit.thread8, %RB_SYMBOL_P.exit
  %i.u = tail call i64 @rb_sym2str(i64 noundef %0) #11
  store i64 %i.u, ptr %i.a, align 8, !tbaa !10
  br label %RB_SYMBOL_P.exit.thread10

RB_SYMBOL_P.exit.thread10:                        ; preds = %rb_integer_type_p.exit.thread8, %RB_SYMBOL_P.exit.thread, %RB_SYMBOL_P.exit
  %i.v = call i64 @rb_string_value(ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17
  %i.z = and i64 %i.y, 8192
  %.not.i = icmp eq i64 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37 ; 12 uses
  br i1 %.not.i, label %RSTRING_PTR.exit.us.preheader, label %RB_SYMBOL_P.exit.thread10.split

RSTRING_PTR.exit.us.preheader:                    ; preds = %RB_SYMBOL_P.exit.thread10
  %i.ad = call i32 @strncmp(ptr noundef nonnull @.str.192, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #16
  %.not.us = icmp eq i32 %i.ad, 0
  br i1 %.not.us, label %.split13.us, label %RSTRING_PTR.exit.us.1

RSTRING_PTR.exit.us.1:                            ; preds = %RSTRING_PTR.exit.us.preheader
  %i.ae = call i32 @strncmp(ptr noundef nonnull @.str.193, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #16
  %.not.us.1 = icmp eq i32 %i.ae, 0
  br i1 %.not.us.1, label %.split13.us, label %RSTRING_PTR.exit.us.2

RSTRING_PTR.exit.us.2:                            ; preds = %RSTRING_PTR.exit.us.1
  %i.af = call i32 @strncmp(ptr noundef nonnull @.str.194, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #16
  %.not.us.2 = icmp eq i32 %i.af, 0
  br i1 %.not.us.2, label %.split13.us, label %RSTRING_PTR.exit.us.3

RSTRING_PTR.exit.us.3:                            ; preds = %RSTRING_PTR.exit.us.2
  %i.ag = call i32 @strncmp(ptr noundef nonnull @.str.195, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #16
  %.not.us.3 = icmp eq i32 %i.ag, 0
  br i1 %.not.us.3, label %.split13.us, label %RSTRING_PTR.exit.us.4

RSTRING_PTR.exit.us.4:                            ; preds = %RSTRING_PTR.exit.us.3
  %i.ah = call i32 @strncmp(ptr noundef nonnull @.str.196, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #16
  %.not.us.4 = icmp eq i32 %i.ah, 0
  br i1 %.not.us.4, label %.split13.us, label %RSTRING_PTR.exit.us.5

RSTRING_PTR.exit.us.5:                            ; preds = %RSTRING_PTR.exit.us.4
  %i.ai = call i32 @strncmp(ptr noundef nonnull @.str.197, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #16
  %.not.us.5 = icmp eq i32 %i.ai, 0
  br i1 %.not.us.5, label %.split13.us, label %.split.us

RB_SYMBOL_P.exit.thread10.split:                  ; preds = %RB_SYMBOL_P.exit.thread10
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 6 uses
  %i.ak = call i32 @strncmp(ptr noundef nonnull @.str.192, ptr noundef %i.aj, i64 noundef %i.ac) #16
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.split13.us, label %RSTRING_PTR.exit.1

RSTRING_PTR.exit.1:                               ; preds = %RB_SYMBOL_P.exit.thread10.split
  %i.al = call i32 @strncmp(ptr noundef nonnull @.str.193, ptr noundef %i.aj, i64 noundef %i.ac) #16
  %.not.1 = icmp eq i32 %i.al, 0
  br i1 %.not.1, label %.split13.us, label %RSTRING_PTR.exit.2

RSTRING_PTR.exit.2:                               ; preds = %RSTRING_PTR.exit.1
  %i.am = call i32 @strncmp(ptr noundef nonnull @.str.194, ptr noundef %i.aj, i64 noundef %i.ac) #16
  %.not.2 = icmp eq i32 %i.am, 0
  br i1 %.not.2, label %.split13.us, label %RSTRING_PTR.exit.3

RSTRING_PTR.exit.3:                               ; preds = %RSTRING_PTR.exit.2
  %i.an = call i32 @strncmp(ptr noundef nonnull @.str.195, ptr noundef %i.aj, i64 noundef %i.ac) #16
  %.not.3 = icmp eq i32 %i.an, 0
  br i1 %.not.3, label %.split13.us, label %RSTRING_PTR.exit.4

RSTRING_PTR.exit.4:                               ; preds = %RSTRING_PTR.exit.3
  %i.ao = call i32 @strncmp(ptr noundef nonnull @.str.196, ptr noundef %i.aj, i64 noundef %i.ac) #16
  %.not.4 = icmp eq i32 %i.ao, 0
  br i1 %.not.4, label %.split13.us, label %RSTRING_PTR.exit.5

RSTRING_PTR.exit.5:                               ; preds = %RSTRING_PTR.exit.4
  %i.ap = call i32 @strncmp(ptr noundef nonnull @.str.197, ptr noundef %i.aj, i64 noundef %i.ac) #16
  %.not.5 = icmp eq i32 %i.ap, 0
  br i1 %.not.5, label %.split13.us, label %.split.us

.split13.us:                                      ; preds = %RB_SYMBOL_P.exit.thread10.split, %RSTRING_PTR.exit.1, %RSTRING_PTR.exit.2, %RSTRING_PTR.exit.3, %RSTRING_PTR.exit.4, %RSTRING_PTR.exit.5, %RSTRING_PTR.exit.us.preheader, %RSTRING_PTR.exit.us.1, %RSTRING_PTR.exit.us.2, %RSTRING_PTR.exit.us.3, %RSTRING_PTR.exit.us.4, %RSTRING_PTR.exit.us.5
  %i.aq = phi i64 [ 5, %RSTRING_PTR.exit.us.5 ], [ 0, %RSTRING_PTR.exit.us.preheader ], [ 1, %RSTRING_PTR.exit.us.1 ], [ 2, %RSTRING_PTR.exit.us.2 ], [ 3, %RSTRING_PTR.exit.us.3 ], [ 4, %RSTRING_PTR.exit.us.4 ], [ 0, %RB_SYMBOL_P.exit.thread10.split ], [ 1, %RSTRING_PTR.exit.1 ], [ 2, %RSTRING_PTR.exit.2 ], [ 3, %RSTRING_PTR.exit.3 ], [ 4, %RSTRING_PTR.exit.4 ], [ 5, %RSTRING_PTR.exit.5 ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr @parse_proto_version.map, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !44
  br label %bb.f

.split.us:                                        ; preds = %RSTRING_PTR.exit.5, %RSTRING_PTR.exit.us.5
  %i.au = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.au, ptr noundef nonnull @.str.198, i64 noundef %i.w) #12
  unreachable

bb.f:                                             ; preds = %bb.a, %.split13.us, %rb_num2int_inline.exit
  %.05 = phi i32 [ %i.at, %.split13.us ], [ %i.n, %rb_num2int_inline.exit ], [ 0, %bb.a ]
  ret i32 %.05
}

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #2

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rb_num2int_inline(i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef %0) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2int(i64 noundef %0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = trunc i64 %.0 to i32
  ret i32 %i.d
}

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #1

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

declare ptr @SSL_CTX_get_ciphers(ptr noundef) local_unnamed_addr #1

declare i64 @rb_ary_new() local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ossl_ssl_cipher_to_ary(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call i64 @rb_ary_new_capa(i64 noundef 4) #11 ; 5 uses
  %i.c = tail call ptr @SSL_CIPHER_get_name(ptr noundef %0) #11
  %i.d = tail call i64 @rb_str_new_cstr(ptr noundef %i.c) #11
  %i.e = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.d) #11 ; 0 uses
  %i.f = tail call ptr @SSL_CIPHER_get_version(ptr noundef %0) #11
  %i.g = tail call i64 @rb_str_new_cstr(ptr noundef %i.f) #11
  %i.h = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.g) #11 ; 0 uses
  %i.i = call i32 @SSL_CIPHER_get_bits(ptr noundef %0, ptr noundef nonnull %i.a) #11
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1
  %i.m = call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.l) #11 ; 0 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !6
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.q) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %i.b
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #1

declare ptr @SSL_CIPHER_get_name(ptr noundef) local_unnamed_addr #1

declare ptr @SSL_CIPHER_get_version(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_CIPHER_get_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @build_cipher_string(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit15.thread, label %rbimpl_RB_TYPE_P_fastpath.exit15

rbimpl_RB_TYPE_P_fastpath.exit15:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 7
  br i1 %i.i, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit15.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit15
  %i.j = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #11 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.al, %bb.k ]    ; 4 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.m = and i64 %i.l, 8192
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %i.l, 15
  %i.o = and i64 %i.n, 127
  br label %rb_array_len.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.k, align 8, !tbaa !32
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.d, %bb.e
  %.0.i16 = phi i64 [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.q = icmp slt i64 %.0, %.0.i16
  br i1 %i.q, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %rb_array_len.exit
  %i.r = tail call i64 @rb_ary_entry(i64 noundef %0, i64 noundef %.0) #16 ; 6 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %i.r, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.w = inttoptr i64 %i.r to ptr
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17
  %i.y = and i64 %i.x, 31
  %i.z = icmp eq i64 %i.y, 7
  br i1 %i.z, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aa = tail call i64 @rb_ary_entry(i64 noundef %i.r, i64 noundef 0) #16
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f, %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit
  %.013 = phi i64 [ %i.aa, %bb.g ], [ %i.r, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.r, %bb.f ]
  %i.ab = tail call i64 @rb_String(i64 noundef %.013) #11
  %i.ac = tail call i64 @rb_str_append(i64 noundef %i.j, i64 noundef %i.ab) #11 ; 0 uses
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %i.ae = and i64 %i.ad, 8192
  %.not.i17 = icmp eq i64 %i.ae, 0
  br i1 %.not.i17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.af = lshr i64 %i.ad, 15
  %i.ag = and i64 %i.af, 127
  br label %rb_array_len.exit19

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !32
  br label %rb_array_len.exit19

rb_array_len.exit19:                              ; preds = %bb.h, %bb.i
  %.0.i18 = phi i64 [ %i.ag, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = add nsw i64 %.0.i18, -1
  %i.aj = icmp slt i64 %.0, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_array_len.exit19
  %i.ak = tail call i64 @rb_str_cat(i64 noundef %i.j, ptr noundef nonnull @.str.201, i64 noundef 1) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %rb_array_len.exit19, %bb.j
  %i.al = add nuw nsw i64 %.0, 1
  br label %bb.c, !llvm.loop !46

rbimpl_RB_TYPE_P_fastpath.exit15.thread:          ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit15
  store i64 %0, ptr %i.a, align 8, !tbaa !10
  %i.am = call i64 @rb_string_value(ptr noundef nonnull %i.a) #11 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %rb_array_len.exit, %rbimpl_RB_TYPE_P_fastpath.exit15.thread
  %i.an = phi i64 [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit15.thread ], [ %i.j, %rb_array_len.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %i.an
}

declare i32 @SSL_CTX_set_cipher_list(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_String(i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_set_ciphersuites(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GetPKeyPtr(i64 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_base_id(ptr noundef) local_unnamed_addr #1

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_set0_tmp_dh_pkey(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_up_ref(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_get_security_level(ptr noundef) local_unnamed_addr #1

declare void @SSL_CTX_set_security_level(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @GetX509CertPtr(i64 noundef) local_unnamed_addr #1

declare ptr @GetPrivPKeyPtr(i64 noundef) local_unnamed_addr #1

declare ptr @X509_get_pubkey(ptr noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #1
end_hunk_0
begin_hunk_1_@ossl_ssl_write_internal_safe:bb.a
  %i.as = or i1 %.not52, %i.ar                    ; 2 uses
  %i.at = inttoptr i64 %i.f to ptr                ; 2 uses
  br label %io_wait_writable.exit

io_wait_writable.exit:                            ; preds = %io_wait_writable.exit.backedge, %.preheader
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.av = and i64 %i.au, 8192
  %.not.i35 = icmp eq i64 %i.av, 0
  br i1 %.not.i35, label %RSTRING_PTR.exit, label %bb.j

bb.j:                                             ; preds = %io_wait_writable.exit
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !32
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %io_wait_writable.exit, %bb.j
  %i.ax = phi ptr [ %i.aw, %bb.j ], [ %i.ap, %io_wait_writable.exit ]
  %i.ay = tail call i32 @SSL_write(ptr noundef nonnull %.1.i, ptr noundef %i.ax, i32 noundef %i.an) #11 ; 2 uses
  %i.az = load i64, ptr @ID_callback_state, align 8, !tbaa !10
  %i.ba = tail call i64 @rb_attr_get(i64 noundef %i.b, i64 noundef %i.az) #11 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %RSTRING_PTR.exit
  %i.bc = load i64, ptr @ID_callback_state, align 8, !tbaa !10
  %i.bd = tail call i64 @rb_ivar_set(i64 noundef %i.b, i64 noundef %i.bc, i64 noundef 4) #11 ; 0 uses
  tail call void @ossl_clear_error() #11
  %i.be = tail call fastcc i32 @rb_num2int_inline(i64 noundef %i.ba)
  tail call void @rb_jump_tag(i32 noundef %i.be) #12
  unreachable

bb.l:                                             ; preds = %RSTRING_PTR.exit
  %i.bf = tail call i32 @SSL_get_error(ptr noundef nonnull %.1.i, i32 noundef %i.ay) #11
  switch i32 %i.bf, label %.loopexit [
    i32 0, label %bb.m
    i32 3, label %bb.n
    i32 2, label %bb.r
    i32 5, label %bb.v
  ]

bb.m:                                             ; preds = %bb.l
  %i.bg = sext i32 %i.ay to i64
  %i.bh = shl nsw i64 %i.bg, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %io_wait_writable.exit.thread

bb.n:                                             ; preds = %bb.l
  br i1 %i.as, label %bb.p, label %rbimpl_RB_TYPE_P_fastpath.exit.i36

rbimpl_RB_TYPE_P_fastpath.exit.i36:               ; preds = %bb.n
  %i.bj = load i64, ptr %i.at, align 8, !tbaa !17
  %i.bk = and i64 %i.bj, 31
  %i.bl = icmp eq i64 %i.bk, 8
  br i1 %i.bl, label %bb.o, label %.thread

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i36
  %i.bm = load i64, ptr @sym_exception, align 8, !tbaa !10
  %i.bn = tail call i64 @rb_hash_lookup2(i64 noundef %i.f, i64 noundef %i.bm, i64 noundef 36) #11
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %no_exception_p.exit, label %.thread

no_exception_p.exit:                              ; preds = %bb.o
  %i.bp = load i64, ptr @sym_wait_writable, align 8, !tbaa !10
  br label %io_wait_writable.exit.thread

bb.p:                                             ; preds = %bb.n
  br i1 %.not52, label %write_would_block.exit, label %.thread

.thread:                                          ; preds = %bb.p, %bb.o, %rbimpl_RB_TYPE_P_fastpath.exit.i36
  %i.bq = load i64, ptr @eSSLErrorWaitWritable, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bq, ptr noundef nonnull @.str.282) #12
  unreachable

write_would_block.exit:                           ; preds = %bb.p
  %i.br = tail call ptr @rb_errno_ptr() #11
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !6
  %i.bt = tail call i32 @rb_io_maybe_wait_writable(i32 noundef %i.bs, i64 noundef %i.ae, i64 noundef 4) #11
  %.not.i38 = icmp eq i32 %i.bt, 0
  br i1 %.not.i38, label %bb.q, label %io_wait_writable.exit.backedge

bb.q:                                             ; preds = %write_would_block.exit
  %i.bu = load i64, ptr @rb_eIOTimeoutError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bu, ptr noundef nonnull @.str.283) #12
  unreachable

bb.r:                                             ; preds = %bb.l
  br i1 %i.as, label %bb.t, label %rbimpl_RB_TYPE_P_fastpath.exit.i39

rbimpl_RB_TYPE_P_fastpath.exit.i39:               ; preds = %bb.r
  %i.bv = load i64, ptr %i.at, align 8, !tbaa !17
  %i.bw = and i64 %i.bv, 31
  %i.bx = icmp eq i64 %i.bw, 8
  br i1 %i.bx, label %bb.s, label %.thread95

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i39
  %i.by = load i64, ptr @sym_exception, align 8, !tbaa !10
  %i.bz = tail call i64 @rb_hash_lookup2(i64 noundef %i.f, i64 noundef %i.by, i64 noundef 36) #11
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %no_exception_p.exit42, label %.thread95

no_exception_p.exit42:                            ; preds = %bb.s
  %i.cb = load i64, ptr @sym_wait_readable, align 8, !tbaa !10
  br label %io_wait_writable.exit.thread

bb.t:                                             ; preds = %bb.r
  br i1 %.not52, label %read_would_block.exit, label %.thread95

.thread95:                                        ; preds = %bb.t, %bb.s, %rbimpl_RB_TYPE_P_fastpath.exit.i39
  %i.cc = load i64, ptr @eSSLErrorWaitReadable, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.cc, ptr noundef nonnull @.str.284) #12
  unreachable

read_would_block.exit:                            ; preds = %bb.t
  %i.cd = tail call ptr @rb_errno_ptr() #11
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !6
  %i.cf = tail call i32 @rb_io_maybe_wait_readable(i32 noundef %i.ce, i64 noundef %i.ae, i64 noundef 4) #11
  %.not.i44 = icmp eq i32 %i.cf, 0
  br i1 %.not.i44, label %bb.u, label %io_wait_writable.exit.backedge

io_wait_writable.exit.backedge:                   ; preds = %read_would_block.exit, %write_would_block.exit
  br label %io_wait_writable.exit

bb.u:                                             ; preds = %read_would_block.exit
  %i.cg = load i64, ptr @rb_eIOTimeoutError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @.str.285) #12
  unreachable

bb.v:                                             ; preds = %bb.l
  %i.ch = tail call ptr @rb_errno_ptr() #11
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !6
  %.not32 = icmp eq i32 %i.ci, 0
  br i1 %.not32, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @rb_sys_fail(ptr noundef null) #12
  unreachable

.loopexit:                                        ; preds = %bb.l, %bb.v
  %i.cj = load i64, ptr @eSSLError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.cj, ptr noundef nonnull @.str.298) #12
  unreachable

io_wait_writable.exit.thread:                     ; preds = %no_exception_p.exit42, %no_exception_p.exit, %bb.m, %RSTRING_LENINT.exit
  %.2 = phi i64 [ 1, %RSTRING_LENINT.exit ], [ %i.cb, %no_exception_p.exit42 ], [ %i.bp, %no_exception_p.exit ], [ %i.bi, %bb.m ]
  ret i64 %.2
}

declare i32 @SSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SSL_shutdown(ptr noundef) local_unnamed_addr #1

declare ptr @SSL_get_certificate(ptr noundef) local_unnamed_addr #1

declare ptr @SSL_get1_peer_certificate(ptr noundef) local_unnamed_addr #1

declare ptr @SSL_get_peer_cert_chain(ptr noundef) local_unnamed_addr #1

declare ptr @SSL_get_version(ptr noundef) local_unnamed_addr #1

declare ptr @SSL_get_current_cipher(ptr noundef) local_unnamed_addr #1

declare ptr @SSL_state_string(ptr noundef) local_unnamed_addr #1

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #1

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SSL_pending(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_session_reused(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_set_session(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @SSL_get_client_CA_list(ptr noundef) local_unnamed_addr #1

declare i64 @ossl_x509name_sk2ary(ptr noundef) local_unnamed_addr #1

declare i64 @SSL_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @SSL_get_finished(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @SSL_get_peer_finished(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ossl_pkey_wrap(ptr noundef) local_unnamed_addr #1

declare void @SSL_get0_alpn_selected(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SSL_export_keying_material(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @SSL_get0_next_proto_negotiated(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_uint2big(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !15, i64 32}
!13 = !{!"RTypedData", !14, i64 0, !11, i64 16, !11, i64 24, !15, i64 32}
!14 = !{!"RBasic", !11, i64 0, !11, i64 8}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!"branch_weights", i32 2146410443, i32 1073205}
!17 = !{!14, !11, i64 0}
!18 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!19 = !{!"branch_weights", i32 4001, i32 1}
!20 = !{!"branch_weights", i32 -100663296, i32 2097152}
!21 = !{!13, !11, i64 24}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24, !27, i64 48}
!24 = !{!"rb_data_type_struct", !25, i64 0, !26, i64 8, !27, i64 48, !15, i64 56, !11, i64 64}
!25 = !{!"p1 omnipotent char", !15, i64 0}
!26 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !8, i64 32}
!27 = !{!"p1 _ZTS19rb_data_type_struct", !15, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"branch_weights", i32 1073205, i32 2146410443}
!31 = distinct !{!31, !29}
!32 = !{!8, !8, i64 0}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !29}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!37 = !{!38, !11, i64 16}
!38 = !{!"RString", !14, i64 0, !11, i64 16, !8, i64 24}
!39 = distinct !{!39, !29}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS11evp_pkey_st", !15, i64 0}
!42 = !{!25, !25, i64 0}
!43 = !{ptr @rb_str_new, ptr @rb_str_new_static}
!44 = !{!45, !7, i64 8}
!45 = !{!"", !25, i64 0, !7, i64 8}
!46 = distinct !{!46, !29}
!47 = !{!48, !11, i64 0}
!48 = !{!"tmp_dh_callback_args", !11, i64 0, !7, i64 8, !7, i64 12}
!49 = !{!48, !7, i64 8}
!50 = !{!48, !7, i64 12}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTS7x509_st", !15, i64 0}
!53 = !{!54, !11, i64 0}
!54 = !{!"npn_select_cb_common_args", !11, i64 0, !25, i64 8, !7, i64 16}
!55 = !{!54, !25, i64 8}
!56 = !{!54, !7, i64 16}
!57 = !{!58, !15, i64 32}
!58 = !{!"RData", !14, i64 0, !15, i64 16, !15, i64 24, !15, i64 32}
!59 = !{!60, !11, i64 0}
!60 = !{!"ossl_call_keylog_cb_args", !11, i64 0, !25, i64 8}
!61 = !{!60, !25, i64 8}
!62 = distinct !{!62, !29}
!63 = !{!64, !65, i64 16}
!64 = !{!"RFile", !14, i64 0, !65, i64 16}
!65 = !{!"p1 _ZTS5rb_io", !15, i64 0}
!66 = !{ptr @SSL_accept, ptr @SSL_connect}
end_hunk_1
