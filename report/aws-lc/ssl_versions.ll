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
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.01118 = phi ptr [ %4, %.lr.ph ], [ %spec.select1.i, %.lr.ph.preheader ] ; 2 uses
  %3 = load i16, ptr %.01118, align 2, !tbaa !9
  %.not14.a = icmp eq i16 %3, %1                  ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118, i64 2 ; 2 uses
  %.not.not = icmp eq ptr %4, %2
  %or.cond = select i1 %.not14.a, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  ret i1 %.not14.a
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
  %spec.select79 = zext i1 %.not29 to i8
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
  %.166 = phi i8 [ 0, %bb.g ], [ %spec.select79, %bb.f ] ; 2 uses
  %.265 = phi i16 [ 770, %bb.g ], [ 769, %bb.f ]  ; 4 uses
  %i.t = icmp samesign ult i16 %.139.ph, 770
  br i1 %i.t, label %bb.r, label %bb.h

bb.h:                                             ; preds = %.thread62
  %i.u = and i32 %.024, 268435456
  %.not29.1 = icmp eq i32 %i.u, 0
  %i.v = trunc nuw i8 %.166 to i1                 ; 2 uses
  br i1 %.not29.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.v, label %.thread, label %.thread68

bb.j:                                             ; preds = %bb.h
  %spec.select51.1 = select i1 %i.v, i16 %.265, i16 770
  br label %.thread68

bb.k:                                             ; preds = %bb.g
  %i.w = icmp samesign ugt i16 %spec.select50, 771
  br i1 %i.w, label %bb.o, label %.thread68

.thread68:                                        ; preds = %bb.i, %bb.j, %bb.k
  %.1.172 = phi i8 [ 0, %bb.k ], [ 0, %bb.i ], [ 1, %bb.j ] ; 2 uses
  %.2.171 = phi i16 [ 771, %bb.k ], [ %.265, %bb.i ], [ %spec.select51.1, %bb.j ] ; 4 uses
  %i.x = icmp samesign ult i16 %.139.ph, 771
  br i1 %i.x, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.thread68
  %i.y = and i32 %.024, 134217728
  %.not29.2 = icmp eq i32 %i.y, 0
  %i.z = trunc nuw i8 %.1.172 to i1               ; 2 uses
  br i1 %.not29.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.z, label %.thread, label %bb.o

bb.n:                                             ; preds = %bb.l
  %spec.select51.2 = select i1 %i.z, i16 %.2.171, i16 771
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.2.2 = phi i16 [ 772, %bb.k ], [ %spec.select51.2, %bb.n ], [ %.2.171, %bb.m ] ; 3 uses
  %.1.2 = phi i8 [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.aa = icmp samesign ult i16 %.139.ph, 772
  br i1 %i.aa, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = and i32 %.024, 536870912
  %.not29.3 = icmp eq i32 %i.ab, 0
  %i.ac = trunc nuw i8 %.1.2 to i1                ; 2 uses
  br i1 %.not29.3, label %.thread73, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.ac, label %.thread, label %.thread76

.thread73:                                        ; preds = %bb.p
  %spec.select51.3 = select i1 %i.ac, i16 %.2.2, i16 772
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %.thread68, %.thread62
  %.141.lcssa = phi i16 [ %.2.171, %.thread68 ], [ %.2.2, %bb.o ], [ %.265, %.thread62 ]
  %.023.lcssa = phi i8 [ %.1.172, %.thread68 ], [ %.1.2, %bb.o ], [ %.166, %.thread62 ]
  %i.ad = trunc nuw i8 %.023.lcssa to i1
  br i1 %i.ad, label %bb.s, label %.thread76

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
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.01118.i = phi ptr [ %4, %.lr.ph.i ], [ %spec.select1.i.i, %bb.a ] ; 2 uses
  %3 = load i16, ptr %.01118.i, align 2, !tbaa !9
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
    i16 -257, label %bb.d
    i16 -259, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

.sink.split.i:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.sink.split.i
  %.07.ph = phi i16 [ %1, %.sink.split.i ], [ 771, %bb.c ], [ 770, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i16, ptr %i.d, align 4, !tbaa !167
  %i.f = icmp ugt i16 %i.e, %.07.ph
  br i1 %i.f, label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i16, ptr %i.g, align 8, !tbaa !168
  %i.i = icmp ule i16 %.07.ph, %i.h
  br label %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit

_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit: ; preds = %bb.b, %bb.e, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit, %bb.d
  %.0 = phi i1 [ false, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit ], [ %i.i, %bb.e ], [ false, %bb.d ], [ false, %bb.b ]
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
  %.01733 = phi ptr [ %spec.select1.i, %.lr.ph ], [ %i.o, %.critedge ] ; 2 uses
  %i.g = load i16, ptr %.01733, align 2, !tbaa !9 ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !101
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %.val.i.i = load i8, ptr %i.i, align 8, !tbaa !13, !range !14, !noundef !15
  %i.j = trunc nuw i8 %.val.i.i to i1             ; 2 uses
  %spec.select1.i.i.i = select i1 %i.j, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i = select i1 %i.j, i64 4, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.01118.i.i = phi ptr [ %5, %.lr.ph.i.i ], [ %spec.select1.i.i.i, %bb.a ] ; 2 uses
  %4 = load i16, ptr %.01118.i.i, align 2, !tbaa !9
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
    i16 -257, label %bb.d
    i16 -259, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

.sink.split.i.i:                                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i.i, %bb.c, %bb.b
  %.07.ph.i = phi i16 [ %i.g, %.sink.split.i.i ], [ 771, %bb.c ], [ 770, %bb.b ] ; 2 uses
  %i.k = load i16, ptr %i.e, align 4, !tbaa !167
  %i.l = icmp ugt i16 %i.k, %.07.ph.i
  br i1 %i.l, label %.critedge, label %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit

_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit: ; preds = %bb.d
  %i.m = load i16, ptr %i.f, align 8, !tbaa !168
  %.not31 = icmp ugt i16 %.07.ph.i, %i.m
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
  %i.n = tail call i32 @CBB_add_u16(ptr noundef %1, i16 noundef zeroext %i.g) #8
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.b, %bb.d, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, %bb.g, %_ZN4bssl30ssl_protocol_version_from_wireEPtt.exit, %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.01733, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.d
  br i1 %.not, label %._crit_edge, label %bb.a

._crit_edge:                                      ; preds = %.critedge, %bb.g
  %.not.lcssa.ph = phi i1 [ true, %.critedge ], [ false, %bb.g ]
  ret i1 %.not.lcssa.ph
}

declare i32 @CBB_add_u16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl21ssl_negotiate_versionEPNS_13SSL_HANDSHAKEEPhPtPK6cbs_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
.lr.ph53:
  %4 = alloca %struct.cbs_st, align 8             ; 7 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !101
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !166
  %.val = load i8, ptr %i.c, align 8, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %.val to i1                 ; 2 uses
  %spec.select1.i = select i1 %i.d, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx = select i1 %i.d, i64 4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select1.i, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1592
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph53, %.thread35
  %.02251 = phi ptr [ %spec.select1.i, %.lr.ph53 ], [ %i.x, %.thread35 ] ; 2 uses
  %i.i = load i16, ptr %.02251, align 2, !tbaa !9 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !101
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !166
  %.val.i.i = load i8, ptr %i.k, align 8, !tbaa !13, !range !14, !noundef !15
  %i.l = trunc nuw i8 %.val.i.i to i1             ; 2 uses
  %spec.select1.i.i.i = select i1 %i.l, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i = select i1 %i.l, i64 4, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.01118.i.i = phi ptr [ %7, %.lr.ph.i.i ], [ %spec.select1.i.i.i, %bb.a ] ; 2 uses
  %6 = load i16, ptr %.01118.i.i, align 2, !tbaa !9
  %.not14.i.i.a = icmp eq i16 %6, %i.i            ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.01118.i.i, i64 2 ; 2 uses
  %.not.not.i.i = icmp eq ptr %7, %5
  %or.cond.i.i = select i1 %.not14.i.i.a, i1 true, i1 %.not.not.i.i
  br i1 %or.cond.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, label %.lr.ph.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i: ; preds = %.lr.ph.i.i
  br i1 %.not14.i.i.a, label %bb.b, label %.thread35

bb.b:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i
  switch i16 %i.i, label %.thread35 [
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
  %.07.ph.i = phi i16 [ %i.i, %.sink.split.i.i ], [ 771, %bb.c ], [ 770, %bb.b ] ; 2 uses
  %i.m = load i16, ptr %i.f, align 4, !tbaa !167
  %i.n = icmp ugt i16 %i.m, %.07.ph.i
  br i1 %i.n, label %.thread35, label %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit

_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit: ; preds = %bb.d
  %i.o = load i16, ptr %i.g, align 8, !tbaa !168
  %.not45 = icmp ugt i16 %.07.ph.i, %i.o
  br i1 %.not45, label %.thread35, label %bb.e

bb.e:                                             ; preds = %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit
  %i.p = icmp eq i16 %i.i, 772
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.h, align 8
  %i.r = and i32 %i.q, 4194304
  %.not27 = icmp eq i32 %i.r, 0
  br i1 %.not27, label %bb.g, label %.thread35

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !217
  %i.s = call i64 @CBS_len(ptr noundef nonnull %4) #8
  %.not2849 = icmp eq i64 %i.s, 0
  br i1 %.not2849, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.t = call i32 @CBS_get_u16(ptr noundef nonnull %4, ptr noundef nonnull %i.a) #8
  %.not29.not.not.not.not.not = icmp ne i32 %i.t, 0 ; 2 uses
  br i1 %.not29.not.not.not.not.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 305) #8
  store i8 50, ptr %1, align 1, !tbaa !218
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph
  %i.u = load i16, ptr %i.a, align 2, !tbaa !9
  %i.v = icmp eq i16 %i.u, %i.i
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 %i.i, ptr %2, align 2, !tbaa !9
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.w = call i64 @CBS_len(ptr noundef nonnull %4) #8
  %.not28 = icmp eq i64 %i.w, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !215

._crit_edge:                                      ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.thread35

.thread35:                                        ; preds = %bb.b, %bb.d, %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i, %bb.f, %_ZN4bssl20ssl_supports_versionEPKNS_13SSL_HANDSHAKEEt.exit, %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %.02251, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.e
  br i1 %.not, label %._crit_edge54, label %bb.a

bb.l:                                             ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.m

._crit_edge54:                                    ; preds = %.thread35
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 240, ptr noundef nonnull @.str, i32 noundef 317) #8
  store i8 70, ptr %1, align 1, !tbaa !218
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge54
  %.6 = phi i1 [ false, %._crit_edge54 ], [ %.not29.not.not.not.not.not, %bb.l ]
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @CBS_len(ptr noundef) local_unnamed_addr #4

declare i32 @CBS_get_u16(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @SSL_CTX_set_min_proto_version(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i16 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = select i1 %i.a, i16 -32768, i16 0
  %i.e = and i16 %i.c, 32767
  %i.f = or disjoint i16 %i.e, %i.d
  store i16 %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  switch i16 %1, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i [
    i16 0, label %bb.b
    i16 769, label %bb.c
    i16 770, label %bb.c
    i16 771, label %bb.c
    i16 772, label %bb.c
    i16 -257, label %bb.c
    i16 -259, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.h, align 8, !tbaa !13, !range !14, !noundef !15
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.k, i16 -257, i16 769
  store i16 %i.l, ptr %i.i, align 2, !tbaa !9
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.val.i.i.i = load i8, ptr %i.h, align 8, !tbaa !13, !range !14, !noundef !15
  %i.m = trunc nuw i8 %.val.i.i.i to i1           ; 2 uses
  %spec.select1.i.i.i.i = select i1 %i.m, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i.i = select i1 %i.m, i64 4, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.c
  %.01118.i.i.i = phi ptr [ %4, %.lr.ph.i.i.i ], [ %spec.select1.i.i.i.i, %bb.c ] ; 2 uses
  %3 = load i16, ptr %.01118.i.i.i, align 2, !tbaa !9
  %.not14.i.i.i.a = icmp eq i16 %3, %1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i.i.i, i64 2 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %4, %2
  %or.cond.i.i.i = select i1 %.not14.i.i.i.a, i1 true, i1 %.not.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, label %.lr.ph.i.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %.not14.i.i.i.a, label %bb.d, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i

_ZN4bsslL19api_version_to_wireEPtt.exit.i.i:      ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 234, ptr noundef nonnull @.str, i32 noundef 122) #8
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.d:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i
  store i16 %1, ptr %i.i, align 2, !tbaa !9
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit: ; preds = %bb.b, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i, %bb.d
  %.0.i = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @SSL_CTX_set_max_proto_version(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i16 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = select i1 %i.a, i16 16384, i16 0
  %i.e = and i16 %i.c, -16385
  %i.f = or disjoint i16 %i.e, %i.d
  store i16 %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  switch i16 %1, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i [
    i16 0, label %bb.b
    i16 769, label %bb.c
    i16 770, label %bb.c
    i16 771, label %bb.c
    i16 772, label %bb.c
    i16 -257, label %bb.c
    i16 -259, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.h, align 8, !tbaa !13, !range !14, !noundef !15
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.k, i16 -259, i16 772
  store i16 %i.l, ptr %i.i, align 8, !tbaa !9
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.val.i.i.i = load i8, ptr %i.h, align 8, !tbaa !13, !range !14, !noundef !15
  %i.m = trunc nuw i8 %.val.i.i.i to i1           ; 2 uses
  %spec.select1.i.i.i.i = select i1 %i.m, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i.i = select i1 %i.m, i64 4, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.c
  %.01118.i.i.i = phi ptr [ %4, %.lr.ph.i.i.i ], [ %spec.select1.i.i.i.i, %bb.c ] ; 2 uses
  %3 = load i16, ptr %.01118.i.i.i, align 2, !tbaa !9
  %.not14.i.i.i.a = icmp eq i16 %3, %1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i.i.i, i64 2 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %4, %2
  %or.cond.i.i.i = select i1 %.not14.i.i.i.a, i1 true, i1 %.not.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, label %.lr.ph.i.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %.not14.i.i.i.a, label %bb.d, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i

_ZN4bsslL19api_version_to_wireEPtt.exit.i.i:      ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, %bb.a
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 234, ptr noundef nonnull @.str, i32 noundef 122) #8
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.d:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i
  store i16 %1, ptr %i.i, align 8, !tbaa !9
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit: ; preds = %bb.b, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i, %bb.d
  %.0.i = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @SSL_CTX_get_min_proto_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load i16, ptr %i.a, align 8
  %i.c = icmp slt i16 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.e = load i16, ptr %i.d, align 2, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @SSL_CTX_get_max_proto_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 16384
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i16, ptr %i.d, align 8, !tbaa !221
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @SSL_set_min_proto_version(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 241 ; 2 uses
  %i.e = load i16, ptr %i.d, align 1
  %i.f = select i1 %i.c, i16 16384, i16 0
  %i.g = and i16 %i.e, -16385
  %i.h = or disjoint i16 %i.g, %i.f
  store i16 %i.h, ptr %i.d, align 1
  %i.i = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10 ; 2 uses
  switch i16 %1, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i [
    i16 0, label %bb.c
    i16 769, label %bb.d
    i16 770, label %bb.d
    i16 771, label %bb.d
    i16 772, label %bb.d
    i16 -257, label %bb.d
    i16 -259, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.i, align 8, !tbaa !13, !range !14, !noundef !15
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.m, i16 -257, i16 769
  store i16 %i.n, ptr %i.k, align 2, !tbaa !9
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.val.i.i.i = load i8, ptr %i.i, align 8, !tbaa !13, !range !14, !noundef !15
  %i.o = trunc nuw i8 %.val.i.i.i to i1           ; 2 uses
  %spec.select1.i.i.i.i = select i1 %i.o, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i.i = select i1 %i.o, i64 4, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.d
  %.01118.i.i.i = phi ptr [ %4, %.lr.ph.i.i.i ], [ %spec.select1.i.i.i.i, %bb.d ] ; 2 uses
  %3 = load i16, ptr %.01118.i.i.i, align 2, !tbaa !9
  %.not14.i.i.i.a = icmp eq i16 %3, %1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i.i.i, i64 2 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %4, %2
  %or.cond.i.i.i = select i1 %.not14.i.i.i.a, i1 true, i1 %.not.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, label %.lr.ph.i.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %.not14.i.i.i.a, label %bb.e, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i

_ZN4bsslL19api_version_to_wireEPtt.exit.i.i:      ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 234, ptr noundef nonnull @.str, i32 noundef 122) #8
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.e:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i
  store i16 %1, ptr %i.k, align 2, !tbaa !9
  br label %_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

_ZN4bsslL15set_min_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit: ; preds = %bb.e, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @SSL_set_max_proto_version(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %1, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 241 ; 2 uses
  %i.e = load i16, ptr %i.d, align 1
  %i.f = select i1 %i.c, i16 8192, i16 0
  %i.g = and i16 %i.e, -8193
  %i.h = or disjoint i16 %i.g, %i.f
  store i16 %i.h, ptr %i.d, align 1
  %i.i = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  switch i16 %1, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i [
    i16 0, label %bb.c
    i16 769, label %bb.d
    i16 770, label %bb.d
    i16 771, label %bb.d
    i16 772, label %bb.d
    i16 -257, label %bb.d
    i16 -259, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.i, align 8, !tbaa !13, !range !14, !noundef !15
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.m, i16 -259, i16 772
  store i16 %i.n, ptr %i.k, align 2, !tbaa !9
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.val.i.i.i = load i8, ptr %i.i, align 8, !tbaa !13, !range !14, !noundef !15
  %i.o = trunc nuw i8 %.val.i.i.i to i1           ; 2 uses
  %spec.select1.i.i.i.i = select i1 %i.o, ptr @_ZN4bsslL13kDTLSVersionsE, ptr @_ZN4bsslL12kTLSVersionsE ; 2 uses
  %.idx.i.i.i = select i1 %i.o, i64 4, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.d
  %.01118.i.i.i = phi ptr [ %4, %.lr.ph.i.i.i ], [ %spec.select1.i.i.i.i, %bb.d ] ; 2 uses
  %3 = load i16, ptr %.01118.i.i.i, align 2, !tbaa !9
  %.not14.i.i.i.a = icmp eq i16 %3, %1            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01118.i.i.i, i64 2 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %4, %2
  %or.cond.i.i.i = select i1 %.not14.i.i.i.a, i1 true, i1 %.not.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, label %.lr.ph.i.i.i

_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %.not14.i.i.i.a, label %bb.e, label %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i

_ZN4bsslL19api_version_to_wireEPtt.exit.i.i:      ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i, %bb.b
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 234, ptr noundef nonnull @.str, i32 noundef 122) #8
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

bb.e:                                             ; preds = %_ZN4bssl27ssl_method_supports_versionEPKNS_19SSL_PROTOCOL_METHODEt.exit.i.i
  store i16 %1, ptr %i.k, align 2, !tbaa !9
  br label %_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit

_ZN4bsslL15set_max_versionEPKNS_19SSL_PROTOCOL_METHODEPtt.exit: ; preds = %bb.e, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %_ZN4bsslL19api_version_to_wireEPtt.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i16 @SSL_get_min_proto_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 241
  %i.d = load i16, ptr %i.c, align 1
  %i.e = and i16 %i.d, 16384
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.g = load i16, ptr %i.f, align 2, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i16 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i16 @SSL_get_max_proto_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 241
  %i.d = load i16, ptr %i.c, align 1
  %i.e = and i16 %i.d, 8192
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i16 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 65536) i32 @SSL_version(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @SSL_in_early_data(ptr noundef %0) #8
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.c = load i8, ptr %i.b, align 4
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1536
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !196
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

_ZN4bsslL11ssl_versionEPK6ssl_st.exit:            ; preds = %bb.c, %bb.d
  %.0.in.i = phi ptr [ %i.l, %bb.d ], [ %i.k, %bb.c ]
  %.0.i = load i16, ptr %.0.in.i, align 4, !tbaa !9
  %i.m = zext i16 %.0.i to i32
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @SSL_get_version(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @SSL_in_early_data(ptr noundef %0) #8
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.c = load i8, ptr %i.b, align 4
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1536
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !196
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4bsslL11ssl_versionEPK6ssl_st.exit

_ZN4bsslL11ssl_versionEPK6ssl_st.exit:            ; preds = %bb.c, %bb.d
  %.0.in.i = phi ptr [ %i.l, %bb.d ], [ %i.k, %bb.c ]
  %.0.i = load i16, ptr %.0.in.i, align 4, !tbaa !9
  switch i16 %.0.i, label %_ZN4bsslL21ssl_version_to_stringEt.exit [
    i16 772, label %bb.e
    i16 771, label %.fold.split.i
    i16 770, label %.fold.split21.i
    i16 769, label %.fold.split22.i
    i16 -257, label %.fold.split23.i
    i16 -259, label %.fold.split24.i
  ]

.fold.split.i:                                    ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.e

.fold.split21.i:                                  ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.e

.fold.split22.i:                                  ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.e

.fold.split23.i:                                  ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.e

.fold.split24.i:                                  ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  br label %bb.e

bb.e:                                             ; preds = %.fold.split24.i, %.fold.split23.i, %.fold.split22.i, %.fold.split21.i, %.fold.split.i, %_ZN4bsslL11ssl_versionEPK6ssl_st.exit
  %.09.ptr19.lcssa.i = phi ptr [ @_ZN4bsslL13kVersionNamesE, %_ZN4bsslL11ssl_versionEPK6ssl_st.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 64), %.fold.split23.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 16), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 32), %.fold.split21.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 48), %.fold.split22.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4bsslL13kVersionNamesE, i64 80), %.fold.split24.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.09.ptr19.lcssa.i, i64 8
  br label %_ZN4bsslL21ssl_version_to_stringEt.exit

_ZN4bsslL21ssl_version_to_stringEt.exit:          ; preds = %_ZN4bsslL11ssl_versionEPK6ssl_st.exit, %bb.e
  %.in.i = phi ptr [ %i.m, %bb.e ], [ @_ZN4bsslL15kUnknownVersionE, %_ZN4bsslL11ssl_versionEPK6ssl_st.exit ]
  %i.n = load ptr, ptr %.in.i, align 8
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @SSL_get_all_version_names(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  store ptr @.str.1, ptr %0, align 8, !tbaa !169
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = add i64 %1, -1                           ; 6 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit20.i

_ZNK4bssl4SpanIPKcEixEm.exit20.i:                 ; preds = %.critedge.i
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !169
  %exitcond.not.i = icmp eq i64 %i.b, 1
  br i1 %exitcond.not.i, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit20.i.1

_ZNK4bssl4SpanIPKcEixEm.exit20.i.1:               ; preds = %_ZNK4bssl4SpanIPKcEixEm.exit20.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.3, ptr %i.c, align 8, !tbaa !169
  %exitcond.not.i.1 = icmp eq i64 %i.b, 2
  br i1 %exitcond.not.i.1, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit20.i.2

_ZNK4bssl4SpanIPKcEixEm.exit20.i.2:               ; preds = %_ZNK4bssl4SpanIPKcEixEm.exit20.i.1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @.str.4, ptr %i.d, align 8, !tbaa !169
  %exitcond.not.i.2 = icmp eq i64 %i.b, 3
  br i1 %exitcond.not.i.2, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit20.i.3

_ZNK4bssl4SpanIPKcEixEm.exit20.i.3:               ; preds = %_ZNK4bssl4SpanIPKcEixEm.exit20.i.2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @.str.5, ptr %i.e, align 8, !tbaa !169
  %exitcond.not.i.3 = icmp eq i64 %i.b, 4
  br i1 %exitcond.not.i.3, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit20.i.4

_ZNK4bssl4SpanIPKcEixEm.exit20.i.4:               ; preds = %_ZNK4bssl4SpanIPKcEixEm.exit20.i.3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @.str.6, ptr %i.f, align 8, !tbaa !169
  %exitcond.not.i.4 = icmp eq i64 %i.b, 5
  br i1 %exitcond.not.i.4, label %_ZN4bssl11GetAllNamesINS_11VersionInfoEPKcEEmPS3_mNS_4SpanIKS3_EEMT_T0_NS5_IKS8_EE.exit, label %_ZNK4bssl4SpanIPKcEixEm.exit20.i.5

_ZNK4bssl4SpanIPKcEixEm.exit20.i.5:               ; preds = %_ZNK4bssl4SpanIPKcEixEm.exit20.i.4
end_hunk_0
