begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Netscape SPKI:\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  Public Key Algorithm: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  Unable to load public key\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"  Challenge String: %.*s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  Signature Algorithm: %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0A      \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @NETSCAPE_SPKI_print(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str) #3 ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = call i32 @X509_PUBKEY_get0_param(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.d) #3 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.g = call i32 @OBJ_obj2nid(ptr noundef %i.f) #3 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call ptr @OBJ_nid2ln(i32 noundef %i.g) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ @.str.2, %bb.a ]
  %i.k = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %i.j) #3 ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !9
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = call ptr @X509_PUBKEY_get(ptr noundef %i.m) #3 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #3 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = call i32 @EVP_PKEY_print_public(ptr noundef %0, ptr noundef nonnull %i.n, i32 noundef 4, ptr noundef null) #3 ; 0 uses
  call void @EVP_PKEY_free(ptr noundef nonnull %i.n) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.u, ptr noundef %i.w) #3 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = call i32 @OBJ_obj2nid(ptr noundef %i.z) #3 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call ptr @OBJ_nid2ln(i32 noundef %i.aa) #3
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = phi ptr [ %i.ac, %bb.i ], [ @.str.2, %bb.h ]
  %i.ae = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %i.ad) #3 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %i.ak = icmp sgt i32 %i.ah, 0
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.al = zext nneg i32 %i.ah to i64              ; 3 uses
  %.not43 = icmp eq i32 %i.ah, 1
  br i1 %.not43, label %.lr.ph.peel, label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %i.am = add nsw i64 %i.al, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.split, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.split ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = urem i32 %i.an, 18
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.aq = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 7) #3 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.at = zext i8 %i.as to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %2 = icmp eq i64 %indvars.iv.next, %i.al
  %3 = select i1 %2, ptr @.str.8, ptr @.str.9
  %i.au = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.at, ptr noundef nonnull %3) #3 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.am
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !30

.lr.ph.peel:                                      ; preds = %.lr.ph.preheader, %bb.l
  %i.av = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = urem i32 %i.aw, 18
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %._crit_edge.loopexit.peel.next

bb.m:                                             ; preds = %.lr.ph.peel
  %i.az = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 7) #3 ; 0 uses
  br label %._crit_edge.loopexit.peel.next

._crit_edge.loopexit.peel.next:                   ; preds = %bb.m, %.lr.ph.peel
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.av
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i32
  %indvars.iv.next.peel = add nuw nsw i64 %i.av, 1
  %i.bd = icmp eq i64 %indvars.iv.next.peel, %i.al
  %i.be = select i1 %i.bd, ptr @.str.8, ptr @.str.9
  %i.bf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.bc, ptr noundef nonnull %i.be) #3 ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.peel.next, %bb.j
  %i.bg = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 1) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @X509_PUBKEY_get0_param(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2ln(i32 noundef) local_unnamed_addr #2

declare ptr @X509_PUBKEY_get(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_public(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"Netscape_spki_st", !11, i64 0, !13, i64 8, !16, i64 24}
!11 = !{!"p1 _ZTS17Netscape_spkac_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"X509_algor_st", !14, i64 0, !15, i64 8}
!14 = !{!"p1 _ZTS14asn1_object_st", !12, i64 0}
!15 = !{!"p1 _ZTS12asn1_type_st", !12, i64 0}
!16 = !{!"p1 _ZTS14asn1_string_st", !12, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"Netscape_spkac_st", !19, i64 0, !16, i64 8}
!19 = !{!"p1 _ZTS14X509_pubkey_st", !12, i64 0}
!20 = !{!14, !14, i64 0}
!21 = !{!18, !16, i64 8}
!22 = !{!23, !6, i64 0}
!23 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !24, i64 8, !25, i64 16}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{!23, !24, i64 8}
!27 = !{!10, !14, i64 8}
!28 = !{!10, !16, i64 24}
!29 = !{!7, !7, i64 0}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
