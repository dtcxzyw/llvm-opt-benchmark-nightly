Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/f_string?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"crypto/asn1/f_string.c\00", align 1
@__func__.a2i_ASN1_STRING = private unnamed_addr constant [16 x i8] c"a2i_ASN1_STRING\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -2147483646, -2147483648) i32 @i2a_ASN1_STRING(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !13
  %.pre28 = load i8, ptr %.pre, align 1, !tbaa !14
  %i.g = call i64 @ossl_to_hex(ptr noundef nonnull %i.a, i8 noundef zeroext %.pre28) #3 ; 0 uses
  %i.h = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2) #3
  %.not19.peel = icmp eq i32 %i.h, 2
  br i1 %.not19.peel, label %bb.d, label %.loopexit22

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %1, align 8, !tbaa !12
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.peel.next, label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1) #3
  %.not20 = icmp eq i32 %i.k, 1
  br i1 %.not20, label %.loopexit, label %.loopexit22

.peel.next:                                       ; preds = %bb.d, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.d ] ; 3 uses
  %.025 = phi i32 [ %i.v, %bb.i ], [ 2, %bb.d ]   ; 2 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = urem i32 %i.l, 35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.peel.next
  %i.o = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 2) #3
  %.not18 = icmp eq i32 %i.o, 2
  br i1 %.not18, label %bb.g, label %.loopexit22

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %.025, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.peel.next
  %.1 = phi i32 [ %i.p, %bb.g ], [ %.025, %.peel.next ]
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = call i64 @ossl_to_hex(ptr noundef nonnull %i.a, i8 noundef zeroext %i.s) #3 ; 0 uses
  %i.u = call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2) #3
  %.not19 = icmp eq i32 %i.u, 2
  br i1 %.not19, label %bb.i, label %.loopexit22

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i32 %.1, 2                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %1, align 8, !tbaa !12
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.peel.next, label %.loopexit, !llvm.loop !16

.loopexit22:                                      ; preds = %bb.h, %bb.f, %bb.c, %bb.e
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.d, %.preheader, %bb.e, %bb.a, %.loopexit22
  %.016 = phi i32 [ 0, %bb.a ], [ -1, %.loopexit22 ], [ 1, %bb.e ], [ 0, %.preheader ], [ 2, %bb.d ], [ %i.v, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ossl_to_hex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @a2i_ASN1_STRING(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BIO_gets(ptr noundef %0, ptr noundef %2, i32 noundef %3) #3 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph128, label %.loopexit96

.lr.ph128:                                        ; preds = %bb.a, %bb.m
  %.073126 = phi i32 [ %.1, %bb.m ], [ 0, %bb.a ] ; 2 uses
  %.074125 = phi i32 [ %i.ak, %bb.m ], [ 0, %bb.a ] ; 3 uses
  %.076124 = phi ptr [ %.177, %bb.m ], [ null, %bb.a ] ; 8 uses
  %.078123 = phi i32 [ %i.bi, %bb.m ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = zext nneg i32 %.078123 to i64
  %i.d = getelementptr i8, ptr %2, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14    ; 2 uses
  %i.g = icmp eq i8 %i.f, 10
  br i1 %i.g, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph128
  %i.h = add nsw i32 %.078123, -1                 ; 3 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  store i8 0, ptr %i.j, align 1, !tbaa !14
  %i.k = icmp eq i32 %i.h, 0
  br i1 %i.k, label %.loopexit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.b
  %.phi.trans.insert = getelementptr i8, ptr %i.j, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %.lr.ph128
  %i.l = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.f, %.lr.ph128 ]
  %.08392 = phi i32 [ %i.h, %..thread_crit_edge ], [ %.078123, %.lr.ph128 ] ; 2 uses
  %i.m = icmp eq i8 %i.l, 13
  br i1 %i.m, label %bb.c, label %.thread93

bb.c:                                             ; preds = %.thread
  %i.n = add nsw i32 %.08392, -1                  ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !14
  %i.q = icmp eq i32 %i.n, 0
  br i1 %i.q, label %.loopexit, label %.thread93

.thread93:                                        ; preds = %.thread, %bb.c
  %.18495 = phi i32 [ %i.n, %bb.c ], [ %.08392, %.thread ] ; 3 uses
  %i.r = add nsw i32 %.18495, -1
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = icmp eq i8 %i.u, 92                      ; 2 uses
  %.neg = sext i1 %i.v to i32
  %i.w = icmp samesign ugt i32 %.18495, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread93
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.x, align 1, !tbaa !14
  br label %.loopexit

.lr.ph:                                           ; preds = %.thread93, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.s, %.thread93 ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = sext i8 %i.z to i32
  %i.ab = tail call i32 @ossl_ctype_check(i32 noundef %i.aa, i32 noundef 16) #3
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %._crit_edge.split.loop.exit176, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ac = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge.split.loop.exit176:                   ; preds = %.lr.ph
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.split.loop.exit176
  %.285 = phi i32 [ %i.ad, %._crit_edge.split.loop.exit176 ], [ %.18495, %bb.d ] ; 3 uses
  %i.ae = zext nneg i32 %.285 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  store i8 0, ptr %i.af, align 1, !tbaa !14
  %i.ag = icmp slt i32 %.285, 2
  br i1 %i.ag, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ah = add nsw i32 %.285, %.neg                ; 3 uses
  %i.ai = and i32 %i.ah, 1
  %.not89 = icmp eq i32 %i.ai, 0
  br i1 %.not89, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 94, ptr noundef nonnull @__func__.a2i_ASN1_STRING) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 145, ptr noundef null) #3
  tail call void @CRYPTO_free(ptr noundef %.076124, ptr noundef nonnull @.str.2, i32 noundef 95) #3
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.aj = lshr exact i32 %i.ah, 1                 ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, %.074125         ; 3 uses
  %i.al = icmp sgt i32 %i.ak, %.073126
  br i1 %i.al, label %bb.h, label %.preheader.preheader

bb.h:                                             ; preds = %bb.g
  %i.am = add i32 %i.ah, %.074125                 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = tail call ptr @CRYPTO_realloc(ptr noundef %.076124, i64 noundef %i.an, ptr noundef nonnull @.str.2, i32 noundef 100) #3 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %.preheader.preheader

bb.i:                                             ; preds = %bb.h
  tail call void @CRYPTO_free(ptr noundef %.076124, ptr noundef nonnull @.str.2, i32 noundef 102) #3
  br label %bb.n

.preheader.preheader:                             ; preds = %bb.g, %bb.h
  %.177 = phi ptr [ %.076124, %bb.g ], [ %i.ao, %bb.h ] ; 5 uses
  %.1 = phi i32 [ %.073126, %bb.g ], [ %i.am, %bb.h ]
  %i.aq = zext nneg i32 %.074125 to i64
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.177, i64 %i.aq
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.l
  %indvars.iv150 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next151, %bb.l ] ; 2 uses
  %indvars.iv148 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next149, %bb.l ] ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv150 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv148
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14
  %i.at = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %i.as) #3 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %.preheader
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 112, ptr noundef nonnull @__func__.a2i_ASN1_STRING) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 141, ptr noundef null) #3
  tail call void @CRYPTO_free(ptr noundef %.177, ptr noundef nonnull @.str.2, i32 noundef 113) #3
  br label %bb.n

bb.k:                                             ; preds = %.preheader
  %i.av = load i8, ptr %gep, align 1, !tbaa !14
  %i.aw = shl i8 %i.av, 4
  %i.ax = trunc i32 %i.at to i8
  %i.ay = or i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %gep, align 1, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv148
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %i.bb) #3 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i8, ptr %gep, align 1, !tbaa !14
  %i.bf = shl i8 %i.be, 4
  %i.bg = trunc i32 %i.bc to i8
  %i.bh = or i8 %i.bf, %i.bg
  store i8 %i.bh, ptr %gep, align 1, !tbaa !14
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge122, label %.preheader, !llvm.loop !19

._crit_edge122:                                   ; preds = %bb.l
  br i1 %i.v, label %bb.m, label %.loopexit96

bb.m:                                             ; preds = %._crit_edge122
  %i.bi = tail call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #3 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.loopexit, label %.lr.ph128

.loopexit96:                                      ; preds = %._crit_edge122, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.177, %._crit_edge122 ]
  %.175 = phi i32 [ 0, %bb.a ], [ %i.ak, %._crit_edge122 ]
  store i32 %.175, ptr %1, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.2, ptr %i.bk, align 8, !tbaa !13
  br label %bb.n

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %bb.b, %bb.m, %._crit_edge.thread
  %.076112 = phi ptr [ %.076124, %._crit_edge.thread ], [ %.076124, %._crit_edge ], [ %.076124, %bb.c ], [ %.076124, %bb.b ], [ %.177, %bb.m ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 131, ptr noundef nonnull @__func__.a2i_ASN1_STRING) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 150, ptr noundef null) #3
  tail call void @CRYPTO_free(ptr noundef %.076112, ptr noundef nonnull @.str.2, i32 noundef 132) #3
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit96, %bb.j, %bb.i, %bb.f
  %.086 = phi i32 [ 1, %.loopexit96 ], [ 0, %.loopexit ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.086
}

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
