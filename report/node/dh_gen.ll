inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"../../deps/openssl/openssl/crypto/dh/dh_gen.c\00", align 1
@__func__.dh_builtin_genparams = private unnamed_addr constant [21 x i8] c"dh_builtin_genparams\00", align 1
@switch.table.ossl_dh_get_named_group_uid_from_size = private unnamed_addr constant [7 x i32] [i32 1126, i32 1127, i32 1128, i32 0, i32 1129, i32 0, i32 1130], align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_dh_generate_ffc_parameters(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i32 %1, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @ossl_ffc_params_FIPS186_2_generate(ptr noundef %i.d, ptr noundef nonnull %i.e, i32 noundef 1, i64 noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef %4) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call i32 @ossl_ffc_params_FIPS186_4_generate(ptr noundef %i.d, ptr noundef nonnull %i.e, i32 noundef 1, i64 noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef %4) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ]  ; 2 uses
  %i.j = icmp sgt i32 %.0, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ossl_ffc_params_FIPS186_2_generate(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_ffc_params_FIPS186_4_generate(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 1131) i32 @ossl_dh_get_named_group_uid_from_size(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 22)
  %switch.tableidx = add i32 %1, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 7
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ossl_dh_get_named_group_uid_from_size, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.03 = phi i32 [ 0, %bb.a ], [ %switch.load, %switch.lookup ]
  ret i32 %.03
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DH_generate_parameters_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  br label %dh_builtin_genparams.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 10000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @__func__.dh_builtin_genparams) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 5, i32 noundef 103, ptr noundef null) #5
  br label %dh_builtin_genparams.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp slt i32 %1, 512
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @__func__.dh_builtin_genparams) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 5, i32 noundef 126, ptr noundef null) #5
  br label %dh_builtin_genparams.exit

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = tail call ptr @BN_CTX_new_ex(ptr noundef %i.i) #5 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @BN_CTX_start(ptr noundef nonnull %i.j) #5
  %i.l = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.j) #5 ; 4 uses
  %i.m = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.j) #5 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = tail call ptr @BN_new() #5               ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !27
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = tail call ptr @BN_new() #5               ; 2 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !28
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = icmp slt i32 %2, 2
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @__func__.dh_builtin_genparams) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 5, i32 noundef 101, ptr noundef null) #5
  br label %bb.aa

bb.o:                                             ; preds = %bb.m
  switch i32 %2, label %bb.t [
    i32 2, label %bb.p
    i32 5, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.z = tail call i32 @BN_set_word(ptr noundef %i.l, i64 noundef 24) #5
  %.not47.i = icmp eq i32 %i.z, 0
  br i1 %.not47.i, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call i32 @BN_set_word(ptr noundef nonnull %i.m, i64 noundef 23) #5
  %.not48.i = icmp eq i32 %i.aa, 0
  br i1 %.not48.i, label %bb.aa, label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.ab = tail call i32 @BN_set_word(ptr noundef %i.l, i64 noundef 60) #5
  %.not45.i = icmp eq i32 %i.ab, 0
  br i1 %.not45.i, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = tail call i32 @BN_set_word(ptr noundef nonnull %i.m, i64 noundef 59) #5
  %.not46.i = icmp eq i32 %i.ac, 0
  br i1 %.not46.i, label %bb.aa, label %bb.w

bb.t:                                             ; preds = %bb.o
  %i.ad = tail call i32 @BN_set_word(ptr noundef %i.l, i64 noundef 12) #5
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = tail call i32 @BN_set_word(ptr noundef nonnull %i.m, i64 noundef 11) #5
  %.not44.i = icmp eq i32 %i.ae, 0
  br i1 %.not44.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = zext nneg i32 %2 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.q
  %.038.i = phi i64 [ %i.af, %bb.v ], [ 2, %bb.q ], [ 5, %bb.s ]
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.ah = tail call i32 @BN_generate_prime_ex2(ptr noundef %i.ag, i32 noundef %1, i32 noundef 1, ptr noundef %i.l, ptr noundef nonnull %i.m, ptr noundef %3, ptr noundef nonnull %i.j) #5
  %.not49.i = icmp eq i32 %i.ah, 0
  br i1 %.not49.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ai = tail call i32 @BN_GENCB_call(ptr noundef %3, i32 noundef 3, i32 noundef 0) #5
  %.not50.i = icmp eq i32 %i.ai, 0
  br i1 %.not50.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.ak = tail call i32 @BN_set_word(ptr noundef %i.aj, i64 noundef %.038.i) #5
  %.not51.i = icmp eq i32 %i.ak, 0
  br i1 %.not51.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.al = tail call zeroext i16 @ossl_ifc_ffc_compute_security_bits(i32 noundef %1) #5
  %.fr53.i = freeze i16 %i.al
  %i.am = zext i16 %.fr53.i to i32
  %i.an = shl nuw nsw i32 %i.am, 1
  %i.ao = add nuw nsw i32 %i.an, 24               ; 2 uses
  %i.ap = urem i32 %i.ao, 25
  %i.aq = sub nuw nsw i32 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !23
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.g
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @__func__.dh_builtin_genparams) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 5, i32 noundef 524291, ptr noundef null) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1.i = phi i32 [ 0, %bb.aa ], [ 1, %bb.z ]
  tail call void @BN_CTX_end(ptr noundef %i.j) #5
  tail call void @BN_CTX_free(ptr noundef %i.j) #5
  br label %dh_builtin_genparams.exit

dh_builtin_genparams.exit:                        ; preds = %bb.ab, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %.1.i, %bb.ab ]
  ret i32 %.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BN_CTX_new_ex(ptr noundef) local_unnamed_addr #2

declare void @BN_CTX_start(ptr noundef) local_unnamed_addr #2

declare ptr @BN_CTX_get(ptr noundef) local_unnamed_addr #2

declare ptr @BN_new() local_unnamed_addr #2

declare i32 @BN_set_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_generate_prime_ex2(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
