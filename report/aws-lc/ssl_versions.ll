Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/ssl_versions?download=true
inline.NumInlined: 91
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i16, i32 }
%"struct.bssl::VersionInfo" = type { i16, ptr }
%struct.cbs_st = type { ptr, i64 }

@.str = private unnamed_addr constant [50 x i8] c"/opt-bench/work/aws-lc/aws-lc/ssl/ssl_versions.cc\00", align 1
@_ZN4bsslL17kProtocolVersionsE = internal unnamed_addr constant [4 x %struct.anon] [%struct.anon { i16 769, i32 67108864 }, %struct.anon { i16 770, i32 268435456 }, %struct.anon { i16 771, i32 134217728 }, %struct.anon { i16 772, i32 536870912 }], align 16
@_ZN4bsslL15kUnknownVersionE = internal unnamed_addr constant ptr @.str.1, align 8
@_ZN4bsslL13kVersionNamesE = internal unnamed_addr constant [6 x %"struct.bssl::VersionInfo"] [%"struct.bssl::VersionInfo" { i16 772, ptr @.str.2 }, %"struct.bssl::VersionInfo" { i16 771, ptr @.str.3 }, %"struct.bssl::VersionInfo" { i16 770, ptr @.str.4 }, %"struct.bssl::VersionInfo" { i16 769, ptr @.str.5 }, %"struct.bssl::VersionInfo" { i16 -257, ptr @.str.6 }, %"struct.bssl::VersionInfo" { i16 -259, ptr @.str.7 }], align 16
@_ZN4bsslL13kDTLSVersionsE = internal constant [2 x i16] [i16 -259, i16 -257], align 2
@_ZN4bsslL12kTLSVersionsE = internal constant [4 x i16] [i16 772, i16 771, i16 770, i16 769], align 2
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DTLSv1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"DTLSv1.2\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef zeroext i1 @_ZN4bssl30ssl_protocol_version_from_wireEPtt(ptr nofree noundef writeonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i16 %1, label %bb.d [
    i16 769, label %.sink.split
    i16 770, label %.sink.split
    i16 771, label %.sink.split
    i16 772, label %.sink.split
    i16 -257, label %bb.b
    i16 -259, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c
  %.sink = phi i16 [ 771, %bb.c ], [ 770, %bb.b ], [ %1, %bb.a ], [ %1, %bb.a ], [ %1, %bb.a ], [ %1, %bb.a ]
  store i16 %.sink, ptr %0, align 2, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
.lr.ph.preheader:
  %.val = load i8, ptr %0, align 8, !tbaa !13, !range !14, !noundef !15
  %i.a = trunc nuw i8 %.val to i1                 ; 2 uses
  %spec.select1.i = select i1 %i.a, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx = select i1 %i.a, i64 4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %spec.select1.i, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.01118 = phi ptr [ %i.d, %.lr.ph ], [ %spec.select1.i, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i16, ptr %.01118, align 2, !tbaa !9
  %.not14 = icmp eq i16 %i.c, %1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01118, i64 2 ; 2 uses
  %.not.not = icmp eq ptr %i.d, %i.b
  %or.cond = select i1 %.not14, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  ret i1 %.not14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl21ssl_get_version_rangeEPKNS_13SSL_HANDSHAKEEPtS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load i32, ptr %i.b, align 8, !tbaa !209  ; 3 uses
  %i.d = tail call i32 @SSL_is_dtls(ptr noundef %i.a) #8
  %.not = icmp eq i32 %i.d, 0
  %i.e = and i32 %i.c, -268435457
  %i.f = shl i32 %i.c, 2
  %masksel = and i32 %i.f, 268435456
  %spec.select = or disjoint i32 %masksel, %i.e
  %.024 = select i1 %.not, i32 %i.c, i32 %spec.select ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !210  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !164  ; 2 uses
  switch i16 %i.j, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit [
    i16 769, label %.sink.split.i
    i16 770, label %.sink.split.i
    i16 771, label %.sink.split.i
    i16 772, label %.sink.split.i
    i16 -257, label %bb.c
    i16 -259, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

.sink.split.i:                                    ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %.sink.split.i
  %.3.ph = phi i16 [ %i.j, %.sink.split.i ], [ 771, %bb.b ], [ 770, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !165  ; 2 uses
  switch i16 %i.l, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit [
    i16 769, label %.sink.split.i30
    i16 770, label %.sink.split.i30
    i16 771, label %.sink.split.i30
    i16 772, label %.sink.split.i30
    i16 -257, label %bb.e
    i16 -259, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

.sink.split.i30:                                  ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.e

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %bb.c, %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 179) #8
  br label %bb.t

bb.e:                                             ; preds = %bb.c, %bb.d, %.sink.split.i30
  %.139.ph = phi i16 [ %i.l, %.sink.split.i30 ], [ 771, %bb.d ], [ 770, %bb.c ] ; 4 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !211
  %.not52 = icmp eq ptr %i.o, null
  %spec.select50 = select i1 %.not52, i16 %.3.ph, i16 772 ; 3 uses
  %i.p = icmp samesign ugt i16 %spec.select50, 769
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %.024, 67108864
  %.not29 = icmp eq i32 %i.q, 0
  br label %.thread62

.thread:                                          ; preds = %bb.q, %bb.m, %bb.i
  %.14156.lcssa60 = phi i16 [ %.2.2, %bb.q ], [ %.265, %bb.i ], [ %.2.171, %bb.m ]
  %.lcssa59 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL17kProtocolVersionsE, i64 24), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL17kProtocolVersionsE, i64 8), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL17kProtocolVersionsE, i64 16), %bb.m ]
  %i.r = getelementptr i8, ptr %.lcssa59, i64 -8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !213
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %.not80 = icmp eq i16 %spec.select50, 770
  br i1 %.not80, label %.thread62, label %bb.k

.thread62:                                        ; preds = %bb.f, %bb.g
  %3 = phi i1 [ false, %bb.g ], [ %.not29, %bb.f ] ; 3 uses
  %.265 = phi i16 [ 770, %bb.g ], [ 769, %bb.f ]  ; 4 uses
  %i.t = icmp samesign ult i16 %.139.ph, 770
  br i1 %i.t, label %bb.r, label %bb.h

bb.h:                                             ; preds = %.thread62
  %i.u = and i32 %.024, 268435456
  %.not29.1 = icmp eq i32 %i.u, 0
  br i1 %.not29.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %3, label %.thread, label %.thread68

bb.j:                                             ; preds = %bb.h
  %spec.select51.1 = select i1 %3, i16 %.265, i16 770
  br label %.thread68

bb.k:                                             ; preds = %bb.g
  %i.v = icmp samesign ugt i16 %spec.select50, 771
  br i1 %i.v, label %bb.o, label %.thread68

.thread68:                                        ; preds = %bb.i, %bb.j, %bb.k
  %4 = phi i1 [ false, %bb.k ], [ false, %bb.i ], [ true, %bb.j ] ; 3 uses
  %.2.171 = phi i16 [ 771, %bb.k ], [ %.265, %bb.i ], [ %spec.select51.1, %bb.j ] ; 4 uses
  %i.w = icmp samesign ult i16 %.139.ph, 771
  br i1 %i.w, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.thread68
  %i.x = and i32 %.024, 134217728
  %.not29.2 = icmp eq i32 %i.x, 0
  br i1 %.not29.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %4, label %.thread, label %bb.o

bb.n:                                             ; preds = %bb.l
  %spec.select51.2 = select i1 %4, i16 %.2.171, i16 771
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.2.2 = phi i16 [ 772, %bb.k ], [ %spec.select51.2, %bb.n ], [ %.2.171, %bb.m ] ; 3 uses
  %5 = phi i1 [ false, %bb.k ], [ true, %bb.n ], [ false, %bb.m ] ; 3 uses
  %i.y = icmp samesign ult i16 %.139.ph, 772
  br i1 %i.y, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = and i32 %.024, 536870912
  %.not29.3 = icmp eq i32 %i.z, 0
  br i1 %.not29.3, label %.thread73, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %5, label %.thread, label %.thread76

.thread73:                                        ; preds = %bb.p
  %spec.select51.3 = select i1 %5, i16 %.2.2, i16 772
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %.thread68, %.thread62
  %.141.lcssa = phi i16 [ %.2.171, %.thread68 ], [ %.2.2, %bb.o ], [ %.265, %.thread62 ]
  %.023.lcssa = phi i1 [ %4, %.thread68 ], [ %5, %bb.o ], [ %3, %.thread62 ]
  br i1 %.023.lcssa, label %bb.s, label %.thread76

.thread76:                                        ; preds = %bb.q, %bb.r
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 280, ptr noundef nonnull @.str, i32 noundef 226) #8
  br label %bb.t

bb.s:                                             ; preds = %.thread73, %.thread, %bb.r
  %.14155 = phi i16 [ %.14156.lcssa60, %.thread ], [ %.141.lcssa, %bb.r ], [ %spec.select51.3, %.thread73 ]
  %.03849 = phi i16 [ %i.s, %.thread ], [ %.139.ph, %bb.r ], [ 772, %.thread73 ]
  store i16 %.14155, ptr %1, align 2, !tbaa !9
  store i16 %.03849, ptr %2, align 2, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %.thread76, %bb.s, %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit
  %.126 = phi i1 [ false, %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit ], [ true, %bb.s ], [ false, %.thread76 ]
  ret i1 %.126
}

declare i32 @SSL_is_dtls(ptr noundef) local_unnamed_addr #4

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext range(i16 0, 773) i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  switch i16 %i.b, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit [
    i16 769, label %.sink.split.i
    i16 770, label %.sink.split.i
    i16 771, label %.sink.split.i
    i16 772, label %.sink.split.i
    i16 -257, label %bb.b
    i16 -259, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

.sink.split.i:                                    ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %.sink.split.i, %bb.b, %bb.c, %bb.a
  %i.c = phi i16 [ 0, %bb.a ], [ %i.b, %.sink.split.i ], [ 770, %bb.b ], [ 771, %bb.c ]
  ret i16 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  %.val.i = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %.val.i to i1               ; 2 uses
  %spec.select1.i.i = select i1 %i.c, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i = select i1 %i.c, i64 4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select1.i.i, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.01118.i = phi ptr [ %i.f, %.lr.ph.i ], [ %spec.select1.i.i, %bb.a ] ; 2 uses
  %i.e = load i16, ptr %.01118.i, align 2, !tbaa !9
  %.not14.i = icmp eq i16 %i.e, %1                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01118.i, i64 2 ; 2 uses
  %.not.not.i = icmp eq ptr %i.f, %i.d
  %or.cond.i = select i1 %.not14.i, i1 true, i1 %.not.not.i
  br i1 %or.cond.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit, label %.lr.ph.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit: ; preds = %.lr.ph.i
  br i1 %.not14.i, label %bb.b, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

bb.b:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit
  switch i16 %1, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit [
    i16 769, label %.sink.split.i
    i16 770, label %.sink.split.i
    i16 771, label %.sink.split.i
    i16 772, label %.sink.split.i
    i16 -257, label %bb.d
    i16 -259, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

.sink.split.i:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.sink.split.i
  %.07.ph = phi i16 [ %1, %.sink.split.i ], [ 771, %bb.c ], [ 770, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !167
  %i.i = icmp ugt i16 %i.h, %.07.ph
  br i1 %i.i, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i16, ptr %i.j, align 8, !tbaa !168
  %i.l = icmp ule i16 %.07.ph, %i.k
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %bb.b, %bb.e, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit, %bb.d
  %.0 = phi i1 [ false, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit ], [ %i.l, %bb.e ], [ false, %bb.d ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl26ssl_add_supported_versionsEPKNS_13SSL_HANDSHAKEEP6cbb_stt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166
  %.val = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %.val to i1                 ; 2 uses
  %spec.select1.i = select i1 %i.c, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx = select i1 %i.c, i64 4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select1.i, i64 %.idx
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %.critedge
  %.01733 = phi ptr [ %spec.select1.i, %.lr.ph ], [ %i.r, %.critedge ] ; 2 uses
  %i.g = load i16, ptr %.01733, align 2, !tbaa !9 ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !101
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %.val.i.i = load i8, ptr %i.i, align 8, !tbaa !13, !range !14, !noundef !15
  %i.j = trunc nuw i8 %.val.i.i to i1             ; 2 uses
  %spec.select1.i.i.i = select i1 %i.j, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i = select i1 %i.j, i64 4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.01118.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %spec.select1.i.i.i, %bb.a ] ; 2 uses
  %i.l = load i16, ptr %.01118.i.i, align 2, !tbaa !9
  %.not14.i.i = icmp eq i16 %i.l, %i.g            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01118.i.i, i64 2 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.m, %i.k
  %or.cond.i.i = select i1 %.not14.i.i, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, label %.lr.ph.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i: ; preds = %.lr.ph.i.i
  br i1 %.not14.i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i
  switch i16 %i.g, label %.critedge [
    i16 769, label %.sink.split.i.i
    i16 770, label %.sink.split.i.i
    i16 771, label %.sink.split.i.i
    i16 772, label %.sink.split.i.i
    i16 -257, label %bb.d
    i16 -259, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

.sink.split.i.i:                                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i.i, %bb.c, %bb.b
  %.07.ph.i = phi i16 [ %i.g, %.sink.split.i.i ], [ 771, %bb.c ], [ 770, %bb.b ] ; 2 uses
  %i.n = load i16, ptr %i.e, align 4, !tbaa !167
  %i.o = icmp ugt i16 %i.n, %.07.ph.i
  br i1 %i.o, label %.critedge, label %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit

_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit: ; preds = %bb.d
  %i.p = load i16, ptr %i.f, align 8, !tbaa !168
  %.not31 = icmp ugt i16 %.07.ph.i, %i.p
  br i1 %.not31, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit
  switch i16 %i.g, label %.critedge [
    i16 769, label %.sink.split.i
    i16 770, label %.sink.split.i
    i16 771, label %.sink.split.i
    i16 772, label %.sink.split.i
    i16 -257, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit
    i16 -259, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %bb.e, %bb.f, %.sink.split.i
  %.0 = phi i16 [ %i.g, %.sink.split.i ], [ 771, %bb.f ], [ 770, %bb.e ]
  %.not20 = icmp ult i16 %.0, %2
  br i1 %.not20, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit
  %i.q = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext %i.g) #8
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.b, %bb.d, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, %bb.g, %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit, %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.01733, i64 2 ; 2 uses
end_hunk_0
