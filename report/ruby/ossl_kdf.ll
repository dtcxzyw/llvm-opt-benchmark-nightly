inline.NumInlined: 50
inline.NumDeleted: 14
begin_hunk_0_@kdf_pbkdf2_hmac:bb.a
  br i1 %.not10, label %bb.o, label %bb.p

bb.o:                                             ; preds = %RSTRING_PTR.exit19
  %i.bp = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bp, ptr noundef nonnull @.str.10) #6
  unreachable

bb.p:                                             ; preds = %RSTRING_PTR.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %i.am
}

; Function Attrs: nounwind uwtable
define internal i64 @kdf_scrypt(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = load i64, ptr @kdf_scrypt.kwargs_ids, align 16, !tbaa !10
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #5
  store i64 %i.d, ptr @kdf_scrypt.kwargs_ids, align 16, !tbaa !10
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.11, i64 noundef 1) #5
  store i64 %i.e, ptr getelementptr inbounds nuw (i8, ptr @kdf_scrypt.kwargs_ids, i64 8), align 8, !tbaa !10
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.12, i64 noundef 1) #5
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @kdf_scrypt.kwargs_ids, i64 16), align 16, !tbaa !10
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 1) #5
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @kdf_scrypt.kwargs_ids, i64 24), align 8, !tbaa !10
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.7, i64 noundef 6) #5
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @kdf_scrypt.kwargs_ids, i64 32), align 16, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %0 to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !10
  %i.n = tail call i32 @rb_keyword_given_p() #5
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %.thread29, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @rb_hash_dup(i64 noundef %i.m) #5
  %i.p = add nsw i32 %0, -1                       ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %.thread29

.thread29:                                        ; preds = %bb.d, %bb.e
  %.1.i33 = phi i32 [ %i.p, %bb.e ], [ %0, %bb.d ] ; 2 uses
  %.188.i32 = phi i64 [ %i.o, %bb.e ], [ 4, %bb.d ]
  %i.r = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.r, ptr %i.a, align 8, !tbaa !10
  %i.s = icmp eq i32 %.1.i33, 1
  br i1 %i.s, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %bb.c, %.thread29, %bb.e
  %.1.i25 = phi i32 [ 0, %bb.e ], [ %.1.i33, %.thread29 ], [ %0, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.1.i25, i32 noundef 1, i32 noundef 1) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread29
  %i.t = call i32 @rb_get_kwargs(i64 noundef %.188.i32, ptr noundef nonnull @kdf_scrypt.kwargs_ids, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.u = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.v = call i64 @rb_string_value(ptr noundef nonnull %i.b) #5
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !10   ; 3 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.z = ashr i64 %i.x, 1
  br label %rb_num2ulong_inline.exit

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.aa = call i64 @rb_num2ulong(i64 noundef %i.x) #5
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.z, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !10 ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2ulong_inline.exit
  %i.ae = ashr i64 %i.ac, 1
  br label %rb_num2ulong_inline.exit14

bb.i:                                             ; preds = %rb_num2ulong_inline.exit
  %i.af = call i64 @rb_num2ulong(i64 noundef %i.ac) #5
  br label %rb_num2ulong_inline.exit14

rb_num2ulong_inline.exit14:                       ; preds = %bb.h, %bb.i
  %.0.i13 = phi i64 [ %i.ae, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !10 ; 3 uses
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_num2ulong_inline.exit14
  %i.aj = ashr i64 %i.ah, 1
  br label %rb_num2ulong_inline.exit16

bb.k:                                             ; preds = %rb_num2ulong_inline.exit14
  %i.ak = call i64 @rb_num2ulong(i64 noundef %i.ah) #5
  br label %rb_num2ulong_inline.exit16

rb_num2ulong_inline.exit16:                       ; preds = %bb.j, %bb.k
  %.0.i15 = phi i64 [ %i.aj, %bb.j ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.am = load i64, ptr %i.al, align 16, !tbaa !10 ; 3 uses
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %rb_num2ulong_inline.exit16
  %i.ao = ashr i64 %i.am, 1
  br label %rb_num2long_inline.exit

bb.m:                                             ; preds = %rb_num2ulong_inline.exit16
  %i.ap = call i64 @rb_num2long(i64 noundef %i.am) #5
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.l, %bb.m
  %.0.i17 = phi i64 [ %i.ao, %bb.l ], [ %i.ap, %bb.m ] ; 2 uses
  %i.aq = call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i17) #5, !callees !12 ; 2 uses
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !10
  %i.as = inttoptr i64 %i.ar to ptr               ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13
  %i.au = and i64 %i.at, 8192
  %.not.i18 = icmp eq i64 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  br i1 %.not.i18, label %RSTRING_PTR.exit, label %bb.n

bb.n:                                             ; preds = %rb_num2long_inline.exit
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_num2long_inline.exit, %bb.n
  %i.ax = phi ptr [ %i.aw, %bb.n ], [ %i.av, %rb_num2long_inline.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = inttoptr i64 %i.v to ptr                ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bc = and i64 %i.bb, 8192
  %.not.i19 = icmp eq i64 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  br i1 %.not.i19, label %RSTRING_PTR.exit20, label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !15
  br label %RSTRING_PTR.exit20

RSTRING_PTR.exit20:                               ; preds = %RSTRING_PTR.exit, %bb.o
  %i.bf = phi ptr [ %i.be, %bb.o ], [ %i.bd, %RSTRING_PTR.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bi = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bk = and i64 %i.bj, 8192
  %.not.i21 = icmp eq i64 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  br i1 %.not.i21, label %RSTRING_PTR.exit22, label %bb.p

bb.p:                                             ; preds = %RSTRING_PTR.exit20
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  br label %RSTRING_PTR.exit22

RSTRING_PTR.exit22:                               ; preds = %RSTRING_PTR.exit20, %bb.p
  %i.bn = phi ptr [ %i.bm, %bb.p ], [ %i.bl, %RSTRING_PTR.exit20 ]
  %i.bo = call i32 @EVP_PBE_scrypt(ptr noundef %i.ax, i64 noundef %i.az, ptr noundef %i.bf, i64 noundef %i.bh, i64 noundef %.0.i, i64 noundef %.0.i13, i64 noundef %.0.i15, i64 noundef -1, ptr noundef %i.bn, i64 noundef %.0.i17) #5
  %.not12 = icmp eq i32 %i.bo, 0
  br i1 %.not12, label %bb.q, label %bb.r

bb.q:                                             ; preds = %RSTRING_PTR.exit22
  %i.bp = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bp, ptr noundef nonnull @.str.14) #6
  unreachable

bb.r:                                             ; preds = %RSTRING_PTR.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %i.aq
}

; Function Attrs: nounwind uwtable
define internal i64 @kdf_hkdf(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = load i64, ptr @kdf_hkdf.kwargs_ids, align 16, !tbaa !10
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #5
  store i64 %i.f, ptr @kdf_hkdf.kwargs_ids, align 16, !tbaa !10
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 4) #5
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @kdf_hkdf.kwargs_ids, i64 8), align 8, !tbaa !10
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.7, i64 noundef 6) #5
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @kdf_hkdf.kwargs_ids, i64 16), align 16, !tbaa !10
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.8, i64 noundef 4) #5
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @kdf_hkdf.kwargs_ids, i64 24), align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %0 to i64
  %i.l = getelementptr [8 x i8], ptr %1, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10
  %i.o = tail call i32 @rb_keyword_given_p() #5
  %.not41 = icmp eq i32 %i.o, 0
  br i1 %.not41, label %.thread46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i64 @rb_hash_dup(i64 noundef %i.n) #5
  %i.q = add nsw i32 %0, -1                       ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread, label %.thread46

.thread46:                                        ; preds = %bb.d, %bb.e
  %.1.i50 = phi i32 [ %i.q, %bb.e ], [ %0, %bb.d ] ; 2 uses
  %.188.i49 = phi i64 [ %i.p, %bb.e ], [ 4, %bb.d ]
  %i.s = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.s, ptr %i.a, align 8, !tbaa !10
  %i.t = icmp eq i32 %.1.i50, 1
  br i1 %i.t, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %bb.c, %.thread46, %bb.e
  %.1.i40 = phi i32 [ 0, %bb.e ], [ %.1.i50, %.thread46 ], [ %0, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.1.i40, i32 noundef 1, i32 noundef 1) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread46
  %i.u = call i32 @rb_get_kwargs(i64 noundef %.188.i49, ptr noundef nonnull @kdf_hkdf.kwargs_ids, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.v = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !10
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16   ; 3 uses
  %i.aa = add i64 %i.z, 2147483648
  %.not.i.i = icmp ult i64 %i.aa, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.f

bb.f:                                             ; preds = %rb_scan_args_set.exit
  call void @rb_out_of_int(i64 noundef %i.z) #7
  unreachable

RSTRING_LENINT.exit:                              ; preds = %rb_scan_args_set.exit
  %i.ab = trunc nsw i64 %i.z to i32
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.b) #5
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16 ; 3 uses
  %i.ag = add i64 %i.af, 2147483648
  %.not.i.i27 = icmp ult i64 %i.ag, 4294967296
  br i1 %.not.i.i27, label %RSTRING_LENINT.exit28, label %bb.g

bb.g:                                             ; preds = %RSTRING_LENINT.exit
  call void @rb_out_of_int(i64 noundef %i.af) #7
  unreachable

RSTRING_LENINT.exit28:                            ; preds = %RSTRING_LENINT.exit
  %i.ah = trunc nsw i64 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = call i64 @rb_string_value(ptr noundef nonnull %i.ai) #5
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !16 ; 3 uses
  %i.an = add i64 %i.am, 2147483648
  %.not.i.i29 = icmp ult i64 %i.an, 4294967296
  br i1 %.not.i.i29, label %RSTRING_LENINT.exit30, label %bb.h

bb.h:                                             ; preds = %RSTRING_LENINT.exit28
  call void @rb_out_of_int(i64 noundef %i.am) #7
  unreachable

RSTRING_LENINT.exit30:                            ; preds = %RSTRING_LENINT.exit28
  %i.ao = trunc nsw i64 %i.am to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load i64, ptr %i.ap, align 16, !tbaa !10 ; 3 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %RSTRING_LENINT.exit30
  %i.as = ashr i64 %i.aq, 1
  br label %rb_num2long_inline.exit

bb.j:                                             ; preds = %RSTRING_LENINT.exit30
  %i.at = call i64 @rb_num2long(i64 noundef %i.aq) #5
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.i, %bb.j
  %i.au = phi i64 [ %i.as, %bb.i ], [ %i.at, %bb.j ] ; 2 uses
  store i64 %i.au, ptr %i.d, align 8, !tbaa !10
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rb_num2long_inline.exit
  %i.aw = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aw, ptr noundef nonnull @.str.16) #6
  unreachable

bb.l:                                             ; preds = %rb_num2long_inline.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !10
  %i.az = call ptr @ossl_evp_md_fetch(i64 noundef %i.ay, ptr noundef nonnull %i.c) #5
  %3 = load i64, ptr %i.d, align 8, !tbaa !10
  %i.ba = call i64 @rb_str_new(ptr noundef null, i64 noundef %3) #5, !callees !12 ; 3 uses
  %i.bb = call ptr @EVP_PKEY_CTX_new_id(i32 noundef 1036, ptr noundef null) #5 ; 14 uses
  %.not26 = icmp eq ptr %i.bb, null
  br i1 %.not26, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bc, ptr noundef nonnull @.str.17) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bd = call i32 @EVP_PKEY_derive_init(ptr noundef nonnull %i.bb) #5
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.bb) #5
  %i.bf = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bf, ptr noundef nonnull @.str.18) #6
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bg = call i32 @EVP_PKEY_CTX_set_hkdf_md(ptr noundef nonnull %i.bb, ptr noundef %i.az) #5
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.bb) #5
  %i.bi = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bi, ptr noundef nonnull @.str.19) #6
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bj = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.bk = and i64 %i.bj, 8192
  %.not.i31 = icmp eq i64 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  br i1 %.not.i31, label %RSTRING_PTR.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.r, %bb.s
  %i.bn = phi ptr [ %i.bm, %bb.s ], [ %i.bl, %bb.r ]
  %i.bo = call i32 @EVP_PKEY_CTX_set1_hkdf_salt(ptr noundef nonnull %i.bb, ptr noundef %i.bn, i32 noundef %i.ah) #5
  %i.bp = icmp slt i32 %i.bo, 1
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %RSTRING_PTR.exit
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.bb) #5
  %i.bq = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bq, ptr noundef nonnull @.str.20) #6
  unreachable

bb.u:                                             ; preds = %RSTRING_PTR.exit
  %i.br = load i64, ptr %i.a, align 8, !tbaa !10
  %i.bs = inttoptr i64 %i.br to ptr               ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !13
  %i.bu = and i64 %i.bt, 8192
  %.not.i32 = icmp eq i64 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  br i1 %.not.i32, label %RSTRING_PTR.exit33, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  br label %RSTRING_PTR.exit33

RSTRING_PTR.exit33:                               ; preds = %bb.u, %bb.v
  %i.bx = phi ptr [ %i.bw, %bb.v ], [ %i.bv, %bb.u ]
  %i.by = call i32 @EVP_PKEY_CTX_set1_hkdf_key(ptr noundef nonnull %i.bb, ptr noundef %i.bx, i32 noundef %i.ab) #5
  %i.bz = icmp slt i32 %i.by, 1
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %RSTRING_PTR.exit33
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.bb) #5
  %i.ca = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ca, ptr noundef nonnull @.str.21) #6
  unreachable

bb.x:                                             ; preds = %RSTRING_PTR.exit33
  %i.cb = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.cc = and i64 %i.cb, 8192
  %.not.i34 = icmp eq i64 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  br i1 %.not.i34, label %RSTRING_PTR.exit35, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !15
  br label %RSTRING_PTR.exit35

RSTRING_PTR.exit35:                               ; preds = %bb.x, %bb.y
  %i.cf = phi ptr [ %i.ce, %bb.y ], [ %i.cd, %bb.x ]
  %i.cg = call i32 @EVP_PKEY_CTX_add1_hkdf_info(ptr noundef nonnull %i.bb, ptr noundef %i.cf, i32 noundef %i.ao) #5
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %RSTRING_PTR.exit35
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.bb) #5
  %i.ci = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ci, ptr noundef nonnull @.str.22) #6
  unreachable

bb.aa:                                            ; preds = %RSTRING_PTR.exit35
  %i.cj = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13
  %i.cl = and i64 %i.ck, 8192
  %.not.i36 = icmp eq i64 %i.cl, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  br i1 %.not.i36, label %RSTRING_PTR.exit37, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !15
  br label %RSTRING_PTR.exit37

RSTRING_PTR.exit37:                               ; preds = %bb.aa, %bb.ab
  %i.co = phi ptr [ %i.cn, %bb.ab ], [ %i.cm, %bb.aa ]
  %i.cp = call i32 @EVP_PKEY_derive(ptr noundef nonnull %i.bb, ptr noundef %i.co, ptr noundef nonnull %i.d) #5
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %RSTRING_PTR.exit37
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.bb) #5
  %i.cr = load i64, ptr @eKDF, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.cr, ptr noundef nonnull @.str.23) #6
  unreachable

bb.ad:                                            ; preds = %RSTRING_PTR.exit37
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !10
  call void @rb_str_set_len(i64 noundef %i.ba, i64 noundef %i.cs) #5
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.bb) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %i.ba
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_evp_md_fetch(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PKCS5_PBKDF2_HMAC(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ossl_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rb_keyword_given_p() local_unnamed_addr #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #4

declare i32 @EVP_PBE_scrypt(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2ulong(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @EVP_PKEY_CTX_new_id(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive_init(ptr noundef) local_unnamed_addr #1

declare void @EVP_PKEY_CTX_free(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set_hkdf_md(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set1_hkdf_salt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_set1_hkdf_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_CTX_add1_hkdf_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_derive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
