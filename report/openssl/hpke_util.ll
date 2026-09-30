Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/hpke_util?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
@aeadstrtab = internal unnamed_addr constant [4 x { i16, [6 x i8], [4 x ptr] }] [{ i16, [6 x i8], [4 x ptr] } { i16 1, [6 x i8] zeroinitializer, [4 x ptr] [ptr @.str.14, ptr @.str.34, ptr @.str.35, ptr @.str.36] }, { i16, [6 x i8], [4 x ptr] } { i16 2, [6 x i8] zeroinitializer, [4 x ptr] [ptr @.str.15, ptr @.str.38, ptr @.str.39, ptr @.str.40] }, { i16, [6 x i8], [4 x ptr] } { i16 3, [6 x i8] zeroinitializer, [4 x ptr] [ptr @.str.16, ptr @.str.42, ptr @.str.43, ptr @.str.44] }, { i16, [6 x i8], [4 x ptr] } { i16 -1, [6 x i8] zeroinitializer, [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49] }], align 16
@switch.table.ossl_HPKE_KDF_INFO_find_id = private unnamed_addr constant [3 x ptr] [ptr @hpke_kdf_tab, ptr getelementptr inbounds nuw (i8, ptr @hpke_kdf_tab, i64 24), ptr getelementptr inbounds nuw (i8, ptr @hpke_kdf_tab, i64 48)], align 8
@switch.table.ossl_HPKE_AEAD_INFO_find_id = private unnamed_addr constant [5 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @hpke_aead_tab, i64 120), ptr poison, ptr @hpke_aead_tab, ptr getelementptr inbounds nuw (i8, ptr @hpke_aead_tab, i64 40), ptr getelementptr inbounds nuw (i8, ptr @hpke_aead_tab, i64 80)], align 8

; Function Attrs: nounwind uwtable
define ptr @ossl_HPKE_KEM_INFO_find_curve(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @OPENSSL_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.4) #4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @OPENSSL_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  %.not.1 = icmp eq i32 %i.b, 0
  br i1 %.not.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @OPENSSL_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.8) #4
  %.not.2 = icmp eq i32 %i.c, 0
  br i1 %.not.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @OPENSSL_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.10) #4
  %.not.3 = icmp eq i32 %i.d, 0
  br i1 %.not.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @OPENSSL_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.11) #4
  %.not.4 = icmp eq i32 %i.e, 0
  br i1 %.not.4, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @__func__.ossl_HPKE_KEM_INFO_find_curve) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 176, ptr noundef null) #4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.2 = phi ptr [ null, %bb.f ], [ @hpke_kem_tab, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @hpke_kem_tab, i64 72), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @hpke_kem_tab, i64 144), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @hpke_kem_tab, i64 216), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @hpke_kem_tab, i64 288), %bb.e ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ossl_HPKE_KEM_INFO_find_id(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  switch i16 %0, label %bb.c [
    i16 0, label %bb.b
    i16 16, label %.loopexit
    i16 17, label %.loopexit.fold.split
    i16 18, label %.loopexit.fold.split12
    i16 32, label %.loopexit.fold.split13
    i16 33, label %.loopexit.fold.split14
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @__func__.ossl_HPKE_KEM_INFO_find_id) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 176, ptr noundef null) #4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @__func__.ossl_HPKE_KEM_INFO_find_id) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 176, ptr noundef null) #4
  br label %.loopexit

.loopexit.fold.split:                             ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split12:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split13:                           ; preds = %bb.a
  br label %.loopexit

.loopexit.fold.split14:                           ; preds = %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.loopexit.fold.split14, %.loopexit.fold.split13, %.loopexit.fold.split12, %.loopexit.fold.split, %bb.c, %bb.b
  %.07 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ @hpke_kem_tab, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @hpke_kem_tab, i64 216), %.loopexit.fold.split13 ], [ getelementptr inbounds nuw (i8, ptr @hpke_kem_tab, i64 72), %.loopexit.fold.split ], [ getelementptr inbounds nuw (i8, ptr @hpke_kem_tab, i64 144), %.loopexit.fold.split12 ], [ getelementptr inbounds nuw (i8, ptr @hpke_kem_tab, i64 288), %.loopexit.fold.split14 ]
  ret ptr %.07
}

; Function Attrs: nounwind uwtable
define ptr @ossl_HPKE_KEM_INFO_find_random(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.b = call i32 @ossl_rand_uniform_uint32(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %i.a) #4
  %i.c = load i32, ptr %i.a, align 4, !tbaa !8
  %i.d = icmp eq i32 %i.c, 1
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [72 x i8], ptr @hpke_kem_tab, i64 %i.e
  %i.g = select i1 %i.d, ptr null, ptr %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %i.g
}

declare i32 @ossl_rand_uniform_uint32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ossl_HPKE_KDF_INFO_find_id(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i16 %0, -1               ; 2 uses
  %i.a = icmp ult i16 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 210, ptr noundef nonnull @__func__.ossl_HPKE_KDF_INFO_find_id) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 232, ptr noundef null) #4
  br label %.loopexit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_HPKE_KDF_INFO_find_id, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %switch.lookup, %bb.b
  %.06 = phi ptr [ null, %bb.b ], [ %switch.load, %switch.lookup ]
  ret ptr %.06
}

; Function Attrs: nounwind uwtable
define ptr @ossl_HPKE_KDF_INFO_find_random(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.b = call i32 @ossl_rand_uniform_uint32(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.a) #4
  %i.c = load i32, ptr %i.a, align 4, !tbaa !8
  %i.d = icmp eq i32 %i.c, 1
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr @hpke_kdf_tab, i64 %i.e
  %i.g = select i1 %i.d, ptr null, ptr %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define ptr @ossl_HPKE_AEAD_INFO_find_id(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i16 %0, 1                ; 3 uses
  %i.a = icmp ult i16 %switch.tableidx, 5
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @__func__.ossl_HPKE_AEAD_INFO_find_id) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 231, ptr noundef null) #4
  br label %.loopexit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_HPKE_AEAD_INFO_find_id, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %switch.lookup, %bb.b
  %.06 = phi ptr [ null, %bb.b ], [ %switch.load, %switch.lookup ]
  ret ptr %.06
}

; Function Attrs: nounwind uwtable
define ptr @ossl_HPKE_AEAD_INFO_find_random(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.b = call i32 @ossl_rand_uniform_uint32(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.a) #4
  %i.c = load i32, ptr %i.a, align 4, !tbaa !8
  %i.d = icmp eq i32 %i.c, 1
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @hpke_aead_tab, i64 %i.e
  %i.g = select i1 %i.d, ptr null, ptr %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_hpke_kdf_extract(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @kdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef null, i64 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @kdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 1, 3) %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %10 = alloca [5 x %struct.ossl_param_st], align 16 ; 6 uses
  %11 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %12 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %13 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %14 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %10, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a) #4
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %11, ptr noundef nonnull @.str.19, ptr noundef nonnull %4, i64 noundef %5) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]  ; 3 uses
  %.not21 = icmp eq ptr %6, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %12, ptr noundef nonnull @.str.20, ptr noundef nonnull %6, i64 noundef %7) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.d, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %.not22 = icmp eq ptr %8, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %13, ptr noundef nonnull @.str.21, ptr noundef nonnull %8, i64 noundef %9) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.1, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi ptr [ %i.e, %bb.f ], [ %.1, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %14) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.2, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  %i.f = call i32 @EVP_KDF_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %10) #4
  %i.g = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @__func__.kdf_derive) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 164, ptr noundef null) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.h = zext i1 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_hpke_kdf_expand(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @kdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2, ptr noundef null, i64 noundef 0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_hpke_labeled_extract(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %11 = alloca %struct.wpacket_st, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #5 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #5 ; 2 uses
  %i.d = add i64 %7, 7
  %i.e = add i64 %i.d, %10
  %i.f = add i64 %i.e, %i.b
  %i.g = add i64 %i.f, %i.c                       ; 3 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !14
  %i.h = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 316) #4 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @WPACKET_init_static_len(ptr noundef nonnull %11, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 0) #4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef nonnull @LABEL_HPKEV1, i64 noundef 7) #4
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef nonnull %5, i64 noundef %i.b) #4
  %.not30 = icmp eq i32 %i.l, 0
  br i1 %.not30, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef %6, i64 noundef %7) #4
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef nonnull %8, i64 noundef %i.c) #4
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef %9, i64 noundef %10) #4
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @WPACKET_get_total_written(ptr noundef nonnull %11, ptr noundef nonnull %i.a) #4
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @WPACKET_finish(ptr noundef nonnull %11) #4
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 329, ptr noundef nonnull @__func__.ossl_hpke_labeled_extract) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !14
  %i.s = call fastcc range(i32 0, 2) i32 @kdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.h, i64 noundef %i.r, ptr noundef null, i64 noundef 0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %i.s, %bb.k ], [ 0, %bb.j ]
  call void @WPACKET_cleanup(ptr noundef nonnull %11) #4
  %i.t = load i64, ptr %i.a, align 8, !tbaa !14
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.h, i64 noundef %i.t) #4
  call void @CRYPTO_free(ptr noundef nonnull %i.h, ptr noundef nonnull @.str, i32 noundef 338) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.027 = phi i32 [ %.0, %bb.l ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.027
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WPACKET_init_static_len(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_get_total_written(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WPACKET_finish(ptr noundef) local_unnamed_addr #2

declare void @WPACKET_cleanup(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_hpke_labeled_expand(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %struct.wpacket_st, align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #5 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #5 ; 2 uses
  %i.d = add i64 %2, 9
  %i.e = add i64 %i.d, %4
  %i.f = add i64 %i.e, %7
  %i.g = add i64 %i.f, %10
  %i.h = add i64 %i.g, %i.b
  %i.i = add i64 %i.h, %i.c                       ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !14
  %i.j = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.i, ptr noundef nonnull @.str, i32 noundef 366) #4 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @WPACKET_init_static_len(ptr noundef nonnull %11, ptr noundef nonnull %i.j, i64 noundef %i.i, i64 noundef 0) #4
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %11, i64 noundef %2, i64 noundef 2) #4
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef nonnull @LABEL_HPKEV1, i64 noundef 7) #4
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef nonnull %5, i64 noundef %i.b) #4
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef %6, i64 noundef %7) #4
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef nonnull %8, i64 noundef %i.c) #4
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i32 @WPACKET_memcpy(ptr noundef nonnull %11, ptr noundef %9, i64 noundef %10) #4
  %.not36 = icmp eq i32 %i.r, 0
  br i1 %.not36, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @WPACKET_get_total_written(ptr noundef nonnull %11, ptr noundef nonnull %i.a) #4
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = call i32 @WPACKET_finish(ptr noundef nonnull %11) #4
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 380, ptr noundef nonnull @__func__.ossl_hpke_labeled_expand) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = load i64, ptr %i.a, align 8, !tbaa !14
  %i.v = call fastcc range(i32 0, 2) i32 @kdf_derive(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2, ptr noundef null, i64 noundef 0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.j, i64 noundef %i.u)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ %i.v, %bb.l ], [ 0, %bb.k ]
  call void @WPACKET_cleanup(ptr noundef nonnull %11) #4
  call void @CRYPTO_free(ptr noundef nonnull %i.j, ptr noundef nonnull @.str, i32 noundef 388) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.029 = phi i32 [ %.0, %bb.m ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.029
}

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ossl_kdf_ctx_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [3 x %struct.ossl_param_st], align 16 ; 7 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.a = tail call ptr @EVP_KDF_fetch(ptr noundef %2, ptr noundef %0, ptr noundef %3) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @__func__.ossl_kdf_ctx_create) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524557, ptr noundef null) #4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @EVP_KDF_CTX_new(ptr noundef nonnull %i.a) #4 ; 5 uses
  tail call void @EVP_KDF_free(ptr noundef nonnull %i.a) #4
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.1, ptr noundef nonnull %1, i64 noundef 0) #4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i64 noundef 0) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  %i.h = call i32 @EVP_KDF_CTX_set_params(ptr noundef nonnull %i.c, ptr noundef nonnull %4) #4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @EVP_KDF_CTX_free(ptr noundef nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.h

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %.critedge, %bb.g, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %i.c, %.critedge ], [ %i.c, %bb.c ]
  ret ptr %.1
}

declare ptr @EVP_KDF_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_KDF_CTX_new(ptr noundef) local_unnamed_addr #2

declare void @EVP_KDF_free(ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_KDF_CTX_set_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_KDF_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_hpke_str2suite(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !17
  %i.c = icmp eq i8 %i.b, 0
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 459, ptr noundef nonnull @__func__.ossl_hpke_str2suite) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, ptr noundef null) #4
  br label %bb.ay

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i64 @OPENSSL_strnlen(ptr noundef nonnull %0, i64 noundef 38) #4 ; 3 uses
  %i.f = icmp ugt i64 %i.e, 37
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 464, ptr noundef nonnull @__func__.ossl_hpke_str2suite) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #4
  br label %bb.ay

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 %i.e
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17
  %i.j = icmp eq i8 %i.i, 44
  br i1 %i.j, label %bb.ay, label %.preheader91

.preheader91:                                     ; preds = %bb.f, %bb.h
  %.049 = phi ptr [ %i.m, %bb.h ], [ %0, %bb.f ]  ; 2 uses
  %.045 = phi i32 [ %.1, %bb.h ], [ 0, %bb.f ]    ; 3 uses
  %i.k = load i8, ptr %.049, align 1, !tbaa !17
  switch i8 %i.k, label %bb.h [
    i8 0, label %bb.i
    i8 44, label %bb.g
  ]

bb.g:                                             ; preds = %.preheader91
  %i.l = add nsw i32 %.045, 1
  br label %bb.h

bb.h:                                             ; preds = %.preheader91, %bb.g
  %.1 = phi i32 [ %i.l, %bb.g ], [ %.045, %.preheader91 ]
  %i.m = getelementptr inbounds nuw i8, ptr %.049, i64 1
  br label %.preheader91, !llvm.loop !16

bb.i:                                             ; preds = %.preheader91
  %.not68 = icmp eq i32 %.045, 2
  br i1 %.not68, label %bb.j, label %bb.ay

bb.j:                                             ; preds = %bb.i
  %i.n = add nuw nsw i64 %i.e, 1
  %i.o = tail call ptr @CRYPTO_memdup(ptr noundef nonnull %0, i64 noundef %i.n, ptr noundef nonnull @.str, i32 noundef 483) #4 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.aw
  %.047117 = phi i32 [ %i.do, %bb.aw ], [ 0, %bb.j ] ; 3 uses
  %.150116 = phi ptr [ %.2, %bb.aw ], [ %i.o, %bb.j ] ; 49 uses
  %.054114 = phi i16 [ %.155.ph, %bb.aw ], [ 0, %bb.j ] ; 2 uses
  %.057113 = phi i16 [ %.158138.ph, %bb.aw ], [ 0, %bb.j ] ; 2 uses
  %i.q = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.150116, i32 noundef 44) #5 ; 3 uses
  %.not69 = icmp ne ptr %i.q, null                ; 4 uses
  br i1 %.not69, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  store i8 0, ptr %i.q, align 1, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader
  switch i32 %.047117, label %.thread145 [
    i32 0, label %.preheader.i.preheader
    i32 1, label %.preheader.i70.preheader
    i32 2, label %.preheader.i75.preheader
  ]

.preheader.i.preheader:                           ; preds = %bb.l
  %i.r = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.4) #4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread136, label %bb.m

bb.m:                                             ; preds = %.preheader.i.preheader
  %i.t = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.22) #4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.thread136, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.22) #4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.thread136, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %.150116, ptr noundef nonnull @.str.23) #4
  %i.y = icmp eq i32 %i.x, 0
end_hunk_0
