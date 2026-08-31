Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rehash?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_dir:bb.a
  br i1 %.not139, label %._crit_edge180, label %bb.aw, !llvm.loop !57

._crit_edge180:                                   ; preds = %bb.bo, %.lr.ph186
  %.6.lcssa = phi i32 [ %.5184, %.lr.ph186 ], [ %.9, %bb.bo ] ; 2 uses
  call void @CRYPTO_free(ptr noundef nonnull %.0121183, ptr noundef nonnull @.str.27, i32 noundef 475) #14
  %.not137 = icmp eq ptr %i.ha, null
  br i1 %.not137, label %._crit_edge187, label %.lr.ph186, !llvm.loop !58

._crit_edge187:                                   ; preds = %._crit_edge180, %bb.at
  %.5.lcssa = phi i32 [ %.4189, %bb.at ], [ %.6.lcssa, %._crit_edge180 ] ; 2 uses
  store ptr null, ptr %i.gy, align 8, !tbaa !41
  %i.ky = add nuw nsw i64 %.0110190, 1            ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ky, 257
  br i1 %exitcond195.not, label %.loopexit, label %bb.at, !llvm.loop !59

.loopexit:                                        ; preds = %._crit_edge187, %.thread, %bb.h
  %.10 = phi i32 [ 1, %bb.h ], [ 1, %.thread ], [ %.5.lcssa, %._crit_edge187 ]
  %.0107 = phi ptr [ null, %bb.h ], [ null, %.thread ], [ %i.ap, %._crit_edge187 ]
  call void @OPENSSL_sk_pop_free(ptr noundef %i.u, ptr noundef nonnull @str_free) #14
  call void @CRYPTO_free(ptr noundef %.0107, ptr noundef nonnull @.str.27, i32 noundef 482) #14
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit, %bb.b
  %.0122 = phi i32 [ 1, %bb.b ], [ %.10, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  ret i32 %.0122
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @X509_get_default_cert_dir_env() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #4

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @X509_get_default_cert_dir() local_unnamed_addr #2

declare i32 @app_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @OPENSSL_sk_set_cmp_thunks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @sk_strcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #15
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sk_OPENSSL_STRING_cmpfunc_thunk(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #7 {
bb.a:
  %i.a = tail call i32 %0(ptr noundef %1, ptr noundef %2) #14
  ret i32 %i.a
}

declare ptr @OPENSSL_DIR_read(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_DIR_end(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_sort(ptr noundef) local_unnamed_addr #2

declare ptr @app_malloc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare ptr @opt_getprog() local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @str_free(ptr noundef %0) #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef 323) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #2

declare i32 @OPENSSL_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @add_entry(i32 noundef range(i32 0, 2) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef range(i32 0, 2) %4, i16 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, %0
  %i.b = urem i32 %i.a, 257
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @hash_table, i64 %i.c ; 3 uses
  %.06179 = load ptr, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  %cond80 = icmp eq ptr %.06179, null
  br i1 %cond80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.06181 = phi ptr [ %.061, %bb.c ], [ %.06179, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06181, i64 28
  %i.f = load i16, ptr %i.e, align 4, !tbaa !53
  %i.g = zext i16 %i.f to i32
  %i.h = icmp eq i32 %0, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.06181, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %.loopexit.a, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.061 = load ptr, ptr %.06181, align 8, !tbaa !41 ; 2 uses
  %cond = icmp eq ptr %.061, null
  br i1 %cond, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.l = tail call ptr @app_malloc(i64 noundef 32, ptr noundef nonnull @.str.42) #14 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !41
  store ptr %i.m, ptr %i.l, align 8, !tbaa !43
  %i.n = trunc nuw nsw i32 %0 to i16
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i16 %i.n, ptr %i.o, align 4, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %1, ptr %i.p, align 8, !tbaa !52
  store ptr %i.l, ptr %i.d, align 8, !tbaa !41
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %bb.b, %._crit_edge
  %.162 = phi ptr [ %i.l, %._crit_edge ], [ %.06181, %bb.b ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.162, i64 8 ; 3 uses
  %.05982 = load ptr, ptr %i.q, align 8, !tbaa !47 ; 3 uses
  %.not6683 = icmp eq ptr %.05982, null
  br i1 %.not6683, label %._crit_edge88.thread, label %.lr.ph87

.lr.ph87:                                         ; preds = %.loopexit.a
  %.not67.a = icmp eq ptr %3, null
  %i.r = load i32, ptr @evpmdsize, align 4
  %i.s = sext i32 %i.r to i64
  br i1 %.not67.a, label %.lr.ph87.split.us, label %.lr.ph87.split

.lr.ph87.split.us:                                ; preds = %.lr.ph87, %.thread71.us
  %.05985.us = phi ptr [ %.059.us, %.thread71.us ], [ %.05982, %.lr.ph87 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05985.us, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.u) #15
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.split.us, label %.thread71.us

.thread71.us:                                     ; preds = %.lr.ph87.split.us
  %.059.us = load ptr, ptr %.05985.us, align 8, !tbaa !47 ; 2 uses
  %.not66.us = icmp eq ptr %.059.us, null
  br i1 %.not66.us, label %._crit_edge88.thread, label %.lr.ph87.split.us, !llvm.loop !61

.lr.ph87.split:                                   ; preds = %.lr.ph87, %.thread
  %.05985 = phi ptr [ %.059, %.thread ], [ %.05982, %.lr.ph87 ] ; 4 uses
  %.sroa.0.081 = phi i64 [ %spec.select, %.thread ], [ 0, %.lr.ph87 ]
  %i.x = getelementptr inbounds nuw i8, ptr %.05985, i64 19
  %bcmp = tail call i32 @bcmp(ptr nonnull %3, ptr nonnull %i.x, i64 %i.s)
  %i.y = icmp eq i32 %bcmp, 0
  br i1 %i.y, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph87.split
  %i.z = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.aa = tail call ptr @opt_getprog() #14
  %i.ab = icmp eq i32 %0, 0
  %i.ac = select i1 %i.ab, ptr @.str.44, ptr @.str.45
  %i.ad = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.z, ptr noundef nonnull @.str.43, ptr noundef %i.aa, ptr noundef nonnull %i.ac, ptr noundef %2) #14 ; 0 uses
  br label %bb.q

.thread:                                          ; preds = %.lr.ph87.split
  %i.ae = getelementptr inbounds nuw i8, ptr %.05985, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.af) #15
  %i.ah = icmp eq i32 %i.ag, 0
  %6 = ptrtoint ptr %.05985 to i64
  %spec.select = select i1 %i.ah, i64 %6, i64 %.sroa.0.081 ; 2 uses
  %.059 = load ptr, ptr %.05985, align 8, !tbaa !47 ; 2 uses
  %.not66.a = icmp eq ptr %.059, null
  br i1 %.not66.a, label %._crit_edge88, label %.lr.ph87.split, !llvm.loop !61

.split.us:                                        ; preds = %.lr.ph87.split.us
  %7 = ptrtoint ptr %.05985.us to i64
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %.thread, %.split.us
  %.sroa.0.2 = phi i64 [ %7, %.split.us ], [ %spec.select, %.thread ] ; 2 uses
  %8 = inttoptr i64 %.sroa.0.2 to ptr
  %i.ai = icmp eq i64 %.sroa.0.2, 0
  br i1 %i.ai, label %._crit_edge88.thread, label %.thread72

._crit_edge88.thread:                             ; preds = %.thread71.us, %.loopexit.a, %._crit_edge88
  %i.aj = getelementptr inbounds nuw i8, ptr %.162, i64 30
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !46
  %i.al = icmp ugt i16 %i.ak, 255
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge88.thread
  %i.am = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.an = tail call ptr @opt_getprog() #14
  %i.ao = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.am, ptr noundef nonnull @.str.46, ptr noundef %i.an, ptr noundef %2) #14 ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %._crit_edge88.thread
  %i.ap = tail call ptr @app_malloc(i64 noundef 88, ptr noundef nonnull @.str.47) #14 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, i8 0, i64 88, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i16 -1, ptr %i.aq, align 8, !tbaa !48
  %i.ar = tail call ptr @CRYPTO_strdup(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef 167) #14 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !54
  %i.at = icmp eq ptr %i.ar, null
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @CRYPTO_free(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.27, i32 noundef 169) #14
  %i.au = load ptr, ptr @bio_err, align 8, !tbaa !11
  %i.av = tail call i32 @BIO_puts(ptr noundef %i.au, ptr noundef nonnull @.str.28) #14 ; 0 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.162, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62 ; 2 uses
  %.not68.a = icmp eq ptr %i.ax, null
  br i1 %.not68.a, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ap, ptr %i.ax, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ap, ptr %i.q, align 8, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !62
  br label %.thread72

.thread72:                                        ; preds = %bb.l, %._crit_edge88
  %.1 = phi ptr [ %i.ap, %bb.l ], [ %8, %._crit_edge88 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !48
  %i.bc = icmp ult i16 %5, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread72
  store i16 %5, ptr %i.ba, align 8, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread72
  %.not69 = icmp eq i32 %4, 0
  br i1 %.not69, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.1, i64 18 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !55
  %.not70 = icmp eq i8 %i.be, 0
  br i1 %.not70, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bd, align 2, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %.162, i64 30 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !46
  %i.bh = add i16 %i.bg, 1
  store i16 %i.bh, ptr %i.bf, align 2, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %.1, i64 19
  %i.bj = load i32, ptr @evpmdsize, align 4, !tbaa !16
  %i.bk = sext i32 %i.bj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %3, i64 %i.bk, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.g, %bb.e, %bb.d
  %.063 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.g ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ]
  ret i32 %.063
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BIO_new_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PEM_X509_INFO_read_bio(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #2

declare i32 @X509_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @X509_CRL_get_issuer(ptr noundef) local_unnamed_addr #2

declare i32 @X509_CRL_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @X509_NAME_hash_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @app_get0_libctx() local_unnamed_addr #2

declare ptr @app_get0_propq() local_unnamed_addr #2

declare i64 @X509_NAME_hash_old(ptr noundef) local_unnamed_addr #2

declare void @X509_INFO_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS6bio_st", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS9evp_md_st", !13, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS22OPENSSL_dir_context_st", !13, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !6, i64 24}
!25 = !{!"stat", !26, i64 0, !26, i64 8, !26, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !27, i64 72, !27, i64 88, !27, i64 104, !7, i64 120}
!26 = !{!"long", !7, i64 0}
!27 = !{!"timespec", !26, i64 0, !26, i64 8}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 short", !13, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !7, i64 0}
!32 = !{!33, !34, i64 0}
!33 = !{!"X509_info_st", !34, i64 0, !35, i64 8, !36, i64 16, !37, i64 24, !6, i64 48, !18, i64 56}
!34 = !{!"p1 _ZTS7x509_st", !13, i64 0}
!35 = !{!"p1 _ZTS11X509_crl_st", !13, i64 0}
!36 = !{!"p1 _ZTS14private_key_st", !13, i64 0}
!37 = !{!"evp_cipher_info_st", !38, i64 0, !7, i64 8}
!38 = !{!"p1 _ZTS13evp_cipher_st", !13, i64 0}
!39 = !{!33, !35, i64 8}
!40 = distinct !{!40, !10}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTS9bucket_st", !13, i64 0}
!43 = !{!44, !42, i64 0}
!44 = !{!"bucket_st", !42, i64 0, !45, i64 8, !45, i64 16, !6, i64 24, !31, i64 28, !31, i64 30}
!45 = !{!"p1 _ZTS9hentry_st", !13, i64 0}
!46 = !{!44, !31, i64 30}
!47 = !{!45, !45, i64 0}
!48 = !{!49, !31, i64 16}
!49 = !{!"hentry_st", !45, i64 0, !18, i64 8, !31, i64 16, !7, i64 18, !7, i64 19}
!50 = distinct !{!50, !10}
!51 = !{!49, !45, i64 0}
!52 = !{!44, !6, i64 24}
!53 = !{!44, !31, i64 28}
!54 = !{!49, !18, i64 8}
!55 = !{!49, !7, i64 18}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = !{!44, !45, i64 16}
!63 = !{!44, !45, i64 8}
end_hunk_0
