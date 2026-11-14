Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_versions?download=true
inline.NumInlined: 93
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i16, i32 }
%"struct.bssl::VersionInfo" = type { i16, ptr }
%struct.cbs_st = type { ptr, i64 }

@.str = private unnamed_addr constant [79 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/ssl/ssl_versions.cc\00", align 1
@_ZN4bsslL17kProtocolVersionsE = internal unnamed_addr constant [4 x %struct.anon] [%struct.anon { i16 769, i32 67108864 }, %struct.anon { i16 770, i32 268435456 }, %struct.anon { i16 771, i32 134217728 }, %struct.anon { i16 772, i32 536870912 }], align 16
@_ZN4bsslL15kUnknownVersionE = internal unnamed_addr constant ptr @.str.1, align 8
@_ZN4bsslL13kVersionNamesE = internal unnamed_addr constant [7 x %"struct.bssl::VersionInfo"] [%"struct.bssl::VersionInfo" { i16 772, ptr @.str.2 }, %"struct.bssl::VersionInfo" { i16 771, ptr @.str.3 }, %"struct.bssl::VersionInfo" { i16 770, ptr @.str.4 }, %"struct.bssl::VersionInfo" { i16 769, ptr @.str.5 }, %"struct.bssl::VersionInfo" { i16 -257, ptr @.str.6 }, %"struct.bssl::VersionInfo" { i16 -259, ptr @.str.7 }, %"struct.bssl::VersionInfo" { i16 -260, ptr @.str.8 }], align 16
@_ZN4bsslL13kDTLSVersionsE = internal constant [3 x i16] [i16 -260, i16 -259, i16 -257], align 2
@_ZN4bsslL12kTLSVersionsE = internal constant [4 x i16] [i16 772, i16 771, i16 770, i16 769], align 2
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DTLSv1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"DTLSv1.2\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"DTLSv1.3\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef zeroext i1 @_ZN4bssl30ssl_protocol_version_from_wireEPtt(ptr nofree noundef writeonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i16 %1, label %bb.e [
    i16 769, label %.sink.split
    i16 770, label %.sink.split
    i16 771, label %.sink.split
    i16 772, label %.sink.split
    i16 -257, label %bb.b
    i16 -259, label %bb.c
    i16 -260, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d
  %.sink = phi i16 [ 772, %bb.d ], [ 771, %bb.c ], [ 770, %bb.b ], [ %1, %bb.a ], [ %1, %bb.a ], [ %1, %bb.a ], [ %1, %bb.a ]
  store i16 %.sink, ptr %0, align 2, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
.lr.ph.preheader:
  %.val = load i8, ptr %0, align 8, !tbaa !16, !range !17, !noundef !18
  %i.a = trunc nuw i8 %.val to i1                 ; 2 uses
  %spec.select1.i = select i1 %i.a, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx = select i1 %i.a, i64 6, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.01118 = phi ptr [ %4, %.lr.ph ], [ %spec.select1.i, %.lr.ph.preheader ] ; 2 uses
  %3 = load i16, ptr %.01118, align 2, !tbaa !12
  %.not14.a = icmp eq i16 %3, %1                  ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118, i64 2 ; 2 uses
  %.not.not = icmp eq ptr %4, %2
  %or.cond.a = select i1 %.not14.a, i1 true, i1 %.not.not
  br i1 %or.cond.a, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  ret i1 %.not14.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl21ssl_get_version_rangeEPKNS_13SSL_HANDSHAKEEPtS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !140    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load i32, ptr %i.b, align 8, !tbaa !259  ; 3 uses
  %i.d = tail call i32 @SSL_is_dtls(ptr noundef %i.a)
  %.not = icmp eq i32 %i.d, 0
  %i.e = and i32 %i.c, -268435457
  %i.f = shl i32 %i.c, 2
  %masksel = and i32 %i.f, 268435456
  %spec.select = or disjoint i32 %masksel, %i.e
  %.024 = select i1 %.not, i32 %i.c, i32 %spec.select ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !195  ; 2 uses
  switch i16 %i.j, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit [
    i16 769, label %.sink.split.i
    i16 770, label %.sink.split.i
    i16 771, label %.sink.split.i
    i16 772, label %.sink.split.i
    i16 -257, label %bb.d
    i16 -259, label %bb.b
    i16 -260, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

.sink.split.i:                                    ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b, %.sink.split.i
  %.3.ph = phi i16 [ %i.j, %.sink.split.i ], [ 772, %bb.c ], [ 771, %bb.b ], [ 770, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !196  ; 2 uses
  switch i16 %i.l, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit [
    i16 769, label %.sink.split.i30
    i16 770, label %.sink.split.i30
    i16 771, label %.sink.split.i30
    i16 772, label %.sink.split.i30
    i16 -257, label %bb.g
    i16 -259, label %bb.e
    i16 -260, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

.sink.split.i30:                                  ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.g

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %bb.d, %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 196)
  br label %bb.v

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %.sink.split.i30
  %.139.ph = phi i16 [ %i.l, %.sink.split.i30 ], [ 772, %bb.f ], [ 771, %bb.e ], [ 770, %bb.d ] ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !140
  %i.n = tail call i32 @SSL_is_quic(ptr noundef %i.m)
  %.not52 = icmp eq i32 %i.n, 0
  %spec.select50 = select i1 %.not52, i16 %.3.ph, i16 772 ; 3 uses
  %i.o = icmp samesign ugt i16 %spec.select50, 769
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = and i32 %.024, 67108864
  %.not29 = icmp eq i32 %i.p, 0
  %spec.select79 = zext i1 %.not29 to i8
  br label %.thread62

.thread:                                          ; preds = %bb.s, %bb.o, %bb.k
  %.14156.lcssa60 = phi i16 [ %.2.2, %bb.s ], [ %.265, %bb.k ], [ %.2.171, %bb.o ]
  %.lcssa59 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL17kProtocolVersionsE, i64 24), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL17kProtocolVersionsE, i64 8), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL17kProtocolVersionsE, i64 16), %bb.o ]
  %i.q = getelementptr i8, ptr %.lcssa59, i64 -8
  %i.r = load i16, ptr %i.q, align 8, !tbaa !262
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %.not80 = icmp eq i16 %spec.select50, 770
  br i1 %.not80, label %.thread62, label %bb.m

.thread62:                                        ; preds = %bb.h, %bb.i
  %.166 = phi i8 [ 0, %bb.i ], [ %spec.select79, %bb.h ] ; 2 uses
  %.265 = phi i16 [ 770, %bb.i ], [ 769, %bb.h ]  ; 4 uses
  %i.s = icmp samesign ult i16 %.139.ph, 770
  br i1 %i.s, label %bb.t, label %bb.j

bb.j:                                             ; preds = %.thread62
  %i.t = and i32 %.024, 268435456
  %.not29.1 = icmp eq i32 %i.t, 0
  %i.u = trunc nuw i8 %.166 to i1                 ; 2 uses
  br i1 %.not29.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.u, label %.thread, label %.thread68

bb.l:                                             ; preds = %bb.j
  %spec.select51.1 = select i1 %i.u, i16 %.265, i16 770
  br label %.thread68

bb.m:                                             ; preds = %bb.i
  %i.v = icmp samesign ugt i16 %spec.select50, 771
  br i1 %i.v, label %bb.q, label %.thread68

.thread68:                                        ; preds = %bb.k, %bb.l, %bb.m
  %.1.172 = phi i8 [ 0, %bb.m ], [ 0, %bb.k ], [ 1, %bb.l ] ; 2 uses
  %.2.171 = phi i16 [ 771, %bb.m ], [ %.265, %bb.k ], [ %spec.select51.1, %bb.l ] ; 4 uses
  %i.w = icmp samesign ult i16 %.139.ph, 771
  br i1 %i.w, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.thread68
  %i.x = and i32 %.024, 134217728
  %.not29.2 = icmp eq i32 %i.x, 0
  %i.y = trunc nuw i8 %.1.172 to i1               ; 2 uses
  br i1 %.not29.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.y, label %.thread, label %bb.q

bb.p:                                             ; preds = %bb.n
  %spec.select51.2 = select i1 %i.y, i16 %.2.171, i16 771
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.o, %bb.p
  %.2.2 = phi i16 [ 772, %bb.m ], [ %spec.select51.2, %bb.p ], [ %.2.171, %bb.o ] ; 3 uses
  %.1.2 = phi i8 [ 0, %bb.m ], [ 1, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.z = icmp samesign ult i16 %.139.ph, 772
  br i1 %i.z, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = and i32 %.024, 536870912
  %.not29.3 = icmp eq i32 %i.aa, 0
  %i.ab = trunc nuw i8 %.1.2 to i1                ; 2 uses
  br i1 %.not29.3, label %.thread73, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.ab, label %.thread, label %.thread76

.thread73:                                        ; preds = %bb.r
  %spec.select51.3 = select i1 %i.ab, i16 %.2.2, i16 772
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %.thread68, %.thread62
  %.141.lcssa = phi i16 [ %.2.171, %.thread68 ], [ %.2.2, %bb.q ], [ %.265, %.thread62 ]
  %.023.lcssa = phi i8 [ %.1.172, %.thread68 ], [ %.1.2, %bb.q ], [ %.166, %.thread62 ]
  %i.ac = trunc nuw i8 %.023.lcssa to i1
  br i1 %i.ac, label %bb.u, label %.thread76

.thread76:                                        ; preds = %bb.s, %bb.t
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 280, ptr noundef nonnull @.str, i32 noundef 243)
  br label %bb.v

bb.u:                                             ; preds = %.thread73, %.thread, %bb.t
  %.14155 = phi i16 [ %.14156.lcssa60, %.thread ], [ %.141.lcssa, %bb.t ], [ %spec.select51.3, %.thread73 ]
  %.03849 = phi i16 [ %i.r, %.thread ], [ %.139.ph, %bb.t ], [ 772, %.thread73 ]
  store i16 %.14155, ptr %1, align 2, !tbaa !12
  store i16 %.03849, ptr %2, align 2, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %.thread76, %bb.u, %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit
  %.126 = phi i1 [ false, %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit ], [ true, %bb.u ], [ false, %.thread76 ]
  ret i1 %.126
}

declare i32 @SSL_is_dtls(ptr noundef) local_unnamed_addr #4

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @SSL_is_quic(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4bssl21ssl_has_final_versionEPK6ssl_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i16, ptr %i.c, align 8, !tbaa !222
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1616
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 16384
  %.not3 = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.not3, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext range(i16 0, 773) i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i16, ptr %i.c, align 8, !tbaa !222  ; 2 uses
  switch i16 %i.d, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit [
    i16 769, label %.sink.split.i
    i16 770, label %.sink.split.i
    i16 771, label %.sink.split.i
    i16 772, label %.sink.split.i
    i16 -257, label %bb.b
    i16 -259, label %bb.c
    i16 -260, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

bb.d:                                             ; preds = %bb.a
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

.sink.split.i:                                    ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %.sink.split.i, %bb.b, %bb.c, %bb.d, %bb.a
  %i.e = phi i16 [ 0, %bb.a ], [ %i.d, %.sink.split.i ], [ 770, %bb.b ], [ 771, %bb.c ], [ 772, %bb.d ]
  ret i16 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !140
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224
  %.val.i = load i8, ptr %i.b, align 8, !tbaa !16, !range !17, !noundef !18
  %i.c = trunc nuw i8 %.val.i to i1               ; 2 uses
  %spec.select1.i.i = select i1 %i.c, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i = select i1 %i.c, i64 6, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.01118.i = phi ptr [ %4, %.lr.ph.i ], [ %spec.select1.i.i, %bb.a ] ; 2 uses
  %3 = load i16, ptr %.01118.i, align 2, !tbaa !12
  %.not14.i.a = icmp eq i16 %3, %1                ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i, i64 2 ; 2 uses
  %.not.not.i = icmp eq ptr %4, %2
  %or.cond.i = select i1 %.not14.i.a, i1 true, i1 %.not.not.i
  br i1 %or.cond.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit, label %.lr.ph.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit: ; preds = %.lr.ph.i
  br i1 %.not14.i.a, label %bb.b, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

bb.b:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit
  switch i16 %1, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit [
    i16 769, label %.sink.split.i
    i16 770, label %.sink.split.i
    i16 771, label %.sink.split.i
    i16 772, label %.sink.split.i
    i16 -257, label %bb.e
    i16 -259, label %bb.c
    i16 -260, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

.sink.split.i:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %.sink.split.i
  %.07.ph = phi i16 [ %1, %.sink.split.i ], [ 772, %bb.d ], [ 771, %bb.c ], [ 770, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i16, ptr %i.d, align 4, !tbaa !225
  %i.f = icmp ugt i16 %i.e, %.07.ph
  br i1 %i.f, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.h = load i16, ptr %i.g, align 2, !tbaa !226
  %i.i = icmp ule i16 %.07.ph, %i.h
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %bb.b, %bb.f, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit, %bb.e
  %.0 = phi i1 [ false, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit ], [ %i.i, %bb.f ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl26ssl_add_supported_versionsEPKNS_13SSL_HANDSHAKEEP6cbb_stt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !140
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224
  %.val = load i8, ptr %i.b, align 8, !tbaa !16, !range !17, !noundef !18
  %i.c = trunc nuw i8 %.val to i1                 ; 2 uses
  %spec.select1.i = select i1 %i.c, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx = select i1 %i.c, i64 6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select1.i, i64 %.idx
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %.critedge
  %.01733 = phi ptr [ %spec.select1.i, %.lr.ph ], [ %i.o, %.critedge ] ; 2 uses
  %i.g = load i16, ptr %.01733, align 2, !tbaa !12 ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !140
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224
  %.val.i.i = load i8, ptr %i.i, align 8, !tbaa !16, !range !17, !noundef !18
  %i.j = trunc nuw i8 %.val.i.i to i1             ; 2 uses
  %spec.select1.i.i.i = select i1 %i.j, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i = select i1 %i.j, i64 6, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.01118.i.i = phi ptr [ %5, %.lr.ph.i.i ], [ %spec.select1.i.i.i, %bb.a ] ; 2 uses
  %4 = load i16, ptr %.01118.i.i, align 2, !tbaa !12
  %.not14.i.i.a = icmp eq i16 %4, %i.g            ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.01118.i.i, i64 2 ; 2 uses
  %.not.not.i.i = icmp eq ptr %5, %3
  %or.cond.i.i = select i1 %.not14.i.i.a, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, label %.lr.ph.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i: ; preds = %.lr.ph.i.i
  br i1 %.not14.i.i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i
  switch i16 %i.g, label %.critedge [
    i16 769, label %.sink.split.i.i
    i16 770, label %.sink.split.i.i
    i16 771, label %.sink.split.i.i
    i16 772, label %.sink.split.i.i
    i16 -257, label %bb.e
    i16 -259, label %bb.c
    i16 -260, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

.sink.split.i.i:                                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i.i, %bb.d, %bb.c, %bb.b
  %.07.ph.i = phi i16 [ %i.g, %.sink.split.i.i ], [ 772, %bb.d ], [ 771, %bb.c ], [ 770, %bb.b ] ; 2 uses
  %i.k = load i16, ptr %i.e, align 4, !tbaa !225
  %i.l = icmp ugt i16 %i.k, %.07.ph.i
  br i1 %i.l, label %.critedge, label %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit

_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit: ; preds = %bb.e
  %i.m = load i16, ptr %i.f, align 2, !tbaa !226
  %.not31 = icmp ugt i16 %.07.ph.i, %i.m
  br i1 %.not31, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit
  switch i16 %i.g, label %.critedge [
    i16 769, label %.sink.split.i
    i16 770, label %.sink.split.i
    i16 771, label %.sink.split.i
    i16 772, label %.sink.split.i
    i16 -257, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit
    i16 -259, label %bb.g
    i16 -260, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

bb.h:                                             ; preds = %bb.f
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

.sink.split.i:                                    ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %bb.f, %bb.g, %bb.h, %.sink.split.i
  %.0 = phi i16 [ %i.g, %.sink.split.i ], [ 772, %bb.h ], [ 771, %bb.g ], [ 770, %bb.f ]
  %.not20 = icmp ult i16 %.0, %2
  br i1 %.not20, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit
  %i.n = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext %i.g)
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.b, %bb.e, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, %bb.i, %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit, %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.01733, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.d
  br i1 %.not, label %._crit_edge, label %bb.a

._crit_edge:                                      ; preds = %.critedge, %bb.i
  %.not.lcssa.ph = phi i1 [ true, %.critedge ], [ false, %bb.i ]
  ret i1 %.not.lcssa.ph
}

declare i32 @CBB_add_u16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl21ssl_negotiate_versionEPNS_13SSL_HANDSHAKEEPhPtPK6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
.lr.ph53:
  %4 = alloca %struct.cbs_st, align 8             ; 6 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !140
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %.val = load i8, ptr %i.c, align 8, !tbaa !16, !range !17, !noundef !18
  %i.d = trunc nuw i8 %.val to i1                 ; 2 uses
  %spec.select1.i = select i1 %i.d, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx = select i1 %i.d, i64 6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select1.i, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph53, %.thread35
  %.02251 = phi ptr [ %spec.select1.i, %.lr.ph53 ], [ %i.y, %.thread35 ] ; 2 uses
  %i.j = load i16, ptr %.02251, align 2, !tbaa !12 ; 6 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !140
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !224
  %.val.i.i = load i8, ptr %i.l, align 8, !tbaa !16, !range !17, !noundef !18
  %i.m = trunc nuw i8 %.val.i.i to i1             ; 2 uses
  %spec.select1.i.i.i = select i1 %i.m, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i = select i1 %i.m, i64 6, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.01118.i.i = phi ptr [ %7, %.lr.ph.i.i ], [ %spec.select1.i.i.i, %bb.a ] ; 2 uses
  %6 = load i16, ptr %.01118.i.i, align 2, !tbaa !12
  %.not14.i.i.a = icmp eq i16 %6, %i.j            ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.01118.i.i, i64 2 ; 2 uses
  %.not.not.i.i = icmp eq ptr %7, %5
  %or.cond.i.i = select i1 %.not14.i.i.a, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, label %.lr.ph.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i: ; preds = %.lr.ph.i.i
  br i1 %.not14.i.i.a, label %bb.b, label %.thread35

bb.b:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i
  switch i16 %i.j, label %.thread35 [
    i16 769, label %.sink.split.i.i
    i16 770, label %.sink.split.i.i
    i16 771, label %.sink.split.i.i
    i16 772, label %.sink.split.i.i
    i16 -257, label %bb.e
    i16 -259, label %bb.c
    i16 -260, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

.sink.split.i.i:                                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i.i, %bb.d, %bb.c, %bb.b
  %.07.ph.i = phi i16 [ %i.j, %.sink.split.i.i ], [ 772, %bb.d ], [ 771, %bb.c ], [ 770, %bb.b ] ; 2 uses
  %i.n = load i16, ptr %i.f, align 4, !tbaa !225
  %i.o = icmp ugt i16 %i.n, %.07.ph.i
  br i1 %i.o, label %.thread35, label %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit

_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit: ; preds = %bb.e
  %i.p = load i16, ptr %i.g, align 2, !tbaa !226
  %.not45 = icmp ugt i16 %.07.ph.i, %i.p
  br i1 %.not45, label %.thread35, label %bb.f

bb.f:                                             ; preds = %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit
  %i.q = icmp eq i16 %i.j, 772
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.h, align 8
  %i.s = and i32 %i.r, 4194304
  %.not27 = icmp eq i32 %i.s, 0
  br i1 %.not27, label %bb.h, label %.thread35

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !265
  %i.t = load i64, ptr %i.i, align 8, !tbaa !267
  %.not2849 = icmp eq i64 %i.t, 0
  br i1 %.not2849, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.u = call i32 @CBS_get_u16(ptr noundef nonnull %4, ptr noundef nonnull %i.a)
  %.not29.not.not.not.not.not = icmp ne i32 %i.u, 0 ; 2 uses
  br i1 %.not29.not.not.not.not.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 336)
  store i8 50, ptr %1, align 1, !tbaa !268
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph
  %i.v = load i16, ptr %i.a, align 2, !tbaa !12
  %i.w = icmp eq i16 %i.v, %i.j
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 %i.j, ptr %2, align 2, !tbaa !12
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.x = load i64, ptr %i.i, align 8, !tbaa !267
  %.not28 = icmp eq i64 %i.x, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !263

._crit_edge:                                      ; preds = %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.thread35

.thread35:                                        ; preds = %bb.b, %bb.e, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, %bb.g, %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit, %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %.02251, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.e
  br i1 %.not, label %._crit_edge54, label %bb.a

bb.m:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.n

._crit_edge54:                                    ; preds = %.thread35
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 240, ptr noundef nonnull @.str, i32 noundef 348)
  store i8 70, ptr %1, align 1, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge54
  %.6 = phi i1 [ false, %._crit_edge54 ], [ %.not29.not.not.not.not.not, %bb.m ]
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_CTX_set_min_proto_version(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  switch i16 %1, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i [
    i16 0, label %bb.b
    i16 769, label %bb.c
    i16 770, label %bb.c
    i16 771, label %bb.c
    i16 772, label %bb.c
    i16 -257, label %bb.c
    i16 -259, label %bb.c
    i16 -260, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 8, !tbaa !16, !range !17, !noundef !18
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.e, i16 -259, i16 771
  store i16 %i.f, ptr %i.c, align 2, !tbaa !12
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.val.i.i.i = load i8, ptr %i.b, align 8, !tbaa !16, !range !17, !noundef !18
  %i.g = trunc nuw i8 %.val.i.i.i to i1           ; 2 uses
  %spec.select1.i.i.i.i = select i1 %i.g, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i.i = select i1 %i.g, i64 6, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.c
  %.01118.i.i.i = phi ptr [ %4, %.lr.ph.i.i.i ], [ %spec.select1.i.i.i.i, %bb.c ] ; 2 uses
  %3 = load i16, ptr %.01118.i.i.i, align 2, !tbaa !12
  %.not14.i.i.i.a = icmp eq i16 %3, %1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i.i.i, i64 2 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %4, %2
  %or.cond.i.i.i = select i1 %.not14.i.i.i.a, i1 true, i1 %.not.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, label %.lr.ph.i.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %.not14.i.i.i.a, label %bb.d, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i

_ZN4bsslL19api_version_to_wireEPtt.exit.i.i:      ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 234, ptr noundef nonnull @.str, i32 noundef 137)
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.d:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i
  store i16 %1, ptr %i.c, align 2, !tbaa !12
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit: ; preds = %bb.b, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i, %bb.d
  %.0.i = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_CTX_set_max_proto_version(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  switch i16 %1, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i [
    i16 0, label %bb.b
    i16 769, label %bb.c
    i16 770, label %bb.c
    i16 771, label %bb.c
    i16 772, label %bb.c
    i16 -257, label %bb.c
    i16 -259, label %bb.c
    i16 -260, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 8, !tbaa !16, !range !17, !noundef !18
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.e, i16 -259, i16 772
  store i16 %i.f, ptr %i.c, align 8, !tbaa !12
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.val.i.i.i = load i8, ptr %i.b, align 8, !tbaa !16, !range !17, !noundef !18
  %i.g = trunc nuw i8 %.val.i.i.i to i1           ; 2 uses
  %spec.select1.i.i.i.i = select i1 %i.g, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i.i = select i1 %i.g, i64 6, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.c
  %.01118.i.i.i = phi ptr [ %4, %.lr.ph.i.i.i ], [ %spec.select1.i.i.i.i, %bb.c ] ; 2 uses
  %3 = load i16, ptr %.01118.i.i.i, align 2, !tbaa !12
  %.not14.i.i.i.a = icmp eq i16 %3, %1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i.i.i, i64 2 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %4, %2
  %or.cond.i.i.i = select i1 %.not14.i.i.i.a, i1 true, i1 %.not.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, label %.lr.ph.i.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %.not14.i.i.i.a, label %bb.d, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i

_ZN4bsslL19api_version_to_wireEPtt.exit.i.i:      ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 234, ptr noundef nonnull @.str, i32 noundef 137)
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.d:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i
  store i16 %1, ptr %i.c, align 8, !tbaa !12
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit: ; preds = %bb.b, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i, %bb.d
  %.0.i = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @SSL_CTX_get_min_proto_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.b = load i16, ptr %i.a, align 2, !tbaa !270
  ret i16 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @SSL_CTX_get_max_proto_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i16, ptr %i.a, align 8, !tbaa !271
  ret i16 %i.b
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_set_min_proto_version(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  switch i16 %1, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i [
    i16 0, label %bb.c
    i16 769, label %bb.d
    i16 770, label %bb.d
    i16 771, label %bb.d
    i16 772, label %bb.d
    i16 -257, label %bb.d
    i16 -259, label %bb.d
    i16 -260, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 8, !tbaa !16, !range !17, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.f, i16 -259, i16 771
  store i16 %i.g, ptr %i.d, align 2, !tbaa !12
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.val.i.i.i = load i8, ptr %i.c, align 8, !tbaa !16, !range !17, !noundef !18
  %i.h = trunc nuw i8 %.val.i.i.i to i1           ; 2 uses
  %spec.select1.i.i.i.i = select i1 %i.h, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i.i = select i1 %i.h, i64 6, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.d
  %.01118.i.i.i = phi ptr [ %4, %.lr.ph.i.i.i ], [ %spec.select1.i.i.i.i, %bb.d ] ; 2 uses
  %3 = load i16, ptr %.01118.i.i.i, align 2, !tbaa !12
  %.not14.i.i.i.a = icmp eq i16 %3, %1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i.i.i, i64 2 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %4, %2
  %or.cond.i.i.i = select i1 %.not14.i.i.i.a, i1 true, i1 %.not.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, label %.lr.ph.i.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %.not14.i.i.i.a, label %bb.e, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i

_ZN4bsslL19api_version_to_wireEPtt.exit.i.i:      ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 234, ptr noundef nonnull @.str, i32 noundef 137)
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.e:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i
  store i16 %1, ptr %i.d, align 2, !tbaa !12
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit: ; preds = %bb.e, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @SSL_set_max_proto_version(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  switch i16 %1, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i [
    i16 0, label %bb.c
    i16 769, label %bb.d
    i16 770, label %bb.d
    i16 771, label %bb.d
    i16 772, label %bb.d
    i16 -257, label %bb.d
    i16 -259, label %bb.d
    i16 -260, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 8, !tbaa !16, !range !17, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.f, i16 -259, i16 772
  store i16 %i.g, ptr %i.d, align 2, !tbaa !12
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.val.i.i.i = load i8, ptr %i.c, align 8, !tbaa !16, !range !17, !noundef !18
  %i.h = trunc nuw i8 %.val.i.i.i to i1           ; 2 uses
  %spec.select1.i.i.i.i = select i1 %i.h, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i.i = select i1 %i.h, i64 6, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.d
  %.01118.i.i.i = phi ptr [ %4, %.lr.ph.i.i.i ], [ %spec.select1.i.i.i.i, %bb.d ] ; 2 uses
  %3 = load i16, ptr %.01118.i.i.i, align 2, !tbaa !12
  %.not14.i.i.i.a = icmp eq i16 %3, %1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i.i.i, i64 2 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %4, %2
  %or.cond.i.i.i = select i1 %.not14.i.i.i.a, i1 true, i1 %.not.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, label %.lr.ph.i.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %.not14.i.i.i.a, label %bb.e, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i

_ZN4bsslL19api_version_to_wireEPtt.exit.i.i:      ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 234, ptr noundef nonnull @.str, i32 noundef 137)
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.e:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i
  store i16 %1, ptr %i.d, align 2, !tbaa !12
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit: ; preds = %bb.e, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i16 @SSL_get_min_proto_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !195
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i16 @SSL_get_max_proto_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 65536) i32 @SSL_version(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @SSL_in_early_data(ptr noundef %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.c = load i8, ptr %i.b, align 4
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1560
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !246
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i16, ptr %i.k, align 4, !tbaa !258
  br label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.p = load i16, ptr %i.o, align 8, !tbaa !222  ; 2 uses
  %.not6.i = icmp eq i16 %i.p, 0
  br i1 %.not6.i, label %bb.e, label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @SSL_is_dtls(ptr noundef nonnull %0)
  %.not7.i = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not7.i, i16 771, i16 -259
  br label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

_ZN4bsslL11ssl_versionEPK6ssl_st.exit:            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i16 [ %i.l, %bb.c ], [ %i.r, %bb.e ], [ %i.p, %bb.d ]
  %i.s = zext i16 %.0.i to i32
  ret i32 %i.s
}

; Function Attrs: mustprogress uwtable
define ptr @SSL_get_version(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @SSL_in_early_data(ptr noundef %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.c = load i8, ptr %i.b, align 4
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1560
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !246
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i16, ptr %i.k, align 4, !tbaa !258
  br label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.p = load i16, ptr %i.o, align 8, !tbaa !222  ; 2 uses
  %.not6.i = icmp eq i16 %i.p, 0
  br i1 %.not6.i, label %bb.e, label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @SSL_is_dtls(ptr noundef nonnull %0)
  %.not7.i = icmp eq i32 %i.q, 0
  br i1 %.not7.i, label %.fold.split.i, label %.fold.split24.i

_ZN4bsslL11ssl_versionEPK6ssl_st.exit:            ; preds = %bb.c, %bb.d
  %.0.i = phi i16 [ %i.l, %bb.c ], [ %i.p, %bb.d ]
  switch i16 %.0.i, label %_ZN4bsslL21ssl_version_to_stringEt.exit [
    i16 772, label %bb.f
    i16 771, label %.fold.split.i
    i16 770, label %.fold.split21.i
    i16 769, label %.fold.split22.i
    i16 -257, label %.fold.split23.i
    i16 -259, label %.fold.split24.i
    i16 -260, label %.fold.split25.i
  ]

.fold.split.i:                                    ; preds = %bb.e, %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.f

.fold.split21.i:                                  ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.f

.fold.split22.i:                                  ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.f

.fold.split23.i:                                  ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.f

.fold.split24.i:                                  ; preds = %bb.e, %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.f

.fold.split25.i:                                  ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.f

bb.f:                                             ; preds = %.fold.split25.i, %.fold.split24.i, %.fold.split23.i, %.fold.split22.i, %.fold.split21.i, %.fold.split.i, %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  %.09.ptr19.lcssa.i = phi ptr [ @_ZN4bsslL13kVersionNamesE, %_ZN4bsslL11ssl_versionEPK6ssl_st.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 80), %.fold.split24.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 16), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 32), %.fold.split21.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 48), %.fold.split22.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 64), %.fold.split23.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 96), %.fold.split25.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.09.ptr19.lcssa.i, i64 8
  br label %_ZN4bsslL21ssl_version_to_stringEt.exit

_ZN4bsslL21ssl_version_to_stringEt.exit:          ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit, %bb.f
  %.in.i = phi ptr [ %i.r, %bb.f ], [ @_ZN4bsslL15kUnknownVersionE, %_ZN4bsslL11ssl_versionEPK6ssl_st.exit ]
  %i.s = load ptr, ptr %.in.i, align 8
  ret ptr %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @SSL_get_all_version_names(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  store ptr @.str.1, ptr %0, align 8, !tbaa !227
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = add i64 %1, -1                           ; 7 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit18.i

_ZNK4bssl4SpanIPKcEixEm.exit18.i:                 ; preds = %.critedge.i
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !227
  %exitcond.not.i = icmp eq i64 %i.b, 1
  br i1 %exitcond.not.i, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit18.i.1

_ZNK4bssl4SpanIPKcEixEm.exit18.i.1:               ; preds = %_ZNK4bssl4SpanIPKcEixEm.exit18.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.3, ptr %i.c, align 8, !tbaa !227
  %exitcond.not.i.1 = icmp eq i64 %i.b, 2
  br i1 %exitcond.not.i.1, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit18.i.2

_ZNK4bssl4SpanIPKcEixEm.exit18.i.2:               ; preds = %_ZNK4bssl4SpanIPKcEixEm.exit18.i.1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @.str.4, ptr %i.d, align 8, !tbaa !227
  %exitcond.not.i.2 = icmp eq i64 %i.b, 3
  br i1 %exitcond.not.i.2, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit18.i.3

_ZNK4bssl4SpanIPKcEixEm.exit18.i.3:               ; preds = %_ZNK4bssl4SpanIPKcEixEm.exit18.i.2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @.str.5, ptr %i.e, align 8, !tbaa !227
  %exitcond.not.i.3 = icmp eq i64 %i.b, 4
end_hunk_0
