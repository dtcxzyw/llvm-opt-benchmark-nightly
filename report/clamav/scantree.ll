Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/scantree?download=true
inline.NumInlined: 28
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ErrorHandler = type <{ i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>
%class.uiMsgStore = type <{ [8 x ptr], [8 x i32], i32, i32, i32, [4 x i8] }>
%class.FindFile = type { [2048 x i32], i8, ptr }
%struct.FindData = type <{ [2048 x i32], i64, i32, i8, i8, [2 x i8], %class.RarTime, %class.RarTime, %class.RarTime, i32, i8, [3 x i8] }>
%class.RarTime = type { i64 }

@.str = private unnamed_addr constant [2 x i32] [i32 42, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 42, i32 46, i32 42, i32 0], align 4
@ErrHandler = external global %class.ErrorHandler, align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [44 x i32] [i32 77, i32 97, i32 120, i32 105, i32 109, i32 117, i32 109, i32 32, i32 97, i32 108, i32 108, i32 111, i32 119, i32 101, i32 100, i32 32, i32 97, i32 114, i32 114, i32 97, i32 121, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 40, i32 37, i32 117, i32 41, i32 32, i32 105, i32 115, i32 32, i32 101, i32 120, i32 99, i32 101, i32 101, i32 100, i32 101, i32 100, i32 0], align 4

@_ZN8ScanTreeC1EP10StringList12RECURSE_MODEb9SCAN_DIRS = unnamed_addr alias void (ptr, ptr, i32, i1, i32), ptr @_ZN8ScanTreeC2EP10StringList12RECURSE_MODEb9SCAN_DIRS
@_ZN8ScanTreeD1Ev = unnamed_addr alias void (ptr), ptr @_ZN8ScanTreeD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN8ScanTreeC2EP10StringList12RECURSE_MODEb9SCAN_DIRS(ptr noundef nonnull align 8 dereferenceable(33216) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24616 ; 2 uses
  tail call void @_ZN10StringListC1Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24800
  invoke void @_ZN10StringListC1Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i1 %3 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8200
  store ptr %1, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store i32 %2, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8212
  store i8 %i.c, ptr %i.f, align 4, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8216
  store i32 %4, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8224
  store i8 0, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8228
  store i32 0, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8220
  store i32 0, ptr %i.j, align 4, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 25016
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33208
  store ptr null, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8200) %0, i8 0, i64 8200, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.m, i8 0, i64 17, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN10StringListD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.o) #13
  br label %_ZN10StringListD2Ev.exit

_ZN10StringListD2Ev.exit:                         ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.n
}

declare void @_ZN10StringListC1Ev(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8ScanTreeD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(33216) dereferenceable(33216) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24800
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN10StringListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.f) #13
  br label %_ZN10StringListD2Ev.exit

_ZN10StringListD2Ev.exit:                         ; preds = %._crit_edge, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24616
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.h, null
  br i1 %.not.i.i5, label %_ZN10StringListD2Ev.exit6, label %bb.c

bb.c:                                             ; preds = %_ZN10StringListD2Ev.exit
  tail call void @free(ptr noundef nonnull %i.h) #13
  br label %_ZN10StringListD2Ev.exit6

_ZN10StringListD2Ev.exit6:                        ; preds = %_ZN10StringListD2Ev.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %i.j) #13
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #14
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.k = icmp sgt i64 %indvars.iv, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !48
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN8ScanTree7GetNextEP8FindData(ptr noundef nonnull align 8 dereferenceable(33216) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread13, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8228
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8204
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24840
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24800
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8220 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %i.j = load i32, ptr %i.d, align 4, !tbaa !26
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.l = tail call noundef zeroext i1 @_ZN8ScanTree11GetNextMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0)
  br i1 %i.l, label %bb.c, label %.thread13

bb.c:                                             ; preds = %bb.b, %.backedge
  %i.m = tail call noundef i32 @_ZN8ScanTree8FindProcEP8FindData(ptr noundef nonnull align 8 dereferenceable(33216) %0, ptr noundef %1)
  switch i32 %i.m, label %default.unreachable [
    i32 2, label %bb.d
    i32 3, label %.backedge.backedge
    i32 0, label %bb.e
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.i, align 4, !tbaa !27
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.i, align 4, !tbaa !27
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %bb.f, %bb.g, %bb.i, %bb.c
  br label %.backedge

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.e, align 4, !tbaa !36, !range !37, !noundef !38
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.f, align 8, !tbaa !23
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.backedge.backedge, label %bb.h

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @_ZN8ScanTree11GetNextMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0)
  br i1 %i.t, label %.backedge.backedge, label %.thread13

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.u = load i64, ptr %i.g, align 8, !tbaa !39
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %.thread13, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call noundef zeroext i1 @_ZN11CommandData9CheckArgsEP10StringListbPKwbi(ptr noundef nonnull %i.h, i1 noundef zeroext %i.q, ptr noundef nonnull %1, i1 noundef zeroext false, i32 noundef 6)
  br i1 %i.v, label %.thread13, label %.backedge.backedge

.thread13:                                        ; preds = %bb.g, %bb.b, %bb.h, %bb.i, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8ScanTree11GetNextMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN8ScanTree15GetFilteredMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8228 ; 8 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  %i.d = icmp eq i32 %i.c, 92
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26
  %i.g = icmp eq i32 %i.f, 92
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8236
  %i.i = tail call ptr @wcschr(ptr noundef nonnull %i.h, i32 noundef signext 92) #15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = tail call ptr @wcschr(ptr noundef nonnull %i.j, i32 noundef signext 92) #15 ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26
  %i.n = icmp eq i32 %i.m, 0
  br label %.sink.split

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call noundef zeroext i1 @_Z13IsDriveLetterPKw(ptr noundef nonnull %i.b)
  br i1 %i.o, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8236
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26
  %i.r = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.q)
  br i1 %i.r, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8240
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26
  %i.u = icmp eq i32 %i.t, 0
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.i, %bb.e, %bb.f
  %.sink.shrunk = phi i1 [ %i.n, %bb.f ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.g ], [ %i.u, %bb.i ]
  %.sink = zext i1 %.sink.shrunk to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8224
  store i8 %.sink, ptr %i.v, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.d
  %i.w = tail call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.b) ; 5 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i64 noundef 2048)
  %.pr = load i32, ptr %i.w, align 4, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = phi i32 [ %.pr, %bb.k ], [ %i.x, %bb.j ]
  %i.aa = icmp eq i32 %i.z, 46
  br i1 %i.aa, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26
  switch i32 %i.ac, label %bb.p [
    i32 0, label %bb.o
    i32 46, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.n
  tail call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.b, i64 noundef 2048)
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.b, ptr noundef nonnull @.str, i64 noundef 2048)
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.l
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 25008
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8192
  store i32 0, ptr %i.al, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16420
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.am, ptr noundef nonnull %i.b, i64 noundef 2048)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 4) i32 @_ZN8ScanTree8FindProcEP8FindData(ptr noundef nonnull align 8 dereferenceable(33216) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %i.a = alloca [2048 x i32], align 16            ; 5 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca [2048 x i32], align 16            ; 5 uses
  %i.d = alloca [2048 x i32], align 16            ; 6 uses
  %i.e = alloca [2048 x i32], align 16            ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8228 ; 19 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8192 ; 15 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %.thread79

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef nonnull %i.f) ; 3 uses
  br i1 %i.o, label %.thread65, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8212 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !22, !range !37, !noundef !38
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = tail call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %i.f, ptr noundef %1, i1 noundef zeroext %i.r)
  br i1 %i.s, label %bb.e, label %.thread65

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8204
  %i.u = load i8, ptr %i.t, align 4, !tbaa !36, !range !37, !noundef !38
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %.thread65

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.p, align 4, !tbaa !22, !range !37, !noundef !38
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %.thread66

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8205
  %i.z = load i8, ptr %i.y, align 1, !tbaa !50, !range !37, !noundef !38
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread65, label %.thread66

.thread65:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.g
  %i.ab = phi i1 [ true, %bb.g ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.thread71, label %bb.h

bb.h:                                             ; preds = %.thread65
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21 ; 3 uses
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %.thread66, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 25000
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !41, !range !37, !noundef !38
  %i.aj = trunc nuw i8 %i.ai to i1
  %.not = icmp ne i32 %i.af, 1                    ; 2 uses
  %or.cond64.not92 = and i1 %.not, %i.aj
  %i.ak = icmp eq i32 %i.af, 3
  %or.cond90 = and i1 %i.o, %i.ak
  %or.cond91 = or i1 %or.cond90, %or.cond64.not92
  br i1 %or.cond91, label %.thread66, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %i.am = load i8, ptr %i.al, align 8, !tbaa !24, !range !37, !noundef !38
  %i.an = trunc nuw i8 %i.am to i1
  %spec.select = and i1 %.not, %i.an
  br label %.thread66

.thread66:                                        ; preds = %bb.j, %bb.f, %bb.i, %bb.h, %bb.g
  %.ph67 = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.i ]
  %.ph68 = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ %i.ab, %bb.j ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ]
  %.ph69 = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ %spec.select, %bb.j ], [ true, %bb.h ], [ true, %bb.i ] ; 3 uses
  %.pr = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ao = icmp eq i32 %.pr, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread66
  %i.ap = zext i1 %.ph69 to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 25001
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread66
  %or.cond = or i1 %i.o, %.ph69
  br i1 %or.cond, label %.thread71, label %bb.p

.thread71:                                        ; preds = %.thread65, %bb.l
  %i.ar = phi i1 [ %.ph69, %bb.l ], [ true, %.thread65 ]
  %i.as = tail call noalias noundef nonnull dereferenceable(8208) ptr @_Znwm(i64 noundef 8208) #16 ; 3 uses
  invoke void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208) %i.as)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.thread71
  %i.at = load i32, ptr %i.i, align 8, !tbaa !30
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i64 noundef 2048)
  br i1 %i.ar, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @_Z7SetNamePwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef 2048)
  br label %bb.w

bb.o:                                             ; preds = %.thread71
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #14
  resume { ptr, i32 } %i.aw

bb.p:                                             ; preds = %bb.l
  br i1 %.ph67, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !21
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.r, label %.thread83

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.ph68, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8236
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !52, !range !37, !noundef !38
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = select i1 %i.bc, i32 2, i32 3
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 33208
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %.not60 = icmp eq ptr %i.bf, null
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = tail call noundef zeroext i1 @_ZN11CommandData9ExclCheckEPKwbbb(ptr noundef nonnull align 8 dereferenceable(100904) %i.bf, ptr noundef nonnull %i.f, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  br i1 %i.bg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 25016
  tail call void @_ZN12ErrorHandler12OpenErrorMsgEPKwS1_(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.f)
  tail call void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 10)
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t
  %.047 = phi i32 [ 0, %bb.r ], [ %i.bd, %bb.u ], [ 3, %bb.t ]
  store i32 0, ptr %i.f, align 4, !tbaa !26
  br label %bb.bk

bb.w:                                             ; preds = %bb.m, %bb.n
  %i.bi = load i32, ptr %i.i, align 8, !tbaa !30
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !32
  call void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208) %i.bl, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.pre = load i32, ptr %i.i, align 8, !tbaa !30
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert93 = getelementptr inbounds [8 x i8], ptr %0, i64 %.phi.trans.insert
  %.pre94 = load ptr, ptr %.phi.trans.insert93, align 8, !tbaa !32
  br label %.thread79

.thread79:                                        ; preds = %bb.b, %bb.w
  %i.bm = phi ptr [ %i.m, %bb.b ], [ %.pre94, %bb.w ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8212 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !22, !range !37, !noundef !38
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = call noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208) %i.bm, ptr noundef %1, i1 noundef zeroext %i.bp)
  br i1 %i.bq, label %.thread83, label %bb.x

bb.x:                                             ; preds = %.thread79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8236
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !52, !range !37, !noundef !38 ; 2 uses
  %i.bt = trunc nuw i8 %i.bs to i1
  store i8 %i.bs, ptr %i.b, align 1, !tbaa !42
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN8ScanTree9ScanErrorERb(ptr noundef nonnull align 8 dereferenceable(33216) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 16, !tbaa !26
  %i.bu = load i32, ptr %i.i, align 8, !tbaa !30  ; 2 uses
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !32 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %i.bx) #13
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #14
  %.pre95 = load i32, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %.pre96 = sext i32 %.pre95 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pre-phi97 = phi i64 [ %.pre96, %bb.aa ], [ %i.bv, %bb.z ]
  %i.bz = phi i32 [ %.pre95, %bb.aa ], [ %i.bu, %bb.z ] ; 2 uses
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.i, align 8, !tbaa !30
  %i.cb = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre-phi97
  store ptr null, ptr %i.cb, align 8, !tbaa !32
  %i.cc = icmp sgt i32 %i.bz, 0
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ab, %bb.ac
  %i.cd = phi i32 [ %i.ci, %bb.ac ], [ %i.ca, %bb.ab ] ; 3 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !32
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %.lr.ph
  %i.ci = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.i, align 8, !tbaa !30
  %i.cj = icmp sgt i32 %i.cd, 0
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.ac, %bb.ab
  %i.ck = load i8, ptr %i.b, align 1, !tbaa !42, !range !37, !noundef !38
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8220 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !27
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !27
  br label %bb.ap

.critedge:                                        ; preds = %.lr.ph
  %i.cp = call ptr @wcsrchr(ptr noundef nonnull %i.f, i32 noundef signext 47) #15 ; 3 uses
  %.not61 = icmp eq ptr %i.cp, null
  br i1 %.not61, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.d, ptr noundef nonnull %i.cp, i64 noundef 2048)
  %i.cq = load i32, ptr %i.i, align 8, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8196
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !53
  %i.ct = icmp slt i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16420
  %i.cw = call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.cv)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.cu, ptr noundef %i.cw, i64 noundef 2047)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 0, ptr %i.cp, align 4, !tbaa !26
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, i64 noundef 2048)
  %i.cx = call ptr @wcsrchr(ptr noundef nonnull %i.f, i32 noundef signext 47) #15 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.cz, i64 noundef 2048)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cx, align 4, !tbaa !26
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, i64 noundef 2048)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.critedge
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.db = load i32, ptr %i.da, align 8, !tbaa !23
  %i.dc = icmp eq i32 %i.db, 2
  br i1 %i.dc, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dd = load i8, ptr %i.bn, align 4, !tbaa !22, !range !37, !noundef !38
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %i.c, ptr noundef %1, i1 noundef zeroext %i.de)
  br i1 %i.df, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8204
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !36, !range !37, !noundef !38
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8232 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !54
  %i.dl = or i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !54
  %i.dm = load i8, ptr %i.b, align 1, !tbaa !42, !range !37, !noundef !38
  %i.dn = shl nuw nsw i8 %i.dm, 1
  %i.do = zext nneg i8 %i.dn to i32
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.dp = load i8, ptr %i.b, align 1, !tbaa !42, !range !37, !noundef !38
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = select i1 %i.dq, i32 2, i32 3
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %._crit_edge, %bb.ad
  %.3 = phi i32 [ 1, %._crit_edge ], [ 1, %bb.ad ], [ %i.do, %bb.an ], [ %i.dr, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bk

.thread83:                                        ; preds = %bb.q, %.thread79
  %.25282 = phi i1 [ false, %.thread79 ], [ true, %bb.q ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8204
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !36, !range !37, !noundef !38
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.aq, label %bb.bh

bb.aq:                                            ; preds = %.thread83
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8212
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !22, !range !37, !noundef !38
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8205
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !50, !range !37, !noundef !38
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.bh, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.25282, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eb = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 25001
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !51, !range !37, !noundef !38
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !23
  %i.ei = icmp eq i32 %i.eh, 3
  %i.ej = select i1 %i.ei, i32 0, i32 3
  br label %bb.bk

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 33208 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !28 ; 2 uses
  %.not62 = icmp eq ptr %i.el, null
  br i1 %.not62, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.em = call noundef zeroext i1 @_ZN11CommandData9ExclCheckEPKwbbb(ptr noundef nonnull align 8 dereferenceable(100904) %i.el, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.em, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.en = load ptr, ptr %i.ek, align 8, !tbaa !28
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8200
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !55
  %i.eq = call noundef zeroext i1 @_ZN11CommandData13ExclDirByAttrEj(ptr noundef nonnull align 8 dereferenceable(100904) %i.en, i32 noundef %i.ep)
  br i1 %i.eq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.er = select i1 %.25282, i32 1, i32 3
  br label %bb.bk

bb.ba:                                            ; preds = %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  br i1 %.25282, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.es = call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.et = phi ptr [ %i.es, %bb.bb ], [ @.str, %bb.ba ]
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.e, ptr noundef %i.et, i64 noundef 2048)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %1, i64 noundef 2048)
  %i.eu = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.f) #15
  %i.ev = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.e) #15
  %i.ew = add i64 %i.eu, -2047
  %i.ex = add i64 %i.ew, %i.ev
  %i.ey = icmp ult i64 %i.ex, -2048
  br i1 %i.ey, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ez = load i32, ptr %i.i, align 8, !tbaa !30
  %i.fa = icmp sgt i32 %i.ez, 1022
  br i1 %i.fa, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.f, i64 noundef 2048)
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 2048)
  %i.fb = load i32, ptr %i.i, align 8, !tbaa !30
  %i.fc = add nsw i32 %i.fb, 1                    ; 2 uses
  store i32 %i.fc, ptr %i.i, align 8, !tbaa !30
  br i1 %.25282, label %bb.bf, label %.thread87

bb.bf:                                            ; preds = %bb.be
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8196
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !53
  br label %.thread87

.thread87:                                        ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <4 x ptr> <ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3>, ptr %i.fg, align 8, !tbaa !43
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.3, ptr %i.fh, align 8, !tbaa !43
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fi, i8 0, i64 40, i1 false)
  store i32 86, ptr %i.fj, align 8, !tbaa !46
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.f, ptr %2, align 8, !tbaa !43
  store ptr @.str.2, ptr %i.fe, align 8, !tbaa !43
  store i32 3, ptr %i.fk, align 8, !tbaa !47
  store ptr %i.e, ptr %i.ff, align 8, !tbaa !43
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.bk

bb.bh:                                            ; preds = %.thread87, %bb.ar, %.thread83
  br i1 %.25282, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fl = call noundef zeroext i1 @_Z7CmpNamePKwS0_i(ptr noundef nonnull %i.f, ptr noundef nonnull %1, i32 noundef 0)
  br i1 %i.fl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bg, %bb.v, %bb.ap, %bb.av, %bb.az, %bb.bj, %bb.bi, %bb.a
  %.6 = phi i32 [ 3, %bb.a ], [ 0, %bb.bj ], [ %.047, %bb.v ], [ %i.er, %bb.az ], [ 2, %bb.bg ], [ %i.ej, %bb.av ], [ %.3, %bb.ap ], [ 3, %bb.bi ]
  ret i32 %.6
}

declare noundef zeroext i1 @_ZN11CommandData9CheckArgsEP10StringListbPKwbi(ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8ScanTree16ExpandFolderMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 6 uses
  %1 = alloca %class.FindFile, align 8            ; 8 uses
  %2 = alloca %struct.FindData, align 8           ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8228 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.018 = phi i1 [ %.11925, %bb.d ], [ false, %bb.a ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 2 uses
  switch i32 %i.d, label %bb.c [
    i32 0, label %bb.e
    i32 63, label %.thread
    i32 42, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.018, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.b, %bb.c
  %i.e = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.d)
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.11925 = phi i1 [ false, %bb.c ], [ true, %.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !56

bb.e:                                             ; preds = %.thread, %bb.b
  %.017 = phi i64 [ 0, %bb.b ], [ %indvars.iv, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 2048)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.017
  store i32 0, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24616 ; 3 uses
  call void @_ZN10StringList5ResetEv(ptr noundef nonnull align 8 dereferenceable(184) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208) %1)
  invoke void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208) %1, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8204
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.017
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %bb.f
  %i.k = invoke noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208) %1, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  br i1 %i.k, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.l = load i8, ptr %i.i, align 4, !tbaa !36, !range !37, !noundef !38
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  invoke void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %2, ptr noundef nonnull %i.j, i64 noundef 2048)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.n = invoke noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %2)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.o = call i32 @wcscmp(ptr noundef %i.n, ptr noundef nonnull @.str) #15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = call i32 @wcscmp(ptr noundef %i.n, ptr noundef nonnull @.str.1) #15
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void @_Z18RemoveNameFromPathPw(ptr noundef nonnull %2)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.j, %bb.p, %bb.n, %bb.k, %bb.r
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.m
  invoke void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull %2)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.backedge:                                        ; preds = %bb.p, %bb.i
  br label %bb.g, !llvm.loop !57

bb.q:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24656
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp ne i64 %i.u, 0                      ; 2 uses
  br i1 %i.v, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.w = invoke noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull %i.b, i64 noundef 2048)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.v

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp28, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.s, %bb.o ]
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_Z9IsPathDivi(i32 noundef) local_unnamed_addr #1

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN10StringList5ResetEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208)) unnamed_addr #1

declare void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208), ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_Z8wcsncatzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_Z11PointToNamePKw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_Z18RemoveNameFromPathPw(ptr noundef) local_unnamed_addr #1

declare void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8ScanTree15GetFilteredMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24656
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24616
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8228
  %i.f = tail call noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull %i.e, i64 noundef 2048)
  br i1 %i.f, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 25000 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24800 ; 2 uses
  tail call void @_ZN10StringList5ResetEv(ptr noundef nonnull align 8 dereferenceable(184) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8228 ; 6 uses
  %i.l = tail call noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr noundef nonnull align 8 dereferenceable(184) %i.j, ptr noundef nonnull %i.k, i64 noundef 2048)
  br i1 %i.l, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.c, %bb.i
  %.033 = phi i8 [ %.3, %bb.i ], [ 0, %bb.c ]
  %.030 = phi i32 [ %.232, %bb.i ], [ 0, %bb.c ]  ; 5 uses
  %.029 = phi i32 [ %.1, %bb.i ], [ 0, %bb.c ]    ; 4 uses
  %.0 = phi i32 [ %i.v, %bb.i ], [ 0, %bb.c ]     ; 3 uses
  %i.m = zext i32 %.0 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26   ; 2 uses
  switch i32 %i.o, label %bb.f [
    i32 0, label %bb.d
    i32 63, label %bb.e
    i32 42, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader
  %i.p = icmp eq i32 %.030, 0
  br i1 %i.p, label %bb.w, label %bb.j

bb.e:                                             ; preds = %.preheader, %.preheader
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.e
  %.134 = phi i8 [ 1, %bb.e ], [ %.033, %.preheader ] ; 2 uses
  %i.q = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.o)
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.n, align 4, !tbaa !26
  %i.s = tail call noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef %i.r)
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = zext nneg i8 %.134 to i32
  %spec.select41 = add i32 %.030, %i.t            ; 2 uses
  %i.u = icmp eq i32 %spec.select41, 0
  %spec.select44 = select i1 %i.u, i32 %.0, i32 %.029
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i8 [ %.134, %bb.g ], [ 0, %bb.h ]
  %.232 = phi i32 [ %.030, %bb.g ], [ %spec.select41, %bb.h ]
  %.1 = phi i32 [ %.029, %bb.g ], [ %spec.select44, %bb.h ]
  %i.v = add i32 %.0, 1
  br label %.preheader, !llvm.loop !58

bb.j:                                             ; preds = %bb.d
  store i8 1, ptr %i.g, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = icmp eq i32 %i.x, 1
  %i.aa = icmp eq i32 %.030, 1
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.old1 = icmp eq i32 %.030, 1
  br i1 %.old1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ab = tail call noundef zeroext i1 @_ZN8ScanTree16ExpandFolderMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0)
  br label %bb.w

bb.n:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef 2048)
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.a, i64 noundef 2048)
  %i.ac = zext i32 %.029 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ac ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.ae)
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.ah = call noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef %i.ag)
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.aj = phi ptr [ %i.ai, %bb.p ], [ %i.ad, %bb.o ]
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aj, i64 noundef 2048)
  %i.ak = call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.a) ; 3 uses
  %i.al = call i32 @wcscmp(ptr noundef %i.ak, ptr noundef nonnull @.str) #15
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = call i32 @wcscmp(ptr noundef %i.ak, ptr noundef nonnull @.str.1) #15
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 0, ptr %i.ak, align 4, !tbaa !26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.h, ptr noundef nonnull %i.a)
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.aq = call noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef %i.ap) ; 2 uses
  %i.ar = zext i1 %i.aq to i32
  %spec.select42 = add i32 %.029, %i.ar
  %i.as = zext i32 %spec.select42 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.as
  store i32 0, ptr %i.at, align 4, !tbaa !26
  br i1 %i.aq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.k, i64 noundef 2048)
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.k, ptr noundef nonnull @.str, i64 noundef 2048)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.v, %bb.d, %bb.c, %bb.b
  %.137 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.v ], [ %i.ab, %bb.m ], [ true, %bb.d ]
  ret i1 %.137
}

declare noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef) local_unnamed_addr #1

declare void @_Z11AddEndSlashPwm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef signext) local_unnamed_addr #7

declare noundef zeroext i1 @_Z13IsDriveLetterPKw(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_Z7SetNamePwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11CommandData9ExclCheckEPKwbbb(ptr noundef nonnull align 8 dereferenceable(100904), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN12ErrorHandler12OpenErrorMsgEPKwS1_(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN8ScanTree9ScanErrorERb(ptr noundef nonnull align 8 dereferenceable(33216) %0, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %i.a = alloca [2048 x i32], align 16            ; 4 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !42, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread13, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8228
  %i.g = tail call noundef zeroext i1 @_ZN11CommandData9ExclCheckEPKwbbb(ptr noundef nonnull align 8 dereferenceable(100904) %i.e, ptr noundef nonnull %i.f, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %1, align 1, !tbaa !42
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %.pre = load i8, ptr %1, align 1, !tbaa !42, !range !37
  %i.h = trunc nuw i8 %.pre to i1
  br i1 %i.h, label %.thread13, label %.thread

.thread13:                                        ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24984
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8228
  tail call void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.j, ptr noundef nonnull %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24992
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60   ; 7 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 25008
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !63
  %i.s = add i64 %i.r, 1                          ; 5 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !64   ; 2 uses
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %._ZN5ArrayIjE3AddEm.exit_crit_edge.i

._ZN5ArrayIjE3AddEm.exit_crit_edge.i:             ; preds = %bb.h
  %.pre1.i = load ptr, ptr %i.m, align 8, !tbaa !65
  br label %_ZN5ArrayIjE4PushEj.exit

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !66   ; 3 uses
  %.not.i.i = icmp ne i64 %i.x, 0
  %i.y = icmp ugt i64 %i.s, %i.x
  %or.cond.i.i = and i1 %.not.i.i, %i.y
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.4, i64 noundef %i.x)
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !64
  %.pre10.i.i = load i64, ptr %i.q, align 8, !tbaa !63
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i64 [ %.pre10.i.i, %bb.j ], [ %i.s, %bb.i ]
  %i.aa = phi i64 [ %.pre.i.i, %bb.j ], [ %i.u, %bb.i ] ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add i64 %i.aa, 32
  %i.ad = add i64 %i.ac, %i.ab
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.ad) ; 2 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.af = shl i64 %..i.i, 2
  %i.ag = tail call ptr @realloc(ptr noundef %i.ae, i64 noundef %i.af) #17 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !65
  store i64 %..i.i, ptr %i.t, align 8, !tbaa !64
  %.pre.i = load i64, ptr %i.q, align 8, !tbaa !63
  br label %_ZN5ArrayIjE4PushEj.exit

_ZN5ArrayIjE4PushEj.exit:                         ; preds = %._ZN5ArrayIjE3AddEm.exit_crit_edge.i, %bb.m
  %i.ai = phi ptr [ %.pre1.i, %._ZN5ArrayIjE3AddEm.exit_crit_edge.i ], [ %i.ag, %bb.m ]
  %i.aj = phi i64 [ %i.s, %._ZN5ArrayIjE3AddEm.exit_crit_edge.i ], [ %.pre.i, %bb.m ]
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  store i32 %i.p, ptr %i.al, align 4, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %_ZN5ArrayIjE4PushEj.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8228
  call void @_Z17ConvertNameToFullPKwPwm(ptr noundef nonnull %i.am, ptr noundef nonnull %i.a, i64 noundef 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x ptr> <ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3>, ptr %i.an, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.3, ptr %i.ao, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.3, ptr %i.ap, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.3, ptr %i.aq, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i8 0, i64 40, i1 false)
  store i32 87, ptr %i.as, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 1, ptr %i.at, align 8, !tbaa !47
  store ptr %i.a, ptr %2, align 8, !tbaa !43
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @_ZN12ErrorHandler9SysErrMsgEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.n, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcsrchr(ptr noundef, i32 noundef signext) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN11CommandData13ExclDirByAttrEj(ptr noundef nonnull align 8 dereferenceable(100904), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef zeroext i1 @_Z7CmpNamePKwS0_i(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z17ConvertNameToFullPKwPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN12ErrorHandler9SysErrMsgEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108)) local_unnamed_addr #1

declare void @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS10StringList", !8, i64 0}
!10 = !{!"_ZTS12RECURSE_MODE", !4, i64 0}
!11 = !{!"bool", !4, i64 0}
!12 = !{!"_ZTS9SCAN_DIRS", !4, i64 0}
!13 = !{!"p1 wchar_t", !8, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"_ZTS5ArrayIwE", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!16 = !{!"_ZTS10StringList", !15, i64 0, !14, i64 32, !14, i64 40, !4, i64 48, !14, i64 176}
!17 = !{!"p1 _ZTS5ArrayIjE", !8, i64 0}
!18 = !{!"p1 _ZTS11CommandData", !8, i64 0}
!19 = !{!"_ZTS8ScanTree", !4, i64 0, !5, i64 8192, !5, i64 8196, !9, i64 8200, !10, i64 8208, !11, i64 8212, !12, i64 8216, !5, i64 8220, !11, i64 8224, !4, i64 8228, !4, i64 16420, !16, i64 24616, !16, i64 24800, !9, i64 24984, !17, i64 24992, !11, i64 25000, !11, i64 25001, !14, i64 25008, !4, i64 25016, !18, i64 33208}
!20 = !{!19, !9, i64 8200}
!21 = !{!19, !10, i64 8208}
!22 = !{!19, !11, i64 8212}
!23 = !{!19, !12, i64 8216}
!24 = !{!19, !11, i64 8224}
!25 = !{!"wchar_t", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!19, !5, i64 8220}
!28 = !{!19, !18, i64 33208}
!29 = !{!15, !13, i64 0}
!30 = !{!19, !5, i64 8192}
!31 = !{!"p1 _ZTS8FindFile", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"_ZTS7RarTime", !14, i64 0}
!35 = !{!"_ZTS8FindData", !4, i64 0, !14, i64 8192, !5, i64 8200, !11, i64 8204, !11, i64 8205, !34, i64 8208, !34, i64 8216, !34, i64 8224, !5, i64 8232, !11, i64 8236}
!36 = !{!35, !11, i64 8204}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!16, !14, i64 40}
!40 = !{!19, !14, i64 25008}
!41 = !{!19, !11, i64 25000}
!42 = !{!11, !11, i64 0}
!43 = !{!13, !13, i64 0}
!44 = !{!"_ZTS14UIMESSAGE_CODE", !4, i64 0}
!45 = !{!"_ZTS10uiMsgStore", !4, i64 0, !4, i64 64, !5, i64 96, !5, i64 100, !44, i64 104}
!46 = !{!45, !44, i64 104}
!47 = !{!45, !5, i64 96}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = !{!35, !11, i64 8205}
!51 = !{!19, !11, i64 25001}
!52 = !{!35, !11, i64 8236}
!53 = !{!19, !5, i64 8196}
!54 = !{!35, !5, i64 8232}
!55 = !{!35, !5, i64 8200}
!56 = distinct !{!56, !33}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = !{!19, !9, i64 24984}
!60 = !{!19, !17, i64 24992}
!61 = !{!"p1 int", !8, i64 0}
!62 = !{!"_ZTS5ArrayIjE", !61, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!63 = !{!62, !14, i64 8}
!64 = !{!62, !14, i64 16}
!65 = !{!62, !61, i64 0}
!66 = !{!62, !14, i64 24}
!67 = !{!5, !5, i64 0}
end_hunk_0
