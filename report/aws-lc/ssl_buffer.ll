Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/ssl_buffer?download=true
inline.NumInlined: 107
inline.NumDeleted: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cbb_st = type { ptr, i8, %union.anon }
%union.anon = type { %struct.cbb_buffer_st }
%struct.cbb_buffer_st = type { ptr, i64, i64, i8 }
%struct.cbs_st = type { ptr, i64 }

@.str = private unnamed_addr constant [48 x i8] c"/opt-bench/work/aws-lc/aws-lc/ssl/ssl_buffer.cc\00", align 1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN4bssl9SSLBuffer5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 52), (60, 64)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.d) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  store i32 2, ptr %i.f, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4bssl9SSLBuffer9EnsureCapEmm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 2147483647
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 55) #11
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18
  %i.d = sext i32 %i.c to i64
  %.not = icmp ugt i64 %2, %i.d
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ugt i64 %2, 5              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i64 5, ptr %i.f, align 8, !tbaa !19
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.h = add nuw nsw i64 %2, 7                    ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !19
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #12 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 65, ptr noundef nonnull @.str, i32 noundef 82) #11
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = add i64 %1, %i.k
  %i.m = sub i64 0, %i.l
  %i.n = and i64 %i.m, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.016 = phi ptr [ %i.g, %bb.e ], [ %i.i, %bb.h ] ; 2 uses
  %.0.a = phi i64 [ 0, %bb.e ], [ %i.n, %bb.h ]   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !20   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZL15OPENSSL_memmovePvPKvm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %0, align 8, !tbaa !16
  %i.u = load i32, ptr %i.o, align 8, !tbaa !21
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.016, i64 %.0.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr readonly align 1 %i.w, i64 range(i64 -2147483648, 2147483648) %i.s, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit

_ZL15OPENSSL_memmovePvPKvm.exit:                  ; preds = %bb.i, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !13, !range !14, !noundef !15
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.ab) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL15OPENSSL_memmovePvPKvm.exit
  store ptr %.016, ptr %0, align 8, !tbaa !16
  %i.ac = zext i1 %i.e to i8
  store i8 %i.ac, ptr %i.y, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.ad, align 8, !tbaa !22
  %3 = trunc nuw nsw i64 %.0.a to i32
  store i32 %3, ptr %i.o, align 8, !tbaa !21
  %i.ae = trunc nuw nsw i64 %2 to i32
  store i32 %i.ae, ptr %i.b, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.af, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2, ptr %i.ag, align 4, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l, %bb.c, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.l ], [ false, %bb.g ]
  ret i1 %.1
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN4bssl9SSLBuffer8DidWriteEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20   ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %1 to i32
  %i.j = add i32 %i.e, %i.i
  store i32 %i.j, ptr %i.d, align 4, !tbaa !20
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN4bssl9SSLBuffer7ConsumeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i32                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = add nsw i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 8, !tbaa !21
  %i.i = sub nsw i32 %i.b, %i.e
  store i32 %i.i, ptr %i.a, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %i.l = sub nsw i32 %i.k, %i.e
  store i32 %i.l, ptr %i.j, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN4bssl9SSLBuffer15DiscardConsumedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !13, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4bssl9SSLBuffer5ClearEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.g) #11
  br label %_ZN4bssl9SSLBuffer5ClearEv.exit

_ZN4bssl9SSLBuffer5ClearEv.exit:                  ; preds = %bb.b, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !16
  store i8 0, ptr %i.d, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.h, i8 0, i64 36, i1 false)
  store i32 2, ptr %i.i, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %_ZN4bssl9SSLBuffer5ClearEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4bssl9SSLBuffer17DoSerializationV1ER6cbb_st(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i32 @CBB_add_asn1_uint64(ptr noundef nonnull %1, i64 noundef 1) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.d = zext nneg i8 %i.c to i32
  %i.e = tail call i32 @CBB_add_asn1_bool(ptr noundef nonnull %1, i32 noundef %i.d) #11
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = sext i32 %i.g to i64
  %i.i = tail call i32 @CBB_add_asn1_uint64(ptr noundef nonnull %1, i64 noundef %i.h) #11
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = sext i32 %i.k to i64
  %i.m = tail call i32 @CBB_add_asn1_uint64(ptr noundef nonnull %1, i64 noundef %i.l) #11
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !18
  %i.p = sext i32 %i.o to i64
  %i.q = tail call i32 @CBB_add_asn1_uint64(ptr noundef nonnull %1, i64 noundef %i.p) #11
  %.not12 = icmp eq i32 %i.q, 0
  br i1 %.not12, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  %i.w = tail call i32 @CBB_add_asn1_octet_string(ptr noundef nonnull %1, ptr noundef %i.t, i64 noundef %i.v) #11
  %.not13 = icmp eq i32 %i.w, 0
  br i1 %.not13, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pre = load i8, ptr %i.b, align 8, !tbaa !13, !range !14
  %i.x = trunc nuw i8 %.pre to i1
  br i1 %i.x, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.f, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.z = tail call i32 @CBB_add_asn1_octet_string(ptr noundef nonnull %1, ptr noundef nonnull %i.y, i64 noundef 5) #11
  %.not14 = icmp eq i32 %i.z, 0
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g, %.thread, %bb.i
  %.0 = phi i1 [ true, %bb.i ], [ false, %.thread ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare i32 @CBB_add_asn1_uint64(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @CBB_add_asn1_bool(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CBB_add_asn1_octet_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4bssl9SSLBuffer17DoSerializationV2ER6cbb_st(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
end_hunk_0
