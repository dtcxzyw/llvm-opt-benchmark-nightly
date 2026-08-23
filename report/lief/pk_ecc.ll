Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/pk_ecc?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.psa_key_attributes_s = type { i16, i16, i32, %struct.psa_key_policy_s, i32 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.mbedtls_mpi = type { ptr, i16, i16 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }

; Function Attrs: nounwind uwtable
define hidden range(i32 -15616, 1) i32 @mbedtls_pk_ecc_set_group(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call zeroext i8 @mbedtls_ecc_group_to_psa(i32 noundef %1, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !8     ; 2 uses
  %.not = icmp eq i8 %i.d, 0
  %.not11 = icmp eq i8 %i.d, %i.b
  %or.cond = select i1 %.not, i1 true, i1 %.not11
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not12 = icmp eq i64 %i.f, 0
  %i.g = load i64, ptr %i.a, align 8              ; 2 uses
  %.not13 = icmp eq i64 %i.f, %i.g
  %or.cond14 = select i1 %.not12, i1 true, i1 %.not13
  br i1 %or.cond14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 %i.b, ptr %i.c, align 8, !tbaa !8
  store i64 %i.g, ptr %i.e, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -15616, %bb.b ], [ -15616, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i8 @mbedtls_ecc_group_to_psa(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_pk_ecc_set_key(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.psa_key_attributes_s, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8     ; 2 uses
  %i.c = zext i8 %i.b to i16
  %i.d = or disjoint i16 %i.c, 28928
  store i16 %i.d, ptr %3, align 4, !tbaa !14
  %i.e = icmp eq i8 %i.b, 65
  br i1 %i.e, label %.split7, label %.split

.split:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 100665343, ptr %i.f, align 4, !tbaa !18
  br label %.split7

.split7:                                          ; preds = %bb.a, %.split
  %.sink = phi i32 [ 5121, %.split ], [ 1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sink, ptr %i.g, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = call i32 @psa_import_key(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.h) #4
  %i.j = call i32 @psa_pk_status_to_mbedtls(i32 noundef %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret i32 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @psa_import_key(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @psa_pk_status_to_mbedtls(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_pk_ecc_set_pubkey_from_prv(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.e = tail call i32 @psa_export_public_key(i32 noundef %i.b, ptr noundef nonnull %i.c, i64 noundef 528, ptr noundef nonnull %i.d) #4
  %i.f = tail call i32 @psa_pk_status_to_mbedtls(i32 noundef %i.e) #4
  ret i32 %i.f
}

declare i32 @psa_export_public_key(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_pk_ecc_set_pubkey(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_ecp_keypair, align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.psa_key_attributes_s, align 4 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8     ; 2 uses
  %i.d = icmp ult i8 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !21
  %i.f = icmp eq i8 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = icmp ugt i64 %2, 528
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 1 %1, i64 %2, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %2, ptr %i.i, align 8, !tbaa !22
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = tail call i32 @mbedtls_ecc_group_from_psa(i8 noundef zeroext %i.c, i64 noundef %i.k) #4
  call void @mbedtls_ecp_keypair_init(ptr noundef nonnull %3) #4
  %i.m = call i32 @mbedtls_ecp_group_load(ptr noundef nonnull %3, i32 noundef %i.l) #4 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %pk_ecc_set_pubkey_psa_ecp_fallback.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.o = call i32 @mbedtls_ecp_point_read_binary(ptr noundef nonnull %3, ptr noundef nonnull %i.n, ptr noundef nonnull %1, i64 noundef %2) #4 ; 2 uses
  %.not11.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i, label %pk_ecc_set_pubkey_psa_ecp_fallback.exit, label %pk_ecc_set_pubkey_psa_ecp_fallback.exit.thread

pk_ecc_set_pubkey_psa_ecp_fallback.exit.thread:   ; preds = %bb.e, %bb.f
  %.0.i.ph = phi i32 [ %i.o, %bb.f ], [ %i.m, %bb.e ]
  call void @mbedtls_ecp_keypair_free(ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.j

pk_ecc_set_pubkey_psa_ecp_fallback.exit:          ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = call i32 @mbedtls_ecp_point_write_binary(ptr noundef nonnull %3, ptr noundef nonnull %i.n, i32 noundef 0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i64 noundef 528) #4 ; 2 uses
  call void @mbedtls_ecp_keypair_free(ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  %.not.not = icmp eq i32 %i.r, 0
  br i1 %.not.not, label %pk_ecc_set_pubkey_psa_ecp_fallback.exit._crit_edge, label %bb.j

pk_ecc_set_pubkey_psa_ecp_fallback.exit._crit_edge: ; preds = %pk_ecc_set_pubkey_psa_ecp_fallback.exit
  %.pre = load i64, ptr %i.p, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %pk_ecc_set_pubkey_psa_ecp_fallback.exit._crit_edge, %bb.d
  %i.s = phi i64 [ %.pre, %pk_ecc_set_pubkey_psa_ecp_fallback.exit._crit_edge ], [ %2, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  %i.u = load i8, ptr %i.b, align 8, !tbaa !8
  %i.v = zext i8 %i.u to i16
  %i.w = or disjoint i16 %i.v, 16640
  store i16 %i.w, ptr %4, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = icmp ugt i64 %i.y, 65528
  %i.aa = trunc nuw i64 %i.y to i16
  %spec.select.i = select i1 %i.z, i16 -1, i16 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %spec.select.i, ptr %i.ab, align 2, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = call i32 @psa_import_key(ptr noundef nonnull %4, ptr noundef nonnull %i.ac, i64 noundef %i.s, ptr noundef nonnull %i.a) #4
  %.not20 = icmp eq i32 %i.ad, 0
  br i1 %.not20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !23
  %i.af = call i32 @psa_destroy_key(i32 noundef %i.ae) #4
  %.not21 = icmp eq i32 %i.af, 0
  br i1 %.not21, label %5, label %bb.i

5:                                                ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %5
  %.1 = phi i32 [ 0, %5 ], [ -15104, %bb.h ], [ -15104, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.j

bb.j:                                             ; preds = %pk_ecc_set_pubkey_psa_ecp_fallback.exit.thread, %pk_ecc_set_pubkey_psa_ecp_fallback.exit, %bb.c, %bb.i
  %.2 = phi i32 [ %i.r, %pk_ecc_set_pubkey_psa_ecp_fallback.exit ], [ %.1, %bb.i ], [ -138, %bb.c ], [ %.0.i.ph, %pk_ecc_set_pubkey_psa_ecp_fallback.exit.thread ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @psa_destroy_key(i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_ecc_group_from_psa(i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare void @mbedtls_ecp_keypair_init(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ecp_group_load(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_ecp_point_read_binary(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_ecp_point_write_binary(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @mbedtls_ecp_keypair_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 568}
!9 = !{!"mbedtls_pk_context", !10, i64 0, !11, i64 8, !5, i64 16, !6, i64 20, !12, i64 552, !12, i64 560, !6, i64 568, !5, i64 572, !5, i64 576}
!10 = !{!"p1 _ZTS17mbedtls_pk_info_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !12, i64 560}
!14 = !{!15, !16, i64 0}
!15 = !{!"psa_key_attributes_s", !16, i64 0, !16, i64 2, !5, i64 4, !17, i64 8, !5, i64 20}
!16 = !{!"short", !6, i64 0}
!17 = !{!"psa_key_policy_s", !5, i64 0, !5, i64 4, !5, i64 8}
!18 = !{!15, !5, i64 12}
!19 = !{!15, !5, i64 8}
!20 = !{!9, !5, i64 16}
!21 = !{!6, !6, i64 0}
!22 = !{!9, !12, i64 552}
!23 = !{!5, !5, i64 0}
!24 = !{!15, !16, i64 2}
end_hunk_0
