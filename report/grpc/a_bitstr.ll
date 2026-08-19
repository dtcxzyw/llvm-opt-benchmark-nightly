inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cbb_st = type { ptr, i8, %union.anon }
%union.anon = type { %struct.cbb_buffer_st }
%struct.cbb_buffer_st = type { ptr, i64, i64, i8 }

@.str = private unnamed_addr constant [83 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/crypto/asn1/a_bitstr.cc\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define i32 @ASN1_BIT_STRING_set(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ASN1_STRING_set(ptr noundef %0, ptr noundef %1, i64 noundef %2) #6
  ret i32 %i.a
}

declare i32 @ASN1_STRING_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @asn1_bit_string_length(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %.critedge24

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %2 = zext nneg i32 %i.a to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.a, 0
  %i.i = trunc i64 %i.c to i8
  %i.j = and i8 %i.i, 7
  %i.k = select i1 %i.h, i8 0, i8 %i.j
  br label %.critedge24

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.l = getelementptr i8, ptr %i.g, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18    ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.c
  %3 = trunc nuw nsw i64 %indvars.iv to i32       ; 7 uses
  %i.p = zext i8 %i.n to i32                      ; 7 uses
  %i.q = and i32 %i.p, 1
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %.critedge, label %.critedge24

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.r = icmp sgt i64 %indvars.iv, 1
  br i1 %i.r, label %bb.c, label %.critedge24, !llvm.loop !19

.critedge:                                        ; preds = %.critedge.preheader
  %i.s = and i32 %i.p, 2
  %.not23.1 = icmp eq i32 %i.s, 0
  br i1 %.not23.1, label %.critedge.1, label %.critedge24

.critedge.1:                                      ; preds = %.critedge
  %i.t = and i32 %i.p, 4
  %.not23.2 = icmp eq i32 %i.t, 0
  br i1 %.not23.2, label %.critedge.2, label %.critedge24

.critedge.2:                                      ; preds = %.critedge.1
  %i.u = and i32 %i.p, 8
  %.not23.3 = icmp eq i32 %i.u, 0
  br i1 %.not23.3, label %.critedge.3, label %.critedge24

.critedge.3:                                      ; preds = %.critedge.2
  %i.v = and i32 %i.p, 16
  %.not23.4 = icmp eq i32 %i.v, 0
  br i1 %.not23.4, label %.critedge.4, label %.critedge24

.critedge.4:                                      ; preds = %.critedge.3
  %i.w = and i32 %i.p, 32
  %.not23.5 = icmp eq i32 %i.w, 0
  br i1 %.not23.5, label %.critedge.5, label %.critedge24

.critedge.5:                                      ; preds = %.critedge.4
  %i.x = and i32 %i.p, 64
  %.not23.6 = icmp eq i32 %i.x, 0
  %spec.select = select i1 %.not23.6, i8 7, i8 6
  br label %.critedge24

.critedge24:                                      ; preds = %bb.d, %.critedge.5, %.critedge.preheader, %.critedge, %.critedge.1, %.critedge.2, %.critedge.3, %.critedge.4, %.preheader, %bb.b
  %storemerge = phi i8 [ %i.k, %bb.b ], [ 5, %.critedge.4 ], [ 0, %.preheader ], [ 3, %.critedge.2 ], [ 0, %.critedge.preheader ], [ 1, %.critedge ], [ %spec.select, %.critedge.5 ], [ 2, %.critedge.1 ], [ 4, %.critedge.3 ], [ 0, %bb.d ]
  %.021 = phi i32 [ %i.a, %bb.b ], [ %3, %.critedge.4 ], [ %i.a, %.preheader ], [ %3, %.critedge.2 ], [ %3, %.critedge.preheader ], [ %3, %.critedge ], [ %3, %.critedge.5 ], [ %3, %.critedge.1 ], [ %3, %.critedge.3 ], [ 0, %bb.d ]
  store i8 %storemerge, ptr %1, align 1, !tbaa !18
  ret i32 %.021
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_num_bytes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.lr.ph.i, label %asn1_bit_string_length.exit.thread7

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %2 = zext nneg i32 %i.a to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.a, 0
  br i1 %i.h, label %asn1_bit_string_length.exit.thread7, label %asn1_bit_string_length.exit

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %2, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.i = getelementptr i8, ptr %i.g, i64 %indvars.iv.i
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18    ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.c
  %3 = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.m = and i8 %i.k, 1
  %.not23.i = icmp eq i8 %i.m, 0
  br i1 %.not23.i, label %asn1_bit_string_length.exit.thread, label %asn1_bit_string_length.exit.thread7

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.n = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.n, label %bb.c, label %asn1_bit_string_length.exit.thread7, !llvm.loop !19

asn1_bit_string_length.exit:                      ; preds = %bb.b
  %i.o = and i64 %i.c, 7
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %asn1_bit_string_length.exit.thread7, label %asn1_bit_string_length.exit.thread

asn1_bit_string_length.exit.thread7:              ; preds = %bb.d, %bb.b, %.critedge.preheader.i, %.preheader.i, %asn1_bit_string_length.exit
  %.021.i11 = phi i32 [ %i.a, %asn1_bit_string_length.exit ], [ %3, %.critedge.preheader.i ], [ 0, %bb.b ], [ %i.a, %.preheader.i ], [ 0, %bb.d ]
  %i.p = sext i32 %.021.i11 to i64
  store i64 %i.p, ptr %1, align 8, !tbaa !21
  br label %asn1_bit_string_length.exit.thread

asn1_bit_string_length.exit.thread:               ; preds = %.critedge.preheader.i, %asn1_bit_string_length.exit, %asn1_bit_string_length.exit.thread7
  %.0 = phi i32 [ 1, %asn1_bit_string_length.exit.thread7 ], [ 0, %asn1_bit_string_length.exit ], [ 0, %.critedge.preheader.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @i2c_ASN1_BIT_STRING(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = and i64 %i.d, 8
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph.i, label %asn1_bit_string_length.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %2 = zext nneg i32 %i.b to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.b, 0
  %i.j = trunc i64 %i.d to i8
  %i.k = and i8 %i.j, 7
  %i.l = select i1 %i.i, i8 0, i8 %i.k
  br label %asn1_bit_string_length.exit

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %2, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18    ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.d
  %3 = trunc nuw nsw i64 %indvars.iv.i to i32     ; 7 uses
  %i.q = zext i8 %i.o to i32                      ; 7 uses
  %i.r = and i32 %i.q, 1
  %.not23.i = icmp eq i32 %i.r, 0
  br i1 %.not23.i, label %.critedge.i, label %asn1_bit_string_length.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.s = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.s, label %bb.d, label %asn1_bit_string_length.exit.thread.thread, !llvm.loop !19

.critedge.i:                                      ; preds = %.critedge.preheader.i
  %i.t = and i32 %i.q, 2
  %.not23.1.i = icmp eq i32 %i.t, 0
  br i1 %.not23.1.i, label %.critedge.1.i, label %asn1_bit_string_length.exit

.critedge.1.i:                                    ; preds = %.critedge.i
  %i.u = and i32 %i.q, 4
  %.not23.2.i = icmp eq i32 %i.u, 0
  br i1 %.not23.2.i, label %.critedge.2.i, label %asn1_bit_string_length.exit

.critedge.2.i:                                    ; preds = %.critedge.1.i
  %i.v = and i32 %i.q, 8
  %.not23.3.i = icmp eq i32 %i.v, 0
  br i1 %.not23.3.i, label %.critedge.3.i, label %asn1_bit_string_length.exit

.critedge.3.i:                                    ; preds = %.critedge.2.i
  %i.w = and i32 %i.q, 16
  %.not23.4.i = icmp eq i32 %i.w, 0
  br i1 %.not23.4.i, label %.critedge.4.i, label %asn1_bit_string_length.exit

.critedge.4.i:                                    ; preds = %.critedge.3.i
  %i.x = and i32 %i.q, 32
  %.not23.5.i = icmp eq i32 %i.x, 0
  br i1 %.not23.5.i, label %.critedge.5.i, label %asn1_bit_string_length.exit

.critedge.5.i:                                    ; preds = %.critedge.4.i
  %i.y = and i32 %i.q, 64
  %.not23.6.i = icmp eq i32 %i.y, 0
  %spec.select.i = select i1 %.not23.6.i, i8 7, i8 6
  br label %asn1_bit_string_length.exit

asn1_bit_string_length.exit:                      ; preds = %bb.c, %.critedge.preheader.i, %.critedge.i, %.critedge.1.i, %.critedge.2.i, %.critedge.3.i, %.critedge.4.i, %.critedge.5.i
  %storemerge.i = phi i8 [ %i.l, %bb.c ], [ 5, %.critedge.4.i ], [ 4, %.critedge.3.i ], [ 3, %.critedge.2.i ], [ 0, %.critedge.preheader.i ], [ 1, %.critedge.i ], [ %spec.select.i, %.critedge.5.i ], [ 2, %.critedge.1.i ]
  %.021.i = phi i32 [ %i.b, %bb.c ], [ %3, %.critedge.4.i ], [ %3, %.critedge.3.i ], [ %3, %.critedge.2.i ], [ %3, %.critedge.preheader.i ], [ %3, %.critedge.i ], [ %3, %.critedge.5.i ], [ %3, %.critedge.1.i ] ; 2 uses
  %i.z = icmp eq i32 %.021.i, 2147483647
  br i1 %i.z, label %bb.f, label %asn1_bit_string_length.exit.thread

bb.f:                                             ; preds = %asn1_bit_string_length.exit
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 79) #6
  br label %bb.i

asn1_bit_string_length.exit.thread:               ; preds = %.preheader.i, %asn1_bit_string_length.exit
  %.021.i25 = phi i32 [ %.021.i, %asn1_bit_string_length.exit ], [ %i.b, %.preheader.i ] ; 5 uses
  %storemerge.i24 = phi i8 [ %storemerge.i, %asn1_bit_string_length.exit ], [ 0, %.preheader.i ] ; 2 uses
  %i.aa = add nsw i32 %.021.i25, 1                ; 4 uses
  %i.ab = icmp eq ptr %1, null
  br i1 %i.ab, label %bb.i, label %bb.g

asn1_bit_string_length.exit.thread.thread:        ; preds = %bb.e
  %i.ac = icmp eq ptr %1, null
  br i1 %i.ac, label %bb.i, label %.thread

.thread:                                          ; preds = %asn1_bit_string_length.exit.thread.thread
  %i.ad = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.thread

bb.g:                                             ; preds = %asn1_bit_string_length.exit.thread
  %i.ae = load ptr, ptr %1, align 8, !tbaa !22    ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  store i8 %storemerge.i24, ptr %i.ae, align 1, !tbaa !18
  %i.ag = sext i32 %.021.i25 to i64               ; 3 uses
  %i.ah = icmp eq i32 %.021.i25, 0
  br i1 %i.ah, label %_ZL14OPENSSL_memcpyPvPKvm.exit.thread, label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr readonly align 1 %i.aj, i64 range(i64 -2147483648, 2147483647) %i.ag, i1 false)
  %i.ak = icmp sgt i32 %.021.i25, 0
  br i1 %i.ak, label %bb.h, label %_ZL14OPENSSL_memcpyPvPKvm.exit.thread

bb.h:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.al = zext nneg i8 %storemerge.i24 to i32
  %i.am = shl nuw nsw i32 255, %i.al
  %i.an = zext nneg i32 %.021.i25 to i64
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -1     ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ar = trunc i32 %i.am to i8
  %i.as = and i8 %i.aq, %i.ar
  store i8 %i.as, ptr %i.ap, align 1, !tbaa !18
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.thread

_ZL14OPENSSL_memcpyPvPKvm.exit.thread:            ; preds = %bb.g, %.thread, %bb.h, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.at = phi i32 [ %i.aa, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ], [ 1, %.thread ]
  %i.au = phi ptr [ %i.ae, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ], [ %i.ad, %.thread ]
  %i.av = phi i64 [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %i.ag, %bb.h ], [ 0, %bb.g ], [ 0, %.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.av
  store ptr %i.ax, ptr %1, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %asn1_bit_string_length.exit.thread.thread, %bb.f, %asn1_bit_string_length.exit.thread, %_ZL14OPENSSL_memcpyPvPKvm.exit.thread, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ %i.aa, %asn1_bit_string_length.exit.thread ], [ %i.at, %_ZL14OPENSSL_memcpyPvPKvm.exit.thread ], [ 1, %asn1_bit_string_length.exit.thread.thread ]
  ret i32 %.2
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @asn1_marshal_bit_string(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cbb_st, align 8             ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %i2c_ASN1_BIT_STRING.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = and i64 %i.e, 8
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %asn1_bit_string_length.exit.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.g = icmp sgt i32 %i.c, 0
  br i1 %i.g, label %.lr.ph.i.i, label %i2c_ASN1_BIT_STRING.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %4 = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %4, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %bb.c
  %5 = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %asn1_bit_string_length.exit.i

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.n = icmp sgt i64 %indvars.iv.i.i, 1
  br i1 %i.n, label %bb.c, label %i2c_ASN1_BIT_STRING.exit.thread13, !llvm.loop !19

asn1_bit_string_length.exit.i:                    ; preds = %.critedge.preheader.i.i, %bb.b
  %.021.i.i = phi i32 [ %5, %.critedge.preheader.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.o = icmp eq i32 %.021.i.i, 2147483647
  br i1 %i.o, label %bb.e, label %i2c_ASN1_BIT_STRING.exit

bb.e:                                             ; preds = %asn1_bit_string_length.exit.i
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 79) #6
  br label %i2c_ASN1_BIT_STRING.exit.thread

i2c_ASN1_BIT_STRING.exit:                         ; preds = %.preheader.i.i, %asn1_bit_string_length.exit.i
  %.021.i25.i = phi i32 [ %.021.i.i, %asn1_bit_string_length.exit.i ], [ %i.c, %.preheader.i.i ] ; 2 uses
  %i.p = add nuw nsw i32 %.021.i25.i, 1
  %i.q = icmp slt i32 %.021.i25.i, 0
  br i1 %i.q, label %i2c_ASN1_BIT_STRING.exit.thread, label %i2c_ASN1_BIT_STRING.exit.thread13

i2c_ASN1_BIT_STRING.exit.thread13:                ; preds = %bb.d, %i2c_ASN1_BIT_STRING.exit
  %.2.i15 = phi i32 [ %i.p, %i2c_ASN1_BIT_STRING.exit ], [ 1, %bb.d ] ; 2 uses
  %i.r = icmp eq i32 %2, 0
  %i.s = select i1 %i.r, i32 3, i32 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.t = call i32 @CBB_add_asn1(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %i.s) #6
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %i2c_ASN1_BIT_STRING.exit.thread13
  %i.u = zext nneg i32 %.2.i15 to i64
  %i.v = call i32 @CBB_add_space(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef %i.u) #6
  %.not11 = icmp eq i32 %i.v, 0
  br i1 %.not11, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 @i2c_ASN1_BIT_STRING(ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  %i.x = icmp eq i32 %i.w, %.2.i15
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 @CBB_flush(ptr noundef %0) #6
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %i2c_ASN1_BIT_STRING.exit.thread13
  %i.ab = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %i2c_ASN1_BIT_STRING.exit.thread13 ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %i2c_ASN1_BIT_STRING.exit.thread

i2c_ASN1_BIT_STRING.exit.thread:                  ; preds = %bb.e, %bb.a, %i2c_ASN1_BIT_STRING.exit, %bb.i
  %.0 = phi i32 [ %i.ab, %bb.i ], [ 0, %i2c_ASN1_BIT_STRING.exit ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @CBB_add_asn1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CBB_add_space(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @CBB_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define ptr @c2i_ASN1_BIT_STRING(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 174, ptr noundef nonnull @.str, i32 noundef 122) #6
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 2147483647
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 173, ptr noundef nonnull @.str, i32 noundef 127) #6
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq ptr %0, null                     ; 3 uses
  br i1 %i.c, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = tail call ptr @ASN1_BIT_STRING_new() #6  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.042 = phi ptr [ %i.f, %bb.g ], [ %i.d, %bb.f ] ; 9 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !18    ; 3 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = add nsw i64 %2, -1                       ; 2 uses
  %i.m = icmp ugt i8 %i.j, 7
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 141, ptr noundef nonnull @.str, i32 noundef 143) #6
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %notmask = shl nsw i32 -1, %i.k
  %i.n = xor i32 %notmask, -1
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = icmp eq i64 %2, 1
  br i1 %i.o, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr i8, ptr %i.i, i64 %2
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = zext i8 %i.r to i32
  %i.t = and i32 %i.s, %i.n
  %.not53 = icmp eq i32 %i.t, 0
  br i1 %.not53, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %.042, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = and i64 %i.v, -16
  %i.x = or disjoint i32 %i.k, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = or disjoint i64 %i.w, %i.y
  store i64 %i.z, ptr %i.u, align 8, !tbaa !16
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 194, ptr noundef nonnull @.str, i32 noundef 150) #6
  br label %bb.t

bb.n:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.042, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = and i64 %i.ab, -16
  %i.ad = or disjoint i64 %i.ac, 8
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !16
  %.not54 = icmp eq i64 %2, 1
  br i1 %.not54, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %i.ae = tail call ptr @OPENSSL_memdup(ptr noundef nonnull %i.i, i64 noundef %i.l) #6 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %i.h, i64 %2
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.041 = phi ptr [ %i.ag, %bb.p ], [ %i.i, %bb.n ]
  %.0 = phi ptr [ %i.ae, %bb.p ], [ null, %bb.n ]
  %i.ah = trunc nuw nsw i64 %i.l to i32
  store i32 %i.ah, ptr %.042, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %.042, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17
  tail call void @OPENSSL_free(ptr noundef %i.aj) #6
  store ptr %.0, ptr %i.ai, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %.042, i64 4
  store i32 3, ptr %i.ak, align 4, !tbaa !25
  br i1 %i.c, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %.042, ptr %0, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %.041, ptr %1, align 8, !tbaa !22
  br label %bb.w

bb.t:                                             ; preds = %bb.i, %bb.m, %bb.o
  br i1 %i.c, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = load ptr, ptr %0, align 8, !tbaa !23
  %.not57 = icmp eq ptr %i.al, %.042
  br i1 %.not57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @ASN1_BIT_STRING_free(ptr noundef nonnull %.042) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.d, %bb.u, %bb.v, %bb.g, %bb.s
  %.043 = phi ptr [ null, %bb.g ], [ %.042, %bb.s ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.043
}

declare ptr @ASN1_BIT_STRING_new() local_unnamed_addr #1

declare ptr @OPENSSL_memdup(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

declare void @ASN1_BIT_STRING_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_set_bit(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %1, 8                           ; 3 uses
  %i.b = and i32 %1, 7                            ; 2 uses
  %i.c = lshr exact i32 128, %i.b
  %i.d = ashr i32 -129, %i.b
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %spec.select = select i1 %.not, i32 0, i32 %i.c
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = and i64 %i.g, -16
  store i64 %i.h, ptr %i.f, align 8, !tbaa !16
  %i.i = load i32, ptr %0, align 8, !tbaa !11
  %i.j = add nsw i32 %i.a, 1                      ; 3 uses
  %.not41 = icmp sgt i32 %i.i, %i.a
  br i1 %.not41, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = sext i32 %i.j to i64                     ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @OPENSSL_malloc(i64 noundef %i.q) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = tail call ptr @OPENSSL_realloc(ptr noundef nonnull %i.o, i64 noundef %i.q) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.r, %bb.f ], [ %i.s, %bb.g ]  ; 4 uses
  %i.t = icmp eq ptr %.0, null
  br i1 %i.t, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.v = sub nsw i32 %i.j, %i.u                   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr %.0, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, i8 0, i64 range(i64 1, 2147483648) %i.z, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %.0, ptr %i.n, align 8, !tbaa !17
  store i32 %i.j, ptr %0, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %i.aa = phi ptr [ %.0, %bb.k ], [ %i.l, %bb.c ]
  %i.ab = sext i32 %i.a to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.ae = zext i8 %i.ad to i32
  %i.af = and i32 %i.d, %i.ae
  %i.ag = or i32 %i.af, %spec.select
  %i.ah = trunc nuw i32 %i.ag to i8
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !18
  %.pr = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.ai = icmp sgt i32 %.pr, 0
  br i1 %i.ai, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17
  %3 = zext nneg i32 %.pr to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %4 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %4, ptr %0, align 8, !tbaa !11
  %i.ap = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ap, label %bb.m, label %.critedge, !llvm.loop !26

.critedge:                                        ; preds = %bb.n, %bb.m, %bb.l, %bb.h, %bb.d, %bb.a
  %.036 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.h ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ]
  ret i32 %.036
}

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #1

declare ptr @OPENSSL_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_get_bit(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = sdiv i32 %1, 8                           ; 2 uses
  %i.b = and i32 %1, 7
  %i.c = lshr exact i32 128, %i.b
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !11
  %.not = icmp sgt i32 %i.e, %i.a
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18
  %i.l = zext i8 %i.k to i32
  %i.m = and i32 %i.c, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ASN1_BIT_STRING_check(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = sext i32 %2 to i64
  %i.f = zext nneg i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.g = icmp slt i64 %indvars.iv, %i.e
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18
  %i.j = xor i8 %i.i, -1
  %i.k = zext i8 %i.j to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.l = phi i32 [ %i.k, %bb.c ], [ 255, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18
  %i.o = zext i8 %i.n to i32
  %i.p = and i32 %i.l, %i.o
  %i.q = icmp eq i32 %i.p, 0                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.f
  %i.s = select i1 %i.r, i1 %i.q, i1 false
  br i1 %i.s, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !27

.loopexit.loopexit:                               ; preds = %bb.d
  %i.t = zext i1 %i.q to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a, %bb.b
  %.015 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %.preheader ], [ %i.t, %.loopexit.loopexit ]
  ret i32 %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"_ZTS14asn1_string_st", !8, i64 0, !8, i64 4, !13, i64 8, !15, i64 16}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!12, !15, i64 16}
!17 = !{!12, !13, i64 8}
!18 = !{!9, !9, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!15, !15, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTS14asn1_string_st", !14, i64 0}
!25 = !{!12, !8, i64 4}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
end_hunk_0
