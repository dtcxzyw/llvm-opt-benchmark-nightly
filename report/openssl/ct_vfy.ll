Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ct_vfy?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"crypto/ct/ct_vfy.c\00", align 1
@__func__.SCT_CTX_verify = private unnamed_addr constant [15 x i8] c"SCT_CTX_verify\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1

; Function Attrs: nounwind uwtable
define i32 @SCT_CTX_verify(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SCT_is_complete(ptr noundef %1) #4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  switch i32 %i.e, label %bb.f [
    i32 -1, label %bb.e
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 102, ptr noundef nonnull @__func__.SCT_CTX_verify) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 50, i32 noundef 106, ptr noundef null) #4
  br label %bb.s

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.i = load i32, ptr %1, align 8, !tbaa !17
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @__func__.SCT_CTX_verify) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 50, i32 noundef 115, ptr noundef null) #4
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  %.not33 = icmp eq i64 %i.k, %i.m
  br i1 %.not33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %bcmp = tail call i32 @bcmp(ptr %i.o, ptr %i.q, i64 %i.k)
  %.not34 = icmp eq i32 %bcmp, 0
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 110, ptr noundef nonnull @__func__.SCT_CTX_verify) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 50, i32 noundef 114, ptr noundef null) #4
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @__func__.SCT_CTX_verify) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 50, i32 noundef 116, ptr noundef null) #4
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.w = tail call ptr @EVP_MD_CTX_new() #4       ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.ac = load ptr, ptr %0, align 8, !tbaa !19
  %i.ad = tail call i32 @EVP_DigestVerifyInit_ex(ptr noundef nonnull %i.w, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef %i.z, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef null) #4
  %.not35 = icmp eq i32 %i.ad, 0
  br i1 %.not35, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = tail call fastcc i32 @sct_ctx_update(ptr noundef %i.w, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not36 = icmp eq i32 %i.ae, 0
  br i1 %.not36, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.aj = tail call i32 @EVP_DigestVerifyFinal(ptr noundef nonnull %i.w, ptr noundef %i.ag, i64 noundef %i.ai) #4 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @__func__.SCT_CTX_verify) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 50, i32 noundef 107, ptr noundef null) #4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o, %bb.n, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ 0, %bb.q ], [ %i.aj, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ]
  tail call void @EVP_MD_CTX_free(ptr noundef %i.w) #4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l, %bb.j, %bb.g, %bb.e
  %.027 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.l ], [ %.0, %bb.r ]
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SCT_is_complete(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestVerifyInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sct_ctx_update(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  switch i32 %i.c, label %bb.c [
    i32 -1, label %bb.m
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %2, align 8, !tbaa !17
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store i8 %i.h, ptr %i.a, align 1, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 0, ptr %i.i, align 1, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %3 = load <8 x i8>, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %4, ptr %i.j, align 1, !tbaa !29
  %i.m = lshr i32 %i.c, 8
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1, !tbaa !29
  %i.o = trunc i32 %i.c to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.o, ptr %i.p, align 1, !tbaa !29
  %i.q = call i32 @EVP_DigestUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 12) #4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.b, align 8, !tbaa !15
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !30
  %i.x = call i32 @EVP_DigestUpdate(ptr noundef nonnull %0, ptr noundef %i.u, i64 noundef %i.w) #4
  %.not63 = icmp eq i32 %i.x, 0
  br i1 %.not63, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink70 = phi i64 [ 40, %bb.d ], [ 56, %bb.e ]
  %.sink = phi i64 [ 48, %bb.d ], [ 64, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.sink70
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.0 = load i64, ptr %i.z, align 8, !tbaa !31    ; 4 uses
  %.059 = load ptr, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.aa = icmp eq ptr %.059, null
  br i1 %i.aa, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = lshr i64 %.0, 16
  %i.ac = trunc i64 %i.ab to i8
  store i8 %i.ac, ptr %i.a, align 1, !tbaa !29
  %i.ad = lshr i64 %.0, 8
  %i.ae = trunc i64 %i.ad to i8
  store i8 %i.ae, ptr %i.i, align 1, !tbaa !29
  %i.af = trunc i64 %.0 to i8
  store i8 %i.af, ptr %i.j, align 1, !tbaa !29
  %i.ag = call i32 @EVP_DigestUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 3) #4
  %.not64 = icmp eq i32 %i.ag, 0
  br i1 %.not64, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = call i32 @EVP_DigestUpdate(ptr noundef nonnull %0, ptr noundef nonnull %.059, i64 noundef %.0) #4
  %.not65 = icmp eq i32 %i.ah, 0
  br i1 %.not65, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  %i.ak = lshr i64 %i.aj, 8
  %i.al = trunc i64 %i.ak to i8
  store i8 %i.al, ptr %i.a, align 1, !tbaa !29
  %i.am = trunc i64 %i.aj to i8
  store i8 %i.am, ptr %i.i, align 1, !tbaa !29
  %i.an = call i32 @EVP_DigestUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 2) #4
  %.not66 = icmp eq i32 %i.an, 0
  br i1 %.not66, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  %.not67 = icmp eq i64 %i.ao, 0
  br i1 %.not67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.ar = call i32 @EVP_DigestUpdate(ptr noundef nonnull %0, ptr noundef %i.aq, i64 noundef %i.ao) #4
  %.not68 = icmp eq i32 %i.ar, 0
  br i1 %.not68, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a, %bb.l
  %.060 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %bb.l ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.060
}

declare i32 @EVP_DigestVerifyFinal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind }

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
!9 = !{!"p1 _ZTS11evp_pkey_st", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!13 = !{!"sct_ctx_st", !9, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !11, i64 32, !10, i64 40, !11, i64 48, !10, i64 56, !11, i64 64, !11, i64 72, !12, i64 80, !10, i64 88}
!14 = !{!"sct_st", !5, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !11, i64 32, !11, i64 40, !10, i64 48, !11, i64 56, !4, i64 64, !4, i64 65, !10, i64 72, !11, i64 80, !5, i64 88, !5, i64 92, !5, i64 96}
!15 = !{!14, !5, i64 88}
!16 = !{!13, !10, i64 24}
!17 = !{!14, !5, i64 0}
!18 = !{!14, !11, i64 40}
!19 = !{!13, !9, i64 0}
!20 = !{!14, !11, i64 32}
!21 = !{!13, !11, i64 16}
!22 = !{!14, !10, i64 24}
!23 = !{!13, !10, i64 8}
!24 = !{!13, !11, i64 72}
!25 = !{!13, !12, i64 80}
!26 = !{!13, !10, i64 88}
!27 = !{!14, !10, i64 72}
!28 = !{!14, !11, i64 80}
!29 = !{!4, !4, i64 0}
!30 = !{!13, !11, i64 32}
!31 = !{!11, !11, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!14, !11, i64 56}
!34 = !{!14, !10, i64 48}
end_hunk_0
