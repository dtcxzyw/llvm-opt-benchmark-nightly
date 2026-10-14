Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ct_prn?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"not set\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown version\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unknown log\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"unverified\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"unknown status\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%*sSigned Certificate Timestamp:\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"\0A%*sVersion   : \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"unknown\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"v1 (0x0)\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\0A%*sLog       : %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\0A%*sLog ID    : \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"\0A%*sTimestamp : \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"\0A%*sExtensions: \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\0A%*sSignature : \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"\0A%*s            \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"%.14s.%03dZ\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%02X%02X\00", align 1
@switch.table.SCT_validation_status_string = private unnamed_addr constant [6 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.5, ptr @.str.4, ptr @.str.3, ptr @.str.1], align 8

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @SCT_validation_status_string(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SCT_get_validation_status(ptr noundef %0) #3 ; 2 uses
  %i.b = icmp ult i32 %i.a, 6
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.SCT_validation_status_string, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.6, %bb.a ]
  ret ptr %.0
}

declare i32 @SCT_get_validation_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @SCT_print(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = tail call ptr @CTLOG_STORE_get0_log_by_id(ptr noundef nonnull %3, ptr noundef %i.c, i64 noundef %i.e) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.g = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %2, ptr noundef nonnull @.str.8) #3 ; 0 uses
  %i.h = add nsw i32 %2, 4                        ; 7 uses
  %i.i = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %i.h, ptr noundef nonnull @.str.8) #3 ; 0 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !14
  %.not49 = icmp eq i32 %i.j, 0
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %2, 16                       ; 2 uses
  %i.l = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %i.k, ptr noundef nonnull @.str.8) #3 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16
  %i.q = trunc i64 %i.p to i32
  %i.r = tail call i32 @BIO_hex_string(ptr noundef %1, i32 noundef %i.k, i32 noundef 16, ptr noundef %i.n, i32 noundef %i.q) #3 ; 0 uses
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.11) #3 ; 0 uses
  %.not50 = icmp eq ptr %.0, null
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @CTLOG_get0_name(ptr noundef nonnull %.0) #3
  %i.u = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %i.h, ptr noundef nonnull @.str.8, ptr noundef %i.t) #3 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %i.h, ptr noundef nonnull @.str.8) #3 ; 0 uses
  %i.w = add nsw i32 %2, 16                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = tail call i32 @BIO_hex_string(ptr noundef %1, i32 noundef %i.w, i32 noundef 16, ptr noundef %i.y, i32 noundef %i.ab) #3 ; 0 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %i.h, ptr noundef nonnull @.str.8) #3 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17 ; 3 uses
  %i.ag = tail call ptr @ASN1_GENERALIZEDTIME_new() #3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %timestamp_print.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = udiv i64 %i.af, 86400000
  %i.aj = trunc i64 %i.ai to i32
  %4 = urem i64 %i.af, 86400000
  %.lhs.trunc.i = trunc nuw nsw i64 %4 to i32
  %i.ak = udiv i32 %.lhs.trunc.i, 1000
  %.zext.i = zext nneg i32 %i.ak to i64
  %i.al = tail call ptr @ASN1_GENERALIZEDTIME_adj(ptr noundef nonnull %i.ag, i64 noundef 0, i32 noundef %i.aj, i64 noundef %.zext.i) #3 ; 0 uses
  %i.am = tail call ptr @ASN1_STRING_get0_data(ptr noundef nonnull %i.ag) #3
  %5 = urem i64 %i.af, 1000
  %6 = trunc nuw nsw i64 %5 to i32
  %i.an = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.a, i64 noundef 20, ptr noundef nonnull @.str.20, ptr noundef %i.am, i32 noundef %6) #3 ; 0 uses
  %i.ao = call i32 @ASN1_GENERALIZEDTIME_set_string(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #3
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call i32 @ASN1_GENERALIZEDTIME_print(ptr noundef %1, ptr noundef nonnull %i.ag) #3 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @ASN1_GENERALIZEDTIME_free(ptr noundef nonnull %i.ag) #3
  br label %timestamp_print.exit

timestamp_print.exit:                             ; preds = %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.aq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %i.h, ptr noundef nonnull @.str.8) #3 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !18 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %timestamp_print.exit
  %i.au = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.16) #3 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %timestamp_print.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ax = trunc i64 %i.as to i32
  %i.ay = call i32 @BIO_hex_string(ptr noundef %1, i32 noundef %i.w, i32 noundef 16, ptr noundef %i.aw, i32 noundef %i.ax) #3 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %i.h, ptr noundef nonnull @.str.8) #3 ; 0 uses
  %i.ba = call i32 @SCT_get_signature_nid(ptr noundef nonnull %0) #3 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !20
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21
  %i.bh = zext i8 %i.bg to i32
  %i.bi = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %i.be, i32 noundef %i.bh) #3 ; 0 uses
  br label %SCT_signature_algorithms_print.exit

bb.o:                                             ; preds = %bb.m
  %i.bj = call ptr @OBJ_nid2ln(i32 noundef %i.ba) #3
  %i.bk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %i.bj) #3 ; 0 uses
  br label %SCT_signature_algorithms_print.exit

SCT_signature_algorithms_print.exit:              ; preds = %bb.n, %bb.o
  %i.bl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %i.h, ptr noundef nonnull @.str.8) #3 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.bq = trunc i64 %i.bp to i32
  %i.br = call i32 @BIO_hex_string(ptr noundef %1, i32 noundef %i.w, i32 noundef 16, ptr noundef %i.bn, i32 noundef %i.bq) #3 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %SCT_signature_algorithms_print.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @CTLOG_STORE_get0_log_by_id(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @BIO_hex_string(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTLOG_get0_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @SCT_LIST_print(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #3 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ]   ; 3 uses
  %i.c = tail call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %.013) #3
  tail call void @SCT_print(ptr noundef %i.c, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  %i.d = tail call i32 @OPENSSL_sk_num(ptr noundef %0) #3
  %i.e = add nsw i32 %i.d, -1
  %i.f = icmp slt i32 %.013, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %3) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = add nuw nsw i32 %.013, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.h, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ASN1_GENERALIZEDTIME_new() local_unnamed_addr #1

declare ptr @ASN1_GENERALIZEDTIME_adj(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @ASN1_STRING_get0_data(ptr noundef) local_unnamed_addr #1

declare i32 @ASN1_GENERALIZEDTIME_set_string(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ASN1_GENERALIZEDTIME_print(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ASN1_GENERALIZEDTIME_free(ptr noundef) local_unnamed_addr #1

declare i32 @SCT_get_signature_nid(ptr noundef) local_unnamed_addr #1

declare ptr @OBJ_nid2ln(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!10 = !{!"long", !4, i64 0}
!11 = !{!"sct_st", !5, i64 0, !9, i64 8, !10, i64 16, !9, i64 24, !10, i64 32, !10, i64 40, !9, i64 48, !10, i64 56, !4, i64 64, !4, i64 65, !9, i64 72, !10, i64 80, !5, i64 88, !5, i64 92, !5, i64 96}
!12 = !{!11, !9, i64 24}
!13 = !{!11, !10, i64 32}
!14 = !{!11, !5, i64 0}
!15 = !{!11, !9, i64 8}
!16 = !{!11, !10, i64 16}
!17 = !{!11, !10, i64 40}
!18 = !{!11, !10, i64 56}
!19 = !{!11, !9, i64 48}
!20 = !{!11, !4, i64 64}
!21 = !{!11, !4, i64 65}
!22 = !{!11, !9, i64 72}
!23 = !{!11, !10, i64 80}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
end_hunk_0
