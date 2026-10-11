Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/encode_key2blob?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ossl_dispatch_st = type { i32, ptr }

@ossl_ec_to_blob_encoder_functions = local_unnamed_addr constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @key2blob_newctx }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @key2blob_freectx }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @ec2blob_does_selection }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @ec2blob_import_object }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @ec2blob_free_object }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @ec2blob_encode }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@ossl_sm2_to_blob_encoder_functions = local_unnamed_addr constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @key2blob_newctx }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @key2blob_freectx }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @sm22blob_does_selection }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @sm22blob_import_object }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @sm22blob_free_object }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @sm22blob_encode }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@ossl_ec_keymgmt_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@.str = private unnamed_addr constant [58 x i8] c"providers/implementations/encode_decode/encode_key2blob.c\00", align 1
@__func__.ec2blob_encode = private unnamed_addr constant [15 x i8] c"ec2blob_encode\00", align 1
@ossl_sm2_keymgmt_functions = external constant [0 x %struct.ossl_dispatch_st], align 8
@__func__.sm22blob_encode = private unnamed_addr constant [16 x i8] c"sm22blob_encode\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef ptr @key2blob_newctx(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) #0 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @key2blob_freectx(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @ec2blob_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %key2blob_check_selection.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %2 = and i32 %1, 135
  %or.cond19.i = icmp eq i32 %2, 0
  br i1 %or.cond19.i, label %key2blob_check_selection.exit, label %.preheader.preheader.i.a

.preheader.preheader.i.a:                         ; preds = %.preheader.preheader.i
  %i.b = and i32 %1, 1
  %i.c = xor i32 %i.b, 1
  br label %key2blob_check_selection.exit

key2blob_check_selection.exit:                    ; preds = %bb.a, %.preheader.preheader.i, %.preheader.preheader.i.a
  %.2.i = phi i32 [ 1, %bb.a ], [ %i.c, %.preheader.preheader.i.a ], [ 0, %.preheader.preheader.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @ec2blob_import_object(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @ossl_prov_import_key(ptr noundef nonnull @ossl_ec_keymgmt_functions, ptr noundef %0, i32 noundef %1, ptr noundef %2) #4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @ec2blob_free_object(ptr noundef %0) #1 {
bb.a:
  tail call void @ossl_prov_free_key(ptr noundef nonnull @ossl_ec_keymgmt_functions, ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ec2blob_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @__func__.ec2blob_encode) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 524550, ptr noundef null) #4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.b = call i32 @i2o_ECPublicKey(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %or.cond.i = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.d, label %key2blob_encode.exit

bb.d:                                             ; preds = %bb.c
  %i.f = call ptr @ossl_bio_new_from_core_bio(ptr noundef %0, ptr noundef %1) #4 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %key2blob_encode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @BIO_write(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, i32 noundef range(i32 1, -2147483648) %i.b) #4
  %i.i = call i32 @BIO_free(ptr noundef nonnull %i.f) #4 ; 0 uses
  br label %key2blob_encode.exit

key2blob_encode.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.h, %bb.e ], [ 0, %bb.d ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @CRYPTO_free(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef 97) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %key2blob_encode.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0.i, %key2blob_encode.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @sm22blob_does_selection(ptr nofree readnone captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %key2blob_check_selection.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %2 = and i32 %1, 135
  %or.cond19.i = icmp eq i32 %2, 0
  br i1 %or.cond19.i, label %key2blob_check_selection.exit, label %.preheader.preheader.i.a

.preheader.preheader.i.a:                         ; preds = %.preheader.preheader.i
  %i.b = and i32 %1, 1
  %i.c = xor i32 %i.b, 1
  br label %key2blob_check_selection.exit

key2blob_check_selection.exit:                    ; preds = %bb.a, %.preheader.preheader.i, %.preheader.preheader.i.a
  %.2.i = phi i32 [ 1, %bb.a ], [ %i.c, %.preheader.preheader.i.a ], [ 0, %.preheader.preheader.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @sm22blob_import_object(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @ossl_prov_import_key(ptr noundef nonnull @ossl_sm2_keymgmt_functions, ptr noundef %0, i32 noundef %1, ptr noundef %2) #4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @sm22blob_free_object(ptr noundef %0) #1 {
bb.a:
  tail call void @ossl_prov_free_key(ptr noundef nonnull @ossl_sm2_keymgmt_functions, ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sm22blob_encode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i32 %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @__func__.sm22blob_encode) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 524550, ptr noundef null) #4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.b = call i32 @i2o_ECPublicKey(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %or.cond.i = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.d, label %key2blob_encode.exit

bb.d:                                             ; preds = %bb.c
  %i.f = call ptr @ossl_bio_new_from_core_bio(ptr noundef %0, ptr noundef %1) #4 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %key2blob_encode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 @BIO_write(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, i32 noundef range(i32 1, -2147483648) %i.b) #4
  %i.i = call i32 @BIO_free(ptr noundef nonnull %i.f) #4 ; 0 uses
  br label %key2blob_encode.exit

key2blob_encode.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.h, %bb.e ], [ 0, %bb.d ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @CRYPTO_free(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef 97) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %key2blob_encode.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0.i, %key2blob_encode.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @ossl_prov_import_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ossl_prov_free_key(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @i2o_ECPublicKey(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ossl_bio_new_from_core_bio(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
end_hunk_0
