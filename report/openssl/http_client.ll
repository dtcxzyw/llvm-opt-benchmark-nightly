Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/http_client?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@OSSL_HTTP_proxy_connect:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0102 = phi ptr [ @.str.38, %bb.h ], [ %2, %bb.g ] ; 2 uses
  %i.m = tail call ptr @strpbrk(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.15) #11
  %.not4.i = icmp eq ptr %i.m, null
  br i1 %.not4.i, label %no_crlf.exit, label %no_crlf.exit.thread

no_crlf.exit.thread:                              ; preds = %bb.i
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @__func__.no_crlf) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 524550, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1) #10
  br label %.thread153

no_crlf.exit:                                     ; preds = %bb.i
  %i.n = tail call ptr @strpbrk(ptr noundef nonnull readonly %.0102, ptr noundef nonnull @.str.15) #11
  %.not4.i130 = icmp eq ptr %i.n, null
  br i1 %.not4.i130, label %no_crlf.exit132, label %no_crlf.exit132.thread

no_crlf.exit132.thread:                           ; preds = %no_crlf.exit
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @__func__.no_crlf) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 524550, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.2) #10
  br label %.thread153

no_crlf.exit132:                                  ; preds = %no_crlf.exit
  %i.o = tail call noalias ptr @CRYPTO_malloc(i64 noundef 8192, ptr noundef nonnull @.str, i32 noundef 1482) #10 ; 13 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.k, label %bb.j

bb.j:                                             ; preds = %no_crlf.exit132
  %i.q = tail call ptr @BIO_f_buffer() #10
  %i.r = tail call ptr @BIO_new(ptr noundef %i.q) #10 ; 14 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %no_crlf.exit132
  %i.t = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %6, ptr noundef nonnull @.str.39, ptr noundef %7) #10 ; 0 uses
  br label %.thread153

bb.l:                                             ; preds = %bb.j
  %i.u = tail call ptr @BIO_push(ptr noundef nonnull %i.r, ptr noundef nonnull %0) #10 ; 0 uses
  %i.v = load i8, ptr %1, align 1, !tbaa !29
  %.not118 = icmp eq i8 %i.v, 91
  br i1 %.not118, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #11
  %.not119 = icmp eq ptr %i.w, null
  br i1 %.not119, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.str.41.sink = phi ptr [ @.str.41, %bb.n ], [ @.str.40, %bb.m ]
  %i.x = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.r, ptr noundef nonnull %.str.41.sink, ptr noundef nonnull %1, ptr noundef nonnull %.0102) #10 ; 0 uses
  %i.y = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.42) #10 ; 0 uses
  %.not120 = icmp eq ptr %3, null
  br i1 %.not120, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #11
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  %.not121 = icmp eq ptr %4, null                 ; 2 uses
  br i1 %.not121, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #11
  %i.ac = add i64 %i.ab, %i.aa
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.095 = phi i64 [ %i.ac, %bb.q ], [ %i.aa, %bb.p ] ; 5 uses
  %i.ad = add i64 %.095, 1                        ; 2 uses
  %i.ae = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ad, ptr noundef nonnull @.str, i32 noundef 1508) #10 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread142, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = select i1 %.not121, ptr @.str.32, ptr %4
  %i.ah = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.ae, i64 noundef %i.ad, ptr noundef nonnull @.str.43, ptr noundef nonnull %3, ptr noundef nonnull %i.ag) #10
  %i.ai = trunc i64 %.095 to i32
  %.not122 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not122, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aj = tail call fastcc ptr @base64encode(ptr noundef %i.ae, i64 noundef %.095) ; 4 uses
  %.not123 = icmp eq ptr %i.aj, null
  br i1 %.not123, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.t
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.ae, i64 noundef %.095, ptr noundef nonnull @.str, i32 noundef 1521) #10
  br label %.thread142

bb.v:                                             ; preds = %bb.t
  %i.ak = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.aj) #10 ; 0 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #11
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.aj, i64 noundef %i.al, ptr noundef nonnull @.str, i32 noundef 1518) #10
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.ae, i64 noundef %.095, ptr noundef nonnull @.str, i32 noundef 1521) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.am = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.15) #10 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.an = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.r, i32 noundef 11, i64 noundef 0, ptr noundef null) #10
  %i.ao = and i64 %i.an, 4294967295
  %.not124 = icmp eq i64 %i.ao, 0
  br i1 %.not124, label %bb.y, label %.preheader185

bb.y:                                             ; preds = %bb.x
  %i.ap = tail call i32 @BIO_test_flags(ptr noundef nonnull %i.r, i32 noundef 8) #10
  %.not125 = icmp eq i32 %i.ap, 0
  br i1 %.not125, label %.preheader185, label %bb.x

.preheader185:                                    ; preds = %bb.y, %bb.x
  br label %bb.z

bb.z:                                             ; preds = %.preheader185, %bb.ab
  %i.aq = tail call i32 @BIO_wait(ptr noundef nonnull %i.r, i64 noundef %i.e, i32 noundef 100) #10 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = select i1 %i.as, ptr @.str.46, ptr @.str.47
  %i.au = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %6, ptr noundef nonnull @.str.45, ptr noundef %7, ptr noundef nonnull %i.at) #10 ; 0 uses
  br label %.thread142

bb.ab:                                            ; preds = %bb.z
  %i.av = tail call i32 @BIO_gets(ptr noundef nonnull %i.r, ptr noundef nonnull %i.o, i32 noundef 8192) #10 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 13
  br i1 %i.aw, label %bb.z, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(6) @.str.48, i64 noundef 5) #11
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %sub_0, label %bb.ad

sub_0:                                            ; preds = %bb.ac
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 5 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %.not = icmp eq i8 %i.ba, 49
  br i1 %.not, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = icmp eq i8 %i.bc, 46
  br i1 %i.bd, label %sub_0159, label %.tail.thread

bb.ad:                                            ; preds = %bb.ac
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1559, ptr noundef nonnull @__func__.OSSL_HTTP_proxy_connect) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 126, ptr noundef null) #10
  %i.be = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %6, ptr noundef nonnull @.str.49, ptr noundef %7) #10 ; 0 uses
  br label %.thread142

.tail.thread:                                     ; preds = %sub_0, %.tail
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1566, ptr noundef nonnull @__func__.OSSL_HTTP_proxy_connect) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 106, ptr noundef null) #10
  %i.bf = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %6, ptr noundef nonnull @.str.51, ptr noundef %7, i32 noundef 3, ptr noundef nonnull %i.az) #10 ; 0 uses
  br label %.thread142

sub_0159:                                         ; preds = %.tail
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not165 = icmp eq i8 %i.bh, 32
  br i1 %.not165, label %.tail158, label %.tail158.thread

.tail158:                                         ; preds = %sub_0159
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bj, 50
  br i1 %i.bk, label %.preheader, label %.tail158.thread

.tail158.thread:                                  ; preds = %sub_0159, %.tail158
  %i.bl = sext i8 %i.bh to i32
  %i.bm = tail call i32 @ossl_ctype_check(i32 noundef %i.bl, i32 noundef 8) #10
  %.not126 = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %spec.select = select i1 %.not126, ptr %i.bg, ptr %i.bn ; 2 uses
  %i.bo = zext nneg i32 %i.av to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.tail158.thread, %bb.af
  %indvars.iv = phi i64 [ %i.bo, %.tail158.thread ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %i.bp = getelementptr i8, ptr %i.o, i64 %indvars.iv
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !29
  %i.bs = sext i8 %i.br to i32
  %i.bt = tail call i32 @ossl_ctype_check(i32 noundef %i.bs, i32 noundef 8) #10
  %.not127 = icmp eq i32 %i.bt, 0
  br i1 %.not127, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bu = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bu, label %bb.ae, label %bb.ag, !llvm.loop !68

.preheader:                                       ; preds = %.tail158, %.preheader
  %i.bv = tail call i32 @BIO_gets(ptr noundef nonnull %i.r, ptr noundef nonnull %i.o, i32 noundef 8192) #10
  %i.bw = icmp sgt i32 %i.bv, 2
  br i1 %i.bw, label %.preheader, label %.thread142, !llvm.loop !69

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.098.lcssa = phi i64 [ %indvars.iv, %bb.ae ], [ 0, %bb.af ]
  %i.bx = getelementptr inbounds i8, ptr %i.o, i64 %.098.lcssa
  store i8 0, ptr %i.bx, align 1, !tbaa !29
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1582, ptr noundef nonnull @__func__.OSSL_HTTP_proxy_connect) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 61, i32 noundef 100, ptr noundef nonnull @.str.53, ptr noundef nonnull %spec.select) #10
  %i.by = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %6, ptr noundef nonnull @.str.54, ptr noundef %7, ptr noundef nonnull %spec.select) #10 ; 0 uses
  br label %.thread142

.thread142:                                       ; preds = %.preheader, %bb.ag, %bb.u, %bb.r, %bb.ad, %.tail.thread, %bb.aa
  %.097149 = phi i32 [ 0, %bb.ag ], [ 0, %bb.aa ], [ 0, %bb.ad ], [ 0, %.tail.thread ], [ 0, %bb.u ], [ 0, %bb.r ], [ 1, %.preheader ]
  %i.bz = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.r, i32 noundef 11, i64 noundef 0, ptr noundef null) #10 ; 0 uses
  %i.ca = tail call ptr @BIO_pop(ptr noundef nonnull %i.r) #10 ; 0 uses
  %i.cb = tail call i32 @BIO_free(ptr noundef nonnull %i.r) #10 ; 0 uses
  br label %.thread153

.thread153:                                       ; preds = %no_crlf.exit132.thread, %no_crlf.exit.thread, %bb.k, %bb.e, %.thread142
  %.097150 = phi i32 [ %.097149, %.thread142 ], [ 0, %no_crlf.exit132.thread ], [ 0, %bb.e ], [ 0, %bb.k ], [ 0, %no_crlf.exit.thread ]
  %.0100148 = phi ptr [ %i.o, %.thread142 ], [ null, %no_crlf.exit132.thread ], [ null, %bb.e ], [ %i.o, %bb.k ], [ null, %no_crlf.exit.thread ]
  tail call void @CRYPTO_free(ptr noundef %.0100148, ptr noundef nonnull @.str, i32 noundef 1607) #10
  ret i32 %.097150
}

declare ptr @BIO_f_buffer() local_unnamed_addr #2

declare ptr @BIO_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base64encode(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 2147483647
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc = trunc nuw nsw i64 %1 to i32       ; 3 uses
  %i.b = udiv i32 %.lhs.trunc, 3
  %.zext = zext nneg i32 %i.b to i64
  %i.c = urem i32 %.lhs.trunc, 3
  %.not = icmp ne i32 %i.c, 0
  %i.d = zext i1 %.not to i64
  %spec.select = add nuw nsw i64 %i.d, %.zext
  %i.e = shl nuw nsw i64 %spec.select, 2          ; 2 uses
  %i.f = or disjoint i64 %i.e, 1
  %i.g = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 1441) #10 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @EVP_EncodeBlock(ptr noundef nonnull %i.g, ptr noundef nonnull %0, i32 noundef %.lhs.trunc) #10 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = sext i32 %i.i to i64
  %i.l = icmp uge i64 %i.e, %i.k
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d, !prof !70

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_free(ptr noundef nonnull %i.g, ptr noundef nonnull @.str, i32 noundef 1447) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.015 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.015
}

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @BIO_method_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @BIO_new_connect(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_parse_hostserv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncodeBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS6bio_st", !8, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"ossl_http_req_ctx_st", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 20, !10, i64 24, !10, i64 32, !8, i64 40, !8, i64 48, !5, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !9, i64 112, !5, i64 120, !9, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !5, i64 160, !11, i64 168, !11, i64 176, !9, i64 184, !11, i64 192}
!13 = !{!12, !5, i64 0}
!14 = !{!12, !5, i64 16}
!15 = !{!12, !9, i64 8}
!16 = !{!12, !10, i64 24}
!17 = !{!12, !10, i64 32}
!18 = !{!12, !11, i64 192}
!19 = !{!12, !11, i64 152}
!20 = !{!12, !5, i64 20}
!21 = !{!12, !10, i64 88}
!22 = !{!12, !10, i64 96}
!23 = !{!12, !9, i64 64}
!24 = !{!12, !9, i64 72}
!25 = !{!12, !9, i64 80}
!26 = !{!12, !9, i64 112}
!27 = !{!12, !11, i64 144}
!28 = !{!12, !5, i64 104}
!29 = !{!4, !4, i64 0}
!30 = !{!12, !5, i64 120}
!31 = !{!12, !11, i64 176}
!32 = !{!12, !11, i64 168}
!33 = !{!12, !5, i64 160}
!34 = !{!9, !9, i64 0}
!35 = !{!12, !9, i64 184}
!36 = !{!12, !11, i64 136}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!12, !8, i64 40}
!39 = !{!12, !8, i64 48}
!40 = !{!12, !5, i64 56}
!41 = !{ptr @OSSL_HTTP_close}
!42 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!12, !5, i64 108}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !37}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !37}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !57}
!55 = !{!12, !9, i64 128}
!56 = !{!11, !11, i64 0}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"p1 _ZTS13ASN1_VALUE_st", !8, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!10, !10, i64 0}
!61 = distinct !{!61, !37}
!62 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!63 = !{!62, !9, i64 8}
!64 = !{!62, !9, i64 16}
!65 = !{!5, !5, i64 0}
!66 = !{!"p1 _ZTS20ossl_http_req_ctx_st", !8, i64 0}
!67 = !{!66, !66, i64 0}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !37}
!70 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
