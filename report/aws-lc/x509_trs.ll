Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/x509_trs?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/x509/x509_trs.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SSL Client\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SSL Server\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"S/MIME email\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Object Signer\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"TSA server\00", align 1
@trstandard = internal constant [6 x { i32, i32, ptr, ptr, i32, [4 x i8], ptr }] [{ i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 1, i32 0, ptr @trust_compat, ptr @.str.1, i32 0, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 2, i32 0, ptr @trust_1oidany, ptr @.str.2, i32 130, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 3, i32 0, ptr @trust_1oidany, ptr @.str.3, i32 129, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 4, i32 0, ptr @trust_1oidany, ptr @.str.4, i32 132, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 5, i32 0, ptr @trust_1oidany, ptr @.str.5, i32 131, [4 x i8] zeroinitializer, ptr null }, { i32, i32, ptr, ptr, i32, [4 x i8], ptr } { i32 8, i32 0, ptr @trust_1oidany, ptr @.str.6, i32 133, [4 x i8] zeroinitializer, ptr null }], align 16
@switch.table.X509_TRUST_get_by_id = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 -1, i32 -1, i32 5], align 4

; Function Attrs: nounwind uwtable
define i32 @X509_check_trust(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %X509_TRUST_get_by_id.exit [
    i32 -1, label %trust_compat.exit
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %.loopexit.fold.split.i
    i32 3, label %.loopexit.fold.split14.i
    i32 4, label %.loopexit.fold.split15.i
    i32 5, label %.loopexit.fold.split16.i
    i32 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 152
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.b = tail call fastcc i32 @obj_trust(i32 noundef 910, ptr %.val17) ; 2 uses
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %bb.c, label %trust_compat.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %0) #4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trust_compat.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  %3 = lshr i32 %i.e, 12
  %4 = and i32 %3, 2
  %..i = xor i32 %4, 3
  br label %trust_compat.exit

bb.e:                                             ; preds = %bb.a
  br label %bb.f

.loopexit.fold.split.i:                           ; preds = %bb.a
  br label %bb.f

.loopexit.fold.split14.i:                         ; preds = %bb.a
  br label %bb.f

.loopexit.fold.split15.i:                         ; preds = %bb.a
  br label %bb.f

.loopexit.fold.split16.i:                         ; preds = %bb.a
  br label %bb.f

X509_TRUST_get_by_id.exit:                        ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.g = tail call fastcc i32 @obj_trust(i32 noundef %1, ptr %.val)
  br label %trust_compat.exit

bb.f:                                             ; preds = %bb.a, %.loopexit.fold.split15.i, %.loopexit.fold.split14.i, %.loopexit.fold.split.i, %bb.e, %.loopexit.fold.split16.i
  %.ph = phi i64 [ 3, %.loopexit.fold.split15.i ], [ 2, %.loopexit.fold.split14.i ], [ 1, %.loopexit.fold.split.i ], [ 5, %bb.e ], [ 0, %bb.a ], [ 4, %.loopexit.fold.split16.i ]
  %i.h = getelementptr inbounds nuw [40 x i8], ptr @trstandard, i64 %.ph ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = tail call i32 %i.j(ptr noundef nonnull %i.h, ptr noundef %0) #4
  br label %trust_compat.exit

trust_compat.exit:                                ; preds = %bb.a, %bb.d, %bb.c, %X509_TRUST_get_by_id.exit, %bb.f, %bb.b
  %.2 = phi i32 [ %i.b, %bb.b ], [ 1, %bb.a ], [ %i.k, %bb.f ], [ %i.g, %X509_TRUST_get_by_id.exit ], [ %..i, %bb.d ], [ 3, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 4) i32 @obj_trust(i32 noundef %0, ptr nofree readonly captures(address_is_null) %.152.val) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %.152.val, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.152.val, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not20 = icmp eq ptr %i.b, null
  br i1 %.not20, label %.loopexit2, label %.preheader1

.preheader1:                                      ; preds = %bb.b
  %i.c = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.b) #4
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %.loopexit2, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.d = add nuw i64 %.04, 1                      ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.f = tail call i64 @OPENSSL_sk_num(ptr noundef %i.e) #4
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %.loopexit2, !llvm.loop !31

.lr.ph:                                           ; preds = %.preheader1, %bb.c
  %.04 = phi i64 [ %i.d, %bb.c ], [ 0, %.preheader1 ] ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.i = tail call ptr @OPENSSL_sk_value(ptr noundef %i.h, i64 noundef %.04) #4
  %i.j = tail call i32 @OBJ_obj2nid(ptr noundef %i.i) #4
  %i.k = icmp eq i32 %i.j, %0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit2:                                       ; preds = %bb.c, %.preheader1, %bb.b
  %i.l = load ptr, ptr %.152.val, align 8, !tbaa !29 ; 2 uses
  %.not21 = icmp eq ptr %i.l, null
  br i1 %.not21, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit2
  %i.m = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.l) #4
  %.not10 = icmp eq i64 %i.m, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph6
  %i.n = add nuw i64 %.15, 1                      ; 2 uses
  %i.o = load ptr, ptr %.152.val, align 8, !tbaa !29
  %i.p = tail call i64 @OPENSSL_sk_num(ptr noundef %i.o) #4
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %.lr.ph6, label %.loopexit, !llvm.loop !32

.lr.ph6:                                          ; preds = %.preheader, %bb.d
  %.15 = phi i64 [ %i.n, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.r = load ptr, ptr %.152.val, align 8, !tbaa !29
  %i.s = tail call ptr @OPENSSL_sk_value(ptr noundef %i.r, i64 noundef %.15) #4
  %i.t = tail call i32 @OBJ_obj2nid(ptr noundef %i.s) #4
  %i.u = icmp eq i32 %i.t, %0
  br i1 %i.u, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph6, %bb.d, %.preheader, %.loopexit2, %bb.a
  %.018 = phi i32 [ 3, %bb.a ], [ 3, %.preheader ], [ 3, %.loopexit2 ], [ 3, %bb.d ], [ 1, %.lr.ph6 ], [ 2, %.lr.ph ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 4) i32 @trust_compat(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %1) #4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %2 = lshr i32 %i.c, 12
  %3 = and i32 %2, 2
  %. = xor i32 %3, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 6) i32 @X509_TRUST_get_by_id(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 8
  br i1 %i.a, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.X509_TRUST_get_by_id, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %switch.lookup
  %i.c = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @X509_TRUST_get0(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 5
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr @trstandard, i64 %i.b
  %.0 = select i1 %i.a, ptr null, ptr %i.c
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @X509_TRUST_get_count() local_unnamed_addr #1 {
bb.a:
  ret i32 6
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509_TRUST_set(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %X509_TRUST_get_by_id.exit [
    i32 1, label %.loopexit.fold.split.i
    i32 2, label %.loopexit.fold.split.i
    i32 3, label %.loopexit.fold.split.i
    i32 4, label %.loopexit.fold.split.i
    i32 5, label %.loopexit.fold.split.i
    i32 8, label %.loopexit.fold.split.i
  ]

X509_TRUST_get_by_id.exit:                        ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str, i32 noundef 77) #4
  br label %bb.b

.loopexit.fold.split.i:                           ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i32 %1, ptr %0, align 4, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.fold.split.i, %X509_TRUST_get_by_id.exit
  %.0 = phi i32 [ 0, %X509_TRUST_get_by_id.exit ], [ 1, %.loopexit.fold.split.i ]
  ret i32 %.0
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @X509_TRUST_get_flags(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @X509_TRUST_get0_name(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @X509_TRUST_get_trust(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !37
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @X509_TRUST_cleanup() local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 4) i32 @trust_1oidany(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38
  %i.h = tail call fastcc i32 @obj_trust(i32 noundef %i.g, ptr nonnull %i.b)
  br label %trust_compat.exit

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.i = tail call i32 @x509v3_cache_extensions(ptr noundef nonnull %1) #4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %trust_compat.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !23
  %2 = lshr i32 %i.k, 12
  %3 = and i32 %2, 2
  %..i = xor i32 %3, 3
  br label %trust_compat.exit

trust_compat.exit:                                ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ %..i, %bb.f ], [ 3, %bb.e ]
  ret i32 %.0
}

declare i32 @x509v3_cache_extensions(ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS13X509_algor_st", !8, i64 0}
!10 = !{!"p1 _ZTS14asn1_string_st", !8, i64 0}
!11 = !{!"x509_sig_info_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!12 = !{!"p1 _ZTS13stack_st_void", !8, i64 0}
!13 = !{!"crypto_ex_data_st", !12, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !8, i64 0}
!16 = !{!"p1 _ZTS19stack_st_DIST_POINT", !8, i64 0}
!17 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !8, i64 0}
!18 = !{!"p1 _ZTS19NAME_CONSTRAINTS_st", !8, i64 0}
!19 = !{!"p1 _ZTS16x509_cert_aux_st", !8, i64 0}
!20 = !{!"p1 _ZTS16crypto_buffer_st", !8, i64 0}
!21 = !{!"x509_st", !8, i64 0, !9, i64 8, !10, i64 16, !11, i64 24, !5, i64 40, !13, i64 48, !14, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !10, i64 80, !15, i64 88, !16, i64 96, !17, i64 104, !18, i64 112, !4, i64 120, !19, i64 152, !20, i64 160, !4, i64 168}
!22 = !{!21, !19, i64 152}
!23 = !{!21, !5, i64 64}
!24 = !{!"p1 omnipotent char", !8, i64 0}
!25 = !{!"x509_trust_st", !5, i64 0, !5, i64 4, !8, i64 8, !24, i64 16, !5, i64 24, !8, i64 32}
!26 = !{!"p1 _ZTS20stack_st_ASN1_OBJECT", !8, i64 0}
!27 = !{!"x509_cert_aux_st", !26, i64 0, !26, i64 8, !10, i64 16, !10, i64 24}
!28 = !{!27, !26, i64 8}
!29 = !{!27, !26, i64 0}
!30 = !{!25, !8, i64 8}
!31 = distinct !{!31, !33}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!5, !5, i64 0}
!35 = !{!25, !5, i64 4}
!36 = !{!25, !24, i64 16}
!37 = !{!25, !5, i64 0}
!38 = !{!25, !5, i64 24}
end_hunk_0
